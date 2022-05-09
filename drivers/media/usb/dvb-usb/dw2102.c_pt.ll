; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/dw2102.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/dw2102.c"
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
%struct.anon.132 = type { i32 }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.131 }
%union.anon.131 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32 }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.anon.134 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.si21xx_config = type { i8, i32 }
%struct.stv0288_config = type { i8, ptr, i32, ptr }
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
%struct.stv0900_config = type { i8, i8, i32, i8, i8, i8, i8, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.stb6100_config = type { i8, i32 }
%struct.stv6110_config = type { i8, i32, i8, i8 }
%struct.cx24116_config = type { i8, ptr, ptr, i8, i16 }
%struct.ds3000_config = type { i8, i8, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tda10023_config = type { i8, i8, i32, i8, i8, i8, i8, i16 }
%struct.mt312_config = type { i8, i8, [2 x i8] }
%struct.m88rs2000_config = type { i8, ptr, i32, ptr }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
%struct.cxd2820r_config = type { i8, i8, i8, i8, i8 }
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
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
%struct.dw2102_state = type { i8, i8, [68 x i8], ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
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
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.m88ds3103_platform_data = type { i32, i16, i32, i32, i32, i8, i8, i8, ptr, ptr, i8 }
%struct.ts2020_config = type { i8, i32, i16, ptr, i8, ptr }

@__param_str_debug = internal constant [21 x i8] c"dvb_usb_dw2102.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_dw2102_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_dw2102_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [34 x i8] c"dvb_usb_dw2102.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [77 x i8] c"dvb_usb_dw2102.parm=debug:set debugging level (1=info 2=xfer 4=rc(or-able)).\00", section ".modinfo", align 1
@__param_str_demod = internal constant [21 x i8] c"dvb_usb_dw2102.demod\00", align 1
@demod_probe = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_demod = internal constant %struct.kernel_param { ptr @__param_str_demod, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @demod_probe } }, section "__param", align 4
@__UNIQUE_ID_demodtype388 = internal constant [34 x i8] c"dvb_usb_dw2102.parmtype=demod:int\00", section ".modinfo", align 1
@__UNIQUE_ID_demod389 = internal constant [99 x i8] c"dvb_usb_dw2102.parm=demod:demod to probe (1=cx24116 2=stv0903+stv6110 4=stv0903+stb6100(or-able)).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_dw2102.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype390 = internal constant [50 x i8] c"dvb_usb_dw2102.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr391 = internal constant [51 x i8] c"dvb_usb_dw2102.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_dw2102__392_2612_dw2102_driver_init6 = internal global ptr @dw2102_driver_init, section ".initcall6.init", align 4
@dw2102_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.3, ptr @dw2102_probe, ptr @dw2102_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw2102_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_dw2102_driver_exit = internal global ptr @dw2102_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author393 = internal constant [60 x i8] c"dvb_usb_dw2102.author=Igor M. Liplianin (c) liplianin@me.by\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [260 x i8] c"dvb_usb_dw2102.description=Driver for DVBWorld DVB-S 2101, 2102, DVB-S2 2104, DVB-C 3101 USB2.0, TeVii S421, S480, S482, S600, S630, S632, S650, TeVii S660, S662, Prof 1100, 7500 USB2.0, Geniatech SU3000, T220, TechnoTrend S2-4600, Terratec Cinergy S2 devices\00", section ".modinfo", align 1
@__UNIQUE_ID_version395 = internal constant [27 x i8] c"dvb_usb_dw2102.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_dw2102\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file396 = internal constant [61 x i8] c"dvb_usb_dw2102.file=drivers/media/usb/dvb-usb/dvb-usb-dw2102\00", section ".modinfo", align 1
@__UNIQUE_ID_license397 = internal constant [27 x i8] c"dvb_usb_dw2102.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware398 = internal constant [42 x i8] c"dvb_usb_dw2102.firmware=dvb-usb-dw2101.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware399 = internal constant [42 x i8] c"dvb_usb_dw2102.firmware=dvb-usb-dw2102.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware400 = internal constant [42 x i8] c"dvb_usb_dw2102.firmware=dvb-usb-dw2104.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware401 = internal constant [42 x i8] c"dvb_usb_dw2102.firmware=dvb-usb-dw3101.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware402 = internal constant [40 x i8] c"dvb_usb_dw2102.firmware=dvb-usb-s630.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware403 = internal constant [40 x i8] c"dvb_usb_dw2102.firmware=dvb-usb-s660.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware404 = internal constant [41 x i8] c"dvb_usb_dw2102.firmware=dvb-usb-p1100.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware405 = internal constant [41 x i8] c"dvb_usb_dw2102.firmware=dvb-usb-p7500.fw\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dw2102\00", [25 x i8] zeroinitializer }, align 32
@dw2102_table = internal global { [31 x %struct.usb_device_id], [184 x i8] } { [31 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1204, i16 8450, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1204, i16 8449, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1204, i16 8452, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -28638, i16 -10672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 100, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1204, i16 12545, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -28638, i16 -10704, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 12305, i16 -20462, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -28638, i16 -10656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 12340, i16 29952, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8013, i16 12288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 -9984, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 168, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -28638, i16 -11135, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -28638, i16 -11134, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8013, i16 12544, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -28638, i16 -11231, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -28638, i16 -10702, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 261, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5435, i16 4481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5435, i16 4482, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8161, i16 21590, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8013, i16 -11744, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2888, i16 12305, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -28638, i16 -11133, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -28638, i16 -11132, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3277, i16 261, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -28638, i16 -10654, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [184 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb-usb-dw2102.fw\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rc-dm1105-nec\00", [18 x i8] zeroinitializer }, align 32
@dw2102_serit_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dw2102_serit_i2c_transfer, ptr null, ptr null, ptr null, ptr @dw210x_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DVBWorld DVB-S 2102 USB2.0\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DVBWorld DVB-S 2101 USB2.0\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TerraTec Cinergy S USB\00", [41 x i8] zeroinitializer }, align 32
@dw2102_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dw2102_load_firmware, ptr @.str.4, i32 1, i32 0, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @dw2102_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr @dw210x_read_mac_address, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.5, i64 0, i64 512, i32 0, ptr null, ptr @.str.3, ptr @dw2102_rc_query, i32 150, i8 0, i32 0 } }, ptr @dw2102_serit_i2c_algo, i32 129, i32 0, i32 3, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.6, <{ ptr, [14 x ptr] }> <{ ptr @dw2102_table, [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.7, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 24), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.8, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 96), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb-usb-dw2101.fw\00", [46 x i8] zeroinitializer }, align 32
@dw2102_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 1849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"\013dw2102: did not find the firmware file '%s'. You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dw2102_load_firmware\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/dvb-usb/dw2102.c\00", [61 x i8] zeroinitializer }, align 32
@dw2102_load_firmware._entry_ptr = internal global ptr @dw2102_load_firmware._entry, section ".printk_index", align 4
@dw2102_load_firmware._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.13, i32 1857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016dw2102: start downloading DW210X firmware\0A\00", [51 x i8] zeroinitializer }, align 32
@dw2102_load_firmware._entry_ptr.16 = internal global ptr @dw2102_load_firmware._entry.14, section ".printk_index", align 4
@dw2102_load_firmware._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.13, i32 1870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013dw2102: error while transferring firmware\0A\00", [51 x i8] zeroinitializer }, align 32
@dw2102_load_firmware._entry_ptr.19 = internal global ptr @dw2102_load_firmware._entry.17, section ".printk_index", align 4
@dw2102_load_firmware._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.13, i32 1879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013dw2102: could not restart the USB controller CPU.\0A\00", [43 x i8] zeroinitializer }, align 32
@dw2102_load_firmware._entry_ptr.22 = internal global ptr @dw2102_load_firmware._entry.20, section ".printk_index", align 4
@dw2102_load_firmware._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.13, i32 1884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dw2102_load_firmware._entry_ptr.24 = internal global ptr @dw2102_load_firmware._entry.23, section ".printk_index", align 4
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-tevii-nec\00", [19 x i8] zeroinitializer }, align 32
@dw2102_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dw2102_i2c_transfer, ptr null, ptr null, ptr null, ptr @dw210x_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dw2102_earda_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dw2102_earda_i2c_transfer, ptr null, ptr null, ptr null, ptr @dw210x_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.dw2102_i2c_transfer.buf6 = private unnamed_addr constant [7 x i8] c",\05\C0\00\00\00\00", align 1
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@dw2102_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.13, i32 1684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dw2102_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@dw2102_tuner_attach._entry_ptr = internal global ptr @dw2102_tuner_attach._entry, section ".printk_index", align 4
@dw2102_earda_i2c_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.13, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014dw2102: i2c rd: len=%d is not 1!\0A\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dw2102_earda_i2c_transfer\00", [38 x i8] zeroinitializer }, align 32
@dw2102_earda_i2c_transfer._entry_ptr = internal global ptr @dw2102_earda_i2c_transfer._entry, section ".printk_index", align 4
@dw2102_earda_i2c_transfer._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.13, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014dw2102: i2c rd: len=%d is too big!\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@dw2102_earda_i2c_transfer._entry_ptr.34 = internal global ptr @dw2102_earda_i2c_transfer._entry.32, section ".printk_index", align 4
@dw2102_earda_i2c_transfer._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.13, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014dw2102: i2c wr: len=%d is too big!\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@dw2102_earda_i2c_transfer._entry_ptr.37 = internal global ptr @dw2102_earda_i2c_transfer._entry.35, section ".printk_index", align 4
@dw2102_earda_i2c_transfer._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.13, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dw2102_earda_i2c_transfer._entry_ptr.39 = internal global ptr @dw2102_earda_i2c_transfer._entry.38, section ".printk_index", align 4
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si21xx_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:si21xx_attach\00", [43 x i8] zeroinitializer }, align 32
@serit_sp1511lhb_config = internal global { %struct.si21xx_config, [24 x i8] } { %struct.si21xx_config { i8 104, i32 100 }, [24 x i8] zeroinitializer }, align 32
@dw2102_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.13, i32 1252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol si21xx_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dw2102_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@dw2102_frontend_attach._entry_ptr = internal global ptr @dw2102_frontend_attach._entry, section ".printk_index", align 4
@dw2102_frontend_attach._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.13, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016dw2102: Attached si21xx!\0A\00", [36 x i8] zeroinitializer }, align 32
@dw2102_frontend_attach._entry_ptr.46 = internal global ptr @dw2102_frontend_attach._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0288_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0288_attach\00", [42 x i8] zeroinitializer }, align 32
@earda_config = internal global { %struct.stv0288_config, [16 x i8] } { %struct.stv0288_config { i8 104, ptr @stv0288_earda_inittab, i32 100, ptr null }, [16 x i8] zeroinitializer }, align 32
@dw2102_frontend_attach._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.43, ptr @.str.13, i32 1262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0288_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dw2102_frontend_attach._entry_ptr.51 = internal global ptr @dw2102_frontend_attach._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb6000_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stb6000_attach\00", [42 x i8] zeroinitializer }, align 32
@dw2102_frontend_attach._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.43, ptr @.str.13, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stb6000_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dw2102_frontend_attach._entry_ptr.56 = internal global ptr @dw2102_frontend_attach._entry.54, section ".printk_index", align 4
@dw2102_frontend_attach._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.43, ptr @.str.13, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016dw2102: Attached stv0288!\0A\00", [35 x i8] zeroinitializer }, align 32
@dw2102_frontend_attach._entry_ptr.59 = internal global ptr @dw2102_frontend_attach._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0299_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0299_attach\00", [42 x i8] zeroinitializer }, align 32
@sharp_z0194a_config = internal global { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @sharp_z0194a_inittab, i32 88000000, i8 -104, i32 100, ptr @sharp_z0194a_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@dw2102_frontend_attach._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.43, ptr @.str.13, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0299_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dw2102_frontend_attach._entry_ptr.64 = internal global ptr @dw2102_frontend_attach._entry.62, section ".printk_index", align 4
@dw2102_frontend_attach._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.43, ptr @.str.13, i32 1279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016dw2102: Attached stv0299!\0A\00", [35 x i8] zeroinitializer }, align 32
@dw2102_frontend_attach._entry_ptr.67 = internal global ptr @dw2102_frontend_attach._entry.65, section ".printk_index", align 4
@dw210x_set_voltage.command_13v = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\00\01", [30 x i8] zeroinitializer }, align 32
@dw210x_set_voltage.command_18v = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\01\01", [30 x i8] zeroinitializer }, align 32
@dw210x_set_voltage.command_off = internal global { [2 x i8], [30 x i8] } zeroinitializer, align 32
@__const.dw210x_set_voltage.msg = private unnamed_addr constant { i16, i16, i16, [2 x i8], ptr } { i16 6144, i16 0, i16 2, [2 x i8] zeroinitializer, ptr @dw210x_set_voltage.command_off }, align 4
@stv0288_earda_inittab = internal global { [218 x i8], [38 x i8] } { [218 x i8] c"\01W\02 \03\8E\04\8E\05\12\06\00\07\00\09\00\0A\04\0B\00\0C\00\0D\00\0E\D4\0F0\11D\12\03\13H\14\84\15E\16\B7\17\9C\18\00\19\A6\1A\88\1B\8F\1C\F0 \0B!T\22\00#\00+\FF,\F70\001\1E2\143\0F4\095\0C6\057/8\169\BD:\00;\13<\11=0@cA\04B C\00D\00E\00F\00G\00J\00P\10Q6R\09S\94TbU)VdW+XTY\86Z\00[\9B\\\08]\7F^\00_\FFp\00q\00r\00t\00u\00v\00\81\00\82?\83?\84\00\85\00\88\00\89\00\8A\00\8B\00\8C\00\90\00\91\00\92\00\93\00\94\1C\97\00\A0H\A1\00\B0\B8\B1:\B2\10\B3\82\B4\80\B5\82\B6\82\B7\82\B8 \B9\00\F0\00\F1\00\F2\C0\FF\FF", [38 x i8] zeroinitializer }, align 32
@sharp_z0194a_inittab = internal global { [78 x i8], [50 x i8] } { [78 x i8] c"\01\15\020\03\00\04}\055\06@\07\00\08@\09\00\0CQ\0D\82\0E#\10?\11\84\12\B9\15\C9\16\00\17\00\18\00\19\00\1A\00\1FP \00!\00\22\00#\00(\00)\1E*\14+\0F,\09-\05.\011\1F2\193\FC4\93\0FR\FF\FF", [50 x i8] zeroinitializer }, align 32
@dw210x_read_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.13, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013dw2102: read eeprom failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dw210x_read_mac_address\00", [40 x i8] zeroinitializer }, align 32
@dw210x_read_mac_address._entry_ptr = internal global ptr @dw210x_read_mac_address._entry, section ".printk_index", align 4
@dw210x_read_mac_address._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.13, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%02x: \00", [25 x i8] zeroinitializer }, align 32
@dw210x_read_mac_address._entry_ptr.72 = internal global ptr @dw210x_read_mac_address._entry.70, section ".printk_index", align 4
@dw210x_read_mac_address._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.13, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@dw210x_read_mac_address._entry_ptr.75 = internal global ptr @dw210x_read_mac_address._entry.73, section ".printk_index", align 4
@dw210x_read_mac_address._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.13, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dw210x_read_mac_address._entry_ptr.78 = internal global ptr @dw210x_read_mac_address._entry.76, section ".printk_index", align 4
@dw2102_rc_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.13, i32 1709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: rc code: %x, %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dw2102_rc_query\00", [16 x i8] zeroinitializer }, align 32
@dw2102_rc_query._entry_ptr = internal global ptr @dw2102_rc_query._entry, section ".printk_index", align 4
@dw2102_serit_i2c_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.81, ptr @.str.13, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dw2102_serit_i2c_transfer\00", [38 x i8] zeroinitializer }, align 32
@dw2102_serit_i2c_transfer._entry_ptr = internal global ptr @dw2102_serit_i2c_transfer._entry, section ".printk_index", align 4
@dw2102_serit_i2c_transfer._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.81, ptr @.str.13, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dw2102_serit_i2c_transfer._entry_ptr.83 = internal global ptr @dw2102_serit_i2c_transfer._entry.82, section ".printk_index", align 4
@dw2102_serit_i2c_transfer._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.81, ptr @.str.13, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dw2102_serit_i2c_transfer._entry_ptr.85 = internal global ptr @dw2102_serit_i2c_transfer._entry.84, section ".printk_index", align 4
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb-usb-dw2104.fw\00", [46 x i8] zeroinitializer }, align 32
@dw2104_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dw2104_i2c_transfer, ptr null, ptr null, ptr null, ptr @dw210x_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DVBWorld DW2104 USB2.0\00", [41 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TeVii S650 USB2.0\00", [46 x i8] zeroinitializer }, align 32
@dw2104_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dw2102_load_firmware, ptr @.str.86, i32 1, i32 0, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @dw2104_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr @dw210x_read_mac_address, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.5, i64 0, i64 512, i32 0, ptr null, ptr @.str.3, ptr @dw2102_rc_query, i32 150, i8 0, i32 0 } }, ptr @dw2104_i2c_algo, i32 129, i32 0, i32 2, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.87, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 48), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.88, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 72), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0900_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0900_attach\00", [42 x i8] zeroinitializer }, align 32
@dw2104a_stv0900_config = internal global { %struct.stv0900_config, [32 x i8] } { %struct.stv0900_config { i8 106, i8 0, i32 27000000, i8 3, i8 2, i8 3, i8 0, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.13, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0900_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dw2104_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry_ptr = internal global ptr @dw2104_frontend_attach._entry, section ".printk_index", align 4
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb6100_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stb6100_attach\00", [42 x i8] zeroinitializer }, align 32
@dw2104a_stb6100_config = internal global { %struct.stb6100_config, [24 x i8] } { %struct.stb6100_config { i8 96, i32 27000000 }, [24 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.93, ptr @.str.13, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stb6100_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry_ptr.98 = internal global ptr @dw2104_frontend_attach._entry.96, section ".printk_index", align 4
@dw2104_frontend_attach._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.93, ptr @.str.13, i32 1200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016dw2102: Attached STV0900+STB6100!\0A\00", [59 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry_ptr.101 = internal global ptr @dw2104_frontend_attach._entry.99, section ".printk_index", align 4
@dw2104_stv0900_config = internal global { %struct.stv0900_config, [32 x i8] } { %struct.stv0900_config { i8 104, i8 0, i32 8000000, i8 3, i8 2, i8 3, i8 0, ptr null, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.13, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry_ptr.103 = internal global ptr @dw2104_frontend_attach._entry.102, section ".printk_index", align 4
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv6110_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv6110_attach\00", [42 x i8] zeroinitializer }, align 32
@dw2104_stv6110_config = internal global { %struct.stv6110_config, [20 x i8] } { %struct.stv6110_config { i8 96, i32 16000000, i8 0, i8 1 }, [20 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.93, ptr @.str.13, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv6110_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry_ptr.108 = internal global ptr @dw2104_frontend_attach._entry.106, section ".printk_index", align 4
@dw2104_frontend_attach._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.93, ptr @.str.13, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016dw2102: Attached STV0900+STV6110A!\0A\00", [58 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry_ptr.111 = internal global ptr @dw2104_frontend_attach._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24116_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cx24116_attach\00", [42 x i8] zeroinitializer }, align 32
@dw2104_config = internal global { %struct.cx24116_config, [16 x i8] } { %struct.cx24116_config { i8 85, ptr null, ptr null, i8 64, i16 0 }, [16 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.93, ptr @.str.13, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cx24116_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry_ptr.116 = internal global ptr @dw2104_frontend_attach._entry.114, section ".printk_index", align 4
@dw2104_frontend_attach._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.93, ptr @.str.13, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016dw2102: Attached cx24116!\0A\00", [35 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry_ptr.119 = internal global ptr @dw2104_frontend_attach._entry.117, section ".printk_index", align 4
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ds3000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:ds3000_attach\00", [43 x i8] zeroinitializer }, align 32
@dw2104_ds3000_config = internal global { %struct.ds3000_config, [20 x i8] } { %struct.ds3000_config { i8 104, i8 0, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.93, ptr @.str.13, i32 1231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol ds3000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry_ptr.124 = internal global ptr @dw2104_frontend_attach._entry.122, section ".printk_index", align 4
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ts2020_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:ts2020_attach\00", [43 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.93, ptr @.str.13, i32 1234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol ts2020_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry_ptr.129 = internal global ptr @dw2104_frontend_attach._entry.127, section ".printk_index", align 4
@dw2104_frontend_attach._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.93, ptr @.str.13, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016dw2102: Attached DS3000!\0A\00", [36 x i8] zeroinitializer }, align 32
@dw2104_frontend_attach._entry_ptr.132 = internal global ptr @dw2104_frontend_attach._entry.130, section ".printk_index", align 4
@stb6100_set_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.135, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Invalid parameter\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stb6100_set_freq\00", [47 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/dvb-frontends/stb6100_proc.h\00", [53 x i8] zeroinitializer }, align 32
@stb6100_set_freq._entry_ptr = internal global ptr @stb6100_set_freq._entry, section ".printk_index", align 4
@stb6100_get_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.136, ptr @.str.135, i32 23, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stb6100_get_freq\00", [47 x i8] zeroinitializer }, align 32
@stb6100_get_freq._entry_ptr = internal global ptr @stb6100_get_freq._entry, section ".printk_index", align 4
@stb6100_set_bandw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.135, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: Invalid parameter\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stb6100_set_bandw\00", [46 x i8] zeroinitializer }, align 32
@stb6100_set_bandw._entry_ptr = internal global ptr @stb6100_set_bandw._entry, section ".printk_index", align 4
@stb6100_get_bandw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.139, ptr @.str.135, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stb6100_get_bandw\00", [46 x i8] zeroinitializer }, align 32
@stb6100_get_bandw._entry_ptr = internal global ptr @stb6100_get_bandw._entry, section ".printk_index", align 4
@dw2104_ts2020_config = internal global { { i8, i32, i8, i8, ptr, i8, ptr }, [40 x i8] } { { i8, i32, i8, i8, ptr, i8, ptr } { i8 96, i32 1060000, i8 1, i8 0, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@dw2104_i2c_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.141, ptr @.str.13, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dw2104_i2c_transfer\00", [44 x i8] zeroinitializer }, align 32
@dw2104_i2c_transfer._entry_ptr = internal global ptr @dw2104_i2c_transfer._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dw2104_i2c_transfer._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.141, ptr @.str.13, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dw2104_i2c_transfer._entry_ptr.143 = internal global ptr @dw2104_i2c_transfer._entry.142, section ".printk_index", align 4
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb-usb-dw3101.fw\00", [46 x i8] zeroinitializer }, align 32
@dw3101_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dw3101_i2c_transfer, ptr null, ptr null, ptr null, ptr @dw210x_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DVBWorld DVB-C 3101 USB2.0\00", [37 x i8] zeroinitializer }, align 32
@dw3101_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dw2102_load_firmware, ptr @.str.144, i32 1, i32 0, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @dw3101_frontend_attach, ptr @dw3101_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr @dw210x_read_mac_address, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.5, i64 0, i64 512, i32 0, ptr null, ptr @.str.3, ptr @dw2102_rc_query, i32 150, i8 0, i32 0 } }, ptr @dw3101_i2c_algo, i32 129, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.145, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 120), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10023_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10023_attach\00", [41 x i8] zeroinitializer }, align 32
@dw3101_tda10023_config = internal global { %struct.tda10023_config, [16 x i8] } { %struct.tda10023_config { i8 12, i8 1, i32 0, i8 0, i8 0, i8 0, i8 0, i16 0 }, [16 x i8] zeroinitializer }, align 32
@dw3101_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.13, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10023_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dw3101_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@dw3101_frontend_attach._entry_ptr = internal global ptr @dw3101_frontend_attach._entry, section ".printk_index", align 4
@dw3101_frontend_attach._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.13, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016dw2102: Attached tda10023!\0A\00", [34 x i8] zeroinitializer }, align 32
@dw3101_frontend_attach._entry_ptr.153 = internal global ptr @dw3101_frontend_attach._entry.151, section ".printk_index", align 4
@dw3101_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.154, ptr @.str.13, i32 1691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dw3101_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@dw3101_tuner_attach._entry_ptr = internal global ptr @dw3101_tuner_attach._entry, section ".printk_index", align 4
@dw3101_i2c_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.155, ptr @.str.13, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dw3101_i2c_transfer\00", [44 x i8] zeroinitializer }, align 32
@dw3101_i2c_transfer._entry_ptr = internal global ptr @dw3101_i2c_transfer._entry, section ".printk_index", align 4
@dw3101_i2c_transfer._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.155, ptr @.str.13, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dw3101_i2c_transfer._entry_ptr.157 = internal global ptr @dw3101_i2c_transfer._entry.156, section ".printk_index", align 4
@dw3101_i2c_transfer._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.155, ptr @.str.13, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dw3101_i2c_transfer._entry_ptr.159 = internal global ptr @dw3101_i2c_transfer._entry.158, section ".printk_index", align 4
@dw3101_i2c_transfer._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.155, ptr @.str.13, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%02x:%02x: %s \00", [17 x i8] zeroinitializer }, align 32
@dw3101_i2c_transfer._entry_ptr.162 = internal global ptr @dw3101_i2c_transfer._entry.160, section ".printk_index", align 4
@.str.163 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c">>>\00", [28 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<<<\00", [28 x i8] zeroinitializer }, align 32
@dw3101_i2c_transfer._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.155, ptr @.str.13, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dw3101_i2c_transfer._entry_ptr.166 = internal global ptr @dw3101_i2c_transfer._entry.165, section ".printk_index", align 4
@dw3101_i2c_transfer._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.155, ptr @.str.13, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dw3101_i2c_transfer._entry_ptr.168 = internal global ptr @dw3101_i2c_transfer._entry.167, section ".printk_index", align 4
@.str.169 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb-usb-s630.fw\00", [16 x i8] zeroinitializer }, align 32
@s6x0_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @s6x0_i2c_transfer, ptr null, ptr null, ptr null, ptr @dw210x_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TeVii S630 USB\00", [17 x i8] zeroinitializer }, align 32
@s6x0_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dw2102_load_firmware, ptr @.str.169, i32 1, i32 88, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @zl100313_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr @s6x0_read_mac_address, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.25, i64 0, i64 512, i32 0, ptr null, ptr @.str.3, ptr @dw2102_rc_query, i32 150, i8 0, i32 0 } }, ptr @s6x0_i2c_algo, i32 129, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.170, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 144), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt312_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:mt312_attach\00", [44 x i8] zeroinitializer }, align 32
@zl313_config = internal global { %struct.mt312_config, [28 x i8] } { %struct.mt312_config { i8 14, i8 0, [2 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@zl100313_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.13, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol mt312_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zl100313_frontend_attach\00", [39 x i8] zeroinitializer }, align 32
@zl100313_frontend_attach._entry_ptr = internal global ptr @zl100313_frontend_attach._entry, section ".printk_index", align 4
@.str.176 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10039_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10039_attach\00", [42 x i8] zeroinitializer }, align 32
@zl100313_frontend_attach._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.175, ptr @.str.13, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10039_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@zl100313_frontend_attach._entry_ptr.180 = internal global ptr @zl100313_frontend_attach._entry.178, section ".printk_index", align 4
@zl100313_frontend_attach._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.175, ptr @.str.13, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016dw2102: Attached zl100313+zl10039!\0A\00", [58 x i8] zeroinitializer }, align 32
@zl100313_frontend_attach._entry_ptr.183 = internal global ptr @zl100313_frontend_attach._entry.181, section ".printk_index", align 4
@s6x0_read_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.184, ptr @.str.13, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s6x0_read_mac_address\00", [42 x i8] zeroinitializer }, align 32
@s6x0_read_mac_address._entry_ptr = internal global ptr @s6x0_read_mac_address._entry, section ".printk_index", align 4
@s6x0_read_mac_address._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.184, ptr @.str.13, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s6x0_read_mac_address._entry_ptr.186 = internal global ptr @s6x0_read_mac_address._entry.185, section ".printk_index", align 4
@s6x0_read_mac_address._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.184, ptr @.str.13, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s6x0_read_mac_address._entry_ptr.188 = internal global ptr @s6x0_read_mac_address._entry.187, section ".printk_index", align 4
@s6x0_read_mac_address._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.184, ptr @.str.13, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s6x0_read_mac_address._entry_ptr.190 = internal global ptr @s6x0_read_mac_address._entry.189, section ".printk_index", align 4
@s6x0_i2c_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.191, ptr @.str.13, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s6x0_i2c_transfer\00", [46 x i8] zeroinitializer }, align 32
@s6x0_i2c_transfer._entry_ptr = internal global ptr @s6x0_i2c_transfer._entry, section ".printk_index", align 4
@s6x0_i2c_transfer._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.191, ptr @.str.13, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s6x0_i2c_transfer._entry_ptr.193 = internal global ptr @s6x0_i2c_transfer._entry.192, section ".printk_index", align 4
@s6x0_i2c_transfer._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.191, ptr @.str.13, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s6x0_i2c_transfer._entry_ptr.195 = internal global ptr @s6x0_i2c_transfer._entry.194, section ".printk_index", align 4
@.str.196 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb-usb-p1100.fw\00", [47 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-tbs-nec\00", [21 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Prof 1100 USB \00", [17 x i8] zeroinitializer }, align 32
@p1100_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dw2102_load_firmware, ptr @.str.196, i32 1, i32 88, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @stv0288_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr @s6x0_read_mac_address, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.197, i64 0, i64 512, i32 0, ptr null, ptr @.str.3, ptr @prof_rc_query, i32 150, i8 0, i32 0 } }, ptr @s6x0_i2c_algo, i32 129, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.198, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 168), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@stv0288_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.200, ptr @.str.13, i32 1318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stv0288_frontend_attach\00", [40 x i8] zeroinitializer }, align 32
@stv0288_frontend_attach._entry_ptr = internal global ptr @stv0288_frontend_attach._entry, section ".printk_index", align 4
@stv0288_frontend_attach._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.200, ptr @.str.13, i32 1323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv0288_frontend_attach._entry_ptr.202 = internal global ptr @stv0288_frontend_attach._entry.201, section ".printk_index", align 4
@stv0288_frontend_attach._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.200, ptr @.str.13, i32 1330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016dw2102: Attached stv0288+stb6000!\0A\00", [59 x i8] zeroinitializer }, align 32
@stv0288_frontend_attach._entry_ptr.205 = internal global ptr @stv0288_frontend_attach._entry.203, section ".printk_index", align 4
@prof_rc_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.206, ptr @.str.13, i32 1730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"prof_rc_query\00", [18 x i8] zeroinitializer }, align 32
@prof_rc_query._entry_ptr = internal global ptr @prof_rc_query._entry, section ".printk_index", align 4
@.str.207 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb-usb-s660.fw\00", [16 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TeVii S660 USB\00", [17 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TeVii S480.1 USB\00", [47 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TeVii S480.2 USB\00", [47 x i8] zeroinitializer }, align 32
@s660_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dw2102_load_firmware, ptr @.str.207, i32 1, i32 88, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @ds3000_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr @s6x0_read_mac_address, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.25, i64 0, i64 512, i32 0, ptr null, ptr @.str.3, ptr @dw2102_rc_query, i32 150, i8 0, i32 0 } }, ptr @s6x0_i2c_algo, i32 129, i32 0, i32 3, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.208, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 192), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.209, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 312), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.210, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 336), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@s660_ds3000_config = internal global { %struct.ds3000_config, [20 x i8] } { %struct.ds3000_config { i8 104, i8 1, ptr null, ptr @dw210x_led_ctrl }, [20 x i8] zeroinitializer }, align 32
@ds3000_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.212, ptr @.str.13, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ds3000_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@ds3000_frontend_attach._entry_ptr = internal global ptr @ds3000_frontend_attach._entry, section ".printk_index", align 4
@ds3000_frontend_attach._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.212, ptr @.str.13, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ds3000_frontend_attach._entry_ptr.214 = internal global ptr @ds3000_frontend_attach._entry.213, section ".printk_index", align 4
@ds3000_frontend_attach._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.212, ptr @.str.13, i32 1355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016dw2102: Attached ds3000+ts2020!\0A\00", [61 x i8] zeroinitializer }, align 32
@ds3000_frontend_attach._entry_ptr.217 = internal global ptr @ds3000_frontend_attach._entry.215, section ".printk_index", align 4
@dw210x_led_ctrl.led_off = internal global { [1 x i8], [31 x i8] } zeroinitializer, align 32
@dw210x_led_ctrl.led_on = internal global { [1 x i8], [31 x i8] } { [1 x i8] c"\01", [31 x i8] zeroinitializer }, align 32
@__const.dw210x_led_ctrl.msg = private unnamed_addr constant { i16, i16, i16, [2 x i8], ptr } { i16 6912, i16 0, i16 1, [2 x i8] zeroinitializer, ptr @dw210x_led_ctrl.led_off }, align 4
@s660_ts2020_config = internal global { { i8, i32, i8, i8, ptr, i8, ptr }, [40 x i8] } { { i8, i32, i8, i8, ptr, i8, ptr } { i8 96, i32 1146000, i8 1, i8 0, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb-usb-p7500.fw\00", [47 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Prof 7500 USB DVB-S2\00", [43 x i8] zeroinitializer }, align 32
@p7500_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr @dw2102_load_firmware, ptr @.str.219, i32 1, i32 88, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @prof_7500_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr @s6x0_read_mac_address, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.197, i64 0, i64 512, i32 0, ptr null, ptr @.str.3, ptr @prof_rc_query, i32 150, i8 0, i32 0 } }, ptr @s6x0_i2c_algo, i32 129, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.220, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 216), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@prof_7500_stv0900_config = internal global { %struct.stv0900_config, [32 x i8] } { %struct.stv0900_config { i8 106, i8 0, i32 27000000, i8 3, i8 2, i8 3, i8 0, ptr null, i8 0, i8 0, i8 0, i8 0, i8 3, i8 0, ptr null, ptr @dw210x_led_ctrl }, [32 x i8] zeroinitializer }, align 32
@prof_7500_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.222, ptr @.str.13, i32 1365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"prof_7500_frontend_attach\00", [38 x i8] zeroinitializer }, align 32
@prof_7500_frontend_attach._entry_ptr = internal global ptr @prof_7500_frontend_attach._entry, section ".printk_index", align 4
@prof_7500_frontend_attach._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.222, ptr @.str.13, i32 1373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016dw2102: Attached STV0900+STB6100A!\0A\00", [58 x i8] zeroinitializer }, align 32
@prof_7500_frontend_attach._entry_ptr.225 = internal global ptr @prof_7500_frontend_attach._entry.223, section ".printk_index", align 4
@.str.226 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rc-su3000\00", [22 x i8] zeroinitializer }, align 32
@su3000_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @su3000_i2c_transfer, ptr null, ptr null, ptr null, ptr @dw210x_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TeVii S421 PCI\00", [17 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TeVii S632 USB\00", [17 x i8] zeroinitializer }, align 32
@s421_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr null, ptr null, i32 0, i32 88, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @su3000_streaming_ctrl, ptr null, ptr null, ptr @m88rs2000_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @su3000_power_ctrl, ptr @su3000_read_mac_address, ptr @su3000_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.226, i64 0, i64 4, i32 0, ptr null, ptr @.str.3, ptr @su3000_rc_query, i32 150, i8 0, i32 0 } }, ptr @su3000_i2c_algo, i32 1, i32 0, i32 2, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.227, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 384), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.228, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 408), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@su3000_streaming_ctrl.command_start = internal global { [1 x i8], [31 x i8] } zeroinitializer, align 32
@su3000_streaming_ctrl.command_stop = internal global { [1 x i8], [31 x i8] } { [1 x i8] c"\01", [31 x i8] zeroinitializer }, align 32
@m88rs2000_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.231, ptr @.str.13, i32 1505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013dw2102: command 0x51 transfer failed.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"m88rs2000_frontend_attach\00", [38 x i8] zeroinitializer }, align 32
@m88rs2000_frontend_attach._entry_ptr = internal global ptr @m88rs2000_frontend_attach._entry, section ".printk_index", align 4
@.str.232 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m88rs2000_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"symbol:m88rs2000_attach\00", [40 x i8] zeroinitializer }, align 32
@s421_m88rs2000_config = internal global { %struct.m88rs2000_config, [16 x i8] } { %struct.m88rs2000_config { i8 104, ptr @m88rs2000_inittab, i32 0, ptr null }, [16 x i8] zeroinitializer }, align 32
@m88rs2000_frontend_attach._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.231, ptr @.str.13, i32 1511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013DVB: Unable to find symbol m88rs2000_attach()\0A\00", [47 x i8] zeroinitializer }, align 32
@m88rs2000_frontend_attach._entry_ptr.236 = internal global ptr @m88rs2000_frontend_attach._entry.234, section ".printk_index", align 4
@m88rs2000_frontend_attach._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.231, ptr @.str.13, i32 1518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@m88rs2000_frontend_attach._entry_ptr.238 = internal global ptr @m88rs2000_frontend_attach._entry.237, section ".printk_index", align 4
@m88rs2000_frontend_attach._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.231, ptr @.str.13, i32 1519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016dw2102: Attached RS2000/TS2020!\0A\00", [61 x i8] zeroinitializer }, align 32
@m88rs2000_frontend_attach._entry_ptr.241 = internal global ptr @m88rs2000_frontend_attach._entry.239, section ".printk_index", align 4
@m88rs2000_frontend_attach._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.231, ptr @.str.13, i32 1523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016dw2102: Failed to attach RS2000/TS2020!\0A\00", [53 x i8] zeroinitializer }, align 32
@m88rs2000_frontend_attach._entry_ptr.244 = internal global ptr @m88rs2000_frontend_attach._entry.242, section ".printk_index", align 4
@m88rs2000_inittab = internal global { [45 x i8], [51 x i8] } { [45 x i8] c"\01\9A0\01\00\01\10\19\00\01\00\00\01\9A\B0\01\81\C1\01\81\81\01\86\C6\01\9A0\01\F0\80\01\F1\BF\01\B0E\01\B2\01\01\9A\B0\FF\AA\FF", [51 x i8] zeroinitializer }, align 32
@su3000_power_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.246, ptr @.str.13, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016dw2102: %s: %d, initialized %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"su3000_power_ctrl\00", [46 x i8] zeroinitializer }, align 32
@su3000_power_ctrl._entry_ptr = internal global ptr @su3000_power_ctrl._entry, section ".printk_index", align 4
@su3000_identify_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.248, ptr @.str.13, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016dw2102: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"su3000_identify_state\00", [42 x i8] zeroinitializer }, align 32
@su3000_identify_state._entry_ptr = internal global ptr @su3000_identify_state._entry, section ".printk_index", align 4
@su3000_rc_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.249, ptr @.str.13, i32 1752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"su3000_rc_query\00", [16 x i8] zeroinitializer }, align 32
@su3000_rc_query._entry_ptr = internal global ptr @su3000_rc_query._entry, section ".printk_index", align 4
@su3000_i2c_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.13, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013dw2102: i2c transfer failed.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"su3000_i2c_transfer\00", [44 x i8] zeroinitializer }, align 32
@su3000_i2c_transfer._entry_ptr = internal global ptr @su3000_i2c_transfer._entry, section ".printk_index", align 4
@su3000_i2c_transfer._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.13, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@su3000_i2c_transfer._entry_ptr.253 = internal global ptr @su3000_i2c_transfer._entry.252, section ".printk_index", align 4
@su3000_i2c_transfer._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.251, ptr @.str.13, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@su3000_i2c_transfer._entry_ptr.255 = internal global ptr @su3000_i2c_transfer._entry.254, section ".printk_index", align 4
@su3000_i2c_transfer._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.13, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@su3000_i2c_transfer._entry_ptr.257 = internal global ptr @su3000_i2c_transfer._entry.256, section ".printk_index", align 4
@su3000_i2c_transfer._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.251, ptr @.str.13, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@su3000_i2c_transfer._entry_ptr.259 = internal global ptr @su3000_i2c_transfer._entry.258, section ".printk_index", align 4
@su3000_i2c_transfer._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.251, ptr @.str.13, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@su3000_i2c_transfer._entry_ptr.261 = internal global ptr @su3000_i2c_transfer._entry.260, section ".printk_index", align 4
@su3000_i2c_transfer._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.13, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@su3000_i2c_transfer._entry_ptr.263 = internal global ptr @su3000_i2c_transfer._entry.262, section ".printk_index", align 4
@su3000_i2c_transfer._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.251, ptr @.str.13, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014dw2102: more than 2 i2c messages at a time is not handled yet.\0A\00", [62 x i8] zeroinitializer }, align 32
@su3000_i2c_transfer._entry_ptr.266 = internal global ptr @su3000_i2c_transfer._entry.264, section ".printk_index", align 4
@.str.267 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SU3000HD DVB-S USB2.0\00", [42 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Hauppauge MAX S2 or WinTV NOVA HD USB2.0\00", [55 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Terratec Cinergy S2 USB HD\00", [37 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"X3M TV SPC1400HD PCI\00", [43 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Terratec Cinergy S2 USB HD Rev.2\00", [63 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Terratec Cinergy S2 USB HD Rev.3\00", [63 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Terratec Cinergy S2 PCIe Dual Port 1\00", [59 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Terratec Cinergy S2 PCIe Dual Port 2\00", [59 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"GOTVIEW Satellite HD\00", [43 x i8] zeroinitializer }, align 32
@su3000_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> } { i32 1, i32 0, ptr null, ptr null, i32 0, i32 88, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @su3000_streaming_ctrl, ptr null, ptr null, ptr @su3000_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @su3000_power_ctrl, ptr @su3000_read_mac_address, ptr @su3000_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.226, i64 0, i64 4, i32 0, ptr null, ptr @.str.3, ptr @su3000_rc_query, i32 150, i8 0, i32 0 } }, ptr @su3000_i2c_algo, i32 1, i32 0, i32 9, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.267, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 240), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.268, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 264), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.269, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 288), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.270, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 360), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.271, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 432), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.272, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 456), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.273, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 504), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.274, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 528), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.275, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 552), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@su3000_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.278, ptr @.str.13, i32 1390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013dw2102: command 0x0e transfer failed.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"su3000_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@su3000_frontend_attach._entry_ptr = internal global ptr @su3000_frontend_attach._entry, section ".printk_index", align 4
@su3000_frontend_attach._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.278, ptr @.str.13, i32 1397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@su3000_frontend_attach._entry_ptr.280 = internal global ptr @su3000_frontend_attach._entry.279, section ".printk_index", align 4
@su3000_frontend_attach._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.278, ptr @.str.13, i32 1405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@su3000_frontend_attach._entry_ptr.282 = internal global ptr @su3000_frontend_attach._entry.281, section ".printk_index", align 4
@su3000_frontend_attach._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.278, ptr @.str.13, i32 1412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@su3000_frontend_attach._entry_ptr.284 = internal global ptr @su3000_frontend_attach._entry.283, section ".printk_index", align 4
@su3000_frontend_attach._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.278, ptr @.str.13, i32 1417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@su3000_frontend_attach._entry_ptr.286 = internal global ptr @su3000_frontend_attach._entry.285, section ".printk_index", align 4
@su3000_ds3000_config = internal global { %struct.ds3000_config, [20 x i8] } { %struct.ds3000_config { i8 104, i8 1, ptr null, ptr @dw210x_led_ctrl }, [20 x i8] zeroinitializer }, align 32
@su3000_frontend_attach._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.278, ptr @.str.13, i32 1422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@su3000_frontend_attach._entry_ptr.288 = internal global ptr @su3000_frontend_attach._entry.287, section ".printk_index", align 4
@su3000_frontend_attach._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.278, ptr @.str.13, i32 1428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@su3000_frontend_attach._entry_ptr.290 = internal global ptr @su3000_frontend_attach._entry.289, section ".printk_index", align 4
@su3000_frontend_attach._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.278, ptr @.str.13, i32 1429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016dw2102: Attached DS3000/TS2020!\0A\00", [61 x i8] zeroinitializer }, align 32
@su3000_frontend_attach._entry_ptr.293 = internal global ptr @su3000_frontend_attach._entry.291, section ".printk_index", align 4
@su3000_frontend_attach._entry.294 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.295, ptr @.str.278, ptr @.str.13, i32 1433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016dw2102: Failed to attach DS3000/TS2020!\0A\00", [53 x i8] zeroinitializer }, align 32
@su3000_frontend_attach._entry_ptr.296 = internal global ptr @su3000_frontend_attach._entry.294, section ".printk_index", align 4
@.str.297 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Geniatech T220 DVB-T/T2 USB2.0\00", [33 x i8] zeroinitializer }, align 32
@t220_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> } { i32 1, i32 0, ptr null, ptr null, i32 0, i32 88, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @su3000_streaming_ctrl, ptr null, ptr null, ptr @t220_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @su3000_power_ctrl, ptr @su3000_read_mac_address, ptr @su3000_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.226, i64 0, i64 4, i32 0, ptr null, ptr @.str.3, ptr @su3000_rc_query, i32 150, i8 0, i32 0 } }, ptr @su3000_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.297, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 576), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@t220_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.299, ptr @.str.13, i32 1449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"t220_frontend_attach\00", [43 x i8] zeroinitializer }, align 32
@t220_frontend_attach._entry_ptr = internal global ptr @t220_frontend_attach._entry, section ".printk_index", align 4
@t220_frontend_attach._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.299, ptr @.str.13, i32 1456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@t220_frontend_attach._entry_ptr.301 = internal global ptr @t220_frontend_attach._entry.300, section ".printk_index", align 4
@t220_frontend_attach._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.299, ptr @.str.13, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@t220_frontend_attach._entry_ptr.303 = internal global ptr @t220_frontend_attach._entry.302, section ".printk_index", align 4
@t220_frontend_attach._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.299, ptr @.str.13, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@t220_frontend_attach._entry_ptr.305 = internal global ptr @t220_frontend_attach._entry.304, section ".printk_index", align 4
@t220_frontend_attach._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.299, ptr @.str.13, i32 1477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@t220_frontend_attach._entry_ptr.307 = internal global ptr @t220_frontend_attach._entry.306, section ".printk_index", align 4
@.str.308 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxd2820r_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:cxd2820r_attach\00", [41 x i8] zeroinitializer }, align 32
@cxd2820r_config = internal global { %struct.cxd2820r_config, [27 x i8] } { %struct.cxd2820r_config { i8 108, i8 56, i8 1, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@t220_frontend_attach._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.299, ptr @.str.13, i32 1482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol cxd2820r_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@t220_frontend_attach._entry_ptr.312 = internal global ptr @t220_frontend_attach._entry.310, section ".printk_index", align 4
@.str.313 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18271_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda18271_attach\00", [41 x i8] zeroinitializer }, align 32
@tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr null, i32 0, i32 2, i32 1, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@t220_frontend_attach._entry.315 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.316, ptr @.str.299, ptr @.str.13, i32 1485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda18271_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@t220_frontend_attach._entry_ptr.317 = internal global ptr @t220_frontend_attach._entry.315, section ".printk_index", align 4
@t220_frontend_attach._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.299, ptr @.str.13, i32 1486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016dw2102: Attached TDA18271HD/CXD2820R!\0A\00", [55 x i8] zeroinitializer }, align 32
@t220_frontend_attach._entry_ptr.320 = internal global ptr @t220_frontend_attach._entry.318, section ".printk_index", align 4
@t220_frontend_attach._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.322, ptr @.str.299, ptr @.str.13, i32 1491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016dw2102: Failed to attach TDA18271HD/CXD2820R!\0A\00", [47 x i8] zeroinitializer }, align 32
@t220_frontend_attach._entry_ptr.323 = internal global ptr @t220_frontend_attach._entry.321, section ".printk_index", align 4
@.str.324 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-tt-1500\00", [21 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TechnoTrend TT-connect S2-4600\00", [33 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TeVii S482 (tuner 1)\00", [43 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TeVii S482 (tuner 2)\00", [43 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Terratec Cinergy S2 USB BOX\00", [36 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TeVii S662\00", [21 x i8] zeroinitializer }, align 32
@tt_s2_4600_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> } { i32 1, i32 0, ptr null, ptr null, i32 0, i32 88, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @su3000_streaming_ctrl, ptr null, ptr null, ptr @tt_s2_4600_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 8, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @su3000_power_ctrl, ptr @su3000_read_mac_address, ptr @su3000_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.324, i64 0, i64 4, i32 0, ptr null, ptr @.str.3, ptr @su3000_rc_query, i32 250, i8 0, i32 0 } }, ptr @su3000_i2c_algo, i32 1, i32 0, i32 5, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.325, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 600), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.326, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 624), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.327, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 648), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.328, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 672), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.329, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dw2102_table, i64 696), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@tt_s2_4600_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.331, ptr @.str.13, i32 1568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tt_s2_4600_frontend_attach\00", [37 x i8] zeroinitializer }, align 32
@tt_s2_4600_frontend_attach._entry_ptr = internal global ptr @tt_s2_4600_frontend_attach._entry, section ".printk_index", align 4
@tt_s2_4600_frontend_attach._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.331, ptr @.str.13, i32 1575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tt_s2_4600_frontend_attach._entry_ptr.333 = internal global ptr @tt_s2_4600_frontend_attach._entry.332, section ".printk_index", align 4
@tt_s2_4600_frontend_attach._entry.334 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.331, ptr @.str.13, i32 1583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tt_s2_4600_frontend_attach._entry_ptr.335 = internal global ptr @tt_s2_4600_frontend_attach._entry.334, section ".printk_index", align 4
@tt_s2_4600_frontend_attach._entry.336 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.331, ptr @.str.13, i32 1590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tt_s2_4600_frontend_attach._entry_ptr.337 = internal global ptr @tt_s2_4600_frontend_attach._entry.336, section ".printk_index", align 4
@tt_s2_4600_frontend_attach._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.331, ptr @.str.13, i32 1595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tt_s2_4600_frontend_attach._entry_ptr.339 = internal global ptr @tt_s2_4600_frontend_attach._entry.338, section ".printk_index", align 4
@tt_s2_4600_frontend_attach._entry.340 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.341, ptr @.str.331, ptr @.str.13, i32 1609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013dw2102: probing for demodulator failed. Is the external power switched on?\0A\00", [50 x i8] zeroinitializer }, align 32
@tt_s2_4600_frontend_attach._entry_ptr.342 = internal global ptr @tt_s2_4600_frontend_attach._entry.340, section ".printk_index", align 4
@.str.343 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"m88ds3103b\00", [21 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"m88ds3103\00", [22 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ts2022\00", [25 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ts2020\00", [25 x i8] zeroinitializer }, align 32
@tt_s2_4600_frontend_attach_probe_demod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.348, ptr @.str.13, i32 1539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013dw2102: i2c probe for address 0x%x failed.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tt_s2_4600_frontend_attach_probe_demod\00", [57 x i8] zeroinitializer }, align 32
@tt_s2_4600_frontend_attach_probe_demod._entry_ptr = internal global ptr @tt_s2_4600_frontend_attach_probe_demod._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 100, i64 8449, i64 8450, i64 8452, i64 12545, i64 54864]
@__sancov_gen_cov_switch_values.349 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 161]
@__sancov_gen_cov_switch_values.350 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.351 = internal global [6 x i64] [i64 4, i64 16, i64 96, i64 104, i64 6144, i64 6656]
@__sancov_gen_cov_switch_values.352 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.353 = internal global [6 x i64] [i64 4, i64 16, i64 97, i64 104, i64 6144, i64 6656]
@__sancov_gen_cov_switch_values.354 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.355 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.356 = internal global [5 x i64] [i64 3, i64 16, i64 104, i64 6144, i64 6656]
@__sancov_gen_cov_switch_values.357 = internal global [4 x i64] [i64 2, i64 16, i64 6144, i64 6656]
@__sancov_gen_cov_switch_values.358 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.359 = internal global [5 x i64] [i64 3, i64 16, i64 12, i64 96, i64 6656]
@__sancov_gen_cov_switch_values.360 = internal global [5 x i64] [i64 3, i64 16, i64 6144, i64 6656, i64 6912]
@__sancov_gen_cov_switch_values.361 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.362 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.363 = internal global [4 x i64] [i64 2, i64 16, i64 6400, i64 6656]
@___asan_gen_.364 = private unnamed_addr constant [21 x i8] c"dvb_usb_dw2102_debug\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 77, i32 12 }
@___asan_gen_.367 = private unnamed_addr constant [12 x i8] c"demod_probe\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 83, i32 12 }
@___asan_gen_.370 = private unnamed_addr constant [14 x i8] c"dw2102_driver\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2605, i32 26 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2616, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 87, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2606, i32 10 }
@___asan_gen_.388 = private unnamed_addr constant [13 x i8] c"dw2102_table\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1794, i32 29 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1954, i32 14 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1961, i32 15 }
@___asan_gen_.397 = private unnamed_addr constant [22 x i8] c"dw2102_serit_i2c_algo\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 794, i32 29 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1992, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1996, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2000, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant [18 x i8] c"dw2102_properties\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1951, i32 41 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1847, i32 31 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1849, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1857, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1870, i32 5 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1879, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1884, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1890, i32 41 }
@___asan_gen_.451 = private unnamed_addr constant [16 x i8] c"dw2102_i2c_algo\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 789, i32 29 }
@___asan_gen_.454 = private unnamed_addr constant [22 x i8] c"dw2102_earda_i2c_algo\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 799, i32 29 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1683, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 282, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 289, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 314, i32 5 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 332, i32 5 }
@___asan_gen_.502 = private unnamed_addr constant [23 x i8] c"serit_sp1511lhb_config\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1060, i32 29 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1251, i32 22 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1255, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant [13 x i8] c"earda_config\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 124, i32 30 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1261, i32 22 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1264, i32 8 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1267, i32 5 }
@___asan_gen_.559 = private unnamed_addr constant [20 x i8] c"sharp_z0194a_config\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1043, i32 30 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1275, i32 22 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1279, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant [12 x i8] c"command_13v\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 971, i32 12 }
@___asan_gen_.577 = private unnamed_addr constant [12 x i8] c"command_18v\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 972, i32 12 }
@___asan_gen_.580 = private unnamed_addr constant [12 x i8] c"command_off\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 973, i32 12 }
@___asan_gen_.583 = private unnamed_addr constant [22 x i8] c"stv0288_earda_inittab\00", align 1
@___asan_gen_.584 = private unnamed_addr constant [41 x i8] c"../drivers/media/dvb-frontends/eds1547.h\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.584, i32 12, i32 11 }
@___asan_gen_.586 = private unnamed_addr constant [21 x i8] c"sharp_z0194a_inittab\00", align 1
@___asan_gen_.587 = private unnamed_addr constant [40 x i8] c"../drivers/media/dvb-frontends/z0194a.h\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.587, i32 40, i32 11 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 832, i32 4 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 839, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 840, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1708, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 203, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 210, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 232, i32 5 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2010, i32 14 }
@___asan_gen_.640 = private unnamed_addr constant [16 x i8] c"dw2104_i2c_algo\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 804, i32 29 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2047, i32 5 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2051, i32 5 }
@___asan_gen_.649 = private unnamed_addr constant [18 x i8] c"dw2104_properties\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2007, i32 41 }
@___asan_gen_.658 = private unnamed_addr constant [23 x i8] c"dw2104a_stv0900_config\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1097, i32 30 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1188, i32 22 }
@___asan_gen_.676 = private unnamed_addr constant [23 x i8] c"dw2104a_stb6100_config\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1108, i32 30 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1191, i32 8 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1200, i32 5 }
@___asan_gen_.691 = private unnamed_addr constant [22 x i8] c"dw2104_stv0900_config\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1113, i32 30 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1207, i32 22 }
@___asan_gen_.703 = private unnamed_addr constant [22 x i8] c"dw2104_stv6110_config\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1124, i32 30 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1210, i32 8 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1214, i32 5 }
@___asan_gen_.724 = private unnamed_addr constant [14 x i8] c"dw2104_config\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1055, i32 30 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1221, i32 22 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1225, i32 4 }
@___asan_gen_.745 = private unnamed_addr constant [21 x i8] c"dw2104_ds3000_config\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1075, i32 29 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1230, i32 21 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1233, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1236, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 52, i32 4 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 23, i32 4 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 105, i32 4 }
@___asan_gen_.803 = private unnamed_addr constant [46 x i8] c"../drivers/media/dvb-frontends/stb6100_proc.h\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.803, i32 76, i32 4 }
@___asan_gen_.805 = private unnamed_addr constant [21 x i8] c"dw2104_ts2020_config\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1079, i32 29 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 408, i32 6 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 445, i32 6 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2061, i32 14 }
@___asan_gen_.820 = private unnamed_addr constant [16 x i8] c"dw3101_i2c_algo\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 809, i32 29 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2099, i32 5 }
@___asan_gen_.826 = private unnamed_addr constant [18 x i8] c"dw3101_properties\00", align 1
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2058, i32 41 }
@___asan_gen_.835 = private unnamed_addr constant [23 x i8] c"dw3101_tda10023_config\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1066, i32 31 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1288, i32 21 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1291, i32 3 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1690, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 489, i32 4 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 495, i32 4 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 520, i32 5 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 545, i32 3 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 547, i32 3 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2110, i32 14 }
@___asan_gen_.892 = private unnamed_addr constant [14 x i8] c"s6x0_i2c_algo\00", align 1
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 814, i32 29 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2146, i32 4 }
@___asan_gen_.898 = private unnamed_addr constant [16 x i8] c"s6x0_properties\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2106, i32 41 }
@___asan_gen_.907 = private unnamed_addr constant [13 x i8] c"zl313_config\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1071, i32 28 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1299, i32 21 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1302, i32 7 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1305, i32 4 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 871, i32 4 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 879, i32 4 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 880, i32 4 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 611, i32 6 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 646, i32 6 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 666, i32 6 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2157, i32 14 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2163, i32 15 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2193, i32 4 }
@___asan_gen_.973 = private unnamed_addr constant [17 x i8] c"p1100_properties\00", align 1
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2153, i32 41 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1317, i32 21 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1323, i32 14 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1330, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1729, i32 4 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2204, i32 14 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2240, i32 4 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2244, i32 4 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2248, i32 4 }
@___asan_gen_.1009 = private unnamed_addr constant [16 x i8] c"s660_properties\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2200, i32 41 }
@___asan_gen_.1012 = private unnamed_addr constant [19 x i8] c"s660_ds3000_config\00", align 1
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1085, i32 29 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1341, i32 21 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1347, i32 2 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1355, i32 2 }
@___asan_gen_.1030 = private unnamed_addr constant [8 x i8] c"led_off\00", align 1
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1009, i32 12 }
@___asan_gen_.1033 = private unnamed_addr constant [7 x i8] c"led_on\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1010, i32 12 }
@___asan_gen_.1036 = private unnamed_addr constant [19 x i8] c"s660_ts2020_config\00", align 1
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1091, i32 29 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2259, i32 14 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2295, i32 4 }
@___asan_gen_.1045 = private unnamed_addr constant [17 x i8] c"p7500_properties\00", align 1
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2255, i32 41 }
@___asan_gen_.1048 = private unnamed_addr constant [25 x i8] c"prof_7500_stv0900_config\00", align 1
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1130, i32 30 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1364, i32 21 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1373, i32 2 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2394, i32 15 }
@___asan_gen_.1066 = private unnamed_addr constant [16 x i8] c"su3000_i2c_algo\00", align 1
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 819, i32 29 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2425, i32 5 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2429, i32 5 }
@___asan_gen_.1075 = private unnamed_addr constant [16 x i8] c"s421_properties\00", align 1
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2383, i32 41 }
@___asan_gen_.1078 = private unnamed_addr constant [14 x i8] c"command_start\00", align 1
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 890, i32 12 }
@___asan_gen_.1081 = private unnamed_addr constant [13 x i8] c"command_stop\00", align 1
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 891, i32 12 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1505, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant [22 x i8] c"s421_m88rs2000_config\00", align 1
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1178, i32 32 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1509, i32 24 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1516, i32 6 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1519, i32 3 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1523, i32 2 }
@___asan_gen_.1123 = private unnamed_addr constant [18 x i8] c"m88rs2000_inittab\00", align 1
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1160, i32 11 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 909, i32 2 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 962, i32 2 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1751, i32 4 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 717, i32 5 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 723, i32 5 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 729, i32 5 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 744, i32 5 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 751, i32 4 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 757, i32 4 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 771, i32 4 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 776, i32 3 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2344, i32 5 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2348, i32 5 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2352, i32 5 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2356, i32 5 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2360, i32 5 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2364, i32 5 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2368, i32 5 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2372, i32 5 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2376, i32 5 }
@___asan_gen_.1210 = private unnamed_addr constant [18 x i8] c"su3000_properties\00", align 1
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2302, i32 41 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1390, i32 3 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1397, i32 3 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1405, i32 3 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1412, i32 3 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1417, i32 3 }
@___asan_gen_.1234 = private unnamed_addr constant [21 x i8] c"su3000_ds3000_config\00", align 1
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1143, i32 29 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1421, i32 24 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1426, i32 6 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1429, i32 3 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1433, i32 2 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2478, i32 5 }
@___asan_gen_.1258 = private unnamed_addr constant [16 x i8] c"t220_properties\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2436, i32 41 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1449, i32 3 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1456, i32 3 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1463, i32 3 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1472, i32 3 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1477, i32 3 }
@___asan_gen_.1285 = private unnamed_addr constant [16 x i8] c"cxd2820r_config\00", align 1
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1149, i32 31 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1481, i32 24 }
@___asan_gen_.1300 = private unnamed_addr constant [16 x i8] c"tda18271_config\00", align 1
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1155, i32 31 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1484, i32 7 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1486, i32 4 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1491, i32 2 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2496, i32 15 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2527, i32 5 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2531, i32 5 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2535, i32 5 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2539, i32 5 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2543, i32 5 }
@___asan_gen_.1339 = private unnamed_addr constant [22 x i8] c"tt_s2_4600_properties\00", align 1
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 2485, i32 41 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1568, i32 3 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1575, i32 3 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1583, i32 3 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1590, i32 3 }
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1595, i32 3 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1609, i32 3 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1628, i32 28 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1630, i32 28 }
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1649, i32 27 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1652, i32 2 }
@___asan_gen_.1378 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1384 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1385 = private constant [38 x i8] c"../drivers/media/usb/dvb-usb/dw2102.c\00", align 1
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1385, i32 1539, i32 3 }
@llvm.compiler.used = appending global [478 x ptr] [ptr @__UNIQUE_ID_adapter_nr391, ptr @__UNIQUE_ID_adapter_nrtype390, ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_demod389, ptr @__UNIQUE_ID_demodtype388, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_file396, ptr @__UNIQUE_ID_firmware398, ptr @__UNIQUE_ID_firmware399, ptr @__UNIQUE_ID_firmware400, ptr @__UNIQUE_ID_firmware401, ptr @__UNIQUE_ID_firmware402, ptr @__UNIQUE_ID_firmware403, ptr @__UNIQUE_ID_firmware404, ptr @__UNIQUE_ID_firmware405, ptr @__UNIQUE_ID_license397, ptr @__UNIQUE_ID_version395, ptr @__exitcall_dw2102_driver_exit, ptr @__initcall__kmod_dvb_usb_dw2102__392_2612_dw2102_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @__param_demod, ptr @ds3000_frontend_attach._entry, ptr @ds3000_frontend_attach._entry.213, ptr @ds3000_frontend_attach._entry.215, ptr @ds3000_frontend_attach._entry_ptr, ptr @ds3000_frontend_attach._entry_ptr.214, ptr @ds3000_frontend_attach._entry_ptr.217, ptr @dw2102_driver_exit, ptr @dw2102_earda_i2c_transfer._entry, ptr @dw2102_earda_i2c_transfer._entry.32, ptr @dw2102_earda_i2c_transfer._entry.35, ptr @dw2102_earda_i2c_transfer._entry.38, ptr @dw2102_earda_i2c_transfer._entry_ptr, ptr @dw2102_earda_i2c_transfer._entry_ptr.34, ptr @dw2102_earda_i2c_transfer._entry_ptr.37, ptr @dw2102_earda_i2c_transfer._entry_ptr.39, ptr @dw2102_frontend_attach._entry, ptr @dw2102_frontend_attach._entry.44, ptr @dw2102_frontend_attach._entry.49, ptr @dw2102_frontend_attach._entry.54, ptr @dw2102_frontend_attach._entry.57, ptr @dw2102_frontend_attach._entry.62, ptr @dw2102_frontend_attach._entry.65, ptr @dw2102_frontend_attach._entry_ptr, ptr @dw2102_frontend_attach._entry_ptr.46, ptr @dw2102_frontend_attach._entry_ptr.51, ptr @dw2102_frontend_attach._entry_ptr.56, ptr @dw2102_frontend_attach._entry_ptr.59, ptr @dw2102_frontend_attach._entry_ptr.64, ptr @dw2102_frontend_attach._entry_ptr.67, ptr @dw2102_load_firmware._entry, ptr @dw2102_load_firmware._entry.14, ptr @dw2102_load_firmware._entry.17, ptr @dw2102_load_firmware._entry.20, ptr @dw2102_load_firmware._entry.23, ptr @dw2102_load_firmware._entry_ptr, ptr @dw2102_load_firmware._entry_ptr.16, ptr @dw2102_load_firmware._entry_ptr.19, ptr @dw2102_load_firmware._entry_ptr.22, ptr @dw2102_load_firmware._entry_ptr.24, ptr @dw2102_rc_query._entry, ptr @dw2102_rc_query._entry_ptr, ptr @dw2102_serit_i2c_transfer._entry, ptr @dw2102_serit_i2c_transfer._entry.82, ptr @dw2102_serit_i2c_transfer._entry.84, ptr @dw2102_serit_i2c_transfer._entry_ptr, ptr @dw2102_serit_i2c_transfer._entry_ptr.83, ptr @dw2102_serit_i2c_transfer._entry_ptr.85, ptr @dw2102_tuner_attach._entry, ptr @dw2102_tuner_attach._entry_ptr, ptr @dw2104_frontend_attach._entry, ptr @dw2104_frontend_attach._entry.102, ptr @dw2104_frontend_attach._entry.106, ptr @dw2104_frontend_attach._entry.109, ptr @dw2104_frontend_attach._entry.114, ptr @dw2104_frontend_attach._entry.117, ptr @dw2104_frontend_attach._entry.122, ptr @dw2104_frontend_attach._entry.127, ptr @dw2104_frontend_attach._entry.130, ptr @dw2104_frontend_attach._entry.96, ptr @dw2104_frontend_attach._entry.99, ptr @dw2104_frontend_attach._entry_ptr, ptr @dw2104_frontend_attach._entry_ptr.101, ptr @dw2104_frontend_attach._entry_ptr.103, ptr @dw2104_frontend_attach._entry_ptr.108, ptr @dw2104_frontend_attach._entry_ptr.111, ptr @dw2104_frontend_attach._entry_ptr.116, ptr @dw2104_frontend_attach._entry_ptr.119, ptr @dw2104_frontend_attach._entry_ptr.124, ptr @dw2104_frontend_attach._entry_ptr.129, ptr @dw2104_frontend_attach._entry_ptr.132, ptr @dw2104_frontend_attach._entry_ptr.98, ptr @dw2104_i2c_transfer._entry, ptr @dw2104_i2c_transfer._entry.142, ptr @dw2104_i2c_transfer._entry_ptr, ptr @dw2104_i2c_transfer._entry_ptr.143, ptr @dw210x_read_mac_address._entry, ptr @dw210x_read_mac_address._entry.70, ptr @dw210x_read_mac_address._entry.73, ptr @dw210x_read_mac_address._entry.76, ptr @dw210x_read_mac_address._entry_ptr, ptr @dw210x_read_mac_address._entry_ptr.72, ptr @dw210x_read_mac_address._entry_ptr.75, ptr @dw210x_read_mac_address._entry_ptr.78, ptr @dw3101_frontend_attach._entry, ptr @dw3101_frontend_attach._entry.151, ptr @dw3101_frontend_attach._entry_ptr, ptr @dw3101_frontend_attach._entry_ptr.153, ptr @dw3101_i2c_transfer._entry, ptr @dw3101_i2c_transfer._entry.156, ptr @dw3101_i2c_transfer._entry.158, ptr @dw3101_i2c_transfer._entry.160, ptr @dw3101_i2c_transfer._entry.165, ptr @dw3101_i2c_transfer._entry.167, ptr @dw3101_i2c_transfer._entry_ptr, ptr @dw3101_i2c_transfer._entry_ptr.157, ptr @dw3101_i2c_transfer._entry_ptr.159, ptr @dw3101_i2c_transfer._entry_ptr.162, ptr @dw3101_i2c_transfer._entry_ptr.166, ptr @dw3101_i2c_transfer._entry_ptr.168, ptr @dw3101_tuner_attach._entry, ptr @dw3101_tuner_attach._entry_ptr, ptr @m88rs2000_frontend_attach._entry, ptr @m88rs2000_frontend_attach._entry.234, ptr @m88rs2000_frontend_attach._entry.237, ptr @m88rs2000_frontend_attach._entry.239, ptr @m88rs2000_frontend_attach._entry.242, ptr @m88rs2000_frontend_attach._entry_ptr, ptr @m88rs2000_frontend_attach._entry_ptr.236, ptr @m88rs2000_frontend_attach._entry_ptr.238, ptr @m88rs2000_frontend_attach._entry_ptr.241, ptr @m88rs2000_frontend_attach._entry_ptr.244, ptr @prof_7500_frontend_attach._entry, ptr @prof_7500_frontend_attach._entry.223, ptr @prof_7500_frontend_attach._entry_ptr, ptr @prof_7500_frontend_attach._entry_ptr.225, ptr @prof_rc_query._entry, ptr @prof_rc_query._entry_ptr, ptr @s6x0_i2c_transfer._entry, ptr @s6x0_i2c_transfer._entry.192, ptr @s6x0_i2c_transfer._entry.194, ptr @s6x0_i2c_transfer._entry_ptr, ptr @s6x0_i2c_transfer._entry_ptr.193, ptr @s6x0_i2c_transfer._entry_ptr.195, ptr @s6x0_read_mac_address._entry, ptr @s6x0_read_mac_address._entry.185, ptr @s6x0_read_mac_address._entry.187, ptr @s6x0_read_mac_address._entry.189, ptr @s6x0_read_mac_address._entry_ptr, ptr @s6x0_read_mac_address._entry_ptr.186, ptr @s6x0_read_mac_address._entry_ptr.188, ptr @s6x0_read_mac_address._entry_ptr.190, ptr @stb6100_get_bandw._entry, ptr @stb6100_get_bandw._entry_ptr, ptr @stb6100_get_freq._entry, ptr @stb6100_get_freq._entry_ptr, ptr @stb6100_set_bandw._entry, ptr @stb6100_set_bandw._entry_ptr, ptr @stb6100_set_freq._entry, ptr @stb6100_set_freq._entry_ptr, ptr @stv0288_frontend_attach._entry, ptr @stv0288_frontend_attach._entry.201, ptr @stv0288_frontend_attach._entry.203, ptr @stv0288_frontend_attach._entry_ptr, ptr @stv0288_frontend_attach._entry_ptr.202, ptr @stv0288_frontend_attach._entry_ptr.205, ptr @su3000_frontend_attach._entry, ptr @su3000_frontend_attach._entry.279, ptr @su3000_frontend_attach._entry.281, ptr @su3000_frontend_attach._entry.283, ptr @su3000_frontend_attach._entry.285, ptr @su3000_frontend_attach._entry.287, ptr @su3000_frontend_attach._entry.289, ptr @su3000_frontend_attach._entry.291, ptr @su3000_frontend_attach._entry.294, ptr @su3000_frontend_attach._entry_ptr, ptr @su3000_frontend_attach._entry_ptr.280, ptr @su3000_frontend_attach._entry_ptr.282, ptr @su3000_frontend_attach._entry_ptr.284, ptr @su3000_frontend_attach._entry_ptr.286, ptr @su3000_frontend_attach._entry_ptr.288, ptr @su3000_frontend_attach._entry_ptr.290, ptr @su3000_frontend_attach._entry_ptr.293, ptr @su3000_frontend_attach._entry_ptr.296, ptr @su3000_i2c_transfer._entry, ptr @su3000_i2c_transfer._entry.252, ptr @su3000_i2c_transfer._entry.254, ptr @su3000_i2c_transfer._entry.256, ptr @su3000_i2c_transfer._entry.258, ptr @su3000_i2c_transfer._entry.260, ptr @su3000_i2c_transfer._entry.262, ptr @su3000_i2c_transfer._entry.264, ptr @su3000_i2c_transfer._entry_ptr, ptr @su3000_i2c_transfer._entry_ptr.253, ptr @su3000_i2c_transfer._entry_ptr.255, ptr @su3000_i2c_transfer._entry_ptr.257, ptr @su3000_i2c_transfer._entry_ptr.259, ptr @su3000_i2c_transfer._entry_ptr.261, ptr @su3000_i2c_transfer._entry_ptr.263, ptr @su3000_i2c_transfer._entry_ptr.266, ptr @su3000_identify_state._entry, ptr @su3000_identify_state._entry_ptr, ptr @su3000_power_ctrl._entry, ptr @su3000_power_ctrl._entry_ptr, ptr @su3000_rc_query._entry, ptr @su3000_rc_query._entry_ptr, ptr @t220_frontend_attach._entry, ptr @t220_frontend_attach._entry.300, ptr @t220_frontend_attach._entry.302, ptr @t220_frontend_attach._entry.304, ptr @t220_frontend_attach._entry.306, ptr @t220_frontend_attach._entry.310, ptr @t220_frontend_attach._entry.315, ptr @t220_frontend_attach._entry.318, ptr @t220_frontend_attach._entry.321, ptr @t220_frontend_attach._entry_ptr, ptr @t220_frontend_attach._entry_ptr.301, ptr @t220_frontend_attach._entry_ptr.303, ptr @t220_frontend_attach._entry_ptr.305, ptr @t220_frontend_attach._entry_ptr.307, ptr @t220_frontend_attach._entry_ptr.312, ptr @t220_frontend_attach._entry_ptr.317, ptr @t220_frontend_attach._entry_ptr.320, ptr @t220_frontend_attach._entry_ptr.323, ptr @tt_s2_4600_frontend_attach._entry, ptr @tt_s2_4600_frontend_attach._entry.332, ptr @tt_s2_4600_frontend_attach._entry.334, ptr @tt_s2_4600_frontend_attach._entry.336, ptr @tt_s2_4600_frontend_attach._entry.338, ptr @tt_s2_4600_frontend_attach._entry.340, ptr @tt_s2_4600_frontend_attach._entry_ptr, ptr @tt_s2_4600_frontend_attach._entry_ptr.333, ptr @tt_s2_4600_frontend_attach._entry_ptr.335, ptr @tt_s2_4600_frontend_attach._entry_ptr.337, ptr @tt_s2_4600_frontend_attach._entry_ptr.339, ptr @tt_s2_4600_frontend_attach._entry_ptr.342, ptr @tt_s2_4600_frontend_attach_probe_demod._entry, ptr @tt_s2_4600_frontend_attach_probe_demod._entry_ptr, ptr @zl100313_frontend_attach._entry, ptr @zl100313_frontend_attach._entry.178, ptr @zl100313_frontend_attach._entry.181, ptr @zl100313_frontend_attach._entry_ptr, ptr @zl100313_frontend_attach._entry_ptr.180, ptr @zl100313_frontend_attach._entry_ptr.183, ptr @dvb_usb_dw2102_debug, ptr @demod_probe, ptr @dw2102_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @.str.3, ptr @dw2102_table, ptr @.str.4, ptr @.str.5, ptr @dw2102_serit_i2c_algo, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @dw2102_properties, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.25, ptr @dw2102_i2c_algo, ptr @dw2102_earda_i2c_algo, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.40, ptr @.str.41, ptr @serit_sp1511lhb_config, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @earda_config, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @sharp_z0194a_config, ptr @.str.63, ptr @.str.66, ptr @dw210x_set_voltage.command_13v, ptr @dw210x_set_voltage.command_18v, ptr @dw210x_set_voltage.command_off, ptr @stv0288_earda_inittab, ptr @sharp_z0194a_inittab, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.86, ptr @dw2104_i2c_algo, ptr @.str.87, ptr @.str.88, ptr @dw2104_properties, ptr @.str.90, ptr @.str.91, ptr @dw2104a_stv0900_config, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @dw2104a_stb6100_config, ptr @.str.97, ptr @.str.100, ptr @dw2104_stv0900_config, ptr @.str.104, ptr @.str.105, ptr @dw2104_stv6110_config, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @dw2104_config, ptr @.str.115, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @dw2104_ds3000_config, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @dw2104_ts2020_config, ptr @.str.141, ptr @.str.144, ptr @dw3101_i2c_algo, ptr @.str.145, ptr @dw3101_properties, ptr @.str.147, ptr @.str.148, ptr @dw3101_tda10023_config, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.161, ptr @.str.163, ptr @.str.164, ptr @.str.169, ptr @s6x0_i2c_algo, ptr @.str.170, ptr @s6x0_properties, ptr @.str.172, ptr @.str.173, ptr @zl313_config, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.179, ptr @.str.182, ptr @.str.184, ptr @.str.191, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @p1100_properties, ptr @.str.200, ptr @.str.204, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @s660_properties, ptr @s660_ds3000_config, ptr @.str.212, ptr @.str.216, ptr @dw210x_led_ctrl.led_off, ptr @dw210x_led_ctrl.led_on, ptr @s660_ts2020_config, ptr @.str.219, ptr @.str.220, ptr @p7500_properties, ptr @prof_7500_stv0900_config, ptr @.str.222, ptr @.str.224, ptr @.str.226, ptr @su3000_i2c_algo, ptr @.str.227, ptr @.str.228, ptr @s421_properties, ptr @su3000_streaming_ctrl.command_start, ptr @su3000_streaming_ctrl.command_stop, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @s421_m88rs2000_config, ptr @.str.235, ptr @.str.240, ptr @.str.243, ptr @m88rs2000_inittab, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.265, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @su3000_properties, ptr @.str.277, ptr @.str.278, ptr @su3000_ds3000_config, ptr @.str.292, ptr @.str.295, ptr @.str.297, ptr @t220_properties, ptr @.str.299, ptr @.str.308, ptr @.str.309, ptr @cxd2820r_config, ptr @.str.311, ptr @.str.313, ptr @.str.314, ptr @tda18271_config, ptr @.str.316, ptr @.str.319, ptr @.str.322, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @tt_s2_4600_properties, ptr @.str.331, ptr @.str.341, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348], section "llvm.metadata"
@0 = internal global [341 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_dw2102_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_probe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_table to i32), i32 744, i32 928, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_serit_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_load_firmware._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_load_firmware._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_load_firmware._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_load_firmware._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_earda_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_earda_i2c_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_earda_i2c_transfer._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_earda_i2c_transfer._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_earda_i2c_transfer._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serit_sp1511lhb_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_frontend_attach._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @earda_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_frontend_attach._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_frontend_attach._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_frontend_attach._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_z0194a_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_frontend_attach._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_frontend_attach._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw210x_set_voltage.command_13v to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw210x_set_voltage.command_18v to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw210x_set_voltage.command_off to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_earda_inittab to i32), i32 218, i32 256, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_z0194a_inittab to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw210x_read_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw210x_read_mac_address._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw210x_read_mac_address._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw210x_read_mac_address._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_rc_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_serit_i2c_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_serit_i2c_transfer._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2102_serit_i2c_transfer._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104a_stv0900_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104a_stb6100_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_frontend_attach._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_frontend_attach._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_stv0900_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_frontend_attach._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_stv6110_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_frontend_attach._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_frontend_attach._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_frontend_attach._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_frontend_attach._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_ds3000_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_frontend_attach._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_frontend_attach._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_frontend_attach._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_bandw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_bandw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_ts2020_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_i2c_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw2104_i2c_transfer._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw3101_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw3101_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw3101_tda10023_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw3101_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw3101_frontend_attach._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw3101_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw3101_i2c_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw3101_i2c_transfer._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw3101_i2c_transfer._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw3101_i2c_transfer._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw3101_i2c_transfer._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw3101_i2c_transfer._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6x0_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6x0_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl313_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl100313_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl100313_frontend_attach._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl100313_frontend_attach._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6x0_read_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6x0_read_mac_address._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6x0_read_mac_address._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6x0_read_mac_address._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6x0_i2c_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6x0_i2c_transfer._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s6x0_i2c_transfer._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p1100_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_frontend_attach._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_frontend_attach._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prof_rc_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s660_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s660_ds3000_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_frontend_attach._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3000_frontend_attach._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw210x_led_ctrl.led_off to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw210x_led_ctrl.led_on to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s660_ts2020_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p7500_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prof_7500_stv0900_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prof_7500_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prof_7500_frontend_attach._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s421_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_streaming_ctrl.command_start to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_streaming_ctrl.command_stop to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s421_m88rs2000_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_frontend_attach._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_frontend_attach._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_frontend_attach._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_frontend_attach._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_inittab to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_power_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_identify_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_rc_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_i2c_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_i2c_transfer._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_i2c_transfer._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_i2c_transfer._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_i2c_transfer._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_i2c_transfer._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_i2c_transfer._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_i2c_transfer._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_frontend_attach._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_frontend_attach._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_frontend_attach._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_frontend_attach._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_ds3000_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_frontend_attach._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_frontend_attach._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_frontend_attach._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @su3000_frontend_attach._entry.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t220_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t220_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t220_frontend_attach._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t220_frontend_attach._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t220_frontend_attach._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t220_frontend_attach._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_config to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t220_frontend_attach._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t220_frontend_attach._entry.315 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t220_frontend_attach._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t220_frontend_attach._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt_s2_4600_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt_s2_4600_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt_s2_4600_frontend_attach._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt_s2_4600_frontend_attach._entry.334 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt_s2_4600_frontend_attach._entry.336 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt_s2_4600_frontend_attach._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt_s2_4600_frontend_attach._entry.340 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt_s2_4600_frontend_attach_probe_demod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw2102_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @dw2102_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw2102_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @dw2102_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw2102_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @dw2102_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @dw2104_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true3

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @dw3101_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true3.return_crit_edge, label %land.lhs.true6

land.lhs.true3.return_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %call7 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @s6x0_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.return_crit_edge, label %land.lhs.true9

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %call10 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @p1100_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.return_crit_edge, label %land.lhs.true12

land.lhs.true9.return_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %call13 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @s660_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true12.return_crit_edge, label %land.lhs.true15

land.lhs.true12.return_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %call16 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @p7500_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true15.return_crit_edge, label %land.lhs.true18

land.lhs.true15.return_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %call19 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @s421_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true18.return_crit_edge, label %land.lhs.true21

land.lhs.true18.return_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %call22 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @su3000_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true21.return_crit_edge, label %land.lhs.true24

land.lhs.true21.return_crit_edge:                 ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %call25 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @t220_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.return_crit_edge, label %land.lhs.true27

land.lhs.true24.return_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true27:                                  ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @tt_s2_4600_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  %spec.select = select i1 %tobool29.not, i32 0, i32 -19
  br label %return

return:                                           ; preds = %land.lhs.true27, %land.lhs.true24.return_crit_edge, %land.lhs.true21.return_crit_edge, %land.lhs.true18.return_crit_edge, %land.lhs.true15.return_crit_edge, %land.lhs.true12.return_crit_edge, %land.lhs.true9.return_crit_edge, %land.lhs.true6.return_crit_edge, %land.lhs.true3.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true24.return_crit_edge ], [ 0, %land.lhs.true21.return_crit_edge ], [ 0, %land.lhs.true18.return_crit_edge ], [ 0, %land.lhs.true15.return_crit_edge ], [ 0, %land.lhs.true12.return_crit_edge ], [ 0, %land.lhs.true9.return_crit_edge ], [ 0, %land.lhs.true6.return_crit_edge ], [ 0, %land.lhs.true3.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ %spec.select, %land.lhs.true27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw2102_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %i2c_client_tuner = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client_tuner, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %9) #9
  tail call void @i2c_unregister_device(ptr noundef nonnull %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_client_demod = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client_demod, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %driver4 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %driver4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver4, align 4
  %owner5 = getelementptr inbounds %struct.device_driver, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %owner5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner5, align 4
  tail call void @module_put(ptr noundef %15) #9
  tail call void @i2c_unregister_device(ptr noundef nonnull %11) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  tail call void @dvb_usb_device_exit(ptr noundef %intf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw2102_load_firmware(ptr noundef %dev, ptr noundef %frmwr) #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #9
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !714
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 16, i32 8
  %1 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 289, i16 %2)
  %cond = icmp eq i16 %2, 289
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 15
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.10, ptr noundef %dev1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %sw.bb.do.end6_crit_edge, label %do.end

sw.bb.do.end6_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #12
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %frmwr, ptr %fw, align 4
  br label %do.end6

do.end6:                                          ; preds = %sw.default, %sw.bb.do.end6_crit_edge
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #13
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end6.dw210x_op_rw.exit_crit_edge, label %if.end.i143

do.end6.dw210x_op_rw.exit_crit_edge:              ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit

if.end.i143:                                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl i32 %9, 8
  %or3.i = or i32 %shl.i.i, -2147483648
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %call7.i.i, align 8
  %call16.i = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %dw210x_op_rw.exit

dw210x_op_rw.exit:                                ; preds = %if.end.i143, %do.end6.dw210x_op_rw.exit_crit_edge
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i147 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not.i148 = icmp eq ptr %call7.i.i147, null
  br i1 %tobool.not.i148, label %dw210x_op_rw.exit.dw210x_op_rw.exit152_crit_edge, label %if.end.i149

dw210x_op_rw.exit.dw210x_op_rw.exit152_crit_edge: ; preds = %dw210x_op_rw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit152

if.end.i149:                                      ; preds = %dw210x_op_rw.exit
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i144 = shl i32 %13, 8
  %or3.i145 = or i32 %shl.i.i144, -2147483648
  %15 = ptrtoint ptr %call7.i.i147 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %call7.i.i147, align 8
  %call16.i150 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i145, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext -6656, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i147, i16 noundef zeroext 1, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull %call7.i.i147) #9
  br label %dw210x_op_rw.exit152

dw210x_op_rw.exit152:                             ; preds = %if.end.i149, %dw210x_op_rw.exit.dw210x_op_rw.exit152_crit_edge
  %cmp12.not = icmp eq ptr %call9.i, null
  br i1 %cmp12.not, label %dw210x_op_rw.exit152.if.end99_crit_edge, label %if.then14

dw210x_op_rw.exit152.if.end99_crit_edge:          ; preds = %dw210x_op_rw.exit152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then14:                                        ; preds = %dw210x_op_rw.exit152
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 4
  %22 = call ptr @memcpy(ptr %call9.i, ptr %19, i32 %21)
  %23 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp17305.not = icmp eq i32 %23, 0
  br i1 %cmp17305.not, label %if.then14.lor.lhs.false.critedge_crit_edge, label %if.then14.for.body_crit_edge

if.then14.for.body_crit_edge:                     ; preds = %if.then14
  br label %for.body

if.then14.lor.lhs.false.critedge_crit_edge:       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.critedge

for.cond:                                         ; preds = %dw210x_op_rw.exit161
  %add = add i32 %i.0306, 64
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %cmp17 = icmp ult i32 %add, %27
  br i1 %cmp17, label %for.cond.for.body_crit_edge, label %for.cond.lor.lhs.false.critedge_crit_edge

for.cond.lor.lhs.false.critedge_crit_edge:        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.critedge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then14.for.body_crit_edge
  %i.0306 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ 0, %if.then14.for.body_crit_edge ]
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i156 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 64) #14
  %tobool.not.i157 = icmp eq ptr %call7.i.i156, null
  br i1 %tobool.not.i157, label %for.body.do.end26_crit_edge, label %dw210x_op_rw.exit161

for.body.do.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

dw210x_op_rw.exit161:                             ; preds = %for.body
  %shl.i.i153 = shl i32 %29, 8
  %or3.i154 = or i32 %shl.i.i153, -2147483648
  %conv19 = trunc i32 %i.0306 to i16
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %i.0306
  %31 = call ptr @memcpy(ptr %call7.i.i156, ptr %add.ptr, i32 64)
  %call16.i159 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i154, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext %conv19, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i156, i16 noundef zeroext 64, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull %call7.i.i156) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call16.i159)
  %cmp21.not = icmp eq i32 %call16.i159, 64
  br i1 %cmp21.not, label %for.cond, label %dw210x_op_rw.exit161.do.end26_crit_edge

dw210x_op_rw.exit161.do.end26_crit_edge:          ; preds = %dw210x_op_rw.exit161
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

do.end26:                                         ; preds = %dw210x_op_rw.exit161.do.end26_crit_edge, %for.body.do.end26_crit_edge
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %do.end36

lor.lhs.false.critedge:                           ; preds = %for.cond.lor.lhs.false.critedge_crit_edge, %if.then14.lor.lhs.false.critedge_crit_edge
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i165 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not.i166 = icmp eq ptr %call7.i.i165, null
  br i1 %tobool.not.i166, label %lor.lhs.false.critedge.do.end36_crit_edge, label %dw210x_op_rw.exit170

lor.lhs.false.critedge.do.end36_crit_edge:        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

dw210x_op_rw.exit170:                             ; preds = %lor.lhs.false.critedge
  %shl.i.i162 = shl i32 %33, 8
  %or3.i163 = or i32 %shl.i.i162, -2147483648
  %35 = ptrtoint ptr %call7.i.i165 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %call7.i.i165, align 8
  %call16.i168 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i163, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext 32658, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i165, i16 noundef zeroext 1, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull %call7.i.i165) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.i168)
  %cmp31.not = icmp eq i32 %call16.i168, 1
  br i1 %cmp31.not, label %lor.lhs.false41, label %dw210x_op_rw.exit170.do.end36_crit_edge

dw210x_op_rw.exit170.do.end36_crit_edge:          ; preds = %dw210x_op_rw.exit170
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

do.end36:                                         ; preds = %dw210x_op_rw.exit170.do.end36_crit_edge, %lor.lhs.false.critedge.do.end36_crit_edge, %do.end26
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %do.end48

lor.lhs.false41:                                  ; preds = %dw210x_op_rw.exit170
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i174 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not.i175 = icmp eq ptr %call7.i.i174, null
  br i1 %tobool.not.i175, label %lor.lhs.false41.do.end48_crit_edge, label %dw210x_op_rw.exit179

lor.lhs.false41.do.end48_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

dw210x_op_rw.exit179:                             ; preds = %lor.lhs.false41
  %shl.i.i171 = shl i32 %37, 8
  %or3.i172 = or i32 %shl.i.i171, -2147483648
  %39 = ptrtoint ptr %call7.i.i174 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %call7.i.i174, align 8
  %call16.i177 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i172, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext -6656, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i174, i16 noundef zeroext 1, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull %call7.i.i174) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.i177)
  %cmp43.not = icmp eq i32 %call16.i177, 1
  br i1 %cmp43.not, label %dw210x_op_rw.exit179.if.end51_crit_edge, label %dw210x_op_rw.exit179.do.end48_crit_edge

dw210x_op_rw.exit179.do.end48_crit_edge:          ; preds = %dw210x_op_rw.exit179
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

dw210x_op_rw.exit179.if.end51_crit_edge:          ; preds = %dw210x_op_rw.exit179
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

do.end48:                                         ; preds = %dw210x_op_rw.exit179.do.end48_crit_edge, %lor.lhs.false41.do.end48_crit_edge, %do.end36
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %dw210x_op_rw.exit179.if.end51_crit_edge
  %ret.3 = phi i32 [ -22, %do.end48 ], [ 0, %dw210x_op_rw.exit179.if.end51_crit_edge ]
  %40 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %idProduct, align 2
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  %43 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i16 %42, label %if.end51.sw.epilog98_crit_edge [
    i16 -10672, label %sw.bb55
    i16 8452, label %if.end51.sw.bb56_crit_edge
    i16 12545, label %if.end51.sw.bb58_crit_edge
    i16 100, label %if.end51.sw.bb60_crit_edge
    i16 8450, label %if.end51.sw.bb60_crit_edge307
    i16 8449, label %if.end51.sw.bb89_crit_edge
  ]

if.end51.sw.bb89_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb89

if.end51.sw.bb60_crit_edge307:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb60

if.end51.sw.bb60_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb60

if.end51.sw.bb58_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb58

if.end51.sw.bb56_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb56

if.end51.sw.epilog98_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog98

sw.bb55:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @.str.25, ptr getelementptr inbounds ({ i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, ptr @dw2104_properties, i32 0, i32 13, i32 2), align 8
  br label %sw.bb56

sw.bb56:                                          ; preds = %sw.bb55, %if.end51.sw.bb56_crit_edge
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i183 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not.i184 = icmp eq ptr %call7.i.i183, null
  br i1 %tobool.not.i184, label %sw.bb56.sw.bb58_crit_edge, label %if.end.i185

sw.bb56.sw.bb58_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb58

if.end.i185:                                      ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i180 = shl i32 %45, 8
  %or3.i181 = or i32 %shl.i.i180, -2147483648
  %47 = ptrtoint ptr %call7.i.i183 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %call7.i.i183, align 8
  %call16.i186 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i181, i8 noundef zeroext -60, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i183, i16 noundef zeroext 1, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull %call7.i.i183) #9
  br label %sw.bb58

sw.bb58:                                          ; preds = %if.end.i185, %sw.bb56.sw.bb58_crit_edge, %if.end51.sw.bb58_crit_edge
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dev, align 8
  %shl.i.i189 = shl i32 %49, 8
  %or3.i190 = or i32 %shl.i.i189, -2147483648
  %call16.i193 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i190, i8 noundef zeroext -65, i8 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 0, ptr noundef nonnull inttoptr (i32 16 to ptr), i16 noundef zeroext 0, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull inttoptr (i32 16 to ptr)) #9
  br label %sw.epilog98

sw.bb60:                                          ; preds = %if.end51.sw.bb60_crit_edge, %if.end51.sw.bb60_crit_edge307
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dev, align 8
  %shl.i.i195 = shl i32 %51, 8
  %or3.i196 = or i32 %shl.i.i195, -2147483648
  %call16.i199 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i196, i8 noundef zeroext -65, i8 noundef zeroext 64, i16 noundef zeroext 64, i16 noundef zeroext 0, ptr noundef nonnull inttoptr (i32 16 to ptr), i16 noundef zeroext 0, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull inttoptr (i32 16 to ptr)) #9
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i204 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i205 = icmp eq ptr %call7.i.i204, null
  br i1 %tobool.not.i205, label %sw.bb60.dw210x_op_rw.exit209_crit_edge, label %if.end.i206

sw.bb60.dw210x_op_rw.exit209_crit_edge:           ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit209

if.end.i206:                                      ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i201 = shl i32 %53, 8
  %or3.i202 = or i32 %shl.i.i201, -2147483520
  %call16.i207 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i202, i8 noundef zeroext -71, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i204, i16 noundef zeroext 2, i32 noundef 2000) #9
  %55 = ptrtoint ptr %call7.i.i204 to i32
  call void @__asan_load1_noabort(i32 %55)
  %reset16.sroa.0.0.copyload276 = load i8, ptr %call7.i.i204, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i204) #9
  br label %dw210x_op_rw.exit209

dw210x_op_rw.exit209:                             ; preds = %if.end.i206, %sw.bb60.dw210x_op_rw.exit209_crit_edge
  %reset16.sroa.0.0 = phi i8 [ 0, %sw.bb60.dw210x_op_rw.exit209_crit_edge ], [ %reset16.sroa.0.0.copyload276, %if.end.i206 ]
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i213 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i214 = icmp eq ptr %call7.i.i213, null
  br i1 %tobool.not.i214, label %dw210x_op_rw.exit209.dw210x_op_rw.exit218_crit_edge, label %if.end.i215

dw210x_op_rw.exit209.dw210x_op_rw.exit218_crit_edge: ; preds = %dw210x_op_rw.exit209
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit218

if.end.i215:                                      ; preds = %dw210x_op_rw.exit209
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i210 = shl i32 %57, 8
  %or3.i211 = or i32 %shl.i.i210, -2147483520
  %call16.i216 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i211, i8 noundef zeroext -75, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i213, i16 noundef zeroext 2, i32 noundef 2000) #9
  %59 = ptrtoint ptr %call7.i.i213 to i32
  call void @__asan_load1_noabort(i32 %59)
  %reset16.sroa.0.0.copyload277 = load i8, ptr %call7.i.i213, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i213) #9
  br label %dw210x_op_rw.exit218

dw210x_op_rw.exit218:                             ; preds = %if.end.i215, %dw210x_op_rw.exit209.dw210x_op_rw.exit218_crit_edge
  %reset16.sroa.0.1 = phi i8 [ %reset16.sroa.0.0, %dw210x_op_rw.exit209.dw210x_op_rw.exit218_crit_edge ], [ %reset16.sroa.0.0.copyload277, %if.end.i215 ]
  %60 = zext i8 %reset16.sroa.0.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.349)
  switch i8 %reset16.sroa.0.1, label %if.else [
    i8 -95, label %dw210x_op_rw.exit218.if.then74_crit_edge
    i8 -128, label %dw210x_op_rw.exit218.if.then74_crit_edge308
  ]

dw210x_op_rw.exit218.if.then74_crit_edge308:      ; preds = %dw210x_op_rw.exit218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then74

dw210x_op_rw.exit218.if.then74_crit_edge:         ; preds = %dw210x_op_rw.exit218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then74

if.then74:                                        ; preds = %dw210x_op_rw.exit218.if.then74_crit_edge, %dw210x_op_rw.exit218.if.then74_crit_edge308
  store ptr @dw2102_i2c_algo, ptr getelementptr inbounds ({ i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, ptr @dw2102_properties, i32 0, i32 14), align 8
  store ptr @dw2102_tuner_attach, ptr getelementptr inbounds ({ i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, ptr @dw2102_properties, i32 0, i32 9, i32 0, i32 3, i32 0, i32 6), align 8
  br label %sw.epilog98

if.else:                                          ; preds = %dw210x_op_rw.exit218
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i222 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3264, i32 noundef 3) #14
  %tobool.not.i223 = icmp eq ptr %call7.i.i222, null
  br i1 %tobool.not.i223, label %if.else.dw210x_op_rw.exit227_crit_edge, label %if.end.i224

if.else.dw210x_op_rw.exit227_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit227

if.end.i224:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i219 = shl i32 %62, 8
  %or3.i220 = or i32 %shl.i.i219, -2147483648
  %64 = ptrtoint ptr %call7.i.i222 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -48, ptr %call7.i.i222, align 8
  %reset16.sroa.13.0.call7.i.i222.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i222, i32 1
  %65 = ptrtoint ptr %reset16.sroa.13.0.call7.i.i222.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %reset16.sroa.13.0.call7.i.i222.sroa_idx, align 1
  %reset16.sroa.14.0.call7.i.i222.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i222, i32 2
  %66 = ptrtoint ptr %reset16.sroa.14.0.call7.i.i222.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %reset16.sroa.14.0.call7.i.i222.sroa_idx, align 2
  %call16.i225 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i220, i8 noundef zeroext -62, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i222, i16 noundef zeroext 3, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull %call7.i.i222) #9
  br label %dw210x_op_rw.exit227

dw210x_op_rw.exit227:                             ; preds = %if.end.i224, %if.else.dw210x_op_rw.exit227_crit_edge
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i231 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3264, i32 noundef 3) #14
  %tobool.not.i232 = icmp eq ptr %call7.i.i231, null
  br i1 %tobool.not.i232, label %dw210x_op_rw.exit227.sw.bb89_crit_edge, label %dw210x_op_rw.exit236

dw210x_op_rw.exit227.sw.bb89_crit_edge:           ; preds = %dw210x_op_rw.exit227
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb89

dw210x_op_rw.exit236:                             ; preds = %dw210x_op_rw.exit227
  %shl.i.i228 = shl i32 %68, 8
  %or3.i229 = or i32 %shl.i.i228, -2147483520
  %call16.i234 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i229, i8 noundef zeroext -61, i8 noundef zeroext -64, i16 noundef zeroext 209, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i231, i16 noundef zeroext 3, i32 noundef 2000) #9
  %reset16.sroa.14.0.call7.i.i231.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i231, i32 2
  %70 = ptrtoint ptr %reset16.sroa.14.0.call7.i.i231.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %70)
  %reset16.sroa.14.0.copyload289 = load i8, ptr %reset16.sroa.14.0.call7.i.i231.sroa_idx, align 2
  call void @kfree(ptr noundef nonnull %call7.i.i231) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %reset16.sroa.14.0.copyload289)
  %cmp84 = icmp eq i8 %reset16.sroa.14.0.copyload289, 17
  br i1 %cmp84, label %if.then86, label %dw210x_op_rw.exit236.sw.bb89_crit_edge

dw210x_op_rw.exit236.sw.bb89_crit_edge:           ; preds = %dw210x_op_rw.exit236
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb89

if.then86:                                        ; preds = %dw210x_op_rw.exit236
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @dw2102_earda_i2c_algo, ptr getelementptr inbounds ({ i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, ptr @dw2102_properties, i32 0, i32 14), align 8
  br label %sw.epilog98

sw.bb89:                                          ; preds = %dw210x_op_rw.exit236.sw.bb89_crit_edge, %dw210x_op_rw.exit227.sw.bb89_crit_edge, %if.end51.sw.bb89_crit_edge
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i240 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i241 = icmp eq ptr %call7.i.i240, null
  br i1 %tobool.not.i241, label %sw.bb89.dw210x_op_rw.exit245_crit_edge, label %if.end.i242

sw.bb89.dw210x_op_rw.exit245_crit_edge:           ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit245

if.end.i242:                                      ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i237 = shl i32 %72, 8
  %or3.i238 = or i32 %shl.i.i237, -2147483520
  %call16.i243 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i238, i8 noundef zeroext -68, i8 noundef zeroext -64, i16 noundef zeroext 48, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i240, i16 noundef zeroext 2, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull %call7.i.i240) #9
  br label %dw210x_op_rw.exit245

dw210x_op_rw.exit245:                             ; preds = %if.end.i242, %sw.bb89.dw210x_op_rw.exit245_crit_edge
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i249 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3264, i32 noundef 7) #14
  %tobool.not.i250 = icmp eq ptr %call7.i.i249, null
  br i1 %tobool.not.i250, label %dw210x_op_rw.exit245.dw210x_op_rw.exit254_crit_edge, label %if.end.i251

dw210x_op_rw.exit245.dw210x_op_rw.exit254_crit_edge: ; preds = %dw210x_op_rw.exit245
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit254

if.end.i251:                                      ; preds = %dw210x_op_rw.exit245
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i246 = shl i32 %75, 8
  %or3.i247 = or i32 %shl.i.i246, -2147483520
  %call16.i252 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i247, i8 noundef zeroext -70, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i249, i16 noundef zeroext 7, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull %call7.i.i249) #9
  br label %dw210x_op_rw.exit254

dw210x_op_rw.exit254:                             ; preds = %if.end.i251, %dw210x_op_rw.exit245.dw210x_op_rw.exit254_crit_edge
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i258 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3264, i32 noundef 7) #14
  %tobool.not.i259 = icmp eq ptr %call7.i.i258, null
  br i1 %tobool.not.i259, label %dw210x_op_rw.exit254.dw210x_op_rw.exit263_crit_edge, label %if.end.i260

dw210x_op_rw.exit254.dw210x_op_rw.exit263_crit_edge: ; preds = %dw210x_op_rw.exit254
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit263

if.end.i260:                                      ; preds = %dw210x_op_rw.exit254
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i255 = shl i32 %78, 8
  %or3.i256 = or i32 %shl.i.i255, -2147483520
  %call16.i261 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i256, i8 noundef zeroext -70, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i258, i16 noundef zeroext 7, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull %call7.i.i258) #9
  br label %dw210x_op_rw.exit263

dw210x_op_rw.exit263:                             ; preds = %if.end.i260, %dw210x_op_rw.exit254.dw210x_op_rw.exit263_crit_edge
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i267 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i268 = icmp eq ptr %call7.i.i267, null
  br i1 %tobool.not.i268, label %dw210x_op_rw.exit263.sw.epilog98_crit_edge, label %if.end.i269

dw210x_op_rw.exit263.sw.epilog98_crit_edge:       ; preds = %dw210x_op_rw.exit263
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog98

if.end.i269:                                      ; preds = %dw210x_op_rw.exit263
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i264 = shl i32 %81, 8
  %or3.i265 = or i32 %shl.i.i264, -2147483520
  %call16.i270 = call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3.i265, i8 noundef zeroext -71, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i267, i16 noundef zeroext 2, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull %call7.i.i267) #9
  br label %sw.epilog98

sw.epilog98:                                      ; preds = %if.end.i269, %dw210x_op_rw.exit263.sw.epilog98_crit_edge, %if.then86, %if.then74, %sw.bb58, %if.end51.sw.epilog98_crit_edge
  call void @msleep(i32 noundef 100) #9
  call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %if.end99

if.end99:                                         ; preds = %sw.epilog98, %dw210x_op_rw.exit152.if.end99_crit_edge
  %ret.4 = phi i32 [ %ret.3, %sw.epilog98 ], [ 0, %dw210x_op_rw.exit152.if.end99_crit_edge ]
  %83 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 289, i16 %84)
  %cmp103 = icmp eq i16 %84, 289
  br i1 %cmp103, label %if.then105, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then105:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %86) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %if.end99.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.4, %if.then105 ], [ %ret.4, %if.end99.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw2102_frontend_attach(ptr nocapture noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds ({ i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, ptr @dw2102_properties, i32 0, i32 14), align 8
  %cmp = icmp eq ptr %0, @dw2102_serit_i2c_algo
  br i1 %cmp, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then:                                          ; preds = %entry
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.40) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %if.then.if.then4_crit_edge

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

cond.end:                                         ; preds = %if.then
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.41) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.40) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then4_crit_edge

cond.end.if.then4_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %cond.end.if.then4_crit_edge, %if.then.if.then4_crit_edge
  %cond177 = phi ptr [ %call2, %cond.end.if.then4_crit_edge ], [ %call, %if.then.if.then4_crit_edge ]
  %1 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %2, i32 0, i32 8
  %call5 = tail call ptr %cond177(ptr noundef nonnull @serit_sp1511lhb_config, ptr noundef %i2c_adap) #9
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.then7, label %if.then15

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.40) #9
  br label %if.end9.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #12
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %do.end, %if.then7
  %fe_adap179 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %3 = ptrtoint ptr %fe_adap179 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fe_adap179, align 8
  %.pr = load ptr, ptr getelementptr inbounds ({ i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, ptr @dw2102_properties, i32 0, i32 14), align 8
  br label %if.end25

if.then15:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %fe_adap, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %call5, i32 0, i32 1, i32 25
  %5 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dw210x_set_voltage, ptr %set_voltage, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #12
  br label %return

if.end25:                                         ; preds = %if.end9.thread, %entry.if.end25_crit_edge
  %6 = phi ptr [ %.pr, %if.end9.thread ], [ %0, %entry.if.end25_crit_edge ]
  %cmp26 = icmp eq ptr %6, @dw2102_earda_i2c_algo
  br i1 %cmp26, label %if.then27, label %if.end25.if.end105_crit_edge

if.end25.if.end105_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then27:                                        ; preds = %if.end25
  %call30 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.47) #9
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %cond.end36, label %if.then27.if.then39_crit_edge

if.then27.if.then39_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

cond.end36:                                       ; preds = %if.then27
  %call34 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.48) #9
  %call35 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.47) #9
  %tobool38.not = icmp eq ptr %call35, null
  br i1 %tobool38.not, label %do.end49, label %cond.end36.if.then39_crit_edge

cond.end36.if.then39_crit_edge:                   ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

if.then39:                                        ; preds = %cond.end36.if.then39_crit_edge, %if.then27.if.then39_crit_edge
  %cond37183 = phi ptr [ %call35, %cond.end36.if.then39_crit_edge ], [ %call30, %if.then27.if.then39_crit_edge ]
  %7 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d, align 8
  %i2c_adap41 = getelementptr inbounds %struct.dvb_usb_device, ptr %8, i32 0, i32 8
  %call42 = tail call ptr %cond37183(ptr noundef nonnull @earda_config, ptr noundef %i2c_adap41) #9
  %cmp43 = icmp eq ptr %call42, null
  br i1 %cmp43, label %if.then44, label %if.then61

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.47) #9
  br label %if.end52.thread

do.end49:                                         ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  br label %if.end52.thread

if.end52.thread:                                  ; preds = %do.end49, %if.then44
  %fe_adap54185 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %9 = ptrtoint ptr %fe_adap54185 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fe_adap54185, align 8
  br label %if.end105

if.then61:                                        ; preds = %if.then39
  %fe_adap54 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %10 = ptrtoint ptr %fe_adap54 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call42, ptr %fe_adap54, align 8
  %call64 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.52) #9
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %cond.end70, label %if.then61.if.then73_crit_edge

if.then61.if.then73_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

cond.end70:                                       ; preds = %if.then61
  %call68 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.53) #9
  %call69 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.52) #9
  %tobool72.not = icmp eq ptr %call69, null
  br i1 %tobool72.not, label %do.end86, label %cond.end70.if.then73_crit_edge

cond.end70.if.then73_crit_edge:                   ; preds = %cond.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

if.then73:                                        ; preds = %cond.end70.if.then73_crit_edge, %if.then61.if.then73_crit_edge
  %cond71190 = phi ptr [ %call69, %cond.end70.if.then73_crit_edge ], [ %call64, %if.then61.if.then73_crit_edge ]
  %11 = ptrtoint ptr %fe_adap54 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe_adap54, align 8
  %13 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d, align 8
  %i2c_adap78 = getelementptr inbounds %struct.dvb_usb_device, ptr %14, i32 0, i32 8
  %call79 = tail call ptr %cond71190(ptr noundef %12, i32 noundef 97, ptr noundef %i2c_adap78) #9
  %cmp80 = icmp eq ptr %call79, null
  br i1 %cmp80, label %if.then81, label %if.then92

if.then81:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.52) #9
  br label %if.end105

do.end86:                                         ; preds = %cond.end70
  call void @__sanitizer_cov_trace_pc() #11
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #12
  br label %if.end105

if.then92:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %fe_adap54 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fe_adap54, align 8
  %set_voltage97 = getelementptr inbounds %struct.dvb_frontend, ptr %16, i32 0, i32 1, i32 25
  %17 = ptrtoint ptr %set_voltage97 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dw210x_set_voltage, ptr %set_voltage97, align 4
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  br label %return

if.end105:                                        ; preds = %do.end86, %if.then81, %if.end52.thread, %if.end25.if.end105_crit_edge
  %18 = load ptr, ptr getelementptr inbounds ({ i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [9 x { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }] }> }, ptr @dw2102_properties, i32 0, i32 14), align 8
  %cmp106 = icmp eq ptr %18, @dw2102_i2c_algo
  br i1 %cmp106, label %if.then107, label %if.end105.return_crit_edge

if.end105.return_crit_edge:                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then107:                                       ; preds = %if.end105
  %call110 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #9
  %tobool111.not = icmp eq ptr %call110, null
  br i1 %tobool111.not, label %cond.end116, label %if.then107.if.then119_crit_edge

if.then107.if.then119_crit_edge:                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then119

cond.end116:                                      ; preds = %if.then107
  %call114 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.61) #9
  %call115 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #9
  %tobool118.not = icmp eq ptr %call115, null
  br i1 %tobool118.not, label %do.end129, label %cond.end116.if.then119_crit_edge

cond.end116.if.then119_crit_edge:                 ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then119

if.then119:                                       ; preds = %cond.end116.if.then119_crit_edge, %if.then107.if.then119_crit_edge
  %cond117196 = phi ptr [ %call115, %cond.end116.if.then119_crit_edge ], [ %call110, %if.then107.if.then119_crit_edge ]
  %19 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d, align 8
  %i2c_adap121 = getelementptr inbounds %struct.dvb_usb_device, ptr %20, i32 0, i32 8
  %call122 = tail call ptr %cond117196(ptr noundef nonnull @sharp_z0194a_config, ptr noundef %i2c_adap121) #9
  %cmp123 = icmp eq ptr %call122, null
  br i1 %cmp123, label %if.then124, label %if.then141

if.then124:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.60) #9
  br label %if.end132.thread

do.end129:                                        ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #11
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #12
  br label %if.end132.thread

if.end132.thread:                                 ; preds = %do.end129, %if.then124
  %fe_adap134198 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %21 = ptrtoint ptr %fe_adap134198 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %fe_adap134198, align 8
  br label %return

if.then141:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  %fe_adap134 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %22 = ptrtoint ptr %fe_adap134 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call122, ptr %fe_adap134, align 8
  %set_voltage146 = getelementptr inbounds %struct.dvb_frontend, ptr %call122, i32 0, i32 1, i32 25
  %23 = ptrtoint ptr %set_voltage146 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @dw210x_set_voltage, ptr %set_voltage146, align 4
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #12
  br label %return

return:                                           ; preds = %if.then141, %if.end132.thread, %if.end105.return_crit_edge, %if.then92, %if.then15
  %retval.0 = phi i32 [ 0, %if.then15 ], [ 0, %if.then92 ], [ 0, %if.then141 ], [ -5, %if.end105.return_crit_edge ], [ -5, %if.end132.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw210x_read_mac_address(ptr nocapture noundef readonly %d, ptr nocapture noundef writeonly %mac) #2 align 64 {
entry:
  %eeprom = alloca [256 x i8], align 1
  %eepromline = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %eeprom) #9
  %0 = call ptr @memset(ptr %eeprom, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eepromline) #9
  %1 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 1
  %2 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 2
  %3 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 3
  %4 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 4
  %5 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 5
  %6 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 6
  %7 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 7
  %8 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 8
  %9 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 9
  %10 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 10
  %11 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 11
  %12 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 12
  %13 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 13
  %14 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 14
  %15 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 15
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %16 = call ptr @memset(ptr %eepromline, i32 255, i32 16)
  br label %for.body

for.body:                                         ; preds = %for.inc52.for.body_crit_edge, %entry
  %i.072 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52.for.body_crit_edge ]
  %17 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.do.end_crit_edge, label %dw210x_op_rw.exit

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

dw210x_op_rw.exit:                                ; preds = %for.body
  %shl.i.i = shl i32 %20, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %conv = trunc i32 %i.072 to i16
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or3.i, i8 noundef zeroext -74, i8 noundef zeroext -64, i16 noundef zeroext 160, i16 noundef zeroext %conv, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2, i32 noundef 2000) #9
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %ibuf.sroa.0.0.copyload = load i8, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp1 = icmp slt i32 %call16.i, 0
  br i1 %cmp1, label %dw210x_op_rw.exit.do.end_crit_edge, label %if.else

dw210x_op_rw.exit.do.end_crit_edge:               ; preds = %dw210x_op_rw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %dw210x_op_rw.exit.do.end_crit_edge, %for.body.do.end_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #12
  br label %cleanup

if.else:                                          ; preds = %dw210x_op_rw.exit
  %rem.urem = and i32 %i.072, 15
  %arrayidx4 = getelementptr [16 x i8], ptr %eepromline, i32 0, i32 %rem.urem
  %23 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %ibuf.sroa.0.0.copyload, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr [256 x i8], ptr %eeprom, i32 0, i32 %i.072
  %24 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %ibuf.sroa.0.0.copyload, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rem.urem)
  %cmp8 = icmp eq i32 %rem.urem, 15
  br i1 %cmp8, label %do.body11, label %if.else.for.inc52_crit_edge

if.else.for.inc52_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc52

do.body11:                                        ; preds = %if.else
  %25 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body11.do.end20_crit_edge, label %do.end15

do.body11.do.end20_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

do.end15:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %i.072, -15
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %sub) #12
  br label %do.end20

do.end20:                                         ; preds = %do.end15, %do.body11.do.end20_crit_edge
  %26 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.end20.for.inc_crit_edge, label %do.end31

do.end20.for.inc_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end31:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %eepromline to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %eepromline, align 1
  %conv34 = zext i8 %28 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end31, %do.end20.for.inc_crit_edge
  %29 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.1 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.1)
  %tobool27.not.1 = icmp eq i32 %and26.1, 0
  br i1 %tobool27.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end31.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

do.end31.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %1, align 1
  %conv34.1 = zext i8 %31 to i32
  %call35.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.1) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end31.1, %for.inc.for.inc.1_crit_edge
  %32 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.2 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.2)
  %tobool27.not.2 = icmp eq i32 %and26.2, 0
  br i1 %tobool27.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.end31.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

do.end31.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %2, align 1
  %conv34.2 = zext i8 %34 to i32
  %call35.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.2) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end31.2, %for.inc.1.for.inc.2_crit_edge
  %35 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.3 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.3)
  %tobool27.not.3 = icmp eq i32 %and26.3, 0
  br i1 %tobool27.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.end31.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

do.end31.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %3, align 1
  %conv34.3 = zext i8 %37 to i32
  %call35.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.3) #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end31.3, %for.inc.2.for.inc.3_crit_edge
  %38 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.4 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.4)
  %tobool27.not.4 = icmp eq i32 %and26.4, 0
  br i1 %tobool27.not.4, label %for.inc.3.for.inc.4_crit_edge, label %do.end31.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

do.end31.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %4, align 1
  %conv34.4 = zext i8 %40 to i32
  %call35.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.4) #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.end31.4, %for.inc.3.for.inc.4_crit_edge
  %41 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.5 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.5)
  %tobool27.not.5 = icmp eq i32 %and26.5, 0
  br i1 %tobool27.not.5, label %for.inc.4.for.inc.5_crit_edge, label %do.end31.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

do.end31.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %5, align 1
  %conv34.5 = zext i8 %43 to i32
  %call35.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.5) #12
  br label %for.inc.5

for.inc.5:                                        ; preds = %do.end31.5, %for.inc.4.for.inc.5_crit_edge
  %44 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.6 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.6)
  %tobool27.not.6 = icmp eq i32 %and26.6, 0
  br i1 %tobool27.not.6, label %for.inc.5.for.inc.6_crit_edge, label %do.end31.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

do.end31.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %6, align 1
  %conv34.6 = zext i8 %46 to i32
  %call35.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.6) #12
  br label %for.inc.6

for.inc.6:                                        ; preds = %do.end31.6, %for.inc.5.for.inc.6_crit_edge
  %47 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.7 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.7)
  %tobool27.not.7 = icmp eq i32 %and26.7, 0
  br i1 %tobool27.not.7, label %for.inc.6.for.inc.7_crit_edge, label %do.end31.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

do.end31.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %7, align 1
  %conv34.7 = zext i8 %49 to i32
  %call35.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.7) #12
  br label %for.inc.7

for.inc.7:                                        ; preds = %do.end31.7, %for.inc.6.for.inc.7_crit_edge
  %50 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.8 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.8)
  %tobool27.not.8 = icmp eq i32 %and26.8, 0
  br i1 %tobool27.not.8, label %for.inc.7.for.inc.8_crit_edge, label %do.end31.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

do.end31.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %8, align 1
  %conv34.8 = zext i8 %52 to i32
  %call35.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.8) #12
  br label %for.inc.8

for.inc.8:                                        ; preds = %do.end31.8, %for.inc.7.for.inc.8_crit_edge
  %53 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.9 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.9)
  %tobool27.not.9 = icmp eq i32 %and26.9, 0
  br i1 %tobool27.not.9, label %for.inc.8.for.inc.9_crit_edge, label %do.end31.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.9

do.end31.9:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %9, align 1
  %conv34.9 = zext i8 %55 to i32
  %call35.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.9) #12
  br label %for.inc.9

for.inc.9:                                        ; preds = %do.end31.9, %for.inc.8.for.inc.9_crit_edge
  %56 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.10 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.10)
  %tobool27.not.10 = icmp eq i32 %and26.10, 0
  br i1 %tobool27.not.10, label %for.inc.9.for.inc.10_crit_edge, label %do.end31.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10

do.end31.10:                                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %10, align 1
  %conv34.10 = zext i8 %58 to i32
  %call35.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.10) #12
  br label %for.inc.10

for.inc.10:                                       ; preds = %do.end31.10, %for.inc.9.for.inc.10_crit_edge
  %59 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.11 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.11)
  %tobool27.not.11 = icmp eq i32 %and26.11, 0
  br i1 %tobool27.not.11, label %for.inc.10.for.inc.11_crit_edge, label %do.end31.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.11

do.end31.11:                                      ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %11, align 1
  %conv34.11 = zext i8 %61 to i32
  %call35.11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.11) #12
  br label %for.inc.11

for.inc.11:                                       ; preds = %do.end31.11, %for.inc.10.for.inc.11_crit_edge
  %62 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.12 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.12)
  %tobool27.not.12 = icmp eq i32 %and26.12, 0
  br i1 %tobool27.not.12, label %for.inc.11.for.inc.12_crit_edge, label %do.end31.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.12

do.end31.12:                                      ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %12, align 1
  %conv34.12 = zext i8 %64 to i32
  %call35.12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.12) #12
  br label %for.inc.12

for.inc.12:                                       ; preds = %do.end31.12, %for.inc.11.for.inc.12_crit_edge
  %65 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.13 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.13)
  %tobool27.not.13 = icmp eq i32 %and26.13, 0
  br i1 %tobool27.not.13, label %for.inc.12.for.inc.13_crit_edge, label %do.end31.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.13

do.end31.13:                                      ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %13, align 1
  %conv34.13 = zext i8 %67 to i32
  %call35.13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.13) #12
  br label %for.inc.13

for.inc.13:                                       ; preds = %do.end31.13, %for.inc.12.for.inc.13_crit_edge
  %68 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.14 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.14)
  %tobool27.not.14 = icmp eq i32 %and26.14, 0
  br i1 %tobool27.not.14, label %for.inc.13.for.inc.14_crit_edge, label %do.end31.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.14

do.end31.14:                                      ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %14, align 1
  %conv34.14 = zext i8 %70 to i32
  %call35.14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.14) #12
  br label %for.inc.14

for.inc.14:                                       ; preds = %do.end31.14, %for.inc.13.for.inc.14_crit_edge
  %71 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and26.15 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.15)
  %tobool27.not.15 = icmp eq i32 %and26.15, 0
  br i1 %tobool27.not.15, label %for.inc.14.for.inc.15_crit_edge, label %do.end31.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.15

do.end31.15:                                      ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %15, align 1
  %conv34.15 = zext i8 %73 to i32
  %call35.15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv34.15) #12
  br label %for.inc.15

for.inc.15:                                       ; preds = %do.end31.15, %for.inc.14.for.inc.15_crit_edge
  %74 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and40 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %for.inc.15.for.inc52_crit_edge, label %do.end45

for.inc.15.for.inc52_crit_edge:                   ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc52

do.end45:                                         ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #11
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #12
  br label %for.inc52

for.inc52:                                        ; preds = %do.end45, %for.inc.15.for.inc52_crit_edge, %if.else.for.inc52_crit_edge
  %inc53 = add nuw nsw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc53, 256
  br i1 %exitcond.not, label %for.end54, label %for.inc52.for.body_crit_edge

for.inc52.for.body_crit_edge:                     ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end54:                                        ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr inbounds i8, ptr %eeprom, i32 8
  %75 = call ptr @memcpy(ptr %mac, ptr %add.ptr, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %for.end54, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %for.end54 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eepromline) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %eeprom) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw2102_rc_query(ptr noundef %d) #2 align 64 {
entry:
  %key = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %key) #9
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %key, align 1, !annotation !714
  %1 = getelementptr inbounds [2 x i8], ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !714
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 6656, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %key, ptr %buf, align 4
  %i2c_algo = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 14
  %9 = ptrtoint ptr %i2c_algo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_algo, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  %call = call i32 %12(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then:                                          ; preds = %entry
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp2.not = icmp eq i8 %16, -1
  br i1 %cmp2.not, label %if.then.if.end17_crit_edge, label %do.body

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body:                                          ; preds = %if.then
  %17 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end13_crit_edge, label %do.end

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %key, align 1
  %conv8 = zext i8 %19 to i32
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  %conv10 = zext i8 %21 to i32
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef %conv8, i32 noundef %conv10) #12
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %22 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rc_dev, align 8
  %24 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %key, align 1
  %conv15 = zext i8 %25 to i64
  call void @rc_keydown(ptr noundef %23, i32 noundef 0, i64 noundef %conv15, i8 noundef zeroext 0) #9
  br label %if.end17

if.end17:                                         ; preds = %do.end13, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %key) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw210x_op_rw(ptr noundef %dev, i8 noundef zeroext %request, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr nocapture noundef %data, i16 noundef zeroext %len, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %cmp = icmp eq i32 %flags, 0
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  %shl.i = shl i32 %1, 8
  %. = select i1 %cmp, i32 -2147483520, i32 -2147483648
  %.42 = select i1 %cmp, i8 -64, i8 64
  %or3 = or i32 %shl.i, %.
  %conv6 = zext i16 %len to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flags)
  %cmp8 = icmp eq i32 %flags, 1
  br i1 %cmp8, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = call ptr @memcpy(ptr %call9.i, ptr %data, i32 %conv6)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %call16 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3, i8 noundef zeroext %request, i8 noundef zeroext %.42, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef nonnull %call9.i, i16 noundef zeroext %len, i32 noundef 2000) #9
  br i1 %cmp, label %if.then19, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %3 = call ptr @memcpy(ptr %data, ptr %call9.i, i32 %conv6)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end12.if.end21_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw2102_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.27) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
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
  %call4 = tail call ptr %cond14(ptr noundef %1, i32 noundef 96, ptr noundef %i2c_adap, i32 noundef 13) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.26) #9
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw2102_i2c_transfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %buf6 = alloca [7 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf6) #9
  %2 = call ptr @memcpy(ptr %buf6, ptr @__const.dw2102_i2c_transfer.buf6, i32 7)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.350)
  switch i32 %num, label %if.end3.sw.epilog89_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb16
  ]

if.end3.sw.epilog89_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog89

sw.bb:                                            ; preds = %if.end3
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp7145.not = icmp eq i16 %5, 0
  br i1 %cmp7145.not, label %sw.bb.sw.epilog89_crit_edge, label %for.body.lr.ph

sw.bb.sw.epilog89_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog89

for.body.lr.ph:                                   ; preds = %sw.bb
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %conv9 = zext i8 %9 to i32
  %buf14 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %dw210x_op_rw.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dw210x_op_rw.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.dw210x_op_rw.exit_crit_edge, label %if.end.i

for.body.dw210x_op_rw.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl i32 %13, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %add = add nuw nsw i32 %i.0146, %conv9
  %conv10 = trunc i32 %add to i16
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or3.i, i8 noundef zeroext -75, i8 noundef zeroext -64, i16 noundef zeroext %conv10, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2, i32 noundef 2000) #9
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %call7.i.i, align 8
  %17 = ptrtoint ptr %buf6 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %buf6, align 2
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %dw210x_op_rw.exit

dw210x_op_rw.exit:                                ; preds = %if.end.i, %for.body.dw210x_op_rw.exit_crit_edge
  %18 = ptrtoint ptr %buf6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf6, align 2
  %20 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf14, align 4
  %arrayidx15 = getelementptr i8, ptr %21, i32 %i.0146
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %19, ptr %arrayidx15, align 1
  %inc = add nuw nsw i32 %i.0146, 1
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %len, align 4
  %conv6 = zext i16 %24 to i32
  %cmp7 = icmp ult i32 %inc, %conv6
  br i1 %cmp7, label %dw210x_op_rw.exit.for.body_crit_edge, label %dw210x_op_rw.exit.sw.epilog89_crit_edge

dw210x_op_rw.exit.sw.epilog89_crit_edge:          ; preds = %dw210x_op_rw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog89

dw210x_op_rw.exit.for.body_crit_edge:             ; preds = %dw210x_op_rw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

sw.bb16:                                          ; preds = %if.end3
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %msg, align 4
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.351)
  switch i16 %26, label %sw.bb16.sw.epilog89_crit_edge [
    i16 104, label %sw.bb19
    i16 96, label %sw.bb32
    i16 6656, label %sw.bb68
    i16 6144, label %sw.bb80
  ]

sw.bb16.sw.epilog89_crit_edge:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog89

sw.bb19:                                          ; preds = %sw.bb16
  %28 = ptrtoint ptr %buf6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 42, ptr %buf6, align 2
  %buf22 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %29 = ptrtoint ptr %buf22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf22, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %arrayidx24 = getelementptr inbounds [7 x i8], ptr %buf6, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx24, align 1
  %arrayidx27 = getelementptr i8, ptr %30, i32 1
  %34 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx27, align 1
  %arrayidx28 = getelementptr inbounds [7 x i8], ptr %buf6, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx28, align 2
  %udev29 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %udev29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udev29, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i122 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3264, i32 noundef 3) #14
  %tobool.not.i123 = icmp eq ptr %call7.i.i122, null
  br i1 %tobool.not.i123, label %sw.bb19.sw.epilog89_crit_edge, label %if.end.i124

sw.bb19.sw.epilog89_crit_edge:                    ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog89

if.end.i124:                                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i120 = shl i32 %40, 8
  %or3.i121 = or i32 %shl.i.i120, -2147483648
  %42 = call ptr @memcpy(ptr %call7.i.i122, ptr %buf6, i32 3)
  %call16.i125 = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or3.i121, i8 noundef zeroext -78, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i122, i16 noundef zeroext 3, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i122) #9
  br label %sw.epilog89

sw.bb32:                                          ; preds = %sw.bb16
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp35 = icmp eq i16 %44, 0
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %buf6 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 44, ptr %buf6, align 2
  %arrayidx39 = getelementptr inbounds [7 x i8], ptr %buf6, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 5, ptr %arrayidx39, align 1
  %arrayidx40 = getelementptr inbounds [7 x i8], ptr %buf6, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -64, ptr %arrayidx40, align 2
  %buf42 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %48 = ptrtoint ptr %buf42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf42, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %arrayidx44 = getelementptr inbounds [7 x i8], ptr %buf6, i32 0, i32 3
  %52 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx44, align 1
  %arrayidx47 = getelementptr i8, ptr %49, i32 1
  %53 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx47, align 1
  %arrayidx48 = getelementptr inbounds [7 x i8], ptr %buf6, i32 0, i32 4
  %55 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx48, align 2
  %arrayidx51 = getelementptr i8, ptr %49, i32 2
  %56 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx51, align 1
  %arrayidx52 = getelementptr inbounds [7 x i8], ptr %buf6, i32 0, i32 5
  %58 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx52, align 1
  %arrayidx55 = getelementptr i8, ptr %49, i32 3
  %59 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx55, align 1
  %arrayidx56 = getelementptr inbounds [7 x i8], ptr %buf6, i32 0, i32 6
  %61 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx56, align 2
  %udev57 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %udev57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %udev57, align 4
  %call59 = call fastcc i32 @dw210x_op_rw(ptr noundef %63, i8 noundef zeroext -78, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf6, i16 noundef zeroext 7, i32 noundef 1)
  br label %sw.epilog89

if.else:                                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  %udev60 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %udev60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %udev60, align 4
  %call62 = call fastcc i32 @dw210x_op_rw(ptr noundef %65, i8 noundef zeroext -75, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf6, i16 noundef zeroext 1, i32 noundef 0)
  %66 = ptrtoint ptr %buf6 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %buf6, align 2
  %buf65 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %68 = ptrtoint ptr %buf65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buf65, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %67, ptr %69, align 1
  br label %sw.epilog89

sw.bb68:                                          ; preds = %sw.bb16
  %udev69 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %71 = ptrtoint ptr %udev69 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %udev69, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i130 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i131 = icmp eq ptr %call7.i.i130, null
  br i1 %tobool.not.i131, label %sw.bb68.dw210x_op_rw.exit135_crit_edge, label %if.end.i132

sw.bb68.dw210x_op_rw.exit135_crit_edge:           ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit135

if.end.i132:                                      ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i128 = shl i32 %74, 8
  %or3.i129 = or i32 %shl.i.i128, -2147483520
  %call16.i133 = tail call i32 @usb_control_msg(ptr noundef %72, i32 noundef %or3.i129, i8 noundef zeroext -72, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i130, i16 noundef zeroext 2, i32 noundef 2000) #9
  %76 = ptrtoint ptr %call7.i.i130 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %call7.i.i130, align 8
  %78 = ptrtoint ptr %buf6 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %buf6, align 2
  tail call void @kfree(ptr noundef nonnull %call7.i.i130) #9
  br label %dw210x_op_rw.exit135

dw210x_op_rw.exit135:                             ; preds = %if.end.i132, %sw.bb68.dw210x_op_rw.exit135_crit_edge
  %79 = ptrtoint ptr %buf6 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %buf6, align 2
  %buf74 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %81 = ptrtoint ptr %buf74 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %buf74, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %80, ptr %82, align 1
  %arrayidx76 = getelementptr inbounds [7 x i8], ptr %buf6, i32 0, i32 1
  %84 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx76, align 1
  %86 = load ptr, ptr %buf74, align 4
  %arrayidx79 = getelementptr i8, ptr %86, i32 1
  %87 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %85, ptr %arrayidx79, align 1
  br label %sw.epilog89

sw.bb80:                                          ; preds = %sw.bb16
  %88 = ptrtoint ptr %buf6 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 48, ptr %buf6, align 2
  %buf83 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %89 = ptrtoint ptr %buf83 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buf83, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %90, align 1
  %arrayidx85 = getelementptr inbounds [7 x i8], ptr %buf6, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx85, align 1
  %udev86 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %94 = ptrtoint ptr %udev86 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %udev86, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %98 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i138 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %98, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i139 = icmp eq ptr %call7.i.i138, null
  br i1 %tobool.not.i139, label %sw.bb80.sw.epilog89_crit_edge, label %if.end.i140

sw.bb80.sw.epilog89_crit_edge:                    ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog89

if.end.i140:                                      ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i136 = shl i32 %97, 8
  %or3.i137 = or i32 %shl.i.i136, -2147483648
  %99 = ptrtoint ptr %buf6 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %buf6, align 2
  %101 = ptrtoint ptr %call7.i.i138 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %call7.i.i138, align 8
  %call16.i141 = tail call i32 @usb_control_msg(ptr noundef %95, i32 noundef %or3.i137, i8 noundef zeroext -78, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i138, i16 noundef zeroext 2, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i138) #9
  br label %sw.epilog89

sw.epilog89:                                      ; preds = %if.end.i140, %sw.bb80.sw.epilog89_crit_edge, %dw210x_op_rw.exit135, %if.else, %if.then37, %if.end.i124, %sw.bb19.sw.epilog89_crit_edge, %sw.bb16.sw.epilog89_crit_edge, %dw210x_op_rw.exit.sw.epilog89_crit_edge, %sw.bb.sw.epilog89_crit_edge, %if.end3.sw.epilog89_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog89, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %sw.epilog89 ], [ -19, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf6) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw210x_i2c_func(ptr nocapture noundef readnone %adapter) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw2102_earda_i2c_transfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %ibuf = alloca [64 x i8], align 1
  %obuf = alloca [3 x i8], align 1
  %obuf65 = alloca [64 x i8], align 1
  %obuf110 = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup176_crit_edge, label %if.end

entry.cleanup176_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

if.end:                                           ; preds = %entry
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup176_crit_edge, label %if.end3

if.end.cleanup176_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

if.end3:                                          ; preds = %if.end
  %2 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.352)
  switch i32 %num, label %if.end3.unlock_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb60
  ]

if.end3.unlock_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

sw.bb:                                            ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ibuf)
  %3 = call ptr @memset(ptr %ibuf, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %obuf)
  %obuf.1.obuf.1..sroa_idx = getelementptr inbounds i8, ptr %obuf, i32 1
  %obuf.2.obuf.2..sroa_idx = getelementptr inbounds i8, ptr %obuf, i32 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp4.not = icmp eq i16 %5, 1
  br i1 %cmp4.not, label %if.end11, label %sw.bb.cleanup.thread_crit_edge

sw.bb.cleanup.thread_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end11:                                         ; preds = %sw.bb
  %len13 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %6 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len13, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %7)
  %cmp16 = icmp ugt i16 %7, 62
  br i1 %cmp16, label %if.end11.cleanup.thread_crit_edge, label %kmalloc.exit.i

if.end11.cleanup.thread_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

kmalloc.exit.i:                                   ; preds = %if.end11
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %msg, align 4
  %conv29 = trunc i16 %9 to i8
  %shl = shl i8 %conv29, 1
  %10 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %shl, ptr %obuf, align 1
  %11 = ptrtoint ptr %obuf.1.obuf.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %obuf.1.obuf.1..sroa_idx, align 1
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %16 = ptrtoint ptr %obuf.2.obuf.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %obuf.2.obuf.2..sroa_idx, align 1
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 3) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %kmalloc.exit.i.dw210x_op_rw.exit_crit_edge, label %if.end.i

kmalloc.exit.i.dw210x_op_rw.exit_crit_edge:       ; preds = %kmalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit

if.end.i:                                         ; preds = %kmalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl i32 %20, 8
  %or3.i = or i32 %shl.i.i, -2147483648
  %22 = call ptr @memcpy(ptr %call7.i.i, ptr %obuf, i32 3)
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or3.i, i8 noundef zeroext -62, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 3, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %dw210x_op_rw.exit

dw210x_op_rw.exit:                                ; preds = %if.end.i, %kmalloc.exit.i.dw210x_op_rw.exit_crit_edge
  %23 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev, align 4
  %25 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len13, align 4
  %add50 = add i16 %26, 2
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 8
  %conv6.i218 = zext i16 %add50 to i32
  %call9.i.i244 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i218, i32 noundef 3264) #13
  %tobool.not.i247 = icmp eq ptr %call9.i.i244, null
  br i1 %tobool.not.i247, label %dw210x_op_rw.exit.cleanup_crit_edge, label %if.end.i250

dw210x_op_rw.exit.cleanup_crit_edge:              ; preds = %dw210x_op_rw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i250:                                      ; preds = %dw210x_op_rw.exit
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i216 = shl i32 %28, 8
  %or3.i217 = or i32 %shl.i.i216, -2147483520
  %call16.i251 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or3.i217, i8 noundef zeroext -61, i8 noundef zeroext -64, i16 noundef zeroext 209, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i244, i16 noundef zeroext %add50, i32 noundef 2000) #9
  %29 = call ptr @memcpy(ptr %ibuf, ptr %call9.i.i244, i32 %conv6.i218)
  tail call void @kfree(ptr noundef nonnull %call9.i.i244) #9
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end11.cleanup.thread_crit_edge, %sw.bb.cleanup.thread_crit_edge
  %.sink = phi i16 [ %5, %sw.bb.cleanup.thread_crit_edge ], [ %7, %if.end11.cleanup.thread_crit_edge ]
  %.str.30.sink = phi ptr [ @.str.30, %sw.bb.cleanup.thread_crit_edge ], [ @.str.33, %if.end11.cleanup.thread_crit_edge ]
  %conv = zext i16 %.sink to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.30.sink, i32 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %obuf)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ibuf)
  br label %unlock

cleanup:                                          ; preds = %if.end.i250, %dw210x_op_rw.exit.cleanup_crit_edge
  %buf54 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %30 = ptrtoint ptr %buf54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf54, align 4
  %32 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len13, align 4
  %conv58 = zext i16 %33 to i32
  %ibuf.2.ibuf.2.add.ptr.sroa_idx = getelementptr inbounds i8, ptr %ibuf, i32 2
  %34 = call ptr @memcpy(ptr %31, ptr %ibuf.2.ibuf.2.add.ptr.sroa_idx, i32 %conv58)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %obuf)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ibuf)
  br label %unlock

sw.bb60:                                          ; preds = %if.end3
  %35 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %msg, align 4
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.353)
  switch i16 %36, label %sw.bb60.unlock_crit_edge [
    i16 104, label %sw.bb64
    i16 97, label %sw.bb109
    i16 6656, label %sw.bb154
    i16 6144, label %sw.bb163
  ]

sw.bb60.unlock_crit_edge:                         ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

sw.bb64:                                          ; preds = %sw.bb60
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %obuf65)
  %38 = getelementptr inbounds i8, ptr %obuf65, i32 2
  %39 = call ptr @memset(ptr %38, i32 255, i32 62)
  %len67 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %40 = ptrtoint ptr %len67 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %len67, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %41)
  %cmp70 = icmp ugt i16 %41, 62
  br i1 %cmp70, label %cleanup107, label %if.end81

if.end81:                                         ; preds = %sw.bb64
  %42 = ptrtoint ptr %obuf65 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -48, ptr %obuf65, align 1
  %conv90 = trunc i16 %41 to i8
  %obuf65.1.obuf65.1.arrayidx91.sroa_idx = getelementptr inbounds i8, ptr %obuf65, i32 1
  %43 = ptrtoint ptr %obuf65.1.obuf65.1.arrayidx91.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv90, ptr %obuf65.1.obuf65.1.arrayidx91.sroa_idx, align 1
  %buf95 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %44 = ptrtoint ptr %buf95 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf95, align 4
  %conv98 = zext i16 %41 to i32
  %obuf65.2.obuf65.2.add.ptr93.sroa_idx = getelementptr inbounds i8, ptr %obuf65, i32 2
  %46 = call ptr @memcpy(ptr %obuf65.2.obuf65.2.add.ptr93.sroa_idx, ptr %45, i32 %conv98)
  %udev99 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %udev99 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %udev99, align 4
  %add104 = add nuw nsw i16 %41, 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %conv6.i256 = zext i16 %add104 to i32
  %call9.i.i282 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i256, i32 noundef 3264) #13
  %tobool.not.i285 = icmp eq ptr %call9.i.i282, null
  br i1 %tobool.not.i285, label %if.end81.cleanup107.thread_crit_edge, label %if.end.i288

if.end81.cleanup107.thread_crit_edge:             ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup107.thread

if.end.i288:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i254 = shl i32 %50, 8
  %or3.i255 = or i32 %shl.i.i254, -2147483648
  %51 = call ptr @memcpy(ptr %call9.i.i282, ptr %obuf65, i32 %conv6.i256)
  %call16.i289 = tail call i32 @usb_control_msg(ptr noundef %48, i32 noundef %or3.i255, i8 noundef zeroext -62, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i282, i16 noundef zeroext %add104, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i282) #9
  br label %cleanup107.thread

cleanup107.thread:                                ; preds = %if.end.i288, %if.end81.cleanup107.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %obuf65)
  br label %unlock

cleanup107:                                       ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  %len78 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %52 = ptrtoint ptr %len78 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %len78, align 4
  %conv79 = zext i16 %53 to i32
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv79) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %obuf65)
  br label %unlock

sw.bb109:                                         ; preds = %sw.bb60
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %obuf110)
  %54 = getelementptr inbounds i8, ptr %obuf110, i32 2
  %55 = call ptr @memset(ptr %54, i32 255, i32 62)
  %len112 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %56 = ptrtoint ptr %len112 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %len112, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %57)
  %cmp115 = icmp ugt i16 %57, 62
  br i1 %cmp115, label %cleanup152, label %if.end126

if.end126:                                        ; preds = %sw.bb109
  %58 = ptrtoint ptr %obuf110 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -62, ptr %obuf110, align 1
  %conv135 = trunc i16 %57 to i8
  %obuf110.1.obuf110.1.arrayidx136.sroa_idx = getelementptr inbounds i8, ptr %obuf110, i32 1
  %59 = ptrtoint ptr %obuf110.1.obuf110.1.arrayidx136.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv135, ptr %obuf110.1.obuf110.1.arrayidx136.sroa_idx, align 1
  %buf140 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %60 = ptrtoint ptr %buf140 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buf140, align 4
  %conv143 = zext i16 %57 to i32
  %obuf110.2.obuf110.2.add.ptr138.sroa_idx = getelementptr inbounds i8, ptr %obuf110, i32 2
  %62 = call ptr @memcpy(ptr %obuf110.2.obuf110.2.add.ptr138.sroa_idx, ptr %61, i32 %conv143)
  %udev144 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %udev144 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %udev144, align 4
  %add149 = add nuw nsw i16 %57, 2
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %conv6.i294 = zext i16 %add149 to i32
  %call9.i.i320 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i294, i32 noundef 3264) #13
  %tobool.not.i323 = icmp eq ptr %call9.i.i320, null
  br i1 %tobool.not.i323, label %if.end126.cleanup152.thread_crit_edge, label %if.end.i326

if.end126.cleanup152.thread_crit_edge:            ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup152.thread

if.end.i326:                                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i292 = shl i32 %66, 8
  %or3.i293 = or i32 %shl.i.i292, -2147483648
  %67 = call ptr @memcpy(ptr %call9.i.i320, ptr %obuf110, i32 %conv6.i294)
  %call16.i327 = tail call i32 @usb_control_msg(ptr noundef %64, i32 noundef %or3.i293, i8 noundef zeroext -62, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i320, i16 noundef zeroext %add149, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i320) #9
  br label %cleanup152.thread

cleanup152.thread:                                ; preds = %if.end.i326, %if.end126.cleanup152.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %obuf110)
  br label %unlock

cleanup152:                                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #11
  %len123 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %68 = ptrtoint ptr %len123 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %len123, align 4
  %conv124 = zext i16 %69 to i32
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv124) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %obuf110)
  br label %unlock

sw.bb154:                                         ; preds = %sw.bb60
  %udev156 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %70 = ptrtoint ptr %udev156 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %udev156, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i337 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i340 = icmp eq ptr %call7.i.i337, null
  br i1 %tobool.not.i340, label %sw.bb154.dw210x_op_rw.exit346_crit_edge, label %if.end.i343

sw.bb154.dw210x_op_rw.exit346_crit_edge:          ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit346

if.end.i343:                                      ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i330 = shl i32 %73, 8
  %or3.i331 = or i32 %shl.i.i330, -2147483520
  %call16.i344 = tail call i32 @usb_control_msg(ptr noundef %71, i32 noundef %or3.i331, i8 noundef zeroext -72, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i337, i16 noundef zeroext 2, i32 noundef 2000) #9
  %75 = ptrtoint ptr %call7.i.i337 to i32
  call void @__asan_load1_noabort(i32 %75)
  %ibuf155.sroa.0.0.copyload = load i8, ptr %call7.i.i337, align 8
  %ibuf155.sroa.5.0.call7.i.i337.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i337, i32 1
  %76 = ptrtoint ptr %ibuf155.sroa.5.0.call7.i.i337.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %76)
  %ibuf155.sroa.5.0.copyload = load i8, ptr %ibuf155.sroa.5.0.call7.i.i337.sroa_idx, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i337) #9
  br label %dw210x_op_rw.exit346

dw210x_op_rw.exit346:                             ; preds = %if.end.i343, %sw.bb154.dw210x_op_rw.exit346_crit_edge
  %ibuf155.sroa.5.0 = phi i8 [ -1, %sw.bb154.dw210x_op_rw.exit346_crit_edge ], [ %ibuf155.sroa.5.0.copyload, %if.end.i343 ]
  %ibuf155.sroa.0.0 = phi i8 [ -1, %sw.bb154.dw210x_op_rw.exit346_crit_edge ], [ %ibuf155.sroa.0.0.copyload, %if.end.i343 ]
  %buf160 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %77 = ptrtoint ptr %buf160 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf160, align 4
  %ibuf155.sroa.5.0.insert.ext = zext i8 %ibuf155.sroa.5.0 to i16
  %ibuf155.sroa.0.0.insert.ext = zext i8 %ibuf155.sroa.0.0 to i16
  %ibuf155.sroa.0.0.insert.shift = shl nuw i16 %ibuf155.sroa.0.0.insert.ext, 8
  %ibuf155.sroa.0.0.insert.insert = or i16 %ibuf155.sroa.0.0.insert.shift, %ibuf155.sroa.5.0.insert.ext
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %ibuf155.sroa.0.0.insert.insert, ptr %78, align 1
  br label %unlock

sw.bb163:                                         ; preds = %sw.bb60
  %buf167 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %80 = ptrtoint ptr %buf167 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buf167, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 1
  %udev170 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %84 = ptrtoint ptr %udev170 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %udev170, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %88 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i354 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %88, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i357 = icmp eq ptr %call7.i.i354, null
  br i1 %tobool.not.i357, label %sw.bb163.unlock_crit_edge, label %if.end.i360

sw.bb163.unlock_crit_edge:                        ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end.i360:                                      ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i347 = shl i32 %87, 8
  %or3.i348 = or i32 %shl.i.i347, -2147483648
  %89 = ptrtoint ptr %call7.i.i354 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 48, ptr %call7.i.i354, align 8
  %obuf164.sroa.5.0.call7.i.i354.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i354, i32 1
  %90 = ptrtoint ptr %obuf164.sroa.5.0.call7.i.i354.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %83, ptr %obuf164.sroa.5.0.call7.i.i354.sroa_idx, align 1
  %call16.i361 = tail call i32 @usb_control_msg(ptr noundef %85, i32 noundef %or3.i348, i8 noundef zeroext -78, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i354, i16 noundef zeroext 2, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i354) #9
  br label %unlock

unlock:                                           ; preds = %if.end.i360, %sw.bb163.unlock_crit_edge, %dw210x_op_rw.exit346, %cleanup152, %cleanup152.thread, %cleanup107, %cleanup107.thread, %sw.bb60.unlock_crit_edge, %cleanup, %cleanup.thread, %if.end3.unlock_crit_edge
  %ret.3 = phi i32 [ -95, %cleanup152 ], [ -95, %cleanup107 ], [ -95, %cleanup.thread ], [ 1, %if.end.i360 ], [ 1, %sw.bb163.unlock_crit_edge ], [ 1, %cleanup152.thread ], [ 1, %cleanup107.thread ], [ 2, %cleanup ], [ 1, %dw210x_op_rw.exit346 ], [ 1, %sw.bb60.unlock_crit_edge ], [ %num, %if.end3.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #9
  br label %cleanup176

cleanup176:                                       ; preds = %unlock, %if.end.cleanup176_crit_edge, %entry.cleanup176_crit_edge
  %retval.0 = phi i32 [ %ret.3, %unlock ], [ -19, %entry.cleanup176_crit_edge ], [ -11, %if.end.cleanup176_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw210x_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #2 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %0 = call ptr @memcpy(ptr %msg, ptr @__const.dw210x_set_voltage.msg, i32 12)
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %1 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %5 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.354)
  switch i32 %voltage, label %entry.if.end4_crit_edge [
    i32 1, label %entry.if.end4.sink.split_crit_edge
    i32 0, label %if.then2
  ]

entry.if.end4.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.sink.split

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %if.then2, %entry.if.end4.sink.split_crit_edge
  %dw210x_set_voltage.command_13v.sink = phi ptr [ @dw210x_set_voltage.command_13v, %if.then2 ], [ @dw210x_set_voltage.command_18v, %entry.if.end4.sink.split_crit_edge ]
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dw210x_set_voltage.command_13v.sink, ptr %buf3, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %entry.if.end4_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %8, i32 0, i32 8
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sharp_z0194a_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %srate)
  %cmp = icmp ult i32 %srate, 1500000
  br i1 %cmp, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 3000000
  br i1 %cmp1, label %if.else.if.end19_crit_edge, label %if.else3

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 7000000
  br i1 %cmp4, label %if.else3.if.end19_crit_edge, label %if.else6

if.else3.if.end19_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 14000000
  br i1 %cmp7, label %if.else6.if.end19_crit_edge, label %if.else9

if.else6.if.end19_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %srate)
  %cmp10 = icmp ult i32 %srate, 30000000
  br i1 %cmp10, label %if.else9.if.end19_crit_edge, label %if.else12

if.else9.if.end19_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp13 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp13, i8 -76, i8 0
  %spec.select40 = select i1 %cmp13, i8 81, i8 0
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.else9.if.end19_crit_edge, %if.else6.if.end19_crit_edge, %if.else3.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %aclk.0 = phi i8 [ -73, %entry.if.end19_crit_edge ], [ -73, %if.else.if.end19_crit_edge ], [ -73, %if.else3.if.end19_crit_edge ], [ -73, %if.else6.if.end19_crit_edge ], [ -74, %if.else9.if.end19_crit_edge ], [ %spec.select, %if.else12 ]
  %bclk.0 = phi i8 [ 71, %entry.if.end19_crit_edge ], [ 75, %if.else.if.end19_crit_edge ], [ 79, %if.else3.if.end19_crit_edge ], [ 83, %if.else6.if.end19_crit_edge ], [ 83, %if.else9.if.end19_crit_edge ], [ %spec.select40, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 19, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %aclk.0, ptr %0, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %stv0299_writereg.exit.thread, label %stv0299_writereg.exit

stv0299_writereg.exit.thread:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #9
  br label %stv0299_writereg.exit46

stv0299_writereg.exit:                            ; preds = %if.end19
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #9
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #9
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i41, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i41 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %buf.i41, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bclk.0, ptr %6, align 1
  %tobool.not.i43 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i43, label %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, label %if.then.i45

stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge: ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit46

if.then.i45:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i44 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i41, i32 noundef 2) #9
  br label %stv0299_writereg.exit46

stv0299_writereg.exit46:                          ; preds = %if.then.i45, %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #9
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #9
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i47, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i47 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 31, ptr %buf.i47, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %9, align 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %tobool.not.i49 = icmp eq ptr %13, null
  br i1 %tobool.not.i49, label %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge, label %if.then.i51

stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge: ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit52

if.then.i51:                                      ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #11
  %call.i50 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i47, i32 noundef 2) #9
  br label %stv0299_writereg.exit52

stv0299_writereg.exit52:                          ; preds = %if.then.i51, %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #9
  %shr22 = lshr i32 %ratio, 8
  %conv24 = trunc i32 %shr22 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #9
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %buf.i53, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv24, ptr %14, align 1
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %tobool.not.i55 = icmp eq ptr %18, null
  br i1 %tobool.not.i55, label %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge, label %if.then.i57

stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge: ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit58

if.then.i57:                                      ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #11
  %call.i56 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i53, i32 noundef 2) #9
  br label %stv0299_writereg.exit58

stv0299_writereg.exit58:                          ; preds = %if.then.i57, %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #9
  %19 = trunc i32 %ratio to i8
  %conv27 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #9
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i59, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 33, ptr %buf.i59, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv27, ptr %20, align 1
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %tobool.not.i61 = icmp eq ptr %24, null
  br i1 %tobool.not.i61, label %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge, label %if.then.i63

stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge: ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit64

if.then.i63:                                      ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #11
  %call.i62 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i59, i32 noundef 2) #9
  br label %stv0299_writereg.exit64

stv0299_writereg.exit64:                          ; preds = %if.then.i63, %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw2102_serit_i2c_transfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %buf6 = alloca [7 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf6)
  %2 = call ptr @memset(ptr %buf6, i32 0, i32 7)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.355)
  switch i32 %num, label %if.end3.sw.epilog125_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb58
  ]

if.end3.sw.epilog125_crit_edge:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog125

sw.bb:                                            ; preds = %if.end3
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp4.not = icmp eq i16 %5, 1
  br i1 %cmp4.not, label %if.end11, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %5 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv) #12
  br label %sw.epilog125

if.end11:                                         ; preds = %sw.bb
  %len13 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %6 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len13, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %7)
  %cmp15 = icmp ugt i16 %7, 5
  br i1 %cmp15, label %do.end20, label %kmalloc.exit.i

do.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %conv14 = zext i16 %7 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv14) #12
  br label %sw.epilog125

kmalloc.exit.i:                                   ; preds = %if.end11
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %msg, align 4
  %conv28 = trunc i16 %9 to i8
  %shl = shl i8 %conv28, 1
  %10 = ptrtoint ptr %buf6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %shl, ptr %buf6, align 2
  %buf6.1.buf6.1.arrayidx34.sroa_idx = getelementptr inbounds i8, ptr %buf6, i32 1
  %11 = ptrtoint ptr %buf6.1.buf6.1.arrayidx34.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %buf6.1.buf6.1.arrayidx34.sroa_idx, align 1
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %buf6.2.buf6.2.arrayidx37.sroa_idx268 = getelementptr inbounds i8, ptr %buf6, i32 2
  %16 = ptrtoint ptr %buf6.2.buf6.2.arrayidx37.sroa_idx268 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %buf6.2.buf6.2.arrayidx37.sroa_idx268, align 2
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 3) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %kmalloc.exit.i.dw210x_op_rw.exit_crit_edge, label %if.end.i

kmalloc.exit.i.dw210x_op_rw.exit_crit_edge:       ; preds = %kmalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit

if.end.i:                                         ; preds = %kmalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl i32 %20, 8
  %or3.i = or i32 %shl.i.i, -2147483648
  %22 = call ptr @memcpy(ptr %call7.i.i, ptr %buf6, i32 3)
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or3.i, i8 noundef zeroext -62, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 3, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %dw210x_op_rw.exit

dw210x_op_rw.exit:                                ; preds = %if.end.i, %kmalloc.exit.i.dw210x_op_rw.exit_crit_edge
  %23 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev, align 4
  %25 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len13, align 4
  %add49 = add i16 %26, 2
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 8
  %conv6.i159 = zext i16 %add49 to i32
  %call9.i.i185 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i159, i32 noundef 3264) #13
  %tobool.not.i188 = icmp eq ptr %call9.i.i185, null
  br i1 %tobool.not.i188, label %dw210x_op_rw.exit.dw210x_op_rw.exit194_crit_edge, label %if.end.i191

dw210x_op_rw.exit.dw210x_op_rw.exit194_crit_edge: ; preds = %dw210x_op_rw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit194

if.end.i191:                                      ; preds = %dw210x_op_rw.exit
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i157 = shl i32 %28, 8
  %or3.i158 = or i32 %shl.i.i157, -2147483520
  %call16.i192 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or3.i158, i8 noundef zeroext -61, i8 noundef zeroext -64, i16 noundef zeroext 208, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i185, i16 noundef zeroext %add49, i32 noundef 2000) #9
  %29 = call ptr @memcpy(ptr %buf6, ptr %call9.i.i185, i32 %conv6.i159)
  tail call void @kfree(ptr noundef nonnull %call9.i.i185) #9
  br label %dw210x_op_rw.exit194

dw210x_op_rw.exit194:                             ; preds = %if.end.i191, %dw210x_op_rw.exit.dw210x_op_rw.exit194_crit_edge
  %buf53 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %30 = ptrtoint ptr %buf53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf53, align 4
  %32 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len13, align 4
  %conv57 = zext i16 %33 to i32
  %34 = call ptr @memcpy(ptr %31, ptr %buf6.2.buf6.2.arrayidx37.sroa_idx268, i32 %conv57)
  br label %sw.epilog125

sw.bb58:                                          ; preds = %if.end3
  %35 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %msg, align 4
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.356)
  switch i16 %36, label %sw.bb58.sw.epilog125_crit_edge [
    i16 104, label %sw.bb62
    i16 6656, label %sw.bb104
    i16 6144, label %sw.bb116
  ]

sw.bb58.sw.epilog125_crit_edge:                   ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog125

sw.bb62:                                          ; preds = %sw.bb58
  %len64 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %38 = ptrtoint ptr %len64 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %len64, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %39)
  %cmp67 = icmp ugt i16 %39, 5
  br i1 %cmp67, label %do.end72, label %if.end78

do.end72:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #11
  %conv65 = zext i16 %39 to i32
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv65) #12
  br label %sw.epilog125

if.end78:                                         ; preds = %sw.bb62
  %40 = ptrtoint ptr %buf6 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -48, ptr %buf6, align 2
  %conv87 = trunc i16 %39 to i8
  %buf6.1.buf6.1.arrayidx88.sroa_idx = getelementptr inbounds i8, ptr %buf6, i32 1
  %41 = ptrtoint ptr %buf6.1.buf6.1.arrayidx88.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv87, ptr %buf6.1.buf6.1.arrayidx88.sroa_idx, align 1
  %buf92 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %42 = ptrtoint ptr %buf92 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buf92, align 4
  %conv95 = zext i16 %39 to i32
  %buf6.2.buf6.2.add.ptr90.sroa_idx = getelementptr inbounds i8, ptr %buf6, i32 2
  %44 = call ptr @memcpy(ptr %buf6.2.buf6.2.add.ptr90.sroa_idx, ptr %43, i32 %conv95)
  %udev96 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %udev96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %udev96, align 4
  %add101 = add nuw nsw i16 %39, 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %conv6.i197 = zext i16 %add101 to i32
  %call9.i.i223 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i197, i32 noundef 3264) #13
  %tobool.not.i226 = icmp eq ptr %call9.i.i223, null
  br i1 %tobool.not.i226, label %if.end78.sw.epilog125_crit_edge, label %if.end.i229

if.end78.sw.epilog125_crit_edge:                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog125

if.end.i229:                                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i195 = shl i32 %48, 8
  %or3.i196 = or i32 %shl.i.i195, -2147483648
  %49 = call ptr @memcpy(ptr %call9.i.i223, ptr %buf6, i32 %conv6.i197)
  %call16.i230 = tail call i32 @usb_control_msg(ptr noundef %46, i32 noundef %or3.i196, i8 noundef zeroext -62, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i223, i16 noundef zeroext %add101, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i223) #9
  br label %sw.epilog125

sw.bb104:                                         ; preds = %sw.bb58
  %udev105 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %udev105 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %udev105, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i240 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i243 = icmp eq ptr %call7.i.i240, null
  br i1 %tobool.not.i243, label %sw.bb104.dw210x_op_rw.exit249_crit_edge, label %if.end.i246

sw.bb104.dw210x_op_rw.exit249_crit_edge:          ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit249

if.end.i246:                                      ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i233 = shl i32 %53, 8
  %or3.i234 = or i32 %shl.i.i233, -2147483520
  %call16.i247 = tail call i32 @usb_control_msg(ptr noundef %51, i32 noundef %or3.i234, i8 noundef zeroext -72, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i240, i16 noundef zeroext 2, i32 noundef 2000) #9
  %55 = ptrtoint ptr %call7.i.i240 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %call7.i.i240, align 8
  %57 = ptrtoint ptr %buf6 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %buf6, align 2
  tail call void @kfree(ptr noundef nonnull %call7.i.i240) #9
  br label %dw210x_op_rw.exit249

dw210x_op_rw.exit249:                             ; preds = %if.end.i246, %sw.bb104.dw210x_op_rw.exit249_crit_edge
  %58 = ptrtoint ptr %buf6 to i32
  call void @__asan_load1_noabort(i32 %58)
  %buf6.0.buf6.0. = load i8, ptr %buf6, align 2
  %buf110 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %59 = ptrtoint ptr %buf110 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buf110, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %buf6.0.buf6.0., ptr %60, align 1
  %buf6.1.buf6.1.arrayidx112.sroa_idx = getelementptr inbounds i8, ptr %buf6, i32 1
  %62 = ptrtoint ptr %buf6.1.buf6.1.arrayidx112.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %62)
  %buf6.1.buf6.1. = load i8, ptr %buf6.1.buf6.1.arrayidx112.sroa_idx, align 1
  %63 = load ptr, ptr %buf110, align 4
  %arrayidx115 = getelementptr i8, ptr %63, i32 1
  %64 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %buf6.1.buf6.1., ptr %arrayidx115, align 1
  br label %sw.epilog125

sw.bb116:                                         ; preds = %sw.bb58
  %65 = ptrtoint ptr %buf6 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 48, ptr %buf6, align 2
  %buf119 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %66 = ptrtoint ptr %buf119 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buf119, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  %buf6.1.buf6.1.arrayidx121.sroa_idx = getelementptr inbounds i8, ptr %buf6, i32 1
  %70 = ptrtoint ptr %buf6.1.buf6.1.arrayidx121.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %buf6.1.buf6.1.arrayidx121.sroa_idx, align 1
  %udev122 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %71 = ptrtoint ptr %udev122 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %udev122, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i257 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i260 = icmp eq ptr %call7.i.i257, null
  br i1 %tobool.not.i260, label %sw.bb116.sw.epilog125_crit_edge, label %if.end.i263

sw.bb116.sw.epilog125_crit_edge:                  ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog125

if.end.i263:                                      ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i250 = shl i32 %74, 8
  %or3.i251 = or i32 %shl.i.i250, -2147483648
  %76 = ptrtoint ptr %buf6 to i32
  call void @__asan_load2_noabort(i32 %76)
  %buf6.0.267 = load i16, ptr %buf6, align 2
  %77 = ptrtoint ptr %call7.i.i257 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %buf6.0.267, ptr %call7.i.i257, align 8
  %call16.i264 = tail call i32 @usb_control_msg(ptr noundef %72, i32 noundef %or3.i251, i8 noundef zeroext -78, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i257, i16 noundef zeroext 2, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i257) #9
  br label %sw.epilog125

sw.epilog125:                                     ; preds = %if.end.i263, %sw.bb116.sw.epilog125_crit_edge, %dw210x_op_rw.exit249, %if.end.i229, %if.end78.sw.epilog125_crit_edge, %do.end72, %sw.bb58.sw.epilog125_crit_edge, %dw210x_op_rw.exit194, %do.end20, %do.end, %if.end3.sw.epilog125_crit_edge
  %num.addr.0 = phi i32 [ %num, %if.end3.sw.epilog125_crit_edge ], [ 1, %sw.bb58.sw.epilog125_crit_edge ], [ 1, %dw210x_op_rw.exit249 ], [ -95, %do.end72 ], [ -95, %do.end ], [ -95, %do.end20 ], [ 2, %dw210x_op_rw.exit194 ], [ 1, %if.end78.sw.epilog125_crit_edge ], [ 1, %if.end.i229 ], [ 1, %sw.bb116.sw.epilog125_crit_edge ], [ 1, %if.end.i263 ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog125, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %num.addr.0, %sw.epilog125 ], [ -19, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf6)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw2104_frontend_attach(ptr nocapture noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @demod_probe, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end62_crit_edge, label %if.then

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then:                                          ; preds = %entry
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.90) #9
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %cond.end, label %if.then.if.then5_crit_edge

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

cond.end:                                         ; preds = %if.then
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.91) #9
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.90) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then5_crit_edge

cond.end.if.then5_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %cond.end.if.then5_crit_edge, %if.then.if.then5_crit_edge
  %cond308 = phi ptr [ %call3, %cond.end.if.then5_crit_edge ], [ %call, %if.then.if.then5_crit_edge ]
  %1 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %2, i32 0, i32 8
  %call6 = tail call ptr %cond308(ptr noundef nonnull @dw2104a_stv0900_config, ptr noundef %i2c_adap, i32 noundef 0) #9
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.then7, label %if.then15

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.90) #9
  br label %if.end9.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #12
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %do.end, %if.then7
  %fe_adap310 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %3 = ptrtoint ptr %fe_adap310 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fe_adap310, align 8
  br label %if.end62

if.then15:                                        ; preds = %if.then5
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %fe_adap, align 8
  %call18 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.94) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %cond.end24, label %if.then15.if.then27_crit_edge

if.then15.if.then27_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

cond.end24:                                       ; preds = %if.then15
  %call22 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.95) #9
  %call23 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.94) #9
  %tobool26.not = icmp eq ptr %call23, null
  br i1 %tobool26.not, label %do.end40, label %cond.end24.if.then27_crit_edge

cond.end24.if.then27_crit_edge:                   ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

if.then27:                                        ; preds = %cond.end24.if.then27_crit_edge, %if.then15.if.then27_crit_edge
  %cond25315 = phi ptr [ %call23, %cond.end24.if.then27_crit_edge ], [ %call18, %if.then15.if.then27_crit_edge ]
  %5 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fe_adap, align 8
  %7 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d, align 8
  %i2c_adap32 = getelementptr inbounds %struct.dvb_usb_device, ptr %8, i32 0, i32 8
  %call33 = tail call ptr %cond25315(ptr noundef %6, ptr noundef nonnull @dw2104a_stb6100_config, ptr noundef %i2c_adap32) #9
  %cmp34 = icmp eq ptr %call33, null
  br i1 %cmp34, label %if.then35, label %if.then46

if.then35:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.94) #9
  br label %if.end62

do.end40:                                         ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #12
  br label %if.end62

if.then46:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fe_adap, align 8
  %set_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %10, i32 0, i32 1, i32 32, i32 16
  %11 = ptrtoint ptr %set_frequency to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @stb6100_set_freq, ptr %set_frequency, align 4
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %10, i32 0, i32 1, i32 32, i32 9
  %12 = ptrtoint ptr %get_frequency to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @stb6100_get_freq, ptr %get_frequency, align 4
  %set_bandwidth = getelementptr inbounds %struct.dvb_frontend, ptr %10, i32 0, i32 1, i32 32, i32 17
  %13 = ptrtoint ptr %set_bandwidth to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @stb6100_set_bandw, ptr %set_bandwidth, align 4
  %get_bandwidth = getelementptr inbounds %struct.dvb_frontend, ptr %10, i32 0, i32 1, i32 32, i32 10
  %14 = ptrtoint ptr %get_bandwidth to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @stb6100_get_bandw, ptr %get_bandwidth, align 4
  %15 = load ptr, ptr %fe_adap, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %15, i32 0, i32 1, i32 25
  %16 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @dw210x_set_voltage, ptr %set_voltage, align 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #12
  br label %cleanup

if.end62:                                         ; preds = %do.end40, %if.then35, %if.end9.thread, %entry.if.end62_crit_edge
  %17 = load i32, ptr @demod_probe, align 4
  %and63 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.if.end143_crit_edge, label %if.then65

if.end62.if.end143_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143

if.then65:                                        ; preds = %if.end62
  %call68 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.90) #9
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %cond.end74, label %if.then65.if.then77_crit_edge

if.then65.if.then77_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then77

cond.end74:                                       ; preds = %if.then65
  %call72 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.91) #9
  %call73 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.90) #9
  %tobool76.not = icmp eq ptr %call73, null
  br i1 %tobool76.not, label %do.end87, label %cond.end74.if.then77_crit_edge

cond.end74.if.then77_crit_edge:                   ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then77

if.then77:                                        ; preds = %cond.end74.if.then77_crit_edge, %if.then65.if.then77_crit_edge
  %cond75321 = phi ptr [ %call73, %cond.end74.if.then77_crit_edge ], [ %call68, %if.then65.if.then77_crit_edge ]
  %18 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d, align 8
  %i2c_adap79 = getelementptr inbounds %struct.dvb_usb_device, ptr %19, i32 0, i32 8
  %call80 = tail call ptr %cond75321(ptr noundef nonnull @dw2104_stv0900_config, ptr noundef %i2c_adap79, i32 noundef 0) #9
  %cmp81 = icmp eq ptr %call80, null
  br i1 %cmp81, label %if.then82, label %if.then99

if.then82:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.90) #9
  br label %if.end90.thread

do.end87:                                         ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #12
  br label %if.end90.thread

if.end90.thread:                                  ; preds = %do.end87, %if.then82
  %fe_adap92323 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %20 = ptrtoint ptr %fe_adap92323 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %fe_adap92323, align 8
  br label %if.end143

if.then99:                                        ; preds = %if.then77
  %fe_adap92 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %21 = ptrtoint ptr %fe_adap92 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call80, ptr %fe_adap92, align 8
  %call102 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.104) #9
  %tobool103.not = icmp eq ptr %call102, null
  br i1 %tobool103.not, label %cond.end108, label %if.then99.if.then111_crit_edge

if.then99.if.then111_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then111

cond.end108:                                      ; preds = %if.then99
  %call106 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.105) #9
  %call107 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.104) #9
  %tobool110.not = icmp eq ptr %call107, null
  br i1 %tobool110.not, label %do.end124, label %cond.end108.if.then111_crit_edge

cond.end108.if.then111_crit_edge:                 ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then111

if.then111:                                       ; preds = %cond.end108.if.then111_crit_edge, %if.then99.if.then111_crit_edge
  %cond109328 = phi ptr [ %call107, %cond.end108.if.then111_crit_edge ], [ %call102, %if.then99.if.then111_crit_edge ]
  %22 = ptrtoint ptr %fe_adap92 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fe_adap92, align 8
  %24 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d, align 8
  %i2c_adap116 = getelementptr inbounds %struct.dvb_usb_device, ptr %25, i32 0, i32 8
  %call117 = tail call ptr %cond109328(ptr noundef %23, ptr noundef nonnull @dw2104_stv6110_config, ptr noundef %i2c_adap116) #9
  %cmp118 = icmp eq ptr %call117, null
  br i1 %cmp118, label %if.then119, label %if.then130

if.then119:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.104) #9
  br label %if.end143

do.end124:                                        ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #11
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #12
  br label %if.end143

if.then130:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %fe_adap92 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fe_adap92, align 8
  %set_voltage135 = getelementptr inbounds %struct.dvb_frontend, ptr %27, i32 0, i32 1, i32 25
  %28 = ptrtoint ptr %set_voltage135 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dw210x_set_voltage, ptr %set_voltage135, align 4
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110) #12
  br label %cleanup

if.end143:                                        ; preds = %do.end124, %if.then119, %if.end90.thread, %if.end62.if.end143_crit_edge
  %29 = load i32, ptr @demod_probe, align 4
  %and144 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end143.if.end192_crit_edge, label %if.then146

if.end143.if.end192_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.then146:                                       ; preds = %if.end143
  %call149 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.112) #9
  %tobool150.not = icmp eq ptr %call149, null
  br i1 %tobool150.not, label %cond.end155, label %if.then146.if.then158_crit_edge

if.then146.if.then158_crit_edge:                  ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

cond.end155:                                      ; preds = %if.then146
  %call153 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.113) #9
  %call154 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.112) #9
  %tobool157.not = icmp eq ptr %call154, null
  br i1 %tobool157.not, label %do.end168, label %cond.end155.if.then158_crit_edge

cond.end155.if.then158_crit_edge:                 ; preds = %cond.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158

if.then158:                                       ; preds = %cond.end155.if.then158_crit_edge, %if.then146.if.then158_crit_edge
  %cond156334 = phi ptr [ %call154, %cond.end155.if.then158_crit_edge ], [ %call149, %if.then146.if.then158_crit_edge ]
  %30 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d, align 8
  %i2c_adap160 = getelementptr inbounds %struct.dvb_usb_device, ptr %31, i32 0, i32 8
  %call161 = tail call ptr %cond156334(ptr noundef nonnull @dw2104_config, ptr noundef %i2c_adap160) #9
  %cmp162 = icmp eq ptr %call161, null
  br i1 %cmp162, label %if.then163, label %if.then180

if.then163:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.112) #9
  br label %if.end171.thread

do.end168:                                        ; preds = %cond.end155
  call void @__sanitizer_cov_trace_pc() #11
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #12
  br label %if.end171.thread

if.end171.thread:                                 ; preds = %do.end168, %if.then163
  %fe_adap173336 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %32 = ptrtoint ptr %fe_adap173336 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %fe_adap173336, align 8
  br label %if.end192

if.then180:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #11
  %fe_adap173 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %33 = ptrtoint ptr %fe_adap173 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call161, ptr %fe_adap173, align 8
  %set_voltage185 = getelementptr inbounds %struct.dvb_frontend, ptr %call161, i32 0, i32 1, i32 25
  %34 = ptrtoint ptr %set_voltage185 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @dw210x_set_voltage, ptr %set_voltage185, align 4
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #12
  br label %cleanup

if.end192:                                        ; preds = %if.end171.thread, %if.end143.if.end192_crit_edge
  %call195 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.120) #9
  %tobool196.not = icmp eq ptr %call195, null
  br i1 %tobool196.not, label %cond.end201, label %if.end192.if.then204_crit_edge

if.end192.if.then204_crit_edge:                   ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then204

cond.end201:                                      ; preds = %if.end192
  %call199 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.121) #9
  %call200 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.120) #9
  %tobool203.not = icmp eq ptr %call200, null
  br i1 %tobool203.not, label %do.end214, label %cond.end201.if.then204_crit_edge

cond.end201.if.then204_crit_edge:                 ; preds = %cond.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then204

if.then204:                                       ; preds = %cond.end201.if.then204_crit_edge, %if.end192.if.then204_crit_edge
  %cond202340 = phi ptr [ %call200, %cond.end201.if.then204_crit_edge ], [ %call195, %if.end192.if.then204_crit_edge ]
  %35 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d, align 8
  %i2c_adap206 = getelementptr inbounds %struct.dvb_usb_device, ptr %36, i32 0, i32 8
  %call207 = tail call ptr %cond202340(ptr noundef nonnull @dw2104_ds3000_config, ptr noundef %i2c_adap206) #9
  %cmp208 = icmp eq ptr %call207, null
  br i1 %cmp208, label %if.then209, label %if.then226

if.then209:                                       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.120) #9
  br label %if.end217.thread

do.end214:                                        ; preds = %cond.end201
  call void @__sanitizer_cov_trace_pc() #11
  %call216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #12
  br label %if.end217.thread

if.end217.thread:                                 ; preds = %do.end214, %if.then209
  %fe_adap219342 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %37 = ptrtoint ptr %fe_adap219342 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %fe_adap219342, align 8
  br label %cleanup

if.then226:                                       ; preds = %if.then204
  %fe_adap219 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %38 = ptrtoint ptr %fe_adap219 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call207, ptr %fe_adap219, align 8
  %call229 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.125) #9
  %tobool230.not = icmp eq ptr %call229, null
  br i1 %tobool230.not, label %cond.end235, label %if.then226.if.then238_crit_edge

if.then226.if.then238_crit_edge:                  ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then238

cond.end235:                                      ; preds = %if.then226
  %call233 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.126) #9
  %call234 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.125) #9
  %tobool237.not = icmp eq ptr %call234, null
  br i1 %tobool237.not, label %do.end251, label %cond.end235.if.then238_crit_edge

cond.end235.if.then238_crit_edge:                 ; preds = %cond.end235
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then238

if.then238:                                       ; preds = %cond.end235.if.then238_crit_edge, %if.then226.if.then238_crit_edge
  %cond236347 = phi ptr [ %call234, %cond.end235.if.then238_crit_edge ], [ %call229, %if.then226.if.then238_crit_edge ]
  %39 = ptrtoint ptr %fe_adap219 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fe_adap219, align 8
  %41 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d, align 8
  %i2c_adap243 = getelementptr inbounds %struct.dvb_usb_device, ptr %42, i32 0, i32 8
  %call244 = tail call ptr %cond236347(ptr noundef %40, ptr noundef nonnull @dw2104_ts2020_config, ptr noundef %i2c_adap243) #9
  %cmp245 = icmp eq ptr %call244, null
  br i1 %cmp245, label %if.then246, label %if.then238.if.end254_crit_edge

if.then238.if.end254_crit_edge:                   ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end254

if.then246:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.125) #9
  br label %if.end254

do.end251:                                        ; preds = %cond.end235
  call void @__sanitizer_cov_trace_pc() #11
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #12
  br label %if.end254

if.end254:                                        ; preds = %do.end251, %if.then246, %if.then238.if.end254_crit_edge
  %43 = ptrtoint ptr %fe_adap219 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fe_adap219, align 8
  %set_voltage260 = getelementptr inbounds %struct.dvb_frontend, ptr %44, i32 0, i32 1, i32 25
  %45 = ptrtoint ptr %set_voltage260 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @dw210x_set_voltage, ptr %set_voltage260, align 4
  %call265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end254, %if.end217.thread, %if.then180, %if.then130, %if.then46
  %retval.0 = phi i32 [ 0, %if.then46 ], [ 0, %if.then130 ], [ 0, %if.then180 ], [ 0, %if.end254 ], [ -5, %if.end217.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_freq(ptr noundef %fe, i32 noundef %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %5 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %6(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_params, align 4
  %call8 = tail call i32 %8(ptr noundef %fe) #9
  %9 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %10 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 %11(ptr noundef %fe, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_freq(ptr noundef %fe, ptr noundef %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %0 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_frequency, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_frequency, align 4
  %call6 = tail call i32 %5(ptr noundef %fe, ptr noundef %frequency) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.136) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 %7(ptr noundef %fe, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_bandw(ptr noundef %fe, i32 noundef %bandwidth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %5 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %6(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_params, align 4
  %call7 = tail call i32 %8(ptr noundef %fe) #9
  %9 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.then14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 %11(ptr noundef %fe, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end11.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_bandw(ptr noundef %fe, ptr noundef %bandwidth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %get_bandwidth = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 10
  %0 = ptrtoint ptr %get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_bandwidth, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_bandwidth, align 4
  %call6 = tail call i32 %5(ptr noundef %fe, ptr noundef %bandwidth) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.139) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 %7(ptr noundef %fe, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw2104_i2c_transfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %ibuf22 = alloca [64 x i8], align 1
  %obuf78 = alloca [19 x i8], align 1
  %obuf132 = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup180_crit_edge, label %if.end

entry.cleanup180_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup180

if.end:                                           ; preds = %entry
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup180_crit_edge, label %for.cond.preheader

if.end.cleanup180_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup180

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp4361 = icmp sgt i32 %num, 0
  br i1 %cmp4361, label %for.body.lr.ph, label %for.cond.preheader.unlock_crit_edge

for.cond.preheader.unlock_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %udev14 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %obuf132, i32 2
  %obuf132.1.obuf132.1.arrayidx158.sroa_idx = getelementptr inbounds i8, ptr %obuf132, i32 1
  %obuf132.2.obuf132.2.add.ptr160.sroa_idx = getelementptr inbounds i8, ptr %obuf132, i32 2
  %obuf78.1.obuf78.1..sroa_idx = getelementptr inbounds i8, ptr %obuf78, i32 1
  %obuf78.2.obuf78.2..sroa_idx = getelementptr inbounds i8, ptr %obuf78, i32 2
  %obuf78.3.obuf78.3..sroa_idx367 = getelementptr inbounds i8, ptr %obuf78, i32 3
  %3 = getelementptr inbounds i8, ptr %obuf78, i32 2
  %ibuf22.2.ibuf22.2.add.ptr.sroa_idx = getelementptr inbounds i8, ptr %ibuf22, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.0362 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0362
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.357)
  switch i16 %5, label %sw.default [
    i16 6656, label %sw.bb
    i16 6144, label %sw.bb8
  ]

sw.bb:                                            ; preds = %for.body
  %7 = ptrtoint ptr %udev14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev14, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sw.bb.dw210x_op_rw.exit_crit_edge, label %if.end.i

sw.bb.dw210x_op_rw.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl i32 %10, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or3.i, i8 noundef zeroext -72, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2, i32 noundef 2000) #9
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %ibuf.sroa.0.0.copyload = load i8, ptr %call7.i.i, align 8
  %ibuf.sroa.5.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 1
  %13 = ptrtoint ptr %ibuf.sroa.5.0.call7.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %ibuf.sroa.5.0.copyload = load i8, ptr %ibuf.sroa.5.0.call7.i.i.sroa_idx, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %dw210x_op_rw.exit

dw210x_op_rw.exit:                                ; preds = %if.end.i, %sw.bb.dw210x_op_rw.exit_crit_edge
  %ibuf.sroa.5.0 = phi i8 [ -1, %sw.bb.dw210x_op_rw.exit_crit_edge ], [ %ibuf.sroa.5.0.copyload, %if.end.i ]
  %ibuf.sroa.0.0 = phi i8 [ -1, %sw.bb.dw210x_op_rw.exit_crit_edge ], [ %ibuf.sroa.0.0.copyload, %if.end.i ]
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0362, i32 3
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  %ibuf.sroa.5.0.insert.ext = zext i8 %ibuf.sroa.5.0 to i16
  %ibuf.sroa.0.0.insert.ext = zext i8 %ibuf.sroa.0.0 to i16
  %ibuf.sroa.0.0.insert.shift = shl nuw i16 %ibuf.sroa.0.0.insert.ext, 8
  %ibuf.sroa.0.0.insert.insert = or i16 %ibuf.sroa.0.0.insert.shift, %ibuf.sroa.5.0.insert.ext
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %ibuf.sroa.0.0.insert.insert, ptr %15, align 1
  br label %for.inc

sw.bb8:                                           ; preds = %for.body
  %buf11 = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0362, i32 3
  %17 = ptrtoint ptr %buf11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf11, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %21 = ptrtoint ptr %udev14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev14, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i260 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i261 = icmp eq ptr %call7.i.i260, null
  br i1 %tobool.not.i261, label %sw.bb8.for.inc_crit_edge, label %if.end.i262

sw.bb8.for.inc_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i262:                                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i258 = shl i32 %24, 8
  %or3.i259 = or i32 %shl.i.i258, -2147483648
  %26 = ptrtoint ptr %call7.i.i260 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 48, ptr %call7.i.i260, align 8
  %obuf.sroa.5.0.call7.i.i260.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i260, i32 1
  %27 = ptrtoint ptr %obuf.sroa.5.0.call7.i.i260.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %20, ptr %obuf.sroa.5.0.call7.i.i260.sroa_idx, align 1
  %call16.i263 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or3.i259, i8 noundef zeroext -78, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i260, i16 noundef zeroext 2, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i260) #9
  br label %for.inc

sw.default:                                       ; preds = %for.body
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0362, i32 1
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %29)
  %cmp19 = icmp eq i16 %29, 1
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %sw.default
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ibuf22)
  %30 = call ptr @memset(ptr %ibuf22, i32 255, i32 64)
  %len24 = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0362, i32 2
  %31 = ptrtoint ptr %len24 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %len24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %32)
  %cmp26 = icmp ugt i16 %32, 62
  br i1 %cmp26, label %cleanup, label %if.end33

if.end33:                                         ; preds = %if.then21
  %add = add nuw nsw i16 %32, 2
  %33 = ptrtoint ptr %udev14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %udev14, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 8
  %conv6.i = zext i16 %add to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i, i32 noundef 3264) #13
  %tobool.not.i269 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i269, label %if.end33.dw210x_op_rw.exit273_crit_edge, label %if.end.i270

if.end33.dw210x_op_rw.exit273_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit273

if.end.i270:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i266 = shl i32 %36, 8
  %or3.i267 = or i32 %shl.i.i266, -2147483520
  %shl = shl i16 %5, 1
  %add38 = or i16 %shl, 1
  %call16.i271 = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or3.i267, i8 noundef zeroext -61, i8 noundef zeroext -64, i16 noundef zeroext %add38, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %add, i32 noundef 2000) #9
  %37 = call ptr @memcpy(ptr %ibuf22, ptr %call9.i.i, i32 %conv6.i)
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %dw210x_op_rw.exit273

dw210x_op_rw.exit273:                             ; preds = %if.end.i270, %if.end33.dw210x_op_rw.exit273_crit_edge
  %buf48 = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0362, i32 3
  %38 = ptrtoint ptr %buf48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buf48, align 4
  %40 = ptrtoint ptr %len24 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %len24, align 4
  %conv52 = zext i16 %41 to i32
  %42 = call ptr @memcpy(ptr %39, ptr %ibuf22.2.ibuf22.2.add.ptr.sroa_idx, i32 %conv52)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ibuf22)
  br label %for.inc

cleanup:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %conv25 = zext i16 %32 to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv25) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ibuf22)
  br label %unlock

if.else:                                          ; preds = %sw.default
  %buf55 = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0362, i32 3
  %53 = ptrtoint ptr %buf55 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf55, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %56)
  %cmp58 = icmp eq i8 %56, -80
  call void @__sanitizer_cov_trace_const_cmp2(i16 104, i16 %5)
  %cmp63 = icmp eq i16 %5, 104
  %or.cond = select i1 %cmp58, i1 %cmp63, i1 false
  br i1 %or.cond, label %if.else.if.then77_crit_edge, label %lor.lhs.false

if.else.if.then77_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then77

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %56)
  %cmp69 = icmp eq i8 %56, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 85, i16 %5)
  %cmp75 = icmp eq i16 %5, 85
  %or.cond358 = select i1 %cmp69, i1 %cmp75, i1 false
  br i1 %or.cond358, label %lor.lhs.false.if.then77_crit_edge, label %if.else131

lor.lhs.false.if.then77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then77

if.then77:                                        ; preds = %lor.lhs.false.if.then77_crit_edge, %if.else.if.then77_crit_edge
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %obuf78)
  %conv81 = trunc i16 %5 to i8
  %shl82 = shl nuw i8 %conv81, 1
  %57 = call ptr @memset(ptr %3, i32 255, i32 17)
  %58 = ptrtoint ptr %obuf78 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %shl82, ptr %obuf78, align 1
  %len86 = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0362, i32 2
  %59 = ptrtoint ptr %len86 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %len86, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %60)
  %cmp88 = icmp ugt i16 %60, 15
  %conv87 = trunc i16 %60 to i8
  %spec.select = select i1 %cmp88, i8 17, i8 %conv87
  %61 = ptrtoint ptr %obuf78.1.obuf78.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %spec.select, ptr %obuf78.1.obuf78.1..sroa_idx, align 1
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %54, align 1
  %64 = ptrtoint ptr %obuf78.2.obuf78.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %obuf78.2.obuf78.2..sroa_idx, align 1
  %conv101 = zext i16 %60 to i32
  %sub = add nsw i32 %conv101, -1
  br label %do.body102

do.body102:                                       ; preds = %dw210x_op_rw.exit311.do.body102_crit_edge, %if.then77
  %len.0 = phi i32 [ %sub, %if.then77 ], [ %sub126, %dw210x_op_rw.exit311.do.body102_crit_edge ]
  %i.0 = phi i32 [ 1, %if.then77 ], [ %add125, %dw210x_op_rw.exit311.do.body102_crit_edge ]
  %65 = ptrtoint ptr %buf55 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buf55, align 4
  %add.ptr107 = getelementptr i8, ptr %66, i32 %i.0
  %67 = tail call i32 @llvm.smin.i32(i32 %len.0, i32 16)
  %68 = call ptr @memcpy(ptr %obuf78.3.obuf78.3..sroa_idx367, ptr %add.ptr107, i32 %67)
  %69 = ptrtoint ptr %udev14 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %udev14, align 4
  %71 = trunc i32 %67 to i16
  %conv123 = add nsw i16 %71, 3
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %70, align 8
  %conv6.i276 = zext i16 %conv123 to i32
  %call9.i.i302 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i276, i32 noundef 3264) #13
  %tobool.not.i305 = icmp eq ptr %call9.i.i302, null
  br i1 %tobool.not.i305, label %do.body102.dw210x_op_rw.exit311_crit_edge, label %if.end.i308

do.body102.dw210x_op_rw.exit311_crit_edge:        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit311

if.end.i308:                                      ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i274 = shl i32 %73, 8
  %or3.i275 = or i32 %shl.i.i274, -2147483648
  %74 = call ptr @memcpy(ptr %call9.i.i302, ptr %obuf78, i32 %conv6.i276)
  %call16.i309 = tail call i32 @usb_control_msg(ptr noundef %70, i32 noundef %or3.i275, i8 noundef zeroext -62, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i302, i16 noundef zeroext %conv123, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i302) #9
  br label %dw210x_op_rw.exit311

dw210x_op_rw.exit311:                             ; preds = %if.end.i308, %do.body102.dw210x_op_rw.exit311_crit_edge
  %add125 = add nuw nsw i32 %i.0, 16
  %sub126 = add nsw i32 %len.0, -16
  %cmp128 = icmp sgt i32 %len.0, 16
  br i1 %cmp128, label %dw210x_op_rw.exit311.do.body102_crit_edge, label %do.end130

dw210x_op_rw.exit311.do.body102_crit_edge:        ; preds = %dw210x_op_rw.exit311
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

do.end130:                                        ; preds = %dw210x_op_rw.exit311
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %obuf78)
  br label %for.inc

if.else131:                                       ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %obuf132)
  %75 = call ptr @memset(ptr %2, i32 255, i32 62)
  %len134 = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0362, i32 2
  %76 = ptrtoint ptr %len134 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %len134, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %77)
  %cmp137 = icmp ugt i16 %77, 62
  br i1 %cmp137, label %cleanup174, label %if.end148

if.end148:                                        ; preds = %if.else131
  %conv151 = trunc i16 %5 to i8
  %shl152 = shl i8 %conv151, 1
  %78 = ptrtoint ptr %obuf132 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %shl152, ptr %obuf132, align 1
  %conv157 = trunc i16 %77 to i8
  %79 = ptrtoint ptr %obuf132.1.obuf132.1.arrayidx158.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv157, ptr %obuf132.1.obuf132.1.arrayidx158.sroa_idx, align 1
  %conv165 = zext i16 %77 to i32
  %80 = call ptr @memcpy(ptr %obuf132.2.obuf132.2.add.ptr160.sroa_idx, ptr %54, i32 %conv165)
  %81 = ptrtoint ptr %udev14 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %udev14, align 4
  %add171 = add nuw nsw i16 %77, 2
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  %conv6.i314 = zext i16 %add171 to i32
  %call9.i.i340 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i314, i32 noundef 3264) #13
  %tobool.not.i343 = icmp eq ptr %call9.i.i340, null
  br i1 %tobool.not.i343, label %if.end148.cleanup174.thread_crit_edge, label %if.end.i346

if.end148.cleanup174.thread_crit_edge:            ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup174.thread

if.end.i346:                                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i312 = shl i32 %84, 8
  %or3.i313 = or i32 %shl.i.i312, -2147483648
  %85 = call ptr @memcpy(ptr %call9.i.i340, ptr %obuf132, i32 %conv6.i314)
  %call16.i347 = tail call i32 @usb_control_msg(ptr noundef %82, i32 noundef %or3.i313, i8 noundef zeroext -62, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i340, i16 noundef zeroext %add171, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i340) #9
  br label %cleanup174.thread

cleanup174.thread:                                ; preds = %if.end.i346, %if.end148.cleanup174.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %obuf132)
  br label %for.inc

cleanup174:                                       ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #11
  %conv135 = zext i16 %77 to i32
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv135) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %obuf132)
  br label %unlock

for.inc:                                          ; preds = %cleanup174.thread, %do.end130, %dw210x_op_rw.exit273, %if.end.i262, %sw.bb8.for.inc_crit_edge, %dw210x_op_rw.exit
  %inc = add nuw nsw i32 %j.0362, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.unlock_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.unlock_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

unlock:                                           ; preds = %for.inc.unlock_crit_edge, %cleanup174, %cleanup, %for.cond.preheader.unlock_crit_edge
  %ret.4 = phi i32 [ -95, %cleanup ], [ -95, %cleanup174 ], [ %num, %for.cond.preheader.unlock_crit_edge ], [ %num, %for.inc.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #9
  br label %cleanup180

cleanup180:                                       ; preds = %unlock, %if.end.cleanup180_crit_edge, %entry.cleanup180_crit_edge
  %retval.0 = phi i32 [ %ret.4, %unlock ], [ -19, %entry.cleanup180_crit_edge ], [ -11, %if.end.cleanup180_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw3101_frontend_attach(ptr nocapture noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.147) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.148) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.147) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond26 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call4 = tail call ptr %cond26(ptr noundef nonnull @dw3101_tda10023_config, ptr noundef %i2c_adap, i8 noundef zeroext 72) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %do.end16

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.147) #9
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149) #12
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe_adap28 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %2 = ptrtoint ptr %fe_adap28 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fe_adap28, align 8
  br label %return

do.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %3 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %fe_adap, align 8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #12
  br label %return

return:                                           ; preds = %do.end16, %if.end7.thread
  %retval.0 = phi i32 [ 0, %do.end16 ], [ -5, %if.end7.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw3101_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.27) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
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
  %call4 = tail call ptr %cond14(ptr noundef %1, i32 noundef 96, ptr noundef %i2c_adap, i32 noundef 7) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.26) #9
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw3101_i2c_transfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %ibuf = alloca [64 x i8], align 1
  %obuf = alloca [3 x i8], align 1
  %obuf65 = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup178_crit_edge, label %if.end

entry.cleanup178_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup178

if.end:                                           ; preds = %entry
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup178_crit_edge, label %if.end3

if.end.cleanup178_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup178

if.end3:                                          ; preds = %if.end
  %2 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.358)
  switch i32 %num, label %sw.epilog118 [
    i32 2, label %sw.bb
    i32 1, label %sw.bb60
  ]

sw.bb:                                            ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ibuf)
  %3 = call ptr @memset(ptr %ibuf, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %obuf)
  %obuf.1.obuf.1..sroa_idx = getelementptr inbounds i8, ptr %obuf, i32 1
  %obuf.2.obuf.2..sroa_idx = getelementptr inbounds i8, ptr %obuf, i32 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp4.not = icmp eq i16 %5, 1
  br i1 %cmp4.not, label %if.end11, label %sw.bb.cleanup.thread_crit_edge

sw.bb.cleanup.thread_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end11:                                         ; preds = %sw.bb
  %len13 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %6 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len13, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %7)
  %cmp16 = icmp ugt i16 %7, 62
  br i1 %cmp16, label %if.end11.cleanup.thread_crit_edge, label %kmalloc.exit.i

if.end11.cleanup.thread_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

kmalloc.exit.i:                                   ; preds = %if.end11
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %msg, align 4
  %conv29 = trunc i16 %9 to i8
  %shl = shl i8 %conv29, 1
  %10 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %shl, ptr %obuf, align 1
  %11 = ptrtoint ptr %obuf.1.obuf.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %obuf.1.obuf.1..sroa_idx, align 1
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %16 = ptrtoint ptr %obuf.2.obuf.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %obuf.2.obuf.2..sroa_idx, align 1
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 3) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %kmalloc.exit.i.dw210x_op_rw.exit_crit_edge, label %if.end.i

kmalloc.exit.i.dw210x_op_rw.exit_crit_edge:       ; preds = %kmalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit

if.end.i:                                         ; preds = %kmalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl i32 %20, 8
  %or3.i = or i32 %shl.i.i, -2147483648
  %22 = call ptr @memcpy(ptr %call7.i.i, ptr %obuf, i32 3)
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or3.i, i8 noundef zeroext -62, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 3, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %dw210x_op_rw.exit

dw210x_op_rw.exit:                                ; preds = %if.end.i, %kmalloc.exit.i.dw210x_op_rw.exit_crit_edge
  %23 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev, align 4
  %25 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len13, align 4
  %add50 = add i16 %26, 2
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 8
  %conv6.i223 = zext i16 %add50 to i32
  %call9.i.i249 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i223, i32 noundef 3264) #13
  %tobool.not.i252 = icmp eq ptr %call9.i.i249, null
  br i1 %tobool.not.i252, label %dw210x_op_rw.exit.cleanup_crit_edge, label %if.end.i255

dw210x_op_rw.exit.cleanup_crit_edge:              ; preds = %dw210x_op_rw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i255:                                      ; preds = %dw210x_op_rw.exit
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i221 = shl i32 %28, 8
  %or3.i222 = or i32 %shl.i.i221, -2147483520
  %call16.i256 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or3.i222, i8 noundef zeroext -61, i8 noundef zeroext -64, i16 noundef zeroext 25, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i249, i16 noundef zeroext %add50, i32 noundef 2000) #9
  %29 = call ptr @memcpy(ptr %ibuf, ptr %call9.i.i249, i32 %conv6.i223)
  tail call void @kfree(ptr noundef nonnull %call9.i.i249) #9
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end11.cleanup.thread_crit_edge, %sw.bb.cleanup.thread_crit_edge
  %.sink = phi i16 [ %5, %sw.bb.cleanup.thread_crit_edge ], [ %7, %if.end11.cleanup.thread_crit_edge ]
  %.str.30.sink = phi ptr [ @.str.30, %sw.bb.cleanup.thread_crit_edge ], [ @.str.33, %if.end11.cleanup.thread_crit_edge ]
  %conv = zext i16 %.sink to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.30.sink, i32 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %obuf)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ibuf)
  br label %unlock

cleanup:                                          ; preds = %if.end.i255, %dw210x_op_rw.exit.cleanup_crit_edge
  %buf54 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %30 = ptrtoint ptr %buf54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf54, align 4
  %32 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len13, align 4
  %conv58 = zext i16 %33 to i32
  %ibuf.2.ibuf.2.add.ptr.sroa_idx = getelementptr inbounds i8, ptr %ibuf, i32 2
  %34 = call ptr @memcpy(ptr %31, ptr %ibuf.2.ibuf.2.add.ptr.sroa_idx, i32 %conv58)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %obuf)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ibuf)
  br label %do.body121.preheader

sw.bb60:                                          ; preds = %if.end3
  %35 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %msg, align 4
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.359)
  switch i16 %36, label %sw.bb60.do.body121.preheader_crit_edge [
    i16 96, label %sw.bb60.sw.bb64_crit_edge
    i16 12, label %sw.bb60.sw.bb64_crit_edge331
    i16 6656, label %sw.bb109
  ]

sw.bb60.sw.bb64_crit_edge331:                     ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb64

sw.bb60.sw.bb64_crit_edge:                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb64

sw.bb60.do.body121.preheader_crit_edge:           ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121.preheader

sw.bb64:                                          ; preds = %sw.bb60.sw.bb64_crit_edge, %sw.bb60.sw.bb64_crit_edge331
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %obuf65)
  %38 = getelementptr inbounds i8, ptr %obuf65, i32 2
  %39 = call ptr @memset(ptr %38, i32 255, i32 62)
  %len67 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %40 = ptrtoint ptr %len67 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %len67, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %41)
  %cmp70 = icmp ugt i16 %41, 62
  br i1 %cmp70, label %cleanup107, label %if.end81

if.end81:                                         ; preds = %sw.bb64
  %conv84 = trunc i16 %36 to i8
  %shl85 = shl nuw i8 %conv84, 1
  %42 = ptrtoint ptr %obuf65 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %shl85, ptr %obuf65, align 1
  %conv90 = trunc i16 %41 to i8
  %obuf65.1.obuf65.1.arrayidx91.sroa_idx = getelementptr inbounds i8, ptr %obuf65, i32 1
  %43 = ptrtoint ptr %obuf65.1.obuf65.1.arrayidx91.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv90, ptr %obuf65.1.obuf65.1.arrayidx91.sroa_idx, align 1
  %buf95 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %44 = ptrtoint ptr %buf95 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf95, align 4
  %conv98 = zext i16 %41 to i32
  %obuf65.2.obuf65.2.add.ptr93.sroa_idx = getelementptr inbounds i8, ptr %obuf65, i32 2
  %46 = call ptr @memcpy(ptr %obuf65.2.obuf65.2.add.ptr93.sroa_idx, ptr %45, i32 %conv98)
  %udev99 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %udev99 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %udev99, align 4
  %add104 = add nuw nsw i16 %41, 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 8
  %conv6.i261 = zext i16 %add104 to i32
  %call9.i.i287 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i261, i32 noundef 3264) #13
  %tobool.not.i290 = icmp eq ptr %call9.i.i287, null
  br i1 %tobool.not.i290, label %if.end81.cleanup107.thread_crit_edge, label %if.end.i293

if.end81.cleanup107.thread_crit_edge:             ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup107.thread

if.end.i293:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i259 = shl i32 %50, 8
  %or3.i260 = or i32 %shl.i.i259, -2147483648
  %51 = call ptr @memcpy(ptr %call9.i.i287, ptr %obuf65, i32 %conv6.i261)
  %call16.i294 = tail call i32 @usb_control_msg(ptr noundef %48, i32 noundef %or3.i260, i8 noundef zeroext -62, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i287, i16 noundef zeroext %add104, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i287) #9
  br label %cleanup107.thread

cleanup107.thread:                                ; preds = %if.end.i293, %if.end81.cleanup107.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %obuf65)
  br label %do.body121.preheader

cleanup107:                                       ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  %conv68 = zext i16 %41 to i32
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv68) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %obuf65)
  br label %unlock

sw.bb109:                                         ; preds = %sw.bb60
  %udev111 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %udev111 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %udev111, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i304 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i307 = icmp eq ptr %call7.i.i304, null
  br i1 %tobool.not.i307, label %sw.bb109.dw210x_op_rw.exit313_crit_edge, label %if.end.i310

sw.bb109.dw210x_op_rw.exit313_crit_edge:          ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit313

if.end.i310:                                      ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i297 = shl i32 %55, 8
  %or3.i298 = or i32 %shl.i.i297, -2147483520
  %call16.i311 = tail call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or3.i298, i8 noundef zeroext -72, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i304, i16 noundef zeroext 2, i32 noundef 2000) #9
  %57 = ptrtoint ptr %call7.i.i304 to i32
  call void @__asan_load1_noabort(i32 %57)
  %ibuf110.sroa.0.0.copyload = load i8, ptr %call7.i.i304, align 8
  %ibuf110.sroa.5.0.call7.i.i304.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i304, i32 1
  %58 = ptrtoint ptr %ibuf110.sroa.5.0.call7.i.i304.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %58)
  %ibuf110.sroa.5.0.copyload = load i8, ptr %ibuf110.sroa.5.0.call7.i.i304.sroa_idx, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i304) #9
  br label %dw210x_op_rw.exit313

dw210x_op_rw.exit313:                             ; preds = %if.end.i310, %sw.bb109.dw210x_op_rw.exit313_crit_edge
  %ibuf110.sroa.5.0 = phi i8 [ -1, %sw.bb109.dw210x_op_rw.exit313_crit_edge ], [ %ibuf110.sroa.5.0.copyload, %if.end.i310 ]
  %ibuf110.sroa.0.0 = phi i8 [ -1, %sw.bb109.dw210x_op_rw.exit313_crit_edge ], [ %ibuf110.sroa.0.0.copyload, %if.end.i310 ]
  %buf115 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %59 = ptrtoint ptr %buf115 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buf115, align 4
  %ibuf110.sroa.5.0.insert.ext = zext i8 %ibuf110.sroa.5.0 to i16
  %ibuf110.sroa.0.0.insert.ext = zext i8 %ibuf110.sroa.0.0 to i16
  %ibuf110.sroa.0.0.insert.shift = shl nuw i16 %ibuf110.sroa.0.0.insert.ext, 8
  %ibuf110.sroa.0.0.insert.insert = or i16 %ibuf110.sroa.0.0.insert.shift, %ibuf110.sroa.5.0.insert.ext
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %ibuf110.sroa.0.0.insert.insert, ptr %60, align 1
  br label %do.body121.preheader

sw.epilog118:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp119324 = icmp sgt i32 %num, 0
  br i1 %cmp119324, label %sw.epilog118.do.body121.preheader_crit_edge, label %sw.epilog118.unlock_crit_edge

sw.epilog118.unlock_crit_edge:                    ; preds = %sw.epilog118
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

sw.epilog118.do.body121.preheader_crit_edge:      ; preds = %sw.epilog118
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121.preheader

do.body121.preheader:                             ; preds = %sw.epilog118.do.body121.preheader_crit_edge, %dw210x_op_rw.exit313, %cleanup107.thread, %sw.bb60.do.body121.preheader_crit_edge, %cleanup
  br label %do.body121

do.body121:                                       ; preds = %do.end173.do.body121_crit_edge, %do.body121.preheader
  %i.0325 = phi i32 [ %inc175, %do.end173.do.body121_crit_edge ], [ 0, %do.body121.preheader ]
  %62 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool122.not = icmp eq i32 %and, 0
  br i1 %tobool122.not, label %do.body121.do.end138_crit_edge, label %do.end126

do.body121.do.end138_crit_edge:                   ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end138

do.end126:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx128 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0325
  %63 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx128, align 4
  %conv130 = zext i16 %64 to i32
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0325, i32 1
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp133 = icmp eq i16 %66, 0
  %cond = select i1 %cmp133, ptr @.str.163, ptr @.str.164
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, i32 noundef %i.0325, i32 noundef %conv130, ptr noundef nonnull %cond) #12
  br label %do.end138

do.end138:                                        ; preds = %do.end126, %do.body121.do.end138_crit_edge
  %len141 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0325, i32 2
  %67 = ptrtoint ptr %len141 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %len141, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %cmp143321.not = icmp eq i16 %68, 0
  br i1 %cmp143321.not, label %do.end138.do.body162_crit_edge, label %do.body146.lr.ph

do.end138.do.body162_crit_edge:                   ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body162

do.body146.lr.ph:                                 ; preds = %do.end138
  %buf155 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0325, i32 3
  br label %do.body146

do.body146:                                       ; preds = %for.inc.do.body146_crit_edge, %do.body146.lr.ph
  %loop_.0322 = phi i32 [ 0, %do.body146.lr.ph ], [ %inc, %for.inc.do.body146_crit_edge ]
  %69 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and147 = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %do.body146.for.inc_crit_edge, label %do.end152

do.body146.for.inc_crit_edge:                     ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end152:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %buf155 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buf155, align 4
  %arrayidx156 = getelementptr i8, ptr %71, i32 %loop_.0322
  %72 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %73 to i32
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv157) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end152, %do.body146.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop_.0322, 1
  %74 = ptrtoint ptr %len141 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %len141, align 4
  %conv142 = zext i16 %75 to i32
  %cmp143 = icmp ult i32 %inc, %conv142
  br i1 %cmp143, label %for.inc.do.body146_crit_edge, label %for.inc.do.body162_crit_edge

for.inc.do.body162_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body162

for.inc.do.body146_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body146

do.body162:                                       ; preds = %for.inc.do.body162_crit_edge, %do.end138.do.body162_crit_edge
  %76 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and163 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %do.body162.do.end173_crit_edge, label %do.end168

do.body162.do.end173_crit_edge:                   ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end173

do.end168:                                        ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #11
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #12
  br label %do.end173

do.end173:                                        ; preds = %do.end168, %do.body162.do.end173_crit_edge
  %inc175 = add nuw nsw i32 %i.0325, 1
  %exitcond.not = icmp eq i32 %inc175, %num
  br i1 %exitcond.not, label %do.end173.unlock_crit_edge, label %do.end173.do.body121_crit_edge

do.end173.do.body121_crit_edge:                   ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121

do.end173.unlock_crit_edge:                       ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

unlock:                                           ; preds = %do.end173.unlock_crit_edge, %sw.epilog118.unlock_crit_edge, %cleanup107, %cleanup.thread
  %ret.2 = phi i32 [ -95, %cleanup107 ], [ -95, %cleanup.thread ], [ %num, %sw.epilog118.unlock_crit_edge ], [ %num, %do.end173.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #9
  br label %cleanup178

cleanup178:                                       ; preds = %unlock, %if.end.cleanup178_crit_edge, %entry.cleanup178_crit_edge
  %retval.0 = phi i32 [ %ret.2, %unlock ], [ -19, %entry.cleanup178_crit_edge ], [ -11, %if.end.cleanup178_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl100313_frontend_attach(ptr nocapture noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.172) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.173) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.172) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond66 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call4 = tail call ptr %cond66(ptr noundef nonnull @zl313_config, ptr noundef %i2c_adap) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then13

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.172) #9
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174) #12
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe_adap68 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %2 = ptrtoint ptr %fe_adap68 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fe_adap68, align 8
  br label %return

if.then13:                                        ; preds = %if.then
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %3 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %fe_adap, align 8
  %call16 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.176) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %cond.end22, label %if.then13.if.then25_crit_edge

if.then13.if.then25_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

cond.end22:                                       ; preds = %if.then13
  %call20 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.177) #9
  %call21 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.176) #9
  %tobool24.not = icmp eq ptr %call21, null
  br i1 %tobool24.not, label %do.end38, label %cond.end22.if.then25_crit_edge

cond.end22.if.then25_crit_edge:                   ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then25:                                        ; preds = %cond.end22.if.then25_crit_edge, %if.then13.if.then25_crit_edge
  %cond2373 = phi ptr [ %call21, %cond.end22.if.then25_crit_edge ], [ %call16, %if.then13.if.then25_crit_edge ]
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 8
  %i2c_adap30 = getelementptr inbounds %struct.dvb_usb_device, ptr %7, i32 0, i32 8
  %call31 = tail call ptr %cond2373(ptr noundef %5, i8 noundef zeroext 96, ptr noundef %i2c_adap30) #9
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.then33, label %if.then44

if.then33:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.176) #9
  br label %return

do.end38:                                         ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179) #12
  br label %return

if.then44:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_adap, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 1, i32 25
  %10 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dw210x_set_voltage, ptr %set_voltage, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182) #12
  br label %return

return:                                           ; preds = %if.then44, %do.end38, %if.then33, %if.end7.thread
  %retval.0 = phi i32 [ 0, %if.then44 ], [ -5, %if.end7.thread ], [ -5, %if.then33 ], [ -5, %do.end38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6x0_read_mac_address(ptr nocapture noundef readonly %d, ptr nocapture noundef writeonly %mac) #2 align 64 {
entry:
  %ibuf = alloca [1 x i8], align 1
  %obuf = alloca [1 x i8], align 1
  %eeprom = alloca [256 x i8], align 1
  %eepromline = alloca [16 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ibuf) #9
  %0 = ptrtoint ptr %ibuf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ibuf, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %obuf) #9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %eeprom) #9
  %1 = call ptr @memset(ptr %eeprom, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eepromline) #9
  %2 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 1
  %3 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 2
  %4 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 3
  %5 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 4
  %6 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 5
  %7 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 6
  %8 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 7
  %9 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 8
  %10 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 9
  %11 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 10
  %12 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 11
  %13 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 12
  %14 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 13
  %15 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 14
  %16 = getelementptr inbounds [16 x i8], ptr %eepromline, i32 0, i32 15
  %17 = call ptr @memset(ptr %eepromline, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #9
  %18 = getelementptr inbounds i8, ptr %msg, i32 4
  %19 = call ptr @memset(ptr %18, i32 255, i32 16)
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 80, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %22 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %obuf, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %24 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 80, ptr %arrayinit.element, align 4
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %25 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %flags2, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %26 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %len3, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %27 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ibuf, ptr %buf4, align 4
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc59.for.body_crit_edge, %entry
  %i.079 = phi i32 [ 0, %entry ], [ %inc60, %for.inc59.for.body_crit_edge ]
  %conv = trunc i32 %i.079 to i8
  %28 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %obuf, align 1
  %call = call i32 @s6x0_i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp7.not = icmp eq i32 %call, 2
  br i1 %cmp7.not, label %if.else, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #12
  br label %cleanup

if.else:                                          ; preds = %for.body
  %29 = ptrtoint ptr %ibuf to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ibuf, align 1
  %rem.urem = and i32 %i.079, 15
  %arrayidx11 = getelementptr [16 x i8], ptr %eepromline, i32 0, i32 %rem.urem
  %31 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx11, align 1
  %arrayidx13 = getelementptr [256 x i8], ptr %eeprom, i32 0, i32 %i.079
  %32 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %30, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %rem.urem)
  %cmp15 = icmp eq i32 %rem.urem, 15
  br i1 %cmp15, label %do.body18, label %if.else.for.inc59_crit_edge

if.else.for.inc59_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59

do.body18:                                        ; preds = %if.else
  %33 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body18.do.end27_crit_edge, label %do.end22

do.body18.do.end27_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

do.end22:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %i.079, -15
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %sub) #12
  br label %do.end27

do.end27:                                         ; preds = %do.end22, %do.body18.do.end27_crit_edge
  %34 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.end27.for.inc_crit_edge, label %do.end38

do.end27.for.inc_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end38:                                         ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %eepromline to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %eepromline, align 1
  %conv41 = zext i8 %36 to i32
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end38, %do.end27.for.inc_crit_edge
  %37 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.1 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.1)
  %tobool34.not.1 = icmp eq i32 %and33.1, 0
  br i1 %tobool34.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end38.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

do.end38.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %2, align 1
  %conv41.1 = zext i8 %39 to i32
  %call42.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.1) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end38.1, %for.inc.for.inc.1_crit_edge
  %40 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.2 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.2)
  %tobool34.not.2 = icmp eq i32 %and33.2, 0
  br i1 %tobool34.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.end38.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

do.end38.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %3, align 1
  %conv41.2 = zext i8 %42 to i32
  %call42.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.2) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end38.2, %for.inc.1.for.inc.2_crit_edge
  %43 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.3 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.3)
  %tobool34.not.3 = icmp eq i32 %and33.3, 0
  br i1 %tobool34.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.end38.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

do.end38.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %4, align 1
  %conv41.3 = zext i8 %45 to i32
  %call42.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.3) #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end38.3, %for.inc.2.for.inc.3_crit_edge
  %46 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.4 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.4)
  %tobool34.not.4 = icmp eq i32 %and33.4, 0
  br i1 %tobool34.not.4, label %for.inc.3.for.inc.4_crit_edge, label %do.end38.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

do.end38.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %5, align 1
  %conv41.4 = zext i8 %48 to i32
  %call42.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.4) #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.end38.4, %for.inc.3.for.inc.4_crit_edge
  %49 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.5 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.5)
  %tobool34.not.5 = icmp eq i32 %and33.5, 0
  br i1 %tobool34.not.5, label %for.inc.4.for.inc.5_crit_edge, label %do.end38.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

do.end38.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %6, align 1
  %conv41.5 = zext i8 %51 to i32
  %call42.5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.5) #12
  br label %for.inc.5

for.inc.5:                                        ; preds = %do.end38.5, %for.inc.4.for.inc.5_crit_edge
  %52 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.6 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.6)
  %tobool34.not.6 = icmp eq i32 %and33.6, 0
  br i1 %tobool34.not.6, label %for.inc.5.for.inc.6_crit_edge, label %do.end38.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

do.end38.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %7, align 1
  %conv41.6 = zext i8 %54 to i32
  %call42.6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.6) #12
  br label %for.inc.6

for.inc.6:                                        ; preds = %do.end38.6, %for.inc.5.for.inc.6_crit_edge
  %55 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.7 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.7)
  %tobool34.not.7 = icmp eq i32 %and33.7, 0
  br i1 %tobool34.not.7, label %for.inc.6.for.inc.7_crit_edge, label %do.end38.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

do.end38.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %8, align 1
  %conv41.7 = zext i8 %57 to i32
  %call42.7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.7) #12
  br label %for.inc.7

for.inc.7:                                        ; preds = %do.end38.7, %for.inc.6.for.inc.7_crit_edge
  %58 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.8 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.8)
  %tobool34.not.8 = icmp eq i32 %and33.8, 0
  br i1 %tobool34.not.8, label %for.inc.7.for.inc.8_crit_edge, label %do.end38.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.8

do.end38.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %9, align 1
  %conv41.8 = zext i8 %60 to i32
  %call42.8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.8) #12
  br label %for.inc.8

for.inc.8:                                        ; preds = %do.end38.8, %for.inc.7.for.inc.8_crit_edge
  %61 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.9 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.9)
  %tobool34.not.9 = icmp eq i32 %and33.9, 0
  br i1 %tobool34.not.9, label %for.inc.8.for.inc.9_crit_edge, label %do.end38.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.9

do.end38.9:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %10, align 1
  %conv41.9 = zext i8 %63 to i32
  %call42.9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.9) #12
  br label %for.inc.9

for.inc.9:                                        ; preds = %do.end38.9, %for.inc.8.for.inc.9_crit_edge
  %64 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.10 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.10)
  %tobool34.not.10 = icmp eq i32 %and33.10, 0
  br i1 %tobool34.not.10, label %for.inc.9.for.inc.10_crit_edge, label %do.end38.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10

do.end38.10:                                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %11, align 1
  %conv41.10 = zext i8 %66 to i32
  %call42.10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.10) #12
  br label %for.inc.10

for.inc.10:                                       ; preds = %do.end38.10, %for.inc.9.for.inc.10_crit_edge
  %67 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.11 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.11)
  %tobool34.not.11 = icmp eq i32 %and33.11, 0
  br i1 %tobool34.not.11, label %for.inc.10.for.inc.11_crit_edge, label %do.end38.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.11

do.end38.11:                                      ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %12, align 1
  %conv41.11 = zext i8 %69 to i32
  %call42.11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.11) #12
  br label %for.inc.11

for.inc.11:                                       ; preds = %do.end38.11, %for.inc.10.for.inc.11_crit_edge
  %70 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.12 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.12)
  %tobool34.not.12 = icmp eq i32 %and33.12, 0
  br i1 %tobool34.not.12, label %for.inc.11.for.inc.12_crit_edge, label %do.end38.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.12

do.end38.12:                                      ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %13, align 1
  %conv41.12 = zext i8 %72 to i32
  %call42.12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.12) #12
  br label %for.inc.12

for.inc.12:                                       ; preds = %do.end38.12, %for.inc.11.for.inc.12_crit_edge
  %73 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.13 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.13)
  %tobool34.not.13 = icmp eq i32 %and33.13, 0
  br i1 %tobool34.not.13, label %for.inc.12.for.inc.13_crit_edge, label %do.end38.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.13

do.end38.13:                                      ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %14, align 1
  %conv41.13 = zext i8 %75 to i32
  %call42.13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.13) #12
  br label %for.inc.13

for.inc.13:                                       ; preds = %do.end38.13, %for.inc.12.for.inc.13_crit_edge
  %76 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.14 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.14)
  %tobool34.not.14 = icmp eq i32 %and33.14, 0
  br i1 %tobool34.not.14, label %for.inc.13.for.inc.14_crit_edge, label %do.end38.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.14

do.end38.14:                                      ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %15, align 1
  %conv41.14 = zext i8 %78 to i32
  %call42.14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.14) #12
  br label %for.inc.14

for.inc.14:                                       ; preds = %do.end38.14, %for.inc.13.for.inc.14_crit_edge
  %79 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and33.15 = and i32 %79, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.15)
  %tobool34.not.15 = icmp eq i32 %and33.15, 0
  br i1 %tobool34.not.15, label %for.inc.14.for.inc.15_crit_edge, label %do.end38.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.15

do.end38.15:                                      ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %16, align 1
  %conv41.15 = zext i8 %81 to i32
  %call42.15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv41.15) #12
  br label %for.inc.15

for.inc.15:                                       ; preds = %do.end38.15, %for.inc.14.for.inc.15_crit_edge
  %82 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and47 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %for.inc.15.for.inc59_crit_edge, label %do.end52

for.inc.15.for.inc59_crit_edge:                   ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59

do.end52:                                         ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #12
  br label %for.inc59

for.inc59:                                        ; preds = %do.end52, %for.inc.15.for.inc59_crit_edge, %if.else.for.inc59_crit_edge
  %inc60 = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc60, 256
  br i1 %exitcond.not, label %for.end61, label %for.inc59.for.body_crit_edge

for.inc59.for.body_crit_edge:                     ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end61:                                        ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr inbounds i8, ptr %eeprom, i32 16
  %83 = call ptr @memcpy(ptr %mac, ptr %add.ptr, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %for.end61, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %for.end61 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eepromline) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %eeprom) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %obuf) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ibuf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s6x0_i2c_transfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %ibuf42 = alloca [64 x i8], align 1
  %obuf77 = alloca [19 x i8], align 1
  %obuf134 = alloca [64 x i8], align 1
  %obuf185 = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup234_crit_edge, label %if.end

entry.cleanup234_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup234

if.end:                                           ; preds = %entry
  %udev1 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev1, align 4
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup234_crit_edge, label %for.cond.preheader

if.end.cleanup234_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup234

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp5486 = icmp sgt i32 %num, 0
  br i1 %cmp5486, label %for.body.lr.ph, label %for.cond.preheader.unlock_crit_edge

for.cond.preheader.unlock_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub130 = add nsw i32 %num, -1
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 8
  %4 = getelementptr inbounds i8, ptr %obuf185, i32 2
  %obuf185.1.obuf185.1.arrayidx213.sroa_idx = getelementptr inbounds i8, ptr %obuf185, i32 1
  %obuf185.2.obuf185.2.add.ptr215.sroa_idx = getelementptr inbounds i8, ptr %obuf185, i32 2
  %5 = getelementptr inbounds i8, ptr %obuf134, i32 2
  %obuf134.1.obuf134.1.arrayidx161.sroa_idx = getelementptr inbounds i8, ptr %obuf134, i32 1
  %obuf134.2.obuf134.2.add.ptr163.sroa_idx = getelementptr inbounds i8, ptr %obuf134, i32 2
  %obuf77.1.obuf77.1..sroa_idx = getelementptr inbounds i8, ptr %obuf77, i32 1
  %obuf77.2.obuf77.2..sroa_idx = getelementptr inbounds i8, ptr %obuf77, i32 2
  %obuf77.3.obuf77.3..sroa_idx493 = getelementptr inbounds i8, ptr %obuf77, i32 3
  %6 = getelementptr inbounds i8, ptr %obuf77, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.0487 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0487
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 4
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.360)
  switch i16 %8, label %sw.default [
    i16 6656, label %sw.bb
    i16 6144, label %sw.bb10
    i16 6912, label %sw.bb27
  ]

sw.bb:                                            ; preds = %for.body
  %10 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 5) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sw.bb.dw210x_op_rw.exit_crit_edge, label %if.end.i

sw.bb.dw210x_op_rw.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl i32 %13, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or3.i, i8 noundef zeroext -72, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 5, i32 noundef 2000) #9
  %ibuf.sroa.6.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 3
  %15 = ptrtoint ptr %ibuf.sroa.6.0.call7.i.i.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %ibuf.sroa.6.0.copyload = load i16, ptr %ibuf.sroa.6.0.call7.i.i.sroa_idx, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %dw210x_op_rw.exit

dw210x_op_rw.exit:                                ; preds = %if.end.i, %sw.bb.dw210x_op_rw.exit_crit_edge
  %ibuf.sroa.6.1 = phi i16 [ -1, %sw.bb.dw210x_op_rw.exit_crit_edge ], [ %ibuf.sroa.6.0.copyload, %if.end.i ]
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0487, i32 3
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %ibuf.sroa.6.1, ptr %17, align 1
  br label %for.inc

sw.bb10:                                          ; preds = %for.body
  %buf13 = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0487, i32 3
  %19 = ptrtoint ptr %buf13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf13, align 4
  %arrayidx14 = getelementptr i8, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx14, align 1
  %23 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev1, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i330 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i331 = icmp eq ptr %call7.i.i330, null
  br i1 %tobool.not.i331, label %sw.bb10.dw210x_op_rw.exit335_crit_edge, label %if.end.i332

sw.bb10.dw210x_op_rw.exit335_crit_edge:           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit335

if.end.i332:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i328 = shl i32 %26, 8
  %or3.i329 = or i32 %shl.i.i328, -2147483648
  %28 = ptrtoint ptr %call7.i.i330 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %call7.i.i330, align 8
  %obuf.sroa.7.0.call7.i.i330.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i330, i32 1
  %29 = ptrtoint ptr %obuf.sroa.7.0.call7.i.i330.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %22, ptr %obuf.sroa.7.0.call7.i.i330.sroa_idx, align 1
  %call16.i333 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or3.i329, i8 noundef zeroext -118, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i330, i16 noundef zeroext 2, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i330) #9
  br label %dw210x_op_rw.exit335

dw210x_op_rw.exit335:                             ; preds = %if.end.i332, %sw.bb10.dw210x_op_rw.exit335_crit_edge
  %30 = ptrtoint ptr %buf13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf13, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %34 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %udev1, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i338 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i339 = icmp eq ptr %call7.i.i338, null
  br i1 %tobool.not.i339, label %dw210x_op_rw.exit335.for.inc_crit_edge, label %if.end.i340

dw210x_op_rw.exit335.for.inc_crit_edge:           ; preds = %dw210x_op_rw.exit335
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i340:                                      ; preds = %dw210x_op_rw.exit335
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i336 = shl i32 %37, 8
  %or3.i337 = or i32 %shl.i.i336, -2147483648
  %39 = ptrtoint ptr %call7.i.i338 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %call7.i.i338, align 8
  %obuf.sroa.7.0.call7.i.i338.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i338, i32 1
  %40 = ptrtoint ptr %obuf.sroa.7.0.call7.i.i338.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %33, ptr %obuf.sroa.7.0.call7.i.i338.sroa_idx, align 1
  %call16.i341 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or3.i337, i8 noundef zeroext -118, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i338, i16 noundef zeroext 2, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i338) #9
  br label %for.inc

sw.bb27:                                          ; preds = %for.body
  %buf31 = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0487, i32 3
  %41 = ptrtoint ptr %buf31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf31, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %45 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %udev1, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i346 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i347 = icmp eq ptr %call7.i.i346, null
  br i1 %tobool.not.i347, label %sw.bb27.for.inc_crit_edge, label %if.end.i348

sw.bb27.for.inc_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i348:                                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i344 = shl i32 %48, 8
  %or3.i345 = or i32 %shl.i.i344, -2147483648
  %50 = ptrtoint ptr %call7.i.i346 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 5, ptr %call7.i.i346, align 8
  %obuf28.sroa.5.0.call7.i.i346.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i346, i32 1
  %51 = ptrtoint ptr %obuf28.sroa.5.0.call7.i.i346.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %44, ptr %obuf28.sroa.5.0.call7.i.i346.sroa_idx, align 1
  %call16.i349 = tail call i32 @usb_control_msg(ptr noundef %46, i32 noundef %or3.i345, i8 noundef zeroext -118, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i346, i16 noundef zeroext 2, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i346) #9
  br label %for.inc

sw.default:                                       ; preds = %for.body
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0487, i32 1
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %53)
  %cmp39 = icmp eq i16 %53, 1
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %sw.default
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ibuf42)
  %54 = call ptr @memset(ptr %ibuf42, i32 255, i32 64)
  %len44 = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0487, i32 2
  %55 = ptrtoint ptr %len44 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %len44, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %56)
  %cmp46 = icmp ugt i16 %56, 64
  br i1 %cmp46, label %cleanup, label %if.end53

if.end53:                                         ; preds = %if.then41
  %57 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %udev1, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %conv6.i = zext i16 %56 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i, i32 noundef 3264) #13
  %tobool.not.i355 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i355, label %if.end53.cleanup.thread_crit_edge, label %if.end.i356

if.end53.cleanup.thread_crit_edge:                ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end.i356:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i352 = shl i32 %60, 8
  %or3.i353 = or i32 %shl.i.i352, -2147483520
  %call16.i357 = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or3.i353, i8 noundef zeroext -111, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %56, i32 noundef 2000) #9
  %61 = call ptr @memcpy(ptr %ibuf42, ptr %call9.i.i, i32 %conv6.i)
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.i356, %if.end53.cleanup.thread_crit_edge
  %buf60 = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0487, i32 3
  %62 = ptrtoint ptr %buf60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buf60, align 4
  %64 = ptrtoint ptr %len44 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %len44, align 4
  %conv64 = zext i16 %65 to i32
  %66 = call ptr @memcpy(ptr %63, ptr %ibuf42, i32 %conv64)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ibuf42)
  br label %for.inc

cleanup:                                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %conv45 = zext i16 %56 to i32
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv45) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ibuf42)
  br label %unlock

if.else:                                          ; preds = %sw.default
  %buf66 = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0487, i32 3
  %67 = ptrtoint ptr %buf66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buf66, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -80, i8 %70)
  %cmp69 = icmp eq i8 %70, -80
  call void @__sanitizer_cov_trace_const_cmp2(i16 104, i16 %8)
  %cmp74 = icmp eq i16 %8, 104
  %or.cond = select i1 %cmp69, i1 %cmp74, i1 false
  br i1 %or.cond, label %if.then76, label %if.else129

if.then76:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %obuf77)
  %len79 = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0487, i32 2
  %71 = call ptr @memset(ptr %6, i32 255, i32 17)
  %72 = ptrtoint ptr %len79 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %len79, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %73)
  %cmp81 = icmp ugt i16 %73, 16
  %conv80 = trunc i16 %73 to i8
  %add = add i8 %conv80, 1
  %cond = select i1 %cmp81, i8 18, i8 %add
  %74 = ptrtoint ptr %obuf77 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %cond, ptr %obuf77, align 1
  %75 = ptrtoint ptr %obuf77.1.obuf77.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -48, ptr %obuf77.1.obuf77.1..sroa_idx, align 1
  %76 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %68, align 1
  %78 = ptrtoint ptr %obuf77.2.obuf77.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %obuf77.2.obuf77.2..sroa_idx, align 1
  %conv99 = zext i16 %73 to i32
  %sub = add nsw i32 %conv99, -1
  br label %do.body100

do.body100:                                       ; preds = %dw210x_op_rw.exit397.do.body100_crit_edge, %if.then76
  %len.0 = phi i32 [ %sub, %if.then76 ], [ %sub124, %dw210x_op_rw.exit397.do.body100_crit_edge ]
  %i.0 = phi i32 [ 1, %if.then76 ], [ %add123, %dw210x_op_rw.exit397.do.body100_crit_edge ]
  %79 = ptrtoint ptr %buf66 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buf66, align 4
  %add.ptr105 = getelementptr i8, ptr %80, i32 %i.0
  %81 = tail call i32 @llvm.smin.i32(i32 %len.0, i32 16)
  %82 = call ptr @memcpy(ptr %obuf77.3.obuf77.3..sroa_idx493, ptr %add.ptr105, i32 %81)
  %83 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %udev1, align 4
  %85 = trunc i32 %81 to i16
  %conv121 = add nsw i16 %85, 3
  %86 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %84, align 8
  %conv6.i362 = zext i16 %conv121 to i32
  %call9.i.i388 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i362, i32 noundef 3264) #13
  %tobool.not.i391 = icmp eq ptr %call9.i.i388, null
  br i1 %tobool.not.i391, label %do.body100.dw210x_op_rw.exit397_crit_edge, label %if.end.i394

do.body100.dw210x_op_rw.exit397_crit_edge:        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit397

if.end.i394:                                      ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i360 = shl i32 %87, 8
  %or3.i361 = or i32 %shl.i.i360, -2147483648
  %88 = call ptr @memcpy(ptr %call9.i.i388, ptr %obuf77, i32 %conv6.i362)
  %call16.i395 = tail call i32 @usb_control_msg(ptr noundef %84, i32 noundef %or3.i361, i8 noundef zeroext -128, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i388, i16 noundef zeroext %conv121, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i388) #9
  br label %dw210x_op_rw.exit397

dw210x_op_rw.exit397:                             ; preds = %if.end.i394, %do.body100.dw210x_op_rw.exit397_crit_edge
  %add123 = add nuw nsw i32 %i.0, 16
  %sub124 = add nsw i32 %len.0, -16
  %cmp126 = icmp sgt i32 %len.0, 16
  br i1 %cmp126, label %dw210x_op_rw.exit397.do.body100_crit_edge, label %do.end128

dw210x_op_rw.exit397.do.body100_crit_edge:        ; preds = %dw210x_op_rw.exit397
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body100

do.end128:                                        ; preds = %dw210x_op_rw.exit397
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %obuf77)
  br label %for.inc

if.else129:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0487, i32 %sub130)
  %cmp131 = icmp slt i32 %j.0487, %sub130
  br i1 %cmp131, label %if.then133, label %if.else184

if.then133:                                       ; preds = %if.else129
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %obuf134)
  %89 = call ptr @memset(ptr %5, i32 255, i32 62)
  %len136 = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0487, i32 2
  %90 = ptrtoint ptr %len136 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %len136, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %91)
  %cmp139 = icmp ugt i16 %91, 62
  br i1 %cmp139, label %cleanup182, label %if.end150

if.end150:                                        ; preds = %if.then133
  %add151 = add nuw nsw i32 %j.0487, 1
  %len153 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add151, i32 2
  %92 = ptrtoint ptr %len153 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %len153, align 4
  %conv154 = trunc i16 %93 to i8
  %94 = ptrtoint ptr %obuf134 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv154, ptr %obuf134, align 1
  %conv158 = trunc i16 %8 to i8
  %shl159 = shl i8 %conv158, 1
  %95 = ptrtoint ptr %obuf134.1.obuf134.1.arrayidx161.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %shl159, ptr %obuf134.1.obuf134.1.arrayidx161.sroa_idx, align 1
  %conv168 = zext i16 %91 to i32
  %96 = call ptr @memcpy(ptr %obuf134.2.obuf134.2.add.ptr163.sroa_idx, ptr %68, i32 %conv168)
  %97 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %udev1, align 4
  %99 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %idProduct, align 2
  %add179 = add nuw nsw i16 %91, 2
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %98, align 8
  %conv6.i400 = zext i16 %add179 to i32
  %call9.i.i426 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i400, i32 noundef 3264) #13
  %tobool.not.i429 = icmp eq ptr %call9.i.i426, null
  br i1 %tobool.not.i429, label %if.end150.cleanup182.thread_crit_edge, label %if.end.i432

if.end150.cleanup182.thread_crit_edge:            ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup182.thread

if.end.i432:                                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i398 = shl i32 %102, 8
  %or3.i399 = or i32 %shl.i.i398, -2147483648
  call void @__sanitizer_cov_trace_const_cmp2(i16 117, i16 %100)
  %cmp171 = icmp eq i16 %100, 117
  %conv174 = select i1 %cmp171, i8 -110, i8 -112
  %103 = call ptr @memcpy(ptr %call9.i.i426, ptr %obuf134, i32 %conv6.i400)
  %call16.i433 = tail call i32 @usb_control_msg(ptr noundef %98, i32 noundef %or3.i399, i8 noundef zeroext %conv174, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i426, i16 noundef zeroext %add179, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i426) #9
  br label %cleanup182.thread

cleanup182.thread:                                ; preds = %if.end.i432, %if.end150.cleanup182.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %obuf134)
  br label %for.inc

cleanup182:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  %conv137 = zext i16 %91 to i32
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv137) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %obuf134)
  br label %unlock

if.else184:                                       ; preds = %if.else129
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %obuf185)
  %104 = call ptr @memset(ptr %4, i32 255, i32 62)
  %len187 = getelementptr %struct.i2c_msg, ptr %msg, i32 %j.0487, i32 2
  %105 = ptrtoint ptr %len187 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %len187, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %106)
  %cmp190 = icmp ugt i16 %106, 62
  br i1 %cmp190, label %cleanup229, label %if.end201

if.end201:                                        ; preds = %if.else184
  %107 = trunc i16 %106 to i8
  %conv206 = add nuw nsw i8 %107, 1
  %108 = ptrtoint ptr %obuf185 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv206, ptr %obuf185, align 1
  %conv210 = trunc i16 %8 to i8
  %shl211 = shl i8 %conv210, 1
  %109 = ptrtoint ptr %obuf185.1.obuf185.1.arrayidx213.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %shl211, ptr %obuf185.1.obuf185.1.arrayidx213.sroa_idx, align 1
  %conv220 = zext i16 %106 to i32
  %110 = call ptr @memcpy(ptr %obuf185.2.obuf185.2.add.ptr215.sroa_idx, ptr %68, i32 %conv220)
  %111 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %udev1, align 4
  %add226 = add nuw nsw i16 %106, 2
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 8
  %conv6.i438 = zext i16 %add226 to i32
  %call9.i.i464 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i438, i32 noundef 3264) #13
  %tobool.not.i467 = icmp eq ptr %call9.i.i464, null
  br i1 %tobool.not.i467, label %if.end201.cleanup229.thread_crit_edge, label %if.end.i470

if.end201.cleanup229.thread_crit_edge:            ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup229.thread

if.end.i470:                                      ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i436 = shl i32 %114, 8
  %or3.i437 = or i32 %shl.i.i436, -2147483648
  %115 = call ptr @memcpy(ptr %call9.i.i464, ptr %obuf185, i32 %conv6.i438)
  %call16.i471 = tail call i32 @usb_control_msg(ptr noundef %112, i32 noundef %or3.i437, i8 noundef zeroext -128, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i464, i16 noundef zeroext %add226, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i464) #9
  br label %cleanup229.thread

cleanup229.thread:                                ; preds = %if.end.i470, %if.end201.cleanup229.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %obuf185)
  br label %for.inc

cleanup229:                                       ; preds = %if.else184
  call void @__sanitizer_cov_trace_pc() #11
  %conv188 = zext i16 %106 to i32
  %call200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv188) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %obuf185)
  br label %unlock

for.inc:                                          ; preds = %cleanup229.thread, %cleanup182.thread, %do.end128, %cleanup.thread, %if.end.i348, %sw.bb27.for.inc_crit_edge, %if.end.i340, %dw210x_op_rw.exit335.for.inc_crit_edge, %dw210x_op_rw.exit
  %inc = add nuw nsw i32 %j.0487, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.unlock_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.unlock_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

unlock:                                           ; preds = %for.inc.unlock_crit_edge, %cleanup229, %cleanup182, %cleanup, %for.cond.preheader.unlock_crit_edge
  %ret.5 = phi i32 [ -95, %cleanup ], [ -95, %cleanup182 ], [ -95, %cleanup229 ], [ %num, %for.cond.preheader.unlock_crit_edge ], [ %num, %for.inc.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #9
  br label %cleanup234

cleanup234:                                       ; preds = %unlock, %if.end.cleanup234_crit_edge, %entry.cleanup234_crit_edge
  %retval.0 = phi i32 [ %ret.5, %unlock ], [ -19, %entry.cleanup234_crit_edge ], [ -11, %if.end.cleanup234_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_frontend_attach(ptr nocapture noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.47) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.48) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.47) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond69 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call4 = tail call ptr %cond69(ptr noundef nonnull @earda_config, ptr noundef %i2c_adap) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.47) #9
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe_adap71 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %2 = ptrtoint ptr %fe_adap71 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fe_adap71, align 8
  br label %cleanup

if.end14:                                         ; preds = %if.then
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %3 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %fe_adap, align 8
  %call17 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.52) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %cond.end23, label %if.end14.if.then26_crit_edge

if.end14.if.then26_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

cond.end23:                                       ; preds = %if.end14
  %call21 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.53) #9
  %call22 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.52) #9
  %tobool25.not = icmp eq ptr %call22, null
  br i1 %tobool25.not, label %do.end39, label %cond.end23.if.then26_crit_edge

cond.end23.if.then26_crit_edge:                   ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then26:                                        ; preds = %cond.end23.if.then26_crit_edge, %if.end14.if.then26_crit_edge
  %cond2476 = phi ptr [ %call22, %cond.end23.if.then26_crit_edge ], [ %call17, %if.end14.if.then26_crit_edge ]
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 8
  %i2c_adap31 = getelementptr inbounds %struct.dvb_usb_device, ptr %7, i32 0, i32 8
  %call32 = tail call ptr %cond2476(ptr noundef %5, i32 noundef 97, ptr noundef %i2c_adap31) #9
  %cmp33 = icmp eq ptr %call32, null
  br i1 %cmp33, label %if.then34, label %if.end46

if.then34:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.52) #9
  br label %cleanup

do.end39:                                         ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #12
  br label %cleanup

if.end46:                                         ; preds = %if.then26
  %8 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_adap, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 1, i32 25
  %10 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dw210x_set_voltage, ptr %set_voltage, align 4
  %11 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end46.dw210x_op_rw.exit_crit_edge, label %if.end.i

if.end46.dw210x_op_rw.exit_crit_edge:             ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit

if.end.i:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl i32 %16, 8
  %or3.i = or i32 %shl.i.i, -2147483648
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1793, ptr %call7.i.i, align 8
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or3.i, i8 noundef zeroext -118, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %dw210x_op_rw.exit

dw210x_op_rw.exit:                                ; preds = %if.end.i, %if.end46.dw210x_op_rw.exit_crit_edge
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204) #12
  br label %cleanup

cleanup:                                          ; preds = %dw210x_op_rw.exit, %do.end39, %if.then34, %if.end7.thread
  %retval.0 = phi i32 [ 0, %dw210x_op_rw.exit ], [ -5, %if.end7.thread ], [ -5, %if.then34 ], [ -5, %do.end39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prof_rc_query(ptr noundef %d) #2 align 64 {
entry:
  %key = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %key) #9
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %key, align 1, !annotation !714
  %1 = getelementptr inbounds [2 x i8], ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !714
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 6656, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %key, ptr %buf, align 4
  %i2c_algo = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 14
  %9 = ptrtoint ptr %i2c_algo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_algo, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  %call = call i32 %12(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %entry
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp2.not = icmp eq i8 %16, -1
  br i1 %cmp2.not, label %if.then.if.end18_crit_edge, label %do.body

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.body:                                          ; preds = %if.then
  %17 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end13_crit_edge, label %do.end

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %key, align 1
  %conv8 = zext i8 %19 to i32
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  %conv10 = zext i8 %21 to i32
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.206, i32 noundef %conv8, i32 noundef %conv10) #12
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %22 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rc_dev, align 8
  %24 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %key, align 1
  %26 = xor i8 %25, -1
  %conv16 = zext i8 %26 to i64
  call void @rc_keydown(ptr noundef %23, i32 noundef 0, i64 noundef %conv16, i8 noundef zeroext 0) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end13, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %key) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3000_frontend_attach(ptr nocapture noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.120) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.121) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.120) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond75 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 8
  %call5 = tail call ptr %cond75(ptr noundef nonnull @s660_ds3000_config, ptr noundef %i2c_adap) #9
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.120) #9
  br label %if.end8.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #12
  br label %if.end8.thread

if.end8.thread:                                   ; preds = %do.end, %if.then6
  %fe_adap77 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %6 = ptrtoint ptr %fe_adap77 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fe_adap77, align 8
  br label %cleanup

if.end15:                                         ; preds = %if.then
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %7 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %fe_adap, align 8
  %call18 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.125) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %cond.end24, label %if.end15.if.then27_crit_edge

if.end15.if.then27_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

cond.end24:                                       ; preds = %if.end15
  %call22 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.126) #9
  %call23 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.125) #9
  %tobool26.not = icmp eq ptr %call23, null
  br i1 %tobool26.not, label %do.end40, label %cond.end24.if.then27_crit_edge

cond.end24.if.then27_crit_edge:                   ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

if.then27:                                        ; preds = %cond.end24.if.then27_crit_edge, %if.end15.if.then27_crit_edge
  %cond2582 = phi ptr [ %call23, %cond.end24.if.then27_crit_edge ], [ %call18, %if.end15.if.then27_crit_edge ]
  %8 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_adap, align 8
  %10 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d, align 8
  %i2c_adap32 = getelementptr inbounds %struct.dvb_usb_device, ptr %11, i32 0, i32 8
  %call33 = tail call ptr %cond2582(ptr noundef %9, ptr noundef nonnull @s660_ts2020_config, ptr noundef %i2c_adap32) #9
  %cmp34 = icmp eq ptr %call33, null
  br i1 %cmp34, label %if.then35, label %if.then27.if.end43_crit_edge

if.then27.if.end43_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then35:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.125) #9
  br label %if.end43

do.end40:                                         ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #12
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.then35, %if.then27.if.end43_crit_edge
  %12 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fe_adap, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 1, i32 25
  %14 = ptrtoint ptr %set_voltage to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_voltage, align 4
  %old_set_voltage = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %old_set_voltage to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %old_set_voltage, align 4
  %17 = load ptr, ptr %fe_adap, align 8
  %set_voltage52 = getelementptr inbounds %struct.dvb_frontend, ptr %17, i32 0, i32 1, i32 25
  %18 = ptrtoint ptr %set_voltage52 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @s660_set_voltage, ptr %set_voltage52, align 4
  %19 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end43.dw210x_op_rw.exit_crit_edge, label %if.end.i

if.end43.dw210x_op_rw.exit_crit_edge:             ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit

if.end.i:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl i32 %24, 8
  %or3.i = or i32 %shl.i.i, -2147483648
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1793, ptr %call7.i.i, align 8
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or3.i, i8 noundef zeroext -118, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %dw210x_op_rw.exit

dw210x_op_rw.exit:                                ; preds = %if.end.i, %if.end43.dw210x_op_rw.exit_crit_edge
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216) #12
  br label %cleanup

cleanup:                                          ; preds = %dw210x_op_rw.exit, %if.end8.thread
  %retval.0 = phi i32 [ 0, %dw210x_op_rw.exit ], [ -5, %if.end8.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s660_set_voltage(ptr noundef %fe, i32 noundef %voltage) #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %priv1 = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %8 = call ptr @memcpy(ptr %msg.i, ptr @__const.dw210x_set_voltage.msg, i32 12)
  %9 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.361)
  switch i32 %voltage, label %entry.dw210x_set_voltage.exit_crit_edge [
    i32 1, label %entry.if.end4.sink.split.i_crit_edge
    i32 0, label %if.then2.i
  ]

entry.if.end4.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.sink.split.i

entry.dw210x_set_voltage.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_set_voltage.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.sink.split.i

if.end4.sink.split.i:                             ; preds = %if.then2.i, %entry.if.end4.sink.split.i_crit_edge
  %dw210x_set_voltage.command_13v.sink.i = phi ptr [ @dw210x_set_voltage.command_13v, %if.then2.i ], [ @dw210x_set_voltage.command_18v, %entry.if.end4.sink.split.i_crit_edge ]
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dw210x_set_voltage.command_13v.sink.i, ptr %buf3.i, align 4
  br label %dw210x_set_voltage.exit

dw210x_set_voltage.exit:                          ; preds = %if.end4.sink.split.i, %entry.dw210x_set_voltage.exit_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %i2c_adap.i = getelementptr inbounds %struct.dvb_usb_device, ptr %12, i32 0, i32 8
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  %old_set_voltage = getelementptr inbounds %struct.dw2102_state, ptr %7, i32 0, i32 5
  %13 = ptrtoint ptr %old_set_voltage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %old_set_voltage, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %dw210x_set_voltage.exit.if.end_crit_edge, label %if.then

dw210x_set_voltage.exit.if.end_crit_edge:         ; preds = %dw210x_set_voltage.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %dw210x_set_voltage.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = call i32 %14(ptr noundef %fe, i32 noundef %voltage) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %dw210x_set_voltage.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw210x_led_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %offon) #2 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %0 = call ptr @memcpy(ptr %msg, ptr @__const.dw210x_led_ctrl.msg, i32 12)
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %1 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offon)
  %tobool.not = icmp eq i32 %offon, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dw210x_led_ctrl.led_on, ptr %buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %4, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %7, i32 0, i32 8
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prof_7500_frontend_attach(ptr nocapture noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.90) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.91) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.90) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond33 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call4 = tail call ptr %cond33(ptr noundef nonnull @prof_7500_stv0900_config, ptr noundef %i2c_adap, i32 noundef 0) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.90) #9
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #12
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe_adap35 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %2 = ptrtoint ptr %fe_adap35 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fe_adap35, align 8
  br label %cleanup

if.end14:                                         ; preds = %if.then
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %3 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %fe_adap, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %call4, i32 0, i32 1, i32 25
  %4 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dw210x_set_voltage, ptr %set_voltage, align 4
  %5 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 2) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end14.dw210x_op_rw.exit_crit_edge, label %if.end.i

if.end14.dw210x_op_rw.exit_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw210x_op_rw.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl i32 %10, 8
  %or3.i = or i32 %shl.i.i, -2147483648
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1793, ptr %call7.i.i, align 8
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or3.i, i8 noundef zeroext -118, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %dw210x_op_rw.exit

dw210x_op_rw.exit:                                ; preds = %if.end.i, %if.end14.dw210x_op_rw.exit_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224) #12
  br label %cleanup

cleanup:                                          ; preds = %dw210x_op_rw.exit, %if.end7.thread
  %retval.0 = phi i32 [ 0, %dw210x_op_rw.exit ], [ -5, %if.end7.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @su3000_streaming_ctrl(ptr nocapture noundef readonly %adap, i32 noundef %onoff) #2 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 6400, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %cond = select i1 %tobool.not, ptr @su3000_streaming_ctrl.command_stop, ptr @su3000_streaming_ctrl.command_start
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cond, ptr %buf, align 4
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %7, i32 0, i32 8
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs2000_frontend_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #9
  %data = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 81, ptr %data, align 2
  %call = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 1, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %data_mutex) #9
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.232) #9
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %cond.end, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

cond.end:                                         ; preds = %if.end
  %call7 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.233) #9
  %call8 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.232) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end17, label %cond.end.if.then10_crit_edge

cond.end.if.then10_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %cond.end.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %cond87 = phi ptr [ %call8, %cond.end.if.then10_crit_edge ], [ %call6, %if.end.if.then10_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call11 = tail call ptr %cond87(ptr noundef nonnull @s421_m88rs2000_config, ptr noundef %i2c_adap) #9
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %if.then13, label %if.end28

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.232) #9
  br label %if.end20.thread

do.end17:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235) #12
  br label %if.end20.thread

if.end20.thread:                                  ; preds = %do.end17, %if.then13
  %fe_adap89 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %5 = ptrtoint ptr %fe_adap89 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fe_adap89, align 8
  br label %cleanup

if.end28:                                         ; preds = %if.then10
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %6 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %fe_adap, align 8
  %call31 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.125) #9
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %cond.end37, label %if.end28.if.then40_crit_edge

if.end28.if.then40_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

cond.end37:                                       ; preds = %if.end28
  %call35 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.126) #9
  %call36 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.125) #9
  %tobool39.not = icmp eq ptr %call36, null
  br i1 %tobool39.not, label %do.end52, label %cond.end37.if.then40_crit_edge

cond.end37.if.then40_crit_edge:                   ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.then40:                                        ; preds = %cond.end37.if.then40_crit_edge, %if.end28.if.then40_crit_edge
  %cond3893 = phi ptr [ %call36, %cond.end37.if.then40_crit_edge ], [ %call31, %if.end28.if.then40_crit_edge ]
  %7 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fe_adap, align 8
  %call45 = tail call ptr %cond3893(ptr noundef %8, ptr noundef nonnull @dw2104_ts2020_config, ptr noundef %i2c_adap) #9
  %cmp46 = icmp eq ptr %call45, null
  br i1 %cmp46, label %if.then47, label %do.end61

if.then47:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.125) #9
  br label %do.end67

do.end52:                                         ; preds = %cond.end37
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #12
  br label %do.end67

do.end61:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240) #12
  br label %cleanup

do.end67:                                         ; preds = %do.end52, %if.then47
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %do.end61, %if.end20.thread
  %retval.0 = phi i32 [ 0, %do.end61 ], [ -5, %do.end67 ], [ -5, %if.end20.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @su3000_power_ctrl(ptr noundef %d, i32 noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.246, i32 noundef %i, i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #9
  %data = getelementptr inbounds %struct.dw2102_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -34, ptr %data, align 2
  %arrayidx4 = getelementptr %struct.dw2102_state, ptr %1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx4, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %1, align 4
  %call7 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true.if.end_crit_edge ], [ %call7, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @su3000_read_mac_address(ptr noundef %d, ptr nocapture noundef writeonly %mac) #2 align 64 {
entry:
  %obuf = alloca [2 x i8], align 2
  %ibuf = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %obuf) #9
  %0 = ptrtoint ptr %obuf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 8176, ptr %obuf, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ibuf) #9
  %1 = ptrtoint ptr %ibuf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ibuf, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #9
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 81, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %obuf, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %8 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 81, ptr %arrayinit.element, align 4
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %9 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags2, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %10 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len3, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %11 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ibuf, ptr %buf4, align 4
  %arrayidx = getelementptr inbounds [2 x i8], ptr %obuf, i32 0, i32 1
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp7.not = icmp eq i32 %call, 2
  br i1 %cmp7.not, label %if.else, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.else:                                          ; preds = %entry
  %12 = ptrtoint ptr %ibuf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ibuf, align 1
  %14 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %mac, align 1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -15, ptr %arrayidx, align 1
  %call.1 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.1)
  %cmp7.not.1 = icmp eq i32 %call.1, 2
  br i1 %cmp7.not.1, label %if.else.1, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.else.1:                                        ; preds = %if.else
  %16 = ptrtoint ptr %ibuf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ibuf, align 1
  %arrayidx10.1 = getelementptr i8, ptr %mac, i32 1
  %18 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx10.1, align 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -14, ptr %arrayidx, align 1
  %call.2 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.2)
  %cmp7.not.2 = icmp eq i32 %call.2, 2
  br i1 %cmp7.not.2, label %if.else.2, label %if.else.1.for.end_crit_edge

if.else.1.for.end_crit_edge:                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.else.2:                                        ; preds = %if.else.1
  %20 = ptrtoint ptr %ibuf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ibuf, align 1
  %arrayidx10.2 = getelementptr i8, ptr %mac, i32 2
  %22 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx10.2, align 1
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -13, ptr %arrayidx, align 1
  %call.3 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.3)
  %cmp7.not.3 = icmp eq i32 %call.3, 2
  br i1 %cmp7.not.3, label %if.else.3, label %if.else.2.for.end_crit_edge

if.else.2.for.end_crit_edge:                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.else.3:                                        ; preds = %if.else.2
  %24 = ptrtoint ptr %ibuf to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ibuf, align 1
  %arrayidx10.3 = getelementptr i8, ptr %mac, i32 3
  %26 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx10.3, align 1
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -12, ptr %arrayidx, align 1
  %call.4 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.4)
  %cmp7.not.4 = icmp eq i32 %call.4, 2
  br i1 %cmp7.not.4, label %if.else.4, label %if.else.3.for.end_crit_edge

if.else.3.for.end_crit_edge:                      ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.else.4:                                        ; preds = %if.else.3
  %28 = ptrtoint ptr %ibuf to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ibuf, align 1
  %arrayidx10.4 = getelementptr i8, ptr %mac, i32 4
  %30 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx10.4, align 1
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -11, ptr %arrayidx, align 1
  %call.5 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.5)
  %cmp7.not.5 = icmp eq i32 %call.5, 2
  br i1 %cmp7.not.5, label %if.else.5, label %if.else.4.for.end_crit_edge

if.else.4.for.end_crit_edge:                      ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.else.5:                                        ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %ibuf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ibuf, align 1
  %arrayidx10.5 = getelementptr i8, ptr %mac, i32 5
  %34 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx10.5, align 1
  br label %for.end

for.end:                                          ; preds = %if.else.5, %if.else.4.for.end_crit_edge, %if.else.3.for.end_crit_edge, %if.else.2.for.end_crit_edge, %if.else.1.for.end_crit_edge, %if.else.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ibuf) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %obuf) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @su3000_identify_state(ptr nocapture noundef readnone %udev, ptr nocapture noundef readnone %props, ptr nocapture noundef readnone %desc, ptr nocapture noundef writeonly %cold) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.248) #12
  %0 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cold, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @su3000_rc_query(ptr noundef %d) #2 align 64 {
entry:
  %key = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %key) #9
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %key, align 1, !annotation !714
  %1 = getelementptr inbounds [2 x i8], ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !714
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 6656, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %key, ptr %buf, align 4
  %i2c_algo = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 14
  %9 = ptrtoint ptr %i2c_algo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_algo, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  %call = call i32 %12(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then:                                          ; preds = %entry
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp2.not = icmp eq i8 %16, -1
  br i1 %cmp2.not, label %if.then.if.end20_crit_edge, label %do.body

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.body:                                          ; preds = %if.then
  %17 = load i32, ptr @dvb_usb_dw2102_debug, align 4
  %and = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end13_crit_edge, label %do.end

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %key, align 1
  %conv8 = zext i8 %19 to i32
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  %conv10 = zext i8 %21 to i32
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.249, i32 noundef %conv8, i32 noundef %conv10) #12
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %22 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rc_dev, align 8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 1
  %conv15 = zext i8 %25 to i32
  %shl = shl nuw nsw i32 %conv15, 8
  %26 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %key, align 1
  %conv17 = zext i8 %27 to i32
  %or = or i32 %shl, %conv17
  %conv18 = zext i32 %or to i64
  call void @rc_keydown(ptr noundef %23, i32 noundef 2, i64 noundef %conv18, i8 noundef zeroext 0) #9
  br label %if.end20

if.end20:                                         ; preds = %do.end13, %if.then.if.end20_crit_edge, %entry.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %key) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_generic_rw(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @su3000_i2c_transfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %data_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.cleanup.sink.split_crit_edge, label %if.end8

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end3
  %4 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.362)
  switch i32 %num, label %do.end199 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb108
  ]

sw.bb:                                            ; preds = %if.end8
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %msg, align 4
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.363)
  switch i16 %6, label %sw.default [
    i16 6400, label %sw.bb9
    i16 6656, label %sw.bb28
  ]

sw.bb9:                                           ; preds = %sw.bb
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %add = add i8 %11, 54
  %data = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %add, ptr %data, align 2
  %arrayidx16 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx18, align 2
  %call22 = tail call i32 @dvb_usb_generic_rw(ptr noundef nonnull %1, ptr noundef %data, i16 noundef zeroext 3, ptr noundef %data, i16 noundef zeroext 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end, label %sw.bb9.sw.epilog202_crit_edge

sw.bb9.sw.epilog202_crit_edge:                    ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog202

do.end:                                           ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250) #12
  br label %sw.epilog202

sw.bb28:                                          ; preds = %sw.bb
  %data29 = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %data29 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %data29, align 2
  %call35 = tail call i32 @dvb_usb_generic_rw(ptr noundef nonnull %1, ptr noundef %data29, i16 noundef zeroext 1, ptr noundef %data29, i16 noundef zeroext 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end41, label %sw.bb28.if.end44_crit_edge

sw.bb28.if.end44_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end41:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250) #12
  br label %if.end44

if.end44:                                         ; preds = %do.end41, %sw.bb28.if.end44_crit_edge
  %16 = ptrtoint ptr %data29 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data29, align 2
  %buf48 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %18 = ptrtoint ptr %buf48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf48, align 4
  %arrayidx49 = getelementptr i8, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %arrayidx49, align 1
  %arrayidx51 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx51, align 1
  %23 = load ptr, ptr %buf48, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %22, ptr %23, align 1
  br label %sw.epilog202

sw.default:                                       ; preds = %sw.bb
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %26)
  %cmp58 = icmp ugt i16 %26, 65
  br i1 %cmp58, label %do.end63, label %if.end69

do.end63:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %conv56 = zext i16 %26 to i32
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv56) #12
  br label %sw.epilog202

if.end69:                                         ; preds = %sw.default
  %data70 = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %data70 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 8, ptr %data70, align 2
  %28 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %msg, align 4
  %conv74 = trunc i16 %29 to i8
  %arrayidx76 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv74, ptr %arrayidx76, align 1
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %len, align 4
  %conv79 = trunc i16 %32 to i8
  %arrayidx81 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv79, ptr %arrayidx81, align 2
  %arrayidx83 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 3
  %buf85 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %34 = ptrtoint ptr %buf85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf85, align 4
  %36 = load i16, ptr %len, align 4
  %conv88 = zext i16 %36 to i32
  %37 = call ptr @memcpy(ptr %arrayidx83, ptr %35, i32 %conv88)
  %38 = load i16, ptr %len, align 4
  %add94 = add i16 %38, 3
  %call98 = tail call i32 @dvb_usb_generic_rw(ptr noundef nonnull %1, ptr noundef %data70, i16 noundef zeroext %add94, ptr noundef %data70, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %do.end104, label %if.end69.sw.epilog202_crit_edge

if.end69.sw.epilog202_crit_edge:                  ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog202

do.end104:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250) #12
  br label %sw.epilog202

sw.bb108:                                         ; preds = %if.end8
  %len110 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %39 = ptrtoint ptr %len110 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %len110, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %40)
  %cmp113 = icmp ugt i16 %40, 64
  br i1 %cmp113, label %do.end118, label %if.end124

do.end118:                                        ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #11
  %conv111 = zext i16 %40 to i32
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv111) #12
  br label %sw.epilog202

if.end124:                                        ; preds = %sw.bb108
  %len126 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %41 = ptrtoint ptr %len126 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %len126, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 67, i16 %42)
  %cmp129 = icmp ugt i16 %42, 67
  br i1 %cmp129, label %do.end134, label %if.end140

do.end134:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %conv127 = zext i16 %42 to i32
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv127) #12
  br label %sw.epilog202

if.end140:                                        ; preds = %if.end124
  %data141 = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 2
  %43 = ptrtoint ptr %data141 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 9, ptr %data141, align 2
  %44 = ptrtoint ptr %len110 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %len110, align 4
  %conv145 = trunc i16 %45 to i8
  %arrayidx147 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv145, ptr %arrayidx147, align 1
  %47 = ptrtoint ptr %len126 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %len126, align 4
  %conv150 = trunc i16 %48 to i8
  %arrayidx152 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv150, ptr %arrayidx152, align 2
  %50 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %msg, align 4
  %conv155 = trunc i16 %51 to i8
  %arrayidx157 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 3
  %52 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv155, ptr %arrayidx157, align 1
  %arrayidx159 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 4
  %buf161 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %53 = ptrtoint ptr %buf161 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf161, align 4
  %55 = load i16, ptr %len110, align 4
  %conv164 = zext i16 %55 to i32
  %56 = call ptr @memcpy(ptr %arrayidx159, ptr %54, i32 %conv164)
  %57 = load i16, ptr %len110, align 4
  %add170 = add i16 %57, 4
  %58 = load i16, ptr %len126, align 4
  %add177 = add i16 %58, 1
  %call179 = tail call i32 @dvb_usb_generic_rw(ptr noundef nonnull %1, ptr noundef %data141, i16 noundef zeroext %add170, ptr noundef %data141, i16 noundef zeroext %add177, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %cmp180 = icmp slt i32 %call179, 0
  br i1 %cmp180, label %do.end185, label %if.end140.if.end188_crit_edge

if.end140.if.end188_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

do.end185:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  %call187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250) #12
  br label %if.end188

if.end188:                                        ; preds = %do.end185, %if.end140.if.end188_crit_edge
  %buf190 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %59 = ptrtoint ptr %buf190 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buf190, align 4
  %61 = ptrtoint ptr %len126 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %len126, align 4
  %conv195 = zext i16 %62 to i32
  %63 = call ptr @memcpy(ptr %60, ptr %arrayidx147, i32 %conv195)
  br label %sw.epilog202

do.end199:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.265) #12
  br label %sw.epilog202

sw.epilog202:                                     ; preds = %do.end199, %if.end188, %do.end134, %do.end118, %do.end104, %if.end69.sw.epilog202_crit_edge, %do.end63, %if.end44, %do.end, %sw.bb9.sw.epilog202_crit_edge
  %num.addr.0 = phi i32 [ %num, %do.end199 ], [ -95, %do.end118 ], [ -95, %do.end134 ], [ 2, %if.end188 ], [ -95, %do.end63 ], [ 1, %do.end104 ], [ 1, %if.end69.sw.epilog202_crit_edge ], [ 1, %if.end44 ], [ 1, %do.end ], [ 1, %sw.bb9.sw.epilog202_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog202, %if.end3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %num.addr.0, %sw.epilog202 ], [ -11, %if.end3.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @su3000_frontend_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #9
  %data = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 14, ptr %data, align 2
  %arrayidx2 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -128, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx4, align 2
  %call = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 3, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 14, ptr %data, align 2
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %arrayidx2, align 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx4, align 2
  %call19 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 3, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277) #12
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.end.if.end27_crit_edge
  tail call void @msleep(i32 noundef 300) #9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 14, ptr %data, align 2
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -125, ptr %arrayidx2, align 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx4, align 2
  %call38 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 3, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end43, label %if.end27.if.end46_crit_edge

if.end27.if.end46_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

do.end43:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277) #12
  br label %if.end46

if.end46:                                         ; preds = %do.end43, %if.end27.if.end46_crit_edge
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 14, ptr %data, align 2
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -125, ptr %arrayidx2, align 1
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx4, align 2
  %call57 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 3, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end62, label %if.end46.if.end65_crit_edge

if.end46.if.end65_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.end62:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277) #12
  br label %if.end65

if.end65:                                         ; preds = %do.end62, %if.end46.if.end65_crit_edge
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 81, ptr %data, align 2
  %call72 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 1, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.end77, label %if.end65.if.end80_crit_edge

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

do.end77:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230) #12
  br label %if.end80

if.end80:                                         ; preds = %do.end77, %if.end65.if.end80_crit_edge
  tail call void @mutex_unlock(ptr noundef %data_mutex) #9
  %call82 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.120) #9
  %tobool.not = icmp eq ptr %call82, null
  br i1 %tobool.not, label %cond.end, label %if.end80.if.then86_crit_edge

if.end80.if.then86_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

cond.end:                                         ; preds = %if.end80
  %call83 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.121) #9
  %call84 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.120) #9
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %do.end93, label %cond.end.if.then86_crit_edge

cond.end.if.then86_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

if.then86:                                        ; preds = %cond.end.if.then86_crit_edge, %if.end80.if.then86_crit_edge
  %cond187 = phi ptr [ %call84, %cond.end.if.then86_crit_edge ], [ %call82, %if.end80.if.then86_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call87 = tail call ptr %cond187(ptr noundef nonnull @su3000_ds3000_config, ptr noundef %i2c_adap) #9
  %cmp88 = icmp eq ptr %call87, null
  br i1 %cmp88, label %if.then89, label %if.end104

if.then89:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.120) #9
  br label %if.end96.thread

do.end93:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #12
  br label %if.end96.thread

if.end96.thread:                                  ; preds = %do.end93, %if.then89
  %fe_adap189 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %17 = ptrtoint ptr %fe_adap189 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %fe_adap189, align 8
  br label %cleanup

if.end104:                                        ; preds = %if.then86
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %18 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call87, ptr %fe_adap, align 8
  %call107 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.125) #9
  %tobool108.not = icmp eq ptr %call107, null
  br i1 %tobool108.not, label %cond.end113, label %if.end104.if.then116_crit_edge

if.end104.if.then116_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116

cond.end113:                                      ; preds = %if.end104
  %call111 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.126) #9
  %call112 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.125) #9
  %tobool115.not = icmp eq ptr %call112, null
  br i1 %tobool115.not, label %do.end128, label %cond.end113.if.then116_crit_edge

cond.end113.if.then116_crit_edge:                 ; preds = %cond.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116

if.then116:                                       ; preds = %cond.end113.if.then116_crit_edge, %if.end104.if.then116_crit_edge
  %cond114193 = phi ptr [ %call112, %cond.end113.if.then116_crit_edge ], [ %call107, %if.end104.if.then116_crit_edge ]
  %19 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fe_adap, align 8
  %call121 = tail call ptr %cond114193(ptr noundef %20, ptr noundef nonnull @dw2104_ts2020_config, ptr noundef %i2c_adap) #9
  %cmp122 = icmp eq ptr %call121, null
  br i1 %cmp122, label %if.then123, label %do.end137

if.then123:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.125) #9
  br label %do.end143

do.end128:                                        ; preds = %cond.end113
  call void @__sanitizer_cov_trace_pc() #11
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #12
  br label %do.end143

do.end137:                                        ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #11
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.292) #12
  br label %cleanup

do.end143:                                        ; preds = %do.end128, %if.then123
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.295) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end143, %do.end137, %if.end96.thread
  %retval.0 = phi i32 [ 0, %do.end137 ], [ -5, %do.end143 ], [ -5, %if.end96.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t220_frontend_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #9
  %data = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 14, ptr %data, align 2
  %arrayidx2 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -121, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx4, align 2
  %call = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 3, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 14, ptr %data, align 2
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -122, ptr %arrayidx2, align 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx4, align 2
  %call19 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 3, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277) #12
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.end.if.end27_crit_edge
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 14, ptr %data, align 2
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -128, ptr %arrayidx2, align 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx4, align 2
  %call38 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 3, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end43, label %if.end27.if.end46_crit_edge

if.end27.if.end46_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

do.end43:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277) #12
  br label %if.end46

if.end46:                                         ; preds = %do.end43, %if.end27.if.end46_crit_edge
  tail call void @msleep(i32 noundef 50) #9
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 14, ptr %data, align 2
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -128, ptr %arrayidx2, align 1
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx4, align 2
  %call57 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 3, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end62, label %if.end46.if.end65_crit_edge

if.end46.if.end65_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.end62:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277) #12
  br label %if.end65

if.end65:                                         ; preds = %do.end62, %if.end46.if.end65_crit_edge
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 81, ptr %data, align 2
  %call72 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 1, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.end77, label %if.end65.if.end80_crit_edge

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

do.end77:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230) #12
  br label %if.end80

if.end80:                                         ; preds = %do.end77, %if.end65.if.end80_crit_edge
  tail call void @mutex_unlock(ptr noundef %data_mutex) #9
  %call82 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.308) #9
  %tobool.not = icmp eq ptr %call82, null
  br i1 %tobool.not, label %cond.end, label %if.end80.if.then86_crit_edge

if.end80.if.then86_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

cond.end:                                         ; preds = %if.end80
  %call83 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.309) #9
  %call84 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.308) #9
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %do.end93, label %cond.end.if.then86_crit_edge

cond.end.if.then86_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then86

if.then86:                                        ; preds = %cond.end.if.then86_crit_edge, %if.end80.if.then86_crit_edge
  %cond187 = phi ptr [ %call84, %cond.end.if.then86_crit_edge ], [ %call82, %if.end80.if.then86_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call87 = tail call ptr %cond187(ptr noundef nonnull @cxd2820r_config, ptr noundef %i2c_adap, ptr noundef null) #9
  %cmp88 = icmp eq ptr %call87, null
  br i1 %cmp88, label %if.then89, label %if.then103

if.then89:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.308) #9
  br label %if.end96.thread

do.end93:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.311) #12
  br label %if.end96.thread

if.end96.thread:                                  ; preds = %do.end93, %if.then89
  %fe_adap189 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %17 = ptrtoint ptr %fe_adap189 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %fe_adap189, align 8
  br label %cleanup

if.then103:                                       ; preds = %if.then86
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %18 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call87, ptr %fe_adap, align 8
  %call106 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.313) #9
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %cond.end112, label %if.then103.if.then115_crit_edge

if.then103.if.then115_crit_edge:                  ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115

cond.end112:                                      ; preds = %if.then103
  %call110 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.314) #9
  %call111 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.313) #9
  %tobool114.not = icmp eq ptr %call111, null
  br i1 %tobool114.not, label %do.end127, label %cond.end112.if.then115_crit_edge

cond.end112.if.then115_crit_edge:                 ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then115

if.then115:                                       ; preds = %cond.end112.if.then115_crit_edge, %if.then103.if.then115_crit_edge
  %cond113193 = phi ptr [ %call111, %cond.end112.if.then115_crit_edge ], [ %call106, %if.then103.if.then115_crit_edge ]
  %19 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fe_adap, align 8
  %call120 = tail call ptr %cond113193(ptr noundef %20, i8 noundef zeroext 96, ptr noundef %i2c_adap, ptr noundef nonnull @tda18271_config) #9
  %cmp121 = icmp eq ptr %call120, null
  br i1 %cmp121, label %if.then122, label %if.then115.cleanup_crit_edge

if.then115.cleanup_crit_edge:                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then122:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.313) #9
  br label %cleanup

do.end127:                                        ; preds = %cond.end112
  call void @__sanitizer_cov_trace_pc() #11
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.316) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end127, %if.then122, %if.then115.cleanup_crit_edge, %if.end96.thread
  %.str.322.sink = phi ptr [ @.str.319, %if.then115.cleanup_crit_edge ], [ @.str.322, %do.end127 ], [ @.str.322, %if.then122 ], [ @.str.322, %if.end96.thread ]
  %retval.0 = phi i32 [ 0, %if.then115.cleanup_crit_edge ], [ -5, %do.end127 ], [ -5, %if.then122 ], [ -5, %if.end96.thread ]
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.322.sink) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt_s2_4600_frontend_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  %board_info = alloca %struct.i2c_board_info, align 4
  %m88ds3103_pdata = alloca %struct.m88ds3103_platform_data, align 4
  %ts2020_config = alloca %struct.ts2020_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %board_info) #9
  %4 = call ptr @memset(ptr %board_info, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %m88ds3103_pdata) #9
  %5 = call ptr @memset(ptr %m88ds3103_pdata, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ts2020_config) #9
  %6 = call ptr @memset(ptr %ts2020_config, i32 0, i32 24)
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #9
  %data = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 14, ptr %data, align 2
  %arrayidx2 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr %struct.dw2102_state, ptr %3, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx4, align 2
  %call = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 3, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 14, ptr %data, align 2
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %arrayidx2, align 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx4, align 2
  %call19 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 3, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277) #12
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.end.if.end27_crit_edge
  tail call void @msleep(i32 noundef 300) #9
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 14, ptr %data, align 2
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -125, ptr %arrayidx2, align 1
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx4, align 2
  %call38 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 3, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end43, label %if.end27.if.end46_crit_edge

if.end27.if.end46_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

do.end43:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277) #12
  br label %if.end46

if.end46:                                         ; preds = %do.end43, %if.end27.if.end46_crit_edge
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 14, ptr %data, align 2
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -125, ptr %arrayidx2, align 1
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %arrayidx4, align 2
  %call57 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 3, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end62, label %if.end46.if.end65_crit_edge

if.end46.if.end65_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.end62:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277) #12
  br label %if.end65

if.end65:                                         ; preds = %do.end62, %if.end46.if.end65_crit_edge
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 81, ptr %data, align 2
  %call72 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 1, ptr noundef %data, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.end77, label %if.end65.if.end80_crit_edge

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

do.end77:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230) #12
  br label %if.end80

if.end80:                                         ; preds = %do.end77, %if.end65.if.end80_crit_edge
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %data.i = getelementptr inbounds %struct.dw2102_state, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 9, ptr %data.i, align 2
  %arrayidx2.i = getelementptr %struct.dw2102_state, ptr %21, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr %struct.dw2102_state, ptr %21, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %arrayidx4.i, align 2
  %arrayidx6.i = getelementptr %struct.dw2102_state, ptr %21, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 104, ptr %arrayidx6.i, align 1
  %arrayidx8.i = getelementptr %struct.dw2102_state, ptr %21, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx8.i, align 2
  %call.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data.i, i16 noundef zeroext 5, ptr noundef %data.i, i16 noundef zeroext 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %tt_s2_4600_frontend_attach_probe_demod.exit.thread, label %tt_s2_4600_frontend_attach_probe_demod.exit

tt_s2_4600_frontend_attach_probe_demod.exit.thread: ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.347, i32 noundef 104) #12
  br label %if.else

tt_s2_4600_frontend_attach_probe_demod.exit:      ; preds = %if.end80
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %28)
  %cmp17.not.i.not = icmp eq i8 %28, 8
  br i1 %cmp17.not.i.not, label %tt_s2_4600_frontend_attach_probe_demod.exit.if.end101_crit_edge, label %tt_s2_4600_frontend_attach_probe_demod.exit.if.else_crit_edge

tt_s2_4600_frontend_attach_probe_demod.exit.if.else_crit_edge: ; preds = %tt_s2_4600_frontend_attach_probe_demod.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

tt_s2_4600_frontend_attach_probe_demod.exit.if.end101_crit_edge: ; preds = %tt_s2_4600_frontend_attach_probe_demod.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.else:                                          ; preds = %tt_s2_4600_frontend_attach_probe_demod.exit.if.else_crit_edge, %tt_s2_4600_frontend_attach_probe_demod.exit.thread
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  %data.i244 = getelementptr inbounds %struct.dw2102_state, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %data.i244 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 9, ptr %data.i244, align 2
  %arrayidx2.i245 = getelementptr %struct.dw2102_state, ptr %30, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %arrayidx2.i245 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %arrayidx2.i245, align 1
  %arrayidx4.i246 = getelementptr %struct.dw2102_state, ptr %30, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %arrayidx4.i246 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %arrayidx4.i246, align 2
  %arrayidx6.i247 = getelementptr %struct.dw2102_state, ptr %30, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %arrayidx6.i247 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 105, ptr %arrayidx6.i247, align 1
  %arrayidx8.i248 = getelementptr %struct.dw2102_state, ptr %30, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %arrayidx8.i248 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx8.i248, align 2
  %call.i249 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data.i244, i16 noundef zeroext 5, ptr noundef %data.i244, i16 noundef zeroext 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %cmp.i250 = icmp slt i32 %call.i249, 0
  br i1 %cmp.i250, label %tt_s2_4600_frontend_attach_probe_demod.exit257.thread, label %tt_s2_4600_frontend_attach_probe_demod.exit257

tt_s2_4600_frontend_attach_probe_demod.exit257.thread: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.347, i32 noundef 105) #12
  br label %if.else86

tt_s2_4600_frontend_attach_probe_demod.exit257:   ; preds = %if.else
  %36 = ptrtoint ptr %data.i244 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data.i244, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %37)
  %cmp17.not.i253.not = icmp eq i8 %37, 8
  br i1 %cmp17.not.i253.not, label %tt_s2_4600_frontend_attach_probe_demod.exit257.if.end101_crit_edge, label %tt_s2_4600_frontend_attach_probe_demod.exit257.if.else86_crit_edge

tt_s2_4600_frontend_attach_probe_demod.exit257.if.else86_crit_edge: ; preds = %tt_s2_4600_frontend_attach_probe_demod.exit257
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else86

tt_s2_4600_frontend_attach_probe_demod.exit257.if.end101_crit_edge: ; preds = %tt_s2_4600_frontend_attach_probe_demod.exit257
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.else86:                                        ; preds = %tt_s2_4600_frontend_attach_probe_demod.exit257.if.else86_crit_edge, %tt_s2_4600_frontend_attach_probe_demod.exit257.thread
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %data.i259 = getelementptr inbounds %struct.dw2102_state, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %data.i259 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 9, ptr %data.i259, align 2
  %arrayidx2.i260 = getelementptr %struct.dw2102_state, ptr %39, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %arrayidx2.i260 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %arrayidx2.i260, align 1
  %arrayidx4.i261 = getelementptr %struct.dw2102_state, ptr %39, i32 0, i32 2, i32 2
  %42 = ptrtoint ptr %arrayidx4.i261 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %arrayidx4.i261, align 2
  %arrayidx6.i262 = getelementptr %struct.dw2102_state, ptr %39, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %arrayidx6.i262 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 106, ptr %arrayidx6.i262, align 1
  %arrayidx8.i263 = getelementptr %struct.dw2102_state, ptr %39, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %arrayidx8.i263 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx8.i263, align 2
  %call.i264 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data.i259, i16 noundef zeroext 5, ptr noundef %data.i259, i16 noundef zeroext 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %cmp.i265 = icmp slt i32 %call.i264, 0
  br i1 %cmp.i265, label %tt_s2_4600_frontend_attach_probe_demod.exit272.thread, label %tt_s2_4600_frontend_attach_probe_demod.exit272

tt_s2_4600_frontend_attach_probe_demod.exit272.thread: ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i266 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.347, i32 noundef 106) #12
  br label %do.end98

tt_s2_4600_frontend_attach_probe_demod.exit272:   ; preds = %if.else86
  %45 = ptrtoint ptr %data.i259 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %data.i259, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %46)
  %cmp17.not.i268.not = icmp eq i8 %46, 8
  br i1 %cmp17.not.i268.not, label %tt_s2_4600_frontend_attach_probe_demod.exit272.if.end101_crit_edge, label %tt_s2_4600_frontend_attach_probe_demod.exit272.do.end98_crit_edge

tt_s2_4600_frontend_attach_probe_demod.exit272.do.end98_crit_edge: ; preds = %tt_s2_4600_frontend_attach_probe_demod.exit272
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end98

tt_s2_4600_frontend_attach_probe_demod.exit272.if.end101_crit_edge: ; preds = %tt_s2_4600_frontend_attach_probe_demod.exit272
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

do.end98:                                         ; preds = %tt_s2_4600_frontend_attach_probe_demod.exit272.do.end98_crit_edge, %tt_s2_4600_frontend_attach_probe_demod.exit272.thread
  tail call void @mutex_unlock(ptr noundef %data_mutex) #9
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.341) #12
  br label %cleanup

if.end101:                                        ; preds = %tt_s2_4600_frontend_attach_probe_demod.exit272.if.end101_crit_edge, %tt_s2_4600_frontend_attach_probe_demod.exit257.if.end101_crit_edge, %tt_s2_4600_frontend_attach_probe_demod.exit.if.end101_crit_edge
  %cmp117.ph = phi ptr [ @.str.344, %tt_s2_4600_frontend_attach_probe_demod.exit257.if.end101_crit_edge ], [ @.str.344, %tt_s2_4600_frontend_attach_probe_demod.exit.if.end101_crit_edge ], [ @.str.343, %tt_s2_4600_frontend_attach_probe_demod.exit272.if.end101_crit_edge ]
  %demod_addr.0.ph = phi i16 [ 105, %tt_s2_4600_frontend_attach_probe_demod.exit257.if.end101_crit_edge ], [ 104, %tt_s2_4600_frontend_attach_probe_demod.exit.if.end101_crit_edge ], [ 106, %tt_s2_4600_frontend_attach_probe_demod.exit272.if.end101_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #9
  %47 = ptrtoint ptr %m88ds3103_pdata to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 27000000, ptr %m88ds3103_pdata, align 4
  %i2c_wr_max = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 1
  %48 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 33, ptr %i2c_wr_max, align 4
  %ts_mode = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 2
  %49 = ptrtoint ptr %ts_mode to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %ts_mode, align 4
  %ts_clk = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 3
  %50 = ptrtoint ptr %ts_clk to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 16000, ptr %ts_clk, align 4
  %ts_clk_pol = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 5
  %51 = ptrtoint ptr %ts_clk_pol to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %ts_clk_pol, align 4
  %bf.clear103 = and i8 %bf.load, 63
  store i8 %bf.clear103, ptr %ts_clk_pol, align 4
  %agc = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 6
  %52 = ptrtoint ptr %agc to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -103, ptr %agc, align 1
  %agc_inv = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 7
  %53 = ptrtoint ptr %agc_inv to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load105 = load i8, ptr %agc_inv, align 2
  %clk_out = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 4
  %54 = ptrtoint ptr %clk_out to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %clk_out, align 4
  %bf.clear112 = and i8 %bf.load105, 15
  %bf.set113 = or i8 %bf.clear112, 32
  store i8 %bf.set113, ptr %agc_inv, align 2
  %55 = call ptr @memset(ptr %board_info, i32 0, i32 56)
  %call124 = call i32 @strscpy(ptr noundef nonnull %board_info, ptr noundef nonnull %cmp117.ph, i32 noundef 20) #9
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 2
  %56 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %demod_addr.0.ph, ptr %addr, align 2
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 4
  %57 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %m88ds3103_pdata, ptr %platform_data, align 4
  %call126 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.344) #9
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call127 = call ptr @i2c_new_client_device(ptr noundef %i2c_adap, ptr noundef nonnull %board_info) #9
  %tobool.not.i.i = icmp eq ptr %call127, null
  %cmp.i.i = icmp ugt ptr %call127, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end101.cleanup_crit_edge, label %i2c_client_has_driver.exit

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

i2c_client_has_driver.exit:                       ; preds = %if.end101
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call127, i32 0, i32 4, i32 6
  %58 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %59, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.cleanup_crit_edge, label %if.end130

i2c_client_has_driver.exit.cleanup_crit_edge:     ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end130:                                        ; preds = %i2c_client_has_driver.exit
  %60 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver.i, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %owner, align 4
  %call132 = call zeroext i1 @try_module_get(ptr noundef %63) #9
  br i1 %call132, label %if.end134, label %if.then133

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  call void @i2c_unregister_device(ptr noundef nonnull %call127) #9
  br label %cleanup

if.end134:                                        ; preds = %if.end130
  %get_dvb_frontend = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 8
  %64 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_dvb_frontend, align 4
  %call135 = call ptr %65(ptr noundef nonnull %call127) #9
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %66 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call135, ptr %fe_adap, align 8
  %get_i2c_adapter = getelementptr inbounds %struct.m88ds3103_platform_data, ptr %m88ds3103_pdata, i32 0, i32 9
  %67 = ptrtoint ptr %get_i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %get_i2c_adapter, align 4
  %call137 = call ptr %68(ptr noundef nonnull %call127) #9
  %i2c_client_demod = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 3
  %69 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call127, ptr %i2c_client_demod, align 4
  %70 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fe_adap, align 8
  %fe141 = getelementptr inbounds %struct.ts2020_config, ptr %ts2020_config, i32 0, i32 3
  %72 = ptrtoint ptr %fe141 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %fe141, align 4
  %73 = call ptr @memset(ptr %board_info, i32 0, i32 56)
  %call144 = call i32 @strscpy(ptr noundef nonnull %board_info, ptr noundef nonnull @.str.345, i32 noundef 20) #9
  %74 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 96, ptr %addr, align 2
  %75 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %ts2020_config, ptr %platform_data, align 4
  %call147 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.346) #9
  %call148 = call ptr @i2c_new_client_device(ptr noundef %call137, ptr noundef nonnull %board_info) #9
  %tobool.not.i.i273 = icmp eq ptr %call148, null
  %cmp.i.i274 = icmp ugt ptr %call148, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i275 = or i1 %tobool.not.i.i273, %cmp.i.i274
  br i1 %spec.select.i.i275, label %if.end134.if.then150_crit_edge, label %i2c_client_has_driver.exit279

if.end134.if.then150_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then150

i2c_client_has_driver.exit279:                    ; preds = %if.end134
  %driver.i276 = getelementptr inbounds %struct.i2c_client, ptr %call148, i32 0, i32 4, i32 6
  %76 = ptrtoint ptr %driver.i276 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver.i276, align 4
  %tobool.i277.not = icmp eq ptr %77, null
  br i1 %tobool.i277.not, label %i2c_client_has_driver.exit279.if.then150_crit_edge, label %if.end154

i2c_client_has_driver.exit279.if.then150_crit_edge: ; preds = %i2c_client_has_driver.exit279
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then150

if.then150:                                       ; preds = %i2c_client_has_driver.exit279.if.then150_crit_edge, %if.end134.if.then150_crit_edge
  %78 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fe_adap, align 8
  call void @dvb_frontend_detach(ptr noundef %79) #9
  br label %cleanup

if.end154:                                        ; preds = %i2c_client_has_driver.exit279
  %80 = ptrtoint ptr %driver.i276 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %driver.i276, align 4
  %owner157 = getelementptr inbounds %struct.device_driver, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %owner157 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %owner157, align 4
  %call158 = call zeroext i1 @try_module_get(ptr noundef %83) #9
  br i1 %call158, label %if.end163, label %if.then159

if.then159:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  call void @i2c_unregister_device(ptr noundef nonnull %call148) #9
  %84 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fe_adap, align 8
  call void @dvb_frontend_detach(ptr noundef %85) #9
  br label %cleanup

if.end163:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fe_adap, align 8
  %get_rf_strength = getelementptr inbounds %struct.dvb_frontend, ptr %87, i32 0, i32 1, i32 32, i32 13
  %88 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %get_rf_strength, align 4
  %read_signal_strength = getelementptr inbounds %struct.dvb_frontend, ptr %87, i32 0, i32 1, i32 17
  %90 = ptrtoint ptr %read_signal_strength to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %read_signal_strength, align 4
  %i2c_client_tuner = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 4
  %91 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call148, ptr %i2c_client_tuner, align 4
  %92 = load ptr, ptr %fe_adap, align 8
  %read_status = getelementptr inbounds %struct.dvb_frontend, ptr %92, i32 0, i32 1, i32 15
  %93 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read_status, align 4
  %fe_read_status = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 6
  %95 = ptrtoint ptr %fe_read_status to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %fe_read_status, align 4
  %96 = load ptr, ptr %fe_adap, align 8
  %read_status179 = getelementptr inbounds %struct.dvb_frontend, ptr %96, i32 0, i32 1, i32 15
  %97 = ptrtoint ptr %read_status179 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @tt_s2_4600_read_status, ptr %read_status179, align 4
  %last_lock = getelementptr inbounds %struct.dw2102_state, ptr %3, i32 0, i32 1
  %98 = ptrtoint ptr %last_lock to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %last_lock, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end163, %if.then159, %if.then150, %if.then133, %i2c_client_has_driver.exit.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %do.end98
  %retval.0 = phi i32 [ -19, %do.end98 ], [ 0, %if.end163 ], [ -19, %if.then159 ], [ -19, %if.then150 ], [ -19, %if.then133 ], [ -19, %i2c_client_has_driver.exit.cleanup_crit_edge ], [ -19, %if.end101.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ts2020_config) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %m88ds3103_pdata) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %board_info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt_s2_4600_read_status(ptr noundef %fe, ptr noundef %status) #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %priv1 = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1, align 8
  %fe_read_status = getelementptr inbounds %struct.dw2102_state, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %fe_read_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_read_status, align 4
  %call = tail call i32 %9(ptr noundef %fe, ptr noundef %status) #9
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %last_lock = getelementptr inbounds %struct.dw2102_state, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %last_lock to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %last_lock, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 131071, ptr %14, align 4
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 6400, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @su3000_streaming_ctrl.command_start, ptr %buf.i, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %i2c_adap.i = getelementptr inbounds %struct.dvb_usb_device, ptr %20, i32 0, i32 8
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c_adap.i, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %23 = trunc i32 %22 to i8
  %24 = lshr i8 %23, 4
  %25 = and i8 %24, 1
  %last_lock6 = getelementptr inbounds %struct.dw2102_state, ptr %7, i32 0, i32 1
  %26 = ptrtoint ptr %last_lock6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %last_lock6, align 1
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 341)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 341)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !98, !100, !101, !102, !103, !104, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !140, !142, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !156, !158, !159, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !191, !192, !194, !195, !196, !197, !199, !201, !202, !203, !205, !206, !208, !209, !211, !213, !215, !217, !219, !220, !221, !222, !223, !224, !226, !227, !228, !229, !230, !232, !233, !234, !236, !237, !239, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !262, !263, !265, !266, !267, !268, !269, !271, !272, !273, !275, !277, !279, !280, !281, !282, !283, !285, !286, !287, !289, !290, !291, !292, !294, !295, !296, !298, !300, !302, !304, !306, !308, !310, !311, !312, !314, !315, !317, !319, !321, !323, !324, !325, !326, !327, !328, !330, !331, !332, !334, !336, !337, !338, !340, !342, !343, !344, !346, !347, !349, !350, !352, !353, !354, !355, !356, !358, !359, !360, !361, !363, !365, !367, !369, !370, !371, !372, !373, !374, !376, !377, !378, !379, !380, !382, !383, !384, !386, !388, !389, !390, !392, !393, !395, !396, !397, !398, !400, !401, !402, !404, !405, !407, !408, !410, !412, !414, !416, !418, !420, !421, !422, !424, !425, !427, !428, !429, !431, !432, !433, !435, !437, !439, !441, !443, !445, !446, !447, !449, !450, !452, !453, !454, !456, !458, !460, !462, !464, !466, !468, !470, !471, !472, !474, !475, !476, !478, !480, !482, !484, !486, !488, !490, !492, !493, !494, !495, !497, !498, !499, !500, !501, !503, !504, !506, !507, !508, !510, !511, !512, !514, !516, !518, !519, !520, !521, !523, !524, !525, !526, !528, !529, !530, !532, !534, !535, !536, !537, !539, !540, !542, !543, !545, !546, !548, !549, !551, !552, !554, !555, !557, !558, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !582, !583, !584, !586, !587, !589, !590, !592, !593, !595, !596, !598, !599, !601, !602, !604, !605, !606, !608, !609, !610, !612, !614, !616, !618, !619, !620, !622, !623, !625, !626, !628, !629, !631, !632, !634, !635, !636, !637, !638, !640, !641, !642, !643, !644, !646, !647, !648, !650, !651, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !673, !674, !676, !677, !679, !680, !682, !683, !685, !686, !688, !689, !690, !692, !694, !696, !698, !700, !701, !702, !703}
!llvm.module.flags = !{!705, !706, !707, !708, !709, !710, !711, !712}
!llvm.ident = !{!713}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 78, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 79, i32 1}
!5 = !{ptr @__param_demod, !6, !"__param_demod", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 84, i32 1}
!7 = !{ptr @__UNIQUE_ID_demodtype388, !6, !"__UNIQUE_ID_demodtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_demod389, !9, !"__UNIQUE_ID_demod389", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 85, i32 1}
!10 = !{ptr @__param_adapter_nr, !11, !"__param_adapter_nr", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 87, i32 1}
!12 = !{ptr @__UNIQUE_ID_adapter_nrtype390, !11, !"__UNIQUE_ID_adapter_nrtype390", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_adapter_nr391, !11, !"__UNIQUE_ID_adapter_nr391", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_dvb_usb_dw2102__392_2612_dw2102_driver_init6, !15, !"__initcall__kmod_dvb_usb_dw2102__392_2612_dw2102_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2612, i32 1}
!16 = !{ptr @__exitcall_dw2102_driver_exit, !15, !"__exitcall_dw2102_driver_exit", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author393, !18, !"__UNIQUE_ID_author393", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2614, i32 1}
!19 = !{ptr @__UNIQUE_ID_description394, !20, !"__UNIQUE_ID_description394", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2615, i32 1}
!21 = !{ptr @__UNIQUE_ID_version395, !22, !"__UNIQUE_ID_version395", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2616, i32 1}
!23 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__modver_attr, !22, !"__modver_attr", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_file396, !28, !"__UNIQUE_ID_file396", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2617, i32 1}
!29 = !{ptr @__UNIQUE_ID_license397, !28, !"__UNIQUE_ID_license397", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_firmware398, !31, !"__UNIQUE_ID_firmware398", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2618, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware399, !33, !"__UNIQUE_ID_firmware399", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2619, i32 1}
!34 = !{ptr @__UNIQUE_ID_firmware400, !35, !"__UNIQUE_ID_firmware400", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2620, i32 1}
!36 = !{ptr @__UNIQUE_ID_firmware401, !37, !"__UNIQUE_ID_firmware401", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2621, i32 1}
!38 = !{ptr @__UNIQUE_ID_firmware402, !39, !"__UNIQUE_ID_firmware402", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2622, i32 1}
!40 = !{ptr @__UNIQUE_ID_firmware403, !41, !"__UNIQUE_ID_firmware403", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2623, i32 1}
!42 = !{ptr @__UNIQUE_ID_firmware404, !43, !"__UNIQUE_ID_firmware404", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2624, i32 1}
!44 = !{ptr @__UNIQUE_ID_firmware405, !45, !"__UNIQUE_ID_firmware405", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2625, i32 1}
!46 = !{ptr @dvb_usb_dw2102_debug, !47, !"dvb_usb_dw2102_debug", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 77, i32 12}
!48 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!49 = !{ptr @__param_str_demod, !6, !"__param_str_demod", i1 false, i1 false}
!50 = !{ptr @demod_probe, !51, !"demod_probe", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 83, i32 12}
!52 = !{ptr @__param_str_adapter_nr, !11, !"__param_str_adapter_nr", i1 false, i1 false}
!53 = !{ptr @__param_arr_adapter_nr, !11, !"__param_arr_adapter_nr", i1 false, i1 false}
!54 = !{ptr @adapter_nr, !11, !"adapter_nr", i1 false, i1 false}
!55 = !{ptr @.str.3, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2606, i32 10}
!57 = !{ptr @dw2102_driver, !58, !"dw2102_driver", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2605, i32 26}
!59 = !{ptr @.str.4, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1954, i32 14}
!61 = !{ptr @.str.5, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1961, i32 15}
!63 = !{ptr @.str.6, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1992, i32 4}
!65 = !{ptr @.str.7, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1996, i32 4}
!67 = !{ptr @.str.8, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2000, i32 4}
!69 = !{ptr @dw2102_properties, !70, !"dw2102_properties", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1951, i32 41}
!71 = !{ptr @.str.10, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1847, i32 31}
!73 = !{ptr @.str.11, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1849, i32 4}
!75 = !{ptr @.str.12, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.13, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @dw2102_load_firmware._entry, !74, !"_entry", i1 false, i1 false}
!78 = !{ptr @dw2102_load_firmware._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.15, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1857, i32 2}
!81 = !{ptr @dw2102_load_firmware._entry.14, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @dw2102_load_firmware._entry_ptr.16, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.18, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1870, i32 5}
!85 = !{ptr @dw2102_load_firmware._entry.17, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @dw2102_load_firmware._entry_ptr.19, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.21, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1879, i32 4}
!89 = !{ptr @dw2102_load_firmware._entry.20, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @dw2102_load_firmware._entry_ptr.22, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @dw2102_load_firmware._entry.23, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1884, i32 4}
!93 = !{ptr @dw2102_load_firmware._entry_ptr.24, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1890, i32 41}
!96 = !{ptr @dw2102_i2c_algo, !97, !"dw2102_i2c_algo", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 789, i32 29}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1683, i32 2}
!100 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.28, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @dw2102_tuner_attach._entry, !99, !"_entry", i1 false, i1 false}
!104 = !{ptr @dw2102_tuner_attach._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @dw2102_earda_i2c_algo, !106, !"dw2102_earda_i2c_algo", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 799, i32 29}
!107 = !{ptr @.str.30, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 282, i32 4}
!109 = !{ptr @.str.31, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @dw2102_earda_i2c_transfer._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @dw2102_earda_i2c_transfer._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.33, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 289, i32 4}
!114 = !{ptr @dw2102_earda_i2c_transfer._entry.32, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @dw2102_earda_i2c_transfer._entry_ptr.34, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 314, i32 5}
!118 = !{ptr @dw2102_earda_i2c_transfer._entry.35, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @dw2102_earda_i2c_transfer._entry_ptr.37, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @dw2102_earda_i2c_transfer._entry.38, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 332, i32 5}
!122 = !{ptr @dw2102_earda_i2c_transfer._entry_ptr.39, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.40, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1251, i32 22}
!125 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @dw2102_frontend_attach._entry, !124, !"_entry", i1 false, i1 false}
!129 = !{ptr @dw2102_frontend_attach._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.45, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1255, i32 4}
!132 = !{ptr @dw2102_frontend_attach._entry.44, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @dw2102_frontend_attach._entry_ptr.46, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1261, i32 22}
!136 = !{ptr @.str.48, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @dw2102_frontend_attach._entry.49, !135, !"_entry", i1 false, i1 false}
!139 = !{ptr @dw2102_frontend_attach._entry_ptr.51, !135, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1264, i32 8}
!142 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.55, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @dw2102_frontend_attach._entry.54, !141, !"_entry", i1 false, i1 false}
!145 = !{ptr @dw2102_frontend_attach._entry_ptr.56, !141, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1267, i32 5}
!148 = !{ptr @dw2102_frontend_attach._entry.57, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @dw2102_frontend_attach._entry_ptr.59, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1275, i32 22}
!152 = !{ptr @.str.61, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @dw2102_frontend_attach._entry.62, !151, !"_entry", i1 false, i1 false}
!155 = !{ptr @dw2102_frontend_attach._entry_ptr.64, !151, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1279, i32 4}
!158 = !{ptr @dw2102_frontend_attach._entry.65, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @dw2102_frontend_attach._entry_ptr.67, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @serit_sp1511lhb_config, !161, !"serit_sp1511lhb_config", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1060, i32 29}
!162 = !{ptr @dw210x_set_voltage.command_13v, !163, !"command_13v", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 971, i32 12}
!164 = !{ptr @dw210x_set_voltage.command_18v, !165, !"command_18v", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 972, i32 12}
!166 = !{ptr @dw210x_set_voltage.command_off, !167, !"command_off", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 973, i32 12}
!168 = !{ptr @earda_config, !169, !"earda_config", i1 false, i1 false}
!169 = !{!"../drivers/media/dvb-frontends/eds1547.h", i32 124, i32 30}
!170 = !{ptr @stv0288_earda_inittab, !171, !"stv0288_earda_inittab", i1 false, i1 false}
!171 = !{!"../drivers/media/dvb-frontends/eds1547.h", i32 12, i32 11}
!172 = !{ptr @sharp_z0194a_config, !173, !"sharp_z0194a_config", i1 false, i1 false}
!173 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1043, i32 30}
!174 = !{ptr @sharp_z0194a_inittab, !175, !"sharp_z0194a_inittab", i1 false, i1 false}
!175 = !{!"../drivers/media/dvb-frontends/z0194a.h", i32 40, i32 11}
!176 = !{ptr @.str.68, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 832, i32 4}
!178 = !{ptr @.str.69, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @dw210x_read_mac_address._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @dw210x_read_mac_address._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.71, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 839, i32 4}
!183 = !{ptr @dw210x_read_mac_address._entry.70, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @dw210x_read_mac_address._entry_ptr.72, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.74, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 840, i32 4}
!187 = !{ptr @dw210x_read_mac_address._entry.73, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @dw210x_read_mac_address._entry_ptr.75, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @dw210x_read_mac_address._entry.76, !186, !"_entry", i1 false, i1 false}
!191 = !{ptr @dw210x_read_mac_address._entry_ptr.78, !186, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1708, i32 4}
!194 = !{ptr @.str.80, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @dw2102_rc_query._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @dw2102_rc_query._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @dw2102_serit_i2c_algo, !198, !"dw2102_serit_i2c_algo", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 794, i32 29}
!199 = !{ptr @.str.81, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 203, i32 4}
!201 = !{ptr @dw2102_serit_i2c_transfer._entry, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @dw2102_serit_i2c_transfer._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @dw2102_serit_i2c_transfer._entry.82, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 210, i32 4}
!205 = !{ptr @dw2102_serit_i2c_transfer._entry_ptr.83, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @dw2102_serit_i2c_transfer._entry.84, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 232, i32 5}
!208 = !{ptr @dw2102_serit_i2c_transfer._entry_ptr.85, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.86, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2010, i32 14}
!211 = !{ptr @.str.87, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2047, i32 5}
!213 = !{ptr @.str.88, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2051, i32 5}
!215 = !{ptr @dw2104_properties, !216, !"dw2104_properties", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2007, i32 41}
!217 = !{ptr @.str.90, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1188, i32 22}
!219 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.93, !218, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @dw2104_frontend_attach._entry, !218, !"_entry", i1 false, i1 false}
!223 = !{ptr @dw2104_frontend_attach._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.94, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1191, i32 8}
!226 = !{ptr @.str.95, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.97, !225, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @dw2104_frontend_attach._entry.96, !225, !"_entry", i1 false, i1 false}
!229 = !{ptr @dw2104_frontend_attach._entry_ptr.98, !225, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.100, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1200, i32 5}
!232 = !{ptr @dw2104_frontend_attach._entry.99, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @dw2104_frontend_attach._entry_ptr.101, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @dw2104_frontend_attach._entry.102, !235, !"_entry", i1 false, i1 false}
!235 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1207, i32 22}
!236 = !{ptr @dw2104_frontend_attach._entry_ptr.103, !235, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.104, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1210, i32 8}
!239 = !{ptr @.str.105, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.107, !238, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @dw2104_frontend_attach._entry.106, !238, !"_entry", i1 false, i1 false}
!242 = !{ptr @dw2104_frontend_attach._entry_ptr.108, !238, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.110, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1214, i32 5}
!245 = !{ptr @dw2104_frontend_attach._entry.109, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @dw2104_frontend_attach._entry_ptr.111, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1221, i32 22}
!249 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.115, !248, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @dw2104_frontend_attach._entry.114, !248, !"_entry", i1 false, i1 false}
!252 = !{ptr @dw2104_frontend_attach._entry_ptr.116, !248, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.118, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1225, i32 4}
!255 = !{ptr @dw2104_frontend_attach._entry.117, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @dw2104_frontend_attach._entry_ptr.119, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.120, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1230, i32 21}
!259 = !{ptr @.str.121, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.123, !258, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @dw2104_frontend_attach._entry.122, !258, !"_entry", i1 false, i1 false}
!262 = !{ptr @dw2104_frontend_attach._entry_ptr.124, !258, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.125, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1233, i32 3}
!265 = !{ptr @.str.126, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @.str.128, !264, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @dw2104_frontend_attach._entry.127, !264, !"_entry", i1 false, i1 false}
!268 = !{ptr @dw2104_frontend_attach._entry_ptr.129, !264, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.131, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1236, i32 3}
!271 = !{ptr @dw2104_frontend_attach._entry.130, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @dw2104_frontend_attach._entry_ptr.132, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @dw2104a_stv0900_config, !274, !"dw2104a_stv0900_config", i1 false, i1 false}
!274 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1097, i32 30}
!275 = !{ptr @dw2104a_stb6100_config, !276, !"dw2104a_stb6100_config", i1 false, i1 false}
!276 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1108, i32 30}
!277 = !{ptr @.str.133, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/dvb-frontends/stb6100_proc.h", i32 52, i32 4}
!279 = !{ptr @.str.134, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.135, !278, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @stb6100_set_freq._entry, !278, !"_entry", i1 false, i1 false}
!282 = !{ptr @stb6100_set_freq._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.136, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/dvb-frontends/stb6100_proc.h", i32 23, i32 4}
!285 = !{ptr @stb6100_get_freq._entry, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @stb6100_get_freq._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.137, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/dvb-frontends/stb6100_proc.h", i32 105, i32 4}
!289 = !{ptr @.str.138, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @stb6100_set_bandw._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @stb6100_set_bandw._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.139, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/dvb-frontends/stb6100_proc.h", i32 76, i32 4}
!294 = !{ptr @stb6100_get_bandw._entry, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @stb6100_get_bandw._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @dw2104_stv0900_config, !297, !"dw2104_stv0900_config", i1 false, i1 false}
!297 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1113, i32 30}
!298 = !{ptr @dw2104_stv6110_config, !299, !"dw2104_stv6110_config", i1 false, i1 false}
!299 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1124, i32 30}
!300 = !{ptr @dw2104_config, !301, !"dw2104_config", i1 false, i1 false}
!301 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1055, i32 30}
!302 = !{ptr @dw2104_ds3000_config, !303, !"dw2104_ds3000_config", i1 false, i1 false}
!303 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1075, i32 29}
!304 = !{ptr @dw2104_ts2020_config, !305, !"dw2104_ts2020_config", i1 false, i1 false}
!305 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1079, i32 29}
!306 = !{ptr @dw2104_i2c_algo, !307, !"dw2104_i2c_algo", i1 false, i1 false}
!307 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 804, i32 29}
!308 = !{ptr @.str.141, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 408, i32 6}
!310 = !{ptr @dw2104_i2c_transfer._entry, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @dw2104_i2c_transfer._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @dw2104_i2c_transfer._entry.142, !313, !"_entry", i1 false, i1 false}
!313 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 445, i32 6}
!314 = !{ptr @dw2104_i2c_transfer._entry_ptr.143, !313, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.144, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2061, i32 14}
!317 = !{ptr @.str.145, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2099, i32 5}
!319 = !{ptr @dw3101_properties, !320, !"dw3101_properties", i1 false, i1 false}
!320 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2058, i32 41}
!321 = !{ptr @.str.147, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1288, i32 21}
!323 = !{ptr @.str.148, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.149, !322, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.150, !322, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @dw3101_frontend_attach._entry, !322, !"_entry", i1 false, i1 false}
!327 = !{ptr @dw3101_frontend_attach._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.152, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1291, i32 3}
!330 = !{ptr @dw3101_frontend_attach._entry.151, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @dw3101_frontend_attach._entry_ptr.153, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @dw3101_tda10023_config, !333, !"dw3101_tda10023_config", i1 false, i1 false}
!333 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1066, i32 31}
!334 = !{ptr @.str.154, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1690, i32 2}
!336 = !{ptr @dw3101_tuner_attach._entry, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @dw3101_tuner_attach._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @dw3101_i2c_algo, !339, !"dw3101_i2c_algo", i1 false, i1 false}
!339 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 809, i32 29}
!340 = !{ptr @.str.155, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 489, i32 4}
!342 = !{ptr @dw3101_i2c_transfer._entry, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @dw3101_i2c_transfer._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @dw3101_i2c_transfer._entry.156, !345, !"_entry", i1 false, i1 false}
!345 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 495, i32 4}
!346 = !{ptr @dw3101_i2c_transfer._entry_ptr.157, !345, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @dw3101_i2c_transfer._entry.158, !348, !"_entry", i1 false, i1 false}
!348 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 520, i32 5}
!349 = !{ptr @dw3101_i2c_transfer._entry_ptr.159, !348, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.161, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 545, i32 3}
!352 = !{ptr @dw3101_i2c_transfer._entry.160, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @dw3101_i2c_transfer._entry_ptr.162, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.163, !351, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.164, !351, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @dw3101_i2c_transfer._entry.165, !357, !"_entry", i1 false, i1 false}
!357 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 547, i32 3}
!358 = !{ptr @dw3101_i2c_transfer._entry_ptr.166, !357, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @dw3101_i2c_transfer._entry.167, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @dw3101_i2c_transfer._entry_ptr.168, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.169, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2110, i32 14}
!363 = !{ptr @.str.170, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2146, i32 4}
!365 = !{ptr @s6x0_properties, !366, !"s6x0_properties", i1 false, i1 false}
!366 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2106, i32 41}
!367 = !{ptr @.str.172, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1299, i32 21}
!369 = !{ptr @.str.173, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.174, !368, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.175, !368, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @zl100313_frontend_attach._entry, !368, !"_entry", i1 false, i1 false}
!373 = !{ptr @zl100313_frontend_attach._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.176, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1302, i32 7}
!376 = !{ptr @.str.177, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @.str.179, !375, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @zl100313_frontend_attach._entry.178, !375, !"_entry", i1 false, i1 false}
!379 = !{ptr @zl100313_frontend_attach._entry_ptr.180, !375, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.182, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1305, i32 4}
!382 = !{ptr @zl100313_frontend_attach._entry.181, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @zl100313_frontend_attach._entry_ptr.183, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @zl313_config, !385, !"zl313_config", i1 false, i1 false}
!385 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1071, i32 28}
!386 = !{ptr @.str.184, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 871, i32 4}
!388 = !{ptr @s6x0_read_mac_address._entry, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @s6x0_read_mac_address._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @s6x0_read_mac_address._entry.185, !391, !"_entry", i1 false, i1 false}
!391 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 879, i32 4}
!392 = !{ptr @s6x0_read_mac_address._entry_ptr.186, !391, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @s6x0_read_mac_address._entry.187, !394, !"_entry", i1 false, i1 false}
!394 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 880, i32 4}
!395 = !{ptr @s6x0_read_mac_address._entry_ptr.188, !394, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @s6x0_read_mac_address._entry.189, !394, !"_entry", i1 false, i1 false}
!397 = !{ptr @s6x0_read_mac_address._entry_ptr.190, !394, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.191, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 611, i32 6}
!400 = !{ptr @s6x0_i2c_transfer._entry, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @s6x0_i2c_transfer._entry_ptr, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @s6x0_i2c_transfer._entry.192, !403, !"_entry", i1 false, i1 false}
!403 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 646, i32 6}
!404 = !{ptr @s6x0_i2c_transfer._entry_ptr.193, !403, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @s6x0_i2c_transfer._entry.194, !406, !"_entry", i1 false, i1 false}
!406 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 666, i32 6}
!407 = !{ptr @s6x0_i2c_transfer._entry_ptr.195, !406, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @s6x0_i2c_algo, !409, !"s6x0_i2c_algo", i1 false, i1 false}
!409 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 814, i32 29}
!410 = !{ptr @.str.196, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2157, i32 14}
!412 = !{ptr @.str.197, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2163, i32 15}
!414 = !{ptr @.str.198, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2193, i32 4}
!416 = !{ptr @p1100_properties, !417, !"p1100_properties", i1 false, i1 false}
!417 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2153, i32 41}
!418 = !{ptr @.str.200, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1317, i32 21}
!420 = !{ptr @stv0288_frontend_attach._entry, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @stv0288_frontend_attach._entry_ptr, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @stv0288_frontend_attach._entry.201, !423, !"_entry", i1 false, i1 false}
!423 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1323, i32 14}
!424 = !{ptr @stv0288_frontend_attach._entry_ptr.202, !423, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.204, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1330, i32 2}
!427 = !{ptr @stv0288_frontend_attach._entry.203, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @stv0288_frontend_attach._entry_ptr.205, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.206, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1729, i32 4}
!431 = !{ptr @prof_rc_query._entry, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @prof_rc_query._entry_ptr, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.207, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2204, i32 14}
!435 = !{ptr @.str.208, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2240, i32 4}
!437 = !{ptr @.str.209, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2244, i32 4}
!439 = !{ptr @.str.210, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2248, i32 4}
!441 = !{ptr @s660_properties, !442, !"s660_properties", i1 false, i1 false}
!442 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2200, i32 41}
!443 = !{ptr @.str.212, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1341, i32 21}
!445 = !{ptr @ds3000_frontend_attach._entry, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @ds3000_frontend_attach._entry_ptr, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @ds3000_frontend_attach._entry.213, !448, !"_entry", i1 false, i1 false}
!448 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1347, i32 2}
!449 = !{ptr @ds3000_frontend_attach._entry_ptr.214, !448, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.216, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1355, i32 2}
!452 = !{ptr @ds3000_frontend_attach._entry.215, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @ds3000_frontend_attach._entry_ptr.217, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @s660_ds3000_config, !455, !"s660_ds3000_config", i1 false, i1 false}
!455 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1085, i32 29}
!456 = !{ptr @dw210x_led_ctrl.led_off, !457, !"led_off", i1 false, i1 false}
!457 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1009, i32 12}
!458 = !{ptr @dw210x_led_ctrl.led_on, !459, !"led_on", i1 false, i1 false}
!459 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1010, i32 12}
!460 = !{ptr @s660_ts2020_config, !461, !"s660_ts2020_config", i1 false, i1 false}
!461 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1091, i32 29}
!462 = !{ptr @.str.219, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2259, i32 14}
!464 = !{ptr @.str.220, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2295, i32 4}
!466 = !{ptr @p7500_properties, !467, !"p7500_properties", i1 false, i1 false}
!467 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2255, i32 41}
!468 = !{ptr @.str.222, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1364, i32 21}
!470 = !{ptr @prof_7500_frontend_attach._entry, !469, !"_entry", i1 false, i1 false}
!471 = !{ptr @prof_7500_frontend_attach._entry_ptr, !469, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.224, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1373, i32 2}
!474 = !{ptr @prof_7500_frontend_attach._entry.223, !473, !"_entry", i1 false, i1 false}
!475 = !{ptr @prof_7500_frontend_attach._entry_ptr.225, !473, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @prof_7500_stv0900_config, !477, !"prof_7500_stv0900_config", i1 false, i1 false}
!477 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1130, i32 30}
!478 = !{ptr @.str.226, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2394, i32 15}
!480 = !{ptr @.str.227, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2425, i32 5}
!482 = !{ptr @.str.228, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2429, i32 5}
!484 = !{ptr @s421_properties, !485, !"s421_properties", i1 false, i1 false}
!485 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2383, i32 41}
!486 = !{ptr @su3000_streaming_ctrl.command_start, !487, !"command_start", i1 false, i1 false}
!487 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 890, i32 12}
!488 = !{ptr @su3000_streaming_ctrl.command_stop, !489, !"command_stop", i1 false, i1 false}
!489 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 891, i32 12}
!490 = !{ptr @.str.230, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1505, i32 3}
!492 = !{ptr @.str.231, !491, !"<string literal>", i1 false, i1 false}
!493 = !{ptr @m88rs2000_frontend_attach._entry, !491, !"_entry", i1 false, i1 false}
!494 = !{ptr @m88rs2000_frontend_attach._entry_ptr, !491, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.232, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1509, i32 24}
!497 = !{ptr @.str.233, !496, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @.str.235, !496, !"<string literal>", i1 false, i1 false}
!499 = !{ptr @m88rs2000_frontend_attach._entry.234, !496, !"_entry", i1 false, i1 false}
!500 = !{ptr @m88rs2000_frontend_attach._entry_ptr.236, !496, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @m88rs2000_frontend_attach._entry.237, !502, !"_entry", i1 false, i1 false}
!502 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1516, i32 6}
!503 = !{ptr @m88rs2000_frontend_attach._entry_ptr.238, !502, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.240, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1519, i32 3}
!506 = !{ptr @m88rs2000_frontend_attach._entry.239, !505, !"_entry", i1 false, i1 false}
!507 = !{ptr @m88rs2000_frontend_attach._entry_ptr.241, !505, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.243, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1523, i32 2}
!510 = !{ptr @m88rs2000_frontend_attach._entry.242, !509, !"_entry", i1 false, i1 false}
!511 = !{ptr @m88rs2000_frontend_attach._entry_ptr.244, !509, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @s421_m88rs2000_config, !513, !"s421_m88rs2000_config", i1 false, i1 false}
!513 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1178, i32 32}
!514 = !{ptr @m88rs2000_inittab, !515, !"m88rs2000_inittab", i1 false, i1 false}
!515 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1160, i32 11}
!516 = !{ptr @.str.245, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 909, i32 2}
!518 = !{ptr @.str.246, !517, !"<string literal>", i1 false, i1 false}
!519 = !{ptr @su3000_power_ctrl._entry, !517, !"_entry", i1 false, i1 false}
!520 = !{ptr @su3000_power_ctrl._entry_ptr, !517, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.247, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 962, i32 2}
!523 = !{ptr @.str.248, !522, !"<string literal>", i1 false, i1 false}
!524 = !{ptr @su3000_identify_state._entry, !522, !"_entry", i1 false, i1 false}
!525 = !{ptr @su3000_identify_state._entry_ptr, !522, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @.str.249, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1751, i32 4}
!528 = !{ptr @su3000_rc_query._entry, !527, !"_entry", i1 false, i1 false}
!529 = !{ptr @su3000_rc_query._entry_ptr, !527, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @su3000_i2c_algo, !531, !"su3000_i2c_algo", i1 false, i1 false}
!531 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 819, i32 29}
!532 = !{ptr @.str.250, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 717, i32 5}
!534 = !{ptr @.str.251, !533, !"<string literal>", i1 false, i1 false}
!535 = !{ptr @su3000_i2c_transfer._entry, !533, !"_entry", i1 false, i1 false}
!536 = !{ptr @su3000_i2c_transfer._entry_ptr, !533, !"_entry_ptr", i1 false, i1 false}
!537 = !{ptr @su3000_i2c_transfer._entry.252, !538, !"_entry", i1 false, i1 false}
!538 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 723, i32 5}
!539 = !{ptr @su3000_i2c_transfer._entry_ptr.253, !538, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @su3000_i2c_transfer._entry.254, !541, !"_entry", i1 false, i1 false}
!541 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 729, i32 5}
!542 = !{ptr @su3000_i2c_transfer._entry_ptr.255, !541, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @su3000_i2c_transfer._entry.256, !544, !"_entry", i1 false, i1 false}
!544 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 744, i32 5}
!545 = !{ptr @su3000_i2c_transfer._entry_ptr.257, !544, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @su3000_i2c_transfer._entry.258, !547, !"_entry", i1 false, i1 false}
!547 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 751, i32 4}
!548 = !{ptr @su3000_i2c_transfer._entry_ptr.259, !547, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @su3000_i2c_transfer._entry.260, !550, !"_entry", i1 false, i1 false}
!550 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 757, i32 4}
!551 = !{ptr @su3000_i2c_transfer._entry_ptr.261, !550, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @su3000_i2c_transfer._entry.262, !553, !"_entry", i1 false, i1 false}
!553 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 771, i32 4}
!554 = !{ptr @su3000_i2c_transfer._entry_ptr.263, !553, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @.str.265, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 776, i32 3}
!557 = !{ptr @su3000_i2c_transfer._entry.264, !556, !"_entry", i1 false, i1 false}
!558 = !{ptr @su3000_i2c_transfer._entry_ptr.266, !556, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @.str.267, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2344, i32 5}
!561 = !{ptr @.str.268, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2348, i32 5}
!563 = !{ptr @.str.269, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2352, i32 5}
!565 = !{ptr @.str.270, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2356, i32 5}
!567 = !{ptr @.str.271, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2360, i32 5}
!569 = !{ptr @.str.272, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2364, i32 5}
!571 = !{ptr @.str.273, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2368, i32 5}
!573 = !{ptr @.str.274, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2372, i32 5}
!575 = !{ptr @.str.275, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2376, i32 5}
!577 = !{ptr @su3000_properties, !578, !"su3000_properties", i1 false, i1 false}
!578 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2302, i32 41}
!579 = !{ptr @.str.277, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1390, i32 3}
!581 = !{ptr @.str.278, !580, !"<string literal>", i1 false, i1 false}
!582 = !{ptr @su3000_frontend_attach._entry, !580, !"_entry", i1 false, i1 false}
!583 = !{ptr @su3000_frontend_attach._entry_ptr, !580, !"_entry_ptr", i1 false, i1 false}
!584 = !{ptr @su3000_frontend_attach._entry.279, !585, !"_entry", i1 false, i1 false}
!585 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1397, i32 3}
!586 = !{ptr @su3000_frontend_attach._entry_ptr.280, !585, !"_entry_ptr", i1 false, i1 false}
!587 = !{ptr @su3000_frontend_attach._entry.281, !588, !"_entry", i1 false, i1 false}
!588 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1405, i32 3}
!589 = !{ptr @su3000_frontend_attach._entry_ptr.282, !588, !"_entry_ptr", i1 false, i1 false}
!590 = !{ptr @su3000_frontend_attach._entry.283, !591, !"_entry", i1 false, i1 false}
!591 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1412, i32 3}
!592 = !{ptr @su3000_frontend_attach._entry_ptr.284, !591, !"_entry_ptr", i1 false, i1 false}
!593 = !{ptr @su3000_frontend_attach._entry.285, !594, !"_entry", i1 false, i1 false}
!594 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1417, i32 3}
!595 = !{ptr @su3000_frontend_attach._entry_ptr.286, !594, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @su3000_frontend_attach._entry.287, !597, !"_entry", i1 false, i1 false}
!597 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1421, i32 24}
!598 = !{ptr @su3000_frontend_attach._entry_ptr.288, !597, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @su3000_frontend_attach._entry.289, !600, !"_entry", i1 false, i1 false}
!600 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1426, i32 6}
!601 = !{ptr @su3000_frontend_attach._entry_ptr.290, !600, !"_entry_ptr", i1 false, i1 false}
!602 = !{ptr @.str.292, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1429, i32 3}
!604 = !{ptr @su3000_frontend_attach._entry.291, !603, !"_entry", i1 false, i1 false}
!605 = !{ptr @su3000_frontend_attach._entry_ptr.293, !603, !"_entry_ptr", i1 false, i1 false}
!606 = !{ptr @.str.295, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1433, i32 2}
!608 = !{ptr @su3000_frontend_attach._entry.294, !607, !"_entry", i1 false, i1 false}
!609 = !{ptr @su3000_frontend_attach._entry_ptr.296, !607, !"_entry_ptr", i1 false, i1 false}
!610 = !{ptr @su3000_ds3000_config, !611, !"su3000_ds3000_config", i1 false, i1 false}
!611 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1143, i32 29}
!612 = !{ptr @.str.297, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2478, i32 5}
!614 = !{ptr @t220_properties, !615, !"t220_properties", i1 false, i1 false}
!615 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2436, i32 41}
!616 = !{ptr @.str.299, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1449, i32 3}
!618 = !{ptr @t220_frontend_attach._entry, !617, !"_entry", i1 false, i1 false}
!619 = !{ptr @t220_frontend_attach._entry_ptr, !617, !"_entry_ptr", i1 false, i1 false}
!620 = !{ptr @t220_frontend_attach._entry.300, !621, !"_entry", i1 false, i1 false}
!621 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1456, i32 3}
!622 = !{ptr @t220_frontend_attach._entry_ptr.301, !621, !"_entry_ptr", i1 false, i1 false}
!623 = !{ptr @t220_frontend_attach._entry.302, !624, !"_entry", i1 false, i1 false}
!624 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1463, i32 3}
!625 = !{ptr @t220_frontend_attach._entry_ptr.303, !624, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @t220_frontend_attach._entry.304, !627, !"_entry", i1 false, i1 false}
!627 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1472, i32 3}
!628 = !{ptr @t220_frontend_attach._entry_ptr.305, !627, !"_entry_ptr", i1 false, i1 false}
!629 = !{ptr @t220_frontend_attach._entry.306, !630, !"_entry", i1 false, i1 false}
!630 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1477, i32 3}
!631 = !{ptr @t220_frontend_attach._entry_ptr.307, !630, !"_entry_ptr", i1 false, i1 false}
!632 = !{ptr @.str.308, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1481, i32 24}
!634 = !{ptr @.str.309, !633, !"<string literal>", i1 false, i1 false}
!635 = !{ptr @.str.311, !633, !"<string literal>", i1 false, i1 false}
!636 = !{ptr @t220_frontend_attach._entry.310, !633, !"_entry", i1 false, i1 false}
!637 = !{ptr @t220_frontend_attach._entry_ptr.312, !633, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @.str.313, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1484, i32 7}
!640 = !{ptr @.str.314, !639, !"<string literal>", i1 false, i1 false}
!641 = !{ptr @.str.316, !639, !"<string literal>", i1 false, i1 false}
!642 = !{ptr @t220_frontend_attach._entry.315, !639, !"_entry", i1 false, i1 false}
!643 = !{ptr @t220_frontend_attach._entry_ptr.317, !639, !"_entry_ptr", i1 false, i1 false}
!644 = !{ptr @.str.319, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1486, i32 4}
!646 = !{ptr @t220_frontend_attach._entry.318, !645, !"_entry", i1 false, i1 false}
!647 = !{ptr @t220_frontend_attach._entry_ptr.320, !645, !"_entry_ptr", i1 false, i1 false}
!648 = !{ptr @.str.322, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1491, i32 2}
!650 = !{ptr @t220_frontend_attach._entry.321, !649, !"_entry", i1 false, i1 false}
!651 = !{ptr @t220_frontend_attach._entry_ptr.323, !649, !"_entry_ptr", i1 false, i1 false}
!652 = !{ptr @cxd2820r_config, !653, !"cxd2820r_config", i1 false, i1 false}
!653 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1149, i32 31}
!654 = !{ptr @tda18271_config, !655, !"tda18271_config", i1 false, i1 false}
!655 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1155, i32 31}
!656 = !{ptr @.str.324, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2496, i32 15}
!658 = !{ptr @.str.325, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2527, i32 5}
!660 = !{ptr @.str.326, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2531, i32 5}
!662 = !{ptr @.str.327, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2535, i32 5}
!664 = !{ptr @.str.328, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2539, i32 5}
!666 = !{ptr @.str.329, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2543, i32 5}
!668 = !{ptr @tt_s2_4600_properties, !669, !"tt_s2_4600_properties", i1 false, i1 false}
!669 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 2485, i32 41}
!670 = !{ptr @.str.331, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1568, i32 3}
!672 = !{ptr @tt_s2_4600_frontend_attach._entry, !671, !"_entry", i1 false, i1 false}
!673 = !{ptr @tt_s2_4600_frontend_attach._entry_ptr, !671, !"_entry_ptr", i1 false, i1 false}
!674 = !{ptr @tt_s2_4600_frontend_attach._entry.332, !675, !"_entry", i1 false, i1 false}
!675 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1575, i32 3}
!676 = !{ptr @tt_s2_4600_frontend_attach._entry_ptr.333, !675, !"_entry_ptr", i1 false, i1 false}
!677 = !{ptr @tt_s2_4600_frontend_attach._entry.334, !678, !"_entry", i1 false, i1 false}
!678 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1583, i32 3}
!679 = !{ptr @tt_s2_4600_frontend_attach._entry_ptr.335, !678, !"_entry_ptr", i1 false, i1 false}
!680 = !{ptr @tt_s2_4600_frontend_attach._entry.336, !681, !"_entry", i1 false, i1 false}
!681 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1590, i32 3}
!682 = !{ptr @tt_s2_4600_frontend_attach._entry_ptr.337, !681, !"_entry_ptr", i1 false, i1 false}
!683 = !{ptr @tt_s2_4600_frontend_attach._entry.338, !684, !"_entry", i1 false, i1 false}
!684 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1595, i32 3}
!685 = !{ptr @tt_s2_4600_frontend_attach._entry_ptr.339, !684, !"_entry_ptr", i1 false, i1 false}
!686 = !{ptr @.str.341, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1609, i32 3}
!688 = !{ptr @tt_s2_4600_frontend_attach._entry.340, !687, !"_entry", i1 false, i1 false}
!689 = !{ptr @tt_s2_4600_frontend_attach._entry_ptr.342, !687, !"_entry_ptr", i1 false, i1 false}
!690 = !{ptr @.str.343, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1628, i32 28}
!692 = !{ptr @.str.344, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1630, i32 28}
!694 = !{ptr @.str.345, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1649, i32 27}
!696 = !{ptr @.str.346, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1652, i32 2}
!698 = !{ptr @.str.347, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1539, i32 3}
!700 = !{ptr @.str.348, !699, !"<string literal>", i1 false, i1 false}
!701 = !{ptr @tt_s2_4600_frontend_attach_probe_demod._entry, !699, !"_entry", i1 false, i1 false}
!702 = !{ptr @tt_s2_4600_frontend_attach_probe_demod._entry_ptr, !699, !"_entry_ptr", i1 false, i1 false}
!703 = !{ptr @dw2102_table, !704, !"dw2102_table", i1 false, i1 false}
!704 = !{!"../drivers/media/usb/dvb-usb/dw2102.c", i32 1794, i32 29}
!705 = !{i32 1, !"wchar_size", i32 2}
!706 = !{i32 1, !"min_enum_size", i32 4}
!707 = !{i32 8, !"branch-target-enforcement", i32 0}
!708 = !{i32 8, !"sign-return-address", i32 0}
!709 = !{i32 8, !"sign-return-address-all", i32 0}
!710 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!711 = !{i32 7, !"uwtable", i32 1}
!712 = !{i32 7, !"frame-pointer", i32 2}
!713 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!714 = !{!"auto-init"}
