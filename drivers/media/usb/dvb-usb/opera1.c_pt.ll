; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/opera1.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/opera1.c"
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
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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

@__param_str_debug = internal constant [20 x i8] c"dvb_usb_opera.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_opera1_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_opera1_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [33 x i8] c"dvb_usb_opera.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [102 x i8] c"dvb_usb_opera.parm=debug:set debugging level (1=info,xfer=2,pll=4,ts=8,err=16,rc=32,fw=64 (or-able)).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [25 x i8] c"dvb_usb_opera.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [49 x i8] c"dvb_usb_opera.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [50 x i8] c"dvb_usb_opera.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_opera__390_574_opera1_driver_init6 = internal global ptr @opera1_driver_init, section ".initcall6.init", align 4
@opera1_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.3, ptr @opera1_probe, ptr @dvb_usb_device_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @opera1_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_opera1_driver_exit = internal global ptr @opera1_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author391 = internal constant [59 x i8] c"dvb_usb_opera.author=Mario Hlawitschka (c) dh1pa@amsat.org\00", section ".modinfo", align 1
@__UNIQUE_ID_author392 = internal constant [58 x i8] c"dvb_usb_opera.author=Marco Gittler (c) g.marco@freenet.de\00", section ".modinfo", align 1
@__UNIQUE_ID_description393 = internal constant [57 x i8] c"dvb_usb_opera.description=Driver for Opera1 DVB-S device\00", section ".modinfo", align 1
@__UNIQUE_ID_version394 = internal constant [26 x i8] c"dvb_usb_opera.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dvb_usb_opera\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file395 = internal constant [59 x i8] c"dvb_usb_opera.file=drivers/media/usb/dvb-usb/dvb-usb-opera\00", section ".modinfo", align 1
@__UNIQUE_ID_license396 = internal constant [26 x i8] c"dvb_usb_opera.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"opera1\00", [25 x i8] zeroinitializer }, align 32
@opera1_table = internal global { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1204, i16 10288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 26972, i16 14377, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dvb-usb-opera1-fpga-01.fw\00", [38 x i8] zeroinitializer }, align 32
@opera1_xilinx_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016opera: start downloading fpga firmware %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"opera1_xilinx_load_firmware\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/dvb-usb/opera1.c\00", [61 x i8] zeroinitializer }, align 32
@opera1_xilinx_load_firmware._entry_ptr = internal global ptr @opera1_xilinx_load_firmware._entry, section ".printk_index", align 4
@opera1_xilinx_load_firmware._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"\013opera: did not find the firmware file '%s'. You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware\0A\00", [43 x i8] zeroinitializer }, align 32
@opera1_xilinx_load_firmware._entry_ptr.10 = internal global ptr @opera1_xilinx_load_firmware._entry.8, section ".printk_index", align 4
@opera1_xilinx_load_firmware._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013opera: error while transferring firmware\0A\00", [52 x i8] zeroinitializer }, align 32
@opera1_xilinx_load_firmware._entry_ptr.13 = internal global ptr @opera1_xilinx_load_firmware._entry.11, section ".printk_index", align 4
@opera1_xilinx_load_firmware._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013opera: could not restart the USB controller CPU.\0A\00", [44 x i8] zeroinitializer }, align 32
@opera1_xilinx_load_firmware._entry_ptr.16 = internal global ptr @opera1_xilinx_load_firmware._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb-usb-opera-01.fw\00", [44 x i8] zeroinitializer }, align 32
@rc_map_opera1_table = internal global { [26 x %struct.rc_map_table], [96 x i8] } { [26 x %struct.rc_map_table] [%struct.rc_map_table { i64 24480, i32 2 }, %struct.rc_map_table { i64 20911, i32 3 }, %struct.rc_map_table { i64 23970, i32 4 }, %struct.rc_map_table { i64 16830, i32 5 }, %struct.rc_map_table { i64 3061, i32 6 }, %struct.rc_map_table { i64 17341, i32 7 }, %struct.rc_map_table { i64 18360, i32 8 }, %struct.rc_map_table { i64 18870, i32 9 }, %struct.rc_map_table { i64 1530, i32 10 }, %struct.rc_map_table { i64 17850, i32 11 }, %struct.rc_map_table { i64 2550, i32 402 }, %struct.rc_map_table { i64 7141, i32 403 }, %struct.rc_map_table { i64 23971, i32 114 }, %struct.rc_map_table { i64 24481, i32 115 }, %struct.rc_map_table { i64 2040, i32 57 }, %struct.rc_map_table { i64 8161, i32 352 }, %struct.rc_map_table { i64 7140, i32 372 }, %struct.rc_map_table { i64 22950, i32 113 }, %struct.rc_map_table { i64 23461, i32 385 }, %struct.rc_map_table { i64 6631, i32 167 }, %struct.rc_map_table { i64 510, i32 128 }, %struct.rc_map_table { i64 1021, i32 119 }, %struct.rc_map_table { i64 1020, i32 375 }, %struct.rc_map_table { i64 2041, i32 212 }, %struct.rc_map_table { i64 18361, i32 1 }, %struct.rc_map_table { i64 17340, i32 356 }], [96 x i8] zeroinitializer }, align 32
@opera1_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @opera1_i2c_xfer, ptr null, ptr null, ptr null, ptr @opera1_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Opera1 DVB-S USB2.0\00", [44 x i8] zeroinitializer }, align 32
@opera1_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 3, ptr null, ptr @.str.17, i32 0, i32 4, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 252, ptr @opera1_streaming_ctrl, ptr @opera1_pid_filter_control, ptr @opera1_pid_filter, ptr @opera1_frontend_attach, ptr @opera1_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 10, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @opera1_power_ctrl, ptr @opera1_read_mac_address, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy { ptr @rc_map_opera1_table, i32 26, ptr @opera1_rc_query, i32 200 }, %struct.dvb_rc zeroinitializer }, ptr @opera1_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.18, <{ ptr, [14 x ptr] }> <{ ptr @opera1_table, [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @opera1_table, i64 24), [14 x ptr] zeroinitializer }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@opera1_streaming_ctrl.buf_start = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\03", [30 x i8] zeroinitializer }, align 32
@opera1_streaming_ctrl.buf_stop = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\00", [30 x i8] zeroinitializer }, align 32
@opera1_streaming_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.7, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016opera: streaming %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"opera1_streaming_ctrl\00", [42 x i8] zeroinitializer }, align 32
@opera1_streaming_ctrl._entry_ptr = internal global ptr @opera1_streaming_ctrl._entry, section ".printk_index", align 4
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@opera1_pid_filter_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016opera: %s hw-pidfilter\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"opera1_pid_filter_control\00", [38 x i8] zeroinitializer }, align 32
@opera1_pid_filter_control._entry_ptr = internal global ptr @opera1_pid_filter_control._entry, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@opera1_pid_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016opera: pidfilter index: %d pid: %d %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"opera1_pid_filter\00", [46 x i8] zeroinitializer }, align 32
@opera1_pid_filter._entry_ptr = internal global ptr @opera1_pid_filter._entry, section ".printk_index", align 4
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0299_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0299_attach\00", [42 x i8] zeroinitializer }, align 32
@opera1_stv0299_config = internal global { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @opera1_inittab, i32 88000000, i8 -128, i32 100, ptr @opera1_stv0299_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@opera1_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.7, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0299_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"opera1_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@opera1_frontend_attach._entry_ptr = internal global ptr @opera1_frontend_attach._entry, section ".printk_index", align 4
@opera1_frontend_attach._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.7, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016opera: not attached stv0299\0A\00", [33 x i8] zeroinitializer }, align 32
@opera1_frontend_attach._entry_ptr.36 = internal global ptr @opera1_frontend_attach._entry.34, section ".printk_index", align 4
@opera1_inittab = internal global { [102 x i8], [58 x i8] } { [102 x i8] c"\00\A1\01\15\020\03\00\04}\05\05\06\02\07\00\0B\00\0C\01\0D\81\0ED\0F\19\10?\11\84\12\DA\13\98\14\95\15\C9\16\EB\17\00\18\19\19\8B\1A\00\1B\82\1C\7F\1D\00\1E\00\1F\06 P!\10\22\00#\00$7%\BC&\00'\00(\00)\1E*\14+\1F,\09-\0A.\00/\000\001\1F2\193\FC4\13\FF\FF", [58 x i8] zeroinitializer }, align 32
@opera1_set_voltage.command_13v = internal global { [1 x i8], [31 x i8] } zeroinitializer, align 32
@opera1_set_voltage.command_18v = internal global { [1 x i8], [31 x i8] } { [1 x i8] c"\01", [31 x i8] zeroinitializer }, align 32
@__const.opera1_set_voltage.msg = private unnamed_addr constant [1 x { i16, i16, i16, [2 x i8], ptr }] [{ i16, i16, i16, [2 x i8], ptr } { i16 2, i16 0, i16 1, [2 x i8] zeroinitializer, ptr @opera1_set_voltage.command_13v }], align 4
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@opera1_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.7, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"opera1_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@opera1_tuner_attach._entry_ptr = internal global ptr @opera1_tuner_attach._entry, section ".printk_index", align 4
@opera1_power_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.7, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016opera: power %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"opera1_power_ctrl\00", [46 x i8] zeroinitializer }, align 32
@opera1_power_ctrl._entry_ptr = internal global ptr @opera1_power_ctrl._entry, section ".printk_index", align 4
@opera1_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.7, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016opera: sending i2c message %d %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"opera1_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@opera1_i2c_xfer._entry_ptr = internal global ptr @opera1_i2c_xfer._entry, section ".printk_index", align 4
@opera1_usb_i2c_msgxfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.7, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016opera: no usb_device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"opera1_usb_i2c_msgxfer\00", [41 x i8] zeroinitializer }, align 32
@opera1_usb_i2c_msgxfer._entry_ptr = internal global ptr @opera1_usb_i2c_msgxfer._entry, section ".printk_index", align 4
@switch.table.opera1_i2c_xfer = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 1, i16 166, i16 128], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 4333, i64 4588]
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"dvb_usb_opera1_debug\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 40, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"opera1_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 567, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 579, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 46, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 568, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"opera1_table\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 428, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 556, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 450, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 453, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 475, i32 6 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 485, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 498, i32 14 }
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c"rc_map_opera1_table\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 341, i32 28 }
@___asan_gen_.111 = private unnamed_addr constant [16 x i8] c"opera1_i2c_algo\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 162, i32 29 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 542, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"opera1_properties\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 495, i32 41 }
@___asan_gen_.120 = private unnamed_addr constant [10 x i8] c"buf_start\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 295, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant [9 x i8] c"buf_stop\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 296, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 301, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 331, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 314, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [22 x i8] c"opera1_stv0299_config\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 250, i32 30 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 264, i32 21 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 270, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [15 x i8] c"opera1_inittab\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 196, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"command_13v\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 170, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant [12 x i8] c"command_18v\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 171, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 276, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 288, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 151, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private constant [38 x i8] c"../drivers/media/usb/dvb-usb/opera1.c\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 96, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [29 x i8] c"switch.table.opera1_i2c_xfer\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author391, ptr @__UNIQUE_ID_author392, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description393, ptr @__UNIQUE_ID_file395, ptr @__UNIQUE_ID_license396, ptr @__UNIQUE_ID_version394, ptr @__exitcall_opera1_driver_exit, ptr @__initcall__kmod_dvb_usb_opera__390_574_opera1_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @opera1_driver_exit, ptr @opera1_frontend_attach._entry, ptr @opera1_frontend_attach._entry.34, ptr @opera1_frontend_attach._entry_ptr, ptr @opera1_frontend_attach._entry_ptr.36, ptr @opera1_i2c_xfer._entry, ptr @opera1_i2c_xfer._entry_ptr, ptr @opera1_pid_filter._entry, ptr @opera1_pid_filter._entry_ptr, ptr @opera1_pid_filter_control._entry, ptr @opera1_pid_filter_control._entry_ptr, ptr @opera1_power_ctrl._entry, ptr @opera1_power_ctrl._entry_ptr, ptr @opera1_streaming_ctrl._entry, ptr @opera1_streaming_ctrl._entry_ptr, ptr @opera1_tuner_attach._entry, ptr @opera1_tuner_attach._entry_ptr, ptr @opera1_usb_i2c_msgxfer._entry, ptr @opera1_usb_i2c_msgxfer._entry_ptr, ptr @opera1_xilinx_load_firmware._entry, ptr @opera1_xilinx_load_firmware._entry.11, ptr @opera1_xilinx_load_firmware._entry.14, ptr @opera1_xilinx_load_firmware._entry.8, ptr @opera1_xilinx_load_firmware._entry_ptr, ptr @opera1_xilinx_load_firmware._entry_ptr.10, ptr @opera1_xilinx_load_firmware._entry_ptr.13, ptr @opera1_xilinx_load_firmware._entry_ptr.16, ptr @dvb_usb_opera1_debug, ptr @opera1_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @.str.3, ptr @opera1_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @rc_map_opera1_table, ptr @opera1_i2c_algo, ptr @.str.18, ptr @opera1_properties, ptr @opera1_streaming_ctrl.buf_start, ptr @opera1_streaming_ctrl.buf_stop, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @opera1_stv0299_config, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @opera1_inittab, ptr @opera1_set_voltage.command_13v, ptr @opera1_set_voltage.command_18v, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @switch.table.opera1_i2c_xfer], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_opera1_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_xilinx_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_xilinx_load_firmware._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_xilinx_load_firmware._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_xilinx_load_firmware._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_map_opera1_table to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_streaming_ctrl.buf_start to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_streaming_ctrl.buf_stop to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_streaming_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_pid_filter_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_pid_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_stv0299_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_frontend_attach._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_inittab to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_set_voltage.command_13v to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_set_voltage.command_18v to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_power_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opera1_usb_i2c_msgxfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.opera1_i2c_xfer to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @opera1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @opera1_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @opera1_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @opera1_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opera1_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %idProduct = getelementptr i8, ptr %1, i32 938
  %2 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10552, i16 %3)
  %cmp = icmp eq i16 %3, 10552
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %idVendor = getelementptr i8, ptr %1, i32 936
  %4 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 23657, i16 %5)
  %cmp4 = icmp eq i16 %5, 23657
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #9
  %6 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fw.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #12
  %call2.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.4, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.not.i, label %if.end8.i.i, label %opera1_xilinx_load_firmware.exit.thread

opera1_xilinx_load_firmware.exit.thread:          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #9
  br label %cleanup

if.end8.i.i:                                      ; preds = %land.lhs.true6
  %7 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #13
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %opera1_xilinx_rw.exit.thread.i, label %opera1_xilinx_rw.exit.i

opera1_xilinx_rw.exit.i:                          ; preds = %if.end8.i.i
  %shl.i.i.i = shl i32 %12, 8
  %or3.i.i = or i32 %shl.i.i.i, -2147483520
  %call16.i.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or3.i.i, i8 noundef zeroext -68, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 1, i32 noundef 2000) #9
  %14 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %testval.0.copyload.i = load i8, ptr %call7.i.i.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  %cmp10.not.i = icmp eq ptr %call9.i.i, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 103, i8 %testval.0.copyload.i)
  %cmp11.not.i = icmp eq i8 %testval.0.copyload.i, 103
  %or.cond.i = select i1 %cmp10.not.i, i1 true, i1 %cmp11.not.i
  br i1 %or.cond.i, label %if.end.critedge, label %opera1_xilinx_rw.exit.i.if.then13.i_crit_edge

opera1_xilinx_rw.exit.i.if.then13.i_crit_edge:    ; preds = %opera1_xilinx_rw.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

opera1_xilinx_rw.exit.thread.i:                   ; preds = %if.end8.i.i
  %cmp10.not41.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp10.not41.i, label %if.end.critedge21, label %opera1_xilinx_rw.exit.thread.i.if.then13.i_crit_edge

opera1_xilinx_rw.exit.thread.i.if.then13.i_crit_edge: ; preds = %opera1_xilinx_rw.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.then13.i:                                      ; preds = %opera1_xilinx_rw.exit.thread.i.if.then13.i_crit_edge, %opera1_xilinx_rw.exit.i.if.then13.i_crit_edge
  %15 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %21 = call ptr @memcpy(ptr %call9.i.i, ptr %18, i32 %20)
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i6.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not.i7.i = icmp eq ptr %call7.i.i6.i, null
  br i1 %tobool.not.i7.i, label %if.then13.i.opera1_xilinx_rw.exit11.i_crit_edge, label %if.end.i8.i

if.then13.i.opera1_xilinx_rw.exit11.i_crit_edge:  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %opera1_xilinx_rw.exit11.i

if.end.i8.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i3.i = shl i32 %23, 8
  %or3.i4.i = or i32 %shl.i.i3.i, -2147483648
  %25 = ptrtoint ptr %call7.i.i6.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %call7.i.i6.i, align 8
  %call16.i9.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or3.i4.i, i8 noundef zeroext -68, i8 noundef zeroext 64, i16 noundef zeroext 170, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i6.i, i16 noundef zeroext 1, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull %call7.i.i6.i) #9
  br label %opera1_xilinx_rw.exit11.i

opera1_xilinx_rw.exit11.i:                        ; preds = %if.end.i8.i, %if.then13.i.opera1_xilinx_rw.exit11.i_crit_edge
  %26 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1747.not.i = icmp eq i32 %29, 0
  br i1 %cmp1747.not.i, label %opera1_xilinx_rw.exit11.i.lor.lhs.false.critedge.i_crit_edge, label %opera1_xilinx_rw.exit11.i.for.body.i_crit_edge

opera1_xilinx_rw.exit11.i.for.body.i_crit_edge:   ; preds = %opera1_xilinx_rw.exit11.i
  br label %for.body.i

opera1_xilinx_rw.exit11.i.lor.lhs.false.critedge.i_crit_edge: ; preds = %opera1_xilinx_rw.exit11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.critedge.i

for.cond.i:                                       ; preds = %opera1_xilinx_rw.exit22.i
  %add.i = add i32 %35, %i.048.i
  %30 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %cmp17.i = icmp ugt i32 %33, %add.i
  br i1 %cmp17.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.lor.lhs.false.critedge.i_crit_edge

for.cond.i.lor.lhs.false.critedge.i_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.critedge.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %opera1_xilinx_rw.exit11.i.for.body.i_crit_edge
  %34 = phi i32 [ %33, %for.cond.i.for.body.i_crit_edge ], [ %29, %opera1_xilinx_rw.exit11.i.for.body.i_crit_edge ]
  %fpgasize.049.i = phi i32 [ %35, %for.cond.i.for.body.i_crit_edge ], [ 40, %opera1_xilinx_rw.exit11.i.for.body.i_crit_edge ]
  %i.048.i = phi i32 [ %add.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %opera1_xilinx_rw.exit11.i.for.body.i_crit_edge ]
  %sub.i = sub i32 %34, %i.048.i
  %35 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %fpgasize.049.i) #9
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i, align 8
  %conv6.i.i = and i32 %35, 65535
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv6.i.i, i32 noundef 3264) #13
  %tobool.not.i18.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i18.i, label %for.body.i.opera1_xilinx_rw.exit22.i_crit_edge, label %if.end.i19.i

for.body.i.opera1_xilinx_rw.exit22.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %opera1_xilinx_rw.exit22.i

if.end.i19.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i12.i = shl i32 %37, 8
  %or3.i13.i = or i32 %shl.i.i12.i, -2147483648
  %conv25.i = trunc i32 %35 to i16
  %add.ptr.i18 = getelementptr i8, ptr %call9.i.i, i32 %i.048.i
  %38 = call ptr @memcpy(ptr %call9.i.i.i, ptr %add.ptr.i18, i32 %conv6.i.i)
  %call16.i20.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or3.i13.i, i8 noundef zeroext -69, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call9.i.i.i, i16 noundef zeroext %conv25.i, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %opera1_xilinx_rw.exit22.i

opera1_xilinx_rw.exit22.i:                        ; preds = %if.end.i19.i, %for.body.i.opera1_xilinx_rw.exit22.i_crit_edge
  %retval.0.i21.i = phi i32 [ %call16.i20.i, %if.end.i19.i ], [ -12, %for.body.i.opera1_xilinx_rw.exit22.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i21.i, i32 %35)
  %cmp27.not.i = icmp eq i32 %retval.0.i21.i, %35
  br i1 %cmp27.not.i, label %for.cond.i, label %do.end32.i

do.end32.i:                                       ; preds = %opera1_xilinx_rw.exit22.i
  call void @__sanitizer_cov_trace_pc() #11
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %do.end42.i

lor.lhs.false.critedge.i:                         ; preds = %for.cond.i.lor.lhs.false.critedge.i_crit_edge, %opera1_xilinx_rw.exit11.i.lor.lhs.false.critedge.i_crit_edge
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i30.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not.i33.i = icmp eq ptr %call7.i.i30.i, null
  br i1 %tobool.not.i33.i, label %lor.lhs.false.critedge.i.do.end42.i_crit_edge, label %opera1_xilinx_rw.exit39.i

lor.lhs.false.critedge.i.do.end42.i_crit_edge:    ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42.i

opera1_xilinx_rw.exit39.i:                        ; preds = %lor.lhs.false.critedge.i
  %shl.i.i23.i = shl i32 %40, 8
  %or3.i24.i = or i32 %shl.i.i23.i, -2147483648
  %42 = ptrtoint ptr %call7.i.i30.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %call7.i.i30.i, align 8
  %call16.i37.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or3.i24.i, i8 noundef zeroext -96, i8 noundef zeroext 64, i16 noundef zeroext -6656, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i30.i, i16 noundef zeroext 1, i32 noundef 2000) #9
  call void @kfree(ptr noundef nonnull %call7.i.i30.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.i37.i)
  %cmp37.not.i = icmp eq i32 %call16.i37.i, 1
  br i1 %cmp37.not.i, label %if.end.critedge22, label %opera1_xilinx_rw.exit39.i.do.end42.i_crit_edge

opera1_xilinx_rw.exit39.i.do.end42.i_crit_edge:   ; preds = %opera1_xilinx_rw.exit39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42.i

do.end42.i:                                       ; preds = %opera1_xilinx_rw.exit39.i.do.end42.i_crit_edge, %lor.lhs.false.critedge.i.do.end42.i_crit_edge, %do.end32.i
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  call void @kfree(ptr noundef %call9.i.i) #9
  %43 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %44) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #9
  br label %cleanup

if.end.critedge:                                  ; preds = %opera1_xilinx_rw.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %call9.i.i) #9
  %45 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %46) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #9
  br label %if.end

if.end.critedge21:                                ; preds = %opera1_xilinx_rw.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef null) #9
  %47 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %48) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #9
  br label %if.end

if.end.critedge22:                                ; preds = %opera1_xilinx_rw.exit39.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %call9.i.i) #9
  %49 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %50) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #9
  br label %if.end

if.end:                                           ; preds = %if.end.critedge22, %if.end.critedge21, %if.end.critedge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call10 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @opera1_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  %. = select i1 %cmp11.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end42.i, %opera1_xilinx_load_firmware.exit.thread
  %retval.0 = phi i32 [ -22, %do.end42.i ], [ %., %if.end ], [ -22, %opera1_xilinx_load_firmware.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opera1_xilinx_rw(ptr noundef %dev, i8 noundef zeroext %request, i16 noundef zeroext %value, ptr nocapture noundef %data, i16 noundef zeroext %len, i32 noundef %flags) unnamed_addr #2 align 64 {
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
  %.70 = select i1 %cmp, i8 -64, i8 64
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
  %call16 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or3, i8 noundef zeroext %request, i8 noundef zeroext %.70, i16 noundef zeroext %value, i16 noundef zeroext 0, ptr noundef nonnull %call9.i, i16 noundef zeroext %len, i32 noundef 2000) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -79, i8 %request)
  %cmp18 = icmp eq i8 %request, -79
  br i1 %cmp18, label %if.then20, label %if.end12.if.end34_crit_edge

if.end12.if.end34_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then20:                                        ; preds = %if.end12
  %3 = ptrtoint ptr %call9.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call9.i, align 128
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev, align 8
  %shl.i65 = shl i32 %6, 8
  %or23 = or i32 %shl.i65, -2147483520
  %call24 = tail call i32 @usb_control_msg(ptr noundef %dev, i32 noundef %or23, i8 noundef zeroext -79, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %call9.i, i16 noundef zeroext 1, i32 noundef 2000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 1
  br i1 %cmp25, label %if.then20.out_crit_edge, label %lor.lhs.false

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %if.then20
  %7 = ptrtoint ptr %call9.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp29.not = icmp eq i8 %8, 8
  br i1 %cmp29.not, label %if.end32, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end32:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %4, ptr %call9.i, align 128
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.end12.if.end34_crit_edge
  br i1 %cmp, label %if.then37, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %10 = call ptr @memcpy(ptr %data, ptr %call9.i, i32 %conv6)
  br label %out

out:                                              ; preds = %if.then37, %if.end34.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.then20.out_crit_edge
  %ret.0 = phi i32 [ %call16, %if.then37 ], [ %call16, %if.end34.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ 0, %if.then20.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opera1_streaming_ctrl(ptr nocapture noundef readonly %adap, i32 noundef %onoff) #2 align 64 {
entry:
  %start_tuner = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %start_tuner) #9
  %0 = getelementptr inbounds i8, ptr %start_tuner, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %start_tuner to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 4, ptr %start_tuner, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %start_tuner, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %start_tuner, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %start_tuner, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %cond = select i1 %tobool.not, ptr @opera1_streaming_ctrl.buf_stop, ptr @opera1_streaming_ctrl.buf_start
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cond, ptr %buf, align 4
  %6 = load i32, ptr @dvb_usb_opera1_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cond3 = select i1 %tobool.not, ptr @.str.23, ptr @.str.22
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %cond3) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %8, i32 0, i32 8
  %call4 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %start_tuner, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %start_tuner) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opera1_pid_filter_control(ptr nocapture noundef readonly %adap, i32 noundef %onoff) #2 align 64 {
entry:
  %b_pid = alloca [3 x i8], align 1
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %b_pid) #9
  %0 = ptrtoint ptr %b_pid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b_pid, align 1, !annotation !142
  %1 = getelementptr inbounds [3 x i8], ptr %b_pid, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !142
  %3 = getelementptr inbounds [3 x i8], ptr %b_pid, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !142
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %5 = getelementptr inbounds i8, ptr %msg, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 3, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %b_pid, ptr %buf, align 4
  %11 = load i32, ptr @dvb_usb_opera1_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %do.end

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool1.not = icmp eq i32 %onoff, 0
  %cond = select i1 %tobool1.not, ptr @.str.27, ptr @.str.26
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %cond) #12
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %u.08 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 4, %for.body.preheader ]
  %conv = trunc i32 %u.08 to i8
  %12 = ptrtoint ptr %b_pid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %b_pid, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %1, align 1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -128, ptr %3, align 1
  %15 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %16, i32 0, i32 8
  %call5 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  %add = add nuw nsw i32 %u.08, 2
  %cmp = icmp ult i32 %u.08, 124
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %b_pid) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opera1_pid_filter(ptr nocapture noundef readonly %adap, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) #2 align 64 {
entry:
  %b_pid = alloca [3 x i8], align 1
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %b_pid) #9
  %0 = ptrtoint ptr %b_pid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b_pid, align 1, !annotation !142
  %1 = getelementptr inbounds [3 x i8], ptr %b_pid, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !142
  %3 = getelementptr inbounds [3 x i8], ptr %b_pid, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !142
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %5 = getelementptr inbounds i8, ptr %msg, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 3, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %b_pid, ptr %buf, align 4
  %11 = load i32, ptr @dvb_usb_opera1_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %pid to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool1.not = icmp eq i32 %onoff, 0
  %cond = select i1 %tobool1.not, ptr @.str.23, ptr @.str.22
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %index, i32 noundef %conv, ptr noundef nonnull %cond) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %index.tr = trunc i32 %index to i8
  %12 = shl i8 %index.tr, 1
  %conv2 = add i8 %12, 4
  %13 = ptrtoint ptr %b_pid to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv2, ptr %b_pid, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool3.not = icmp eq i32 %onoff, 0
  %conv4 = trunc i16 %pid to i8
  %spec.select = select i1 %tobool3.not, i8 0, i8 %conv4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.select, ptr %1, align 1
  %15 = lshr i16 %pid, 8
  %16 = trunc i16 %15 to i8
  %cond14 = select i1 %tobool3.not, i8 0, i8 %16
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %cond14, ptr %3, align 1
  %18 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %19, i32 0, i32 8
  %call18 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %b_pid) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opera1_frontend_attach(ptr nocapture noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.30) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.31) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.30) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond30 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call4 = tail call ptr %cond30(ptr noundef nonnull @opera1_stv0299_config, ptr noundef %i2c_adap) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then13

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.30) #9
  br label %do.end20

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #12
  br label %do.end20

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %2 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %fe_adap, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %call4, i32 0, i32 1, i32 25
  %3 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @opera1_set_voltage, ptr %set_voltage, align 4
  br label %return

do.end20:                                         ; preds = %do.end, %if.then5
  %fe_adap32 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %d, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap32 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fe_adap32, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  br label %return

return:                                           ; preds = %do.end20, %if.then13
  %retval.0 = phi i32 [ 0, %if.then13 ], [ -5, %do.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opera1_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.37) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.38) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.37) #9
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
  tail call void @__symbol_put(ptr noundef nonnull @.str.37) #9
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opera1_power_ctrl(ptr nocapture noundef readonly %d, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %conv = zext i1 %not.tobool.not to i8
  %0 = load i32, ptr @dvb_usb_opera1_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cond3 = select i1 %tobool.not, ptr @.str.23, ptr @.str.22
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull %cond3) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 1) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.opera1_xilinx_rw.exit_crit_edge, label %if.end.i

if.end.opera1_xilinx_rw.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %opera1_xilinx_rw.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl i32 %4, 8
  %or3.i = or i32 %shl.i.i, -2147483648
  %conv4 = zext i1 %not.tobool.not to i16
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %call7.i.i, align 8
  %call16.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or3.i, i8 noundef zeroext -73, i8 noundef zeroext 64, i16 noundef zeroext %conv4, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 2000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %opera1_xilinx_rw.exit

opera1_xilinx_rw.exit:                            ; preds = %if.end.i, %if.end.opera1_xilinx_rw.exit_crit_edge
  %retval.0.i = phi i32 [ %call16.i, %if.end.i ], [ -12, %if.end.opera1_xilinx_rw.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opera1_read_mac_address(ptr nocapture noundef readonly %d, ptr nocapture noundef %mac) #2 align 64 {
entry:
  %command = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %command) #9
  %0 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %command, align 1
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 4
  %call = call fastcc i32 @opera1_xilinx_rw(ptr noundef %2, i8 noundef zeroext -79, i16 noundef zeroext 160, ptr noundef nonnull %command, i16 noundef zeroext 1, i32 noundef 1)
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %call2 = tail call fastcc i32 @opera1_xilinx_rw(ptr noundef %4, i8 noundef zeroext -79, i16 noundef zeroext 161, ptr noundef %mac, i16 noundef zeroext 6, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %command) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opera1_rc_query(ptr noundef %dev, ptr nocapture noundef writeonly %event, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  %rcbuffer = alloca [32 x i8], align 1
  %read_remote = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rcbuffer) #9
  %2 = call ptr @memset(ptr %rcbuffer, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %read_remote) #9
  %3 = getelementptr inbounds i8, ptr %read_remote, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %read_remote to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 5, ptr %read_remote, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %read_remote, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %read_remote, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 32, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %read_remote, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rcbuffer, ptr %buf, align 4
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %dev, i32 0, i32 8
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %read_remote, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %entry.for.body_crit_edge, label %if.else57

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %send_key.0101 = phi i32 [ %send_key.2, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.0100 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i8], ptr %rcbuffer, i32 0, i32 %i.0100
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp ne i8 %10, 0
  %or = zext i1 %tobool.not to i32
  %spec.select = or i32 %send_key.0101, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.0100)
  %cmp4.not = icmp ne i32 %i.0100, 31
  %shl = zext i1 %cmp4.not to i32
  %send_key.2 = shl i32 %spec.select, %shl
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %and = and i32 %send_key.2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %shl9 = shl i32 %send_key.2, 1
  %shr = lshr i32 %send_key.2, 15
  %and10 = and i32 %shr, 1
  %or11 = or i32 %and10, %shl9
  %send_key.3 = select i1 %tobool7.not, i32 %send_key.2, i32 %or11
  %11 = zext i32 %send_key.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %send_key.3, label %for.end.for.body20.preheader_crit_edge [
    i32 65535, label %land.lhs.true
    i32 0, label %for.end.cleanup_crit_edge
  ]

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.for.body20.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20.preheader

for.body20.preheader:                             ; preds = %land.lhs.true.for.body20.preheader_crit_edge, %for.end.for.body20.preheader_crit_edge
  br label %for.body20

land.lhs.true:                                    ; preds = %for.end
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp14.not = icmp eq i32 %13, 0
  br i1 %cmp14.not, label %land.lhs.true.for.body20.preheader_crit_edge, label %if.then15

land.lhs.true.for.body20.preheader_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20.preheader

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %state, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %17 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %event, align 4
  br label %cleanup

for.body20:                                       ; preds = %if.else29.for.body20_crit_edge, %for.body20.preheader
  %send_key.4103 = phi i32 [ %shr30, %if.else29.for.body20_crit_edge ], [ %send_key.3, %for.body20.preheader ]
  %shr21 = lshr i32 %send_key.4103, 16
  %trunc = trunc i32 %shr21 to i16
  %18 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %trunc, label %if.else29 [
    i16 4588, label %for.body20.if.end36_crit_edge
    i16 4333, label %if.then26
  ]

for.body20.if.end36_crit_edge:                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then26:                                        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  %or28 = or i32 %send_key.4103, 283967488
  br label %if.end36

if.else29:                                        ; preds = %for.body20
  %shr30 = lshr i32 %send_key.4103, 1
  %cmp19.not = icmp ult i32 %send_key.4103, 2
  br i1 %cmp19.not, label %if.else29.cleanup_crit_edge, label %if.else29.for.body20_crit_edge

if.else29.for.body20_crit_edge:                   ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20

if.else29.cleanup_crit_edge:                      ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.then26, %for.body20.if.end36_crit_edge
  %send_key.5.ph = phi i32 [ %or28, %if.then26 ], [ %send_key.4103, %for.body20.if.end36_crit_edge ]
  %and37 = and i32 %send_key.5.ph, 65279
  %or38 = or i32 %and37, 256
  br label %for.body41

for.body41:                                       ; preds = %if.end52.for.body41_crit_edge, %if.end36
  %i.1104 = phi i32 [ 0, %if.end36 ], [ %inc55, %if.end52.for.body41_crit_edge ]
  %arrayidx42 = getelementptr [26 x %struct.rc_map_table], ptr @rc_map_opera1_table, i32 0, i32 %i.1104
  %19 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx42, align 8
  %conv.i = trunc i64 %20 to i32
  %conv = and i32 %conv.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %or38, i32 %conv)
  %cmp45 = icmp eq i32 %or38, %conv
  br i1 %cmp45, label %if.then47, label %if.end52

if.then47:                                        ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %state, align 4
  %keycode = getelementptr [26 x %struct.rc_map_table], ptr @rc_map_opera1_table, i32 0, i32 %i.1104, i32 1
  %22 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %keycode, align 8
  %24 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %event, align 4
  %25 = load i32, ptr %keycode, align 8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %1, align 4
  br label %cleanup

if.end52:                                         ; preds = %for.body41
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %1, align 4
  %inc55 = add nuw nsw i32 %i.1104, 1
  %exitcond109.not = icmp eq i32 %inc55, 26
  br i1 %exitcond109.not, label %if.end52.cleanup_crit_edge, label %if.end52.for.body41_crit_edge

if.end52.for.body41_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else57:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else57, %if.end52.cleanup_crit_edge, %if.then47, %if.else29.cleanup_crit_edge, %if.then15, %for.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %read_remote) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rcbuffer) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opera1_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #2 align 64 {
entry:
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %0 = call ptr @memcpy(ptr %msg, ptr @__const.opera1_set_voltage.msg, i32 12)
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %1 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %voltage)
  %cmp = icmp eq i32 %voltage, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3, ptr %msg, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @opera1_set_voltage.command_18v, ptr %buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %8, i32 0, i32 8
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opera1_stv0299_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #2 align 64 {
entry:
  %buf.i34 = alloca [2 x i8], align 1
  %buf.i28 = alloca [2 x i8], align 1
  %buf.i22 = alloca [2 x i8], align 1
  %buf.i16 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 19, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -104, ptr %0, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %stv0299_writereg.exit.thread, label %stv0299_writereg.exit

stv0299_writereg.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i16) #9
  br label %stv0299_writereg.exit21

stv0299_writereg.exit:                            ; preds = %entry
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #9
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i16) #9
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i16, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i16 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %buf.i16, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -107, ptr %6, align 1
  %tobool.not.i18 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i18, label %stv0299_writereg.exit.stv0299_writereg.exit21_crit_edge, label %if.then.i20

stv0299_writereg.exit.stv0299_writereg.exit21_crit_edge: ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit21

if.then.i20:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i19 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i16, i32 noundef 2) #9
  br label %stv0299_writereg.exit21

stv0299_writereg.exit21:                          ; preds = %if.then.i20, %stv0299_writereg.exit.stv0299_writereg.exit21_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i16) #9
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i22) #9
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i22, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i22 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 31, ptr %buf.i22, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %9, align 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %tobool.not.i24 = icmp eq ptr %13, null
  br i1 %tobool.not.i24, label %stv0299_writereg.exit21.stv0299_writereg.exit27_crit_edge, label %if.then.i26

stv0299_writereg.exit21.stv0299_writereg.exit27_crit_edge: ; preds = %stv0299_writereg.exit21
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit27

if.then.i26:                                      ; preds = %stv0299_writereg.exit21
  call void @__sanitizer_cov_trace_pc() #11
  %call.i25 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i22, i32 noundef 2) #9
  br label %stv0299_writereg.exit27

stv0299_writereg.exit27:                          ; preds = %if.then.i26, %stv0299_writereg.exit21.stv0299_writereg.exit27_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i22) #9
  %shr3 = lshr i32 %ratio, 8
  %conv5 = trunc i32 %shr3 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i28) #9
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i28, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i28 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %buf.i28, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5, ptr %14, align 1
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %tobool.not.i30 = icmp eq ptr %18, null
  br i1 %tobool.not.i30, label %stv0299_writereg.exit27.stv0299_writereg.exit33_crit_edge, label %if.then.i32

stv0299_writereg.exit27.stv0299_writereg.exit33_crit_edge: ; preds = %stv0299_writereg.exit27
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit33

if.then.i32:                                      ; preds = %stv0299_writereg.exit27
  call void @__sanitizer_cov_trace_pc() #11
  %call.i31 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i28, i32 noundef 2) #9
  br label %stv0299_writereg.exit33

stv0299_writereg.exit33:                          ; preds = %if.then.i32, %stv0299_writereg.exit27.stv0299_writereg.exit33_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i28) #9
  %19 = trunc i32 %ratio to i8
  %conv8 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i34) #9
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i34, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i34 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 33, ptr %buf.i34, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv8, ptr %20, align 1
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %tobool.not.i36 = icmp eq ptr %24, null
  br i1 %tobool.not.i36, label %stv0299_writereg.exit33.stv0299_writereg.exit39_crit_edge, label %if.then.i38

stv0299_writereg.exit33.stv0299_writereg.exit39_crit_edge: ; preds = %stv0299_writereg.exit33
  call void @__sanitizer_cov_trace_pc() #11
  br label %stv0299_writereg.exit39

if.then.i38:                                      ; preds = %stv0299_writereg.exit33
  call void @__sanitizer_cov_trace_pc() #11
  %call.i37 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i34, i32 noundef 2) #9
  br label %stv0299_writereg.exit39

stv0299_writereg.exit39:                          ; preds = %if.then.i38, %stv0299_writereg.exit33.stv0299_writereg.exit39_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i34) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opera1_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
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
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp450 = icmp sgt i32 %num, 0
  br i1 %cmp450, label %if.end.i.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %for.cond.preheader
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 6
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.if.end.i_crit_edge, %if.end.i.lr.ph
  %i.051 = phi i32 [ 0, %if.end.i.lr.ph ], [ %inc, %for.inc.if.end.i_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.051
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.051, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.051, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.051, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len, align 4
  %call1.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.for.end_crit_edge, label %if.end3.i

if.end.i.for.end_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end3.i:                                        ; preds = %if.end.i
  %10 = and i16 %5, 1
  %shl = shl i16 %3, 1
  %or = or i16 %10, %shl
  %conv.i = zext i16 %or to i32
  %11 = lshr i32 %conv.i, 1
  %switch.tableidx = add nsw i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 4
  br i1 %12, label %switch.lookup, label %if.end3.i.opera1_usb_i2c_msgxfer.exit_crit_edge

if.end3.i.opera1_usb_i2c_msgxfer.exit_crit_edge:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %opera1_usb_i2c_msgxfer.exit

switch.lookup:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.shiftamt = shl nsw i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 -1196312906, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.opera1_i2c_xfer, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %13)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %opera1_usb_i2c_msgxfer.exit

opera1_usb_i2c_msgxfer.exit:                      ; preds = %switch.lookup, %if.end3.i.opera1_usb_i2c_msgxfer.exit_crit_edge
  %request.0.i = phi i8 [ %switch.masked, %switch.lookup ], [ -79, %if.end3.i.opera1_usb_i2c_msgxfer.exit_crit_edge ]
  %value.0.i = phi i16 [ %switch.load, %switch.lookup ], [ %or, %if.end3.i.opera1_usb_i2c_msgxfer.exit_crit_edge ]
  %14 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev.i, align 4
  %and.i = and i32 %conv.i, 1
  %16 = xor i32 %and.i, 1
  %call9.i = tail call fastcc i32 @opera1_xilinx_rw(ptr noundef %15, i8 noundef zeroext %request.0.i, i16 noundef zeroext %value.0.i, ptr noundef %7, i16 noundef zeroext %9, i32 noundef %16) #9
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #9
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len, align 4
  %conv14 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %conv14)
  %cmp15.not = icmp eq i32 %call9.i, %conv14
  br i1 %cmp15.not, label %if.end18, label %opera1_usb_i2c_msgxfer.exit.for.end_crit_edge

opera1_usb_i2c_msgxfer.exit.for.end_crit_edge:    ; preds = %opera1_usb_i2c_msgxfer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end18:                                         ; preds = %opera1_usb_i2c_msgxfer.exit
  %19 = load i32, ptr @dvb_usb_opera1_debug, align 4
  %and19 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.for.inc_crit_edge, label %do.end

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %call9.i, i32 noundef %call9.i) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end18.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.if.end.i_crit_edge

for.inc.if.end.i_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %opera1_usb_i2c_msgxfer.exit.for.end_crit_edge, %if.end.i.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %for.end ], [ -19, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @opera1_i2c_func(ptr nocapture noundef readnone %adapter) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !33, !35, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !73, !74, !76, !77, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !108, !109, !110, !111, !112, !114, !115, !116, !117, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 42, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 46, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !6, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr389, !6, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_opera__390_574_opera1_driver_init6, !10, !"__initcall__kmod_dvb_usb_opera__390_574_opera1_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 574, i32 1}
!11 = !{ptr @__exitcall_opera1_driver_exit, !10, !"__exitcall_opera1_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author391, !13, !"__UNIQUE_ID_author391", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 576, i32 1}
!14 = !{ptr @__UNIQUE_ID_author392, !15, !"__UNIQUE_ID_author392", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 577, i32 1}
!16 = !{ptr @__UNIQUE_ID_description393, !17, !"__UNIQUE_ID_description393", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 578, i32 1}
!18 = !{ptr @__UNIQUE_ID_version394, !19, !"__UNIQUE_ID_version394", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 579, i32 1}
!20 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__modver_attr, !19, !"__modver_attr", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_file395, !25, !"__UNIQUE_ID_file395", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 580, i32 1}
!26 = !{ptr @__UNIQUE_ID_license396, !25, !"__UNIQUE_ID_license396", i1 false, i1 false}
!27 = !{ptr @dvb_usb_opera1_debug, !28, !"dvb_usb_opera1_debug", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 40, i32 12}
!29 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!30 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!31 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!32 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 568, i32 10}
!35 = !{ptr @opera1_driver, !36, !"opera1_driver", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 567, i32 26}
!37 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 556, i32 37}
!39 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 450, i32 2}
!41 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @opera1_xilinx_load_firmware._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @opera1_xilinx_load_firmware._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 453, i32 3}
!47 = !{ptr @opera1_xilinx_load_firmware._entry.8, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @opera1_xilinx_load_firmware._entry_ptr.10, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 475, i32 6}
!51 = !{ptr @opera1_xilinx_load_firmware._entry.11, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @opera1_xilinx_load_firmware._entry_ptr.13, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 485, i32 5}
!55 = !{ptr @opera1_xilinx_load_firmware._entry.14, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @opera1_xilinx_load_firmware._entry_ptr.16, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 498, i32 14}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 542, i32 4}
!61 = !{ptr @opera1_properties, !62, !"opera1_properties", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 495, i32 41}
!63 = !{ptr @opera1_streaming_ctrl.buf_start, !64, !"buf_start", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 295, i32 12}
!65 = !{ptr @opera1_streaming_ctrl.buf_stop, !66, !"buf_stop", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 296, i32 12}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 301, i32 3}
!69 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @opera1_streaming_ctrl._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @opera1_streaming_ctrl._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 331, i32 3}
!76 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @opera1_pid_filter_control._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @opera1_pid_filter_control._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 314, i32 3}
!83 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @opera1_pid_filter._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @opera1_pid_filter._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 264, i32 21}
!88 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @opera1_frontend_attach._entry, !87, !"_entry", i1 false, i1 false}
!92 = !{ptr @opera1_frontend_attach._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 270, i32 2}
!95 = !{ptr @opera1_frontend_attach._entry.34, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @opera1_frontend_attach._entry_ptr.36, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @opera1_stv0299_config, !98, !"opera1_stv0299_config", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 250, i32 30}
!99 = !{ptr @opera1_inittab, !100, !"opera1_inittab", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 196, i32 11}
!101 = !{ptr @opera1_set_voltage.command_13v, !102, !"command_13v", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 170, i32 12}
!103 = !{ptr @opera1_set_voltage.command_18v, !104, !"command_18v", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 171, i32 12}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 276, i32 2}
!107 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @opera1_tuner_attach._entry, !106, !"_entry", i1 false, i1 false}
!111 = !{ptr @opera1_tuner_attach._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 288, i32 3}
!114 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @opera1_power_ctrl._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @opera1_power_ctrl._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @rc_map_opera1_table, !118, !"rc_map_opera1_table", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 341, i32 28}
!119 = !{ptr @opera1_i2c_algo, !120, !"opera1_i2c_algo", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 162, i32 29}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 151, i32 4}
!123 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @opera1_i2c_xfer._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @opera1_i2c_xfer._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 96, i32 3}
!128 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @opera1_usb_i2c_msgxfer._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @opera1_usb_i2c_msgxfer._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @opera1_table, !132, !"opera1_table", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/dvb-usb/opera1.c", i32 428, i32 29}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{!"auto-init"}
