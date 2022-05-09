; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/technisat-usb2.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/technisat-usb2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
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
%struct.stv090x_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, i32, i8, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stv6110x_config = type { i8, i32, i8, ptr, ptr }
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.technisat_usb2_state = type { ptr, %struct.delayed_work, i8, i16, [64 x i8] }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
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
%struct.stv6110x_devctl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ir_raw_event = type { %union.anon.144, i8, i8 }
%union.anon.144 = type { i32 }

@__param_str_adapter_nr = internal constant [34 x i8] c"dvb_usb_technisat_usb2.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype386 = internal constant [58 x i8] c"dvb_usb_technisat_usb2.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr387 = internal constant [59 x i8] c"dvb_usb_technisat_usb2.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__param_str_debug = internal constant [29 x i8] c"dvb_usb_technisat_usb2.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype388 = internal constant [42 x i8] c"dvb_usb_technisat_usb2.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug389 = internal constant [94 x i8] c"dvb_usb_technisat_usb2.parm=debug:set debugging level (bit-mask: 1=info,2=eeprom,4=i2c,8=rc).\00", section ".modinfo", align 1
@__param_str_disable_led_control = internal constant [43 x i8] c"dvb_usb_technisat_usb2.disable_led_control\00", align 1
@disable_led_control = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_led_control = internal constant %struct.kernel_param { ptr @__param_str_disable_led_control, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @disable_led_control } }, section "__param", align 4
@__UNIQUE_ID_disable_led_controltype390 = internal constant [56 x i8] c"dvb_usb_technisat_usb2.parmtype=disable_led_control:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_led_control391 = internal constant [120 x i8] c"dvb_usb_technisat_usb2.parm=disable_led_control:disable LED control of the device (default: 0 - LED control is active).\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_technisat_usb2__392_801_technisat_usb2_driver_init6 = internal global ptr @technisat_usb2_driver_init, section ".initcall6.init", align 4
@technisat_usb2_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @technisat_usb2_probe, ptr @technisat_usb2_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @technisat_usb2_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_technisat_usb2_driver_exit = internal global ptr @technisat_usb2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author393 = internal constant [76 x i8] c"dvb_usb_technisat_usb2.author=Patrick Boettcher <pboettcher@kernellabs.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [80 x i8] c"dvb_usb_technisat_usb2.description=Driver for Technisat DVB-S/S2 USB 2.0 device\00", section ".modinfo", align 1
@__UNIQUE_ID_version395 = internal constant [35 x i8] c"dvb_usb_technisat_usb2.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb_usb_technisat_usb2\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file396 = internal constant [77 x i8] c"dvb_usb_technisat_usb2.file=drivers/media/usb/dvb-usb/dvb-usb-technisat-usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license397 = internal constant [35 x i8] c"dvb_usb_technisat_usb2.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@technisat_usb2_id_table = internal global { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5367, i16 1280, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@technisat_usb2_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&state->green_led_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@technisat_usb2_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&state->green_led_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dvb-usb-SkyStar_USB_HD_FW_v17_63.HEX.fw\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc-technisat-usb2\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"technisat-usb2\00", [17 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @technisat_usb2_i2c_xfer, ptr null, ptr null, ptr null, ptr @technisat_usb2_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Technisat SkyStar USB HD (DVB-S/S2)\00", [60 x i8] zeroinitializer }, align 32
@technisat_usb2_devices = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 3, ptr null, ptr @.str.6, i32 0, i32 172, ptr null, ptr null, i32 1, [2 x %struct.dvb_usb_adapter_properties] [%struct.dvb_usb_adapter_properties { i32 0, ptr null, i32 1, [3 x %struct.dvb_usb_adapter_fe_properties] [%struct.dvb_usb_adapter_fe_properties { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @technisat_usb2_frontend_attach, ptr null, %struct.usb_data_stream_properties { i32 2, i32 4, i32 2, %union.anon.131 { %struct.anon.133 { i32 32, i32 2048, i32 1 } } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer] }, %struct.dvb_usb_adapter_properties zeroinitializer], ptr @technisat_usb2_power_ctrl, ptr @technisat_usb2_read_mac_address, ptr @technisat_usb2_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.7, i64 0, i64 130023420, i32 1, ptr null, ptr @.str.8, ptr @technisat_usb2_rc_query, i32 100, i8 0, i32 0 } }, ptr @technisat_usb2_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.9, <{ ptr, [14 x ptr] }> <{ ptr @technisat_usb2_id_table, [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv090x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv090x_attach\00", [42 x i8] zeroinitializer }, align 32
@technisat_usb2_stv090x_config = internal global { %struct.stv090x_config, [48 x i8] } { %struct.stv090x_config { i32 0, i32 1, i32 2, i32 0, i32 8000000, i8 104, i8 4, i8 0, i32 13400000, i32 0, i8 -128, i32 2, i8 6, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@technisat_usb2_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv090x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"technisat_usb2_frontend_attach\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/usb/dvb-usb/technisat-usb2.c\00", [53 x i8] zeroinitializer }, align 32
@technisat_usb2_frontend_attach._entry_ptr = internal global ptr @technisat_usb2_frontend_attach._entry, section ".printk_index", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stv6110x_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:stv6110x_attach\00", [41 x i8] zeroinitializer }, align 32
@technisat_usb2_stv6110x_config = internal global { %struct.stv6110x_config, [44 x i8] } { %struct.stv6110x_config { i8 96, i32 16000000, i8 2, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@technisat_usb2_frontend_attach._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.15, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol stv6110x_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@technisat_usb2_frontend_attach._entry_ptr.20 = internal global ptr @technisat_usb2_frontend_attach._entry.18, section ".printk_index", align 4
@technisat_usb2_frontend_attach._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.15, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013technisat-usb2: could not set IF_CLK to external\0A\00", [44 x i8] zeroinitializer }, align 32
@technisat_usb2_frontend_attach._entry_ptr.23 = internal global ptr @technisat_usb2_frontend_attach._entry.21, section ".printk_index", align 4
@technisat_usb2_identify_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.15, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013technisat-usb2: could not set alternate setting to 0\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"technisat_usb2_identify_state\00", [34 x i8] zeroinitializer }, align 32
@technisat_usb2_identify_state._entry_ptr = internal global ptr @technisat_usb2_identify_state._entry, section ".printk_index", align 4
@technisat_usb2_identify_state._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.15, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016technisat-usb2: set alternate setting\0A\00", [55 x i8] zeroinitializer }, align 32
@technisat_usb2_identify_state._entry_ptr.28 = internal global ptr @technisat_usb2_identify_state._entry.26, section ".printk_index", align 4
@technisat_usb2_identify_state._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.15, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016technisat-usb2: firmware version: %d.%d\0A\00", [53 x i8] zeroinitializer }, align 32
@technisat_usb2_identify_state._entry_ptr.31 = internal global ptr @technisat_usb2_identify_state._entry.29, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@technisat_usb2_i2c_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.15, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i2c-access: %02x, tx: \00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"technisat_usb2_i2c_access\00", [38 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_access._entry_ptr = internal global ptr @technisat_usb2_i2c_access._entry, section ".printk_index", align 4
@technisat_usb2_i2c_access._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.15, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_access._entry_ptr.36 = internal global ptr @technisat_usb2_i2c_access._entry.34, section ".printk_index", align 4
@technisat_usb2_i2c_access._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.15, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_access._entry_ptr.39 = internal global ptr @technisat_usb2_i2c_access._entry.37, section ".printk_index", align 4
@technisat_usb2_i2c_access._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.15, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_access._entry_ptr.42 = internal global ptr @technisat_usb2_i2c_access._entry.40, section ".printk_index", align 4
@technisat_usb2_i2c_access._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.15, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013technisat-usb2: i2c TX buffer can't exceed 62 bytes (dev 0x%02x)\0A\00", [60 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_access._entry_ptr.45 = internal global ptr @technisat_usb2_i2c_access._entry.43, section ".printk_index", align 4
@technisat_usb2_i2c_access._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.33, ptr @.str.15, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013technisat-usb2: i2c RX buffer can't exceed 62 bytes (dev 0x%02x)\0A\00", [60 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_access._entry_ptr.48 = internal global ptr @technisat_usb2_i2c_access._entry.46, section ".printk_index", align 4
@technisat_usb2_i2c_access._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.33, ptr @.str.15, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013technisat-usb2: i2c-error: out failed %02x = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_access._entry_ptr.51 = internal global ptr @technisat_usb2_i2c_access._entry.49, section ".printk_index", align 4
@technisat_usb2_i2c_access._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.33, ptr @.str.15, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013technisat-usb2: i2c-error: in failed %02x = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_access._entry_ptr.54 = internal global ptr @technisat_usb2_i2c_access._entry.52, section ".printk_index", align 4
@technisat_usb2_i2c_access._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.33, ptr @.str.15, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013technisat-usb2: i2c-error: %02x = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_access._entry_ptr.57 = internal global ptr @technisat_usb2_i2c_access._entry.55, section ".printk_index", align 4
@technisat_usb2_i2c_access._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.33, ptr @.str.15, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"status: %d, \00", [19 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_access._entry_ptr.60 = internal global ptr @technisat_usb2_i2c_access._entry.58, section ".printk_index", align 4
@technisat_usb2_i2c_access._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.33, ptr @.str.15, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx (%d): \00", [22 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_access._entry_ptr.63 = internal global ptr @technisat_usb2_i2c_access._entry.61, section ".printk_index", align 4
@technisat_usb2_i2c_access._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.15, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_access._entry_ptr.65 = internal global ptr @technisat_usb2_i2c_access._entry.64, section ".printk_index", align 4
@technisat_usb2_i2c_access._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.15, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_access._entry_ptr.67 = internal global ptr @technisat_usb2_i2c_access._entry.66, section ".printk_index", align 4
@technisat_usb2_i2c_access._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.15, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@technisat_usb2_i2c_access._entry_ptr.69 = internal global ptr @technisat_usb2_i2c_access._entry.68, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 38, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"disable_led_control\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 46, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [22 x i8] c"technisat_usb2_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 794, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 805, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 36, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [24 x i8] c"technisat_usb2_id_table\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 692, i32 29 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 770, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 705, i32 23 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 748, i32 18 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 749, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant [24 x i8] c"technisat_usb2_i2c_algo\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 202, i32 29 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 740, i32 7 }
@___asan_gen_.122 = private unnamed_addr constant [23 x i8] c"technisat_usb2_devices\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 699, i32 41 }
@___asan_gen_.131 = private unnamed_addr constant [30 x i8] c"technisat_usb2_stv090x_config\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 495, i32 30 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 523, i32 21 }
@___asan_gen_.152 = private unnamed_addr constant [31 x i8] c"technisat_usb2_stv6110x_config\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 512, i32 31 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 529, i32 9 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 564, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 345, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 347, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 360, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 94, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 95, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 96, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 99, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 104, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 124, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 132, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 137, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 145, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 150, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 151, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.264 = private constant [46 x i8] c"../drivers/media/usb/dvb-usb/technisat-usb2.c\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 154, i32 2 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_adapter_nr387, ptr @__UNIQUE_ID_adapter_nrtype386, ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_debug389, ptr @__UNIQUE_ID_debugtype388, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_disable_led_control391, ptr @__UNIQUE_ID_disable_led_controltype390, ptr @__UNIQUE_ID_file396, ptr @__UNIQUE_ID_license397, ptr @__UNIQUE_ID_version395, ptr @__exitcall_technisat_usb2_driver_exit, ptr @__initcall__kmod_dvb_usb_technisat_usb2__392_801_technisat_usb2_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @__param_disable_led_control, ptr @technisat_usb2_driver_exit, ptr @technisat_usb2_frontend_attach._entry, ptr @technisat_usb2_frontend_attach._entry.18, ptr @technisat_usb2_frontend_attach._entry.21, ptr @technisat_usb2_frontend_attach._entry_ptr, ptr @technisat_usb2_frontend_attach._entry_ptr.20, ptr @technisat_usb2_frontend_attach._entry_ptr.23, ptr @technisat_usb2_i2c_access._entry, ptr @technisat_usb2_i2c_access._entry.34, ptr @technisat_usb2_i2c_access._entry.37, ptr @technisat_usb2_i2c_access._entry.40, ptr @technisat_usb2_i2c_access._entry.43, ptr @technisat_usb2_i2c_access._entry.46, ptr @technisat_usb2_i2c_access._entry.49, ptr @technisat_usb2_i2c_access._entry.52, ptr @technisat_usb2_i2c_access._entry.55, ptr @technisat_usb2_i2c_access._entry.58, ptr @technisat_usb2_i2c_access._entry.61, ptr @technisat_usb2_i2c_access._entry.64, ptr @technisat_usb2_i2c_access._entry.66, ptr @technisat_usb2_i2c_access._entry.68, ptr @technisat_usb2_i2c_access._entry_ptr, ptr @technisat_usb2_i2c_access._entry_ptr.36, ptr @technisat_usb2_i2c_access._entry_ptr.39, ptr @technisat_usb2_i2c_access._entry_ptr.42, ptr @technisat_usb2_i2c_access._entry_ptr.45, ptr @technisat_usb2_i2c_access._entry_ptr.48, ptr @technisat_usb2_i2c_access._entry_ptr.51, ptr @technisat_usb2_i2c_access._entry_ptr.54, ptr @technisat_usb2_i2c_access._entry_ptr.57, ptr @technisat_usb2_i2c_access._entry_ptr.60, ptr @technisat_usb2_i2c_access._entry_ptr.63, ptr @technisat_usb2_i2c_access._entry_ptr.65, ptr @technisat_usb2_i2c_access._entry_ptr.67, ptr @technisat_usb2_i2c_access._entry_ptr.69, ptr @technisat_usb2_identify_state._entry, ptr @technisat_usb2_identify_state._entry.26, ptr @technisat_usb2_identify_state._entry.29, ptr @technisat_usb2_identify_state._entry_ptr, ptr @technisat_usb2_identify_state._entry_ptr.28, ptr @technisat_usb2_identify_state._entry_ptr.31, ptr @debug, ptr @disable_led_control, ptr @technisat_usb2_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @technisat_usb2_id_table, ptr @technisat_usb2_probe.__key, ptr @.str.3, ptr @technisat_usb2_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @technisat_usb2_i2c_algo, ptr @.str.9, ptr @technisat_usb2_devices, ptr @.str.11, ptr @.str.12, ptr @technisat_usb2_stv090x_config, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @technisat_usb2_stv6110x_config, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_led_control to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_devices to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_stv090x_config to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_stv6110x_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_frontend_attach._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_frontend_attach._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_identify_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_identify_state._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_identify_state._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_access._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_access._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_access._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_access._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_access._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_access._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_access._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_access._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_access._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_access._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_access._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_access._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_i2c_access._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @technisat_usb2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @technisat_usb2_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @technisat_usb2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @technisat_usb2_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @technisat_usb2_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dev, align 4, !annotation !156
  %call = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @technisat_usb2_devices, ptr noundef null, ptr noundef nonnull %dev, ptr noundef nonnull @adapter_nr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %4, align 4
  %6 = load i32, ptr @disable_led_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %do.body5, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body5:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %green_led_work = getelementptr inbounds %struct.technisat_usb2_state, ptr %4, i32 0, i32 1
  call void @__init_work(ptr noundef %green_led_work, i32 noundef 0) #7
  %7 = ptrtoint ptr %green_led_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %green_led_work, align 4
  %lockdep_map = getelementptr inbounds %struct.technisat_usb2_state, ptr %4, i32 0, i32 1, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @technisat_usb2_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry12 = getelementptr inbounds %struct.technisat_usb2_state, ptr %4, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.technisat_usb2_state, ptr %4, i32 0, i32 1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.technisat_usb2_state, ptr %4, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @technisat_usb2_green_led_control, ptr %func, align 4
  %timer = getelementptr inbounds %struct.technisat_usb2_state, ptr %4, i32 0, i32 1, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @technisat_usb2_probe.__key.4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %green_led_work, i32 noundef 50) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body5, %if.then1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %do.body5 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @technisat_usb2_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %cmp1.not = icmp eq ptr %3, null
  br i1 %cmp1.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %green_led_work = getelementptr inbounds %struct.technisat_usb2_state, ptr %3, i32 0, i32 1
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %green_led_work) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @dvb_usb_device_exit(ptr noundef %intf) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @technisat_usb2_green_led_control(ptr noundef %work) #2 align 64 {
entry:
  %status = alloca i32, align 4
  %ber = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 10, i32 0, i32 9
  %2 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe_adap, align 8
  %power_state = getelementptr i8, ptr %work, i32 100
  %4 = ptrtoint ptr %power_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  %cmp4.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4.not
  br i1 %or.cond, label %entry.schedule_crit_edge, label %if.then6

entry.schedule_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %schedule

if.then6:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %status, align 4, !annotation !156
  %read_status = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 15
  %7 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_status, align 4
  %call = call i32 %8(ptr noundef nonnull %3, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7.not = icmp eq i32 %call, 0
  br i1 %cmp7.not, label %if.end10, label %if.then6.cleanup30_crit_edge

if.then6.cleanup30_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

if.end10:                                         ; preds = %if.then6
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else26, label %if.then11

if.then11:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ber) #7
  %11 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %ber, align 4, !annotation !156
  %read_ber = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 16
  %12 = ptrtoint ptr %read_ber to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_ber, align 4
  %call13 = call i32 %13(ptr noundef nonnull %3, ptr noundef nonnull %ber) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end17, label %cleanup30.critedge

if.end17:                                         ; preds = %if.then11
  %14 = ptrtoint ptr %ber to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ber, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %15)
  %cmp18 = icmp ugt i32 %15, 1000
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @technisat_usb2_set_led(ptr noundef %17, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ber) #7
  br label %cleanup30

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @technisat_usb2_set_led(ptr noundef %17, i32 noundef 0, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ber) #7
  br label %cleanup30

if.else26:                                        ; preds = %if.end10
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 8
  %buf.i = getelementptr inbounds %struct.technisat_usb2_state, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -74, ptr %buf.i, align 1
  %arrayidx17.i = getelementptr %struct.technisat_usb2_state, ptr %21, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -128, ptr %arrayidx17.i, align 1
  %i2c_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %19, i32 0, i32 7
  %call.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.i = icmp slt i32 %call.i, 0
  br i1 %cmp18.i, label %if.else26.cleanup30_crit_edge, label %if.end21.i

if.else26.cleanup30_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup30

if.end21.i:                                       ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i = shl i32 %27, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call27.i = call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i, i8 noundef zeroext -74, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf.i, i16 noundef zeroext 8, i32 noundef 500) #7
  call void @mutex_unlock(ptr noundef %i2c_mutex.i) #7
  br label %cleanup30

cleanup30.critedge:                               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ber) #7
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup30.critedge, %if.end21.i, %if.else26.cleanup30_crit_edge, %if.else, %if.then20, %if.then6.cleanup30_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  br label %schedule

schedule:                                         ; preds = %cleanup30, %entry.schedule_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %work, i32 noundef 50) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @technisat_usb2_frontend_attach(ptr nocapture noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 8
  %udev1 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev1, align 4
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.11) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.12) #7
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.11) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond144 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %a, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 8
  %call6 = tail call ptr %cond144(ptr noundef nonnull @technisat_usb2_stv090x_config, ptr noundef %i2c_adap, i32 noundef 1) #7
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.then7, label %if.then15

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.11) #7
  br label %if.end9.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %do.end, %if.then7
  %fe_adap146 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %a, i32 0, i32 9
  %6 = ptrtoint ptr %fe_adap146 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fe_adap146, align 8
  br label %if.end98

if.then15:                                        ; preds = %if.then
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %a, i32 0, i32 9
  %7 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %fe_adap, align 8
  %call18 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.16) #7
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %cond.end24, label %if.then15.if.then27_crit_edge

if.then15.if.then27_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

cond.end24:                                       ; preds = %if.then15
  %call22 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.17) #7
  %call23 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.16) #7
  %tobool26.not = icmp eq ptr %call23, null
  br i1 %tobool26.not, label %do.end40, label %cond.end24.if.then27_crit_edge

cond.end24.if.then27_crit_edge:                   ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.then27:                                        ; preds = %cond.end24.if.then27_crit_edge, %if.then15.if.then27_crit_edge
  %cond25152 = phi ptr [ %call23, %cond.end24.if.then27_crit_edge ], [ %call18, %if.then15.if.then27_crit_edge ]
  %8 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_adap, align 8
  %10 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %a, align 8
  %i2c_adap32 = getelementptr inbounds %struct.dvb_usb_device, ptr %11, i32 0, i32 8
  %call33 = tail call ptr %cond25152(ptr noundef %9, ptr noundef nonnull @technisat_usb2_stv6110x_config, ptr noundef %i2c_adap32) #7
  %cmp34 = icmp eq ptr %call33, null
  br i1 %cmp34, label %if.then35, label %if.then46

if.then35:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.16) #7
  br label %if.else90

do.end40:                                         ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %if.else90

if.then46:                                        ; preds = %if.then27
  %12 = ptrtoint ptr %call33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call33, align 4
  store ptr %13, ptr getelementptr inbounds (%struct.stv090x_config, ptr @technisat_usb2_stv090x_config, i32 0, i32 16), align 4
  %tuner_sleep = getelementptr inbounds %struct.stv6110x_devctl, ptr %call33, i32 0, i32 1
  %14 = ptrtoint ptr %tuner_sleep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tuner_sleep, align 4
  store ptr %15, ptr getelementptr inbounds (%struct.stv090x_config, ptr @technisat_usb2_stv090x_config, i32 0, i32 17), align 4
  %tuner_set_mode = getelementptr inbounds %struct.stv6110x_devctl, ptr %call33, i32 0, i32 2
  %16 = ptrtoint ptr %tuner_set_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tuner_set_mode, align 4
  store ptr %17, ptr getelementptr inbounds (%struct.stv090x_config, ptr @technisat_usb2_stv090x_config, i32 0, i32 18), align 4
  %tuner_set_frequency = getelementptr inbounds %struct.stv6110x_devctl, ptr %call33, i32 0, i32 3
  %18 = ptrtoint ptr %tuner_set_frequency to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tuner_set_frequency, align 4
  store ptr %19, ptr getelementptr inbounds (%struct.stv090x_config, ptr @technisat_usb2_stv090x_config, i32 0, i32 19), align 4
  %tuner_get_frequency = getelementptr inbounds %struct.stv6110x_devctl, ptr %call33, i32 0, i32 4
  %20 = ptrtoint ptr %tuner_get_frequency to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tuner_get_frequency, align 4
  store ptr %21, ptr getelementptr inbounds (%struct.stv090x_config, ptr @technisat_usb2_stv090x_config, i32 0, i32 20), align 4
  %tuner_set_bandwidth = getelementptr inbounds %struct.stv6110x_devctl, ptr %call33, i32 0, i32 5
  %22 = ptrtoint ptr %tuner_set_bandwidth to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tuner_set_bandwidth, align 4
  store ptr %23, ptr getelementptr inbounds (%struct.stv090x_config, ptr @technisat_usb2_stv090x_config, i32 0, i32 21), align 4
  %tuner_get_bandwidth = getelementptr inbounds %struct.stv6110x_devctl, ptr %call33, i32 0, i32 6
  %24 = ptrtoint ptr %tuner_get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tuner_get_bandwidth, align 4
  store ptr %25, ptr getelementptr inbounds (%struct.stv090x_config, ptr @technisat_usb2_stv090x_config, i32 0, i32 22), align 4
  %tuner_set_bbgain = getelementptr inbounds %struct.stv6110x_devctl, ptr %call33, i32 0, i32 7
  %26 = ptrtoint ptr %tuner_set_bbgain to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tuner_set_bbgain, align 4
  store ptr %27, ptr getelementptr inbounds (%struct.stv090x_config, ptr @technisat_usb2_stv090x_config, i32 0, i32 23), align 4
  %tuner_get_bbgain = getelementptr inbounds %struct.stv6110x_devctl, ptr %call33, i32 0, i32 8
  %28 = ptrtoint ptr %tuner_get_bbgain to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tuner_get_bbgain, align 4
  store ptr %29, ptr getelementptr inbounds (%struct.stv090x_config, ptr @technisat_usb2_stv090x_config, i32 0, i32 24), align 4
  %tuner_set_refclk = getelementptr inbounds %struct.stv6110x_devctl, ptr %call33, i32 0, i32 9
  %30 = ptrtoint ptr %tuner_set_refclk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tuner_set_refclk, align 4
  store ptr %31, ptr getelementptr inbounds (%struct.stv090x_config, ptr @technisat_usb2_stv090x_config, i32 0, i32 25), align 4
  %tuner_get_status = getelementptr inbounds %struct.stv6110x_devctl, ptr %call33, i32 0, i32 10
  %32 = ptrtoint ptr %tuner_get_status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tuner_get_status, align 4
  store ptr %33, ptr getelementptr inbounds (%struct.stv090x_config, ptr @technisat_usb2_stv090x_config, i32 0, i32 26), align 4
  %34 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fe_adap, align 8
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %35, i32 0, i32 1, i32 5
  %36 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init, align 4
  %tobool50.not = icmp eq ptr %37, null
  br i1 %tobool50.not, label %if.then46.if.end61_crit_edge, label %if.then51

if.then46.if.end61_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then51:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = tail call i32 %37(ptr noundef %35) #7
  br label %if.end61

if.end61:                                         ; preds = %if.then51, %if.then46.if.end61_crit_edge
  %38 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %a, align 8
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %39, i32 0, i32 7
  %call63 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end61.cleanup106_crit_edge, label %if.end66

if.end61.cleanup106_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup106

if.end66:                                         ; preds = %if.end61
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 8
  %shl.i = shl i32 %41, 8
  %or = or i32 %shl.i, -2147483648
  %call68 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext -77, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #7
  %42 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %a, align 8
  %i2c_mutex70 = getelementptr inbounds %struct.dvb_usb_device, ptr %43, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %i2c_mutex70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp71.not = icmp eq i32 %call68, 0
  br i1 %cmp71.not, label %if.end66.if.end78_crit_edge, label %do.end75

if.end66.if.end78_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end75:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #10
  br label %if.end78

if.end78:                                         ; preds = %do.end75, %if.end66.if.end78_crit_edge
  %44 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fe_adap, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %45, i32 0, i32 1, i32 25
  %46 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @technisat_usb2_set_voltage, ptr %set_voltage, align 4
  %47 = load ptr, ptr %fe_adap, align 8
  %ops86 = getelementptr inbounds %struct.dvb_frontend, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %a, align 8
  %desc = getelementptr inbounds %struct.dvb_usb_device, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %desc, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %call89 = tail call i32 @strscpy(ptr noundef %ops86, ptr noundef %53, i32 noundef 128) #7
  br label %if.end98

if.else90:                                        ; preds = %do.end40, %if.then35
  %54 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fe_adap, align 8
  tail call void @dvb_frontend_detach(ptr noundef %55) #7
  %56 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %fe_adap, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.else90, %if.end78, %if.end9.thread
  %fe_adap149 = phi ptr [ %fe_adap146, %if.end9.thread ], [ %fe_adap, %if.else90 ], [ %fe_adap, %if.end78 ]
  %57 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %a, align 8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %58, i32 0, i32 18
  %59 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv.i, align 8
  %buf.i = getelementptr inbounds %struct.technisat_usb2_state, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %buf.i, align 1
  %i2c_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %58, i32 0, i32 7
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end98.technisat_usb2_set_led_timer.exit_crit_edge, label %if.end.i

if.end98.technisat_usb2_set_led_timer.exit_crit_edge: ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %technisat_usb2_set_led_timer.exit

if.end.i:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %58, i32 0, i32 2
  %62 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %udev.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %shl.i.i = shl i32 %65, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call6.i = tail call i32 @usb_control_msg(ptr noundef %63, i32 noundef %or.i, i8 noundef zeroext -71, i8 noundef zeroext 64, i16 noundef zeroext 257, i16 noundef zeroext 0, ptr noundef %buf.i, i16 noundef zeroext 1, i32 noundef 500) #7
  tail call void @mutex_unlock(ptr noundef %i2c_mutex.i) #7
  br label %technisat_usb2_set_led_timer.exit

technisat_usb2_set_led_timer.exit:                ; preds = %if.end.i, %if.end98.technisat_usb2_set_led_timer.exit_crit_edge
  %66 = ptrtoint ptr %fe_adap149 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fe_adap149, align 8
  %cmp104 = icmp eq ptr %67, null
  %cond105 = select i1 %cmp104, i32 -19, i32 0
  br label %cleanup106

cleanup106:                                       ; preds = %technisat_usb2_set_led_timer.exit, %if.end61.cleanup106_crit_edge
  %retval.1 = phi i32 [ %cond105, %technisat_usb2_set_led_timer.exit ], [ -11, %if.end61.cleanup106_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @technisat_usb2_power_ctrl(ptr noundef %d, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = trunc i32 %level to i8
  %power_state = getelementptr inbounds %struct.technisat_usb2_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %power_state, align 4
  %3 = load i32, ptr @disable_led_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %buf.i = getelementptr inbounds %struct.technisat_usb2_state, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -74, ptr %buf.i, align 1
  %arrayidx17.i = getelementptr %struct.technisat_usb2_state, ptr %5, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %arrayidx17.i, align 1
  %i2c_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 7
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.i = icmp slt i32 %call.i, 0
  br i1 %cmp18.i, label %if.end.technisat_usb2_set_led.exit_crit_edge, label %if.end21.i

if.end.technisat_usb2_set_led.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %technisat_usb2_set_led.exit

if.end21.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call27.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i, i8 noundef zeroext -74, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf.i, i16 noundef zeroext 8, i32 noundef 500) #7
  tail call void @mutex_unlock(ptr noundef %i2c_mutex.i) #7
  br label %technisat_usb2_set_led.exit

technisat_usb2_set_led.exit:                      ; preds = %if.end21.i, %if.end.technisat_usb2_set_led.exit_crit_edge
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %buf.i5 = getelementptr inbounds %struct.technisat_usb2_state, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %buf.i5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -73, ptr %buf.i5, align 1
  %15 = load i32, ptr @disable_led_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.i6 = icmp eq i32 %15, 0
  br i1 %tobool1.not.i6, label %if.end.i, label %technisat_usb2_set_led.exit.cleanup_crit_edge

technisat_usb2_set_led.exit.cleanup_crit_edge:    ; preds = %technisat_usb2_set_led.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %technisat_usb2_set_led.exit
  %arrayidx3.i = getelementptr %struct.technisat_usb2_state, ptr %13, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -126, ptr %arrayidx3.i, align 1
  %call.i8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %cmp18.i9 = icmp slt i32 %call.i8, 0
  br i1 %cmp18.i9, label %if.end.i.cleanup_crit_edge, label %if.end21.i14

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21.i14:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %udev.i10 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %17 = ptrtoint ptr %udev.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev.i10, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i11 = shl i32 %20, 8
  %or.i12 = or i32 %shl.i.i11, -2147483648
  %call27.i13 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i12, i8 noundef zeroext -73, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf.i5, i16 noundef zeroext 8, i32 noundef 500) #7
  tail call void @mutex_unlock(ptr noundef %i2c_mutex.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i14, %if.end.i.cleanup_crit_edge, %technisat_usb2_set_led.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @technisat_usb2_read_mac_address(ptr noundef %d, ptr nocapture noundef writeonly %mac) #2 align 64 {
entry:
  %bo.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %buf, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bo.i) #7
  %7 = ptrtoint ptr %bo.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -8, ptr %bo.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 83, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bo.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 83, ptr %arrayinit.element.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 8, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf, ptr %buf13.i, align 4
  %i2c_adap.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %entry.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge

entry.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %technisat_usb2_eeprom_lrc_read.exit.thread

if.end.i:                                         ; preds = %entry
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf, align 8
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %0, align 1
  %xor1.1.i.i = xor i8 %21, %19
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 2
  %xor1.2.i.i = xor i8 %xor1.1.i.i, %23
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %2, align 1
  %xor1.3.i.i = xor i8 %xor1.2.i.i, %25
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %3, align 4
  %xor1.4.i.i = xor i8 %xor1.3.i.i, %27
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %4, align 1
  %xor1.5.i.i = xor i8 %xor1.4.i.i, %29
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %xor1.5.i.i, i8 %31)
  %cmp22.i = icmp eq i8 %xor1.5.i.i, %31
  br i1 %cmp22.i, label %if.end.i.if.end_crit_edge, label %while.cond.1.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.1.i:                                   ; preds = %if.end.i
  %call.1.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.1.i)
  %cmp.not.1.i = icmp eq i32 %call.1.i, 2
  br i1 %cmp.not.1.i, label %if.end.1.i, label %while.cond.1.i.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge

while.cond.1.i.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge: ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %technisat_usb2_eeprom_lrc_read.exit.thread

if.end.1.i:                                       ; preds = %while.cond.1.i
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buf, align 8
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %0, align 1
  %xor1.1.i.1.i = xor i8 %35, %33
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %1, align 2
  %xor1.2.i.1.i = xor i8 %xor1.1.i.1.i, %37
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %2, align 1
  %xor1.3.i.1.i = xor i8 %xor1.2.i.1.i, %39
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %3, align 4
  %xor1.4.i.1.i = xor i8 %xor1.3.i.1.i, %41
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %4, align 1
  %xor1.5.i.1.i = xor i8 %xor1.4.i.1.i, %43
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %xor1.5.i.1.i, i8 %45)
  %cmp22.1.i = icmp eq i8 %xor1.5.i.1.i, %45
  br i1 %cmp22.1.i, label %if.end.1.i.if.end_crit_edge, label %while.cond.2.i

if.end.1.i.if.end_crit_edge:                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.2.i:                                   ; preds = %if.end.1.i
  %call.2.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.2.i)
  %cmp.not.2.i = icmp eq i32 %call.2.i, 2
  br i1 %cmp.not.2.i, label %if.end.2.i, label %while.cond.2.i.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge

while.cond.2.i.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge: ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %technisat_usb2_eeprom_lrc_read.exit.thread

if.end.2.i:                                       ; preds = %while.cond.2.i
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %buf, align 8
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %0, align 1
  %xor1.1.i.2.i = xor i8 %49, %47
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %1, align 2
  %xor1.2.i.2.i = xor i8 %xor1.1.i.2.i, %51
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %2, align 1
  %xor1.3.i.2.i = xor i8 %xor1.2.i.2.i, %53
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %3, align 4
  %xor1.4.i.2.i = xor i8 %xor1.3.i.2.i, %55
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %4, align 1
  %xor1.5.i.2.i = xor i8 %xor1.4.i.2.i, %57
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %xor1.5.i.2.i, i8 %59)
  %cmp22.2.i = icmp eq i8 %xor1.5.i.2.i, %59
  br i1 %cmp22.2.i, label %if.end.2.i.if.end_crit_edge, label %while.cond.3.i

if.end.2.i.if.end_crit_edge:                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.3.i:                                   ; preds = %if.end.2.i
  %call.3.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.3.i)
  %cmp.not.3.i = icmp eq i32 %call.3.i, 2
  br i1 %cmp.not.3.i, label %if.end.3.i, label %while.cond.3.i.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge

while.cond.3.i.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge: ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %technisat_usb2_eeprom_lrc_read.exit.thread

if.end.3.i:                                       ; preds = %while.cond.3.i
  %60 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %buf, align 8
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %0, align 1
  %xor1.1.i.3.i = xor i8 %63, %61
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %1, align 2
  %xor1.2.i.3.i = xor i8 %xor1.1.i.3.i, %65
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %2, align 1
  %xor1.3.i.3.i = xor i8 %xor1.2.i.3.i, %67
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %3, align 4
  %xor1.4.i.3.i = xor i8 %xor1.3.i.3.i, %69
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %4, align 1
  %xor1.5.i.3.i = xor i8 %xor1.4.i.3.i, %71
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %xor1.5.i.3.i, i8 %73)
  %cmp22.3.i = icmp eq i8 %xor1.5.i.3.i, %73
  br i1 %cmp22.3.i, label %if.end.3.i.if.end_crit_edge, label %if.end.3.i.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge

if.end.3.i.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %technisat_usb2_eeprom_lrc_read.exit.thread

if.end.3.i.if.end_crit_edge:                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

technisat_usb2_eeprom_lrc_read.exit.thread:       ; preds = %if.end.3.i.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge, %while.cond.3.i.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge, %while.cond.2.i.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge, %while.cond.1.i.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge, %entry.technisat_usb2_eeprom_lrc_read.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bo.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.3.i.if.end_crit_edge, %if.end.2.i.if.end_crit_edge, %if.end.1.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bo.i) #7
  %74 = call ptr @memcpy(ptr %mac, ptr %buf, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %technisat_usb2_eeprom_lrc_read.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %technisat_usb2_eeprom_lrc_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @technisat_usb2_identify_state(ptr noundef %udev, ptr nocapture noundef readnone %props, ptr nocapture noundef readnone %desc, ptr nocapture noundef writeonly %cold) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 3) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @usb_set_interface(ptr noundef %udev, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  %.str.27..str.24 = select i1 %cmp.not, ptr @.str.27, ptr @.str.24
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.27..str.24) #10
  %1 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cold, align 4
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %udev, align 8
  %shl.i = shl i32 %3, 8
  %or11 = or i32 %shl.i, -2147483520
  %call12 = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or11, i8 noundef zeroext -75, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 3, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end.if.end23_crit_edge, label %do.end18

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %call7.i, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %arrayidx20 = getelementptr i8, ptr %call7.i, i32 2
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx20, align 2
  %conv21 = zext i8 %7 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %conv21) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end18, %if.end.if.end23_crit_edge
  %storemerge = phi i32 [ 0, %do.end18 ], [ 1, %if.end.if.end23_crit_edge ]
  %8 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge, ptr %cold, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @technisat_usb2_rc_query(ptr noundef %d) #2 align 64 {
entry:
  %ev.i = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev.i) #7
  %2 = ptrtoint ptr %ev.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %ev.i, align 8, !annotation !156
  %buf1.i = getelementptr inbounds %struct.technisat_usb2_state, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -72, ptr %buf1.i, align 1
  %arrayidx2.i = getelementptr %struct.technisat_usb2_state, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr %struct.technisat_usb2_state, ptr %1, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -113, ptr %arrayidx3.i, align 1
  %arrayidx4.i = getelementptr %struct.technisat_usb2_state, ptr %1, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 35, ptr %arrayidx4.i, align 1
  %arrayidx5.i = getelementptr %struct.technisat_usb2_state, ptr %1, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 95, ptr %arrayidx5.i, align 1
  %i2c_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 7
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.technisat_usb2_get_ir.exit.thread_crit_edge, label %if.end.i

entry.technisat_usb2_get_ir.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %technisat_usb2_get_ir.exit.thread

if.end.i:                                         ; preds = %entry
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call8.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i, i8 noundef zeroext -72, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf1.i, i16 noundef zeroext 5, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %unlock.thread.i, label %unlock.i

unlock.thread.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %i2c_mutex.i) #7
  br label %technisat_usb2_get_ir.exit.thread

unlock.i:                                         ; preds = %if.end.i
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx2.i, align 1
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx3.i, align 1
  %14 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i79.i = shl i32 %17, 8
  %or18.i = or i32 %shl.i79.i, -2147483520
  %call19.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or18.i, i8 noundef zeroext -72, i8 noundef zeroext -64, i16 noundef zeroext -32640, i16 noundef zeroext 0, ptr noundef %buf1.i, i16 noundef zeroext 62, i32 noundef 500) #7
  tail call void @mutex_unlock(ptr noundef %i2c_mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp21.i = icmp slt i32 %call19.i, 0
  br i1 %cmp21.i, label %unlock.i.technisat_usb2_get_ir.exit.thread_crit_edge, label %if.end23.i

unlock.i.technisat_usb2_get_ir.exit.thread_crit_edge: ; preds = %unlock.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %technisat_usb2_get_ir.exit.thread

if.end23.i:                                       ; preds = %unlock.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19.i)
  %cmp24.i = icmp eq i32 %call19.i, 1
  br i1 %cmp24.i, label %if.end.thread, label %if.end26.i

if.end.thread:                                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev.i) #7
  br label %cleanup

if.end26.i:                                       ; preds = %if.end23.i
  %pulse.i = getelementptr inbounds %struct.ir_raw_event, ptr %ev.i, i32 0, i32 2
  %18 = ptrtoint ptr %pulse.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %pulse.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %pulse.i, align 1
  %rc_dev47.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %if.end37.i.for.body.i_crit_edge, %if.end26.i
  %i.082.i = phi i32 [ 1, %if.end26.i ], [ %inc.i, %if.end37.i.for.body.i_crit_edge ]
  %arrayidx28.i = getelementptr i8, ptr %buf1.i, i32 %i.082.i
  %19 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx28.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp29.i = icmp eq i8 %20, -1
  %21 = ptrtoint ptr %pulse.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load33.i = load i8, ptr %pulse.i, align 1
  br i1 %cmp29.i, label %if.then31.i, label %if.end37.i

if.then31.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear34.i = and i8 %bf.load33.i, 127
  %22 = ptrtoint ptr %pulse.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %bf.clear34.i, ptr %pulse.i, align 1
  %23 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1778, ptr %ev.i, align 8
  %24 = ptrtoint ptr %rc_dev47.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rc_dev47.i, align 8
  %call36.i = call i32 @ir_raw_event_store(ptr noundef %25, ptr noundef nonnull %ev.i) #7
  br label %if.end3

if.end37.i:                                       ; preds = %for.body.i
  %bf.set43.i = xor i8 %bf.load33.i, -128
  %26 = ptrtoint ptr %pulse.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bf.set43.i, ptr %pulse.i, align 1
  %27 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx28.i, align 1
  %conv45.i = zext i8 %28 to i32
  %mul46.i = mul i32 %conv45.i, 21333248
  %div.i = sdiv i32 %mul46.i, 1000000
  %29 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div.i, ptr %ev.i, align 8
  %30 = ptrtoint ptr %rc_dev47.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rc_dev47.i, align 8
  %call48.i = call i32 @ir_raw_event_store(ptr noundef %31, ptr noundef nonnull %ev.i) #7
  %inc.i = add nuw nsw i32 %i.082.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %if.end37.i.if.end3_crit_edge, label %if.end37.i.for.body.i_crit_edge

if.end37.i.for.body.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end37.i.if.end3_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

technisat_usb2_get_ir.exit.thread:                ; preds = %unlock.i.technisat_usb2_get_ir.exit.thread_crit_edge, %unlock.thread.i, %entry.technisat_usb2_get_ir.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call8.i, %unlock.thread.i ], [ %call19.i, %unlock.i.technisat_usb2_get_ir.exit.thread_crit_edge ], [ -11, %entry.technisat_usb2_get_ir.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev.i) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end37.i.if.end3_crit_edge, %if.then31.i
  %32 = ptrtoint ptr %rc_dev47.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rc_dev47.i, align 8
  call void @ir_raw_event_handle(ptr noundef %33) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev.i) #7
  %34 = load i32, ptr @disable_led_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp eq i32 %34, 0
  br i1 %tobool.not, label %if.end.i11, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i11:                                       ; preds = %if.end3
  %35 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv.i, align 8
  %buf.i = getelementptr inbounds %struct.technisat_usb2_state, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -73, ptr %buf.i, align 1
  %arrayidx5.i12 = getelementptr %struct.technisat_usb2_state, ptr %36, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %arrayidx5.i12 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -126, ptr %arrayidx5.i12, align 1
  %39 = getelementptr %struct.technisat_usb2_state, ptr %36, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %39, align 1
  %41 = getelementptr %struct.technisat_usb2_state, ptr %36, i32 0, i32 4, i32 3
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 10, ptr %41, align 1
  %43 = getelementptr %struct.technisat_usb2_state, ptr %36, i32 0, i32 4, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 10, ptr %43, align 1
  %arrayidx15.i = getelementptr %struct.technisat_usb2_state, ptr %36, i32 0, i32 4, i32 5
  %45 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %arrayidx15.i, align 1
  %call.i14 = call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp18.i = icmp slt i32 %call.i14, 0
  br i1 %cmp18.i, label %if.end.i11.cleanup_crit_edge, label %if.end21.i

if.end.i11.cleanup_crit_edge:                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21.i:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %udev.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i16 = shl i32 %49, 8
  %or.i17 = or i32 %shl.i.i16, -2147483648
  %call27.i = call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or.i17, i8 noundef zeroext -73, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf.i, i16 noundef zeroext 8, i32 noundef 500) #7
  call void @mutex_unlock(ptr noundef %i2c_mutex.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %if.end.i11.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %technisat_usb2_get_ir.exit.thread, %if.end.thread
  %retval.0 = phi i32 [ 0, %if.end3.cleanup_crit_edge ], [ %retval.0.i.ph, %technisat_usb2_get_ir.exit.thread ], [ 0, %if.end.thread ], [ 0, %if.end.i11.cleanup_crit_edge ], [ 0, %if.end21.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @technisat_usb2_set_voltage(ptr noundef %fe, i32 noundef %voltage) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %voltage, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %gpio.sroa.0.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ 1, %sw.bb2 ], [ 1, %sw.bb ]
  %gpio.sroa.6.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ 1, %sw.bb2 ], [ 0, %sw.bb ]
  %1 = load ptr, ptr getelementptr inbounds (%struct.stv090x_config, ptr @technisat_usb2_stv090x_config, i32 0, i32 28), align 4
  %call = tail call i32 %1(ptr noundef %fe, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %gpio.sroa.0.0, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6.not = icmp eq i32 %call, 0
  br i1 %cmp6.not, label %for.cond, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %sw.epilog
  %2 = load ptr, ptr getelementptr inbounds (%struct.stv090x_config, ptr @technisat_usb2_stv090x_config, i32 0, i32 28), align 4
  %call.1 = tail call i32 %2(ptr noundef %fe, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext %gpio.sroa.6.0, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp6.not.1 = icmp eq i32 %call.1, 0
  br i1 %cmp6.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load ptr, ptr getelementptr inbounds (%struct.stv090x_config, ptr @technisat_usb2_stv090x_config, i32 0, i32 28), align 4
  %call.2 = tail call i32 %3(ptr noundef %fe, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp6.not.2 = icmp eq i32 %call.2, 0
  %spec.select = select i1 %cmp6.not.2, i32 0, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %for.cond.1, %for.cond.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %sw.epilog.cleanup_crit_edge ], [ -121, %for.cond.cleanup_crit_edge ], [ %spec.select, %for.cond.1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @technisat_usb2_set_led(ptr noundef %d, i32 noundef %red, i32 noundef %st) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %buf = getelementptr inbounds %struct.technisat_usb2_state, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %red)
  %tobool.not = icmp eq i32 %red, 0
  %conv = select i1 %tobool.not, i8 -74, i8 -73
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %buf, align 1
  %3 = load i32, ptr @disable_led_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %st)
  %cmp.not = icmp eq i32 %st, 0
  %or.cond = or i1 %cmp.not, %tobool1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %st to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %st, label %sw.bb16 [
    i32 2, label %sw.bb
    i32 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3 = getelementptr %struct.technisat_usb2_state, ptr %1, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -126, ptr %arrayidx3, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5 = getelementptr %struct.technisat_usb2_state, ptr %1, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -126, ptr %arrayidx5, align 1
  %spec.select = select i1 %tobool.not, i8 -1, i8 2
  %spec.select3 = select i1 %tobool.not, i8 50, i8 10
  %7 = getelementptr %struct.technisat_usb2_state, ptr %1, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.select, ptr %7, align 1
  %9 = getelementptr %struct.technisat_usb2_state, ptr %1, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select3, ptr %9, align 1
  %11 = getelementptr %struct.technisat_usb2_state, ptr %1, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select3, ptr %11, align 1
  %arrayidx15 = getelementptr %struct.technisat_usb2_state, ptr %1, i32 0, i32 4, i32 5
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %arrayidx15, align 1
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx17 = getelementptr %struct.technisat_usb2_state, ptr %1, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -128, ptr %arrayidx17, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb4, %sw.bb
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 7
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp18 = icmp slt i32 %call, 0
  br i1 %cmp18, label %sw.epilog.cleanup_crit_edge, label %if.end21

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %15 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i = shl i32 %18, 8
  %or = or i32 %shl.i, -2147483648
  %call27 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or, i8 noundef zeroext %conv, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf, i16 noundef zeroext 8, i32 noundef 500) #7
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @technisat_usb2_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp277 = icmp sgt i32 %num, 0
  br i1 %cmp277, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc39.pre-phi, %for.inc.for.body_crit_edge ]
  %add = add nsw i32 %i.078, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp3 = icmp slt i32 %add, %num
  br i1 %cmp3, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then5

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msg, i32 %add
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 4
  %conv8 = trunc i16 %8 to i8
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.078, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf, align 4
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.078, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len, align 4
  %conv11 = trunc i16 %12 to i8
  %buf14 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 3
  %13 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf14, align 4
  %len17 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 2
  %15 = ptrtoint ptr %len17 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %len17, align 4
  %conv18 = trunc i16 %16 to i8
  %call19 = tail call fastcc i32 @technisat_usb2_i2c_access(ptr noundef %6, i8 noundef zeroext %conv8, ptr noundef %10, i8 noundef zeroext %conv11, ptr noundef %14, i8 noundef zeroext %conv18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.then5.for.inc_crit_edge, label %if.then5.for.end_crit_edge

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = add nsw i32 %i.078, 2
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %17 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev, align 4
  %arrayidx25 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.078
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx25, align 4
  %conv27 = trunc i16 %20 to i8
  %buf29 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.078, i32 3
  %21 = ptrtoint ptr %buf29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf29, align 4
  %len31 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.078, i32 2
  %23 = ptrtoint ptr %len31 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %len31, align 4
  %conv32 = trunc i16 %24 to i8
  %call33 = tail call fastcc i32 @technisat_usb2_i2c_access(ptr noundef %18, i8 noundef zeroext %conv27, ptr noundef %22, i8 noundef zeroext %conv32, ptr noundef null, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.else.for.inc_crit_edge, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then5.for.inc_crit_edge
  %inc39.pre-phi = phi i32 [ %.pre, %if.then5.for.inc_crit_edge ], [ %add, %if.else.for.inc_crit_edge ]
  %cmp2 = icmp slt i32 %inc39.pre-phi, %num
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge, %if.then5.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %25 = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %call33, %if.else.for.end_crit_edge ], [ %call19, %if.then5.for.end_crit_edge ], [ %inc39.pre-phi, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %for.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @technisat_usb2_i2c_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @technisat_usb2_i2c_access(ptr noundef %udev, i8 noundef zeroext %device_addr, ptr nocapture noundef readonly %tx, i8 noundef zeroext %txlen, ptr noundef %rx, i8 noundef zeroext %rxlen) unnamed_addr #2 align 64 {
entry:
  %actual_length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length) #7
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_length, align 4, !annotation !156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 64) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %device_addr to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %conv8 = zext i8 %txlen to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %txlen)
  %cmp265.not = icmp eq i8 %txlen, 0
  br i1 %cmp265.not, label %do.end7.do.body23_crit_edge, label %do.end7.do.body10_crit_edge

do.end7.do.body10_crit_edge:                      ; preds = %do.end7
  br label %do.body10

do.end7.do.body23_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23

do.body10:                                        ; preds = %for.inc.do.body10_crit_edge, %do.end7.do.body10_crit_edge
  %loop_.0266 = phi i32 [ %inc, %for.inc.do.body10_crit_edge ], [ 0, %do.end7.do.body10_crit_edge ]
  %3 = load i32, ptr @debug, align 4
  %and11 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.for.inc_crit_edge, label %do.end16

do.body10.for.inc_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %tx, i32 %loop_.0266
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv18 = zext i8 %5 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv18) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end16, %do.body10.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop_.0266, 1
  %exitcond.not = icmp eq i32 %inc, %conv8
  br i1 %exitcond.not, label %for.inc.do.body23_crit_edge, label %for.inc.do.body10_crit_edge

for.inc.do.body10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

for.inc.do.body23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23

do.body23:                                        ; preds = %for.inc.do.body23_crit_edge, %do.end7.do.body23_crit_edge
  %6 = load i32, ptr @debug, align 4
  %and24 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.do.end34_crit_edge, label %do.end29

do.body23.do.end34_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #10
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %do.body23.do.end34_crit_edge
  %7 = load i32, ptr @debug, align 4
  %and36 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.end34.do.end46_crit_edge, label %do.end41

do.end34.do.end46_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

do.end41:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #10
  br label %do.end46

do.end46:                                         ; preds = %do.end41, %do.end34.do.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %txlen)
  %cmp48 = icmp ugt i8 %txlen, 62
  br i1 %cmp48, label %do.end53, label %do.end46.if.end57_crit_edge

do.end46.if.end57_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

do.end53:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  %conv55 = zext i8 %device_addr to i32
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv55) #10
  br label %if.end57

if.end57:                                         ; preds = %do.end53, %do.end46.if.end57_crit_edge
  %txlen.addr.0 = phi i8 [ 62, %do.end53 ], [ %txlen, %do.end46.if.end57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %rxlen)
  %cmp59 = icmp ugt i8 %rxlen, 62
  %conv66 = zext i8 %device_addr to i32
  br i1 %cmp59, label %do.end64, label %if.end57.if.end68_crit_edge

if.end57.if.end68_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %conv66) #10
  br label %if.end68

if.end68:                                         ; preds = %do.end64, %if.end57.if.end68_crit_edge
  %rxlen.addr.0 = phi i8 [ 62, %do.end64 ], [ %rxlen, %if.end57.if.end68_crit_edge ]
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %call7.i, align 8
  %shl = shl i8 %device_addr, 1
  %arrayidx72 = getelementptr i8, ptr %call7.i, i32 1
  %9 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %shl, ptr %arrayidx72, align 1
  %cmp73.not = icmp eq ptr %rx, null
  br i1 %cmp73.not, label %if.end68.if.end84_crit_edge, label %if.then75

if.end68.if.end84_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then75:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %or262 = or i8 %rxlen.addr.0, 64
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or262, ptr %call7.i, align 8
  %11 = or i8 %shl, 1
  %12 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx72, align 1
  br label %if.end84

if.end84:                                         ; preds = %if.then75, %if.end68.if.end84_crit_edge
  %arrayidx85 = getelementptr i8, ptr %call7.i, i32 2
  %conv86 = zext i8 %txlen.addr.0 to i32
  %13 = call ptr @memcpy(ptr %arrayidx85, ptr %tx, i32 %conv86)
  %14 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %udev, align 8
  %shl.i = shl i32 %15, 8
  %or88 = or i32 %shl.i, -1073709056
  %add = add nuw nsw i32 %conv86, 2
  %call90 = tail call i32 @usb_bulk_msg(ptr noundef %udev, i32 noundef %or88, ptr noundef nonnull %call7.i, i32 noundef %add, ptr noundef null, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %do.end96, label %if.end100

do.end96:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %conv66, i32 noundef %call90) #10
  br label %err

if.end100:                                        ; preds = %if.end84
  %16 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %udev, align 8
  %shl.i263 = shl i32 %17, 8
  %or103 = or i32 %shl.i263, -1073708928
  %call104 = call i32 @usb_bulk_msg(ptr noundef %udev, i32 noundef %or103, ptr noundef nonnull %call7.i, i32 noundef 64, ptr noundef nonnull %actual_length, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.end110, label %if.end114

do.end110:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %conv66, i32 noundef %call104) #10
  br label %err

if.end114:                                        ; preds = %if.end100
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %19)
  %cmp117.not = icmp eq i8 %19, 8
  br i1 %cmp117.not, label %if.end114.do.body138_crit_edge, label %do.end122

if.end114.do.body138_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body138

do.end122:                                        ; preds = %if.end114
  %conv116 = zext i8 %19 to i32
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %conv66, i32 noundef %conv116) #10
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %21)
  %cmp130 = icmp eq i8 %21, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %device_addr)
  %cmp133 = icmp eq i8 %device_addr, 96
  %or.cond = and i1 %cmp133, %cmp130
  br i1 %or.cond, label %do.end122.do.body138_crit_edge, label %do.end122.err_crit_edge

do.end122.err_crit_edge:                          ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.end122.do.body138_crit_edge:                   ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body138

do.body138:                                       ; preds = %do.end122.do.body138_crit_edge, %if.end114.do.body138_crit_edge
  %22 = load i32, ptr @debug, align 4
  %and139 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.body138.do.end151_crit_edge, label %do.end144

do.body138.do.end151_crit_edge:                   ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end151

do.end144:                                        ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %call7.i, align 8
  %conv147 = zext i8 %24 to i32
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %conv147) #10
  br label %do.end151

do.end151:                                        ; preds = %do.end144, %do.body138.do.end151_crit_edge
  br i1 %cmp73.not, label %do.end151.do.body206_crit_edge, label %if.then154

do.end151.do.body206_crit_edge:                   ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body206

if.then154:                                       ; preds = %do.end151
  %conv156 = zext i8 %rxlen.addr.0 to i32
  %25 = call ptr @memcpy(ptr %rx, ptr %arrayidx85, i32 %conv156)
  %26 = load i32, ptr @debug, align 4
  %and158 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.then154.do.end169_crit_edge, label %do.end163

if.then154.do.end169_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end169

do.end163:                                        ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #9
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %conv156) #10
  br label %do.end169

do.end169:                                        ; preds = %do.end163, %if.then154.do.end169_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rxlen.addr.0)
  %cmp173268.not = icmp eq i8 %rxlen.addr.0, 0
  br i1 %cmp173268.not, label %do.end169.do.body193_crit_edge, label %do.end169.do.body176_crit_edge

do.end169.do.body176_crit_edge:                   ; preds = %do.end169
  br label %do.body176

do.end169.do.body193_crit_edge:                   ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body193

do.body176:                                       ; preds = %for.inc190.do.body176_crit_edge, %do.end169.do.body176_crit_edge
  %loop_170.0269 = phi i32 [ %inc191, %for.inc190.do.body176_crit_edge ], [ 0, %do.end169.do.body176_crit_edge ]
  %27 = load i32, ptr @debug, align 4
  %and177 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %do.body176.for.inc190_crit_edge, label %do.end182

do.body176.for.inc190_crit_edge:                  ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc190

do.end182:                                        ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx184 = getelementptr i8, ptr %rx, i32 %loop_170.0269
  %28 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx184, align 1
  %conv185 = zext i8 %29 to i32
  %call186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv185) #10
  br label %for.inc190

for.inc190:                                       ; preds = %do.end182, %do.body176.for.inc190_crit_edge
  %inc191 = add nuw nsw i32 %loop_170.0269, 1
  %exitcond271.not = icmp eq i32 %inc191, %conv156
  br i1 %exitcond271.not, label %for.inc190.do.body193_crit_edge, label %for.inc190.do.body176_crit_edge

for.inc190.do.body176_crit_edge:                  ; preds = %for.inc190
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body176

for.inc190.do.body193_crit_edge:                  ; preds = %for.inc190
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body193

do.body193:                                       ; preds = %for.inc190.do.body193_crit_edge, %do.end169.do.body193_crit_edge
  %30 = load i32, ptr @debug, align 4
  %and194 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %do.body193.do.body206_crit_edge, label %do.end199

do.body193.do.body206_crit_edge:                  ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body206

do.end199:                                        ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #9
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #10
  br label %do.body206

do.body206:                                       ; preds = %do.end199, %do.body193.do.body206_crit_edge, %do.end151.do.body206_crit_edge
  %31 = load i32, ptr @debug, align 4
  %and207 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %do.body206.err_crit_edge, label %do.end212

do.body206.err_crit_edge:                         ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.end212:                                        ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #9
  %call214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #10
  br label %err

err:                                              ; preds = %do.end212, %do.body206.err_crit_edge, %do.end122.err_crit_edge, %do.end110, %do.end96
  %ret.0 = phi i32 [ %call90, %do.end96 ], [ %call104, %do.end110 ], [ %call104, %do.end212 ], [ %call104, %do.body206.err_crit_edge ], [ %call104, %do.end122.err_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !32, !34, !35, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !64, !66, !67, !68, !69, !70, !72, !73, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !98, !100, !101, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype386, !1, !"__UNIQUE_ID_adapter_nrtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr387, !1, !"__UNIQUE_ID_adapter_nr387", i1 false, i1 false}
!4 = !{ptr @__param_debug, !5, !"__param_debug", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 39, i32 1}
!6 = !{ptr @__UNIQUE_ID_debugtype388, !5, !"__UNIQUE_ID_debugtype388", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_debug389, !8, !"__UNIQUE_ID_debug389", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 40, i32 1}
!9 = !{ptr @__param_disable_led_control, !10, !"__param_disable_led_control", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 47, i32 1}
!11 = !{ptr @__UNIQUE_ID_disable_led_controltype390, !10, !"__UNIQUE_ID_disable_led_controltype390", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_disable_led_control391, !13, !"__UNIQUE_ID_disable_led_control391", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 48, i32 1}
!14 = !{ptr @__initcall__kmod_dvb_usb_technisat_usb2__392_801_technisat_usb2_driver_init6, !15, !"__initcall__kmod_dvb_usb_technisat_usb2__392_801_technisat_usb2_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 801, i32 1}
!16 = !{ptr @__exitcall_technisat_usb2_driver_exit, !15, !"__exitcall_technisat_usb2_driver_exit", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author393, !18, !"__UNIQUE_ID_author393", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 803, i32 1}
!19 = !{ptr @__UNIQUE_ID_description394, !20, !"__UNIQUE_ID_description394", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 804, i32 1}
!21 = !{ptr @__UNIQUE_ID_version395, !22, !"__UNIQUE_ID_version395", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 805, i32 1}
!23 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__modver_attr, !22, !"__modver_attr", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_file396, !28, !"__UNIQUE_ID_file396", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 806, i32 1}
!29 = !{ptr @__UNIQUE_ID_license397, !28, !"__UNIQUE_ID_license397", i1 false, i1 false}
!30 = !{ptr @debug, !31, !"debug", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 38, i32 12}
!32 = !{ptr @disable_led_control, !33, !"disable_led_control", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 46, i32 12}
!34 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!35 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!36 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!37 = !{ptr @__param_str_debug, !5, !"__param_str_debug", i1 false, i1 false}
!38 = !{ptr @__param_str_disable_led_control, !10, !"__param_str_disable_led_control", i1 false, i1 false}
!39 = !{ptr @technisat_usb2_driver, !40, !"technisat_usb2_driver", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 794, i32 26}
!41 = !{ptr @technisat_usb2_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 770, i32 4}
!43 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @technisat_usb2_probe.__key.4, !42, !"__key", i1 false, i1 false}
!45 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.6, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 705, i32 23}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 748, i32 18}
!50 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 749, i32 18}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 740, i32 7}
!54 = !{ptr @technisat_usb2_devices, !55, !"technisat_usb2_devices", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 699, i32 41}
!56 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 523, i32 21}
!58 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @technisat_usb2_frontend_attach._entry, !57, !"_entry", i1 false, i1 false}
!63 = !{ptr @technisat_usb2_frontend_attach._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 529, i32 9}
!66 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @technisat_usb2_frontend_attach._entry.18, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @technisat_usb2_frontend_attach._entry_ptr.20, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 564, i32 5}
!72 = !{ptr @technisat_usb2_frontend_attach._entry.21, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @technisat_usb2_frontend_attach._entry_ptr.23, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @technisat_usb2_stv090x_config, !75, !"technisat_usb2_stv090x_config", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 495, i32 30}
!76 = !{ptr @technisat_usb2_stv6110x_config, !77, !"technisat_usb2_stv6110x_config", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 512, i32 31}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 345, i32 3}
!80 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @technisat_usb2_identify_state._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @technisat_usb2_identify_state._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 347, i32 3}
!85 = !{ptr @technisat_usb2_identify_state._entry.26, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @technisat_usb2_identify_state._entry_ptr.28, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 360, i32 3}
!89 = !{ptr @technisat_usb2_identify_state._entry.29, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @technisat_usb2_identify_state._entry_ptr.31, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @technisat_usb2_i2c_algo, !92, !"technisat_usb2_i2c_algo", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 202, i32 29}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 94, i32 2}
!95 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @technisat_usb2_i2c_access._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @technisat_usb2_i2c_access._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 95, i32 2}
!100 = !{ptr @technisat_usb2_i2c_access._entry.34, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @technisat_usb2_i2c_access._entry_ptr.36, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @technisat_usb2_i2c_access._entry.37, !99, !"_entry", i1 false, i1 false}
!104 = !{ptr @technisat_usb2_i2c_access._entry_ptr.39, !99, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 96, i32 2}
!107 = !{ptr @technisat_usb2_i2c_access._entry.40, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @technisat_usb2_i2c_access._entry_ptr.42, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 99, i32 3}
!111 = !{ptr @technisat_usb2_i2c_access._entry.43, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @technisat_usb2_i2c_access._entry_ptr.45, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 104, i32 3}
!115 = !{ptr @technisat_usb2_i2c_access._entry.46, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @technisat_usb2_i2c_access._entry_ptr.48, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 124, i32 3}
!119 = !{ptr @technisat_usb2_i2c_access._entry.49, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @technisat_usb2_i2c_access._entry_ptr.51, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 132, i32 3}
!123 = !{ptr @technisat_usb2_i2c_access._entry.52, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @technisat_usb2_i2c_access._entry_ptr.54, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 137, i32 3}
!127 = !{ptr @technisat_usb2_i2c_access._entry.55, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @technisat_usb2_i2c_access._entry_ptr.57, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 145, i32 2}
!131 = !{ptr @technisat_usb2_i2c_access._entry.58, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @technisat_usb2_i2c_access._entry_ptr.60, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 150, i32 3}
!135 = !{ptr @technisat_usb2_i2c_access._entry.61, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @technisat_usb2_i2c_access._entry_ptr.63, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @technisat_usb2_i2c_access._entry.64, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 151, i32 3}
!139 = !{ptr @technisat_usb2_i2c_access._entry_ptr.65, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @technisat_usb2_i2c_access._entry.66, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @technisat_usb2_i2c_access._entry_ptr.67, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @technisat_usb2_i2c_access._entry.68, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 154, i32 2}
!144 = !{ptr @technisat_usb2_i2c_access._entry_ptr.69, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @technisat_usb2_id_table, !146, !"technisat_usb2_id_table", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/dvb-usb/technisat-usb2.c", i32 692, i32 29}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{!"auto-init"}
