; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/lmedm04.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/lmedm04.c"
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
%struct.dvb_usb_driver_info = type { ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.126 = type { i32 }
%struct.dvb_usb_adapter_properties = type { i8, i8, ptr, ptr, %struct.usb_data_stream_properties }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.125 }
%union.anon.125 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tda10086_config = type { i8, i8, i8, i32 }
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
%struct.stv0288_config = type { i8, ptr, i32, ptr }
%struct.m88rs2000_config = type { i8, ptr, i32, ptr }
%struct.ix2505v_config = type { i8, i8, i8, i32, i8 }
%struct.dvb_usb_device = type { ptr, ptr, ptr, i8, ptr, ptr, %struct.dvb_usb_rc, i32, %struct.mutex, %struct.mutex, %struct.i2c_adapter, [2 x %struct.dvb_usb_adapter], ptr, [64 x i8], %struct.delayed_work, ptr }
%struct.dvb_usb_rc = type { ptr, i64, ptr, ptr, i32, i32, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dvb_usb_adapter = type { ptr, %struct.usb_data_stream, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i8, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dvb_usb_device_properties = type { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lme2510_state = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [128 x i8], ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.141], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.141 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.142 }>
%union.anon.142 = type { i64 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [22 x i8] c"dvb_usb_lmedm04.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_lme2510_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_lme2510_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [35 x i8] c"dvb_usb_lmedm04.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [67 x i8] c"dvb_usb_lmedm04.parm=debug:set debugging level (1=info (or-able)).\00", section ".modinfo", align 1
@__param_str_firmware = internal constant [25 x i8] c"dvb_usb_lmedm04.firmware\00", align 1
@dvb_usb_lme2510_firmware = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_firmware = internal constant %struct.kernel_param { ptr @__param_str_firmware, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_lme2510_firmware } }, section "__param", align 4
@__UNIQUE_ID_firmwaretype388 = internal constant [38 x i8] c"dvb_usb_lmedm04.parmtype=firmware:int\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware389 = internal constant [68 x i8] c"dvb_usb_lmedm04.parm=firmware:set default firmware 0=Sharp7395 1=LG\00", section ".modinfo", align 1
@__param_str_pid = internal constant [20 x i8] c"dvb_usb_lmedm04.pid\00", align 1
@pid_filter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pid = internal constant %struct.kernel_param { ptr @__param_str_pid, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @pid_filter } }, section "__param", align 4
@__UNIQUE_ID_pidtype390 = internal constant [33 x i8] c"dvb_usb_lmedm04.parmtype=pid:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pid391 = internal constant [58 x i8] c"dvb_usb_lmedm04.parm=pid:set default 0=default 1=off 2=on\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [27 x i8] c"dvb_usb_lmedm04.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype392 = internal constant [51 x i8] c"dvb_usb_lmedm04.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr393 = internal constant [52 x i8] c"dvb_usb_lmedm04.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_lmedm04__409_1252_lme2510_driver_init6 = internal global ptr @lme2510_driver_init, section ".initcall6.init", align 4
@lme2510_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @dvb_usbv2_probe, ptr @dvb_usbv2_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lme2510_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_lme2510_driver_exit = internal global ptr @lme2510_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author410 = internal constant [62 x i8] c"dvb_usb_lmedm04.author=Malcolm Priestley <tvboxspy@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description411 = internal constant [52 x i8] c"dvb_usb_lmedm04.description=LME2510(C) DVB-S USB2.0\00", section ".modinfo", align 1
@__UNIQUE_ID_version412 = internal constant [29 x i8] c"dvb_usb_lmedm04.version=2.07\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_usb_lmedm04\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.07\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file413 = internal constant [66 x i8] c"dvb_usb_lmedm04.file=drivers/media/usb/dvb-usb-v2/dvb-usb-lmedm04\00", section ".modinfo", align 1
@__UNIQUE_ID_license414 = internal constant [28 x i8] c"dvb_usb_lmedm04.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware415 = internal constant [51 x i8] c"dvb_usb_lmedm04.firmware=dvb-usb-lme2510c-s7395.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware416 = internal constant [48 x i8] c"dvb_usb_lmedm04.firmware=dvb-usb-lme2510c-lg.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware417 = internal constant [51 x i8] c"dvb_usb_lmedm04.firmware=dvb-usb-lme2510c-s0194.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware418 = internal constant [52 x i8] c"dvb_usb_lmedm04.firmware=dvb-usb-lme2510c-rs2000.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware419 = internal constant [47 x i8] c"dvb_usb_lmedm04.firmware=dvb-usb-lme2510-lg.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware420 = internal constant [50 x i8] c"dvb_usb_lmedm04.firmware=dvb-usb-lme2510-s0194.fw\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@lme2510_id_table = internal constant { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 13124, i16 4386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 3, i16 13124, i16 4384, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.usb_device_id { i16 3, i16 13124, i16 8944, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DM04_LME2510_DVB-S\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-lme2510\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.3, ptr @.str.4, ptr @lme2510_props }, [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DM04_LME2510C_DVB-S\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.5, ptr @.str.4, ptr @lme2510_props }, [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DM04_LME2510C_DVB-S RS2000\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.7, ptr @.str.4, ptr @lme2510_props }, [20 x i8] zeroinitializer }, align 32
@lme2510_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @lme2510_i2c_xfer, ptr null, ptr null, ptr null, ptr @lme2510_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@lme2510_props = internal global { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.1, ptr null, ptr @adapter_nr, i8 0, i32 248, i8 1, i8 1, i32 0, ptr null, ptr null, ptr @lme2510_identify_state, ptr null, ptr @lme2510_download_firmware, ptr @lme2510_i2c_algo, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } } { i8 3, i8 15, ptr @lme2510_pid_filter_ctrl, ptr @lme2510_pid_filter, { i8, i8, i8, { %struct.anon.126, [8 x i8] } } { i8 1, i8 10, i8 -122, { %struct.anon.126, [8 x i8] } { %struct.anon.126 { i32 4096 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @lme2510_powerup, ptr null, ptr null, ptr @dm04_lme2510_frontend_attach, ptr null, ptr @dm04_lme2510_tuner, ptr null, ptr null, ptr @lme2510_streaming_ctrl, ptr null, ptr @lme2510_exit, ptr @lme2510_get_rc_config, ptr @lme2510_get_stream_config }, [56 x i8] zeroinitializer }, align 32
@lme2510_return_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016LME2510(C): Firmware Status: %6ph\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lme2510_return_status\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/usb/dvb-usb-v2/lmedm04.c\00", [57 x i8] zeroinitializer }, align 32
@lme2510_return_status._entry_ptr = internal global ptr @lme2510_return_status._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fw_s0194 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dvb-usb-lme2510-s0194.fw\00", [39 x i8] zeroinitializer }, align 32
@fw_lg = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb-usb-lme2510-lg.fw\00", [42 x i8] zeroinitializer }, align 32
@fw_c_s7395 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dvb-usb-lme2510c-s7395.fw\00", [38 x i8] zeroinitializer }, align 32
@fw_c_lg = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-usb-lme2510c-lg.fw\00", [41 x i8] zeroinitializer }, align 32
@fw_c_s0194 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dvb-usb-lme2510c-s0194.fw\00", [38 x i8] zeroinitializer }, align 32
@fw_c_rs2000 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb-usb-lme2510c-rs2000.fw\00", [37 x i8] zeroinitializer }, align 32
@lme_firmware_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.12, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016LME2510(C): FRM Changing to %s firmware\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lme_firmware_switch\00", [44 x i8] zeroinitializer }, align 32
@lme_firmware_switch._entry_ptr = internal global ptr @lme_firmware_switch._entry, section ".printk_index", align 4
@lme_coldreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.12, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016LME2510(C): FRM Firmware Cold Reset\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lme_coldreset\00", [18 x i8] zeroinitializer }, align 32
@lme_coldreset._entry_ptr = internal global ptr @lme_coldreset._entry, section ".printk_index", align 4
@lme2510_download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.12, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016LME2510(C): FRM Could not start Firmware Download(Buffer allocation failed)\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lme2510_download_firmware\00", [38 x i8] zeroinitializer }, align 32
@lme2510_download_firmware._entry_ptr = internal global ptr @lme2510_download_firmware._entry, section ".printk_index", align 4
@lme2510_download_firmware._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.12, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016LME2510(C): FRM Starting Firmware Download\00", [51 x i8] zeroinitializer }, align 32
@lme2510_download_firmware._entry_ptr.21 = internal global ptr @lme2510_download_firmware._entry.19, section ".printk_index", align 4
@lme2510_download_firmware.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.12, ptr @.str.22, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"LME2510(C): Data S=%02x:E=%02x CS= %02x\00", [56 x i8] zeroinitializer }, align 32
@lme2510_download_firmware._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.12, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016LME2510(C): FRM Firmware Download Failed (%04x)\00", [46 x i8] zeroinitializer }, align 32
@lme2510_download_firmware._entry_ptr.25 = internal global ptr @lme2510_download_firmware._entry.23, section ".printk_index", align 4
@lme2510_download_firmware._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.12, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016LME2510(C): FRM Firmware Download Completed - Resetting Device\00", [63 x i8] zeroinitializer }, align 32
@lme2510_download_firmware._entry_ptr.28 = internal global ptr @lme2510_download_firmware._entry.26, section ".printk_index", align 4
@lme2510_i2c_xfer.obuf = internal global { [64 x i8], [32 x i8] } zeroinitializer, align 32
@lme2510_i2c_xfer.ibuf = internal global { [64 x i8], [32 x i8] } zeroinitializer, align 32
@lme2510_i2c_xfer.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.12, ptr @.str.30, i8 0, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lme2510_i2c_xfer\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LME2510(C): i2c transfer failed.\00", [63 x i8] zeroinitializer }, align 32
@lme2510_pid_filter_ctrl.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.12, ptr @.str.32, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lme2510_pid_filter_ctrl\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"LME2510(C): PID Clearing Filter\00", [32 x i8] zeroinitializer }, align 32
@lme2510_pid_filter.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.12, ptr @.str.34, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lme2510_pid_filter\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"LME2510(C): %s PID=%04x Index=%04x onoff=%02x\00", [50 x i8] zeroinitializer }, align 32
@lme2510_enable_pid.pid_buff = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\03\06\00\00\01\00 \9C", [24 x i8] zeroinitializer }, align 32
@lme2510_enable_pid.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.12, ptr @.str.36, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lme2510_enable_pid\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LME2510(C): PID Setting Pid %04x\00", [63 x i8] zeroinitializer }, align 32
@lme2510_powerup.lnb_on = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c":\01\00", [29 x i8] zeroinitializer }, align 32
@lme2510_powerup.lnb_off = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c":\01\01", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10086_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10086_attach\00", [41 x i8] zeroinitializer }, align 32
@tda10086_config = internal global { %struct.tda10086_config, [24 x i8] } { %struct.tda10086_config { i8 14, i8 0, i8 1, i32 0 }, [24 x i8] zeroinitializer }, align 32
@dm04_lme2510_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.12, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10086_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dm04_lme2510_frontend_attach\00", [35 x i8] zeroinitializer }, align 32
@dm04_lme2510_frontend_attach._entry_ptr = internal global ptr @dm04_lme2510_frontend_attach._entry, section ".printk_index", align 4
@dm04_lme2510_frontend_attach._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.12, i32 967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016LME2510(C): TUN Found Frontend TDA10086\00", [54 x i8] zeroinitializer }, align 32
@dm04_lme2510_frontend_attach._entry_ptr.43 = internal global ptr @dm04_lme2510_frontend_attach._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0299_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0299_attach\00", [42 x i8] zeroinitializer }, align 32
@sharp_z0194_config = internal global { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @sharp_z0194a_inittab, i32 88000000, i8 24, i32 100, ptr @sharp_z0194a_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@dm04_lme2510_frontend_attach._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.40, ptr @.str.12, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0299_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dm04_lme2510_frontend_attach._entry_ptr.48 = internal global ptr @dm04_lme2510_frontend_attach._entry.46, section ".printk_index", align 4
@dm04_lme2510_frontend_attach._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.40, ptr @.str.12, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016LME2510(C): FE Found Stv0299\00", [33 x i8] zeroinitializer }, align 32
@dm04_lme2510_frontend_attach._entry_ptr.51 = internal global ptr @dm04_lme2510_frontend_attach._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0288_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0288_attach\00", [42 x i8] zeroinitializer }, align 32
@lme_config = internal global { %struct.stv0288_config, [16 x i8] } { %struct.stv0288_config { i8 104, ptr @s7395_inittab, i32 15, ptr null }, [16 x i8] zeroinitializer }, align 32
@dm04_lme2510_frontend_attach._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.40, ptr @.str.12, i32 997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0288_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dm04_lme2510_frontend_attach._entry_ptr.56 = internal global ptr @dm04_lme2510_frontend_attach._entry.54, section ".printk_index", align 4
@dm04_lme2510_frontend_attach._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.40, ptr @.str.12, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016LME2510(C): FE Found Stv0288\00", [33 x i8] zeroinitializer }, align 32
@dm04_lme2510_frontend_attach._entry_ptr.59 = internal global ptr @dm04_lme2510_frontend_attach._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m88rs2000_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"symbol:m88rs2000_attach\00", [40 x i8] zeroinitializer }, align 32
@m88rs2000_config = internal global { %struct.m88rs2000_config, [16 x i8] } { %struct.m88rs2000_config { i8 104, ptr null, i32 0, ptr null }, [16 x i8] zeroinitializer }, align 32
@dm04_lme2510_frontend_attach._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.40, ptr @.str.12, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013DVB: Unable to find symbol m88rs2000_attach()\0A\00", [47 x i8] zeroinitializer }, align 32
@dm04_lme2510_frontend_attach._entry_ptr.64 = internal global ptr @dm04_lme2510_frontend_attach._entry.62, section ".printk_index", align 4
@dm04_lme2510_frontend_attach._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.40, ptr @.str.12, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016LME2510(C): FE Found M88RS2000\00", [63 x i8] zeroinitializer }, align 32
@dm04_lme2510_frontend_attach._entry_ptr.67 = internal global ptr @dm04_lme2510_frontend_attach._entry.65, section ".printk_index", align 4
@dm04_lme2510_frontend_attach._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.40, ptr @.str.12, i32 1030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016LME2510(C): DM04/QQBOX Not Powered up or not Supported\00", [39 x i8] zeroinitializer }, align 32
@dm04_lme2510_frontend_attach._entry_ptr.70 = internal global ptr @dm04_lme2510_frontend_attach._entry.68, section ".printk_index", align 4
@sharp_z0194a_inittab = internal global { [78 x i8], [50 x i8] } { [78 x i8] c"\01\15\020\03\00\04}\055\06@\07\00\08@\09\00\0CQ\0D\82\0E#\10?\11\84\12\B9\15\C9\16\00\17\00\18\00\19\00\1A\00\1FP \00!\00\22\00#\00(\00)\1E*\14+\0F,\09-\05.\011\1F2\193\FC4\93\0FR\FF\FF", [50 x i8] zeroinitializer }, align 32
@s7395_inittab = internal global { [222 x i8], [34 x i8] } { [222 x i8] c"\01\15\02 \03\A0\04\A0\05\12\06\00\09\00\0A\04\0B\00\0C\00\0D\00\0E\C1\0FT\11z\12\03\13H\14\84\15\C5\16\B8\17\9C\18\00\19\A6\1A\88\1B\8F\1C\F0 \0B!T\22\FF#\01(F)f*\90+\FA,\D90\001\1E2\143\0F4\095\0C6\057/8\169\BD:\00;\13<\11=0@cA\04B C\00D\00E\00F\00G\00J\00P\10Q6R!S\94T\B2U)VdW+XTY\86Z\00[\9B\\\08]\7F^\FF_\8Dp\00q\00r\00t\00u\00v\00\81\00\82?\83?\84\00\85\00\88\00\89\00\8A\00\8B\00\8C\00\90\00\91\00\92\00\93\00\94\1C\97\00\A0H\A1\00\B0\B8\B1:\B2\10\B3\82\B4\80\B5\82\B6\82\B7\82\B8 \B9\00\F0\00\F1\00\F2\C0\FF\FF", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dm04_lme2510_set_voltage.voltage_low = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\07\01\00", [29 x i8] zeroinitializer }, align 32
@dm04_lme2510_set_voltage.voltage_high = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\07\01\01", [29 x i8] zeroinitializer }, align 32
@lme_name.fe_name = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" LG TDQY-P001F\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" SHARP:BS2F7HZ7395\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" SHARP:BS2F7HZ0194\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" RS2000\00", [24 x i8] zeroinitializer }, align 32
@dm04_lme2510_tuner.tun_msg = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.71, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TDA8263\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IX2505V\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DVB_PLL_OPERA\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RS2000\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda826x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda826x_attach\00", [42 x i8] zeroinitializer }, align 32
@dm04_lme2510_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.12, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda826x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dm04_lme2510_tuner\00", [45 x i8] zeroinitializer }, align 32
@dm04_lme2510_tuner._entry_ptr = internal global ptr @dm04_lme2510_tuner._entry, section ".printk_index", align 4
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ix2505v_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:ix2505v_attach\00", [42 x i8] zeroinitializer }, align 32
@lme_tuner = internal global { %struct.ix2505v_config, [20 x i8] } { %struct.ix2505v_config { i8 96, i8 0, i8 3, i32 100, i8 0 }, [20 x i8] zeroinitializer }, align 32
@dm04_lme2510_tuner._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.83, ptr @.str.12, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol ix2505v_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dm04_lme2510_tuner._entry_ptr.88 = internal global ptr @dm04_lme2510_tuner._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@dm04_lme2510_tuner._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.83, ptr @.str.12, i32 1080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dm04_lme2510_tuner._entry_ptr.93 = internal global ptr @dm04_lme2510_tuner._entry.91, section ".printk_index", align 4
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ts2020_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:ts2020_attach\00", [43 x i8] zeroinitializer }, align 32
@dm04_lme2510_tuner._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.83, ptr @.str.12, i32 1085, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol ts2020_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dm04_lme2510_tuner._entry_ptr.98 = internal global ptr @dm04_lme2510_tuner._entry.96, section ".printk_index", align 4
@dm04_lme2510_tuner._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.83, ptr @.str.12, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016LME2510(C): TUN Found %s tuner\00", [63 x i8] zeroinitializer }, align 32
@dm04_lme2510_tuner._entry_ptr.101 = internal global ptr @dm04_lme2510_tuner._entry.99, section ".printk_index", align 4
@dm04_lme2510_tuner._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.83, ptr @.str.12, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016LME2510(C): TUN No tuner found\00", [63 x i8] zeroinitializer }, align 32
@dm04_lme2510_tuner._entry_ptr.104 = internal global ptr @dm04_lme2510_tuner._entry.102, section ".printk_index", align 4
@dm04_lme2510_tuner._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.83, ptr @.str.12, i32 1102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016LME2510(C): INT Unable to start Interrupt Service\00", [44 x i8] zeroinitializer }, align 32
@dm04_lme2510_tuner._entry_ptr.107 = internal global ptr @dm04_lme2510_tuner._entry.105, section ".printk_index", align 4
@ts2020_config = internal global { { i8, i32, i8, i8, ptr, i8, ptr }, [40 x i8] } { { i8, i32, i8, i8, ptr, i8, ptr } { i8 96, i32 0, i8 7, i8 -128, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@lme2510_int_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.12, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016LME2510(C): INT Interrupt Service Started\00", [52 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lme2510_int_read\00", [47 x i8] zeroinitializer }, align 32
@lme2510_int_read._entry_ptr = internal global ptr @lme2510_int_read._entry, section ".printk_index", align 4
@lme2510_int_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.12, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016LME2510(C): Error %x\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lme2510_int_response\00", [43 x i8] zeroinitializer }, align 32
@lme2510_int_response._entry_ptr = internal global ptr @lme2510_int_response._entry, section ".printk_index", align 4
@lme2510_int_response.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.112, ptr @.str.12, ptr @.str.113, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"LME2510(C): INT O/S C =%02x C/O=%02x Type =%02x%02x\00", [44 x i8] zeroinitializer }, align 32
@lme2510_int_response.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.112, ptr @.str.12, ptr @.str.114, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"LME2510(C): INT Remote data snippet (%8phN)\00", [52 x i8] zeroinitializer }, align 32
@lme2510_int_response.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.112, ptr @.str.12, ptr @.str.115, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LME2510(C): INT Key = 0x%08x\00", [35 x i8] zeroinitializer }, align 32
@lme2510_int_response.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.112, ptr @.str.12, ptr @.str.116, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"LME2510(C): INT Remote data snippet in (%8phN)\00", [49 x i8] zeroinitializer }, align 32
@lme2510_int_response.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.112, ptr @.str.12, ptr @.str.117, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"LME2510(C): INT Control data snippet (%8phN)\00", [51 x i8] zeroinitializer }, align 32
@lme2510_int_response.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.112, ptr @.str.12, ptr @.str.118, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"LME2510(C): INT Unknown data snippet (%8phN)\00", [51 x i8] zeroinitializer }, align 32
@lme2510_streaming_ctrl.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.119, ptr @.str.12, ptr @.str.120, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lme2510_streaming_ctrl\00", [41 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LME2510(C): STM  (%02x)\00", [40 x i8] zeroinitializer }, align 32
@lme2510_streaming_ctrl.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.119, ptr @.str.12, ptr @.str.121, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LME2510(C): STM Steam Off\00", [38 x i8] zeroinitializer }, align 32
@lme2510_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.12, i32 1190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016LME2510(C): Interrupt Service Stopped\00", [56 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lme2510_exit\00", [19 x i8] zeroinitializer }, align 32
@lme2510_exit._entry_ptr = internal global ptr @lme2510_exit._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 68, i64 71]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 16, i64 4384, i64 4386, i64 8944]
@__sancov_gen_cov_switch_values.125 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 16, i64 4384, i64 4386, i64 8944]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.128 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.129 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 8, i64 170, i64 187, i64 204]
@__sancov_gen_cov_switch_values.131 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.132 = private unnamed_addr constant [22 x i8] c"dvb_usb_lme2510_debug\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 81, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant [25 x i8] c"dvb_usb_lme2510_firmware\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 94, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant [11 x i8] c"pid_filter\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 98, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"lme2510_driver\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1243, i32 26 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1256, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 103, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"lme2510_id_table\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1231, i32 35 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1232, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1234, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1236, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"lme2510_i2c_algo\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 552, i32 29 }
@___asan_gen_.177 = private unnamed_addr constant [14 x i8] c"lme2510_props\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1194, i32 41 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 469, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [9 x i8] c"fw_s0194\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 670, i32 19 }
@___asan_gen_.195 = private unnamed_addr constant [6 x i8] c"fw_lg\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 669, i32 19 }
@___asan_gen_.198 = private unnamed_addr constant [11 x i8] c"fw_c_s7395\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 665, i32 19 }
@___asan_gen_.201 = private unnamed_addr constant [8 x i8] c"fw_c_lg\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 666, i32 19 }
@___asan_gen_.204 = private unnamed_addr constant [11 x i8] c"fw_c_s0194\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 667, i32 19 }
@___asan_gen_.207 = private unnamed_addr constant [12 x i8] c"fw_c_rs2000\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 668, i32 19 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 750, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 658, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 609, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 614, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 632, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 646, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 648, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [5 x i8] c"obuf\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 490, i32 12 }
@___asan_gen_.261 = private unnamed_addr constant [5 x i8] c"ibuf\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 490, i32 22 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 528, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 411, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 438, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [9 x i8] c"pid_buff\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 183, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 188, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"lnb_on\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1112, i32 12 }
@___asan_gen_.294 = private unnamed_addr constant [8 x i8] c"lnb_off\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1113, i32 12 }
@___asan_gen_.303 = private unnamed_addr constant [16 x i8] c"tda10086_config\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 758, i32 31 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 964, i32 17 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 967, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant [19 x i8] c"sharp_z0194_config\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 778, i32 30 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 980, i32 17 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 983, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant [11 x i8] c"lme_config\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 765, i32 30 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 996, i32 17 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1000, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant [17 x i8] c"m88rs2000_config\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 790, i32 32 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1014, i32 17 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1018, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1030, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant [21 x i8] c"sharp_z0194a_inittab\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [40 x i8] c"../drivers/media/dvb-frontends/z0194a.h\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 40, i32 11 }
@___asan_gen_.393 = private unnamed_addr constant [14 x i8] c"s7395_inittab\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [42 x i8] c"../drivers/media/usb/dvb-usb-v2/lmedm04.h\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 60, i32 11 }
@___asan_gen_.396 = private unnamed_addr constant [12 x i8] c"voltage_low\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 805, i32 12 }
@___asan_gen_.399 = private unnamed_addr constant [13 x i8] c"voltage_high\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 806, i32 12 }
@___asan_gen_.402 = private unnamed_addr constant [8 x i8] c"fe_name\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 942, i32 28 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 943, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 943, i32 7 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 943, i32 25 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 944, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 944, i32 25 }
@___asan_gen_.420 = private unnamed_addr constant [8 x i8] c"tun_msg\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1064, i32 28 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1064, i32 45 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1064, i32 56 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1064, i32 67 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1064, i32 84 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1069, i32 7 }
@___asan_gen_.456 = private unnamed_addr constant [10 x i8] c"lme_tuner\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 771, i32 30 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1074, i32 7 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1079, i32 7 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1084, i32 7 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1093, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1095, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1102, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant [14 x i8] c"ts2020_config\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 794, i32 29 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 398, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 285, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 296, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 301, i32 4 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 310, i32 4 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 352, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 355, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 358, i32 4 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 566, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 572, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.561 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.562 = private constant [42 x i8] c"../drivers/media/usb/dvb-usb-v2/lmedm04.c\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.562, i32 1190, i32 3 }
@llvm.compiler.used = appending global [199 x ptr] [ptr @__UNIQUE_ID_adapter_nr393, ptr @__UNIQUE_ID_adapter_nrtype392, ptr @__UNIQUE_ID_author410, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description411, ptr @__UNIQUE_ID_file413, ptr @__UNIQUE_ID_firmware389, ptr @__UNIQUE_ID_firmware415, ptr @__UNIQUE_ID_firmware416, ptr @__UNIQUE_ID_firmware417, ptr @__UNIQUE_ID_firmware418, ptr @__UNIQUE_ID_firmware419, ptr @__UNIQUE_ID_firmware420, ptr @__UNIQUE_ID_firmwaretype388, ptr @__UNIQUE_ID_license414, ptr @__UNIQUE_ID_pid391, ptr @__UNIQUE_ID_pidtype390, ptr @__UNIQUE_ID_version412, ptr @__exitcall_lme2510_driver_exit, ptr @__initcall__kmod_dvb_usb_lmedm04__409_1252_lme2510_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @__param_firmware, ptr @__param_pid, ptr @dm04_lme2510_frontend_attach._entry, ptr @dm04_lme2510_frontend_attach._entry.41, ptr @dm04_lme2510_frontend_attach._entry.46, ptr @dm04_lme2510_frontend_attach._entry.49, ptr @dm04_lme2510_frontend_attach._entry.54, ptr @dm04_lme2510_frontend_attach._entry.57, ptr @dm04_lme2510_frontend_attach._entry.62, ptr @dm04_lme2510_frontend_attach._entry.65, ptr @dm04_lme2510_frontend_attach._entry.68, ptr @dm04_lme2510_frontend_attach._entry_ptr, ptr @dm04_lme2510_frontend_attach._entry_ptr.43, ptr @dm04_lme2510_frontend_attach._entry_ptr.48, ptr @dm04_lme2510_frontend_attach._entry_ptr.51, ptr @dm04_lme2510_frontend_attach._entry_ptr.56, ptr @dm04_lme2510_frontend_attach._entry_ptr.59, ptr @dm04_lme2510_frontend_attach._entry_ptr.64, ptr @dm04_lme2510_frontend_attach._entry_ptr.67, ptr @dm04_lme2510_frontend_attach._entry_ptr.70, ptr @dm04_lme2510_tuner._entry, ptr @dm04_lme2510_tuner._entry.102, ptr @dm04_lme2510_tuner._entry.105, ptr @dm04_lme2510_tuner._entry.86, ptr @dm04_lme2510_tuner._entry.91, ptr @dm04_lme2510_tuner._entry.96, ptr @dm04_lme2510_tuner._entry.99, ptr @dm04_lme2510_tuner._entry_ptr, ptr @dm04_lme2510_tuner._entry_ptr.101, ptr @dm04_lme2510_tuner._entry_ptr.104, ptr @dm04_lme2510_tuner._entry_ptr.107, ptr @dm04_lme2510_tuner._entry_ptr.88, ptr @dm04_lme2510_tuner._entry_ptr.93, ptr @dm04_lme2510_tuner._entry_ptr.98, ptr @lme2510_download_firmware._entry, ptr @lme2510_download_firmware._entry.19, ptr @lme2510_download_firmware._entry.23, ptr @lme2510_download_firmware._entry.26, ptr @lme2510_download_firmware._entry_ptr, ptr @lme2510_download_firmware._entry_ptr.21, ptr @lme2510_download_firmware._entry_ptr.25, ptr @lme2510_download_firmware._entry_ptr.28, ptr @lme2510_driver_exit, ptr @lme2510_exit._entry, ptr @lme2510_exit._entry_ptr, ptr @lme2510_int_read._entry, ptr @lme2510_int_read._entry_ptr, ptr @lme2510_int_response._entry, ptr @lme2510_int_response._entry_ptr, ptr @lme2510_return_status._entry, ptr @lme2510_return_status._entry_ptr, ptr @lme_coldreset._entry, ptr @lme_coldreset._entry_ptr, ptr @lme_firmware_switch._entry, ptr @lme_firmware_switch._entry_ptr, ptr @dvb_usb_lme2510_debug, ptr @dvb_usb_lme2510_firmware, ptr @pid_filter, ptr @lme2510_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @lme2510_id_table, ptr @.str.3, ptr @.str.4, ptr @.compoundliteral, ptr @.str.5, ptr @.compoundliteral.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @lme2510_i2c_algo, ptr @lme2510_props, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @fw_s0194, ptr @fw_lg, ptr @fw_c_s7395, ptr @fw_c_lg, ptr @fw_c_s0194, ptr @fw_c_rs2000, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @lme2510_i2c_xfer.obuf, ptr @lme2510_i2c_xfer.ibuf, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @lme2510_enable_pid.pid_buff, ptr @.str.35, ptr @.str.36, ptr @lme2510_powerup.lnb_on, ptr @lme2510_powerup.lnb_off, ptr @.str.37, ptr @.str.38, ptr @tda10086_config, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @sharp_z0194_config, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @lme_config, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @m88rs2000_config, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @sharp_z0194a_inittab, ptr @s7395_inittab, ptr @dm04_lme2510_set_voltage.voltage_low, ptr @dm04_lme2510_set_voltage.voltage_high, ptr @lme_name.fe_name, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @dm04_lme2510_tuner.tun_msg, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @lme_tuner, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @ts2020_config, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_lme2510_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_lme2510_firmware to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid_filter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_return_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_s0194 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_lg to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_c_s7395 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_c_lg to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_c_s0194 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_c_rs2000 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme_firmware_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme_coldreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_download_firmware._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_download_firmware._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_download_firmware._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_i2c_xfer.obuf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_i2c_xfer.ibuf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_enable_pid.pid_buff to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_powerup.lnb_on to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_powerup.lnb_off to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_frontend_attach._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_z0194_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_frontend_attach._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_frontend_attach._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_frontend_attach._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_frontend_attach._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs2000_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_frontend_attach._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_frontend_attach._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_frontend_attach._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_z0194a_inittab to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s7395_inittab to i32), i32 222, i32 256, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_set_voltage.voltage_low to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_set_voltage.voltage_high to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme_name.fe_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_tuner.tun_msg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme_tuner to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_tuner._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_tuner._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_tuner._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_tuner._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_tuner._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm04_lme2510_tuner._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts2020_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_int_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_int_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lme2510_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @lme2510_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lme2510_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @lme2510_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usbv2_disconnect(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lme2510_identify_state(ptr noundef %d, ptr nocapture noundef writeonly %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %call = tail call i32 @usb_reset_configuration(ptr noundef %3) #11
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceNumber, align 4
  %conv = zext i8 %9 to i32
  %call2 = tail call i32 @usb_set_interface(ptr noundef %5, i32 noundef %conv, i32 noundef 1) #11
  %10 = load i32, ptr @dvb_usb_lme2510_firmware, align 4
  %conv3 = trunc i32 %10 to i8
  %dvb_usb_lme2510_firmware = getelementptr inbounds %struct.lme2510_state, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %dvb_usb_lme2510_firmware to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3, ptr %dvb_usb_lme2510_firmware, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 6) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %13 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %16, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or3.i, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext 770, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 6, i32 noundef 200) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 6
  br i1 %cmp.not.i, label %lme2510_return_status.exit, label %lme2510_return_status.exit.thread19

lme2510_return_status.exit.thread19:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %call7.i.i.i) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

lme2510_return_status.exit:                       ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 2
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %call7.i.i.i) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %lme2510_return_status.exit.cleanup_crit_edge [
    i8 68, label %if.then
    i8 71, label %if.end10
  ]

lme2510_return_status.exit.cleanup_crit_edge:     ; preds = %lme2510_return_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %lme2510_return_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call fastcc ptr @lme_firmware_switch(ptr noundef %d, i32 noundef 0)
  %20 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call6, ptr %name, align 4
  br label %cleanup

if.end10:                                         ; preds = %lme2510_return_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then, %lme2510_return_status.exit.cleanup_crit_edge, %lme2510_return_status.exit.thread19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end10 ], [ -22, %lme2510_return_status.exit.cleanup_crit_edge ], [ -22, %lme2510_return_status.exit.thread19 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lme2510_download_firmware(ptr noundef %d, ptr nocapture noundef readonly %fw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #15
  br label %cleanup

do.end4:                                          ; preds = %entry
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #15
  %data23 = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %arrayidx42 = getelementptr i8, ptr %call7.i.i, i32 1
  %arrayidx43 = getelementptr i8, ptr %call7.i.i, i32 2
  %arrayidx66 = getelementptr i8, ptr %call7.i.i, i32 3
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc96.for.body_crit_edge, %do.end4
  %ret.0186 = phi i32 [ 0, %do.end4 ], [ %ret.1.lcssa, %for.inc96.for.body_crit_edge ]
  %i.0184 = phi i8 [ 1, %do.end4 ], [ %inc, %for.inc96.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %i.0184)
  %cmp9 = icmp eq i8 %i.0184, 1
  %conv11 = select i1 %cmp9, i32 0, i32 512
  br i1 %cmp9, label %for.body.cond.end_crit_edge, label %cond.false

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %cond15 = phi i32 [ %2, %cond.false ], [ 512, %for.body.cond.end_crit_edge ]
  %conv19 = and i32 %cond15, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv19, i32 %conv11)
  %cmp20181 = icmp ugt i32 %conv19, %conv11
  br i1 %cmp20181, label %for.body22.lr.ph, label %cond.end.for.inc96_crit_edge

cond.end.for.inc96_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc96

for.body22.lr.ph:                                 ; preds = %cond.end
  %3 = or i8 %i.0184, -128
  br label %for.body22

for.body22:                                       ; preds = %lme2510_usb_talk.exit.for.body22_crit_edge, %for.body22.lr.ph
  %conv18183 = phi i32 [ %conv11, %for.body22.lr.ph ], [ %conv18, %lme2510_usb_talk.exit.for.body22_crit_edge ]
  %ret.1182 = phi i32 [ %ret.0186, %for.body22.lr.ph ], [ %or90, %lme2510_usb_talk.exit.for.body22_crit_edge ]
  %4 = ptrtoint ptr %data23 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data23, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %conv18183
  %sub = sub nsw i32 %conv19, %conv18183
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %sub)
  %cmp28 = icmp sgt i32 %sub, 49
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %i.0184, ptr %call7.i.i, align 8
  br label %if.end41

if.else:                                          ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %3, ptr %call7.i.i, align 8
  %8 = trunc i32 %sub to i8
  %conv40 = add i8 %8, -1
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then30
  %dlen.0 = phi i8 [ 49, %if.then30 ], [ %conv40, %if.else ]
  %9 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %dlen.0, ptr %arrayidx42, align 1
  %conv44 = zext i8 %dlen.0 to i32
  %add = add nuw nsw i32 %conv44, 1
  %10 = call ptr @memcpy(ptr %arrayidx43, ptr %add.ptr, i32 %add)
  %conv47 = add nuw nsw i32 %conv44, 4
  %conv50 = trunc i32 %add to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv50)
  %tobool.not4.i = icmp eq i8 %conv50, 0
  br i1 %tobool.not4.i, label %if.end41.check_sum.exit_crit_edge, label %if.end41.while.body.i_crit_edge

if.end41.while.body.i_crit_edge:                  ; preds = %if.end41
  br label %while.body.i

if.end41.check_sum.exit_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_sum.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end41.while.body.i_crit_edge
  %sum.07.i = phi i8 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end41.while.body.i_crit_edge ]
  %len.addr.06.i = phi i8 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %conv50, %if.end41.while.body.i_crit_edge ]
  %p.addr.05.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr, %if.end41.while.body.i_crit_edge ]
  %dec.i = add i8 %len.addr.06.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %p.addr.05.i, i32 1
  %11 = ptrtoint ptr %p.addr.05.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %p.addr.05.i, align 1
  %add.i = add i8 %12, %sum.07.i
  %tobool.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.check_sum.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.check_sum.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %check_sum.exit

check_sum.exit:                                   ; preds = %while.body.i.check_sum.exit_crit_edge, %if.end41.check_sum.exit_crit_edge
  %sum.0.lcssa.i = phi i8 [ 0, %if.end41.check_sum.exit_crit_edge ], [ %add.i, %while.body.i.check_sum.exit_crit_edge ]
  %sub53 = add nuw nsw i32 %conv44, 3
  %arrayidx54 = getelementptr i8, ptr %call7.i.i, i32 %sub53
  %13 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %sum.0.lcssa.i, ptr %arrayidx54, align 1
  %14 = load i32, ptr @dvb_usb_lme2510_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp56 = icmp sgt i32 %14, 0
  br i1 %cmp56, label %do.body59, label %check_sum.exit.do.end81_crit_edge

check_sum.exit.do.end81_crit_edge:                ; preds = %check_sum.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end81

do.body59:                                        ; preds = %check_sum.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lme2510_download_firmware.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lme2510_download_firmware, %if.then65)) #11
          to label %do.end81 [label %if.then65], !srcloc !335

if.then65:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %16 to i32
  %add69 = add nuw nsw i32 %conv44, 2
  %arrayidx70 = getelementptr i8, ptr %call7.i.i, i32 %add69
  %17 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %18 to i32
  %19 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx54, align 1
  %conv75 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lme2510_download_firmware.__UNIQUE_ID_ddebug408, ptr noundef nonnull @.str.22, i32 noundef %conv67, i32 noundef %conv71, i32 noundef %conv75) #11
  br label %do.end81

do.end81:                                         ; preds = %if.then65, %do.body59, %check_sum.exit.do.end81_crit_edge
  %21 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv.i, align 8
  %23 = tail call i32 @llvm.smax.i32(i32 %conv47, i32 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %23)
  %cmp1.i = icmp ugt i32 %23, 64
  br i1 %cmp1.i, label %do.end81.lme2510_usb_talk.exit_crit_edge, label %if.end.i

do.end81.lme2510_usb_talk.exit_crit_edge:         ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %lme2510_usb_talk.exit

if.end.i:                                         ; preds = %do.end81
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %if.end.i.lme2510_usb_talk.exit_crit_edge, label %if.end4.i

if.end.i.lme2510_usb_talk.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lme2510_usb_talk.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %usb_buffer.i = getelementptr inbounds %struct.lme2510_state, ptr %22, i32 0, i32 17
  %24 = call ptr @memcpy(ptr %usb_buffer.i, ptr %call7.i.i, i32 %conv47)
  %conv.i = trunc i32 %conv47 to i16
  %call10.i = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %usb_buffer.i, i16 noundef zeroext %conv.i, ptr noundef %usb_buffer.i, i16 noundef zeroext 1) #11
  %25 = ptrtoint ptr %usb_buffer.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %usb_buffer.i, align 4
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %call7.i.i, align 8
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #11
  br label %lme2510_usb_talk.exit

lme2510_usb_talk.exit:                            ; preds = %if.end4.i, %if.end.i.lme2510_usb_talk.exit_crit_edge, %do.end81.lme2510_usb_talk.exit_crit_edge
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %29)
  %cmp87.not = icmp eq i8 %29, -120
  %or90 = select i1 %cmp87.not, i32 %ret.1182, i32 -1
  %add94 = add nuw nsw i32 %conv18183, 50
  %conv18 = and i32 %add94, 65535
  %cmp20 = icmp ugt i32 %conv19, %conv18
  br i1 %cmp20, label %lme2510_usb_talk.exit.for.body22_crit_edge, label %lme2510_usb_talk.exit.for.inc96_crit_edge

lme2510_usb_talk.exit.for.inc96_crit_edge:        ; preds = %lme2510_usb_talk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc96

lme2510_usb_talk.exit.for.body22_crit_edge:       ; preds = %lme2510_usb_talk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22

for.inc96:                                        ; preds = %lme2510_usb_talk.exit.for.inc96_crit_edge, %cond.end.for.inc96_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.0186, %cond.end.for.inc96_crit_edge ], [ %or90, %lme2510_usb_talk.exit.for.inc96_crit_edge ]
  %inc = add nuw nsw i8 %i.0184, 1
  %cmp = icmp ult i8 %i.0184, 2
  br i1 %cmp, label %for.inc96.for.body_crit_edge, label %for.end97

for.inc96.for.body_crit_edge:                     ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end97:                                        ; preds = %for.inc96
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -118, ptr %call7.i.i, align 8
  tail call void @msleep(i32 noundef 2000) #11
  %31 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i, align 8
  %call.i171 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %cmp2.i172 = icmp slt i32 %call.i171, 0
  br i1 %cmp2.i172, label %for.end97.lme2510_usb_talk.exit178_crit_edge, label %if.end4.i176

for.end97.lme2510_usb_talk.exit178_crit_edge:     ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %lme2510_usb_talk.exit178

if.end4.i176:                                     ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #13
  %usb_buffer.i174 = getelementptr inbounds %struct.lme2510_state, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %call7.i.i, align 8
  %35 = ptrtoint ptr %usb_buffer.i174 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %usb_buffer.i174, align 4
  %call10.i175 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %usb_buffer.i174, i16 noundef zeroext 1, ptr noundef %usb_buffer.i174, i16 noundef zeroext 1) #11
  %36 = ptrtoint ptr %usb_buffer.i174 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %usb_buffer.i174, align 4
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %call7.i.i, align 8
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #11
  br label %lme2510_usb_talk.exit178

lme2510_usb_talk.exit178:                         ; preds = %if.end4.i176, %for.end97.lme2510_usb_talk.exit178_crit_edge
  tail call void @msleep(i32 noundef 400) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.lcssa)
  %cmp102 = icmp slt i32 %ret.1.lcssa, 0
  br i1 %cmp102, label %do.end107, label %do.end113

do.end107:                                        ; preds = %lme2510_usb_talk.exit178
  call void @__sanitizer_cov_trace_pc() #13
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %ret.1.lcssa) #15
  br label %if.end116

do.end113:                                        ; preds = %lme2510_usb_talk.exit178
  call void @__sanitizer_cov_trace_pc() #13
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  br label %if.end116

if.end116:                                        ; preds = %do.end113, %do.end107
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %do.end
  %retval.0 = phi i32 [ 1, %if.end116 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lme2510_pid_filter_ctrl(ptr noundef %adap, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %4 = load i32, ptr @dvb_usb_lme2510_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.body8, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lme2510_pid_filter_ctrl.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lme2510_pid_filter_ctrl, %if.then12)) #11
          to label %do.end15 [label %if.then12], !srcloc !335

if.then12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lme2510_pid_filter_ctrl.__UNIQUE_ID_ddebug403, ptr noundef nonnull @.str.32) #11
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body8, %entry.do.end15_crit_edge
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %i2c_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool16.not = icmp eq i32 %onoff, 0
  br i1 %tobool16.not, label %if.then17, label %if.end20.thread

if.then17:                                        ; preds = %do.end15
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %.critedge, label %if.end4.i

if.end4.i:                                        ; preds = %if.then17
  %usb_buffer.i = getelementptr inbounds %struct.lme2510_state, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %usb_buffer.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 217862727209525377, ptr %usb_buffer.i, align 4
  %call10.i = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %add.ptr, ptr noundef %usb_buffer.i, i16 noundef zeroext 8, ptr noundef %usb_buffer.i, i16 noundef zeroext 1) #11
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %phi.cmp39 = icmp eq i32 %call10.i, 0
  %pid_off = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %pid_off to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %pid_off, align 4
  %pid_size = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 13
  %9 = ptrtoint ptr %pid_size to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %pid_size, align 1
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #11
  br i1 %phi.cmp39, label %if.end4.i._crit_edge, label %if.end4.i._crit_edge40

if.end4.i._crit_edge40:                           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %15

if.end4.i._crit_edge:                             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %12

if.end20.thread:                                  ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  %pid_off19 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %pid_off19 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pid_off19, align 4
  %pid_size38 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %pid_size38 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %pid_size38, align 1
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #11
  br label %12

12:                                               ; preds = %if.end20.thread, %if.end4.i._crit_edge
  br label %15

.critedge:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %pid_off.c = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %pid_off.c to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %pid_off.c, align 4
  %pid_size.c = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 13
  %14 = ptrtoint ptr %pid_size.c to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %pid_size.c, align 1
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #11
  br label %15

15:                                               ; preds = %.critedge, %12, %if.end4.i._crit_edge40
  %16 = phi i32 [ 0, %12 ], [ -121, %if.end4.i._crit_edge40 ], [ -121, %.critedge ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lme2510_pid_filter(ptr noundef %adap, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %2 = load i32, ptr @dvb_usb_lme2510_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.body2, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lme2510_pid_filter.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lme2510_pid_filter, %if.then6)) #11
          to label %do.end10 [label %if.then6], !srcloc !335

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %conv7 = zext i16 %pid to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lme2510_pid_filter.__UNIQUE_ID_ddebug404, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %conv7, i32 noundef %index, i32 noundef %onoff) #11
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body2, %entry.do.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool11.not = icmp eq i32 %onoff, 0
  br i1 %tobool11.not, label %do.end10.if.end16_crit_edge, label %if.then12

do.end10.if.end16_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #13
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %i2c_mutex, i32 noundef 0) #11
  %conv13 = trunc i32 %index to i8
  %call14 = tail call fastcc i32 @lme2510_enable_pid(ptr noundef %add.ptr, i8 noundef zeroext %conv13, i16 noundef zeroext %pid)
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %do.end10.if.end16_crit_edge
  %ret.0 = phi i32 [ %call14, %if.then12 ], [ 0, %do.end10.if.end16_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lme2510_powerup(ptr noundef %d, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %i2c_mutex, i32 noundef 0) #11
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %entry.lme2510_usb_talk.exit_crit_edge, label %if.end4.i

entry.lme2510_usb_talk.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lme2510_usb_talk.exit

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %cond = select i1 %tobool.not, ptr @lme2510_powerup.lnb_off, ptr @lme2510_powerup.lnb_on
  %usb_buffer.i = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 17
  %4 = call ptr @memcpy(ptr %usb_buffer.i, ptr %cond, i32 3)
  %call10.i = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %usb_buffer.i, i16 noundef zeroext 3, ptr noundef %usb_buffer.i, i16 noundef zeroext 1) #11
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #11
  br label %lme2510_usb_talk.exit

lme2510_usb_talk.exit:                            ; preds = %if.end4.i, %entry.lme2510_usb_talk.exit_crit_edge
  %retval.0.i = phi i32 [ %call10.i, %if.end4.i ], [ -11, %entry.lme2510_usb_talk.exit_crit_edge ]
  %i2c_talk_onoff = getelementptr inbounds %struct.lme2510_state, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %i2c_talk_onoff to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %i2c_talk_onoff, align 1
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm04_lme2510_frontend_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %i2c_talk_onoff = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %i2c_talk_onoff to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %i2c_talk_onoff, align 1
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 16, i32 8
  %7 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.124)
  switch i16 %9, label %entry.sw.epilog_crit_edge [
    i16 4386, label %entry.sw.bb_crit_edge
    i16 4384, label %entry.sw.bb_crit_edge347
    i16 8944, label %entry.sw.bb137_crit_edge
  ]

entry.sw.bb137_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb137

entry.sw.bb_crit_edge347:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge347
  %i2c_gate = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %i2c_gate to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %i2c_gate, align 2
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.37) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %sw.bb.if.then_crit_edge

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

cond.end:                                         ; preds = %sw.bb
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.38) #11
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.37) #11
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %cond326 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call, %sw.bb.if.then_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call5 = tail call ptr %cond326(ptr noundef nonnull @tda10086_config, ptr noundef %i2c_adap) #11
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then7, label %do.end18

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__symbol_put(ptr noundef nonnull @.str.37) #11
  br label %if.end30

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #15
  br label %if.end30

do.end18:                                         ; preds = %if.then
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %12 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5, ptr %fe, align 8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #15
  %i2c_tuner_gate_w = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %i2c_tuner_gate_w to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %i2c_tuner_gate_w, align 1
  %i2c_tuner_gate_r = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %i2c_tuner_gate_r to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %i2c_tuner_gate_r, align 4
  %i2c_tuner_addr = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %i2c_tuner_addr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 96, ptr %i2c_tuner_addr, align 1
  %tuner_config = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %tuner_config to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %tuner_config, align 1
  %dvb_usb_lme2510_firmware = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 24
  %17 = ptrtoint ptr %dvb_usb_lme2510_firmware to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dvb_usb_lme2510_firmware, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp22.not = icmp eq i8 %18, 1
  br i1 %cmp22.not, label %do.end18.sw.epilog_crit_edge, label %if.then24

do.end18.sw.epilog_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then24:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dvb_usb_lme2510_firmware to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %dvb_usb_lme2510_firmware, align 4
  %call26 = tail call fastcc ptr @lme_firmware_switch(ptr noundef %add.ptr, i32 noundef 1)
  %tobool27.not = icmp eq ptr %call26, null
  %cond28 = select i1 %tobool27.not, i32 -19, i32 0
  br label %sw.epilog

if.end30:                                         ; preds = %do.end, %if.then7
  %fe328 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %20 = ptrtoint ptr %fe328 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %fe328, align 8
  %21 = ptrtoint ptr %i2c_gate to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %i2c_gate, align 2
  %call34 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.44) #11
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %cond.end40, label %if.end30.if.then43_crit_edge

if.end30.if.then43_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

cond.end40:                                       ; preds = %if.end30
  %call38 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.45) #11
  %call39 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.44) #11
  %tobool42.not = icmp eq ptr %call39, null
  br i1 %tobool42.not, label %do.end53, label %cond.end40.if.then43_crit_edge

cond.end40.if.then43_crit_edge:                   ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

if.then43:                                        ; preds = %cond.end40.if.then43_crit_edge, %if.end30.if.then43_crit_edge
  %cond41333 = phi ptr [ %call39, %cond.end40.if.then43_crit_edge ], [ %call34, %if.end30.if.then43_crit_edge ]
  %i2c_adap44 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call45 = tail call ptr %cond41333(ptr noundef nonnull @sharp_z0194_config, ptr noundef %i2c_adap44) #11
  %cmp46 = icmp eq ptr %call45, null
  br i1 %cmp46, label %if.then48, label %do.end66

if.then48:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__symbol_put(ptr noundef nonnull @.str.44) #11
  br label %if.end83

do.end53:                                         ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #13
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #15
  br label %if.end83

do.end66:                                         ; preds = %if.then43
  %22 = ptrtoint ptr %fe328 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call45, ptr %fe328, align 8
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #15
  %i2c_tuner_gate_w69 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 9
  %23 = ptrtoint ptr %i2c_tuner_gate_w69 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %i2c_tuner_gate_w69, align 1
  %i2c_tuner_gate_r70 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 10
  %24 = ptrtoint ptr %i2c_tuner_gate_r70 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %i2c_tuner_gate_r70, align 4
  %i2c_tuner_addr71 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 11
  %25 = ptrtoint ptr %i2c_tuner_addr71 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 96, ptr %i2c_tuner_addr71, align 1
  %tuner_config72 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %tuner_config72 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %tuner_config72, align 1
  %dvb_usb_lme2510_firmware73 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 24
  %27 = ptrtoint ptr %dvb_usb_lme2510_firmware73 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dvb_usb_lme2510_firmware73, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp75.not = icmp eq i8 %28, 3
  br i1 %cmp75.not, label %do.end66.sw.epilog_crit_edge, label %if.then77

do.end66.sw.epilog_crit_edge:                     ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then77:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %dvb_usb_lme2510_firmware73 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %dvb_usb_lme2510_firmware73, align 4
  %call79 = tail call fastcc ptr @lme_firmware_switch(ptr noundef %add.ptr, i32 noundef 1)
  %tobool80.not = icmp eq ptr %call79, null
  %cond81 = select i1 %tobool80.not, i32 -19, i32 0
  br label %sw.epilog

if.end83:                                         ; preds = %do.end53, %if.then48
  %30 = ptrtoint ptr %fe328 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %fe328, align 8
  %31 = ptrtoint ptr %i2c_gate to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 5, ptr %i2c_gate, align 2
  %call87 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.52) #11
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %cond.end93, label %if.end83.if.then96_crit_edge

if.end83.if.then96_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then96

cond.end93:                                       ; preds = %if.end83
  %call91 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.53) #11
  %call92 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.52) #11
  %tobool95.not = icmp eq ptr %call92, null
  br i1 %tobool95.not, label %do.end106, label %cond.end93.if.then96_crit_edge

cond.end93.if.then96_crit_edge:                   ; preds = %cond.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then96

if.then96:                                        ; preds = %cond.end93.if.then96_crit_edge, %if.end83.if.then96_crit_edge
  %cond94338 = phi ptr [ %call92, %cond.end93.if.then96_crit_edge ], [ %call87, %if.end83.if.then96_crit_edge ]
  %i2c_adap97 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call98 = tail call ptr %cond94338(ptr noundef nonnull @lme_config, ptr noundef %i2c_adap97) #11
  %cmp99 = icmp eq ptr %call98, null
  br i1 %cmp99, label %if.then101, label %do.end119

if.then101:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__symbol_put(ptr noundef nonnull @.str.52) #11
  br label %if.end109.thread

do.end106:                                        ; preds = %cond.end93
  call void @__sanitizer_cov_trace_pc() #13
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #15
  br label %if.end109.thread

if.end109.thread:                                 ; preds = %do.end106, %if.then101
  %32 = ptrtoint ptr %fe328 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %fe328, align 8
  br label %sw.bb137

do.end119:                                        ; preds = %if.then96
  %33 = ptrtoint ptr %fe328 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call98, ptr %fe328, align 8
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #15
  %i2c_tuner_gate_w122 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 9
  %34 = ptrtoint ptr %i2c_tuner_gate_w122 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %i2c_tuner_gate_w122, align 1
  %i2c_tuner_gate_r123 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 10
  %35 = ptrtoint ptr %i2c_tuner_gate_r123 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %i2c_tuner_gate_r123, align 4
  %i2c_tuner_addr124 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 11
  %36 = ptrtoint ptr %i2c_tuner_addr124 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 96, ptr %i2c_tuner_addr124, align 1
  %tuner_config125 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 3
  %37 = ptrtoint ptr %tuner_config125 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %tuner_config125, align 1
  %dvb_usb_lme2510_firmware126 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 24
  %38 = ptrtoint ptr %dvb_usb_lme2510_firmware126 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %dvb_usb_lme2510_firmware126, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp128.not = icmp eq i8 %39, 2
  br i1 %cmp128.not, label %do.end119.sw.epilog_crit_edge, label %if.then130

do.end119.sw.epilog_crit_edge:                    ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then130:                                       ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %dvb_usb_lme2510_firmware126 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %dvb_usb_lme2510_firmware126, align 4
  %call132 = tail call fastcc ptr @lme_firmware_switch(ptr noundef %add.ptr, i32 noundef 1)
  %tobool133.not = icmp eq ptr %call132, null
  %cond134 = select i1 %tobool133.not, i32 -19, i32 0
  br label %sw.epilog

sw.bb137:                                         ; preds = %if.end109.thread, %entry.sw.bb137_crit_edge
  %i2c_gate138 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 8
  %41 = ptrtoint ptr %i2c_gate138 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 5, ptr %i2c_gate138, align 2
  %call141 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #11
  %tobool142.not = icmp eq ptr %call141, null
  br i1 %tobool142.not, label %cond.end147, label %sw.bb137.if.then150_crit_edge

sw.bb137.if.then150_crit_edge:                    ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then150

cond.end147:                                      ; preds = %sw.bb137
  %call145 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.61) #11
  %call146 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #11
  %tobool149.not = icmp eq ptr %call146, null
  br i1 %tobool149.not, label %do.end160, label %cond.end147.if.then150_crit_edge

cond.end147.if.then150_crit_edge:                 ; preds = %cond.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then150

if.then150:                                       ; preds = %cond.end147.if.then150_crit_edge, %sw.bb137.if.then150_crit_edge
  %cond148343 = phi ptr [ %call146, %cond.end147.if.then150_crit_edge ], [ %call141, %sw.bb137.if.then150_crit_edge ]
  %i2c_adap151 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call152 = tail call ptr %cond148343(ptr noundef nonnull @m88rs2000_config, ptr noundef %i2c_adap151) #11
  %cmp153 = icmp eq ptr %call152, null
  br i1 %cmp153, label %if.then155, label %do.end173

if.then155:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__symbol_put(ptr noundef nonnull @.str.60) #11
  br label %if.end163.thread

do.end160:                                        ; preds = %cond.end147
  call void @__sanitizer_cov_trace_pc() #13
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #15
  br label %if.end163.thread

if.end163.thread:                                 ; preds = %do.end160, %if.then155
  %fe165345 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %42 = ptrtoint ptr %fe165345 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %fe165345, align 8
  br label %sw.epilog

do.end173:                                        ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #13
  %fe165 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %43 = ptrtoint ptr %fe165 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call152, ptr %fe165, align 8
  %call175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #15
  %i2c_tuner_gate_w176 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 9
  %44 = ptrtoint ptr %i2c_tuner_gate_w176 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 5, ptr %i2c_tuner_gate_w176, align 1
  %i2c_tuner_gate_r177 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 10
  %45 = ptrtoint ptr %i2c_tuner_gate_r177 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 5, ptr %i2c_tuner_gate_r177, align 4
  %i2c_tuner_addr178 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 11
  %46 = ptrtoint ptr %i2c_tuner_addr178 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 96, ptr %i2c_tuner_addr178, align 1
  %tuner_config179 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 3
  %47 = ptrtoint ptr %tuner_config179 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %tuner_config179, align 1
  %48 = ptrtoint ptr %fe165 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fe165, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %49, i32 0, i32 1, i32 25
  %50 = ptrtoint ptr %set_voltage to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_voltage, align 4
  %fe_set_voltage = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 23
  %52 = ptrtoint ptr %fe_set_voltage to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %fe_set_voltage, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end173, %if.end163.thread, %if.then130, %do.end119.sw.epilog_crit_edge, %if.then77, %do.end66.sw.epilog_crit_edge, %if.then24, %do.end18.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %do.end173 ], [ %cond28, %if.then24 ], [ 0, %do.end18.sw.epilog_crit_edge ], [ %cond81, %if.then77 ], [ 0, %do.end66.sw.epilog_crit_edge ], [ %cond134, %if.then130 ], [ 0, %do.end119.sw.epilog_crit_edge ], [ 0, %if.end163.thread ]
  %fe183 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %53 = ptrtoint ptr %fe183 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fe183, align 8
  %cmp185 = icmp eq ptr %54, null
  br i1 %cmp185, label %do.end190, label %if.end193

do.end190:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #15
  br label %cleanup

if.end193:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool194.not = icmp eq i32 %ret.0, 0
  br i1 %tobool194.not, label %if.end205, label %if.then199

if.then199:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dvb_frontend_detach(ptr noundef nonnull %54) #11
  %55 = ptrtoint ptr %fe183 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %fe183, align 8
  %rc_map = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 2
  %56 = ptrtoint ptr %rc_map to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %rc_map, align 8
  br label %cleanup

if.end205:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  %read_status = getelementptr inbounds %struct.dvb_frontend, ptr %54, i32 0, i32 1, i32 15
  %57 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read_status, align 4
  %fe_read_status = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 18
  %59 = ptrtoint ptr %fe_read_status to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %fe_read_status, align 4
  %60 = ptrtoint ptr %fe183 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fe183, align 8
  %read_signal_strength = getelementptr inbounds %struct.dvb_frontend, ptr %61, i32 0, i32 1, i32 17
  %62 = ptrtoint ptr %read_signal_strength to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_signal_strength, align 4
  %fe_read_signal_strength = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 19
  %64 = ptrtoint ptr %fe_read_signal_strength to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %fe_read_signal_strength, align 4
  %65 = load ptr, ptr %fe183, align 8
  %read_snr = getelementptr inbounds %struct.dvb_frontend, ptr %65, i32 0, i32 1, i32 18
  %66 = ptrtoint ptr %read_snr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read_snr, align 4
  %fe_read_snr = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 20
  %68 = ptrtoint ptr %fe_read_snr to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %fe_read_snr, align 4
  %69 = load ptr, ptr %fe183, align 8
  %read_ber = getelementptr inbounds %struct.dvb_frontend, ptr %69, i32 0, i32 1, i32 16
  %70 = ptrtoint ptr %read_ber to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read_ber, align 4
  %fe_read_ber = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 21
  %72 = ptrtoint ptr %fe_read_ber to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %fe_read_ber, align 4
  %73 = load ptr, ptr %fe183, align 8
  %read_ucblocks = getelementptr inbounds %struct.dvb_frontend, ptr %73, i32 0, i32 1, i32 19
  %74 = ptrtoint ptr %read_ucblocks to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read_ucblocks, align 4
  %fe_read_ucblocks = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 22
  %76 = ptrtoint ptr %fe_read_ucblocks to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %fe_read_ucblocks, align 4
  %77 = load ptr, ptr %fe183, align 8
  %read_status224 = getelementptr inbounds %struct.dvb_frontend, ptr %77, i32 0, i32 1, i32 15
  %78 = ptrtoint ptr %read_status224 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @dm04_read_status, ptr %read_status224, align 4
  %79 = load ptr, ptr %fe183, align 8
  %read_signal_strength228 = getelementptr inbounds %struct.dvb_frontend, ptr %79, i32 0, i32 1, i32 17
  %80 = ptrtoint ptr %read_signal_strength228 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @dm04_read_signal_strength, ptr %read_signal_strength228, align 4
  %81 = load ptr, ptr %fe183, align 8
  %read_snr232 = getelementptr inbounds %struct.dvb_frontend, ptr %81, i32 0, i32 1, i32 18
  %82 = ptrtoint ptr %read_snr232 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @dm04_read_snr, ptr %read_snr232, align 4
  %83 = load ptr, ptr %fe183, align 8
  %read_ber236 = getelementptr inbounds %struct.dvb_frontend, ptr %83, i32 0, i32 1, i32 16
  %84 = ptrtoint ptr %read_ber236 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @dm04_read_ber, ptr %read_ber236, align 4
  %85 = load ptr, ptr %fe183, align 8
  %read_ucblocks240 = getelementptr inbounds %struct.dvb_frontend, ptr %85, i32 0, i32 1, i32 19
  %86 = ptrtoint ptr %read_ucblocks240 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @dm04_read_ucblocks, ptr %read_ucblocks240, align 4
  %87 = load ptr, ptr %fe183, align 8
  %set_voltage244 = getelementptr inbounds %struct.dvb_frontend, ptr %87, i32 0, i32 1, i32 25
  %88 = ptrtoint ptr %set_voltage244 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @dm04_lme2510_set_voltage, ptr %set_voltage244, align 4
  %89 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %id, align 4
  %conv.i = zext i8 %90 to i32
  %.neg.i = mul nsw i32 %conv.i, -2280
  %idx.neg.i = add nsw i32 %.neg.i, -1616
  %add.ptr.i = getelementptr i8, ptr %adap, i32 %idx.neg.i
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr.i, i32 0, i32 15
  %91 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv.i, align 8
  %name.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr.i, i32 0, i32 1
  %93 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name.i, align 4
  %95 = load ptr, ptr %fe183, align 8
  %ops.i = getelementptr inbounds %struct.dvb_frontend, ptr %95, i32 0, i32 1
  %call.i = tail call i32 @strscpy(ptr noundef %ops.i, ptr noundef %94, i32 noundef 128) #11
  %tuner_config.i = getelementptr inbounds %struct.lme2510_state, ptr %92, i32 0, i32 3
  %96 = ptrtoint ptr %tuner_config.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %tuner_config.i, align 1
  %idxprom.i = zext i8 %97 to i32
  %arrayidx9.i = getelementptr [5 x ptr], ptr @lme_name.fe_name, i32 0, i32 %idxprom.i
  %98 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx9.i, align 4
  %call10.i = tail call i32 @strlcat(ptr noundef %ops.i, ptr noundef %99, i32 noundef 128) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end205, %if.then199, %do.end190
  %retval.0 = phi i32 [ -19, %do.end190 ], [ -19, %if.then199 ], [ 0, %if.end205 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm04_lme2510_tuner(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %tuner_config = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tuner_config to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tuner_config, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %5, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb23
    i8 3, label %sw.bb57
    i8 4, label %sw.bb91
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %sw.bb.if.then_crit_edge

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

cond.end:                                         ; preds = %sw.bb
  %call8 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.81) #11
  %call9 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.80) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %cond180 = phi ptr [ %call9, %cond.end.if.then_crit_edge ], [ %call, %sw.bb.if.then_crit_edge ]
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %7 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fe, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call11 = tail call ptr %cond180(ptr noundef %8, i32 noundef 96, ptr noundef %i2c_adap, i32 noundef 1) #11
  %cmp = icmp eq ptr %call11, null
  br i1 %cmp, label %if.then13, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__symbol_put(ptr noundef nonnull @.str.80) #11
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #15
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %call26 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.84) #11
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %cond.end32, label %sw.bb23.if.then35_crit_edge

sw.bb23.if.then35_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

cond.end32:                                       ; preds = %sw.bb23
  %call30 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.85) #11
  %call31 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.84) #11
  %tobool34.not = icmp eq ptr %call31, null
  br i1 %tobool34.not, label %do.end47, label %cond.end32.if.then35_crit_edge

cond.end32.if.then35_crit_edge:                   ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.then35:                                        ; preds = %cond.end32.if.then35_crit_edge, %sw.bb23.if.then35_crit_edge
  %cond33185 = phi ptr [ %call31, %cond.end32.if.then35_crit_edge ], [ %call26, %sw.bb23.if.then35_crit_edge ]
  %fe36 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %9 = ptrtoint ptr %fe36 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fe36, align 8
  %i2c_adap38 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call39 = tail call ptr %cond33185(ptr noundef %10, ptr noundef nonnull @lme_tuner, ptr noundef %i2c_adap38) #11
  %cmp40 = icmp eq ptr %call39, null
  br i1 %cmp40, label %if.then42, label %if.then35.sw.epilog_crit_edge

if.then35.sw.epilog_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then42:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__symbol_put(ptr noundef nonnull @.str.84) #11
  br label %cleanup

do.end47:                                         ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #13
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #15
  br label %cleanup

sw.bb57:                                          ; preds = %entry
  %call60 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.89) #11
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %cond.end66, label %sw.bb57.if.then69_crit_edge

sw.bb57.if.then69_crit_edge:                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then69

cond.end66:                                       ; preds = %sw.bb57
  %call64 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.90) #11
  %call65 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.89) #11
  %tobool68.not = icmp eq ptr %call65, null
  br i1 %tobool68.not, label %do.end81, label %cond.end66.if.then69_crit_edge

cond.end66.if.then69_crit_edge:                   ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then69

if.then69:                                        ; preds = %cond.end66.if.then69_crit_edge, %sw.bb57.if.then69_crit_edge
  %cond67190 = phi ptr [ %call65, %cond.end66.if.then69_crit_edge ], [ %call60, %sw.bb57.if.then69_crit_edge ]
  %fe70 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %11 = ptrtoint ptr %fe70 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe70, align 8
  %i2c_adap72 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call73 = tail call ptr %cond67190(ptr noundef %12, i32 noundef 96, ptr noundef %i2c_adap72, i32 noundef 13) #11
  %cmp74 = icmp eq ptr %call73, null
  br i1 %cmp74, label %if.then76, label %if.then69.sw.epilog_crit_edge

if.then69.sw.epilog_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then76:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__symbol_put(ptr noundef nonnull @.str.89) #11
  br label %cleanup

do.end81:                                         ; preds = %cond.end66
  call void @__sanitizer_cov_trace_pc() #13
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #15
  br label %cleanup

sw.bb91:                                          ; preds = %entry
  %call94 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.94) #11
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %cond.end100, label %sw.bb91.if.then103_crit_edge

sw.bb91.if.then103_crit_edge:                     ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then103

cond.end100:                                      ; preds = %sw.bb91
  %call98 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.95) #11
  %call99 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.94) #11
  %tobool102.not = icmp eq ptr %call99, null
  br i1 %tobool102.not, label %do.end115, label %cond.end100.if.then103_crit_edge

cond.end100.if.then103_crit_edge:                 ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then103

if.then103:                                       ; preds = %cond.end100.if.then103_crit_edge, %sw.bb91.if.then103_crit_edge
  %cond101195 = phi ptr [ %call99, %cond.end100.if.then103_crit_edge ], [ %call94, %sw.bb91.if.then103_crit_edge ]
  %fe104 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %13 = ptrtoint ptr %fe104 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fe104, align 8
  %i2c_adap106 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call107 = tail call ptr %cond101195(ptr noundef %14, ptr noundef nonnull @ts2020_config, ptr noundef %i2c_adap106) #11
  %cmp108 = icmp eq ptr %call107, null
  br i1 %cmp108, label %if.then110, label %if.then103.sw.epilog_crit_edge

if.then103.sw.epilog_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then110:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__symbol_put(ptr noundef nonnull @.str.94) #11
  br label %cleanup

do.end115:                                        ; preds = %cond.end100
  call void @__sanitizer_cov_trace_pc() #13
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #15
  br label %cleanup

sw.epilog:                                        ; preds = %if.then103.sw.epilog_crit_edge, %if.then69.sw.epilog_crit_edge, %if.then35.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge
  %15 = ptrtoint ptr %tuner_config to i32
  call void @__asan_load1_noabort(i32 %15)
  %ret.0.shrunk = load i8, ptr %tuner_config, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ret.0.shrunk)
  %tobool125.not = icmp eq i8 %ret.0.shrunk, 0
  br i1 %tobool125.not, label %sw.epilog.cleanup_crit_edge, label %do.end129

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end129:                                        ; preds = %sw.epilog
  %ret.0 = zext i8 %ret.0.shrunk to i32
  %arrayidx131 = getelementptr [5 x ptr], ptr @dm04_lme2510_tuner.tun_msg, i32 0, i32 %ret.0
  %16 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx131, align 4
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %17) #15
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id, align 4
  %conv.i = zext i8 %19 to i32
  %.neg.i = mul nsw i32 %conv.i, -2280
  %idx.neg.i = add nsw i32 %.neg.i, -1616
  %add.ptr.i = getelementptr i8, ptr %adap, i32 %idx.neg.i
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr.i, i32 0, i32 15
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 8
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %lme_urb.i = getelementptr inbounds %struct.lme2510_state, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %lme_urb.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %lme_urb.i, align 4
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end129.cleanup_crit_edge, label %if.end.i

do.end129.cleanup_crit_edge:                      ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %do.end129
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr.i, i32 0, i32 5
  %23 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i = shl i32 %26, 8
  %or12.i = or i32 %shl.i.i, 1074069632
  %int_buffer.i = getelementptr inbounds %struct.lme2510_state, ptr %21, i32 0, i32 15
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %27 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %28 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or12.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %int_buffer.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 128, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %31 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @lme2510_int_response, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %32 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %adap, ptr %context4.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 4
  %33 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp.i.i = icmp eq i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp6.i.i = icmp ugt i32 %34, 4
  %or.cond.i.i = or i1 %cmp.i.i, %cmp6.i.i
  %spec.select.i.i = select i1 %or.cond.i.i, i32 128, i32 8
  %35 = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 25
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select.i.i, ptr %35, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 23
  %37 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %start_frame.i.i, align 4
  %38 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %udev.i, align 4
  %40 = ptrtoint ptr %lme_urb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lme_urb.i, align 4
  %pipe.i = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pipe.i, align 4
  %and.i.i = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %ep_in.i.i = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 21
  %ep_out.i.i = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 22
  %cond.i.i = select i1 %tobool.not.i.i, ptr %ep_out.i.i, ptr %ep_in.i.i
  %shr.i.i = lshr i32 %43, 15
  %and2.i.i = and i32 %shr.i.i, 15
  %arrayidx.i.i = getelementptr ptr, ptr %cond.i.i, i32 %and2.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bmAttributes.i.i, align 1
  %48 = and i8 %47, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp17.i = icmp eq i8 %48, 2
  br i1 %cmp17.i, label %if.then19.i, label %if.end.i.lme2510_int_read.exit_crit_edge

if.end.i.lme2510_int_read.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lme2510_int_read.exit

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %39, align 8
  %shl.i47.i = shl i32 %50, 8
  %or23.i = or i32 %shl.i47.i, -1073414016
  %51 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or23.i, ptr %pipe.i, align 4
  br label %lme2510_int_read.exit

lme2510_int_read.exit:                            ; preds = %if.then19.i, %if.end.i.lme2510_int_read.exit_crit_edge
  %52 = ptrtoint ptr %lme_urb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lme_urb.i, align 4
  %call28.i = tail call i32 @usb_submit_urb(ptr noundef %53, i32 noundef 3264) #11
  br label %cleanup

cleanup:                                          ; preds = %lme2510_int_read.exit, %do.end129.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end115, %if.then110, %do.end81, %if.then76, %do.end47, %if.then42, %do.end, %if.then13, %entry.cleanup_crit_edge
  %.str.109.sink = phi ptr [ @.str.109, %lme2510_int_read.exit ], [ @.str.103, %do.end115 ], [ @.str.103, %if.then110 ], [ @.str.103, %do.end81 ], [ @.str.103, %if.then76 ], [ @.str.103, %do.end47 ], [ @.str.103, %if.then42 ], [ @.str.103, %do.end ], [ @.str.103, %if.then13 ], [ @.str.103, %entry.cleanup_crit_edge ], [ @.str.103, %sw.epilog.cleanup_crit_edge ], [ @.str.106, %do.end129.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %lme2510_int_read.exit ], [ -19, %do.end115 ], [ -19, %if.then110 ], [ -19, %do.end81 ], [ -19, %if.then76 ], [ -19, %do.end47 ], [ -19, %if.then42 ], [ -19, %do.end ], [ -19, %if.then13 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %sw.epilog.cleanup_crit_edge ], [ -19, %do.end129.cleanup_crit_edge ]
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.109.sink) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lme2510_streaming_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %priv7 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv7, align 8
  %8 = load i32, ptr @dvb_usb_lme2510_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %do.body9, label %entry.do.end16_crit_edge

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lme2510_streaming_ctrl.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lme2510_streaming_ctrl, %if.then13)) #11
          to label %do.end16 [label %if.then13], !srcloc !335

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lme2510_streaming_ctrl.__UNIQUE_ID_ddebug406, ptr noundef nonnull @.str.120, i32 noundef %onoff) #11
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body9, %entry.do.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %onoff)
  %cmp17 = icmp eq i32 %onoff, 1
  br i1 %cmp17, label %if.then19, label %do.body20

if.then19:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  %stream_on = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %stream_on to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %stream_on, align 2
  br label %if.end46

do.body20:                                        ; preds = %do.end16
  %10 = load i32, ptr @dvb_usb_lme2510_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp21 = icmp sgt i32 %10, 0
  br i1 %cmp21, label %do.body24, label %do.body20.do.end42_crit_edge

do.body20.do.end42_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

do.body24:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lme2510_streaming_ctrl.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lme2510_streaming_ctrl, %if.then36)) #11
          to label %do.end42 [label %if.then36], !srcloc !335

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lme2510_streaming_ctrl.__UNIQUE_ID_ddebug407, ptr noundef nonnull @.str.121) #11
  br label %do.end42

do.end42:                                         ; preds = %if.then36, %do.body24, %do.body20.do.end42_crit_edge
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %i2c_mutex, i32 noundef 0) #11
  %11 = ptrtoint ptr %priv7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv7, align 8
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %do.end42.lme2510_usb_talk.exit_crit_edge, label %if.end4.i

do.end42.lme2510_usb_talk.exit_crit_edge:         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %lme2510_usb_talk.exit

if.end4.i:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  %usb_buffer.i = getelementptr inbounds %struct.lme2510_state, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %usb_buffer.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 217862727209525377, ptr %usb_buffer.i, align 4
  %call10.i = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %add.ptr, ptr noundef %usb_buffer.i, i16 noundef zeroext 8, ptr noundef %usb_buffer.i, i16 noundef zeroext 1) #11
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %phi.cmp63 = icmp slt i32 %call10.i, 0
  %phi.sel = select i1 %phi.cmp63, i32 -19, i32 0
  br label %lme2510_usb_talk.exit

lme2510_usb_talk.exit:                            ; preds = %if.end4.i, %do.end42.lme2510_usb_talk.exit_crit_edge
  %retval.0.i60 = phi i32 [ %phi.sel, %if.end4.i ], [ -19, %do.end42.lme2510_usb_talk.exit_crit_edge ]
  %stream_on44 = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 12
  %14 = ptrtoint ptr %stream_on44 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %stream_on44, align 2
  %i2c_talk_onoff = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 7
  %15 = ptrtoint ptr %i2c_talk_onoff to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %i2c_talk_onoff, align 1
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #11
  br label %if.end46

if.end46:                                         ; preds = %lme2510_usb_talk.exit, %if.then19
  %ret.0 = phi i32 [ 0, %if.then19 ], [ %retval.0.i60, %lme2510_usb_talk.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lme2510_exit(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lme_urb = getelementptr inbounds %struct.lme2510_state, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %lme_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lme_urb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_kill_urb(ptr noundef nonnull %3) #11
  %4 = ptrtoint ptr %lme_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lme_urb, align 4
  tail call void @usb_free_urb(ptr noundef %5) #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lme2510_get_rc_config(ptr nocapture noundef readnone %d, ptr nocapture noundef writeonly %rc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %allowed_protos = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 1
  %0 = ptrtoint ptr %allowed_protos to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 2048, ptr %allowed_protos, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lme2510_get_stream_config(ptr nocapture noundef readonly %fe, ptr nocapture noundef readnone %ts_type, ptr nocapture noundef writeonly %stream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %6 = load i32, ptr @pid_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1 = icmp eq i32 %6, 2
  br i1 %cmp1, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %pid_filtering = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %pid_filtering to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %pid_filtering, align 1
  %max_feed_count = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %max_feed_count to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 15, ptr %max_feed_count, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %9 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 16, i32 8
  %11 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8721, i16 %12)
  %cmp6 = icmp eq i16 %12, 8721
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.then8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %endpoint = getelementptr inbounds %struct.usb_data_stream_properties, ptr %stream, i32 0, i32 2
  %13 = ptrtoint ptr %endpoint to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 8, ptr %endpoint, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_configuration(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lme_firmware_switch(ptr noundef %d, i32 noundef %cold) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %udev1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %2 = ptrtoint ptr %udev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #11
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cold)
  %cmp = icmp slt i32 %cold, 1
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 8
  %5 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idProduct, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.126)
  switch i16 %7, label %entry.sw.epilog49_crit_edge [
    i16 4386, label %sw.bb
    i16 4384, label %sw.bb16
    i16 8944, label %sw.bb46
  ]

entry.sw.epilog49_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog49

sw.bb:                                            ; preds = %entry
  %dvb_usb_lme2510_firmware = getelementptr inbounds %struct.lme2510_state, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %dvb_usb_lme2510_firmware to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dvb_usb_lme2510_firmware, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cond59 = icmp eq i8 %10, 1
  br i1 %cond59, label %sw.bb.sw.bb7_crit_edge, label %sw.bb3

sw.bb.sw.bb7_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

sw.bb3:                                           ; preds = %sw.bb
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @fw_s0194, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.then, label %sw.bb3.sw.bb7_crit_edge

sw.bb3.sw.bb7_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %dvb_usb_lme2510_firmware to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %dvb_usb_lme2510_firmware, align 4
  br label %sw.epilog49.thread

sw.bb7:                                           ; preds = %sw.bb3.sw.bb7_crit_edge, %sw.bb.sw.bb7_crit_edge
  %dev8 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %call9 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @fw_lg, ptr noundef %dev8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %dvb_usb_lme2510_firmware to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %dvb_usb_lme2510_firmware, align 4
  br label %sw.epilog49

if.end14:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dvb_usb_lme2510_firmware to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %dvb_usb_lme2510_firmware, align 4
  br label %sw.epilog49

sw.bb16:                                          ; preds = %entry
  %dvb_usb_lme2510_firmware17 = getelementptr inbounds %struct.lme2510_state, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %dvb_usb_lme2510_firmware17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dvb_usb_lme2510_firmware17, align 4
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %15, label %sw.bb20 [
    i8 3, label %sw.bb16.sw.bb36_crit_edge
    i8 1, label %sw.bb16.sw.bb28_crit_edge
  ]

sw.bb16.sw.bb28_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb28

sw.bb16.sw.bb36_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36

sw.bb20:                                          ; preds = %sw.bb16
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %call22 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @fw_c_s7395, ptr noundef %dev21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %sw.bb20.sw.bb28_crit_edge

sw.bb20.sw.bb28_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb28

if.then25:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dvb_usb_lme2510_firmware17 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %dvb_usb_lme2510_firmware17, align 4
  br label %sw.epilog49.thread

sw.bb28:                                          ; preds = %sw.bb20.sw.bb28_crit_edge, %sw.bb16.sw.bb28_crit_edge
  %dev29 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %call30 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @fw_c_lg, ptr noundef %dev29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %sw.bb28.sw.bb36_crit_edge

sw.bb28.sw.bb36_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb36

if.then33:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %dvb_usb_lme2510_firmware17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %dvb_usb_lme2510_firmware17, align 4
  br label %sw.epilog49

sw.bb36:                                          ; preds = %sw.bb28.sw.bb36_crit_edge, %sw.bb16.sw.bb36_crit_edge
  %dev37 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %call38 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @fw_c_s0194, ptr noundef %dev37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dvb_usb_lme2510_firmware17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %dvb_usb_lme2510_firmware17, align 4
  br label %sw.epilog49

if.end43:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %dvb_usb_lme2510_firmware17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %dvb_usb_lme2510_firmware17, align 4
  br label %sw.epilog49.thread

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dvb_usb_lme2510_firmware47 = getelementptr inbounds %struct.lme2510_state, ptr %1, i32 0, i32 24
  %21 = ptrtoint ptr %dvb_usb_lme2510_firmware47 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %dvb_usb_lme2510_firmware47, align 4
  br label %sw.epilog49

sw.epilog49.thread:                               ; preds = %if.end43, %if.then25, %if.then
  %fw_lme.0.ph = phi ptr [ @fw_s0194, %if.then ], [ @fw_c_s0194, %if.end43 ], [ @fw_c_s7395, %if.then25 ]
  %22 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %23) #11
  br label %cleanup

sw.epilog49:                                      ; preds = %sw.bb46, %if.then41, %if.then33, %if.end14, %if.then12, %entry.sw.epilog49_crit_edge
  %fw_lme.0 = phi ptr [ @fw_c_rs2000, %sw.bb46 ], [ @fw_c_lg, %if.then33 ], [ @fw_c_s0194, %if.then41 ], [ @fw_lg, %if.then12 ], [ @fw_lg, %if.end14 ], [ @fw_c_s7395, %entry.sw.epilog49_crit_edge ]
  %24 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %25) #11
  br i1 %cmp, label %sw.epilog49.cleanup_crit_edge, label %if.then50

sw.epilog49.cleanup_crit_edge:                    ; preds = %sw.epilog49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then50:                                        ; preds = %sw.epilog49
  %dvb_usb_lme2510_firmware51 = getelementptr inbounds %struct.lme2510_state, ptr %1, i32 0, i32 24
  %26 = ptrtoint ptr %dvb_usb_lme2510_firmware51 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dvb_usb_lme2510_firmware51, align 4
  %conv52 = zext i8 %27 to i32
  store i32 %conv52, ptr @dvb_usb_lme2510_firmware, align 4
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %fw_lme.0) #15
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %usb_mutex.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  %call.i.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i.i, label %if.then50.cleanup_crit_edge, label %if.end4.i.i

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  %usb_buffer.i.i = getelementptr inbounds %struct.lme2510_state, ptr %29, i32 0, i32 17
  %30 = ptrtoint ptr %usb_buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 10, ptr %usb_buffer.i.i, align 4
  %call10.i.i = call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %usb_buffer.i.i, i16 noundef zeroext 1, ptr noundef %usb_buffer.i.i, i16 noundef zeroext 1) #11
  call void @mutex_unlock(ptr noundef %usb_mutex.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i.i, %if.then50.cleanup_crit_edge, %sw.epilog49.cleanup_crit_edge, %sw.epilog49.thread
  %retval.0 = phi ptr [ %fw_lme.0, %sw.epilog49.cleanup_crit_edge ], [ %fw_lme.0.ph, %sw.epilog49.thread ], [ null, %if.then50.cleanup_crit_edge ], [ null, %if.end4.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #11
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_generic_rw_locked(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lme2510_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %i2c_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp211 = icmp sgt i32 %num, 0
  br i1 %cmp211, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %i2c_tuner_addr = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 11
  %i2c_gate = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 8
  %i2c_tuner_gate_r = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 10
  %i2c_tuner_gate_w = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 9
  %usb_mutex.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0212 = phi i32 [ 0, %for.body.lr.ph ], [ %inc124.pre-phi, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0212
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0212, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = and i16 %5, 1
  %and = zext i16 %6 to i32
  %add = add nsw i32 %i.0212, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp1 = icmp slt i32 %add, %num
  br i1 %cmp1, label %land.rhs, label %for.body.land.end_crit_edge

for.body.land.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %flags5 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 1
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags5, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool = icmp ne i16 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body.land.end_crit_edge
  %10 = phi i1 [ false, %for.body.land.end_crit_edge ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  %or = or i32 %land.ext, %and
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %i2c_tuner_addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_tuner_addr, align 1
  %15 = zext i8 %14 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %15)
  %cmp11 = icmp eq i16 %12, %15
  br i1 %cmp11, label %cond.true, label %land.end.cond.end19_crit_edge

land.end.cond.end19_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end19

cond.true:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool13.not = icmp eq i32 %or, 0
  br i1 %tobool13.not, label %cond.end19.thread, label %cond.true.cond.end19_crit_edge

cond.true.cond.end19_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end19

cond.end19:                                       ; preds = %cond.true.cond.end19_crit_edge, %land.end.cond.end19_crit_edge
  %cond20.in.in = phi ptr [ %i2c_tuner_gate_r, %cond.true.cond.end19_crit_edge ], [ %i2c_gate, %land.end.cond.end19_crit_edge ]
  %16 = ptrtoint ptr %cond20.in.in to i32
  call void @__asan_load1_noabort(i32 %16)
  %cond20.in188 = load i8, ptr %cond20.in.in, align 1
  %or.tr = trunc i32 %or to i8
  %17 = shl nuw i8 %or.tr, 7
  %conv24 = or i8 %cond20.in188, %17
  store i8 %conv24, ptr @lme2510_i2c_xfer.obuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %cond20.in188)
  %cmp26 = icmp eq i8 %cond20.in188, 5
  br i1 %cmp26, label %if.then, label %cond.end19.if.end_crit_edge

cond.end19.if.end_crit_edge:                      ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.end19.thread:                                ; preds = %cond.true
  %18 = ptrtoint ptr %i2c_tuner_gate_w to i32
  call void @__asan_load1_noabort(i32 %18)
  %cond20.in188190 = load i8, ptr %i2c_tuner_gate_w, align 1
  store i8 %cond20.in188190, ptr @lme2510_i2c_xfer.obuf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %cond20.in188190)
  %cmp26193 = icmp eq i8 %cond20.in188190, 5
  br i1 %cmp26193, label %cond.end19.thread.if.end.thread_crit_edge, label %cond.end19.thread.if.end_crit_edge

cond.end19.thread.if.end_crit_edge:               ; preds = %cond.end19.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cond.end19.thread.if.end.thread_crit_edge:        ; preds = %cond.end19.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

if.then:                                          ; preds = %cond.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool28.not = icmp eq i32 %or, 0
  br i1 %tobool28.not, label %if.then.if.end.thread_crit_edge, label %if.end.thread201

if.then.if.end.thread_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

if.end.thread201:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  store i8 2, ptr getelementptr inbounds ([64 x i8], ptr @lme2510_i2c_xfer.obuf, i32 0, i32 1), align 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 4
  %conv46203 = trunc i16 %20 to i8
  %shl47204 = shl i8 %conv46203, 1
  store i8 %shl47204, ptr getelementptr inbounds ([64 x i8], ptr @lme2510_i2c_xfer.obuf, i32 0, i32 2), align 1
  br label %if.then50

if.end.thread:                                    ; preds = %if.then.if.end.thread_crit_edge, %cond.end19.thread.if.end.thread_crit_edge
  %len32 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0212, i32 2
  %21 = ptrtoint ptr %len32 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %len32, align 4
  %conv33 = trunc i16 %22 to i8
  %add34 = add i8 %conv33, 1
  store i8 %add34, ptr getelementptr inbounds ([64 x i8], ptr @lme2510_i2c_xfer.obuf, i32 0, i32 1), align 1
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx, align 4
  %conv46196 = trunc i16 %24 to i8
  %shl47197 = shl i8 %conv46196, 1
  store i8 %shl47197, ptr getelementptr inbounds ([64 x i8], ptr @lme2510_i2c_xfer.obuf, i32 0, i32 2), align 1
  br label %if.else73

if.end:                                           ; preds = %cond.end19.thread.if.end_crit_edge, %cond.end19.if.end_crit_edge
  %len39 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0212, i32 2
  %25 = ptrtoint ptr %len39 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len39, align 4
  %conv40 = zext i16 %26 to i32
  %add41 = add nuw nsw i32 %or, %conv40
  %27 = trunc i32 %add41 to i8
  %conv43 = add i8 %27, 1
  store i8 %conv43, ptr getelementptr inbounds ([64 x i8], ptr @lme2510_i2c_xfer.obuf, i32 0, i32 1), align 1
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx, align 4
  %conv46 = trunc i16 %29 to i8
  %shl47 = shl i8 %conv46, 1
  store i8 %shl47, ptr getelementptr inbounds ([64 x i8], ptr @lme2510_i2c_xfer.obuf, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool49.not = icmp eq i32 %or, 0
  br i1 %tobool49.not, label %if.end.if.else73_crit_edge, label %if.end.if.then50_crit_edge

if.end.if.then50_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50

if.end.if.else73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else73

if.then50:                                        ; preds = %if.end.if.then50_crit_edge, %if.end.thread201
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool51.not = icmp eq i16 %6, 0
  br i1 %tobool51.not, label %if.else53, label %if.then50.if.end84_crit_edge

if.then50.if.end84_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.else53:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0212, i32 3
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf, align 4
  %len56 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0212, i32 2
  %32 = ptrtoint ptr %len56 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len56, align 4
  %conv57 = zext i16 %33 to i32
  %34 = call ptr @memcpy(ptr getelementptr inbounds ([64 x i8], ptr @lme2510_i2c_xfer.obuf, i32 0, i32 3), ptr %31, i32 %conv57)
  %len60 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 2
  %35 = ptrtoint ptr %len60 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %len60, align 4
  %conv61 = trunc i16 %36 to i8
  %37 = load i16, ptr %len56, align 4
  %conv64 = zext i16 %37 to i32
  %add65 = add nuw nsw i32 %conv64, 3
  %arrayidx66 = getelementptr [64 x i8], ptr @lme2510_i2c_xfer.obuf, i32 0, i32 %add65
  %38 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv61, ptr %arrayidx66, align 1
  br label %if.end84.sink.split

if.else73:                                        ; preds = %if.end.if.else73_crit_edge, %if.end.thread
  %buf75 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0212, i32 3
  %39 = ptrtoint ptr %buf75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf75, align 4
  %len77 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0212, i32 2
  %41 = ptrtoint ptr %len77 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %len77, align 4
  %conv78 = zext i16 %42 to i32
  %43 = call ptr @memcpy(ptr getelementptr inbounds ([64 x i8], ptr @lme2510_i2c_xfer.obuf, i32 0, i32 3), ptr %40, i32 %conv78)
  br label %if.end84.sink.split

if.end84.sink.split:                              ; preds = %if.else73, %if.else53
  %len56.sink = phi ptr [ %len56, %if.else53 ], [ %len77, %if.else73 ]
  %.sink217 = phi i16 [ 4, %if.else53 ], [ 3, %if.else73 ]
  %tobool49.not199.ph = phi i1 [ false, %if.else53 ], [ true, %if.else73 ]
  %44 = ptrtoint ptr %len56.sink to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %len56.sink, align 4
  %add70 = add i16 %45, %.sink217
  br label %if.end84

if.end84:                                         ; preds = %if.end84.sink.split, %if.then50.if.end84_crit_edge
  %tobool49.not199 = phi i1 [ false, %if.then50.if.end84_crit_edge ], [ %tobool49.not199.ph, %if.end84.sink.split ]
  %len.0 = phi i16 [ 3, %if.then50.if.end84_crit_edge ], [ %add70, %if.end84.sink.split ]
  %conv85 = zext i16 %len.0 to i32
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %i2c_talk_onoff.i = getelementptr inbounds %struct.lme2510_state, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %i2c_talk_onoff.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %i2c_talk_onoff.i, align 1
  %49 = load ptr, ptr %priv, align 8
  %50 = tail call i32 @llvm.smax.i32(i32 %conv85, i32 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %50)
  %cmp1.i.i = icmp ugt i32 %50, 64
  br i1 %cmp1.i.i, label %if.end84.do.body_crit_edge, label %if.end.i.i

if.end84.do.body_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end.i.i:                                       ; preds = %if.end84
  %call.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i.do.body_crit_edge, label %lme2510_msg.exit

if.end.i.i.do.body_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lme2510_msg.exit:                                 ; preds = %if.end.i.i
  %usb_buffer.i.i = getelementptr inbounds %struct.lme2510_state, ptr %49, i32 0, i32 17
  %51 = call ptr @memcpy(ptr %usb_buffer.i.i, ptr @lme2510_i2c_xfer.obuf, i32 %conv85)
  %call10.i.i = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %1, ptr noundef %usb_buffer.i.i, i16 noundef zeroext %len.0, ptr noundef %usb_buffer.i.i, i16 noundef zeroext 64) #11
  %52 = call ptr @memcpy(ptr @lme2510_i2c_xfer.ibuf, ptr %usb_buffer.i.i, i32 64)
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp87 = icmp slt i32 %call10.i.i, 0
  br i1 %cmp87, label %lme2510_msg.exit.do.body_crit_edge, label %if.end104

lme2510_msg.exit.do.body_crit_edge:               ; preds = %lme2510_msg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %lme2510_msg.exit.do.body_crit_edge, %if.end.i.i.do.body_crit_edge, %if.end84.do.body_crit_edge
  %53 = load i32, ptr @dvb_usb_lme2510_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp90 = icmp sgt i32 %53, 0
  br i1 %cmp90, label %do.body93, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body93:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lme2510_i2c_xfer.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lme2510_i2c_xfer, %if.then98)) #11
          to label %cleanup [label %if.then98], !srcloc !335

if.then98:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lme2510_i2c_xfer.__UNIQUE_ID_ddebug405, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end104:                                        ; preds = %lme2510_msg.exit
  br i1 %tobool49.not199, label %if.end104.for.inc_crit_edge, label %if.then106

if.end104.for.inc_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then106:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool107.not = icmp eq i16 %6, 0
  br i1 %tobool107.not, label %if.else114, label %if.then108

if.then108:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  %buf110 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0212, i32 3
  %54 = ptrtoint ptr %buf110 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buf110, align 4
  %len112 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0212, i32 2
  %56 = ptrtoint ptr %len112 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %len112, align 4
  %conv113 = zext i16 %57 to i32
  %58 = call ptr @memcpy(ptr %55, ptr getelementptr inbounds ([64 x i8], ptr @lme2510_i2c_xfer.ibuf, i32 0, i32 1), i32 %conv113)
  br label %for.inc

if.else114:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  %buf117 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 3
  %59 = ptrtoint ptr %buf117 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buf117, align 4
  %len120 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 2
  %61 = ptrtoint ptr %len120 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %len120, align 4
  %conv121 = zext i16 %62 to i32
  %63 = call ptr @memcpy(ptr %60, ptr getelementptr inbounds ([64 x i8], ptr @lme2510_i2c_xfer.ibuf, i32 0, i32 1), i32 %conv121)
  %.pre = add i32 %i.0212, 2
  br label %for.inc

for.inc:                                          ; preds = %if.else114, %if.then108, %if.end104.for.inc_crit_edge
  %inc124.pre-phi = phi i32 [ %add, %if.end104.for.inc_crit_edge ], [ %.pre, %if.else114 ], [ %add, %if.then108 ]
  %cmp = icmp slt i32 %inc124.pre-phi, %num
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then98, %do.body93, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.body93 ], [ -11, %if.then98 ], [ -11, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %inc124.pre-phi, %for.inc.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lme2510_i2c_func(ptr nocapture noundef readnone %adapter) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lme2510_enable_pid(ptr noundef %d, i8 noundef zeroext %index, i16 noundef zeroext %pid_out) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mul = shl i8 %index, 1
  %add = add i8 %mul, 2
  %2 = load i32, ptr @dvb_usb_lme2510_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.body5, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lme2510_enable_pid.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lme2510_enable_pid, %if.then8)) #11
          to label %do.end12 [label %if.then8], !srcloc !335

if.then8:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %conv9 = zext i16 %pid_out to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lme2510_enable_pid.__UNIQUE_ID_ddebug396, ptr noundef nonnull @.str.36, i32 noundef %conv9) #11
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %do.body5, %entry.do.end12_crit_edge
  %pid_size = getelementptr inbounds %struct.lme2510_state, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %pid_size to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pid_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp14 = icmp eq i8 %4, 0
  br i1 %cmp14, label %if.then16, label %do.end12.if.end18_crit_edge

do.end12.if.end18_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then16:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call fastcc i32 @lme2510_stream_restart(ptr noundef %d)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %do.end12.if.end18_crit_edge
  %ret.0 = phi i32 [ %call17, %if.then16 ], [ 0, %do.end12.if.end18_crit_edge ]
  store i8 %mul, ptr getelementptr inbounds ([8 x i8], ptr @lme2510_enable_pid.pid_buff, i32 0, i32 2), align 2
  %conv21 = trunc i16 %pid_out to i8
  store i8 %conv21, ptr getelementptr inbounds ([8 x i8], ptr @lme2510_enable_pid.pid_buff, i32 0, i32 3), align 1
  %5 = or i8 %mul, 1
  store i8 %5, ptr getelementptr inbounds ([8 x i8], ptr @lme2510_enable_pid.pid_buff, i32 0, i32 4), align 4
  %6 = lshr i16 %pid_out, 8
  %conv26 = trunc i16 %6 to i8
  store i8 %conv26, ptr getelementptr inbounds ([8 x i8], ptr @lme2510_enable_pid.pid_buff, i32 0, i32 5), align 1
  %7 = ptrtoint ptr %pid_size to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pid_size, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %add, i8 %8)
  %cmp30 = icmp ugt i8 %add, %8
  br i1 %cmp30, label %if.then32, label %if.end18.if.end34_crit_edge

if.end18.if.end34_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then32:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %pid_size to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %add, ptr %pid_size, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end18.if.end34_crit_edge
  %10 = ptrtoint ptr %pid_size to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pid_size, align 1
  %add37 = xor i8 %11, -128
  store i8 %add37, ptr getelementptr inbounds ([8 x i8], ptr @lme2510_enable_pid.pid_buff, i32 0, i32 7), align 1
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %if.end34.lme2510_usb_talk.exit_crit_edge, label %if.end4.i

if.end34.lme2510_usb_talk.exit_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %lme2510_usb_talk.exit

if.end4.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %usb_buffer.i = getelementptr inbounds %struct.lme2510_state, ptr %13, i32 0, i32 17
  %14 = load i64, ptr @lme2510_enable_pid.pid_buff, align 8
  %15 = ptrtoint ptr %usb_buffer.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %usb_buffer.i, align 4
  %call10.i = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %usb_buffer.i, i16 noundef zeroext 8, ptr noundef %usb_buffer.i, i16 noundef zeroext 1) #11
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #11
  br label %lme2510_usb_talk.exit

lme2510_usb_talk.exit:                            ; preds = %if.end4.i, %if.end34.lme2510_usb_talk.exit_crit_edge
  %retval.0.i61 = phi i32 [ %call10.i, %if.end4.i ], [ -11, %if.end34.lme2510_usb_talk.exit_crit_edge ]
  %or40 = or i32 %retval.0.i61, %ret.0
  %stream_on = getelementptr inbounds %struct.lme2510_state, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %stream_on to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %stream_on, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool41.not = icmp eq i8 %17, 0
  br i1 %tobool41.not, label %lme2510_usb_talk.exit.if.end45_crit_edge, label %if.then42

lme2510_usb_talk.exit.if.end45_crit_edge:         ; preds = %lme2510_usb_talk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then42:                                        ; preds = %lme2510_usb_talk.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = tail call fastcc i32 @lme2510_stream_restart(ptr noundef %d)
  %or44 = or i32 %call43, %or40
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %lme2510_usb_talk.exit.if.end45_crit_edge
  %ret.1 = phi i32 [ %or44, %if.then42 ], [ %or40, %lme2510_usb_talk.exit.if.end45_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lme2510_stream_restart(ptr noundef %d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %pid_off = getelementptr inbounds %struct.lme2510_state, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %pid_off to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pid_off, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %if.then.if.end_crit_edge, label %if.end4.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end4.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %usb_buffer.i = getelementptr inbounds %struct.lme2510_state, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %usb_buffer.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 217862727209525377, ptr %usb_buffer.i, align 4
  %call10.i = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %usb_buffer.i, i16 noundef zeroext 8, ptr noundef %usb_buffer.i, i16 noundef zeroext 1) #11
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #11
  br label %if.end

if.end:                                           ; preds = %if.end4.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %usb_mutex.i8 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  %call.i9 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i8, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp2.i10 = icmp slt i32 %call.i9, 0
  br i1 %cmp2.i10, label %if.end.lme2510_usb_talk.exit15_crit_edge, label %if.end4.i13

if.end.lme2510_usb_talk.exit15_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lme2510_usb_talk.exit15

if.end4.i13:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %usb_buffer.i11 = getelementptr inbounds %struct.lme2510_state, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %usb_buffer.i11 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1536, ptr %usb_buffer.i11, align 4
  %call10.i12 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %d, ptr noundef %usb_buffer.i11, i16 noundef zeroext 2, ptr noundef %usb_buffer.i11, i16 noundef zeroext 1) #11
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i8) #11
  br label %lme2510_usb_talk.exit15

lme2510_usb_talk.exit15:                          ; preds = %if.end4.i13, %if.end.lme2510_usb_talk.exit15_crit_edge
  %retval.0.i14 = phi i32 [ %call10.i12, %if.end4.i13 ], [ -11, %if.end.lme2510_usb_talk.exit15_crit_edge ]
  ret i32 %retval.0.i14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm04_read_status(ptr noundef %fe, ptr noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %priv3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 8
  %i2c_talk_onoff = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %i2c_talk_onoff to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i2c_talk_onoff, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end18, label %if.then

if.then:                                          ; preds = %entry
  %fe_read_status = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 18
  %10 = ptrtoint ptr %fe_read_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fe_read_status, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.then.if.end9_crit_edge, label %if.then5

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %if.then
  %call = tail call i32 %11(ptr noundef %fe, ptr noundef %status) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then5.cleanup_crit_edge, label %if.then5.if.end9_crit_edge

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.then5.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %ret.0 = phi i32 [ %call, %if.then5.if.end9_crit_edge ], [ 0, %if.then.if.end9_crit_edge ]
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %lock_status = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %lock_status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %lock_status, align 4
  %15 = load i32, ptr %status, align 4
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %land.lhs.true

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end9
  %stream_on = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 12
  %16 = ptrtoint ptr %stream_on to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %stream_on, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.then13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %i2c_mutex, i32 noundef 0) #11
  %18 = ptrtoint ptr %i2c_talk_onoff to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %i2c_talk_onoff, align 1
  %call15 = tail call fastcc i32 @lme2510_stream_restart(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #11
  br label %cleanup

if.end18:                                         ; preds = %entry
  %tuner_config = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 3
  %19 = ptrtoint ptr %tuner_config to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tuner_config, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp20 = icmp eq i8 %20, 4
  br i1 %cmp20, label %land.lhs.true22, label %if.end18.if.end28_crit_edge

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true22:                                  ; preds = %if.end18
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %22, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp23 = icmp slt i32 %sub, 0
  br i1 %cmp23, label %if.then25, label %land.lhs.true22.if.end28_crit_edge

land.lhs.true22.if.end28_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then25:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  %lock_status26 = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %lock_status26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lock_status26, align 4
  %and27 = and i32 %25, -17
  store i32 %and27, ptr %lock_status26, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %land.lhs.true22.if.end28_crit_edge, %if.end18.if.end28_crit_edge
  %lock_status29 = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 1
  %26 = ptrtoint ptr %lock_status29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lock_status29, align 4
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %status, align 4
  %and30 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dvb, align 4
  %priv34 = getelementptr inbounds %struct.dvb_adapter, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %priv34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv34, align 4
  %33 = ptrtoint ptr %i2c_talk_onoff to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %i2c_talk_onoff, align 1
  tail call fastcc void @lme2510_update_stats(ptr noundef %32)
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end28.cleanup_crit_edge, %if.then13, %land.lhs.true.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then5.cleanup_crit_edge ], [ %call15, %if.then13 ], [ %ret.0, %land.lhs.true.cleanup_crit_edge ], [ %ret.0, %if.end9.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm04_read_signal_strength(ptr noundef %fe, ptr noundef %strength) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %priv3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 8
  %fe_read_signal_strength = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %fe_read_signal_strength to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_read_signal_strength, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %stream_on = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %stream_on to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stream_on, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %9(ptr noundef %fe, ptr noundef %strength) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %12 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp = icmp eq i8 %13, 2
  br i1 %cmp, label %if.then9, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %14, align 1
  %conv13 = trunc i64 %16 to i16
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.if.end14_crit_edge
  %storemerge = phi i16 [ %conv13, %if.then9 ], [ 0, %if.end.if.end14_crit_edge ]
  %17 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %storemerge, ptr %strength, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm04_read_snr(ptr noundef %fe, ptr noundef %snr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %priv3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 8
  %fe_read_snr = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %fe_read_snr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_read_snr, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %stream_on = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %stream_on to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stream_on, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %9(ptr noundef %fe, ptr noundef %snr) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %12 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp = icmp eq i8 %13, 2
  br i1 %cmp, label %if.then8, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %14, align 1
  %conv12 = trunc i64 %16 to i16
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  %storemerge = phi i16 [ %conv12, %if.then8 ], [ 0, %if.end.if.end13_crit_edge ]
  %17 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %storemerge, ptr %snr, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm04_read_ber(ptr noundef %fe, ptr noundef %ber) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %priv3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 8
  %fe_read_ber = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %fe_read_ber to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_read_ber, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %stream_on = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %stream_on to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stream_on, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %9(ptr noundef %fe, ptr noundef %ber) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ber, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm04_read_ucblocks(ptr noundef %fe, ptr noundef %ucblocks) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %priv3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 8
  %fe_read_ucblocks = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %fe_read_ucblocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_read_ucblocks, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %stream_on = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %stream_on to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stream_on, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %9(ptr noundef %fe, ptr noundef %ucblocks) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ucblocks, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm04_lme2510_set_voltage(ptr noundef %fe, i32 noundef %voltage) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %priv13 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv13, align 8
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %i2c_mutex, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %voltage)
  %cond26 = icmp eq i32 %voltage, 1
  %8 = ptrtoint ptr %priv13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv13, align 8
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cond26, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  br i1 %cmp2.i, label %sw.bb.sw.epilog_crit_edge, label %if.end4.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end4.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %usb_buffer.i = getelementptr inbounds %struct.lme2510_state, ptr %9, i32 0, i32 17
  %10 = call ptr @memcpy(ptr %usb_buffer.i, ptr @dm04_lme2510_set_voltage.voltage_high, i32 3)
  %call10.i = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %add.ptr, ptr noundef %usb_buffer.i, i16 noundef zeroext 3, ptr noundef %usb_buffer.i, i16 noundef zeroext 1) #11
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %entry
  br i1 %cmp2.i, label %sw.default.sw.epilog_crit_edge, label %if.end4.i47

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end4.i47:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %usb_buffer.i45 = getelementptr inbounds %struct.lme2510_state, ptr %9, i32 0, i32 17
  %11 = call ptr @memcpy(ptr %usb_buffer.i45, ptr @dm04_lme2510_set_voltage.voltage_low, i32 3)
  %call10.i46 = tail call i32 @dvb_usbv2_generic_rw_locked(ptr noundef %add.ptr, ptr noundef %usb_buffer.i45, i16 noundef zeroext 3, ptr noundef %usb_buffer.i45, i16 noundef zeroext 1) #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end4.i47, %if.end4.i
  %ret.0.ph = phi i32 [ %call10.i46, %if.end4.i47 ], [ %call10.i, %if.end4.i ]
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.default.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -11, %sw.bb.sw.epilog_crit_edge ], [ -11, %sw.default.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #11
  %tuner_config = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %tuner_config to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tuner_config, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp = icmp eq i8 %13, 4
  br i1 %cmp, label %if.then, label %sw.epilog.if.end23_crit_edge

sw.epilog.if.end23_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then:                                          ; preds = %sw.epilog
  %fe_set_voltage = getelementptr inbounds %struct.lme2510_state, ptr %7, i32 0, i32 23
  %14 = ptrtoint ptr %fe_set_voltage to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fe_set_voltage, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.then.if.end23_crit_edge, label %if.then20

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then20:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 %15(ptr noundef %fe, i32 noundef %voltage) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then.if.end23_crit_edge, %sw.epilog.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp24 = icmp slt i32 %ret.0, 0
  %cond = select i1 %cmp24, i32 -19, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sharp_z0194a_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %srate)
  %cmp = icmp ult i32 %srate, 1500000
  br i1 %cmp, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 3000000
  br i1 %cmp1, label %if.else.if.end19_crit_edge, label %if.else3

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 7000000
  br i1 %cmp4, label %if.else3.if.end19_crit_edge, label %if.else6

if.else3.if.end19_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 14000000
  br i1 %cmp7, label %if.else6.if.end19_crit_edge, label %if.else9

if.else6.if.end19_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %srate)
  %cmp10 = icmp ult i32 %srate, 30000000
  br i1 %cmp10, label %if.else9.if.end19_crit_edge, label %if.else12

if.else9.if.end19_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp13 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp13, i8 -76, i8 0
  %spec.select40 = select i1 %cmp13, i8 81, i8 0
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.else9.if.end19_crit_edge, %if.else6.if.end19_crit_edge, %if.else3.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %aclk.0 = phi i8 [ -73, %entry.if.end19_crit_edge ], [ -73, %if.else.if.end19_crit_edge ], [ -73, %if.else3.if.end19_crit_edge ], [ -73, %if.else6.if.end19_crit_edge ], [ -74, %if.else9.if.end19_crit_edge ], [ %spec.select, %if.else12 ]
  %bclk.0 = phi i8 [ 71, %entry.if.end19_crit_edge ], [ 75, %if.else.if.end19_crit_edge ], [ 79, %if.else3.if.end19_crit_edge ], [ 83, %if.else6.if.end19_crit_edge ], [ 83, %if.else9.if.end19_crit_edge ], [ %spec.select40, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #11
  br label %stv0299_writereg.exit46

stv0299_writereg.exit:                            ; preds = %if.end19
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #11
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %stv0299_writereg.exit46

if.then.i45:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i44 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i41, i32 noundef 2) #11
  br label %stv0299_writereg.exit46

stv0299_writereg.exit46:                          ; preds = %if.then.i45, %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #11
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %stv0299_writereg.exit52

if.then.i51:                                      ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #13
  %call.i50 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i47, i32 noundef 2) #11
  br label %stv0299_writereg.exit52

stv0299_writereg.exit52:                          ; preds = %if.then.i51, %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #11
  %shr22 = lshr i32 %ratio, 8
  %conv24 = trunc i32 %shr22 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %stv0299_writereg.exit58

if.then.i57:                                      ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #13
  %call.i56 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i53, i32 noundef 2) #11
  br label %stv0299_writereg.exit58

stv0299_writereg.exit58:                          ; preds = %if.then.i57, %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #11
  %19 = trunc i32 %ratio to i8
  %conv27 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %stv0299_writereg.exit64

if.then.i63:                                      ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #13
  %call.i62 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i59, i32 noundef 2) #11
  br label %stv0299_writereg.exit64

stv0299_writereg.exit64:                          ; preds = %if.then.i63, %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @lme2510_update_stats(ptr nocapture noundef readonly %adap) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %fe1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %4 = ptrtoint ptr %fe1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %block_count = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 49
  %6 = ptrtoint ptr %block_count to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %block_count, align 1
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 49, i32 1
  %7 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %stat, align 1
  %block_error = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 48
  %8 = ptrtoint ptr %block_error to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %block_error, align 2
  %stat6 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 48, i32 1
  %9 = ptrtoint ptr %stat6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %stat6, align 1
  %post_bit_count = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 47
  %10 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %post_bit_count, align 1
  %stat11 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 47, i32 1
  %11 = ptrtoint ptr %stat11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %stat11, align 1
  %post_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 46
  %12 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %post_bit_error, align 4
  %stat16 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 46, i32 1
  %13 = ptrtoint ptr %stat16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %stat16, align 1
  %i2c_talk_onoff = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %i2c_talk_onoff to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i2c_talk_onoff, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  br i1 %tobool19.not, label %if.end31, label %if.then20

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %strength = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 42
  %16 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %strength, align 4
  %stat23 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 42, i32 1
  %17 = ptrtoint ptr %stat23 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %stat23, align 1
  %cnr = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 43
  %18 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %cnr, align 1
  %stat28 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 43, i32 1
  %19 = ptrtoint ptr %stat28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %stat28, align 1
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %tuner_config = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %tuner_config to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tuner_config, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %21, label %if.end31.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %if.end31.sw.bb44_crit_edge
    i8 3, label %if.end31.sw.bb44_crit_edge131
    i8 4, label %sw.bb62
  ]

if.end31.sw.bb44_crit_edge131:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb44

if.end31.sw.bb44_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb44

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %signal_level = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %signal_level to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %signal_level, align 2
  %25 = xor i8 %24, -1
  %sub = zext i8 %25 to i32
  %or = mul nuw nsw i32 %sub, 257
  %signal_sn = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 5
  %26 = ptrtoint ptr %signal_sn to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %signal_sn, align 1
  %28 = xor i8 %27, -1
  %sub38 = zext i8 %28 to i32
  %or43 = mul nuw nsw i32 %sub38, 257
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end31.sw.bb44_crit_edge, %if.end31.sw.bb44_crit_edge131
  %signal_level45 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %signal_level45 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %signal_level45, align 2
  %conv46 = zext i8 %30 to i32
  %div.neg = mul nsw i32 %conv46, -640
  %sub49 = add nsw i32 %div.neg, 65535
  %signal_sn50 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 5
  %31 = ptrtoint ptr %signal_sn50 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %signal_sn50, align 1
  %33 = xor i8 %32, -1
  %sub52 = zext i8 %33 to i32
  %34 = mul nuw nsw i32 %sub52, 3
  %mul54 = add nsw i32 %34, -483
  %shl60 = shl nsw i32 %mul54, 8
  %or61 = or i32 %shl60, %mul54
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %signal_level63 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 4
  %35 = ptrtoint ptr %signal_level63 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %signal_level63, align 2
  %conv64 = zext i8 %36 to i32
  %shl67 = shl nuw nsw i32 %conv64, 8
  %or68 = or i32 %shl67, %conv64
  %signal_sn69 = getelementptr inbounds %struct.lme2510_state, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %signal_sn69 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %signal_sn69, align 1
  %conv70 = zext i8 %38 to i32
  %shl73 = shl nuw nsw i32 %conv70, 8
  %or74 = or i32 %shl73, %conv70
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb62, %sw.bb44, %sw.bb, %if.end31.sw.epilog_crit_edge
  %s_tmp.0 = phi i32 [ 0, %if.end31.sw.epilog_crit_edge ], [ %or68, %sw.bb62 ], [ %sub49, %sw.bb44 ], [ %or, %sw.bb ]
  %c_tmp.0 = phi i32 [ 0, %if.end31.sw.epilog_crit_edge ], [ %or74, %sw.bb62 ], [ %or61, %sw.bb44 ], [ %or43, %sw.bb ]
  %strength75 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 42
  %39 = ptrtoint ptr %strength75 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %strength75, align 4
  %stat78 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 42, i32 1
  %40 = ptrtoint ptr %stat78 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %stat78, align 1
  %conv81 = zext i32 %s_tmp.0 to i64
  %41 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %conv81, ptr %41, align 1
  %cnr85 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 43
  %43 = ptrtoint ptr %cnr85 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %cnr85, align 1
  %stat88 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 43, i32 1
  %44 = ptrtoint ptr %stat88 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %stat88, align 1
  %conv91 = zext i32 %c_tmp.0 to i64
  %45 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %conv91, ptr %45, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lme2510_int_response(ptr noundef %lme_urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %lme_urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %conv = zext i8 %3 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %status = getelementptr inbounds %struct.urb, ptr %lme_urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %7, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 -110, label %entry.sw.epilog_crit_edge322
    i32 -104, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge323
    i32 -108, label %entry.cleanup_crit_edge324
  ]

entry.cleanup_crit_edge324:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge323:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.sw.epilog_crit_edge322:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i32 noundef %7) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge322
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %lme_urb, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %lme_urb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %12)
  %cmp = icmp ugt i32 %12, 39
  %div293 = lshr i32 %12, 3
  %spec.select = select i1 %cmp, i32 4, i32 %div293
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp7318.not = icmp eq i32 %spec.select, 0
  br i1 %cmp7318.not, label %sw.epilog.for.end_crit_edge, label %for.body.lr.ph

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %tuner_config = getelementptr inbounds %struct.lme2510_state, ptr %5, i32 0, i32 3
  %signal_level140 = getelementptr inbounds %struct.lme2510_state, ptr %5, i32 0, i32 4
  %signal_sn142 = getelementptr inbounds %struct.lme2510_state, ptr %5, i32 0, i32 5
  %time_key144 = getelementptr inbounds %struct.lme2510_state, ptr %5, i32 0, i32 6
  %lock_status = getelementptr inbounds %struct.lme2510_state, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0320 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %signal_lock.0319 = phi i8 [ 0, %for.body.lr.ph ], [ %signal_lock.2, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %i.0320, 3
  %arrayidx = getelementptr i8, ptr %10, i32 %mul
  %13 = load i32, ptr @dvb_usb_lme2510_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp10 = icmp sgt i32 %13, 4
  br i1 %cmp10, label %do.body12, label %for.body.do.end26_crit_edge

for.body.do.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

do.body12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lme2510_int_response.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lme2510_int_response, %if.then17)) #11
          to label %do.end26 [label %if.then17], !srcloc !335

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv19 = zext i8 %15 to i32
  %arrayidx20 = getelementptr i8, ptr %arrayidx, i32 1
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lme2510_int_response.__UNIQUE_ID_ddebug397, ptr noundef nonnull @.str.113, i32 noundef %spec.select, i32 noundef %i.0320, i32 noundef %conv19, i32 noundef %conv21) #11
  br label %do.end26

do.end26:                                         ; preds = %if.then17, %do.body12, %for.body.do.end26_crit_edge
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %19, label %do.body205 [
    i8 -86, label %do.body30
    i8 -69, label %sw.bb105
    i8 -52, label %do.body181
  ]

do.body30:                                        ; preds = %do.end26
  %21 = load i32, ptr @dvb_usb_lme2510_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp31 = icmp sgt i32 %21, 0
  br i1 %cmp31, label %do.body34, label %do.body30.do.end52_crit_edge

do.body30.do.end52_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

do.body34:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lme2510_int_response.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lme2510_int_response, %if.then46)) #11
          to label %do.end52 [label %if.then46], !srcloc !335

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lme2510_int_response.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.114, ptr noundef %arrayidx) #11
  br label %do.end52

do.end52:                                         ; preds = %if.then46, %do.body34, %do.body30.do.end52_crit_edge
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %id, align 4
  %conv56 = zext i8 %23 to i32
  %.neg295 = mul nsw i32 %conv56, -2280
  %idx.neg57 = add nsw i32 %.neg295, -1616
  %add.ptr58 = getelementptr i8, ptr %1, i32 %idx.neg57
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr58, i32 0, i32 12
  %24 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rc_dev, align 8
  %tobool59.not = icmp eq ptr %25, null
  br i1 %tobool59.not, label %do.end52.for.inc_crit_edge, label %if.end61

do.end52.for.inc_crit_edge:                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end61:                                         ; preds = %do.end52
  %arrayidx62 = getelementptr i8, ptr %arrayidx, i32 2
  %26 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %27 to i32
  %shl = shl nuw i32 %conv63, 24
  %arrayidx64 = getelementptr i8, ptr %arrayidx, i32 3
  %28 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %29 to i32
  %shl66 = shl nuw nsw i32 %conv65, 16
  %or = or i32 %shl66, %shl
  %arrayidx67 = getelementptr i8, ptr %arrayidx, i32 4
  %30 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %31 to i32
  %shl69 = shl nuw nsw i32 %conv68, 8
  %or70 = or i32 %or, %shl69
  %arrayidx71 = getelementptr i8, ptr %arrayidx, i32 5
  %32 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %33 to i32
  %or73 = or i32 %or70, %conv72
  %34 = load i32, ptr @dvb_usb_lme2510_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp75 = icmp sgt i32 %34, 0
  br i1 %cmp75, label %do.body78, label %if.end61.do.end96_crit_edge

if.end61.do.end96_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end96

do.body78:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lme2510_int_response.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lme2510_int_response, %if.then90)) #11
          to label %do.end96 [label %if.then90], !srcloc !335

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lme2510_int_response.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.115, i32 noundef %or73) #11
  br label %do.end96

do.end96:                                         ; preds = %if.then90, %do.body78, %if.end61.do.end96_crit_edge
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %id, align 4
  %conv100 = zext i8 %36 to i32
  %.neg296 = mul nsw i32 %conv100, -2280
  %idx.neg101 = add nsw i32 %.neg296, -1616
  %add.ptr102 = getelementptr i8, ptr %1, i32 %idx.neg101
  %rc_dev103 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr102, i32 0, i32 12
  %37 = ptrtoint ptr %rc_dev103 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rc_dev103, align 8
  %conv104 = zext i32 %or73 to i64
  tail call void @rc_keydown(ptr noundef %38, i32 noundef 11, i64 noundef %conv104, i8 noundef zeroext 0) #11
  br label %for.inc

sw.bb105:                                         ; preds = %do.end26
  %39 = ptrtoint ptr %tuner_config to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tuner_config, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %40, label %sw.bb105.sw.epilog146_crit_edge [
    i8 1, label %sw.bb107
    i8 2, label %sw.bb105.sw.bb115_crit_edge
    i8 3, label %sw.bb105.sw.bb115_crit_edge325
    i8 4, label %sw.bb134
  ]

sw.bb105.sw.bb115_crit_edge325:                   ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb115

sw.bb105.sw.bb115_crit_edge:                      ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb115

sw.bb105.sw.epilog146_crit_edge:                  ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog146

sw.bb107:                                         ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx108 = getelementptr i8, ptr %arrayidx, i32 2
  %42 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx108, align 1
  %44 = and i8 %43, 32
  %arrayidx112 = getelementptr i8, ptr %arrayidx, i32 4
  %45 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx112, align 1
  %47 = ptrtoint ptr %signal_level140 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %signal_level140, align 2
  %arrayidx113 = getelementptr i8, ptr %arrayidx, i32 3
  %48 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx113, align 1
  %50 = ptrtoint ptr %signal_sn142 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %signal_sn142, align 1
  %arrayidx114 = getelementptr i8, ptr %arrayidx, i32 7
  %51 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx114, align 1
  %53 = ptrtoint ptr %time_key144 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %time_key144, align 4
  br label %sw.epilog146

sw.bb115:                                         ; preds = %sw.bb105.sw.bb115_crit_edge, %sw.bb105.sw.bb115_crit_edge325
  %arrayidx116 = getelementptr i8, ptr %arrayidx, i32 1
  %54 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %55)
  %cmp118 = icmp eq i8 %55, 3
  br i1 %cmp118, label %if.then120, label %if.else

if.then120:                                       ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx121 = getelementptr i8, ptr %arrayidx, i32 2
  %56 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx121, align 1
  %58 = and i8 %57, 16
  %arrayidx125 = getelementptr i8, ptr %arrayidx, i32 3
  %59 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx125, align 1
  %61 = ptrtoint ptr %signal_level140 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %signal_level140, align 2
  %arrayidx127 = getelementptr i8, ptr %arrayidx, i32 4
  %62 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx127, align 1
  %64 = ptrtoint ptr %signal_sn142 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %signal_sn142, align 1
  br label %sw.epilog146

if.else:                                          ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx129 = getelementptr i8, ptr %arrayidx, i32 4
  %65 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx129, align 1
  %67 = ptrtoint ptr %signal_level140 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %signal_level140, align 2
  %arrayidx131 = getelementptr i8, ptr %arrayidx, i32 5
  %68 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx131, align 1
  %70 = ptrtoint ptr %signal_sn142 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %signal_sn142, align 1
  br label %sw.epilog146

sw.bb134:                                         ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx135 = getelementptr i8, ptr %arrayidx, i32 2
  %71 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx135, align 1
  %73 = and i8 %72, -18
  %arrayidx139 = getelementptr i8, ptr %arrayidx, i32 5
  %74 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx139, align 1
  %76 = ptrtoint ptr %signal_level140 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %signal_level140, align 2
  %arrayidx141 = getelementptr i8, ptr %arrayidx, i32 4
  %77 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx141, align 1
  %79 = ptrtoint ptr %signal_sn142 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %signal_sn142, align 1
  %arrayidx143 = getelementptr i8, ptr %arrayidx, i32 7
  %80 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx143, align 1
  %82 = ptrtoint ptr %time_key144 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %time_key144, align 4
  br label %sw.epilog146

sw.epilog146:                                     ; preds = %sw.bb134, %if.else, %if.then120, %sw.bb107, %sw.bb105.sw.epilog146_crit_edge
  %signal_lock.1 = phi i8 [ %signal_lock.0319, %sw.bb105.sw.epilog146_crit_edge ], [ %73, %sw.bb134 ], [ %58, %if.then120 ], [ %signal_lock.0319, %if.else ], [ %44, %sw.bb107 ]
  %arrayidx147 = getelementptr i8, ptr %arrayidx, i32 2
  %83 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx147, align 1
  %85 = and i8 %84, 1
  %or151294 = or i8 %85, %signal_lock.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or151294)
  %tobool153.not = icmp eq i8 %or151294, 0
  br i1 %tobool153.not, label %if.then154, label %sw.epilog146.if.end156_crit_edge

sw.epilog146.if.end156_crit_edge:                 ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

if.then154:                                       ; preds = %sw.epilog146
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %lock_status to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %lock_status, align 4
  %and155 = and i32 %87, -17
  store i32 %and155, ptr %lock_status, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %sw.epilog146.if.end156_crit_edge
  tail call fastcc void @lme2510_update_stats(ptr noundef %1)
  %88 = load i32, ptr @dvb_usb_lme2510_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %88)
  %cmp158 = icmp sgt i32 %88, 4
  br i1 %cmp158, label %do.body161, label %if.end156.for.inc_crit_edge

if.end156.for.inc_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body161:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lme2510_int_response.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lme2510_int_response, %if.then173)) #11
          to label %for.inc [label %if.then173], !srcloc !335

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lme2510_int_response.__UNIQUE_ID_ddebug400, ptr noundef nonnull @.str.116, ptr noundef %arrayidx) #11
  br label %for.inc

do.body181:                                       ; preds = %do.end26
  %89 = load i32, ptr @dvb_usb_lme2510_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp182 = icmp sgt i32 %89, 0
  br i1 %cmp182, label %do.body185, label %do.body181.for.inc_crit_edge

do.body181.for.inc_crit_edge:                     ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body185:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lme2510_int_response.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lme2510_int_response, %if.then197)) #11
          to label %for.inc [label %if.then197], !srcloc !335

if.then197:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lme2510_int_response.__UNIQUE_ID_ddebug401, ptr noundef nonnull @.str.117, ptr noundef %arrayidx) #11
  br label %for.inc

do.body205:                                       ; preds = %do.end26
  %90 = load i32, ptr @dvb_usb_lme2510_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp206 = icmp sgt i32 %90, 0
  br i1 %cmp206, label %do.body209, label %do.body205.for.inc_crit_edge

do.body205.for.inc_crit_edge:                     ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body209:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lme2510_int_response.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lme2510_int_response, %if.then221)) #11
          to label %for.inc [label %if.then221], !srcloc !335

if.then221:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lme2510_int_response.__UNIQUE_ID_ddebug402, ptr noundef nonnull @.str.118, ptr noundef %arrayidx) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then221, %do.body209, %do.body205.for.inc_crit_edge, %if.then197, %do.body185, %do.body181.for.inc_crit_edge, %if.then173, %do.body161, %if.end156.for.inc_crit_edge, %do.end96, %do.end52.for.inc_crit_edge
  %signal_lock.2 = phi i8 [ %signal_lock.0319, %if.then221 ], [ %signal_lock.0319, %do.body205.for.inc_crit_edge ], [ %signal_lock.0319, %if.then197 ], [ %signal_lock.0319, %do.body181.for.inc_crit_edge ], [ %or151294, %if.then173 ], [ %or151294, %if.end156.for.inc_crit_edge ], [ %signal_lock.0319, %do.end96 ], [ %signal_lock.0319, %do.end52.for.inc_crit_edge ], [ %or151294, %do.body161 ], [ %signal_lock.0319, %do.body185 ], [ %signal_lock.0319, %do.body209 ]
  %inc = add nuw nsw i32 %i.0320, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %call229 = tail call i32 @usb_submit_urb(ptr noundef %lme_urb, i32 noundef 2592) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %91, 20
  %92 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add, ptr %5, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge323, %entry.cleanup_crit_edge324
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !21, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !57, !58, !59, !61, !63, !64, !66, !68, !70, !72, !74, !75, !76, !77, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !122, !124, !126, !128, !129, !130, !132, !134, !136, !137, !138, !140, !141, !142, !144, !146, !148, !149, !150, !152, !154, !156, !158, !159, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !244, !245, !246, !247, !248, !250, !251, !252, !253, !254, !256, !257, !258, !259, !260, !262, !263, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !282, !284, !285, !286, !287, !289, !290, !291, !292, !294, !295, !297, !298, !300, !301, !303, !304, !306, !307, !309, !310, !312, !314, !316, !317, !318, !320, !321, !323, !324, !325}
!llvm.module.flags = !{!326, !327, !328, !329, !330, !331, !332, !333}
!llvm.ident = !{!334}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 91, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 92, i32 1}
!5 = !{ptr @__param_firmware, !6, !"__param_firmware", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 95, i32 1}
!7 = !{ptr @__UNIQUE_ID_firmwaretype388, !6, !"__UNIQUE_ID_firmwaretype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_firmware389, !9, !"__UNIQUE_ID_firmware389", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 96, i32 1}
!10 = !{ptr @__param_pid, !11, !"__param_pid", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 99, i32 1}
!12 = !{ptr @__UNIQUE_ID_pidtype390, !11, !"__UNIQUE_ID_pidtype390", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_pid391, !14, !"__UNIQUE_ID_pid391", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 100, i32 1}
!15 = !{ptr @__param_adapter_nr, !16, !"__param_adapter_nr", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 103, i32 1}
!17 = !{ptr @__UNIQUE_ID_adapter_nrtype392, !16, !"__UNIQUE_ID_adapter_nrtype392", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_adapter_nr393, !16, !"__UNIQUE_ID_adapter_nr393", i1 false, i1 false}
!19 = !{ptr @__initcall__kmod_dvb_usb_lmedm04__409_1252_lme2510_driver_init6, !20, !"__initcall__kmod_dvb_usb_lmedm04__409_1252_lme2510_driver_init6", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1252, i32 1}
!21 = !{ptr @__exitcall_lme2510_driver_exit, !20, !"__exitcall_lme2510_driver_exit", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_author410, !23, !"__UNIQUE_ID_author410", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1254, i32 1}
!24 = !{ptr @__UNIQUE_ID_description411, !25, !"__UNIQUE_ID_description411", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1255, i32 1}
!26 = !{ptr @__UNIQUE_ID_version412, !27, !"__UNIQUE_ID_version412", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1256, i32 1}
!28 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__modver_attr, !27, !"__modver_attr", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_file413, !33, !"__UNIQUE_ID_file413", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1257, i32 1}
!34 = !{ptr @__UNIQUE_ID_license414, !33, !"__UNIQUE_ID_license414", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_firmware415, !36, !"__UNIQUE_ID_firmware415", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1258, i32 1}
!37 = !{ptr @__UNIQUE_ID_firmware416, !38, !"__UNIQUE_ID_firmware416", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1259, i32 1}
!39 = !{ptr @__UNIQUE_ID_firmware417, !40, !"__UNIQUE_ID_firmware417", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1260, i32 1}
!41 = !{ptr @__UNIQUE_ID_firmware418, !42, !"__UNIQUE_ID_firmware418", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1261, i32 1}
!43 = !{ptr @__UNIQUE_ID_firmware419, !44, !"__UNIQUE_ID_firmware419", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1262, i32 1}
!45 = !{ptr @__UNIQUE_ID_firmware420, !46, !"__UNIQUE_ID_firmware420", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1263, i32 1}
!47 = !{ptr @dvb_usb_lme2510_debug, !48, !"dvb_usb_lme2510_debug", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 81, i32 12}
!49 = !{ptr @dvb_usb_lme2510_firmware, !50, !"dvb_usb_lme2510_firmware", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 94, i32 12}
!51 = !{ptr @pid_filter, !52, !"pid_filter", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 98, i32 12}
!53 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!54 = !{ptr @__param_str_firmware, !6, !"__param_str_firmware", i1 false, i1 false}
!55 = !{ptr @__param_str_pid, !11, !"__param_str_pid", i1 false, i1 false}
!56 = !{ptr @__param_str_adapter_nr, !16, !"__param_str_adapter_nr", i1 false, i1 false}
!57 = !{ptr @__param_arr_adapter_nr, !16, !"__param_arr_adapter_nr", i1 false, i1 false}
!58 = !{ptr @adapter_nr, !16, !"adapter_nr", i1 false, i1 false}
!59 = !{ptr @lme2510_driver, !60, !"lme2510_driver", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1243, i32 26}
!61 = !{ptr @.str.3, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1232, i32 4}
!63 = !{ptr @.str.4, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.5, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1234, i32 4}
!66 = !{ptr @.str.7, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1236, i32 4}
!68 = !{ptr @lme2510_id_table, !69, !"lme2510_id_table", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1231, i32 35}
!70 = !{ptr @lme2510_props, !71, !"lme2510_props", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1194, i32 41}
!72 = !{ptr @.str.10, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 469, i32 2}
!74 = !{ptr @.str.11, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.12, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @lme2510_return_status._entry, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @lme2510_return_status._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.13, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 750, i32 3}
!80 = !{ptr @.str.14, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @lme_firmware_switch._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @lme_firmware_switch._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @fw_s0194, !84, !"fw_s0194", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 670, i32 19}
!85 = !{ptr @fw_lg, !86, !"fw_lg", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 669, i32 19}
!87 = !{ptr @fw_c_s7395, !88, !"fw_c_s7395", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 665, i32 19}
!89 = !{ptr @fw_c_lg, !90, !"fw_c_lg", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 666, i32 19}
!91 = !{ptr @fw_c_s0194, !92, !"fw_c_s0194", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 667, i32 19}
!93 = !{ptr @fw_c_rs2000, !94, !"fw_c_rs2000", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 668, i32 19}
!95 = !{ptr @.str.15, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 658, i32 2}
!97 = !{ptr @.str.16, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @lme_coldreset._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @lme_coldreset._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.17, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 609, i32 3}
!102 = !{ptr @.str.18, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @lme2510_download_firmware._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @lme2510_download_firmware._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.20, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 614, i32 2}
!107 = !{ptr @lme2510_download_firmware._entry.19, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @lme2510_download_firmware._entry_ptr.21, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.22, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 632, i32 4}
!111 = !{ptr @lme2510_download_firmware.__UNIQUE_ID_ddebug408, !110, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!112 = !{ptr @.str.24, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 646, i32 3}
!114 = !{ptr @lme2510_download_firmware._entry.23, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @lme2510_download_firmware._entry_ptr.25, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.27, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 648, i32 3}
!118 = !{ptr @lme2510_download_firmware._entry.26, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @lme2510_download_firmware._entry_ptr.28, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @lme2510_i2c_algo, !121, !"lme2510_i2c_algo", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 552, i32 29}
!122 = !{ptr @lme2510_i2c_xfer.obuf, !123, !"obuf", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 490, i32 12}
!124 = !{ptr @lme2510_i2c_xfer.ibuf, !125, !"ibuf", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 490, i32 22}
!126 = !{ptr @.str.29, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 528, i32 4}
!128 = !{ptr @.str.30, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @lme2510_i2c_xfer.__UNIQUE_ID_ddebug405, !127, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!130 = distinct !{null, !131, !"clear_pid_reg", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 407, i32 12}
!132 = distinct !{null, !133, !"rbuf", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 408, i32 12}
!134 = !{ptr @.str.31, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 411, i32 2}
!136 = !{ptr @.str.32, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @lme2510_pid_filter_ctrl.__UNIQUE_ID_ddebug403, !135, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!138 = !{ptr @.str.33, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 438, i32 2}
!140 = !{ptr @.str.34, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @lme2510_pid_filter.__UNIQUE_ID_ddebug404, !139, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!142 = !{ptr @lme2510_enable_pid.pid_buff, !143, !"pid_buff", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 183, i32 12}
!144 = distinct !{null, !145, !"rbuf", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 184, i32 12}
!146 = !{ptr @.str.35, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 188, i32 2}
!148 = !{ptr @.str.36, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @lme2510_enable_pid.__UNIQUE_ID_ddebug396, !147, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!150 = !{ptr @lme2510_powerup.lnb_on, !151, !"lnb_on", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1112, i32 12}
!152 = !{ptr @lme2510_powerup.lnb_off, !153, !"lnb_off", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1113, i32 12}
!154 = distinct !{null, !155, !"rbuf", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1114, i32 12}
!156 = !{ptr @.str.37, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 964, i32 17}
!158 = !{ptr @.str.38, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.39, !157, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.40, !157, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @dm04_lme2510_frontend_attach._entry, !157, !"_entry", i1 false, i1 false}
!162 = !{ptr @dm04_lme2510_frontend_attach._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.42, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 967, i32 4}
!165 = !{ptr @dm04_lme2510_frontend_attach._entry.41, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @dm04_lme2510_frontend_attach._entry_ptr.43, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.44, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 980, i32 17}
!169 = !{ptr @.str.45, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.47, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @dm04_lme2510_frontend_attach._entry.46, !168, !"_entry", i1 false, i1 false}
!172 = !{ptr @dm04_lme2510_frontend_attach._entry_ptr.48, !168, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.50, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 983, i32 4}
!175 = !{ptr @dm04_lme2510_frontend_attach._entry.49, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @dm04_lme2510_frontend_attach._entry_ptr.51, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.52, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 996, i32 17}
!179 = !{ptr @.str.53, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.55, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @dm04_lme2510_frontend_attach._entry.54, !178, !"_entry", i1 false, i1 false}
!182 = !{ptr @dm04_lme2510_frontend_attach._entry_ptr.56, !178, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.58, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1000, i32 4}
!185 = !{ptr @dm04_lme2510_frontend_attach._entry.57, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @dm04_lme2510_frontend_attach._entry_ptr.59, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.60, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1014, i32 17}
!189 = !{ptr @.str.61, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.63, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @dm04_lme2510_frontend_attach._entry.62, !188, !"_entry", i1 false, i1 false}
!192 = !{ptr @dm04_lme2510_frontend_attach._entry_ptr.64, !188, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.66, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1018, i32 4}
!195 = !{ptr @dm04_lme2510_frontend_attach._entry.65, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @dm04_lme2510_frontend_attach._entry_ptr.67, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.69, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1030, i32 3}
!199 = !{ptr @dm04_lme2510_frontend_attach._entry.68, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @dm04_lme2510_frontend_attach._entry_ptr.70, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @tda10086_config, !202, !"tda10086_config", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 758, i32 31}
!203 = !{ptr @sharp_z0194_config, !204, !"sharp_z0194_config", i1 false, i1 false}
!204 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 778, i32 30}
!205 = !{ptr @sharp_z0194a_inittab, !206, !"sharp_z0194a_inittab", i1 false, i1 false}
!206 = !{!"../drivers/media/dvb-frontends/z0194a.h", i32 40, i32 11}
!207 = !{ptr @lme_config, !208, !"lme_config", i1 false, i1 false}
!208 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 765, i32 30}
!209 = !{ptr @s7395_inittab, !210, !"s7395_inittab", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.h", i32 60, i32 11}
!211 = !{ptr @m88rs2000_config, !212, !"m88rs2000_config", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 790, i32 32}
!213 = !{ptr @dm04_lme2510_set_voltage.voltage_low, !214, !"voltage_low", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 805, i32 12}
!215 = !{ptr @dm04_lme2510_set_voltage.voltage_high, !216, !"voltage_high", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 806, i32 12}
!217 = distinct !{null, !218, !"rbuf", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 807, i32 12}
!219 = !{ptr @.str.71, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 943, i32 3}
!221 = !{ptr @.str.72, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 943, i32 7}
!223 = !{ptr @.str.73, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 943, i32 25}
!225 = !{ptr @.str.74, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 944, i32 3}
!227 = !{ptr @.str.75, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 944, i32 25}
!229 = !{ptr @lme_name.fe_name, !230, !"fe_name", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 942, i32 28}
!231 = !{ptr @.str.76, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1064, i32 45}
!233 = !{ptr @.str.77, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1064, i32 56}
!235 = !{ptr @.str.78, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1064, i32 67}
!237 = !{ptr @.str.79, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1064, i32 84}
!239 = !{ptr @dm04_lme2510_tuner.tun_msg, !240, !"tun_msg", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1064, i32 28}
!241 = !{ptr @.str.80, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1069, i32 7}
!243 = !{ptr @.str.81, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.82, !242, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.83, !242, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @dm04_lme2510_tuner._entry, !242, !"_entry", i1 false, i1 false}
!247 = !{ptr @dm04_lme2510_tuner._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.84, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1074, i32 7}
!250 = !{ptr @.str.85, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.87, !249, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @dm04_lme2510_tuner._entry.86, !249, !"_entry", i1 false, i1 false}
!253 = !{ptr @dm04_lme2510_tuner._entry_ptr.88, !249, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.89, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1079, i32 7}
!256 = !{ptr @.str.90, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.92, !255, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @dm04_lme2510_tuner._entry.91, !255, !"_entry", i1 false, i1 false}
!259 = !{ptr @dm04_lme2510_tuner._entry_ptr.93, !255, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.94, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1084, i32 7}
!262 = !{ptr @.str.95, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.97, !261, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @dm04_lme2510_tuner._entry.96, !261, !"_entry", i1 false, i1 false}
!265 = !{ptr @dm04_lme2510_tuner._entry_ptr.98, !261, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.100, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1093, i32 3}
!268 = !{ptr @dm04_lme2510_tuner._entry.99, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @dm04_lme2510_tuner._entry_ptr.101, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.103, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1095, i32 3}
!272 = !{ptr @dm04_lme2510_tuner._entry.102, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @dm04_lme2510_tuner._entry_ptr.104, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.106, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1102, i32 3}
!276 = !{ptr @dm04_lme2510_tuner._entry.105, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @dm04_lme2510_tuner._entry_ptr.107, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @lme_tuner, !279, !"lme_tuner", i1 false, i1 false}
!279 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 771, i32 30}
!280 = !{ptr @ts2020_config, !281, !"ts2020_config", i1 false, i1 false}
!281 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 794, i32 29}
!282 = !{ptr @.str.109, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 398, i32 2}
!284 = !{ptr @.str.110, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @lme2510_int_read._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @lme2510_int_read._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.111, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 285, i32 3}
!289 = !{ptr @.str.112, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @lme2510_int_response._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @lme2510_int_response._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.113, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 296, i32 3}
!294 = !{ptr @lme2510_int_response.__UNIQUE_ID_ddebug397, !293, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!295 = !{ptr @.str.114, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 301, i32 4}
!297 = !{ptr @lme2510_int_response.__UNIQUE_ID_ddebug398, !296, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!298 = !{ptr @.str.115, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 310, i32 4}
!300 = !{ptr @lme2510_int_response.__UNIQUE_ID_ddebug399, !299, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!301 = !{ptr @.str.116, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 352, i32 4}
!303 = !{ptr @lme2510_int_response.__UNIQUE_ID_ddebug400, !302, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!304 = !{ptr @.str.117, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 355, i32 4}
!306 = !{ptr @lme2510_int_response.__UNIQUE_ID_ddebug401, !305, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!307 = !{ptr @.str.118, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 358, i32 4}
!309 = !{ptr @lme2510_int_response.__UNIQUE_ID_ddebug402, !308, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!310 = distinct !{null, !311, !"clear_reg_3", i1 false, i1 false}
!311 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 562, i32 12}
!312 = distinct !{null, !313, !"rbuf", i1 false, i1 false}
!313 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 563, i32 12}
!314 = !{ptr @.str.119, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 566, i32 2}
!316 = !{ptr @.str.120, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @lme2510_streaming_ctrl.__UNIQUE_ID_ddebug406, !315, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!318 = !{ptr @.str.121, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 572, i32 3}
!320 = !{ptr @lme2510_streaming_ctrl.__UNIQUE_ID_ddebug407, !319, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!321 = !{ptr @.str.122, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/usb/dvb-usb-v2/lmedm04.c", i32 1190, i32 3}
!323 = !{ptr @.str.123, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @lme2510_exit._entry, !322, !"_entry", i1 false, i1 false}
!325 = !{ptr @lme2510_exit._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!326 = !{i32 1, !"wchar_size", i32 2}
!327 = !{i32 1, !"min_enum_size", i32 4}
!328 = !{i32 8, !"branch-target-enforcement", i32 0}
!329 = !{i32 8, !"sign-return-address", i32 0}
!330 = !{i32 8, !"sign-return-address-all", i32 0}
!331 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!332 = !{i32 7, !"uwtable", i32 1}
!333 = !{i32 7, !"frame-pointer", i32 2}
!334 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!335 = !{i64 2148961517, i64 2148961522, i64 2148961535, i64 2148961579, i64 2148961613, i64 2148961634}
