; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/az6027.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/az6027.c"
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
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stb0899_config = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.stb6100_config = type { i8, i32 }
%struct.stb0899_s1_reg = type { i16, i8 }
%struct.stb0899_s2_reg = type { i16, i32, i32 }
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
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
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
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.az6027_device_state = type { %struct.dvb_ca_en50221, %struct.mutex, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [21 x i8] c"dvb_usb_az6027.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_az6027_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_az6027_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [34 x i8] c"dvb_usb_az6027.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [78 x i8] c"dvb_usb_az6027.parm=debug:set debugging level (1=info,xfer=2,rc=4 (or-able)).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_az6027.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [50 x i8] c"dvb_usb_az6027.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [51 x i8] c"dvb_usb_az6027.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_az6027__390_1187_az6027_usb_driver_init6 = internal global ptr @az6027_usb_driver_init, section ".initcall6.init", align 4
@az6027_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @az6027_usb_probe, ptr @az6027_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @az6027_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_az6027_usb_driver_exit = internal global ptr @az6027_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author391 = internal constant [56 x i8] c"dvb_usb_az6027.author=Adams Xu <Adams.xu@azwave.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_description392 = internal constant [73 x i8] c"dvb_usb_az6027.description=Driver for AZUREWAVE DVB-S/S2 USB2.0 (AZ6027)\00", section ".modinfo", align 1
@__UNIQUE_ID_version393 = internal constant [27 x i8] c"dvb_usb_az6027.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_az6027\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file394 = internal constant [61 x i8] c"dvb_usb_az6027.file=drivers/media/usb/dvb-usb/dvb-usb-az6027\00", section ".modinfo", align 1
@__UNIQUE_ID_license395 = internal constant [27 x i8] c"dvb_usb_az6027.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@az6027_usb_table = internal global { [9 x %struct.usb_device_id], [40 x i8] } { [9 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5075, i16 12917, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 4260, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 4268, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5367, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5367, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4057, i16 42, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4057, i16 37, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4057, i16 54, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-usb-az6027-03.fw\00", [43 x i8] zeroinitializer }, align 32
@rc_map_az6027_table = internal global { [2 x %struct.rc_map_table], [32 x i8] } { [2 x %struct.rc_map_table] [%struct.rc_map_table { i64 1, i32 2 }, %struct.rc_map_table { i64 2, i32 3 }], [32 x i8] zeroinitializer }, align 32
@az6027_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @az6027_i2c_xfer, ptr null, ptr null, ptr null, ptr @az6027_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AZUREWAVE DVB-S/S2 USB2.0 (AZ6027)\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TERRATEC S7\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TERRATEC S7 MKII\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Technisat SkyStar USB 2 HD CI\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Elgato EyeTV Sat\00", [47 x i8] zeroinitializer }, align 32
@az6027_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> } { i32 1, i32 3, ptr null, ptr @.str.3, i32 1, i32 148, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @az6027_streaming_ctrl, ptr null, ptr null, ptr @az6027_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 10, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @az6027_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy { ptr @rc_map_az6027_table, i32 2, ptr @az6027_rc_query, i32 400 }, %struct.dvb_rc zeroinitializer }, ptr @az6027_i2c_algo, i32 0, i32 0, i32 8, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.4, <{ ptr, [14 x ptr] }> <{ ptr @az6027_usb_table, [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.5, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @az6027_usb_table, i64 24), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.6, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @az6027_usb_table, i64 48), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.7, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @az6027_usb_table, i64 72), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.7, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @az6027_usb_table, i64 96), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.8, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @az6027_usb_table, i64 120), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.8, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @az6027_usb_table, i64 144), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.8, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @az6027_usb_table, i64 168), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@az6027_streaming_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %d\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"az6027_streaming_ctrl\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/dvb-usb/az6027.c\00", [61 x i8] zeroinitializer }, align 32
@az6027_streaming_ctrl._entry_ptr = internal global ptr @az6027_streaming_ctrl._entry, section ".printk_index", align 4
@az6027_streaming_ctrl._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.12, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014az6027: usb out operation failed. (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@az6027_streaming_ctrl._entry_ptr.15 = internal global ptr @az6027_streaming_ctrl._entry.13, section ".printk_index", align 4
@az6027_usb_out_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.12, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"out: req. %02x, val: %04x, ind: %04x, buffer: \00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"az6027_usb_out_op\00", [46 x i8] zeroinitializer }, align 32
@az6027_usb_out_op._entry_ptr = internal global ptr @az6027_usb_out_op._entry, section ".printk_index", align 4
@az6027_usb_out_op._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.12, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@az6027_usb_out_op._entry_ptr.20 = internal global ptr @az6027_usb_out_op._entry.18, section ".printk_index", align 4
@az6027_usb_out_op._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.12, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@az6027_usb_out_op._entry_ptr.23 = internal global ptr @az6027_usb_out_op._entry.21, section ".printk_index", align 4
@az6027_usb_out_op._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.17, ptr @.str.12, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@az6027_usb_out_op._entry_ptr.25 = internal global ptr @az6027_usb_out_op._entry.24, section ".printk_index", align 4
@az6027_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.12, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adap = %p, dev = %p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"az6027_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@az6027_frontend_attach._entry_ptr = internal global ptr @az6027_frontend_attach._entry, section ".printk_index", align 4
@az6027_stb0899_config = internal global { %struct.stb0899_config, [36 x i8] } { %struct.stb0899_config { ptr @az6027_stb0899_s1_init_1, ptr @stb0899_s2_init_2, ptr @az6027_stb0899_s1_init_3, ptr @stb0899_s2_init_4, ptr @stb0899_s1_init_5, ptr null, i32 -1, i32 27000000, i8 -48, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 76500000, i32 99000000, i32 3, i32 32, i32 10, i32 20, i32 6, i32 1125, i32 758, i32 1350, i32 1664100, i32 28, i32 15, i32 30, i32 70, ptr @stb6100_set_frequency, ptr @stb6100_get_frequency, ptr @stb6100_set_bandwidth, ptr @stb6100_get_bandwidth, ptr null }, [36 x i8] zeroinitializer }, align 32
@az6027_frontend_attach._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.12, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"found STB0899 DVB-S/DVB-S2 frontend @0x%02x\00", [52 x i8] zeroinitializer }, align 32
@az6027_frontend_attach._entry_ptr.30 = internal global ptr @az6027_frontend_attach._entry.28, section ".printk_index", align 4
@az6027_stb6100_config = internal global { %struct.stb6100_config, [24 x i8] } { %struct.stb6100_config { i8 -64, i32 27000000 }, [24 x i8] zeroinitializer }, align 32
@az6027_frontend_attach._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.12, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"found STB6100 DVB-S/DVB-S2 frontend @0x%02x\00", [52 x i8] zeroinitializer }, align 32
@az6027_frontend_attach._entry_ptr.33 = internal global ptr @az6027_frontend_attach._entry.31, section ".printk_index", align 4
@az6027_frontend_attach._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.12, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014az6027: no front-end attached\0A\0A\00", [62 x i8] zeroinitializer }, align 32
@az6027_frontend_attach._entry_ptr.36 = internal global ptr @az6027_frontend_attach._entry.34, section ".printk_index", align 4
@az6027_stb0899_s1_init_1 = internal constant { [82 x %struct.stb0899_s1_reg], [88 x i8] } { [82 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -4096, i8 48 }, %struct.stb0899_s1_reg { i16 -3936, i8 50 }, %struct.stb0899_s1_reg { i16 -3935, i8 -128 }, %struct.stb0899_s1_reg { i16 -3932, i8 4 }, %struct.stb0899_s1_reg { i16 -3931, i8 0 }, %struct.stb0899_s1_reg { i16 -3930, i8 0 }, %struct.stb0899_s1_reg { i16 -3928, i8 32 }, %struct.stb0899_s1_reg { i16 -3927, i8 -103 }, %struct.stb0899_s1_reg { i16 -3926, i8 -88 }, %struct.stb0899_s1_reg { i16 -3824, i8 17 }, %struct.stb0899_s1_reg { i16 -3823, i8 10 }, %struct.stb0899_s1_reg { i16 -3822, i8 5 }, %struct.stb0899_s1_reg { i16 -3821, i8 0 }, %struct.stb0899_s1_reg { i16 -3820, i8 0 }, %struct.stb0899_s1_reg { i16 -3812, i8 0 }, %struct.stb0899_s1_reg { i16 -3811, i8 0 }, %struct.stb0899_s1_reg { i16 -3808, i8 -2 }, %struct.stb0899_s1_reg { i16 -3807, i8 3 }, %struct.stb0899_s1_reg { i16 -3806, i8 124 }, %struct.stb0899_s1_reg { i16 -3805, i8 -12 }, %struct.stb0899_s1_reg { i16 -3804, i8 -13 }, %struct.stb0899_s1_reg { i16 -3803, i8 -4 }, %struct.stb0899_s1_reg { i16 -3802, i8 -1 }, %struct.stb0899_s1_reg { i16 -3801, i8 -1 }, %struct.stb0899_s1_reg { i16 -3800, i8 0 }, %struct.stb0899_s1_reg { i16 -3799, i8 -120 }, %struct.stb0899_s1_reg { i16 -3798, i8 88 }, %struct.stb0899_s1_reg { i16 -3783, i8 0 }, %struct.stb0899_s1_reg { i16 -3782, i8 51 }, %struct.stb0899_s1_reg { i16 -3781, i8 109 }, %struct.stb0899_s1_reg { i16 -3780, i8 -112 }, %struct.stb0899_s1_reg { i16 -3779, i8 96 }, %struct.stb0899_s1_reg { i16 -3778, i8 0 }, %struct.stb0899_s1_reg { i16 -3776, i8 -126 }, %struct.stb0899_s1_reg { i16 -3775, i8 -126 }, %struct.stb0899_s1_reg { i16 -3774, i8 -126 }, %struct.stb0899_s1_reg { i16 -3773, i8 -126 }, %struct.stb0899_s1_reg { i16 -3772, i8 -126 }, %struct.stb0899_s1_reg { i16 -3771, i8 -126 }, %struct.stb0899_s1_reg { i16 -3770, i8 -126 }, %struct.stb0899_s1_reg { i16 -3769, i8 -126 }, %struct.stb0899_s1_reg { i16 -3768, i8 -126 }, %struct.stb0899_s1_reg { i16 -3767, i8 -126 }, %struct.stb0899_s1_reg { i16 -3766, i8 -126 }, %struct.stb0899_s1_reg { i16 -3765, i8 -126 }, %struct.stb0899_s1_reg { i16 -3764, i8 -126 }, %struct.stb0899_s1_reg { i16 -3763, i8 -126 }, %struct.stb0899_s1_reg { i16 -3762, i8 -126 }, %struct.stb0899_s1_reg { i16 -3761, i8 -126 }, %struct.stb0899_s1_reg { i16 -3760, i8 -126 }, %struct.stb0899_s1_reg { i16 -3759, i8 -126 }, %struct.stb0899_s1_reg { i16 -3758, i8 -126 }, %struct.stb0899_s1_reg { i16 -3757, i8 -126 }, %struct.stb0899_s1_reg { i16 -3756, i8 -126 }, %struct.stb0899_s1_reg { i16 -3755, i8 -72 }, %struct.stb0899_s1_reg { i16 -3754, i8 -70 }, %struct.stb0899_s1_reg { i16 -3753, i8 28 }, %struct.stb0899_s1_reg { i16 -3752, i8 -126 }, %struct.stb0899_s1_reg { i16 -3751, i8 -111 }, %struct.stb0899_s1_reg { i16 -3750, i8 -126 }, %struct.stb0899_s1_reg { i16 -3749, i8 126 }, %struct.stb0899_s1_reg { i16 -3748, i8 -126 }, %struct.stb0899_s1_reg { i16 -3747, i8 -126 }, %struct.stb0899_s1_reg { i16 -3746, i8 -126 }, %struct.stb0899_s1_reg { i16 -3745, i8 32 }, %struct.stb0899_s1_reg { i16 -3744, i8 -126 }, %struct.stb0899_s1_reg { i16 -3743, i8 -126 }, %struct.stb0899_s1_reg { i16 -3742, i8 -126 }, %struct.stb0899_s1_reg { i16 -3741, i8 -126 }, %struct.stb0899_s1_reg { i16 -3740, i8 -126 }, %struct.stb0899_s1_reg { i16 -3739, i8 -126 }, %struct.stb0899_s1_reg { i16 -3738, i8 -126 }, %struct.stb0899_s1_reg { i16 -3737, i8 -126 }, %struct.stb0899_s1_reg { i16 -3661, i8 23 }, %struct.stb0899_s1_reg { i16 -3658, i8 2 }, %struct.stb0899_s1_reg { i16 -3657, i8 0 }, %struct.stb0899_s1_reg { i16 -3656, i8 1 }, %struct.stb0899_s1_reg { i16 -3646, i8 32 }, %struct.stb0899_s1_reg { i16 -3645, i8 0 }, %struct.stb0899_s1_reg { i16 -3584, i8 0 }, %struct.stb0899_s1_reg { i16 -3583, i8 10 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [88 x i8] zeroinitializer }, align 32
@stb0899_s2_init_2 = internal constant { [177 x %struct.stb0899_s2_reg], [532 x i8] } { [177 x %struct.stb0899_s2_reg] [%struct.stb0899_s2_reg { i16 -3328, i32 0, i32 259 }, %struct.stb0899_s2_reg { i16 -3324, i32 0, i32 1053940310 }, %struct.stb0899_s2_reg { i16 -3320, i32 0, i32 16384 }, %struct.stb0899_s2_reg { i16 -3316, i32 0, i32 10974 }, %struct.stb0899_s2_reg { i16 -3312, i32 0, i32 444 }, %struct.stb0899_s2_reg { i16 -3308, i32 0, i32 512 }, %struct.stb0899_s2_reg { i16 -3300, i32 0, i32 15 }, %struct.stb0899_s2_reg { i16 -3296, i32 0, i32 66800160 }, %struct.stb0899_s2_reg { i16 -3292, i32 0, i32 2100375 }, %struct.stb0899_s2_reg { i16 -3288, i32 0, i32 22 }, %struct.stb0899_s2_reg { i16 -3284, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 0, i32 1053857718 }, %struct.stb0899_s2_reg { i16 -3268, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 0, i32 258792449 }, %struct.stb0899_s2_reg { i16 -3256, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3252, i32 0, i32 14739 }, %struct.stb0899_s2_reg { i16 -3248, i32 0, i32 867439 }, %struct.stb0899_s2_reg { i16 -3244, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3236, i32 0, i32 37282702 }, %struct.stb0899_s2_reg { i16 -3232, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3224, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3204, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 32, i32 1074200576 }, %struct.stb0899_s2_reg { i16 -3240, i32 32, i32 1 }, %struct.stb0899_s2_reg { i16 -3236, i32 32, i32 2 }, %struct.stb0899_s2_reg { i16 -3232, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 32, i32 65025 }, %struct.stb0899_s2_reg { i16 -3224, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 32, i32 1 }, %struct.stb0899_s2_reg { i16 -3212, i32 32, i32 20487 }, %struct.stb0899_s2_reg { i16 -3208, i32 32, i32 2 }, %struct.stb0899_s2_reg { i16 -3328, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3324, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3316, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3304, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3300, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3296, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3284, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 64, i32 65280 }, %struct.stb0899_s2_reg { i16 -3260, i32 64, i32 256 }, %struct.stb0899_s2_reg { i16 -3256, i32 64, i32 65025 }, %struct.stb0899_s2_reg { i16 -3252, i32 64, i32 1278 }, %struct.stb0899_s2_reg { i16 -3248, i32 64, i32 53223 }, %struct.stb0899_s2_reg { i16 -3244, i32 64, i32 48838 }, %struct.stb0899_s2_reg { i16 -3240, i32 64, i32 49855 }, %struct.stb0899_s2_reg { i16 -3236, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3232, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3228, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3224, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3220, i32 64, i32 49600 }, %struct.stb0899_s2_reg { i16 -3216, i32 64, i32 49344 }, %struct.stb0899_s2_reg { i16 -3212, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3208, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3204, i32 64, i32 49345 }, %struct.stb0899_s2_reg { i16 -3328, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3324, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3320, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3316, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3312, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3308, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3304, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3300, i32 96, i32 49344 }, %struct.stb0899_s2_reg { i16 -3296, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3292, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3288, i32 96, i32 49344 }, %struct.stb0899_s2_reg { i16 -3284, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3280, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3276, i32 96, i32 49598 }, %struct.stb0899_s2_reg { i16 -3272, i32 96, i32 49609 }, %struct.stb0899_s2_reg { i16 -3268, i32 96, i32 49370 }, %struct.stb0899_s2_reg { i16 -3264, i32 96, i32 49338 }, %struct.stb0899_s2_reg { i16 -3260, i32 96, i32 49604 }, %struct.stb0899_s2_reg { i16 -3256, i32 96, i32 49599 }, %struct.stb0899_s2_reg { i16 -3252, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3248, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3244, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3240, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3236, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3232, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3228, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3224, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3220, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3216, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3212, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3208, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3204, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3328, i32 1024, i32 1 }, %struct.stb0899_s2_reg { i16 -3324, i32 1024, i32 22100 }, %struct.stb0899_s2_reg { i16 -3316, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1024, i32 131097 }, %struct.stb0899_s2_reg { i16 -3308, i32 1024, i32 4928055 }, %struct.stb0899_s2_reg { i16 -3304, i32 1024, i32 253207 }, %struct.stb0899_s2_reg { i16 -3300, i32 1024, i32 32776 }, %struct.stb0899_s2_reg { i16 -3296, i32 1024, i32 2765062 }, %struct.stb0899_s2_reg { i16 -3292, i32 1024, i32 398346 }, %struct.stb0899_s2_reg { i16 -3288, i32 1024, i32 32768 }, %struct.stb0899_s2_reg { i16 -3284, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1024, i32 1137 }, %struct.stb0899_s2_reg { i16 -3252, i32 1024, i32 24839269 }, %struct.stb0899_s2_reg { i16 -3248, i32 1024, i32 2 }, %struct.stb0899_s2_reg { i16 -3244, i32 1024, i32 1664100 }, %struct.stb0899_s2_reg { i16 -3240, i32 1024, i32 1539 }, %struct.stb0899_s2_reg { i16 -3236, i32 1024, i32 33842790 }, %struct.stb0899_s2_reg { i16 -3232, i32 1024, i32 268723587 }, %struct.stb0899_s2_reg { i16 -3228, i32 1024, i32 66564 }, %struct.stb0899_s2_reg { i16 -3224, i32 1024, i32 174730 }, %struct.stb0899_s2_reg { i16 -3220, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3216, i32 1024, i32 1 }, %struct.stb0899_s2_reg { i16 -3212, i32 1024, i32 1280 }, %struct.stb0899_s2_reg { i16 -3208, i32 1024, i32 2662560 }, %struct.stb0899_s2_reg { i16 -3204, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 1088, i32 8391703 }, %struct.stb0899_s2_reg { i16 -3316, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 1088, i32 346114 }, %struct.stb0899_s2_reg { i16 -3296, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3284, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 1088, i32 1024 }, %struct.stb0899_s2_reg { i16 -3272, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3256, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3248, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3244, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3236, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3232, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3224, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3216, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3212, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3208, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3328, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3324, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3316, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3304, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3300, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3296, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3256, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3252, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3248, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3244, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -1, i32 -1, i32 -1 }], [532 x i8] zeroinitializer }, align 32
@az6027_stb0899_s1_init_3 = internal constant { [130 x %struct.stb0899_s1_reg], [152 x i8] } { [130 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -3058, i8 0 }, %struct.stb0899_s1_reg { i16 -3056, i8 -55 }, %struct.stb0899_s1_reg { i16 -3054, i8 1 }, %struct.stb0899_s1_reg { i16 -3053, i8 16 }, %struct.stb0899_s1_reg { i16 -3049, i8 35 }, %struct.stb0899_s1_reg { i16 -3048, i8 78 }, %struct.stb0899_s1_reg { i16 -3047, i8 52 }, %struct.stb0899_s1_reg { i16 -3046, i8 -124 }, %struct.stb0899_s1_reg { i16 -3045, i8 -9 }, %struct.stb0899_s1_reg { i16 -3044, i8 -121 }, %struct.stb0899_s1_reg { i16 -3043, i8 -108 }, %struct.stb0899_s1_reg { i16 -3042, i8 65 }, %struct.stb0899_s1_reg { i16 -3041, i8 -15 }, %struct.stb0899_s1_reg { i16 -3040, i8 -29 }, %struct.stb0899_s1_reg { i16 -3035, i8 -76 }, %struct.stb0899_s1_reg { i16 -3034, i8 16 }, %struct.stb0899_s1_reg { i16 -3033, i8 48 }, %struct.stb0899_s1_reg { i16 -3032, i8 -3 }, %struct.stb0899_s1_reg { i16 -3031, i8 -1 }, %struct.stb0899_s1_reg { i16 -3030, i8 12 }, %struct.stb0899_s1_reg { i16 -3029, i8 15 }, %struct.stb0899_s1_reg { i16 -3028, i8 108 }, %struct.stb0899_s1_reg { i16 -3026, i8 -128 }, %struct.stb0899_s1_reg { i16 -3018, i8 6 }, %struct.stb0899_s1_reg { i16 -3017, i8 0 }, %struct.stb0899_s1_reg { i16 -3016, i8 48 }, %struct.stb0899_s1_reg { i16 -3015, i8 127 }, %struct.stb0899_s1_reg { i16 -3014, i8 0 }, %struct.stb0899_s1_reg { i16 -3013, i8 -68 }, %struct.stb0899_s1_reg { i16 -3010, i8 -22 }, %struct.stb0899_s1_reg { i16 -3009, i8 49 }, %struct.stb0899_s1_reg { i16 -3008, i8 43 }, %struct.stb0899_s1_reg { i16 -3007, i8 -128 }, %struct.stb0899_s1_reg { i16 -3004, i8 29 }, %struct.stb0899_s1_reg { i16 -3003, i8 -90 }, %struct.stb0899_s1_reg { i16 -3002, i8 47 }, %struct.stb0899_s1_reg { i16 -3001, i8 104 }, %struct.stb0899_s1_reg { i16 -3000, i8 64 }, %struct.stb0899_s1_reg { i16 -2996, i8 47 }, %struct.stb0899_s1_reg { i16 -2995, i8 104 }, %struct.stb0899_s1_reg { i16 -2994, i8 64 }, %struct.stb0899_s1_reg { i16 -2848, i8 2 }, %struct.stb0899_s1_reg { i16 -2847, i8 -1 }, %struct.stb0899_s1_reg { i16 -2846, i8 4 }, %struct.stb0899_s1_reg { i16 -2845, i8 5 }, %struct.stb0899_s1_reg { i16 -2844, i8 2 }, %struct.stb0899_s1_reg { i16 -2843, i8 -3 }, %struct.stb0899_s1_reg { i16 -2842, i8 3 }, %struct.stb0899_s1_reg { i16 -2841, i8 7 }, %struct.stb0899_s1_reg { i16 -2840, i8 8 }, %struct.stb0899_s1_reg { i16 -2839, i8 -11 }, %struct.stb0899_s1_reg { i16 -2804, i8 0 }, %struct.stb0899_s1_reg { i16 -2803, i8 0 }, %struct.stb0899_s1_reg { i16 -2801, i8 -122 }, %struct.stb0899_s1_reg { i16 -2781, i8 42 }, %struct.stb0899_s1_reg { i16 -2780, i8 0 }, %struct.stb0899_s1_reg { i16 -2779, i8 0 }, %struct.stb0899_s1_reg { i16 -2778, i8 0 }, %struct.stb0899_s1_reg { i16 -2777, i8 0 }, %struct.stb0899_s1_reg { i16 -2776, i8 10 }, %struct.stb0899_s1_reg { i16 -2775, i8 -83 }, %struct.stb0899_s1_reg { i16 -2768, i8 6 }, %struct.stb0899_s1_reg { i16 -2765, i8 1 }, %struct.stb0899_s1_reg { i16 -2764, i8 -80 }, %struct.stb0899_s1_reg { i16 -2763, i8 122 }, %struct.stb0899_s1_reg { i16 -2762, i8 88 }, %struct.stb0899_s1_reg { i16 -2761, i8 56 }, %struct.stb0899_s1_reg { i16 -2760, i8 52 }, %struct.stb0899_s1_reg { i16 -2759, i8 36 }, %struct.stb0899_s1_reg { i16 -2756, i8 -1 }, %struct.stb0899_s1_reg { i16 -2755, i8 25 }, %struct.stb0899_s1_reg { i16 -2744, i8 -79 }, %struct.stb0899_s1_reg { i16 -2743, i8 66 }, %struct.stb0899_s1_reg { i16 -2742, i8 65 }, %struct.stb0899_s1_reg { i16 -2741, i8 18 }, %struct.stb0899_s1_reg { i16 -2740, i8 12 }, %struct.stb0899_s1_reg { i16 -2739, i8 0 }, %struct.stb0899_s1_reg { i16 -2738, i8 0 }, %struct.stb0899_s1_reg { i16 -2737, i8 105 }, %struct.stb0899_s1_reg { i16 -2736, i8 0 }, %struct.stb0899_s1_reg { i16 -2735, i8 2 }, %struct.stb0899_s1_reg { i16 -2734, i8 0 }, %struct.stb0899_s1_reg { i16 -2733, i8 0 }, %struct.stb0899_s1_reg { i16 -2726, i8 27 }, %struct.stb0899_s1_reg { i16 -2725, i8 -77 }, %struct.stb0899_s1_reg { i16 -2724, i8 0 }, %struct.stb0899_s1_reg { i16 -2723, i8 0 }, %struct.stb0899_s1_reg { i16 -2722, i8 -68 }, %struct.stb0899_s1_reg { i16 -2721, i8 -52 }, %struct.stb0899_s1_reg { i16 -2720, i8 -67 }, %struct.stb0899_s1_reg { i16 -2719, i8 -112 }, %struct.stb0899_s1_reg { i16 -2700, i8 -74 }, %struct.stb0899_s1_reg { i16 -2699, i8 -107 }, %struct.stb0899_s1_reg { i16 -2698, i8 -115 }, %struct.stb0899_s1_reg { i16 -2693, i8 39 }, %struct.stb0899_s1_reg { i16 -2692, i8 3 }, %struct.stb0899_s1_reg { i16 -2685, i8 92 }, %struct.stb0899_s1_reg { i16 -2676, i8 25 }, %struct.stb0899_s1_reg { i16 -2560, i8 72 }, %struct.stb0899_s1_reg { i16 -2559, i8 0 }, %struct.stb0899_s1_reg { i16 -2558, i8 0 }, %struct.stb0899_s1_reg { i16 -2557, i8 0 }, %struct.stb0899_s1_reg { i16 -2556, i8 119 }, %struct.stb0899_s1_reg { i16 -2555, i8 0 }, %struct.stb0899_s1_reg { i16 -2554, i8 0 }, %struct.stb0899_s1_reg { i16 -2553, i8 0 }, %struct.stb0899_s1_reg { i16 -2552, i8 0 }, %struct.stb0899_s1_reg { i16 -2551, i8 0 }, %struct.stb0899_s1_reg { i16 -2550, i8 0 }, %struct.stb0899_s1_reg { i16 -2549, i8 0 }, %struct.stb0899_s1_reg { i16 -2548, i8 0 }, %struct.stb0899_s1_reg { i16 -2547, i8 0 }, %struct.stb0899_s1_reg { i16 -2546, i8 0 }, %struct.stb0899_s1_reg { i16 -2545, i8 0 }, %struct.stb0899_s1_reg { i16 -2544, i8 -16 }, %struct.stb0899_s1_reg { i16 -2543, i8 2 }, %struct.stb0899_s1_reg { i16 -2542, i8 69 }, %struct.stb0899_s1_reg { i16 -2541, i8 96 }, %struct.stb0899_s1_reg { i16 -2540, i8 -29 }, %struct.stb0899_s1_reg { i16 -2539, i8 0 }, %struct.stb0899_s1_reg { i16 -2538, i8 71 }, %struct.stb0899_s1_reg { i16 -2537, i8 5 }, %struct.stb0899_s1_reg { i16 -2536, i8 24 }, %struct.stb0899_s1_reg { i16 -2535, i8 25 }, %struct.stb0899_s1_reg { i16 -2534, i8 43 }, %struct.stb0899_s1_reg { i16 -2533, i8 0 }, %struct.stb0899_s1_reg { i16 -2532, i8 1 }, %struct.stb0899_s1_reg { i16 -2531, i8 0 }, %struct.stb0899_s1_reg { i16 -2530, i8 0 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [152 x i8] zeroinitializer }, align 32
@stb0899_s2_init_4 = internal constant { [21 x %struct.stb0899_s2_reg], [36 x i8] } { [21 x %struct.stb0899_s2_reg] [%struct.stb0899_s2_reg { i16 -1532, i32 0, i32 8 }, %struct.stb0899_s2_reg { i16 -1528, i32 0, i32 180 }, %struct.stb0899_s2_reg { i16 -1520, i32 0, i32 1205 }, %struct.stb0899_s2_reg { i16 -1516, i32 0, i32 2891 }, %struct.stb0899_s2_reg { i16 -1508, i32 0, i32 120 }, %struct.stb0899_s2_reg { i16 -1504, i32 0, i32 480 }, %struct.stb0899_s2_reg { i16 -1500, i32 0, i32 43200 }, %struct.stb0899_s2_reg { i16 -1496, i32 0, i32 12 }, %struct.stb0899_s2_reg { i16 -1536, i32 2048, i32 1 }, %struct.stb0899_s2_reg { i16 -1532, i32 2048, i32 13 }, %struct.stb0899_s2_reg { i16 -1528, i32 2048, i32 64 }, %struct.stb0899_s2_reg { i16 -1524, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1520, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1516, i32 2048, i32 8 }, %struct.stb0899_s2_reg { i16 -1512, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1508, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1504, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1500, i32 2048, i32 8 }, %struct.stb0899_s2_reg { i16 -1496, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1480, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1, i32 -1, i32 -1 }], [36 x i8] zeroinitializer }, align 32
@stb0899_s1_init_5 = internal constant { [38 x %struct.stb0899_s1_reg], [40 x i8] } { [38 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -240, i8 0 }, %struct.stb0899_s1_reg { i16 -239, i8 0 }, %struct.stb0899_s1_reg { i16 -238, i8 0 }, %struct.stb0899_s1_reg { i16 -237, i8 0 }, %struct.stb0899_s1_reg { i16 -236, i8 0 }, %struct.stb0899_s1_reg { i16 -235, i8 0 }, %struct.stb0899_s1_reg { i16 -234, i8 0 }, %struct.stb0899_s1_reg { i16 -233, i8 0 }, %struct.stb0899_s1_reg { i16 -228, i8 0 }, %struct.stb0899_s1_reg { i16 -227, i8 0 }, %struct.stb0899_s1_reg { i16 -226, i8 0 }, %struct.stb0899_s1_reg { i16 -220, i8 0 }, %struct.stb0899_s1_reg { i16 -219, i8 0 }, %struct.stb0899_s1_reg { i16 -216, i8 0 }, %struct.stb0899_s1_reg { i16 -192, i8 0 }, %struct.stb0899_s1_reg { i16 -191, i8 0 }, %struct.stb0899_s1_reg { i16 -190, i8 0 }, %struct.stb0899_s1_reg { i16 -184, i8 0 }, %struct.stb0899_s1_reg { i16 -183, i8 0 }, %struct.stb0899_s1_reg { i16 -182, i8 0 }, %struct.stb0899_s1_reg { i16 -181, i8 0 }, %struct.stb0899_s1_reg { i16 -180, i8 0 }, %struct.stb0899_s1_reg { i16 -179, i8 0 }, %struct.stb0899_s1_reg { i16 -176, i8 0 }, %struct.stb0899_s1_reg { i16 -175, i8 0 }, %struct.stb0899_s1_reg { i16 -174, i8 0 }, %struct.stb0899_s1_reg { i16 -173, i8 0 }, %struct.stb0899_s1_reg { i16 -172, i8 0 }, %struct.stb0899_s1_reg { i16 -171, i8 0 }, %struct.stb0899_s1_reg { i16 -170, i8 0 }, %struct.stb0899_s1_reg { i16 -168, i8 0 }, %struct.stb0899_s1_reg { i16 -167, i8 0 }, %struct.stb0899_s1_reg { i16 -166, i8 0 }, %struct.stb0899_s1_reg { i16 -164, i8 0 }, %struct.stb0899_s1_reg { i16 -163, i8 0 }, %struct.stb0899_s1_reg { i16 -173, i8 0 }, %struct.stb0899_s1_reg { i16 -4096, i8 -127 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.39, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Invalid parameter\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_set_frequency\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/dvb-frontends/stb6100_cfg.h\00", [54 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr = internal global ptr @stb6100_set_frequency._entry, section ".printk_index", align 4
@stb6100_get_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.40, ptr @.str.39, i32 22, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_get_frequency\00", [42 x i8] zeroinitializer }, align 32
@stb6100_get_frequency._entry_ptr = internal global ptr @stb6100_get_frequency._entry, section ".printk_index", align 4
@stb6100_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.41, ptr @.str.39, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_set_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@stb6100_set_bandwidth._entry_ptr = internal global ptr @stb6100_set_bandwidth._entry, section ".printk_index", align 4
@stb6100_get_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.42, ptr @.str.39, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_get_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@stb6100_get_bandwidth._entry_ptr = internal global ptr @stb6100_get_bandwidth._entry, section ".printk_index", align 4
@az6027_ci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.12, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"az6027_ci_init\00", [17 x i8] zeroinitializer }, align 32
@az6027_ci_init._entry_ptr = internal global ptr @az6027_ci_init._entry, section ".printk_index", align 4
@az6027_ci_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&state->ca_mutex\00", [47 x i8] zeroinitializer }, align 32
@az6027_ci_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.12, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013az6027: Cannot initialize CI: Error %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@az6027_ci_init._entry_ptr.48 = internal global ptr @az6027_ci_init._entry.46, section ".printk_index", align 4
@az6027_ci_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.44, ptr @.str.12, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CI initialized.\00", [16 x i8] zeroinitializer }, align 32
@az6027_ci_init._entry_ptr.51 = internal global ptr @az6027_ci_init._entry.49, section ".printk_index", align 4
@az6027_ci_read_attribute_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.12, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014az6027: usb in operation failed. (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"az6027_ci_read_attribute_mem\00", [35 x i8] zeroinitializer }, align 32
@az6027_ci_read_attribute_mem._entry_ptr = internal global ptr @az6027_ci_read_attribute_mem._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@az6027_usb_in_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.54, ptr @.str.12, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"az6027_usb_in_op\00", [47 x i8] zeroinitializer }, align 32
@az6027_usb_in_op._entry_ptr = internal global ptr @az6027_usb_in_op._entry, section ".printk_index", align 4
@az6027_usb_in_op._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.12, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"in: req. %02x, val: %04x, ind: %04x, buffer: \00", [50 x i8] zeroinitializer }, align 32
@az6027_usb_in_op._entry_ptr.57 = internal global ptr @az6027_usb_in_op._entry.55, section ".printk_index", align 4
@az6027_usb_in_op._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.54, ptr @.str.12, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@az6027_usb_in_op._entry_ptr.59 = internal global ptr @az6027_usb_in_op._entry.58, section ".printk_index", align 4
@az6027_usb_in_op._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.54, ptr @.str.12, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@az6027_usb_in_op._entry_ptr.61 = internal global ptr @az6027_usb_in_op._entry.60, section ".printk_index", align 4
@az6027_ci_write_attribute_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.62, ptr @.str.12, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"az6027_ci_write_attribute_mem\00", [34 x i8] zeroinitializer }, align 32
@az6027_ci_write_attribute_mem._entry_ptr = internal global ptr @az6027_ci_write_attribute_mem._entry, section ".printk_index", align 4
@az6027_ci_write_attribute_mem._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.62, ptr @.str.12, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@az6027_ci_write_attribute_mem._entry_ptr.64 = internal global ptr @az6027_ci_write_attribute_mem._entry.63, section ".printk_index", align 4
@az6027_ci_read_cam_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.65, ptr @.str.12, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"az6027_ci_read_cam_control\00", [37 x i8] zeroinitializer }, align 32
@az6027_ci_read_cam_control._entry_ptr = internal global ptr @az6027_ci_read_cam_control._entry, section ".printk_index", align 4
@az6027_ci_read_cam_control._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.12, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014az6027: Read CI IO error\0A\00", [36 x i8] zeroinitializer }, align 32
@az6027_ci_read_cam_control._entry_ptr.68 = internal global ptr @az6027_ci_read_cam_control._entry.66, section ".printk_index", align 4
@az6027_ci_read_cam_control._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.12, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"read cam data = %x from 0x%x\00", [35 x i8] zeroinitializer }, align 32
@az6027_ci_read_cam_control._entry_ptr.71 = internal global ptr @az6027_ci_read_cam_control._entry.69, section ".printk_index", align 4
@az6027_ci_write_cam_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.72, ptr @.str.12, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"az6027_ci_write_cam_control\00", [36 x i8] zeroinitializer }, align 32
@az6027_ci_write_cam_control._entry_ptr = internal global ptr @az6027_ci_write_cam_control._entry, section ".printk_index", align 4
@az6027_ci_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.73, ptr @.str.12, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"az6027_ci_slot_reset\00", [43 x i8] zeroinitializer }, align 32
@az6027_ci_slot_reset._entry_ptr = internal global ptr @az6027_ci_slot_reset._entry, section ".printk_index", align 4
@az6027_ci_slot_reset._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.73, ptr @.str.12, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@az6027_ci_slot_reset._entry_ptr.75 = internal global ptr @az6027_ci_slot_reset._entry.74, section ".printk_index", align 4
@az6027_ci_slot_reset._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.73, ptr @.str.12, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CAM Ready\00", [22 x i8] zeroinitializer }, align 32
@az6027_ci_slot_reset._entry_ptr.78 = internal global ptr @az6027_ci_slot_reset._entry.76, section ".printk_index", align 4
@CI_CamReady._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.79, ptr @.str.12, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CI_CamReady\00", [20 x i8] zeroinitializer }, align 32
@CI_CamReady._entry_ptr = internal global ptr @CI_CamReady._entry, section ".printk_index", align 4
@az6027_ci_slot_ts_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.80, ptr @.str.12, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"az6027_ci_slot_ts_enable\00", [39 x i8] zeroinitializer }, align 32
@az6027_ci_slot_ts_enable._entry_ptr = internal global ptr @az6027_ci_slot_ts_enable._entry, section ".printk_index", align 4
@az6027_ci_slot_ts_enable._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.80, ptr @.str.12, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@az6027_ci_slot_ts_enable._entry_ptr.82 = internal global ptr @az6027_ci_slot_ts_enable._entry.81, section ".printk_index", align 4
@az6027_ci_poll_slot_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.83, ptr @.str.12, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"az6027_ci_poll_slot_status\00", [37 x i8] zeroinitializer }, align 32
@az6027_ci_poll_slot_status._entry_ptr = internal global ptr @az6027_ci_poll_slot_status._entry, section ".printk_index", align 4
@az6027_identify_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.12, i32 1078, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cold: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"az6027_identify_state\00", [42 x i8] zeroinitializer }, align 32
@az6027_identify_state._entry_ptr = internal global ptr @az6027_identify_state._entry, section ".printk_index", align 4
@az6027_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.12, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014az6027: more than 2 i2c messages at a time is not handled yet. TODO.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"az6027_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@az6027_i2c_xfer._entry_ptr = internal global ptr @az6027_i2c_xfer._entry, section ".printk_index", align 4
@az6027_ci_uninit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.88, ptr @.str.12, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"az6027_ci_uninit\00", [47 x i8] zeroinitializer }, align 32
@az6027_ci_uninit._entry_ptr = internal global ptr @az6027_ci_uninit._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"dvb_usb_az6027_debug\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 19, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"az6027_usb_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1180, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1191, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 23, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"az6027_usb_table\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1083, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1100, i32 25 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"rc_map_az6027_table\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 386, i32 28 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"az6027_i2c_algo\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1049, i32 29 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1143, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1147, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1151, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1155, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1163, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"az6027_properties\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1097, i32 41 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 371, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 380, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 337, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 338, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 354, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 910, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [22 x i8] c"az6027_stb0899_config\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 254, i32 30 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 914, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [22 x i8] c"az6027_stb6100_config\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 291, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 916, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 923, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [25 x i8] c"az6027_stb0899_s1_init_1\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 31, i32 36 }
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"stb0899_s2_init_2\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 13, i32 37 }
@___asan_gen_.218 = private unnamed_addr constant [25 x i8] c"az6027_stb0899_s1_init_3\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 119, i32 36 }
@___asan_gen_.221 = private unnamed_addr constant [18 x i8] c"stb0899_s2_init_4\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 195, i32 36 }
@___asan_gen_.224 = private unnamed_addr constant [18 x i8] c"stb0899_s1_init_5\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [45 x i8] c"../drivers/media/dvb-frontends/stb0899_cfg.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 219, i32 36 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 44, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 22, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 82, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant [45 x i8] c"../drivers/media/dvb-frontends/stb6100_cfg.h\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 60, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 741, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 743, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 761, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 766, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 436, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 316, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 321, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 322, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 461, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 473, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 509, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 513, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 516, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 549, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 609, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 621, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 629, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 580, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 656, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 665, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 697, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 1078, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 971, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.401 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.402 = private constant [38 x i8] c"../drivers/media/usb/dvb-usb/az6027.c\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.402, i32 717, i32 2 }
@llvm.compiler.used = appending global [158 x ptr] [ptr @CI_CamReady._entry, ptr @CI_CamReady._entry_ptr, ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author391, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description392, ptr @__UNIQUE_ID_file394, ptr @__UNIQUE_ID_license395, ptr @__UNIQUE_ID_version393, ptr @__exitcall_az6027_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_az6027__390_1187_az6027_usb_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @az6027_ci_init._entry, ptr @az6027_ci_init._entry.46, ptr @az6027_ci_init._entry.49, ptr @az6027_ci_init._entry_ptr, ptr @az6027_ci_init._entry_ptr.48, ptr @az6027_ci_init._entry_ptr.51, ptr @az6027_ci_poll_slot_status._entry, ptr @az6027_ci_poll_slot_status._entry_ptr, ptr @az6027_ci_read_attribute_mem._entry, ptr @az6027_ci_read_attribute_mem._entry_ptr, ptr @az6027_ci_read_cam_control._entry, ptr @az6027_ci_read_cam_control._entry.66, ptr @az6027_ci_read_cam_control._entry.69, ptr @az6027_ci_read_cam_control._entry_ptr, ptr @az6027_ci_read_cam_control._entry_ptr.68, ptr @az6027_ci_read_cam_control._entry_ptr.71, ptr @az6027_ci_slot_reset._entry, ptr @az6027_ci_slot_reset._entry.74, ptr @az6027_ci_slot_reset._entry.76, ptr @az6027_ci_slot_reset._entry_ptr, ptr @az6027_ci_slot_reset._entry_ptr.75, ptr @az6027_ci_slot_reset._entry_ptr.78, ptr @az6027_ci_slot_ts_enable._entry, ptr @az6027_ci_slot_ts_enable._entry.81, ptr @az6027_ci_slot_ts_enable._entry_ptr, ptr @az6027_ci_slot_ts_enable._entry_ptr.82, ptr @az6027_ci_uninit._entry, ptr @az6027_ci_uninit._entry_ptr, ptr @az6027_ci_write_attribute_mem._entry, ptr @az6027_ci_write_attribute_mem._entry.63, ptr @az6027_ci_write_attribute_mem._entry_ptr, ptr @az6027_ci_write_attribute_mem._entry_ptr.64, ptr @az6027_ci_write_cam_control._entry, ptr @az6027_ci_write_cam_control._entry_ptr, ptr @az6027_frontend_attach._entry, ptr @az6027_frontend_attach._entry.28, ptr @az6027_frontend_attach._entry.31, ptr @az6027_frontend_attach._entry.34, ptr @az6027_frontend_attach._entry_ptr, ptr @az6027_frontend_attach._entry_ptr.30, ptr @az6027_frontend_attach._entry_ptr.33, ptr @az6027_frontend_attach._entry_ptr.36, ptr @az6027_i2c_xfer._entry, ptr @az6027_i2c_xfer._entry_ptr, ptr @az6027_identify_state._entry, ptr @az6027_identify_state._entry_ptr, ptr @az6027_streaming_ctrl._entry, ptr @az6027_streaming_ctrl._entry.13, ptr @az6027_streaming_ctrl._entry_ptr, ptr @az6027_streaming_ctrl._entry_ptr.15, ptr @az6027_usb_driver_exit, ptr @az6027_usb_in_op._entry, ptr @az6027_usb_in_op._entry.55, ptr @az6027_usb_in_op._entry.58, ptr @az6027_usb_in_op._entry.60, ptr @az6027_usb_in_op._entry_ptr, ptr @az6027_usb_in_op._entry_ptr.57, ptr @az6027_usb_in_op._entry_ptr.59, ptr @az6027_usb_in_op._entry_ptr.61, ptr @az6027_usb_out_op._entry, ptr @az6027_usb_out_op._entry.18, ptr @az6027_usb_out_op._entry.21, ptr @az6027_usb_out_op._entry.24, ptr @az6027_usb_out_op._entry_ptr, ptr @az6027_usb_out_op._entry_ptr.20, ptr @az6027_usb_out_op._entry_ptr.23, ptr @az6027_usb_out_op._entry_ptr.25, ptr @stb6100_get_bandwidth._entry, ptr @stb6100_get_bandwidth._entry_ptr, ptr @stb6100_get_frequency._entry, ptr @stb6100_get_frequency._entry_ptr, ptr @stb6100_set_bandwidth._entry, ptr @stb6100_set_bandwidth._entry_ptr, ptr @stb6100_set_frequency._entry, ptr @stb6100_set_frequency._entry_ptr, ptr @dvb_usb_az6027_debug, ptr @az6027_usb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @az6027_usb_table, ptr @.str.3, ptr @rc_map_az6027_table, ptr @az6027_i2c_algo, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @az6027_properties, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.26, ptr @.str.27, ptr @az6027_stb0899_config, ptr @.str.29, ptr @az6027_stb6100_config, ptr @.str.32, ptr @.str.35, ptr @az6027_stb0899_s1_init_1, ptr @stb0899_s2_init_2, ptr @az6027_stb0899_s1_init_3, ptr @stb0899_s2_init_4, ptr @stb0899_s1_init_5, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @az6027_ci_init.__key, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_az6027_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_usb_table to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_map_az6027_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_streaming_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_streaming_ctrl._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_usb_out_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_usb_out_op._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_usb_out_op._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_usb_out_op._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_stb0899_config to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_frontend_attach._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_stb6100_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_frontend_attach._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_frontend_attach._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_stb0899_s1_init_1 to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s2_init_2 to i32), i32 2124, i32 2656, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_stb0899_s1_init_3 to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s2_init_4 to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s1_init_5 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_read_attribute_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_usb_in_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_usb_in_op._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_usb_in_op._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_usb_in_op._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_write_attribute_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_write_attribute_mem._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_read_cam_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_read_cam_control._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_read_cam_control._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_write_cam_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_slot_reset._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_slot_reset._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CI_CamReady._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_slot_ts_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_slot_ts_enable._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_poll_slot_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_identify_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6027_ci_uninit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @az6027_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @az6027_usb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @az6027_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @az6027_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6027_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @az6027_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @az6027_usb_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end3.i_crit_edge, label %do.end.i

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.88) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %do.end3.i.az6027_ci_uninit.exit_crit_edge, label %if.end5.i

do.end3.i.az6027_ci_uninit.exit_crit_edge:        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %az6027_ci_uninit.exit

if.end5.i:                                        ; preds = %do.end3.i
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %cmp6.i = icmp eq ptr %4, null
  br i1 %cmp6.i, label %if.end5.i.az6027_ci_uninit.exit_crit_edge, label %if.end8.i

if.end5.i.az6027_ci_uninit.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %az6027_ci_uninit.exit

if.end8.i:                                        ; preds = %if.end5.i
  %data.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %cmp9.i = icmp eq ptr %6, null
  br i1 %cmp9.i, label %if.end8.i.az6027_ci_uninit.exit_crit_edge, label %if.end11.i

if.end8.i.az6027_ci_uninit.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %az6027_ci_uninit.exit

if.end11.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dvb_ca_en50221_release(ptr noundef nonnull %4) #8
  %7 = call ptr @memset(ptr %4, i32 0, i32 52)
  br label %az6027_ci_uninit.exit

az6027_ci_uninit.exit:                            ; preds = %if.end11.i, %if.end8.i.az6027_ci_uninit.exit_crit_edge, %if.end5.i.az6027_ci_uninit.exit_crit_edge, %do.end3.i.az6027_ci_uninit.exit_crit_edge
  tail call void @dvb_usb_device_exit(ptr noundef %intf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6027_streaming_ctrl(ptr nocapture noundef readonly %adap, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %onoff) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %conv = trunc i32 %onoff to i16
  %1 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adap, align 8
  %call4 = tail call fastcc i32 @az6027_usb_out_op(ptr noundef %2, i8 noundef zeroext -68, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %do.end3.if.end12_crit_edge, label %do.end9

do.end3.if.end12_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call4) #11
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %do.end3.if.end12_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6027_frontend_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %call.i = tail call fastcc i32 @az6027_usb_out_op(ptr noundef %1, i8 noundef zeroext -68, i16 noundef zeroext 1, i16 noundef zeroext 3, ptr noundef null, i32 noundef 0) #8
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %call.i68 = tail call fastcc i32 @az6027_usb_out_op(ptr noundef %3, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 3, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp.not.i = icmp eq i32 %call.i68, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.az6027_frontend_reset.exit_crit_edge

entry.az6027_frontend_reset.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %az6027_frontend_reset.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @msleep_interruptible(i32 noundef 200) #8
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %call3.i = tail call fastcc i32 @az6027_usb_out_op(ptr noundef %5, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end.i.az6027_frontend_reset.exit_crit_edge

if.end.i.az6027_frontend_reset.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %az6027_frontend_reset.exit

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @msleep_interruptible(i32 noundef 200) #8
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %call9.i = tail call fastcc i32 @az6027_usb_out_op(ptr noundef %7, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 3, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.not.i, label %if.end12.i, label %if.end6.i.az6027_frontend_reset.exit_crit_edge

if.end6.i.az6027_frontend_reset.exit_crit_edge:   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %az6027_frontend_reset.exit

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call i32 @msleep_interruptible(i32 noundef 200) #8
  br label %az6027_frontend_reset.exit

az6027_frontend_reset.exit:                       ; preds = %if.end12.i, %if.end6.i.az6027_frontend_reset.exit_crit_edge, %if.end.i.az6027_frontend_reset.exit_crit_edge, %entry.az6027_frontend_reset.exit_crit_edge
  %8 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %az6027_frontend_reset.exit.do.end4_crit_edge, label %do.end

az6027_frontend_reset.exit.do.end4_crit_edge:     ; preds = %az6027_frontend_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %az6027_frontend_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %adap, ptr noundef %10) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %az6027_frontend_reset.exit.do.end4_crit_edge
  %11 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %12, i32 0, i32 8
  %call6 = tail call ptr @stb0899_attach(ptr noundef nonnull @az6027_stb0899_config, ptr noundef %i2c_adap) #8
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %13 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call6, ptr %fe_adap, align 8
  %tobool10.not = icmp eq ptr %call6, null
  br i1 %tobool10.not, label %do.end51, label %do.body12

do.body12:                                        ; preds = %do.end4
  %14 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and13 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.do.end21_crit_edge, label %do.end17

do.body12.do.end21_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i8, ptr getelementptr inbounds (%struct.stb0899_config, ptr @az6027_stb0899_config, i32 0, i32 8), align 4
  %conv = zext i8 %15 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv) #11
  br label %do.end21

do.end21:                                         ; preds = %do.end17, %do.body12.do.end21_crit_edge
  %16 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fe_adap, align 8
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %i2c_adap26 = getelementptr inbounds %struct.dvb_usb_device, ptr %19, i32 0, i32 8
  %call27 = tail call ptr @stb6100_attach(ptr noundef %17, ptr noundef nonnull @az6027_stb6100_config, ptr noundef %i2c_adap26) #8
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.else, label %do.body30

do.body30:                                        ; preds = %do.end21
  %20 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and31 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body30.do.end40_crit_edge, label %do.end35

do.body30.do.end40_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40

do.end35:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %21 = load i8, ptr @az6027_stb6100_config, align 4
  %conv37 = zext i8 %21 to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv37) #11
  br label %do.end40

do.end40:                                         ; preds = %do.end35, %do.body30.do.end40_crit_edge
  %22 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fe_adap, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %23, i32 0, i32 1, i32 25
  %24 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @az6027_set_voltage, ptr %set_voltage, align 4
  %25 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adap, align 8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 8
  %29 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end40.do.body4.i_crit_edge, label %do.end.i

do.end40.do.body4.i_crit_edge:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4.i

do.end.i:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #10
  %call.i69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #11
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.end.i, %do.end40.do.body4.i_crit_edge
  %ca_mutex.i = getelementptr inbounds %struct.az6027_device_state, ptr %28, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %ca_mutex.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @az6027_ci_init.__key) #8
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %28, align 4
  %read_attribute_mem.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %read_attribute_mem.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @az6027_ci_read_attribute_mem, ptr %read_attribute_mem.i, align 4
  %write_attribute_mem.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %28, i32 0, i32 2
  %32 = ptrtoint ptr %write_attribute_mem.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @az6027_ci_write_attribute_mem, ptr %write_attribute_mem.i, align 4
  %read_cam_control.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %28, i32 0, i32 3
  %33 = ptrtoint ptr %read_cam_control.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @az6027_ci_read_cam_control, ptr %read_cam_control.i, align 4
  %write_cam_control.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %28, i32 0, i32 4
  %34 = ptrtoint ptr %write_cam_control.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @az6027_ci_write_cam_control, ptr %write_cam_control.i, align 4
  %slot_reset.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %28, i32 0, i32 7
  %35 = ptrtoint ptr %slot_reset.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @az6027_ci_slot_reset, ptr %slot_reset.i, align 4
  %slot_shutdown.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %28, i32 0, i32 8
  %36 = ptrtoint ptr %slot_shutdown.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @az6027_ci_slot_shutdown, ptr %slot_shutdown.i, align 4
  %slot_ts_enable.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %28, i32 0, i32 9
  %37 = ptrtoint ptr %slot_ts_enable.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @az6027_ci_slot_ts_enable, ptr %slot_ts_enable.i, align 4
  %poll_slot_status.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %28, i32 0, i32 10
  %38 = ptrtoint ptr %poll_slot_status.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @az6027_ci_poll_slot_status, ptr %poll_slot_status.i, align 4
  %data.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %28, i32 0, i32 11
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %26, ptr %data.i, align 4
  %dvb_adap.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 5
  %call17.i = tail call i32 @dvb_ca_en50221_init(ptr noundef %dvb_adap.i, ptr noundef %28, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp.not.i70 = icmp eq i32 %call17.i, 0
  br i1 %cmp.not.i70, label %do.body26.i, label %do.end21.i

do.end21.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %call17.i) #11
  %40 = call ptr @memset(ptr %28, i32 0, i32 52)
  br label %if.end54

do.body26.i:                                      ; preds = %do.body4.i
  %41 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and27.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %do.body26.i.if.end54_crit_edge, label %do.end32.i

do.body26.i.if.end54_crit_edge:                   ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

do.end32.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #10
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #11
  br label %if.end54

if.else:                                          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %fe_adap, align 8
  br label %if.end54

do.end51:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #11
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %if.else, %do.end32.i, %do.body26.i.if.end54_crit_edge, %do.end21.i
  %43 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adap, align 8
  %call.i71 = tail call fastcc i32 @az6027_usb_out_op(ptr noundef %44, i8 noundef zeroext -57, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6027_identify_state(ptr noundef %udev, ptr nocapture noundef readnone %props, ptr nocapture noundef readnone %desc, ptr nocapture noundef %cold) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %udev, align 8
  %shl.i = shl i32 %2, 8
  %or2 = or i32 %shl.i, -2147483520
  %call3 = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or2, i8 noundef zeroext -73, i8 noundef zeroext -64, i16 noundef zeroext 6, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 6, i32 noundef 5000) #8
  %sext = shl i32 %call3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %sext)
  %cmp = icmp slt i32 %sext, 65536
  %conv5 = zext i1 %cmp to i32
  %3 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv5, ptr %cold, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  %4 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %cold to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cold, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %6) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @az6027_rc_query(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %event, ptr nocapture noundef writeonly %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @az6027_usb_out_op(ptr noundef %d, i8 noundef zeroext %req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i32 noundef %blen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %req to i32
  %conv2 = zext i16 %value to i32
  %conv3 = zext i16 %index to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blen)
  %cmp63 = icmp sgt i32 %blen, 0
  br i1 %cmp63, label %do.end5.do.body7_crit_edge, label %do.end5.do.body20_crit_edge

do.end5.do.body20_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.end5.do.body7_crit_edge:                       ; preds = %do.end5
  br label %do.body7

do.body7:                                         ; preds = %for.inc.do.body7_crit_edge, %do.end5.do.body7_crit_edge
  %loop_.064 = phi i32 [ %inc, %for.inc.do.body7_crit_edge ], [ 0, %do.end5.do.body7_crit_edge ]
  %1 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and8 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.for.inc_crit_edge, label %do.end13

do.body7.for.inc_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %b, i32 %loop_.064
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv15 = zext i8 %3 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv15) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end13, %do.body7.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop_.064, 1
  %exitcond.not = icmp eq i32 %inc, %blen
  br i1 %exitcond.not, label %for.inc.do.body20_crit_edge, label %for.inc.do.body7_crit_edge

for.inc.do.body7_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

for.inc.do.body20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.body20:                                        ; preds = %for.inc.do.body20_crit_edge, %do.end5.do.body20_crit_edge
  %4 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and21 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.do.end31_crit_edge, label %do.end26

do.body20.do.end31_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %do.body20.do.end31_crit_edge
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  %call32 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %do.end31.cleanup_crit_edge

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %do.end31
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i = shl i32 %8, 8
  %or = or i32 %shl.i, -2147483648
  %conv38 = trunc i32 %blen to i16
  %call39 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or, i8 noundef zeroext %req, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i16 noundef zeroext %conv38, i32 noundef 2000) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call39, i32 %blen)
  %cmp40.not = icmp eq i32 %call39, %blen
  br i1 %cmp40.not, label %if.end35.cleanup.sink.split_crit_edge, label %do.end45

if.end35.cleanup.sink.split_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.end45:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call39) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end45, %if.end35.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -5, %do.end45 ], [ 0, %if.end35.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end31.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stb0899_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stb6100_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6027_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #2 align 64 {
entry:
  %buf = alloca i8, align 1
  %i2c_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2c_msg) #8
  %4 = getelementptr inbounds i8, ptr %i2c_msg, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 153, ptr %i2c_msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %buf1, align 4
  %10 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %voltage, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %buf, align 1
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %buf, align 1
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %buf, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb6, %sw.bb2, %sw.bb
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %15, i32 0, i32 8
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %i2c_msg, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2c_msg) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_frequency(ptr noundef %fe, i32 noundef %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bandwidth_hz, align 4
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %frequency, ptr %dtv_property_cache, align 4
  store i32 0, ptr %bandwidth_hz, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %3 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %4(ptr noundef %fe) #8
  %5 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_frequency(ptr noundef %fe, ptr noundef %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %0 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_frequency, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %fe, ptr noundef %frequency) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.40) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_bandwidth(ptr noundef %fe, i32 noundef %bandwidth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %0 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bandwidth, ptr %bandwidth_hz, align 4
  store i32 0, ptr %dtv_property_cache, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %3 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %4(ptr noundef %fe) #8
  %5 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.41) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_bandwidth(ptr noundef %fe, ptr noundef %bandwidth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %get_bandwidth = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 10
  %0 = ptrtoint ptr %get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_bandwidth, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %fe, ptr noundef %bandwidth) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.42) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6027_ci_read_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %ca_mutex = getelementptr inbounds %struct.az6027_device_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #8
  %conv = trunc i32 %address to i16
  %call3 = tail call fastcc i32 @az6027_usb_in_op(ptr noundef %1, i8 noundef zeroext -63, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.else

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %call3) #11
  br label %if.end9

if.else:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call7.i, align 8
  %conv8 = zext i8 %6 to i32
  br label %if.end9

if.end9:                                          ; preds = %if.else, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %conv8, %if.else ]
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6027_ci_write_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %4 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.62, i32 noundef %slot) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end5, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %ca_mutex = getelementptr inbounds %struct.az6027_device_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #8
  %conv = trunc i32 %address to i16
  %conv6 = zext i8 %value to i16
  %call7 = tail call fastcc i32 @az6027_usb_out_op(ptr noundef %1, i8 noundef zeroext -62, i16 noundef zeroext %conv, i16 noundef zeroext %conv6, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end5.if.end16_crit_edge, label %do.end13

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call7) #11
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end5.if.end16_crit_edge
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end16 ], [ -22, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6027_ci_read_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %ca_mutex = getelementptr inbounds %struct.az6027_device_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #8
  %conv = zext i8 %address to i16
  %call3 = tail call fastcc i32 @az6027_usb_in_op(ptr noundef %1, i8 noundef zeroext -61, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.else

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %call3) #11
  br label %if.end34

if.else:                                          ; preds = %if.end2
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp9 = icmp eq i8 %6, 0
  br i1 %cmp9, label %do.end14, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #11
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.else.if.end17_crit_edge
  %arrayidx18 = getelementptr i8, ptr %call7.i, i32 1
  %7 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %8 to i32
  %9 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end17.if.end34_crit_edge, label %do.end25

if.end17.if.end34_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %conv29 = zext i8 %address to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %conv19, i32 noundef %conv29) #11
  br label %if.end34

if.end34:                                         ; preds = %do.end25, %if.end17.if.end34_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %conv19, %do.end25 ], [ %conv19, %if.end17.if.end34_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end34 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6027_ci_write_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %ca_mutex = getelementptr inbounds %struct.az6027_device_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #8
  %conv = zext i8 %address to i16
  %conv1 = zext i8 %value to i16
  %call = tail call fastcc i32 @az6027_usb_out_op(ptr noundef %1, i8 noundef zeroext -60, i16 noundef zeroext %conv, i16 noundef zeroext %conv1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.end.failed_crit_edge, label %do.end

if.end.failed_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call) #11
  br label %failed

failed:                                           ; preds = %do.end, %if.end.failed_crit_edge
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %failed, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %failed ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6027_ci_slot_reset(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %ca_mutex = getelementptr inbounds %struct.az6027_device_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #8
  %call = tail call fastcc i32 @az6027_usb_out_op(ptr noundef %1, i8 noundef zeroext -58, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call) #11
  br label %failed

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 500) #8
  %call2 = tail call fastcc i32 @az6027_usb_out_op(ptr noundef %1, i8 noundef zeroext -58, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end.for.body_crit_edge, label %do.end7

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call2) #11
  br label %failed

for.cond:                                         ; preds = %CI_CamReady.exit
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.046 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  tail call void @msleep(i32 noundef 100) #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 12) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.do.body14_crit_edge, label %if.end.i

for.body.do.body14_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call fastcc i32 @az6027_usb_in_op(ptr noundef %5, i8 noundef zeroext -56, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %CI_CamReady.exit.thread42, label %CI_CamReady.exit

CI_CamReady.exit.thread42:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %call1.i) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %do.body14

CI_CamReady.exit:                                 ; preds = %if.end.i
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %for.cond, label %CI_CamReady.exit.do.body14_crit_edge

CI_CamReady.exit.do.body14_crit_edge:             ; preds = %CI_CamReady.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

do.body14:                                        ; preds = %CI_CamReady.exit.do.body14_crit_edge, %CI_CamReady.exit.thread42, %for.body.do.body14_crit_edge
  %9 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.body14.for.end_crit_edge, label %do.end19

do.body14.for.end_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #11
  br label %for.end

for.end:                                          ; preds = %do.end19, %do.body14.for.end_crit_edge, %for.cond.for.end_crit_edge
  tail call void @msleep(i32 noundef 5000) #8
  br label %failed

failed:                                           ; preds = %for.end, %do.end7, %do.end
  %ret.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %for.end ]
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @az6027_ci_slot_shutdown(ptr nocapture noundef readnone %ca, i32 noundef %slot) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6027_ci_slot_ts_enable(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %4 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.80) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %ca_mutex = getelementptr inbounds %struct.az6027_device_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #8
  %call4 = tail call fastcc i32 @az6027_usb_out_op(ptr noundef %1, i8 noundef zeroext -57, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %do.end3.failed_crit_edge, label %do.end8

do.end3.failed_crit_edge:                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

do.end8:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call4) #11
  br label %failed

failed:                                           ; preds = %do.end8, %do.end3.failed_crit_edge
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6027_ci_poll_slot_status(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %open) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ca_mutex = getelementptr inbounds %struct.az6027_device_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #8
  %call1 = tail call fastcc i32 @az6027_usb_in_op(ptr noundef %1, i8 noundef zeroext -59, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end4.thread, label %land.lhs.true

if.end4.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %call1) #11
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp6 = icmp eq i8 %6, 1
  %spec.select = select i1 %cmp6, i32 5, i32 0
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end4.thread
  %ret.1 = phi i32 [ %spec.select, %land.lhs.true ], [ -5, %if.end4.thread ]
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @az6027_usb_in_op(ptr noundef %d, i8 noundef zeroext %req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i32 noundef %blen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or3 = or i32 %shl.i, -2147483520
  %conv = trunc i32 %blen to i16
  %call4 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or3, i8 noundef zeroext %req, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i16 noundef zeroext %conv, i32 noundef 2000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end.do.body9_crit_edge

if.end.do.body9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %call4) #11
  br label %do.body9

do.body9:                                         ; preds = %do.end, %if.end.do.body9_crit_edge
  %ret.0 = phi i32 [ -5, %do.end ], [ 0, %if.end.do.body9_crit_edge ]
  %4 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body9.do.end22_crit_edge, label %do.end14

do.body9.do.end22_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %conv16 = zext i8 %req to i32
  %conv17 = zext i16 %value to i32
  %conv18 = zext i16 %index to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %conv16, i32 noundef %conv17, i32 noundef %conv18) #11
  br label %do.end22

do.end22:                                         ; preds = %do.end14, %do.body9.do.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blen)
  %cmp2363 = icmp sgt i32 %blen, 0
  br i1 %cmp2363, label %do.end22.do.body25_crit_edge, label %do.end22.do.body38_crit_edge

do.end22.do.body38_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body38

do.end22.do.body25_crit_edge:                     ; preds = %do.end22
  br label %do.body25

do.body25:                                        ; preds = %for.inc.do.body25_crit_edge, %do.end22.do.body25_crit_edge
  %loop_.064 = phi i32 [ %inc, %for.inc.do.body25_crit_edge ], [ 0, %do.end22.do.body25_crit_edge ]
  %5 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and26 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.for.inc_crit_edge, label %do.end31

do.body25.for.inc_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %b, i32 %loop_.064
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv33 = zext i8 %7 to i32
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv33) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end31, %do.body25.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop_.064, 1
  %exitcond.not = icmp eq i32 %inc, %blen
  br i1 %exitcond.not, label %for.inc.do.body38_crit_edge, label %for.inc.do.body25_crit_edge

for.inc.do.body25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

for.inc.do.body38_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body38

do.body38:                                        ; preds = %for.inc.do.body38_crit_edge, %do.end22.do.body38_crit_edge
  %8 = load i32, ptr @dvb_usb_az6027_debug, align 4
  %and39 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body38.do.end49_crit_edge, label %do.end44

do.body38.do.end49_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  br label %do.end49

do.end49:                                         ; preds = %do.end44, %do.body38.do.end49_crit_edge
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end49 ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6027_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 256) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp5 = icmp sgt i32 %num, 2
  br i1 %cmp5, label %if.end8.thread, label %if.end8

if.end8.thread:                                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #11
  br label %for.body.preheader

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp9315 = icmp sgt i32 %num, 0
  br i1 %cmp9315, label %if.end8.for.body.preheader_crit_edge, label %if.end8.for.end185_crit_edge

if.end8.for.end185_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end185

if.end8.for.body.preheader_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end8.for.body.preheader_crit_edge, %if.end8.thread
  br label %for.body

for.body:                                         ; preds = %for.inc183.for.body_crit_edge, %for.body.preheader
  %i.0316 = phi i32 [ %inc184, %for.inc183.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0316
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 153, i16 %4)
  %cmp10 = icmp eq i16 %4, 153
  br i1 %cmp10, label %if.then12, label %for.body.if.end18_crit_edge

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0316, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %conv16 = zext i8 %8 to i16
  %call17 = tail call fastcc i32 @az6027_usb_out_op(ptr noundef %1, i8 noundef zeroext -66, i16 noundef zeroext %conv16, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i32 noundef 1)
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %.pr = load i16, ptr %arrayidx, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %for.body.if.end18_crit_edge
  %10 = phi i16 [ %.pr, %if.then12 ], [ %4, %for.body.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 208, i16 %10)
  %cmp22 = icmp eq i16 %10, 208
  br i1 %cmp22, label %if.then24, label %if.end18.if.end113_crit_edge

if.end18.if.end113_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then24:                                        ; preds = %if.end18
  %add = add nsw i32 %i.0316, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp25 = icmp slt i32 %add, %num
  br i1 %cmp25, label %land.lhs.true, label %if.then24.if.else_crit_edge

if.then24.if.else_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then24
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool31.not = icmp eq i16 %13, 0
  br i1 %tobool31.not, label %land.lhs.true.if.else_crit_edge, label %if.then32

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then32:                                        ; preds = %land.lhs.true
  %buf34 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0316, i32 3
  %14 = ptrtoint ptr %buf34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf34, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv36 = zext i8 %17 to i16
  %shl = shl nuw i16 %conv36, 8
  %arrayidx40 = getelementptr i8, ptr %15, i32 1
  %18 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %19 to i16
  %or = or i16 %shl, %conv41
  %len48 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0316, i32 2
  %20 = ptrtoint ptr %len48 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len48, align 4
  %shl50 = shl i16 %21, 8
  %add51 = or i16 %shl50, 208
  %len55 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 2
  %22 = ptrtoint ptr %len55 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len55, align 4
  %conv56 = zext i16 %23 to i32
  %add57 = add nuw nsw i32 %conv56, 6
  %call58 = tail call fastcc i32 @az6027_usb_in_op(ptr noundef %1, i8 noundef zeroext -71, i16 noundef zeroext %add51, i16 noundef zeroext %or, ptr noundef nonnull %call7.i, i32 noundef %add57)
  %24 = ptrtoint ptr %len55 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len55, align 4
  %conv62 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp64307.not = icmp eq i16 %25, 0
  br i1 %cmp64307.not, label %if.then32.if.end113_crit_edge, label %for.body66.lr.ph

if.then32.if.end113_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

for.body66.lr.ph:                                 ; preds = %if.then32
  %buf71 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 3
  br label %for.body66

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %for.body66.lr.ph
  %j.0308 = phi i32 [ 0, %for.body66.lr.ph ], [ %inc, %for.body66.for.body66_crit_edge ]
  %add67 = add nuw nsw i32 %j.0308, 5
  %arrayidx68 = getelementptr i8, ptr %call7.i, i32 %add67
  %26 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx68, align 1
  %28 = ptrtoint ptr %buf71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf71, align 4
  %arrayidx72 = getelementptr i8, ptr %29, i32 %j.0308
  %30 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %27, ptr %arrayidx72, align 1
  %inc = add nuw nsw i32 %j.0308, 1
  %exitcond.not = icmp eq i32 %inc, %conv62
  br i1 %exitcond.not, label %for.body66.if.end113_crit_edge, label %for.body66.for.body66_crit_edge

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body66

for.body66.if.end113_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then24.if.else_crit_edge
  %buf75 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0316, i32 3
  %31 = ptrtoint ptr %buf75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf75, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %conv77 = zext i8 %34 to i16
  %shl78 = shl nuw i16 %conv77, 8
  %arrayidx82 = getelementptr i8, ptr %32, i32 1
  %35 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %36 to i16
  %or85 = or i16 %shl78, %conv83
  %len93 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0316, i32 2
  %37 = ptrtoint ptr %len93 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %len93, align 4
  %conv94 = zext i16 %38 to i32
  %sub = add nsw i32 %conv94, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %38)
  %cmp100309 = icmp ugt i16 %38, 2
  br i1 %cmp100309, label %if.else.for.body102_crit_edge, label %if.else.for.end110_crit_edge

if.else.for.end110_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end110

if.else.for.body102_crit_edge:                    ; preds = %if.else
  br label %for.body102

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %if.else.for.body102_crit_edge
  %j.1310 = phi i32 [ %inc109, %for.body102.for.body102_crit_edge ], [ 0, %if.else.for.body102_crit_edge ]
  %add105 = add nuw nsw i32 %j.1310, 2
  %arrayidx106 = getelementptr i8, ptr %32, i32 %add105
  %39 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx106, align 1
  %arrayidx107 = getelementptr i8, ptr %call7.i, i32 %j.1310
  %41 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx107, align 1
  %inc109 = add nuw nsw i32 %j.1310, 1
  %exitcond317.not = icmp eq i32 %inc109, %sub
  br i1 %exitcond317.not, label %for.body102.for.end110_crit_edge, label %for.body102.for.body102_crit_edge

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body102

for.body102.for.end110_crit_edge:                 ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end110

for.end110:                                       ; preds = %for.body102.for.end110_crit_edge, %if.else.for.end110_crit_edge
  %call111 = tail call fastcc i32 @az6027_usb_out_op(ptr noundef %1, i8 noundef zeroext -67, i16 noundef zeroext 720, i16 noundef zeroext %or85, ptr noundef nonnull %call7.i, i32 noundef %sub)
  br label %if.end113

if.end113:                                        ; preds = %for.end110, %for.body66.if.end113_crit_edge, %if.then32.if.end113_crit_edge, %if.end18.if.end113_crit_edge
  %i.1 = phi i32 [ %i.0316, %for.end110 ], [ %i.0316, %if.end18.if.end113_crit_edge ], [ %add, %if.then32.if.end113_crit_edge ], [ %add, %for.body66.if.end113_crit_edge ]
  %arrayidx114 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1
  %42 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx114, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %43)
  %cmp117 = icmp eq i16 %43, 192
  br i1 %cmp117, label %if.then119, label %if.end113.for.inc183_crit_edge

if.end113.for.inc183_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc183

if.then119:                                       ; preds = %if.end113
  %flags121 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1, i32 1
  %44 = ptrtoint ptr %flags121 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %flags121, align 2
  %46 = and i16 %45, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool124.not = icmp eq i16 %46, 0
  br i1 %tobool124.not, label %if.else148, label %if.then125

if.then125:                                       ; preds = %if.then119
  %len129 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1, i32 2
  %47 = ptrtoint ptr %len129 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %len129, align 4
  %conv130 = zext i16 %48 to i32
  %add131 = add nuw nsw i32 %conv130, 6
  %call132 = tail call fastcc i32 @az6027_usb_in_op(ptr noundef %1, i8 noundef zeroext -71, i16 noundef zeroext 192, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i32 noundef %add131)
  %49 = ptrtoint ptr %len129 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %len129, align 4
  %conv135 = zext i16 %50 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp137311.not = icmp eq i16 %50, 0
  br i1 %cmp137311.not, label %if.then125.for.inc183_crit_edge, label %for.body139.lr.ph

if.then125.for.inc183_crit_edge:                  ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc183

for.body139.lr.ph:                                ; preds = %if.then125
  %buf143 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1, i32 3
  br label %for.body139

for.body139:                                      ; preds = %for.body139.for.body139_crit_edge, %for.body139.lr.ph
  %j.2312 = phi i32 [ 0, %for.body139.lr.ph ], [ %inc146, %for.body139.for.body139_crit_edge ]
  %add140 = add nuw nsw i32 %j.2312, 5
  %arrayidx141 = getelementptr i8, ptr %call7.i, i32 %add140
  %51 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx141, align 1
  %53 = ptrtoint ptr %buf143 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf143, align 4
  %arrayidx144 = getelementptr i8, ptr %54, i32 %j.2312
  %55 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %52, ptr %arrayidx144, align 1
  %inc146 = add nuw nsw i32 %j.2312, 1
  %exitcond318.not = icmp eq i32 %inc146, %conv135
  br i1 %exitcond318.not, label %for.body139.for.inc183_crit_edge, label %for.body139.for.body139_crit_edge

for.body139.for.body139_crit_edge:                ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body139

for.body139.for.inc183_crit_edge:                 ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc183

if.else148:                                       ; preds = %if.then119
  %buf150 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1, i32 3
  %56 = ptrtoint ptr %buf150 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buf150, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  %conv154 = zext i8 %59 to i16
  %len161 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.1, i32 2
  %60 = ptrtoint ptr %len161 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %len161, align 4
  %conv162 = zext i16 %61 to i32
  %sub163 = add nsw i32 %conv162, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %61)
  %cmp169313 = icmp ugt i16 %61, 1
  br i1 %cmp169313, label %if.else148.for.body171_crit_edge, label %if.else148.for.end179_crit_edge

if.else148.for.end179_crit_edge:                  ; preds = %if.else148
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end179

if.else148.for.body171_crit_edge:                 ; preds = %if.else148
  br label %for.body171

for.body171:                                      ; preds = %for.body171.for.body171_crit_edge, %if.else148.for.body171_crit_edge
  %j.3314 = phi i32 [ %add174, %for.body171.for.body171_crit_edge ], [ 0, %if.else148.for.body171_crit_edge ]
  %add174 = add nuw nsw i32 %j.3314, 1
  %arrayidx175 = getelementptr i8, ptr %57, i32 %add174
  %62 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx175, align 1
  %arrayidx176 = getelementptr i8, ptr %call7.i, i32 %j.3314
  %64 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx176, align 1
  %exitcond319.not = icmp eq i32 %add174, %sub163
  br i1 %exitcond319.not, label %for.body171.for.end179_crit_edge, label %for.body171.for.body171_crit_edge

for.body171.for.body171_crit_edge:                ; preds = %for.body171
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body171

for.body171.for.end179_crit_edge:                 ; preds = %for.body171
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end179

for.end179:                                       ; preds = %for.body171.for.end179_crit_edge, %if.else148.for.end179_crit_edge
  %call180 = tail call fastcc i32 @az6027_usb_out_op(ptr noundef %1, i8 noundef zeroext -67, i16 noundef zeroext 448, i16 noundef zeroext %conv154, ptr noundef nonnull %call7.i, i32 noundef %sub163)
  br label %for.inc183

for.inc183:                                       ; preds = %for.end179, %for.body139.for.inc183_crit_edge, %if.then125.for.inc183_crit_edge, %if.end113.for.inc183_crit_edge
  %inc184 = add i32 %i.1, 1
  %cmp9 = icmp slt i32 %inc184, %num
  br i1 %cmp9, label %for.inc183.for.body_crit_edge, label %for.inc183.for.end185_crit_edge

for.inc183.for.end185_crit_edge:                  ; preds = %for.inc183
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end185

for.inc183.for.body_crit_edge:                    ; preds = %for.inc183
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end185:                                       ; preds = %for.inc183.for.end185_crit_edge, %if.end8.for.end185_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end8.for.end185_crit_edge ], [ %inc184, %for.inc183.for.end185_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end185, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %i.0.lcssa, %for.end185 ], [ -11, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @az6027_i2c_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !203, !204, !206, !207, !208, !209, !211, !213, !215, !216, !217, !218, !220, !221, !222}
!llvm.module.flags = !{!224, !225, !226, !227, !228, !229, !230, !231}
!llvm.ident = !{!232}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 21, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 23, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !6, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr389, !6, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_az6027__390_1187_az6027_usb_driver_init6, !10, !"__initcall__kmod_dvb_usb_az6027__390_1187_az6027_usb_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1187, i32 1}
!11 = !{ptr @__exitcall_az6027_usb_driver_exit, !10, !"__exitcall_az6027_usb_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author391, !13, !"__UNIQUE_ID_author391", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1189, i32 1}
!14 = !{ptr @__UNIQUE_ID_description392, !15, !"__UNIQUE_ID_description392", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1190, i32 1}
!16 = !{ptr @__UNIQUE_ID_version393, !17, !"__UNIQUE_ID_version393", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1191, i32 1}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__modver_attr, !17, !"__modver_attr", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_file394, !23, !"__UNIQUE_ID_file394", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1192, i32 1}
!24 = !{ptr @__UNIQUE_ID_license395, !23, !"__UNIQUE_ID_license395", i1 false, i1 false}
!25 = !{ptr @dvb_usb_az6027_debug, !26, !"dvb_usb_az6027_debug", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 19, i32 5}
!27 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!28 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!29 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!30 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!31 = !{ptr @az6027_usb_driver, !32, !"az6027_usb_driver", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1180, i32 26}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1100, i32 25}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1143, i32 12}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1147, i32 12}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1151, i32 12}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1155, i32 12}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1163, i32 12}
!45 = !{ptr @az6027_properties, !46, !"az6027_properties", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1097, i32 41}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 371, i32 2}
!49 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @az6027_streaming_ctrl._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @az6027_streaming_ctrl._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 380, i32 3}
!55 = !{ptr @az6027_streaming_ctrl._entry.13, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @az6027_streaming_ctrl._entry_ptr.15, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 337, i32 2}
!59 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @az6027_usb_out_op._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @az6027_usb_out_op._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 338, i32 2}
!64 = !{ptr @az6027_usb_out_op._entry.18, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @az6027_usb_out_op._entry_ptr.20, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @az6027_usb_out_op._entry.21, !63, !"_entry", i1 false, i1 false}
!68 = !{ptr @az6027_usb_out_op._entry_ptr.23, !63, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @az6027_usb_out_op._entry.24, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 354, i32 3}
!71 = !{ptr @az6027_usb_out_op._entry_ptr.25, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 910, i32 2}
!74 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @az6027_frontend_attach._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @az6027_frontend_attach._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 914, i32 3}
!79 = !{ptr @az6027_frontend_attach._entry.28, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @az6027_frontend_attach._entry_ptr.30, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 916, i32 4}
!83 = !{ptr @az6027_frontend_attach._entry.31, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @az6027_frontend_attach._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 923, i32 3}
!87 = !{ptr @az6027_frontend_attach._entry.34, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @az6027_frontend_attach._entry_ptr.36, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @az6027_stb0899_config, !90, !"az6027_stb0899_config", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 254, i32 30}
!91 = !{ptr @az6027_stb0899_s1_init_1, !92, !"az6027_stb0899_s1_init_1", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 31, i32 36}
!93 = !{ptr @stb0899_s2_init_2, !94, !"stb0899_s2_init_2", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 13, i32 37}
!95 = !{ptr @az6027_stb0899_s1_init_3, !96, !"az6027_stb0899_s1_init_3", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 119, i32 36}
!97 = !{ptr @stb0899_s2_init_4, !98, !"stb0899_s2_init_4", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 195, i32 36}
!99 = !{ptr @stb0899_s1_init_5, !100, !"stb0899_s1_init_5", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 219, i32 36}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 44, i32 4}
!103 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @stb6100_set_frequency._entry, !102, !"_entry", i1 false, i1 false}
!106 = !{ptr @stb6100_set_frequency._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 22, i32 4}
!109 = !{ptr @stb6100_get_frequency._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @stb6100_get_frequency._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 82, i32 4}
!113 = !{ptr @stb6100_set_bandwidth._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @stb6100_set_bandwidth._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 60, i32 4}
!117 = !{ptr @stb6100_get_bandwidth._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @stb6100_get_bandwidth._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @az6027_stb6100_config, !120, !"az6027_stb6100_config", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 291, i32 30}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 741, i32 2}
!123 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @az6027_ci_init._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @az6027_ci_init._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @az6027_ci_init.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 743, i32 2}
!128 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 761, i32 3}
!131 = !{ptr @az6027_ci_init._entry.46, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @az6027_ci_init._entry_ptr.48, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 766, i32 2}
!135 = !{ptr @az6027_ci_init._entry.49, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @az6027_ci_init._entry_ptr.51, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 436, i32 3}
!139 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @az6027_ci_read_attribute_mem._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @az6027_ci_read_attribute_mem._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 316, i32 3}
!144 = !{ptr @az6027_usb_in_op._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @az6027_usb_in_op._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 321, i32 2}
!148 = !{ptr @az6027_usb_in_op._entry.55, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @az6027_usb_in_op._entry_ptr.57, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @az6027_usb_in_op._entry.58, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 322, i32 2}
!152 = !{ptr @az6027_usb_in_op._entry_ptr.59, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @az6027_usb_in_op._entry.60, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @az6027_usb_in_op._entry_ptr.61, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 461, i32 2}
!157 = !{ptr @az6027_ci_write_attribute_mem._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @az6027_ci_write_attribute_mem._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @az6027_ci_write_attribute_mem._entry.63, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 473, i32 3}
!161 = !{ptr @az6027_ci_write_attribute_mem._entry_ptr.64, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 509, i32 3}
!164 = !{ptr @az6027_ci_read_cam_control._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @az6027_ci_read_cam_control._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 513, i32 4}
!168 = !{ptr @az6027_ci_read_cam_control._entry.66, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @az6027_ci_read_cam_control._entry_ptr.68, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 516, i32 3}
!172 = !{ptr @az6027_ci_read_cam_control._entry.69, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @az6027_ci_read_cam_control._entry_ptr.71, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 549, i32 3}
!176 = !{ptr @az6027_ci_write_cam_control._entry, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @az6027_ci_write_cam_control._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 609, i32 3}
!180 = !{ptr @az6027_ci_slot_reset._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @az6027_ci_slot_reset._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @az6027_ci_slot_reset._entry.74, !183, !"_entry", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 621, i32 3}
!184 = !{ptr @az6027_ci_slot_reset._entry_ptr.75, !183, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 629, i32 4}
!187 = !{ptr @az6027_ci_slot_reset._entry.76, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @az6027_ci_slot_reset._entry_ptr.78, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 580, i32 3}
!191 = !{ptr @CI_CamReady._entry, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @CI_CamReady._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.80, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 656, i32 2}
!195 = !{ptr @az6027_ci_slot_ts_enable._entry, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @az6027_ci_slot_ts_enable._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @az6027_ci_slot_ts_enable._entry.81, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 665, i32 3}
!199 = !{ptr @az6027_ci_slot_ts_enable._entry_ptr.82, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.83, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 697, i32 3}
!202 = !{ptr @az6027_ci_poll_slot_status._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @az6027_ci_poll_slot_status._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.84, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1078, i32 2}
!206 = !{ptr @.str.85, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @az6027_identify_state._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @az6027_identify_state._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @rc_map_az6027_table, !210, !"rc_map_az6027_table", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 386, i32 28}
!211 = !{ptr @az6027_i2c_algo, !212, !"az6027_i2c_algo", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1049, i32 29}
!213 = !{ptr @.str.86, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 971, i32 3}
!215 = !{ptr @.str.87, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @az6027_i2c_xfer._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @az6027_i2c_xfer._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.88, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 717, i32 2}
!220 = !{ptr @az6027_ci_uninit._entry, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @az6027_ci_uninit._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @az6027_usb_table, !223, !"az6027_usb_table", i1 false, i1 false}
!223 = !{!"../drivers/media/usb/dvb-usb/az6027.c", i32 1083, i32 29}
!224 = !{i32 1, !"wchar_size", i32 2}
!225 = !{i32 1, !"min_enum_size", i32 4}
!226 = !{i32 8, !"branch-target-enforcement", i32 0}
!227 = !{i32 8, !"sign-return-address", i32 0}
!228 = !{i32 8, !"sign-return-address-all", i32 0}
!229 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!230 = !{i32 7, !"uwtable", i32 1}
!231 = !{i32 7, !"frame-pointer", i32 2}
!232 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
