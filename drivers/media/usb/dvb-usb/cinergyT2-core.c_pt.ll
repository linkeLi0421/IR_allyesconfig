; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/cinergyT2-core.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/cinergyT2-core.c"
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
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.rc_map_table = type { i64, i32 }
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
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
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
%struct.hlist_node = type { ptr, ptr }
%struct.cinergyt2_state = type { i8, [64 x i8] }
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

@__param_str_debug = internal constant [24 x i8] c"dvb_usb_cinergyT2.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_cinergyt2_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_cinergyt2_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [37 x i8] c"dvb_usb_cinergyT2.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [83 x i8] c"dvb_usb_cinergyT2.parm=debug:set debugging level (1=info, xfer=2, rc=4 (or-able)).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [29 x i8] c"dvb_usb_cinergyT2.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [53 x i8] c"dvb_usb_cinergyT2.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [54 x i8] c"dvb_usb_cinergyT2.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_cinergyT2__390_257_cinergyt2_driver_init6 = internal global ptr @cinergyt2_driver_init, section ".initcall6.init", align 4
@cinergyt2_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @cinergyt2_usb_probe, ptr @dvb_usb_device_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cinergyt2_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_cinergyt2_driver_exit = internal global ptr @cinergyt2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description391 = internal constant [63 x i8] c"dvb_usb_cinergyT2.description=Terratec Cinergy T2 DVB-T driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file392 = internal constant [67 x i8] c"dvb_usb_cinergyT2.file=drivers/media/usb/dvb-usb/dvb-usb-cinergyT2\00", section ".modinfo", align 1
@__UNIQUE_ID_license393 = internal constant [30 x i8] c"dvb_usb_cinergyT2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author394 = internal constant [36 x i8] c"dvb_usb_cinergyT2.author=Tomi Orava\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb_usb_cinergyT2\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cinergyT2\00", [22 x i8] zeroinitializer }, align 32
@cinergyt2_usb_table = internal global { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3277, i16 56, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rc_map_cinergyt2_table = internal global { [37 x %struct.rc_map_table], [144 x i8] } { [37 x %struct.rc_map_table] [%struct.rc_map_table { i64 1025, i32 116 }, %struct.rc_map_table { i64 1026, i32 2 }, %struct.rc_map_table { i64 1027, i32 3 }, %struct.rc_map_table { i64 1028, i32 4 }, %struct.rc_map_table { i64 1029, i32 5 }, %struct.rc_map_table { i64 1030, i32 6 }, %struct.rc_map_table { i64 1031, i32 7 }, %struct.rc_map_table { i64 1032, i32 8 }, %struct.rc_map_table { i64 1033, i32 9 }, %struct.rc_map_table { i64 1034, i32 10 }, %struct.rc_map_table { i64 1036, i32 11 }, %struct.rc_map_table { i64 1035, i32 393 }, %struct.rc_map_table { i64 1037, i32 173 }, %struct.rc_map_table { i64 1038, i32 353 }, %struct.rc_map_table { i64 1039, i32 365 }, %struct.rc_map_table { i64 1040, i32 103 }, %struct.rc_map_table { i64 1044, i32 108 }, %struct.rc_map_table { i64 1041, i32 105 }, %struct.rc_map_table { i64 1043, i32 106 }, %struct.rc_map_table { i64 1042, i32 352 }, %struct.rc_map_table { i64 1045, i32 388 }, %struct.rc_map_table { i64 1046, i32 358 }, %struct.rc_map_table { i64 1047, i32 398 }, %struct.rc_map_table { i64 1048, i32 399 }, %struct.rc_map_table { i64 1049, i32 400 }, %struct.rc_map_table { i64 1050, i32 401 }, %struct.rc_map_table { i64 1052, i32 115 }, %struct.rc_map_table { i64 1054, i32 114 }, %struct.rc_map_table { i64 1053, i32 113 }, %struct.rc_map_table { i64 1051, i32 402 }, %struct.rc_map_table { i64 1055, i32 403 }, %struct.rc_map_table { i64 1088, i32 119 }, %struct.rc_map_table { i64 1100, i32 207 }, %struct.rc_map_table { i64 1112, i32 167 }, %struct.rc_map_table { i64 1108, i32 412 }, %struct.rc_map_table { i64 1096, i32 128 }, %struct.rc_map_table { i64 1116, i32 407 }], [144 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"TerraTec/qanu USB2.0 Highspeed DVB-T Receiver\00", [50 x i8] zeroinitializer }, align 32
@cinergyt2_properties = internal constant { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> } { i32 0, i32 0, ptr null, ptr null, i32 0, i32 65, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @cinergyt2_streaming_ctrl, ptr null, ptr null, ptr @cinergyt2_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 5, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 512 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @cinergyt2_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy { ptr @rc_map_cinergyt2_table, i32 37, ptr @cinergyt2_rc_query, i32 50 }, %struct.dvb_rc zeroinitializer }, ptr null, i32 1, i32 0, i32 1, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.2, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr @cinergyt2_usb_table, [14 x ptr] zeroinitializer }> }, [11 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@cinergyt2_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"cinergyt2_power_ctrl() Failed to retrieve sleep state info\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cinergyt2_frontend_attach\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/usb/dvb-usb/cinergyT2-core.c\00", [53 x i8] zeroinitializer }, align 32
@cinergyt2_frontend_attach._entry_ptr = internal global ptr @cinergyt2_frontend_attach._entry, section ".printk_index", align 4
@cinergyt2_rc_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"repeat key, event %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cinergyt2_rc_query\00", [45 x i8] zeroinitializer }, align 32
@cinergyt2_rc_query._entry_ptr = internal global ptr @cinergyt2_rc_query._entry, section ".printk_index", align 4
@cinergyt2_rc_query._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.6, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"repeated key (non repeatable)\0A\00", [33 x i8] zeroinitializer }, align 32
@cinergyt2_rc_query._entry_ptr.11 = internal global ptr @cinergyt2_rc_query._entry.9, section ".printk_index", align 4
@cinergyt2_rc_query._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.6, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"key: %*ph\0A\00", [21 x i8] zeroinitializer }, align 32
@cinergyt2_rc_query._entry_ptr.14 = internal global ptr @cinergyt2_rc_query._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 103, i64 105, i64 106, i64 108, i64 114, i64 115, i64 402, i64 403]
@___asan_gen_.15 = private unnamed_addr constant [24 x i8] c"dvb_usb_cinergyt2_debug\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 20, i32 5 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"cinergyt2_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 250, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 25, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 257, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 251, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"cinergyt2_usb_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 196, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"rc_map_cinergyt2_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 88, i32 28 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 241, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"cinergyt2_properties\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 203, i32 47 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 81, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 164, i32 6 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 169, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [46 x i8] c"../drivers/media/usb/dvb-usb/cinergyT2-core.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 181, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author394, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description391, ptr @__UNIQUE_ID_file392, ptr @__UNIQUE_ID_license393, ptr @__exitcall_cinergyt2_driver_exit, ptr @__initcall__kmod_dvb_usb_cinergyT2__390_257_cinergyt2_driver_init6, ptr @__param_adapter_nr, ptr @__param_debug, ptr @cinergyt2_driver_exit, ptr @cinergyt2_frontend_attach._entry, ptr @cinergyt2_frontend_attach._entry_ptr, ptr @cinergyt2_rc_query._entry, ptr @cinergyt2_rc_query._entry.12, ptr @cinergyt2_rc_query._entry.9, ptr @cinergyt2_rc_query._entry_ptr, ptr @cinergyt2_rc_query._entry_ptr.11, ptr @cinergyt2_rc_query._entry_ptr.14, ptr @dvb_usb_cinergyt2_debug, ptr @cinergyt2_driver, ptr @adapter_nr, ptr @.str, ptr @.str.1, ptr @cinergyt2_usb_table, ptr @rc_map_cinergyt2_table, ptr @.str.2, ptr @cinergyt2_properties, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_cinergyt2_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergyt2_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergyt2_usb_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_map_cinergyt2_table to i32), i32 592, i32 736, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergyt2_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergyt2_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergyt2_rc_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergyt2_rc_query._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergyt2_rc_query._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cinergyt2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @cinergyt2_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cinergyt2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_deregister(ptr noundef nonnull @cinergyt2_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cinergyt2_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @cinergyt2_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cinergyt2_streaming_ctrl(ptr nocapture noundef readonly %adap, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #4
  %data = getelementptr inbounds %struct.cinergyt2_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp ne i32 %enable, 0
  %conv = zext i1 %tobool.not to i8
  %arrayidx2 = getelementptr %struct.cinergyt2_state, ptr %3, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx2, align 1
  %call = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 2, ptr noundef %data, i16 noundef zeroext 64, i32 noundef 0) #4
  tail call void @mutex_unlock(ptr noundef %data_mutex) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cinergyt2_frontend_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call = tail call ptr @cinergyt2_fe_attach(ptr noundef %1) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %fe_adap, align 8
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #4
  %data = getelementptr inbounds %struct.cinergyt2_state, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %data, align 1
  %call6 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data, i16 noundef zeroext 1, ptr noundef %data, i16 noundef zeroext 3, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe_adap, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then.do.body_crit_edge, label %if.then10

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %release, align 4
  tail call void %9(ptr noundef nonnull %7) #4
  br label %do.body

do.body:                                          ; preds = %if.then10, %if.then.do.body_crit_edge
  %10 = load i32, ptr @dvb_usb_cinergyt2_debug, align 4
  %and = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %do.body.if.end24_crit_edge, label %do.end

do.body.if.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %if.end24

if.end24:                                         ; preds = %do.end, %do.body.if.end24_crit_edge, %entry.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %data_mutex) #4
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cinergyt2_power_ctrl(ptr noundef %d, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #4
  %data = getelementptr inbounds %struct.cinergyt2_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 9, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %conv = zext i1 %tobool.not to i8
  %arrayidx2 = getelementptr %struct.cinergyt2_state, ptr %1, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arrayidx2, align 1
  %call = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data, i16 noundef zeroext 2, ptr noundef %data, i16 noundef zeroext 3, i32 noundef 0) #4
  tail call void @mutex_unlock(ptr noundef %data_mutex) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cinergyt2_rc_query(ptr noundef %d, ptr noundef %event, ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #4
  %data = getelementptr inbounds %struct.cinergyt2_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %data, align 1
  %call = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data, i16 noundef zeroext 1, ptr noundef %data, i16 noundef zeroext 5, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.ret79_crit_edge, label %if.end

entry.ret79_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ret79

if.end:                                           ; preds = %entry
  %arrayidx5 = getelementptr %struct.cinergyt2_state, ptr %1, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp6 = icmp eq i8 %5, -1
  br i1 %cmp6, label %if.then8, label %if.end42

if.then8:                                         ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %inc = add i8 %7, 1
  store i8 %inc, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %inc)
  %cmp11 = icmp ugt i8 %inc, 3
  br i1 %cmp11, label %for.cond.preheader, label %if.then8.ret79_crit_edge

if.then8.ret79_crit_edge:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %ret79

for.cond.preheader:                               ; preds = %if.then8
  %last_event = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %8 = ptrtoint ptr %last_event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_event, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %for.cond.7 [
    i32 103, label %for.cond.preheader.if.then19_crit_edge
    i32 108, label %for.cond.preheader.if.then19_crit_edge108
    i32 105, label %for.cond.preheader.if.then19_crit_edge109
    i32 106, label %for.cond.preheader.if.then19_crit_edge110
    i32 115, label %for.cond.preheader.if.then19_crit_edge111
    i32 114, label %for.cond.preheader.if.then19_crit_edge112
    i32 402, label %for.cond.preheader.if.then19_crit_edge113
    i32 403, label %for.cond.preheader.if.then19_crit_edge114
  ]

for.cond.preheader.if.then19_crit_edge114:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

for.cond.preheader.if.then19_crit_edge113:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

for.cond.preheader.if.then19_crit_edge112:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

for.cond.preheader.if.then19_crit_edge111:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

for.cond.preheader.if.then19_crit_edge110:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

for.cond.preheader.if.then19_crit_edge109:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

for.cond.preheader.if.then19_crit_edge108:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

for.cond.preheader.if.then19_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

for.cond.7:                                       ; preds = %for.cond.preheader
  %11 = load i32, ptr @dvb_usb_cinergyt2_debug, align 4
  %and30 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %for.cond.7.ret79_crit_edge, label %do.end35

for.cond.7.ret79_crit_edge:                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %ret79

if.then19:                                        ; preds = %for.cond.preheader.if.then19_crit_edge, %for.cond.preheader.if.then19_crit_edge108, %for.cond.preheader.if.then19_crit_edge109, %for.cond.preheader.if.then19_crit_edge110, %for.cond.preheader.if.then19_crit_edge111, %for.cond.preheader.if.then19_crit_edge112, %for.cond.preheader.if.then19_crit_edge113, %for.cond.preheader.if.then19_crit_edge114
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %state, align 4
  %13 = ptrtoint ptr %last_event to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_event, align 4
  %15 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %event, align 4
  %16 = load i32, ptr @dvb_usb_cinergyt2_debug, align 4
  %and = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then19.ret79_crit_edge, label %do.end

if.then19.ret79_crit_edge:                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %ret79

do.end:                                           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %14) #7
  br label %ret79

do.end35:                                         ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #6
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  br label %ret79

if.end42:                                         ; preds = %if.end
  %arrayidx44 = getelementptr %struct.cinergyt2_state, ptr %1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx44, align 1
  %neg = xor i8 %18, -1
  %arrayidx48 = getelementptr %struct.cinergyt2_state, ptr %1, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %neg, ptr %arrayidx48, align 1
  %call51 = tail call i32 @dvb_usb_nec_rc_key_to_event(ptr noundef %d, ptr noundef %data, ptr noundef %event, ptr noundef %state) #4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp55.not = icmp eq i8 %21, 0
  br i1 %cmp55.not, label %if.end42.ret79_crit_edge, label %if.then57

if.end42.ret79_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %ret79

if.then57:                                        ; preds = %if.end42
  %22 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %event, align 4
  %last_event58 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %24 = ptrtoint ptr %last_event58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last_event58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp59.not = icmp eq i32 %23, %25
  br i1 %cmp59.not, label %if.then57.do.body64_crit_edge, label %if.then61

if.then57.do.body64_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body64

if.then61:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %1, align 1
  br label %do.body64

do.body64:                                        ; preds = %if.then61, %if.then57.do.body64_crit_edge
  %27 = load i32, ptr @dvb_usb_cinergyt2_debug, align 4
  %and65 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body64.ret79_crit_edge, label %do.end70

do.body64.ret79_crit_edge:                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  br label %ret79

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 5, ptr noundef %data) #7
  br label %ret79

ret79:                                            ; preds = %do.end70, %do.body64.ret79_crit_edge, %if.end42.ret79_crit_edge, %do.end35, %do.end, %if.then19.ret79_crit_edge, %for.cond.7.ret79_crit_edge, %if.then8.ret79_crit_edge, %entry.ret79_crit_edge
  tail call void @mutex_unlock(ptr noundef %data_mutex) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_generic_rw(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cinergyt2_fe_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_nec_rc_key_to_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 23, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 25, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !6, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr389, !6, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_cinergyT2__390_257_cinergyt2_driver_init6, !10, !"__initcall__kmod_dvb_usb_cinergyT2__390_257_cinergyt2_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 257, i32 1}
!11 = !{ptr @__exitcall_cinergyt2_driver_exit, !10, !"__exitcall_cinergyt2_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_description391, !13, !"__UNIQUE_ID_description391", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 259, i32 1}
!14 = !{ptr @__UNIQUE_ID_file392, !15, !"__UNIQUE_ID_file392", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 260, i32 1}
!16 = !{ptr @__UNIQUE_ID_license393, !15, !"__UNIQUE_ID_license393", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author394, !18, !"__UNIQUE_ID_author394", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 261, i32 1}
!19 = !{ptr @dvb_usb_cinergyt2_debug, !20, !"dvb_usb_cinergyt2_debug", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 20, i32 5}
!21 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!22 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!23 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!24 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!25 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 251, i32 11}
!28 = !{ptr @cinergyt2_driver, !29, !"cinergyt2_driver", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 250, i32 26}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 241, i32 13}
!32 = !{ptr @cinergyt2_properties, !33, !"cinergyt2_properties", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 203, i32 47}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 81, i32 3}
!36 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cinergyt2_frontend_attach._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @cinergyt2_frontend_attach._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @rc_map_cinergyt2_table, !41, !"rc_map_cinergyt2_table", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 88, i32 28}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 164, i32 6}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cinergyt2_rc_query._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @cinergyt2_rc_query._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 169, i32 4}
!49 = !{ptr @cinergyt2_rc_query._entry.9, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cinergyt2_rc_query._entry_ptr.11, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 181, i32 3}
!53 = !{ptr @cinergyt2_rc_query._entry.12, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cinergyt2_rc_query._entry_ptr.14, !52, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"repeatable_keys", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 131, i32 12}
!57 = !{ptr @cinergyt2_usb_table, !58, !"cinergyt2_usb_table", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-core.c", i32 196, i32 29}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
