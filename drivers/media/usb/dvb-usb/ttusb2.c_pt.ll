; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/ttusb2.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/ttusb2.c"
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.131 }
%union.anon.131 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32 }
%struct.anon.134 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tda10086_config = type { i8, i8, i8, i32 }
%struct.tda10023_config = type { i8, i8, i32, i8, i8, i8, i8, i16 }
%struct.tda10048_config = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.tda827x_config = type { ptr, ptr, i32, i32, ptr }
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
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.ttusb2_state = type { %struct.dvb_ca_en50221, %struct.mutex, i8, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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

@__param_str_debug = internal constant [21 x i8] c"dvb_usb_ttusb2.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_ttusb2_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_ttusb2_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [34 x i8] c"dvb_usb_ttusb2.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [66 x i8] c"dvb_usb_ttusb2.parm=debug:set debugging level (1=info (or-able)).\00", section ".modinfo", align 1
@__param_str_debug_ci = internal constant [24 x i8] c"dvb_usb_ttusb2.debug_ci\00", align 1
@dvb_usb_ttusb2_debug_ci = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_ci = internal constant %struct.kernel_param { ptr @__param_str_debug_ci, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_ttusb2_debug_ci } }, section "__param", align 4
@__UNIQUE_ID_debug_citype388 = internal constant [37 x i8] c"dvb_usb_ttusb2.parmtype=debug_ci:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_ci389 = internal constant [47 x i8] c"dvb_usb_ttusb2.parm=debug_ci:set debugging ci.\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_ttusb2.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype390 = internal constant [50 x i8] c"dvb_usb_ttusb2.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr391 = internal constant [51 x i8] c"dvb_usb_ttusb2.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_ttusb2__392_838_ttusb2_driver_init6 = internal global ptr @ttusb2_driver_init, section ".initcall6.init", align 4
@ttusb2_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @ttusb2_probe, ptr @ttusb2_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ttusb2_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ttusb2_driver_exit = internal global ptr @ttusb2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author393 = internal constant [70 x i8] c"dvb_usb_ttusb2.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [70 x i8] c"dvb_usb_ttusb2.description=Driver for Pinnacle PCTV 400e DVB-S USB2.0\00", section ".modinfo", align 1
@__UNIQUE_ID_version395 = internal constant [27 x i8] c"dvb_usb_ttusb2.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_ttusb2\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file396 = internal constant [61 x i8] c"dvb_usb_ttusb2.file=drivers/media/usb/dvb-usb/dvb-usb-ttusb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license397 = internal constant [27 x i8] c"dvb_usb_ttusb2.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@ttusb2_table = internal global { [6 x %struct.usb_device_id], [48 x i8] } { [6 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 8964, i16 527, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8964, i16 546, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2888, i16 12294, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2888, i16 12301, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2888, i16 12297, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dvb-usb-pctv-400e-01.fw\00", [40 x i8] zeroinitializer }, align 32
@ttusb2_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @ttusb2_i2c_xfer, ptr null, ptr null, ptr null, ptr @ttusb2_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Pinnacle 400e DVB-S USB2.0\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Pinnacle 450e DVB-S USB2.0\00", [37 x i8] zeroinitializer }, align 32
@ttusb2_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 3, ptr null, ptr @.str.3, i32 0, i32 148, ptr null, ptr null, i32 1, [2 x %struct.dvb_usb_adapter_properties] [%struct.dvb_usb_adapter_properties { i32 0, ptr null, i32 1, [3 x %struct.dvb_usb_adapter_fe_properties] [%struct.dvb_usb_adapter_fe_properties { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @ttusb2_frontend_tda10086_attach, ptr @ttusb2_tuner_tda826x_attach, %struct.usb_data_stream_properties { i32 2, i32 5, i32 2, %union.anon.131 { %struct.anon.133 { i32 4, i32 940, i32 1 } } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer] }, %struct.dvb_usb_adapter_properties zeroinitializer], ptr @ttusb2_power_ctrl, ptr null, ptr @ttusb2_identify_state, %struct.anon.134 zeroinitializer, ptr @ttusb2_i2c_algo, i32 1, i32 0, i32 2, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.4, <{ ptr, [14 x ptr] }> <{ ptr @ttusb2_table, [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.5, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @ttusb2_table, i64 24), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@ttusb2_frontend_tda10086_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ttusb2: set interface to alts=3 failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ttusb2_frontend_tda10086_attach\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/dvb-usb/ttusb2.c\00", [61 x i8] zeroinitializer }, align 32
@ttusb2_frontend_tda10086_attach._entry_ptr = internal global ptr @ttusb2_frontend_tda10086_attach._entry, section ".printk_index", align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10086_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10086_attach\00", [41 x i8] zeroinitializer }, align 32
@tda10086_config = internal global { %struct.tda10086_config, [24 x i8] } { %struct.tda10086_config { i8 14, i8 0, i8 1, i32 0 }, [24 x i8] zeroinitializer }, align 32
@ttusb2_frontend_tda10086_attach._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10086_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@ttusb2_frontend_tda10086_attach._entry_ptr.14 = internal global ptr @ttusb2_frontend_tda10086_attach._entry.12, section ".printk_index", align 4
@ttusb2_frontend_tda10086_attach._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.9, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TDA10086 attach failed\0A\00", [40 x i8] zeroinitializer }, align 32
@ttusb2_frontend_tda10086_attach._entry_ptr.17 = internal global ptr @ttusb2_frontend_tda10086_attach._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda826x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda826x_attach\00", [42 x i8] zeroinitializer }, align 32
@ttusb2_tuner_tda826x_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.9, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda826x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ttusb2_tuner_tda826x_attach\00", [36 x i8] zeroinitializer }, align 32
@ttusb2_tuner_tda826x_attach._entry_ptr = internal global ptr @ttusb2_tuner_tda826x_attach._entry, section ".printk_index", align 4
@ttusb2_tuner_tda826x_attach._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.9, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TDA8263 attach failed\0A\00", [41 x i8] zeroinitializer }, align 32
@ttusb2_tuner_tda826x_attach._entry_ptr.24 = internal global ptr @ttusb2_tuner_tda826x_attach._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbp21_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lnbp21_attach\00", [43 x i8] zeroinitializer }, align 32
@ttusb2_tuner_tda826x_attach._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str.9, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lnbp21_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@ttusb2_tuner_tda826x_attach._entry_ptr.29 = internal global ptr @ttusb2_tuner_tda826x_attach._entry.27, section ".printk_index", align 4
@ttusb2_tuner_tda826x_attach._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.9, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LNBP21 attach failed\0A\00", [42 x i8] zeroinitializer }, align 32
@ttusb2_tuner_tda826x_attach._entry_ptr.32 = internal global ptr @ttusb2_tuner_tda826x_attach._entry.30, section ".printk_index", align 4
@ttusb2_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.9, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\014ttusb2: there might have been an error during control message transfer. (rlen = %d, was %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ttusb2_msg\00", [21 x i8] zeroinitializer }, align 32
@ttusb2_msg._entry_ptr = internal global ptr @ttusb2_msg._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ttusb2_i2c_xfer.obuf = internal global { [60 x i8], [36 x i8] } zeroinitializer, align 32
@ttusb2_i2c_xfer.ibuf = internal global { [60 x i8], [36 x i8] } zeroinitializer, align 32
@ttusb2_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.9, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014ttusb2: more than 2 i2c messages at a time is not handled yet. TODO.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ttusb2_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@ttusb2_i2c_xfer._entry_ptr = internal global ptr @ttusb2_i2c_xfer._entry, section ".printk_index", align 4
@ttusb2_i2c_xfer._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.9, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013ttusb2: i2c wr len=%d too high\0A\00", [62 x i8] zeroinitializer }, align 32
@ttusb2_i2c_xfer._entry_ptr.39 = internal global ptr @ttusb2_i2c_xfer._entry.37, section ".printk_index", align 4
@ttusb2_i2c_xfer._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.9, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013ttusb2: i2c rd len=%d too high\0A\00", [62 x i8] zeroinitializer }, align 32
@ttusb2_i2c_xfer._entry_ptr.42 = internal global ptr @ttusb2_i2c_xfer._entry.40, section ".printk_index", align 4
@ttusb2_i2c_xfer._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.9, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ttusb2_i2c_xfer._entry_ptr.44 = internal global ptr @ttusb2_i2c_xfer._entry.43, section ".printk_index", align 4
@ttusb2_i2c_xfer._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.36, ptr @.str.9, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ttusb2: i2c transfer failed.\0A\00", [32 x i8] zeroinitializer }, align 32
@ttusb2_i2c_xfer._entry_ptr.47 = internal global ptr @ttusb2_i2c_xfer._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-usb-tt-s2400-01.fw\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Technotrend TT-connect S-2400\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Technotrend TT-connect S-2400 (8kB EEPROM)\00", [53 x i8] zeroinitializer }, align 32
@ttusb2_properties_s2400 = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 3, ptr null, ptr @.str.48, i32 0, i32 148, ptr null, ptr null, i32 1, [2 x %struct.dvb_usb_adapter_properties] [%struct.dvb_usb_adapter_properties { i32 0, ptr null, i32 1, [3 x %struct.dvb_usb_adapter_fe_properties] [%struct.dvb_usb_adapter_fe_properties { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @ttusb2_frontend_tda10086_attach, ptr @ttusb2_tuner_tda826x_attach, %struct.usb_data_stream_properties { i32 2, i32 5, i32 2, %union.anon.131 { %struct.anon.133 { i32 4, i32 940, i32 1 } } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer] }, %struct.dvb_usb_adapter_properties zeroinitializer], ptr @ttusb2_power_ctrl, ptr null, ptr @ttusb2_identify_state, %struct.anon.134 zeroinitializer, ptr @ttusb2_i2c_algo, i32 1, i32 0, i32 2, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.49, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @ttusb2_table, i64 48), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.50, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @ttusb2_table, i64 96), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-tt-1500\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Technotrend TT-connect CT-3650\00", [33 x i8] zeroinitializer }, align 32
@ttusb2_properties_ct3650 = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 3, ptr null, ptr null, i32 0, i32 148, ptr null, ptr null, i32 1, [2 x %struct.dvb_usb_adapter_properties] [%struct.dvb_usb_adapter_properties { i32 0, ptr null, i32 2, [3 x %struct.dvb_usb_adapter_fe_properties] [%struct.dvb_usb_adapter_fe_properties { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @ttusb2_frontend_tda10023_attach, ptr @ttusb2_tuner_tda827x_attach, %struct.usb_data_stream_properties { i32 2, i32 5, i32 2, %union.anon.131 { %struct.anon.133 { i32 4, i32 940, i32 1 } } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @ttusb2_frontend_tda10023_attach, ptr @ttusb2_tuner_tda827x_attach, %struct.usb_data_stream_properties { i32 2, i32 5, i32 2, %union.anon.131 { %struct.anon.133 { i32 4, i32 940, i32 1 } } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer] }, %struct.dvb_usb_adapter_properties zeroinitializer], ptr @ttusb2_power_ctrl, ptr null, ptr @ttusb2_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.52, i64 0, i64 4, i32 0, ptr null, ptr null, ptr @tt3650_rc_query, i32 150, i8 0, i32 0 } }, ptr @ttusb2_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.53, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @ttusb2_table, i64 72), [14 x ptr] zeroinitializer }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@ttusb2_frontend_tda10023_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.55, ptr @.str.9, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ttusb2_frontend_tda10023_attach\00", [32 x i8] zeroinitializer }, align 32
@ttusb2_frontend_tda10023_attach._entry_ptr = internal global ptr @ttusb2_frontend_tda10023_attach._entry, section ".printk_index", align 4
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10023_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10023_attach\00", [41 x i8] zeroinitializer }, align 32
@tda10023_config = internal global { %struct.tda10023_config, [16 x i8] } { %struct.tda10023_config { i8 12, i8 0, i32 16000000, i8 11, i8 3, i8 1, i8 0, i16 -23279 }, [16 x i8] zeroinitializer }, align 32
@ttusb2_frontend_tda10023_attach._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.55, ptr @.str.9, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10023_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@ttusb2_frontend_tda10023_attach._entry_ptr.60 = internal global ptr @ttusb2_frontend_tda10023_attach._entry.58, section ".printk_index", align 4
@ttusb2_frontend_tda10023_attach._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.55, ptr @.str.9, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TDA10023 attach failed\0A\00", [40 x i8] zeroinitializer }, align 32
@ttusb2_frontend_tda10023_attach._entry_ptr.63 = internal global ptr @ttusb2_frontend_tda10023_attach._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10048_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10048_attach\00", [41 x i8] zeroinitializer }, align 32
@tda10048_config = internal global { %struct.tda10048_config, [46 x i8] } { %struct.tda10048_config { i8 8, i8 0, i8 0, i8 1, i16 4000, i16 4500, i16 5000, i16 16000, i8 0, i8 1, i8 1, i8 5, i8 0, i8 3 }, [46 x i8] zeroinitializer }, align 32
@ttusb2_frontend_tda10023_attach._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.55, ptr @.str.9, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10048_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@ttusb2_frontend_tda10023_attach._entry_ptr.68 = internal global ptr @ttusb2_frontend_tda10023_attach._entry.66, section ".printk_index", align 4
@ttusb2_frontend_tda10023_attach._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.55, ptr @.str.9, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TDA10048 attach failed\0A\00", [40 x i8] zeroinitializer }, align 32
@ttusb2_frontend_tda10023_attach._entry_ptr.71 = internal global ptr @ttusb2_frontend_tda10023_attach._entry.69, section ".printk_index", align 4
@tt3650_ci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.9, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017ttusb2: %s \0A\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tt3650_ci_init\00", [17 x i8] zeroinitializer }, align 32
@tt3650_ci_init._entry_ptr = internal global ptr @tt3650_ci_init._entry, section ".printk_index", align 4
@tt3650_ci_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&state->ca_mutex\00", [47 x i8] zeroinitializer }, align 32
@tt3650_ci_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.73, ptr @.str.9, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ttusb2: Cannot initialize CI: Error %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@tt3650_ci_init._entry_ptr.77 = internal global ptr @tt3650_ci_init._entry.75, section ".printk_index", align 4
@tt3650_ci_init._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.73, ptr @.str.9, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016ttusb2: CI initialized.\0A\00", [37 x i8] zeroinitializer }, align 32
@tt3650_ci_init._entry_ptr.80 = internal global ptr @tt3650_ci_init._entry.78, section ".printk_index", align 4
@tt3650_ci_read_attribute_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.9, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017ttusb2: %s %04x -> %d 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tt3650_ci_read_attribute_mem\00", [35 x i8] zeroinitializer }, align 32
@tt3650_ci_read_attribute_mem._entry_ptr = internal global ptr @tt3650_ci_read_attribute_mem._entry, section ".printk_index", align 4
@tt3650_ci_write_attribute_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.9, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017ttusb2: %s %d 0x%04x 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tt3650_ci_write_attribute_mem\00", [34 x i8] zeroinitializer }, align 32
@tt3650_ci_write_attribute_mem._entry_ptr = internal global ptr @tt3650_ci_write_attribute_mem._entry, section ".printk_index", align 4
@tt3650_ci_read_cam_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.9, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017ttusb2: %s 0x%02x -> %d 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tt3650_ci_read_cam_control\00", [37 x i8] zeroinitializer }, align 32
@tt3650_ci_read_cam_control._entry_ptr = internal global ptr @tt3650_ci_read_cam_control._entry, section ".printk_index", align 4
@tt3650_ci_write_cam_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.9, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017ttusb2: %s %d 0x%02x 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tt3650_ci_write_cam_control\00", [36 x i8] zeroinitializer }, align 32
@tt3650_ci_write_cam_control._entry_ptr = internal global ptr @tt3650_ci_write_cam_control._entry, section ".printk_index", align 4
@tt3650_ci_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.9, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017ttusb2: %s %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tt3650_ci_slot_reset\00", [43 x i8] zeroinitializer }, align 32
@tt3650_ci_slot_reset._entry_ptr = internal global ptr @tt3650_ci_slot_reset._entry, section ".printk_index", align 4
@tt3650_ci_set_video_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.9, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017ttusb2: %s %d %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tt3650_ci_set_video_port\00", [39 x i8] zeroinitializer }, align 32
@tt3650_ci_set_video_port._entry_ptr = internal global ptr @tt3650_ci_set_video_port._entry, section ".printk_index", align 4
@tt3650_ci_set_video_port._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.9, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013ttusb2: CI not %sabled.\0A\00", [37 x i8] zeroinitializer }, align 32
@tt3650_ci_set_video_port._entry_ptr.95 = internal global ptr @tt3650_ci_set_video_port._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda827x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda827x_attach\00", [42 x i8] zeroinitializer }, align 32
@tda827x_config = internal global { %struct.tda827x_config, [44 x i8] } zeroinitializer, align 32
@ttusb2_tuner_tda827x_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.9, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda827x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ttusb2_tuner_tda827x_attach\00", [36 x i8] zeroinitializer }, align 32
@ttusb2_tuner_tda827x_attach._entry_ptr = internal global ptr @ttusb2_tuner_tda827x_attach._entry, section ".printk_index", align 4
@ttusb2_tuner_tda827x_attach._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.9, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: No tda827x found!\0A\00", [39 x i8] zeroinitializer }, align 32
@ttusb2_tuner_tda827x_attach._entry_ptr.104 = internal global ptr @ttusb2_tuner_tda827x_attach._entry.102, section ".printk_index", align 4
@tt3650_rc_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.9, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: cmd=0x%02x sys=0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tt3650_rc_query\00", [16 x i8] zeroinitializer }, align 32
@tt3650_rc_query._entry_ptr = internal global ptr @tt3650_rc_query._entry, section ".printk_index", align 4
@tt3650_ci_uninit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.107, ptr @.str.9, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tt3650_ci_uninit\00", [47 x i8] zeroinitializer }, align 32
@tt3650_ci_uninit._entry_ptr = internal global ptr @tt3650_ci_uninit._entry, section ".printk_index", align 4
@___asan_gen_.108 = private unnamed_addr constant [21 x i8] c"dvb_usb_ttusb2_debug\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 37, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant [24 x i8] c"dvb_usb_ttusb2_debug_ci\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 41, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant [14 x i8] c"ttusb2_driver\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 831, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 842, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 45, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [13 x i8] c"ttusb2_table\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 633, i32 29 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 650, i32 14 }
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"ttusb2_i2c_algo\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 437, i32 29 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 690, i32 7 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 694, i32 7 }
@___asan_gen_.144 = private unnamed_addr constant [18 x i8] c"ttusb2_properties\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 646, i32 41 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 526, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [16 x i8] c"tda10086_config\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 487, i32 31 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 528, i32 29 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 529, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 595, i32 6 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 596, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 600, i32 6 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 601, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 104, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [5 x i8] c"obuf\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 371, i32 12 }
@___asan_gen_.231 = private unnamed_addr constant [5 x i8] c"ibuf\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 371, i32 22 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 378, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 385, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 390, i32 5 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 395, i32 5 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 417, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 705, i32 14 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 745, i32 7 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 749, i32 7 }
@___asan_gen_.273 = private unnamed_addr constant [24 x i8] c"ttusb2_properties_s2400\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 701, i32 41 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 765, i32 23 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 825, i32 7 }
@___asan_gen_.282 = private unnamed_addr constant [25 x i8] c"ttusb2_properties_ct3650\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 756, i32 41 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 546, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [16 x i8] c"tda10023_config\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 494, i32 31 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 550, i32 25 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 554, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant [16 x i8] c"tda10048_config\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 504, i32 31 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 559, i32 25 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 563, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 338, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 340, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 358, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 363, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 157, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 169, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 193, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 205, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 257, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 221, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 233, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant [15 x i8] c"tda827x_config\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 519, i32 30 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 586, i32 6 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 587, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 458, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.463 = private constant [38 x i8] c"../drivers/media/usb/dvb-usb/ttusb2.c\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 315, i32 2 }
@llvm.compiler.used = appending global [169 x ptr] [ptr @__UNIQUE_ID_adapter_nr391, ptr @__UNIQUE_ID_adapter_nrtype390, ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debug_ci389, ptr @__UNIQUE_ID_debug_citype388, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_file396, ptr @__UNIQUE_ID_license397, ptr @__UNIQUE_ID_version395, ptr @__exitcall_ttusb2_driver_exit, ptr @__initcall__kmod_dvb_usb_ttusb2__392_838_ttusb2_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @__param_debug_ci, ptr @tt3650_ci_init._entry, ptr @tt3650_ci_init._entry.75, ptr @tt3650_ci_init._entry.78, ptr @tt3650_ci_init._entry_ptr, ptr @tt3650_ci_init._entry_ptr.77, ptr @tt3650_ci_init._entry_ptr.80, ptr @tt3650_ci_read_attribute_mem._entry, ptr @tt3650_ci_read_attribute_mem._entry_ptr, ptr @tt3650_ci_read_cam_control._entry, ptr @tt3650_ci_read_cam_control._entry_ptr, ptr @tt3650_ci_set_video_port._entry, ptr @tt3650_ci_set_video_port._entry.93, ptr @tt3650_ci_set_video_port._entry_ptr, ptr @tt3650_ci_set_video_port._entry_ptr.95, ptr @tt3650_ci_slot_reset._entry, ptr @tt3650_ci_slot_reset._entry_ptr, ptr @tt3650_ci_uninit._entry, ptr @tt3650_ci_uninit._entry_ptr, ptr @tt3650_ci_write_attribute_mem._entry, ptr @tt3650_ci_write_attribute_mem._entry_ptr, ptr @tt3650_ci_write_cam_control._entry, ptr @tt3650_ci_write_cam_control._entry_ptr, ptr @tt3650_rc_query._entry, ptr @tt3650_rc_query._entry_ptr, ptr @ttusb2_driver_exit, ptr @ttusb2_frontend_tda10023_attach._entry, ptr @ttusb2_frontend_tda10023_attach._entry.58, ptr @ttusb2_frontend_tda10023_attach._entry.61, ptr @ttusb2_frontend_tda10023_attach._entry.66, ptr @ttusb2_frontend_tda10023_attach._entry.69, ptr @ttusb2_frontend_tda10023_attach._entry_ptr, ptr @ttusb2_frontend_tda10023_attach._entry_ptr.60, ptr @ttusb2_frontend_tda10023_attach._entry_ptr.63, ptr @ttusb2_frontend_tda10023_attach._entry_ptr.68, ptr @ttusb2_frontend_tda10023_attach._entry_ptr.71, ptr @ttusb2_frontend_tda10086_attach._entry, ptr @ttusb2_frontend_tda10086_attach._entry.12, ptr @ttusb2_frontend_tda10086_attach._entry.15, ptr @ttusb2_frontend_tda10086_attach._entry_ptr, ptr @ttusb2_frontend_tda10086_attach._entry_ptr.14, ptr @ttusb2_frontend_tda10086_attach._entry_ptr.17, ptr @ttusb2_i2c_xfer._entry, ptr @ttusb2_i2c_xfer._entry.37, ptr @ttusb2_i2c_xfer._entry.40, ptr @ttusb2_i2c_xfer._entry.43, ptr @ttusb2_i2c_xfer._entry.45, ptr @ttusb2_i2c_xfer._entry_ptr, ptr @ttusb2_i2c_xfer._entry_ptr.39, ptr @ttusb2_i2c_xfer._entry_ptr.42, ptr @ttusb2_i2c_xfer._entry_ptr.44, ptr @ttusb2_i2c_xfer._entry_ptr.47, ptr @ttusb2_msg._entry, ptr @ttusb2_msg._entry_ptr, ptr @ttusb2_tuner_tda826x_attach._entry, ptr @ttusb2_tuner_tda826x_attach._entry.22, ptr @ttusb2_tuner_tda826x_attach._entry.27, ptr @ttusb2_tuner_tda826x_attach._entry.30, ptr @ttusb2_tuner_tda826x_attach._entry_ptr, ptr @ttusb2_tuner_tda826x_attach._entry_ptr.24, ptr @ttusb2_tuner_tda826x_attach._entry_ptr.29, ptr @ttusb2_tuner_tda826x_attach._entry_ptr.32, ptr @ttusb2_tuner_tda827x_attach._entry, ptr @ttusb2_tuner_tda827x_attach._entry.102, ptr @ttusb2_tuner_tda827x_attach._entry_ptr, ptr @ttusb2_tuner_tda827x_attach._entry_ptr.104, ptr @dvb_usb_ttusb2_debug, ptr @dvb_usb_ttusb2_debug_ci, ptr @ttusb2_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @ttusb2_table, ptr @.str.3, ptr @ttusb2_i2c_algo, ptr @.str.4, ptr @.str.5, ptr @ttusb2_properties, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @tda10086_config, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @ttusb2_i2c_xfer.obuf, ptr @ttusb2_i2c_xfer.ibuf, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @ttusb2_properties_s2400, ptr @.str.52, ptr @.str.53, ptr @ttusb2_properties_ct3650, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @tda10023_config, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @tda10048_config, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @tt3650_ci_init.__key, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @tda827x_config, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107], section "llvm.metadata"
@0 = internal global [119 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_ttusb2_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_ttusb2_debug_ci to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_frontend_tda10086_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_frontend_tda10086_attach._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_frontend_tda10086_attach._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_tuner_tda826x_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_tuner_tda826x_attach._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_tuner_tda826x_attach._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_tuner_tda826x_attach._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_i2c_xfer.obuf to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_i2c_xfer.ibuf to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_i2c_xfer._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_i2c_xfer._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_i2c_xfer._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_i2c_xfer._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_properties_s2400 to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_properties_ct3650 to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_frontend_tda10023_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10023_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_frontend_tda10023_attach._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_frontend_tda10023_attach._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10048_config to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_frontend_tda10023_attach._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_frontend_tda10023_attach._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_init._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_read_attribute_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_write_attribute_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_read_cam_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_write_cam_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_set_video_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_set_video_port._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda827x_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_tuner_tda827x_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttusb2_tuner_tda827x_attach._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_rc_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_uninit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ttusb2_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ttusb2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @ttusb2_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb2_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @ttusb2_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @ttusb2_properties_s2400, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false3

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @ttusb2_properties_ct3650, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  %spec.select = select i1 %cmp5, i32 0, i32 -19
  br label %return

return:                                           ; preds = %lor.lhs.false3, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ttusb2_usb_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @dvb_usb_ttusb2_debug_ci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.do.end3.i_crit_edge, label %do.end.i

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.107) #12
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %do.end3.i.tt3650_ci_uninit.exit_crit_edge, label %if.end5.i

do.end3.i.tt3650_ci_uninit.exit_crit_edge:        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tt3650_ci_uninit.exit

if.end5.i:                                        ; preds = %do.end3.i
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %cmp6.i = icmp eq ptr %4, null
  br i1 %cmp6.i, label %if.end5.i.tt3650_ci_uninit.exit_crit_edge, label %if.end8.i

if.end5.i.tt3650_ci_uninit.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tt3650_ci_uninit.exit

if.end8.i:                                        ; preds = %if.end5.i
  %data.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %cmp9.i = icmp eq ptr %6, null
  br i1 %cmp9.i, label %if.end8.i.tt3650_ci_uninit.exit_crit_edge, label %if.end11.i

if.end8.i.tt3650_ci_uninit.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tt3650_ci_uninit.exit

if.end11.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dvb_ca_en50221_release(ptr noundef nonnull %4) #9
  %7 = call ptr @memset(ptr %4, i32 0, i32 52)
  br label %tt3650_ci_uninit.exit

tt3650_ci_uninit.exit:                            ; preds = %if.end11.i, %if.end8.i.tt3650_ci_uninit.exit_crit_edge, %if.end5.i.tt3650_ci_uninit.exit_crit_edge, %do.end3.i.tt3650_ci_uninit.exit_crit_edge
  tail call void @dvb_usb_device_exit(ptr noundef %intf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb2_frontend_tda10086_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef 0, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %cond.end, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

cond.end:                                         ; preds = %if.end
  %call3 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.11) #9
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end13, label %cond.end.if.then6_crit_edge

cond.end.if.then6_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %cond.end.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %cond38 = phi ptr [ %call4, %cond.end.if.then6_crit_edge ], [ %call2, %if.end.if.then6_crit_edge ]
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 8
  %call8 = tail call ptr %cond38(ptr noundef nonnull @tda10086_config, ptr noundef %i2c_adap) #9
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.10) #9
  br label %do.body20

do.end13:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %do.body20

if.end16:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %6 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %fe_adap, align 8
  br label %return

do.body20:                                        ; preds = %do.end13, %if.then10
  %fe_adap40 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %7 = ptrtoint ptr %fe_adap40 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %fe_adap40, align 8
  %8 = load i32, ptr @dvb_usb_ttusb2_debug, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %do.body20.return_crit_edge, label %do.end25

do.body20.return_crit_edge:                       ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end25:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %return

return:                                           ; preds = %do.end25, %do.body20.return_crit_edge, %if.end16
  %retval.0 = phi i32 [ -19, %do.body20.return_crit_edge ], [ -19, %do.end25 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb2_tuner_tda826x_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond76 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %0 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe_adap, align 8
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 8
  %call4 = tail call ptr %cond76(ptr noundef %1, i32 noundef 96, ptr noundef %i2c_adap, i32 noundef 0) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end22

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #9
  br label %do.body11

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #12
  br label %do.body11

do.body11:                                        ; preds = %do.end, %if.then5
  %4 = load i32, ptr @dvb_usb_ttusb2_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.body11.return_crit_edge, label %do.body11.return.sink.split_crit_edge

do.body11.return.sink.split_crit_edge:            ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

do.body11.return_crit_edge:                       ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end22:                                         ; preds = %if.then
  %call25 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.25) #9
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %cond.end31, label %if.end22.if.then34_crit_edge

if.end22.if.then34_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

cond.end31:                                       ; preds = %if.end22
  %call29 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.26) #9
  %call30 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.25) #9
  %tobool33.not = icmp eq ptr %call30, null
  br i1 %tobool33.not, label %do.end47, label %cond.end31.if.then34_crit_edge

cond.end31.if.then34_crit_edge:                   ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

if.then34:                                        ; preds = %cond.end31.if.then34_crit_edge, %if.end22.if.then34_crit_edge
  %cond3281 = phi ptr [ %call30, %cond.end31.if.then34_crit_edge ], [ %call25, %if.end22.if.then34_crit_edge ]
  %5 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fe_adap, align 8
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap, align 8
  %i2c_adap39 = getelementptr inbounds %struct.dvb_usb_device, ptr %8, i32 0, i32 8
  %call40 = tail call ptr %cond3281(ptr noundef %6, ptr noundef %i2c_adap39, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %cmp41 = icmp eq ptr %call40, null
  br i1 %cmp41, label %if.then42, label %if.then34.return_crit_edge

if.then34.return_crit_edge:                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then42:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.25) #9
  br label %do.body54

do.end47:                                         ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #12
  br label %do.body54

do.body54:                                        ; preds = %do.end47, %if.then42
  %9 = load i32, ptr @dvb_usb_ttusb2_debug, align 4
  %and55 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body54.return_crit_edge, label %do.body54.return.sink.split_crit_edge

do.body54.return.sink.split_crit_edge:            ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

do.body54.return_crit_edge:                       ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return.sink.split:                                ; preds = %do.body54.return.sink.split_crit_edge, %do.body11.return.sink.split_crit_edge
  %.str.31.sink = phi ptr [ @.str.23, %do.body11.return.sink.split_crit_edge ], [ @.str.31, %do.body54.return.sink.split_crit_edge ]
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.31.sink) #12
  br label %return

return:                                           ; preds = %return.sink.split, %do.body54.return_crit_edge, %if.then34.return_crit_edge, %do.body11.return_crit_edge
  %retval.0 = phi i32 [ -19, %do.body11.return_crit_edge ], [ -19, %do.body54.return_crit_edge ], [ 0, %if.then34.return_crit_edge ], [ -19, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb2_power_ctrl(ptr noundef %d, i32 noundef %onoff) #2 align 64 {
entry:
  %b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #9
  %conv = trunc i32 %onoff to i8
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %b, align 1
  %call = call fastcc i32 @ttusb2_msg(ptr noundef %d, i8 noundef zeroext 21, ptr noundef nonnull %b, i32 noundef 0, ptr noundef null, i32 noundef 0)
  %call1 = call fastcc i32 @ttusb2_msg(ptr noundef %d, i8 noundef zeroext 21, ptr noundef nonnull %b, i32 noundef 1, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #9
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ttusb2_identify_state(ptr nocapture noundef readonly %udev, ptr nocapture noundef readnone %props, ptr nocapture noundef readnone %desc, ptr nocapture noundef writeonly %cold) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iManufacturer = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 10
  %0 = ptrtoint ptr %iManufacturer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iManufacturer, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iProduct = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 11
  %2 = ptrtoint ptr %iProduct to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iProduct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp4 = icmp eq i8 %3, 0
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %5 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cold, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ttusb2_msg(ptr noundef %d, i8 noundef zeroext %cmd, ptr nocapture noundef readonly %wbuf, i32 noundef %wlen, ptr nocapture noundef writeonly %rbuf, i32 noundef %rlen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add = add i32 %rlen, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp = icmp sgt i32 %add, 64
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add1 = add i32 %wlen, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i83 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #14
  %tobool5.not = icmp eq ptr %call7.i.i83, null
  br i1 %tobool5.not, label %if.end3.cleanup.sink.split_crit_edge, label %if.end7

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end3
  %3 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -86, ptr %call9.i.i, align 128
  %id = getelementptr inbounds %struct.ttusb2_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %inc = add i8 %5, 1
  store i8 %inc, ptr %id, align 4
  %arrayidx8 = getelementptr i8, ptr %call9.i.i, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %inc, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %call9.i.i, i32 2
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %cmd, ptr %arrayidx9, align 2
  %conv = trunc i32 %wlen to i8
  %arrayidx10 = getelementptr i8, ptr %call9.i.i, i32 3
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr i8, ptr %call9.i.i, i32 4
  %9 = call ptr @memcpy(ptr %arrayidx11, ptr %wbuf, i32 %wlen)
  %conv13 = trunc i32 %add1 to i16
  %call14 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %conv13, ptr noundef nonnull %call7.i.i83, i16 noundef zeroext 64, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %lor.lhs.false, label %if.end7.do.end_crit_edge

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end7
  %10 = ptrtoint ptr %call7.i.i83 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call7.i.i83, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %11)
  %cmp19.not = icmp eq i8 %11, 85
  br i1 %cmp19.not, label %lor.lhs.false21, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false21:                                  ; preds = %lor.lhs.false
  %arrayidx22 = getelementptr i8, ptr %call7.i.i83, i32 1
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx22, align 1
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp26.not = icmp eq i8 %13, %15
  br i1 %cmp26.not, label %lor.lhs.false28, label %lor.lhs.false21.do.end_crit_edge

lor.lhs.false21.do.end_crit_edge:                 ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false28:                                  ; preds = %lor.lhs.false21
  %arrayidx29 = getelementptr i8, ptr %call7.i.i83, i32 2
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx29, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %cmd)
  %cmp32.not = icmp eq i8 %17, %cmd
  br i1 %cmp32.not, label %lor.lhs.false34, label %lor.lhs.false28.do.end_crit_edge

lor.lhs.false28.do.end_crit_edge:                 ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false34:                                  ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rlen)
  %cmp35 = icmp sgt i32 %rlen, 0
  br i1 %cmp35, label %land.lhs.true, label %lor.lhs.false34.cleanup.sink.split.sink.split_crit_edge

lor.lhs.false34.cleanup.sink.split.sink.split_crit_edge: ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

land.lhs.true:                                    ; preds = %lor.lhs.false34
  %arrayidx37 = getelementptr i8, ptr %call7.i.i83, i32 3
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv38, i32 %rlen)
  %cmp39.not = icmp eq i32 %conv38, %rlen
  br i1 %cmp39.not, label %if.then48.critedge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %lor.lhs.false28.do.end_crit_edge, %lor.lhs.false21.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end7.do.end_crit_edge
  %arrayidx42 = getelementptr i8, ptr %call7.i.i83, i32 3
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %21 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %rlen, i32 noundef %conv43) #12
  br label %cleanup.sink.split.sink.split

if.then48.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx49 = getelementptr i8, ptr %call7.i.i83, i32 4
  %22 = call ptr @memcpy(ptr %rbuf, ptr %arrayidx49, i32 %rlen)
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then48.critedge, %do.end, %lor.lhs.false34.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ -5, %do.end ], [ 0, %lor.lhs.false34.cleanup.sink.split.sink.split_crit_edge ], [ 0, %if.then48.critedge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end3.cleanup.sink.split_crit_edge
  %call7.i.i83.sink = phi ptr [ %call9.i.i, %if.end3.cleanup.sink.split_crit_edge ], [ %call7.i.i83, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ -12, %if.end3.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i83.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_generic_rw(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb2_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp2 = icmp sgt i32 %num, 2
  br i1 %cmp2, label %if.end5.thread, label %if.end5

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  br label %for.body.preheader

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp6215 = icmp sgt i32 %num, 0
  br i1 %cmp6215, label %if.end5.for.body.preheader_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end5.for.body.preheader_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end5.for.body.preheader_crit_edge, %if.end5.thread
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0216 = phi i32 [ %inc131.pre-phi, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add = add nsw i32 %i.0216, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp7 = icmp slt i32 %add, %num
  br i1 %cmp7, label %land.rhs, label %for.body.land.end_crit_edge

for.body.land.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool = icmp ne i16 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body.land.end_crit_edge
  %5 = phi i1 [ false, %for.body.land.end_crit_edge ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %5 to i16
  %arrayidx9 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0216
  %flags10 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0216, i32 1
  %6 = ptrtoint ptr %flags10 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags10, align 2
  %8 = and i16 %7, 1
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0216, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 57, i16 %10)
  %cmp16 = icmp ugt i16 %10, 57
  br i1 %cmp16, label %do.end21, label %if.end27

do.end21:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv14 = zext i16 %10 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv14) #12
  br label %for.end

if.end27:                                         ; preds = %land.end
  br i1 %5, label %if.then29, label %if.end67.thread

if.then29:                                        ; preds = %if.end27
  %len32 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 2
  %11 = ptrtoint ptr %len32 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len32, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 57, i16 %12)
  %cmp35 = icmp ugt i16 %12, 57
  br i1 %cmp35, label %do.end40, label %if.end67

do.end40:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %conv33 = zext i16 %12 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %conv33) #12
  br label %for.end

if.end67:                                         ; preds = %if.then29
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx9, align 4
  %shl = shl i16 %14, 1
  %or = or i16 %8, %land.ext
  %or70 = or i16 %shl, %or
  %conv71 = trunc i16 %or70 to i8
  store i8 %conv71, ptr @ttusb2_i2c_xfer.obuf, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool72.not = icmp eq i16 %8, 0
  br i1 %tobool72.not, label %if.end78, label %if.end67.if.then80_crit_edge

if.end67.if.then80_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

if.end67.thread:                                  ; preds = %if.end27
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx9, align 4
  %shl192 = shl i16 %16, 1
  %or193 = or i16 %8, %land.ext
  %or70194 = or i16 %shl192, %or193
  %conv71195 = trunc i16 %or70194 to i8
  store i8 %conv71195, ptr @ttusb2_i2c_xfer.obuf, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool72.not196 = icmp eq i16 %8, 0
  br i1 %tobool72.not196, label %if.else91, label %if.then87

if.end78:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len, align 4
  %conv77 = trunc i16 %18 to i8
  br label %if.then80

if.then80:                                        ; preds = %if.end78, %if.end67.if.then80_crit_edge
  %storemerge189 = phi i8 [ %conv77, %if.end78 ], [ 0, %if.end67.if.then80_crit_edge ]
  store i8 %storemerge189, ptr getelementptr inbounds ([60 x i8], ptr @ttusb2_i2c_xfer.obuf, i32 0, i32 1), align 1
  %19 = ptrtoint ptr %len32 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len32, align 4
  %conv84 = trunc i16 %20 to i8
  br label %if.end93

if.then87:                                        ; preds = %if.end67.thread
  call void @__sanitizer_cov_trace_pc() #11
  store i8 0, ptr getelementptr inbounds ([60 x i8], ptr @ttusb2_i2c_xfer.obuf, i32 0, i32 1), align 1
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %len, align 4
  %conv90 = trunc i16 %22 to i8
  br label %if.end93

if.else91:                                        ; preds = %if.end67.thread
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %len, align 4
  %conv77206 = trunc i16 %24 to i8
  store i8 %conv77206, ptr getelementptr inbounds ([60 x i8], ptr @ttusb2_i2c_xfer.obuf, i32 0, i32 1), align 1
  br label %if.end93

if.end93:                                         ; preds = %if.else91, %if.then87, %if.then80
  %conv90.sink = phi i8 [ %conv90, %if.then87 ], [ 0, %if.else91 ], [ %conv84, %if.then80 ]
  %tobool72.not198 = phi i1 [ false, %if.then87 ], [ true, %if.else91 ], [ %tobool72.not, %if.then80 ]
  %storemerge187 = phi i8 [ 0, %if.then87 ], [ %conv77206, %if.else91 ], [ %storemerge189, %if.then80 ]
  store i8 %conv90.sink, ptr getelementptr inbounds ([60 x i8], ptr @ttusb2_i2c_xfer.obuf, i32 0, i32 2), align 1
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0216, i32 3
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf, align 4
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %len, align 4
  %conv97 = zext i16 %28 to i32
  %29 = call ptr @memcpy(ptr getelementptr inbounds ([60 x i8], ptr @ttusb2_i2c_xfer.obuf, i32 0, i32 3), ptr %26, i32 %conv97)
  %conv98 = zext i8 %storemerge187 to i32
  %add99 = add nuw nsw i32 %conv98, 3
  %30 = load i8, ptr getelementptr inbounds ([60 x i8], ptr @ttusb2_i2c_xfer.obuf, i32 0, i32 2), align 1
  %conv100 = zext i8 %30 to i32
  %add101 = add nuw nsw i32 %conv100, 3
  %call102 = tail call fastcc i32 @ttusb2_msg(ptr noundef %1, i8 noundef zeroext 49, ptr noundef nonnull @ttusb2_i2c_xfer.obuf, i32 noundef %add99, ptr noundef nonnull @ttusb2_i2c_xfer.ibuf, i32 noundef %add101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %do.end108, label %if.end111

do.end108:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #12
  br label %for.end

if.end111:                                        ; preds = %if.end93
  br i1 %5, label %if.then113, label %if.else121

if.then113:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  %buf116 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 3
  %31 = ptrtoint ptr %buf116 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf116, align 4
  %len119 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 2
  %33 = ptrtoint ptr %len119 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %len119, align 4
  %conv120 = zext i16 %34 to i32
  %35 = call ptr @memcpy(ptr %32, ptr getelementptr inbounds ([60 x i8], ptr @ttusb2_i2c_xfer.ibuf, i32 0, i32 3), i32 %conv120)
  %.pre = add i32 %i.0216, 2
  br label %for.inc

if.else121:                                       ; preds = %if.end111
  br i1 %tobool72.not198, label %if.else121.for.inc_crit_edge, label %if.then123

if.else121.for.inc_crit_edge:                     ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then123:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf, align 4
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %len, align 4
  %conv128 = zext i16 %39 to i32
  %40 = call ptr @memcpy(ptr %37, ptr getelementptr inbounds ([60 x i8], ptr @ttusb2_i2c_xfer.ibuf, i32 0, i32 3), i32 %conv128)
  br label %for.inc

for.inc:                                          ; preds = %if.then123, %if.else121.for.inc_crit_edge, %if.then113
  %inc131.pre-phi = phi i32 [ %.pre, %if.then113 ], [ %add, %if.then123 ], [ %add, %if.else121.for.inc_crit_edge ]
  %cmp6 = icmp slt i32 %inc131.pre-phi, %num
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end108, %do.end40, %do.end21, %if.end5.for.end_crit_edge
  %i.0211 = phi i32 [ %i.0216, %do.end108 ], [ %i.0216, %do.end40 ], [ %i.0216, %do.end21 ], [ 0, %if.end5.for.end_crit_edge ], [ %inc131.pre-phi, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.0211, %for.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ttusb2_i2c_func(ptr nocapture noundef readnone %adapter) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb2_frontend_tda10023_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef 0, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %if.then3, label %if.else41

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #9
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %cond.end, label %if.then3.if.then8_crit_edge

if.then3.if.then8_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

cond.end:                                         ; preds = %if.then3
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.57) #9
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end15, label %cond.end.if.then8_crit_edge

cond.end.if.then8_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %cond.end.if.then8_crit_edge, %if.then3.if.then8_crit_edge
  %cond108 = phi ptr [ %call6, %cond.end.if.then8_crit_edge ], [ %call4, %if.then3.if.then8_crit_edge ]
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %7, i32 0, i32 8
  %call10 = tail call ptr %cond108(ptr noundef nonnull @tda10023_config, ptr noundef %i2c_adap, i8 noundef zeroext 72) #9
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then12, label %if.end39

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.56) #9
  br label %do.body28

do.end15:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #12
  br label %do.body28

do.body28:                                        ; preds = %do.end15, %if.then12
  %8 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fe_adap, align 8
  %9 = load i32, ptr @dvb_usb_ttusb2_debug, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %do.body28.return_crit_edge, label %do.end33

do.body28.return_crit_edge:                       ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end33:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  br label %return

if.end39:                                         ; preds = %if.then8
  %10 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %fe_adap, align 8
  %11 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adap, align 8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 8
  %15 = load i32, ptr @dvb_usb_ttusb2_debug_ci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end39.do.body4.i_crit_edge, label %do.end.i

if.end39.do.body4.i_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4.i

do.end.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73) #12
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.end.i, %if.end39.do.body4.i_crit_edge
  %ca_mutex.i = getelementptr inbounds %struct.ttusb2_state, ptr %14, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %ca_mutex.i, ptr noundef nonnull @.str.74, ptr noundef nonnull @tt3650_ci_init.__key) #9
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %14, align 4
  %read_attribute_mem.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %read_attribute_mem.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tt3650_ci_read_attribute_mem, ptr %read_attribute_mem.i, align 4
  %write_attribute_mem.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %14, i32 0, i32 2
  %18 = ptrtoint ptr %write_attribute_mem.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tt3650_ci_write_attribute_mem, ptr %write_attribute_mem.i, align 4
  %read_cam_control.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %read_cam_control.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tt3650_ci_read_cam_control, ptr %read_cam_control.i, align 4
  %write_cam_control.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %14, i32 0, i32 4
  %20 = ptrtoint ptr %write_cam_control.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @tt3650_ci_write_cam_control, ptr %write_cam_control.i, align 4
  %slot_reset.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %14, i32 0, i32 7
  %21 = ptrtoint ptr %slot_reset.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @tt3650_ci_slot_reset, ptr %slot_reset.i, align 4
  %slot_shutdown.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %14, i32 0, i32 8
  %22 = ptrtoint ptr %slot_shutdown.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @tt3650_ci_slot_shutdown, ptr %slot_shutdown.i, align 4
  %slot_ts_enable.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %14, i32 0, i32 9
  %23 = ptrtoint ptr %slot_ts_enable.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @tt3650_ci_slot_ts_enable, ptr %slot_ts_enable.i, align 4
  %poll_slot_status.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %14, i32 0, i32 10
  %24 = ptrtoint ptr %poll_slot_status.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @tt3650_ci_poll_slot_status, ptr %poll_slot_status.i, align 4
  %data.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %14, i32 0, i32 11
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %12, ptr %data.i, align 4
  %dvb_adap.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 5
  %call17.i = tail call i32 @dvb_ca_en50221_init(ptr noundef %dvb_adap.i, ptr noundef %14, i32 noundef 0, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %do.end29.i, label %do.end22.i

do.end22.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %call17.i) #12
  %26 = call ptr @memset(ptr %14, i32 0, i32 52)
  br label %return

do.end29.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #12
  br label %return

if.else41:                                        ; preds = %if.end
  %call44 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.64) #9
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %cond.end50, label %if.else41.if.then53_crit_edge

if.else41.if.then53_crit_edge:                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

cond.end50:                                       ; preds = %if.else41
  %call48 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.65) #9
  %call49 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.64) #9
  %tobool52.not = icmp eq ptr %call49, null
  br i1 %tobool52.not, label %do.end63, label %cond.end50.if.then53_crit_edge

cond.end50.if.then53_crit_edge:                   ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

if.then53:                                        ; preds = %cond.end50.if.then53_crit_edge, %if.else41.if.then53_crit_edge
  %cond51113 = phi ptr [ %call49, %cond.end50.if.then53_crit_edge ], [ %call44, %if.else41.if.then53_crit_edge ]
  %27 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adap, align 8
  %i2c_adap55 = getelementptr inbounds %struct.dvb_usb_device, ptr %28, i32 0, i32 8
  %call56 = tail call ptr %cond51113(ptr noundef nonnull @tda10048_config, ptr noundef %i2c_adap55) #9
  %cmp57 = icmp eq ptr %call56, null
  br i1 %cmp57, label %if.then58, label %if.end88

if.then58:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.64) #9
  br label %do.body76

do.end63:                                         ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #11
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #12
  br label %do.body76

do.body76:                                        ; preds = %do.end63, %if.then58
  %arrayidx69115 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %arrayidx69115 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx69115, align 8
  %30 = load i32, ptr @dvb_usb_ttusb2_debug, align 4
  %and77 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %do.body76.return_crit_edge, label %do.end82

do.body76.return_crit_edge:                       ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end82:                                         ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #12
  br label %return

if.end88:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx69 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9, i32 1
  %31 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call56, ptr %arrayidx69, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %call56, i32 0, i32 1, i32 28
  %32 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ttusb2_ct3650_i2c_gate_ctrl, ptr %i2c_gate_ctrl, align 4
  br label %return

return:                                           ; preds = %if.end88, %do.end82, %do.body76.return_crit_edge, %do.end29.i, %do.end22.i, %do.end33, %do.body28.return_crit_edge
  %retval.0 = phi i32 [ -19, %do.body28.return_crit_edge ], [ -19, %do.end33 ], [ -19, %do.body76.return_crit_edge ], [ -19, %do.end82 ], [ 0, %if.end88 ], [ 0, %do.end22.i ], [ 0, %do.end29.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb2_tuner_tda827x_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %2 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe_adap, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fe.0 = phi ptr [ %3, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.98) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %if.end.if.then11_crit_edge

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

cond.end:                                         ; preds = %if.end
  %call8 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.99) #9
  %call9 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.98) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end, label %cond.end.if.then11_crit_edge

cond.end.if.then11_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %cond.end.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %cond35 = phi ptr [ %call9, %cond.end.if.then11_crit_edge ], [ %call, %if.end.if.then11_crit_edge ]
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 8
  %call12 = tail call ptr %cond35(ptr noundef %fe.0, i32 noundef 97, ptr noundef %i2c_adap, ptr noundef nonnull @tda827x_config) #9
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.then14, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.98) #9
  br label %do.end24

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #12
  br label %do.end24

do.end24:                                         ; preds = %do.end, %if.then14
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.then11.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end24 ], [ 0, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_rc_query(ptr noundef %d) #2 align 64 {
entry:
  %rx = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %rx) #9
  %0 = getelementptr inbounds [9 x i8], ptr %rx, i32 0, i32 1
  %1 = getelementptr inbounds [9 x i8], ptr %rx, i32 0, i32 2
  %2 = getelementptr inbounds [9 x i8], ptr %rx, i32 0, i32 3
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %3 = call ptr @memset(ptr %rx, i32 255, i32 9)
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %call = call fastcc i32 @ttusb2_msg(ptr noundef %d, i8 noundef zeroext 27, ptr noundef null, i32 noundef 0, ptr noundef nonnull %rx, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds [9 x i8], ptr %rx, i32 0, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %2, align 1
  %conv3 = zext i8 %11 to i16
  %shl = shl nuw i16 %conv3, 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 1
  %conv5 = zext i8 %13 to i16
  %or = or i16 %shl, %conv5
  %last_rc_key = getelementptr inbounds %struct.ttusb2_state, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %last_rc_key to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or, ptr %last_rc_key, align 2
  %15 = load i32, ptr @dvb_usb_ttusb2_debug, align 4
  %and7 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then1.do.end18_crit_edge, label %do.end

if.then1.do.end18_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %conv12 = zext i8 %13 to i32
  %conv14 = zext i8 %11 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef %conv12, i32 noundef %conv14) #12
  br label %do.end18

do.end18:                                         ; preds = %do.end, %if.then1.do.end18_crit_edge
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %16 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rc_dev, align 8
  %18 = ptrtoint ptr %last_rc_key to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %last_rc_key, align 2
  %conv20 = zext i16 %19 to i64
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %0, align 1
  tail call void @rc_keydown(ptr noundef %17, i32 noundef 2, i64 noundef %conv20, i8 noundef zeroext %21) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %last_rc_key22 = getelementptr inbounds %struct.ttusb2_state, ptr %5, i32 0, i32 3
  %22 = ptrtoint ptr %last_rc_key22 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %last_rc_key22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool23.not = icmp eq i16 %23, 0
  br i1 %tobool23.not, label %if.else.cleanup_crit_edge, label %if.then24

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rc_dev25 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %24 = ptrtoint ptr %rc_dev25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rc_dev25, align 8
  tail call void @rc_keyup(ptr noundef %25) #9
  %26 = ptrtoint ptr %last_rc_key22 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %last_rc_key22, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.else.cleanup_crit_edge, %do.end18, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %rx) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttusb2_ct3650_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 28
  %6 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_gate_ctrl, align 4
  %call = tail call i32 %7(ptr noundef %5, i32 noundef %enable) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_read_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address) #2 align 64 {
entry:
  %rx.i.i = alloca [60 x i8], align 1
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #9
  %0 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %tobool.not = icmp eq i32 %slot, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = lshr i32 %address, 8
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 15
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %buf, align 1
  %conv1 = trunc i32 %address to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1, ptr %2, align 1
  %data1.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %7 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data1.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  %ca_mutex.i = getelementptr inbounds %struct.ttusb2_state, ptr %10, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex.i, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %rx.i.i) #9
  %11 = call ptr @memset(ptr %rx.i.i, i32 255, i32 60)
  %call.i.i = call fastcc i32 @ttusb2_msg(ptr noundef %8, i8 noundef zeroext 67, ptr noundef nonnull %buf, i32 noundef 2, ptr noundef nonnull %rx.i.i, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.tt3650_ci_msg_locked.exit_crit_edge

if.end.tt3650_ci_msg_locked.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tt3650_ci_msg_locked.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = call ptr @memcpy(ptr %buf, ptr %rx.i.i, i32 3)
  br label %tt3650_ci_msg_locked.exit

tt3650_ci_msg_locked.exit:                        ; preds = %if.then.i.i, %if.end.tt3650_ci_msg_locked.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rx.i.i) #9
  tail call void @mutex_unlock(ptr noundef %ca_mutex.i) #9
  %13 = load i32, ptr @dvb_usb_ttusb2_debug_ci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %tt3650_ci_msg_locked.exit.do.end11_crit_edge, label %do.end

tt3650_ci_msg_locked.exit.do.end11_crit_edge:     ; preds = %tt3650_ci_msg_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end:                                           ; preds = %tt3650_ci_msg_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %0, align 1
  %conv7 = zext i8 %15 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef %address, i32 noundef %call.i.i, i32 noundef %conv7) #12
  br label %do.end11

do.end11:                                         ; preds = %do.end, %tt3650_ci_msg_locked.exit.do.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end11.cleanup_crit_edge, label %if.end14

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %0, align 1
  %conv16 = zext i8 %17 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv16, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_write_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address, i8 noundef zeroext %value) #2 align 64 {
entry:
  %rx.i.i = alloca [60 x i8], align 1
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #9
  %0 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %2 = load i32, ptr @dvb_usb_ttusb2_debug_ci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %value to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %slot, i32 noundef %address, i32 noundef %conv) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %tobool4.not = icmp eq i32 %slot, 0
  br i1 %tobool4.not, label %if.end6, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %3 = lshr i32 %address, 8
  %4 = trunc i32 %3 to i8
  %conv7 = and i8 %4, 15
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv7, ptr %buf, align 1
  %conv8 = trunc i32 %address to i8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv8, ptr %0, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %value, ptr %1, align 1
  %data1.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %8 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data1.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %ca_mutex.i = getelementptr inbounds %struct.ttusb2_state, ptr %11, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex.i, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %rx.i.i) #9
  %call.i.i = call fastcc i32 @ttusb2_msg(ptr noundef %9, i8 noundef zeroext 68, ptr noundef nonnull %buf, i32 noundef 3, ptr noundef nonnull %rx.i.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rx.i.i) #9
  tail call void @mutex_unlock(ptr noundef %ca_mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end6 ], [ -22, %do.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_read_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address) #2 align 64 {
entry:
  %rx.i.i = alloca [60 x i8], align 2
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #9
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %tobool.not = icmp eq i32 %slot, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i8 %address, 3
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %and, ptr %buf, align 2
  %data1.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %3 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data1.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %ca_mutex.i = getelementptr inbounds %struct.ttusb2_state, ptr %6, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex.i, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %rx.i.i) #9
  %7 = call ptr @memset(ptr %rx.i.i, i32 255, i32 60)
  %call.i.i = call fastcc i32 @ttusb2_msg(ptr noundef %4, i8 noundef zeroext 65, ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %rx.i.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.tt3650_ci_msg_locked.exit_crit_edge

if.end.tt3650_ci_msg_locked.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tt3650_ci_msg_locked.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rx.i.i, align 2
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %buf, align 2
  br label %tt3650_ci_msg_locked.exit

tt3650_ci_msg_locked.exit:                        ; preds = %if.then.i.i, %if.end.tt3650_ci_msg_locked.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rx.i.i) #9
  tail call void @mutex_unlock(ptr noundef %ca_mutex.i) #9
  %11 = load i32, ptr @dvb_usb_ttusb2_debug_ci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %tt3650_ci_msg_locked.exit.do.end11_crit_edge, label %do.end

tt3650_ci_msg_locked.exit.do.end11_crit_edge:     ; preds = %tt3650_ci_msg_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end:                                           ; preds = %tt3650_ci_msg_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %address to i32
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 1
  %conv7 = zext i8 %13 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %conv, i32 noundef %call.i.i, i32 noundef %conv7) #12
  br label %do.end11

do.end11:                                         ; preds = %do.end, %tt3650_ci_msg_locked.exit.do.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end11.cleanup_crit_edge, label %if.end14

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %0, align 1
  %conv16 = zext i8 %15 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv16, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %do.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_write_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address, i8 noundef zeroext %value) #2 align 64 {
entry:
  %rx.i.i = alloca [60 x i8], align 2
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #9
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = load i32, ptr @dvb_usb_ttusb2_debug_ci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %address to i32
  %conv2 = zext i8 %value to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, i32 noundef %slot, i32 noundef %conv, i32 noundef %conv2) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %tobool5.not = icmp eq i32 %slot, 0
  br i1 %tobool5.not, label %if.end7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %address, ptr %buf, align 2
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %value, ptr %0, align 1
  %data1.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %4 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %ca_mutex.i = getelementptr inbounds %struct.ttusb2_state, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex.i, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %rx.i.i) #9
  %call.i.i = call fastcc i32 @ttusb2_msg(ptr noundef %5, i8 noundef zeroext 66, ptr noundef nonnull %buf, i32 noundef 2, ptr noundef nonnull %rx.i.i, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rx.i.i) #9
  tail call void @mutex_unlock(ptr noundef %ca_mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end7 ], [ -22, %do.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_slot_reset(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  %rx.i36 = alloca [60 x i8], align 1
  %rx.i31 = alloca [60 x i8], align 1
  %rx.i = alloca [60 x i8], align 1
  %buf = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #9
  %4 = load i32, ptr @dvb_usb_ttusb2_debug_ci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i32 noundef %slot) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %tobool4.not = icmp eq i32 %slot, 0
  br i1 %tobool4.not, label %if.end6, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %buf, align 1
  %ca_mutex = getelementptr inbounds %struct.ttusb2_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %rx.i) #9
  %call.i = call fastcc i32 @ttusb2_msg(ptr noundef %1, i8 noundef zeroext 69, ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %rx.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rx.i) #9
  br i1 %tobool.not.i, label %if.end10, label %if.end6.failed_crit_edge

if.end6.failed_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end10:                                         ; preds = %if.end6
  tail call void @msleep(i32 noundef 500) #9
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %rx.i31) #9
  %call.i32 = call fastcc i32 @ttusb2_msg(ptr noundef %1, i8 noundef zeroext 69, ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %rx.i31, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rx.i31) #9
  br i1 %tobool.not.i33, label %if.end16, label %if.end10.failed_crit_edge

if.end10.failed_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 500) #9
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %rx.i36) #9
  %call.i37 = call fastcc i32 @ttusb2_msg(ptr noundef %1, i8 noundef zeroext 70, ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %rx.i36, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rx.i36) #9
  tail call void @msleep(i32 noundef 1100) #9
  br label %failed

failed:                                           ; preds = %if.end16, %if.end10.failed_crit_edge, %if.end6.failed_crit_edge
  %ret.0 = phi i32 [ %call.i37, %if.end16 ], [ %call.i, %if.end6.failed_crit_edge ], [ %call.i32, %if.end10.failed_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %failed, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %failed ], [ -22, %do.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_slot_shutdown(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tt3650_ci_set_video_port(ptr noundef %ca, i32 noundef %slot, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_slot_ts_enable(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tt3650_ci_set_video_port(ptr noundef %ca, i32 noundef %slot, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_poll_slot_status(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %open) #2 align 64 {
entry:
  %rx.i.i = alloca [60 x i8], align 1
  %buf = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %tobool.not = icmp eq i32 %slot, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data1.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %1 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data1.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %ca_mutex.i = getelementptr inbounds %struct.ttusb2_state, ptr %4, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex.i, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %rx.i.i) #9
  %5 = call ptr @memset(ptr %rx.i.i, i32 255, i32 60)
  %call.i.i = call fastcc i32 @ttusb2_msg(ptr noundef %2, i8 noundef zeroext 64, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %rx.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3, label %tt3650_ci_msg_locked.exit

tt3650_ci_msg_locked.exit:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rx.i.i) #9
  tail call void @mutex_unlock(ptr noundef %ca_mutex.i) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rx.i.i) #9
  tail call void @mutex_unlock(ptr noundef %ca_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  %. = select i1 %cmp, i32 5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %tt3650_ci_msg_locked.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %tt3650_ci_msg_locked.exit ], [ %., %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tt3650_ci_set_video_port(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  %rx.i.i = alloca [60 x i8], align 1
  %buf = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #9
  %0 = load i32, ptr @dvb_usb_ttusb2_debug_ci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef %slot, i32 noundef %enable) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %tobool4.not = icmp eq i32 %slot, 0
  br i1 %tobool4.not, label %if.end6, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %conv = trunc i32 %enable to i8
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %buf, align 1
  %data1.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %2 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %ca_mutex.i = getelementptr inbounds %struct.ttusb2_state, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex.i, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %rx.i.i) #9
  %6 = call ptr @memset(ptr %rx.i.i, i32 255, i32 60)
  %call.i.i = call fastcc i32 @ttusb2_msg(ptr noundef %3, i8 noundef zeroext 70, ptr noundef nonnull %buf, i32 noundef 1, ptr noundef nonnull %rx.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %tt3650_ci_msg_locked.exit.thread, label %tt3650_ci_msg_locked.exit

tt3650_ci_msg_locked.exit.thread:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rx.i.i, align 1
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %buf, align 1
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rx.i.i) #9
  tail call void @mutex_unlock(ptr noundef %ca_mutex.i) #9
  br label %if.end10

tt3650_ci_msg_locked.exit:                        ; preds = %if.end6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %rx.i.i) #9
  tail call void @mutex_unlock(ptr noundef %ca_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %tt3650_ci_msg_locked.exit.cleanup_crit_edge, label %tt3650_ci_msg_locked.exit.if.end10_crit_edge

tt3650_ci_msg_locked.exit.if.end10_crit_edge:     ; preds = %tt3650_ci_msg_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

tt3650_ci_msg_locked.exit.cleanup_crit_edge:      ; preds = %tt3650_ci_msg_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %tt3650_ci_msg_locked.exit.if.end10_crit_edge, %tt3650_ci_msg_locked.exit.thread
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  %conv12 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12, i32 %enable)
  %cmp13.not = icmp eq i32 %conv12, %enable
  br i1 %cmp13.not, label %if.end10.cleanup_crit_edge, label %do.end18

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool20.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool20.not, ptr @.str.97, ptr @.str.96
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull %cond) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end10.cleanup_crit_edge, %tt3650_ci_msg_locked.exit.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end18 ], [ -22, %do.end3.cleanup_crit_edge ], [ %call.i.i, %tt3650_ci_msg_locked.exit.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keyup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !32, !34, !35, !36, !37, !38, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !55, !57, !58, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !139, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !153, !155, !156, !157, !159, !161, !162, !163, !164, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !210, !211, !213, !215, !216, !217, !218, !219, !220, !222, !223, !224, !226, !228, !229, !230, !231, !233, !234, !235}
!llvm.module.flags = !{!237, !238, !239, !240, !241, !242, !243, !244}
!llvm.ident = !{!245}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 40, i32 1}
!5 = !{ptr @__param_debug_ci, !6, !"__param_debug_ci", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 42, i32 1}
!7 = !{ptr @__UNIQUE_ID_debug_citype388, !6, !"__UNIQUE_ID_debug_citype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug_ci389, !9, !"__UNIQUE_ID_debug_ci389", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 43, i32 1}
!10 = !{ptr @__param_adapter_nr, !11, !"__param_adapter_nr", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 45, i32 1}
!12 = !{ptr @__UNIQUE_ID_adapter_nrtype390, !11, !"__UNIQUE_ID_adapter_nrtype390", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_adapter_nr391, !11, !"__UNIQUE_ID_adapter_nr391", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_dvb_usb_ttusb2__392_838_ttusb2_driver_init6, !15, !"__initcall__kmod_dvb_usb_ttusb2__392_838_ttusb2_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 838, i32 1}
!16 = !{ptr @__exitcall_ttusb2_driver_exit, !15, !"__exitcall_ttusb2_driver_exit", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author393, !18, !"__UNIQUE_ID_author393", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 840, i32 1}
!19 = !{ptr @__UNIQUE_ID_description394, !20, !"__UNIQUE_ID_description394", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 841, i32 1}
!21 = !{ptr @__UNIQUE_ID_version395, !22, !"__UNIQUE_ID_version395", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 842, i32 1}
!23 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__modver_attr, !22, !"__modver_attr", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_file396, !28, !"__UNIQUE_ID_file396", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 843, i32 1}
!29 = !{ptr @__UNIQUE_ID_license397, !28, !"__UNIQUE_ID_license397", i1 false, i1 false}
!30 = !{ptr @dvb_usb_ttusb2_debug, !31, !"dvb_usb_ttusb2_debug", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 37, i32 12}
!32 = !{ptr @dvb_usb_ttusb2_debug_ci, !33, !"dvb_usb_ttusb2_debug_ci", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 41, i32 12}
!34 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!35 = !{ptr @__param_str_debug_ci, !6, !"__param_str_debug_ci", i1 false, i1 false}
!36 = !{ptr @__param_str_adapter_nr, !11, !"__param_str_adapter_nr", i1 false, i1 false}
!37 = !{ptr @__param_arr_adapter_nr, !11, !"__param_arr_adapter_nr", i1 false, i1 false}
!38 = !{ptr @adapter_nr, !11, !"adapter_nr", i1 false, i1 false}
!39 = !{ptr @ttusb2_driver, !40, !"ttusb2_driver", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 831, i32 26}
!41 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 650, i32 14}
!43 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 690, i32 7}
!45 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 694, i32 7}
!47 = !{ptr @ttusb2_properties, !48, !"ttusb2_properties", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 646, i32 41}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 526, i32 3}
!51 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ttusb2_frontend_tda10086_attach._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @ttusb2_frontend_tda10086_attach._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 528, i32 29}
!57 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ttusb2_frontend_tda10086_attach._entry.12, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @ttusb2_frontend_tda10086_attach._entry_ptr.14, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 529, i32 3}
!63 = !{ptr @ttusb2_frontend_tda10086_attach._entry.15, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ttusb2_frontend_tda10086_attach._entry_ptr.17, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @tda10086_config, !66, !"tda10086_config", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 487, i32 31}
!67 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 595, i32 6}
!69 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ttusb2_tuner_tda826x_attach._entry, !68, !"_entry", i1 false, i1 false}
!73 = !{ptr @ttusb2_tuner_tda826x_attach._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 596, i32 3}
!76 = !{ptr @ttusb2_tuner_tda826x_attach._entry.22, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ttusb2_tuner_tda826x_attach._entry_ptr.24, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 600, i32 6}
!80 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ttusb2_tuner_tda826x_attach._entry.27, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @ttusb2_tuner_tda826x_attach._entry_ptr.29, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 601, i32 3}
!86 = !{ptr @ttusb2_tuner_tda826x_attach._entry.30, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ttusb2_tuner_tda826x_attach._entry_ptr.32, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 104, i32 3}
!90 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ttusb2_msg._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ttusb2_msg._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @ttusb2_i2c_algo, !94, !"ttusb2_i2c_algo", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 437, i32 29}
!95 = !{ptr @ttusb2_i2c_xfer.obuf, !96, !"obuf", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 371, i32 12}
!97 = !{ptr @ttusb2_i2c_xfer.ibuf, !98, !"ibuf", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 371, i32 22}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 378, i32 3}
!101 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ttusb2_i2c_xfer._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @ttusb2_i2c_xfer._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 385, i32 4}
!106 = !{ptr @ttusb2_i2c_xfer._entry.37, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ttusb2_i2c_xfer._entry_ptr.39, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 390, i32 5}
!110 = !{ptr @ttusb2_i2c_xfer._entry.40, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ttusb2_i2c_xfer._entry_ptr.42, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @ttusb2_i2c_xfer._entry.43, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 395, i32 5}
!114 = !{ptr @ttusb2_i2c_xfer._entry_ptr.44, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 417, i32 4}
!117 = !{ptr @ttusb2_i2c_xfer._entry.45, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ttusb2_i2c_xfer._entry_ptr.47, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 705, i32 14}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 745, i32 7}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 749, i32 7}
!125 = !{ptr @ttusb2_properties_s2400, !126, !"ttusb2_properties_s2400", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 701, i32 41}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 765, i32 23}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 825, i32 7}
!131 = !{ptr @ttusb2_properties_ct3650, !132, !"ttusb2_properties_ct3650", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 756, i32 41}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 546, i32 3}
!135 = !{ptr @ttusb2_frontend_tda10023_attach._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @ttusb2_frontend_tda10023_attach._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 550, i32 25}
!139 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ttusb2_frontend_tda10023_attach._entry.58, !138, !"_entry", i1 false, i1 false}
!142 = !{ptr @ttusb2_frontend_tda10023_attach._entry_ptr.60, !138, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 554, i32 4}
!145 = !{ptr @ttusb2_frontend_tda10023_attach._entry.61, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ttusb2_frontend_tda10023_attach._entry_ptr.63, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 559, i32 25}
!149 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @ttusb2_frontend_tda10023_attach._entry.66, !148, !"_entry", i1 false, i1 false}
!152 = !{ptr @ttusb2_frontend_tda10023_attach._entry_ptr.68, !148, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 563, i32 4}
!155 = !{ptr @ttusb2_frontend_tda10023_attach._entry.69, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @ttusb2_frontend_tda10023_attach._entry_ptr.71, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @tda10023_config, !158, !"tda10023_config", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 494, i32 31}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 338, i32 2}
!161 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @tt3650_ci_init._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @tt3650_ci_init._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @tt3650_ci_init.__key, !165, !"__key", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 340, i32 2}
!166 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 358, i32 3}
!169 = !{ptr @tt3650_ci_init._entry.75, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @tt3650_ci_init._entry_ptr.77, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 363, i32 2}
!173 = !{ptr @tt3650_ci_init._entry.78, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @tt3650_ci_init._entry_ptr.80, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 157, i32 2}
!177 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @tt3650_ci_read_attribute_mem._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @tt3650_ci_read_attribute_mem._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 169, i32 2}
!182 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @tt3650_ci_write_attribute_mem._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @tt3650_ci_write_attribute_mem._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 193, i32 2}
!187 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @tt3650_ci_read_cam_control._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @tt3650_ci_read_cam_control._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 205, i32 2}
!192 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @tt3650_ci_write_cam_control._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @tt3650_ci_write_cam_control._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.89, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 257, i32 2}
!197 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @tt3650_ci_slot_reset._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @tt3650_ci_slot_reset._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.91, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 221, i32 2}
!202 = !{ptr @.str.92, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @tt3650_ci_set_video_port._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @tt3650_ci_set_video_port._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 233, i32 3}
!207 = !{ptr @tt3650_ci_set_video_port._entry.93, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @tt3650_ci_set_video_port._entry_ptr.95, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @tda10048_config, !212, !"tda10048_config", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 504, i32 31}
!213 = !{ptr @.str.98, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 586, i32 6}
!215 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.100, !214, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.101, !214, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @ttusb2_tuner_tda827x_attach._entry, !214, !"_entry", i1 false, i1 false}
!219 = !{ptr @ttusb2_tuner_tda827x_attach._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.103, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 587, i32 3}
!222 = !{ptr @ttusb2_tuner_tda827x_attach._entry.102, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @ttusb2_tuner_tda827x_attach._entry_ptr.104, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @tda827x_config, !225, !"tda827x_config", i1 false, i1 false}
!225 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 519, i32 30}
!226 = !{ptr @.str.105, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 458, i32 3}
!228 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @tt3650_rc_query._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @tt3650_rc_query._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.107, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 315, i32 2}
!233 = !{ptr @tt3650_ci_uninit._entry, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @tt3650_ci_uninit._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @ttusb2_table, !236, !"ttusb2_table", i1 false, i1 false}
!236 = !{!"../drivers/media/usb/dvb-usb/ttusb2.c", i32 633, i32 29}
!237 = !{i32 1, !"wchar_size", i32 2}
!238 = !{i32 1, !"min_enum_size", i32 4}
!239 = !{i32 8, !"branch-target-enforcement", i32 0}
!240 = !{i32 8, !"sign-return-address", i32 0}
!241 = !{i32 8, !"sign-return-address-all", i32 0}
!242 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!243 = !{i32 7, !"uwtable", i32 1}
!244 = !{i32 7, !"frame-pointer", i32 2}
!245 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!246 = !{!"auto-init"}
