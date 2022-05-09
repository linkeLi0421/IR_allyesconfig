; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/dtv5100.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/dtv5100.c"
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.133 = type { i32 }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.132 }
%union.anon.132 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, i32, i32 }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.anon.135 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qt1010_config = type { i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.135, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
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
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.125], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.125 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.126 }>
%union.anon.126 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [22 x i8] c"dvb_usb_dtv5100.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_dtv5100_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_dtv5100_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [35 x i8] c"dvb_usb_dtv5100.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [47 x i8] c"dvb_usb_dtv5100.parm=debug:set debugging level\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [27 x i8] c"dvb_usb_dtv5100.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [51 x i8] c"dvb_usb_dtv5100.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [52 x i8] c"dvb_usb_dtv5100.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_dtv5100__390_216_dtv5100_driver_init6 = internal global ptr @dtv5100_driver_init, section ".initcall6.init", align 4
@dtv5100_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @dtv5100_probe, ptr @dvb_usb_device_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dtv5100_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_dtv5100_driver_exit = internal global ptr @dtv5100_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author391 = internal constant [66 x i8] c"dvb_usb_dtv5100.author=Antoine Jacquet, http://royale.zerezo.com/\00", section ".modinfo", align 1
@__UNIQUE_ID_description392 = internal constant [54 x i8] c"dvb_usb_dtv5100.description=AME DTV-5100 USB2.0 DVB-T\00", section ".modinfo", align 1
@__UNIQUE_ID_file393 = internal constant [63 x i8] c"dvb_usb_dtv5100.file=drivers/media/usb/dvb-usb/dvb-usb-dtv5100\00", section ".modinfo", align 1
@__UNIQUE_ID_license394 = internal constant [28 x i8] c"dvb_usb_dtv5100.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_usb_dtv5100\00", [16 x i8] zeroinitializer }, align 32
@dtv5100_table = internal global { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1726, i16 -24014, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dtv5100_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dtv5100_i2c_xfer, ptr null, ptr null, ptr null, ptr @dtv5100_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AME DTV-5100 USB2.0 DVB-T\00", [38 x i8] zeroinitializer }, align 32
@dtv5100_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.133, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.135, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.133, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.135, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 0, ptr null, ptr null, i32 0, i32 80, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.133, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.133, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.133, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.133, [8 x i8] } }, i32 } { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @dtv5100_frontend_attach, ptr @dtv5100_tuner_attach, { i32, i32, i32, { %struct.anon.133, [8 x i8] } } { i32 1, i32 8, i32 130, { %struct.anon.133, [8 x i8] } { %struct.anon.133 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr null, %struct.anon.135 zeroinitializer, ptr @dtv5100_i2c_algo, i32 0, i32 0, i32 1, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.1, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr @dtv5100_table, [14 x ptr] zeroinitializer }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@dtv5100_zl10353_config = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 0, i32 0, i32 0, i32 1, i32 1, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@dtv5100_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dtv5100_frontend_attach\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/usb/dvb-usb/dtv5100.c\00", [60 x i8] zeroinitializer }, align 32
@dtv5100_frontend_attach._entry_ptr = internal global ptr @dtv5100_frontend_attach._entry, section ".printk_index", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qt1010_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:qt1010_attach\00", [43 x i8] zeroinitializer }, align 32
@dtv5100_qt1010_config = internal global { %struct.qt1010_config, [31 x i8] } { %struct.qt1010_config { i8 -60 }, [31 x i8] zeroinitializer }, align 32
@dtv5100_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol qt1010_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dtv5100_tuner_attach\00", [43 x i8] zeroinitializer }, align 32
@dtv5100_tuner_attach._entry_ptr = internal global ptr @dtv5100_tuner_attach._entry, section ".printk_index", align 4
@dtv5100_i2c_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.7, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014dtv5100: wlen = %x, aborting.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dtv5100_i2c_msg\00", [16 x i8] zeroinitializer }, align 32
@dtv5100_i2c_msg._entry_ptr = internal global ptr @dtv5100_i2c_msg._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"dvb_usb_dtv5100_debug\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 16, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"dtv5100_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 209, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 19, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 216, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"dtv5100_table\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 165, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"dtv5100_i2c_algo\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 100, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 202, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"dtv5100_properties\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 171, i32 41 }
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"dtv5100_zl10353_config\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 106, i32 30 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 114, i32 24 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"dtv5100_qt1010_config\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 125, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 131, i32 9 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [39 x i8] c"../drivers/media/usb/dvb-usb/dtv5100.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 53, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author391, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description392, ptr @__UNIQUE_ID_file393, ptr @__UNIQUE_ID_license394, ptr @__exitcall_dtv5100_driver_exit, ptr @__initcall__kmod_dvb_usb_dtv5100__390_216_dtv5100_driver_init6, ptr @__param_adapter_nr, ptr @__param_debug, ptr @dtv5100_driver_exit, ptr @dtv5100_frontend_attach._entry, ptr @dtv5100_frontend_attach._entry_ptr, ptr @dtv5100_i2c_msg._entry, ptr @dtv5100_i2c_msg._entry_ptr, ptr @dtv5100_tuner_attach._entry, ptr @dtv5100_tuner_attach._entry_ptr, ptr @dvb_usb_dtv5100_debug, ptr @dtv5100_driver, ptr @adapter_nr, ptr @.str, ptr @dtv5100_table, ptr @dtv5100_i2c_algo, ptr @.str.1, ptr @dtv5100_properties, ptr @.str.3, ptr @.str.4, ptr @dtv5100_zl10353_config, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dtv5100_qt1010_config, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_dtv5100_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtv5100_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtv5100_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtv5100_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtv5100_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtv5100_zl10353_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtv5100_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtv5100_qt1010_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtv5100_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtv5100_i2c_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dtv5100_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @dtv5100_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dtv5100_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_deregister(ptr noundef nonnull @dtv5100_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtv5100_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %3, 8
  %or = or i32 %shl.i, -2147483648
  %call6 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or, i8 noundef zeroext -59, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %entry
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 8
  %shl.i.1 = shl i32 %5, 8
  %or.1 = or i32 %shl.i.1, -2147483648
  %call6.1 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.1, i8 noundef zeroext -59, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1)
  %tobool7.not.1 = icmp eq i32 %call6.1, 0
  br i1 %tobool7.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @dtv5100_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #5
  br label %cleanup

cleanup:                                          ; preds = %for.cond.1, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %for.cond.1 ], [ %call6, %entry.cleanup_crit_edge ], [ %call6.1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtv5100_frontend_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.3) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.4) #5
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.3) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond25 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call4 = tail call ptr %cond25(ptr noundef nonnull @dtv5100_zl10353_config, ptr noundef %i2c_adap) #5
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.3) #5
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe_adap27 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %2 = ptrtoint ptr %fe_adap27 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fe_adap27, align 8
  br label %return

if.end14:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %3 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %fe_adap, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %call4, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %i2c_gate_ctrl, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.end7.thread
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -5, %if.end7.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtv5100_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.8) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.9) #5
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.8) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond16 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %0 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe_adap, align 8
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 8
  %call4 = tail call ptr %cond16(ptr noundef %1, ptr noundef %i2c_adap, ptr noundef nonnull @dtv5100_qt1010_config) #5
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.8) #5
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  %__r.0 = phi ptr [ null, %if.then5 ], [ %call4, %if.then.if.end7_crit_edge ], [ null, %do.end ]
  %cmp9 = icmp eq ptr %__r.0, null
  %cond10 = select i1 %cmp9, i32 -19, i32 0
  ret i32 %cond10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtv5100_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp = icmp sgt i32 %num, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp570 = icmp sgt i32 %num, 0
  br i1 %cmp570, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %buf15 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %len18 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %udev6.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %for.inc.for.body_crit_edge ]
  %add = add nsw i32 %i.071, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp6 = icmp slt i32 %add, %num
  br i1 %cmp6, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then8

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  %arrayidx9 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.071
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx9, align 4
  %conv10 = trunc i16 %6 to i8
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.071, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf, align 4
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.071, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %len, align 4
  %11 = ptrtoint ptr %buf15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf15, align 4
  %13 = ptrtoint ptr %len18 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len18, align 4
  %call19 = tail call fastcc i32 @dtv5100_i2c_msg(ptr noundef %1, i8 noundef zeroext %conv10, ptr noundef %8, i16 noundef zeroext %10, ptr noundef %12, i16 noundef zeroext %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then8.for.end_crit_edge, label %if.then8.for.inc_crit_edge

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then8.for.end_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %arrayidx24 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.071
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx24, align 4
  %conv26 = trunc i16 %16 to i8
  %buf28 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.071, i32 3
  %17 = ptrtoint ptr %buf28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf28, align 4
  %len30 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.071, i32 2
  %19 = ptrtoint ptr %len30 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len30, align 4
  %21 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv.i, align 8
  %23 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i16 %20, label %dtv5100_i2c_msg.exit.thread [
    i16 1, label %sw.bb.i
    i16 2, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %udev6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev6.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i = shl i32 %27, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv26)
  %cmp.i = icmp eq i8 %conv26, 0
  %conv4.i = select i1 %cmp.i, i8 -63, i8 -56
  br label %dtv5100_i2c_msg.exit

sw.bb5.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %udev6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %udev6.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i40.i = shl i32 %31, 8
  %or8.i = or i32 %shl.i40.i, -2147483648
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv26)
  %cmp10.i = icmp eq i8 %conv26, 0
  %conv13.i = select i1 %cmp10.i, i8 -64, i8 -57
  %arrayidx.i = getelementptr i8, ptr %18, i32 1
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %conv14.i = zext i8 %33 to i16
  br label %dtv5100_i2c_msg.exit

dtv5100_i2c_msg.exit.thread:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i16 %20 to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv.i) #8
  br label %for.end

dtv5100_i2c_msg.exit:                             ; preds = %sw.bb5.i, %sw.bb.i
  %pipe.0.i = phi i32 [ %or8.i, %sw.bb5.i ], [ %or1.i, %sw.bb.i ]
  %request.0.i = phi i8 [ %conv13.i, %sw.bb5.i ], [ %conv4.i, %sw.bb.i ]
  %type.0.i = phi i8 [ 64, %sw.bb5.i ], [ -64, %sw.bb.i ]
  %value.0.i = phi i16 [ %conv14.i, %sw.bb5.i ], [ 0, %sw.bb.i ]
  %conv17.i = shl i16 %16, 8
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %18, align 1
  %conv19.i = zext i8 %35 to i16
  %add.i = or i16 %conv17.i, %conv19.i
  tail call void @msleep(i32 noundef 1) #5
  %36 = ptrtoint ptr %udev6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udev6.i, align 4
  %call25.i = tail call i32 @usb_control_msg(ptr noundef %37, i32 noundef %pipe.0.i, i8 noundef zeroext %request.0.i, i8 noundef zeroext %type.0.i, i16 noundef zeroext %value.0.i, i16 noundef zeroext %add.i, ptr noundef %22, i16 noundef zeroext 0, i32 noundef 500) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp32 = icmp slt i32 %call25.i, 0
  br i1 %cmp32, label %dtv5100_i2c_msg.exit.for.end_crit_edge, label %dtv5100_i2c_msg.exit.for.inc_crit_edge

dtv5100_i2c_msg.exit.for.inc_crit_edge:           ; preds = %dtv5100_i2c_msg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

dtv5100_i2c_msg.exit.for.end_crit_edge:           ; preds = %dtv5100_i2c_msg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %dtv5100_i2c_msg.exit.for.inc_crit_edge, %if.then8.for.inc_crit_edge
  %i.1 = phi i32 [ %i.071, %dtv5100_i2c_msg.exit.for.inc_crit_edge ], [ 1, %if.then8.for.inc_crit_edge ]
  %inc37 = add i32 %i.1, 1
  %cmp5 = icmp slt i32 %inc37, %num
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %dtv5100_i2c_msg.exit.for.end_crit_edge, %dtv5100_i2c_msg.exit.thread, %if.then8.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.069 = phi i32 [ %i.071, %dtv5100_i2c_msg.exit.thread ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc37, %for.inc.for.end_crit_edge ], [ %i.071, %if.then8.for.end_crit_edge ], [ %i.071, %dtv5100_i2c_msg.exit.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.069, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dtv5100_i2c_func(ptr nocapture noundef readnone %adapter) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dtv5100_i2c_msg(ptr nocapture noundef readonly %d, i8 noundef zeroext %addr, ptr nocapture noundef readonly %wbuf, i16 noundef zeroext %wlen, ptr nocapture noundef readonly %rbuf, i16 noundef zeroext %rlen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i16 %wlen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %wlen, label %do.end [
    i16 1, label %sw.bb
    i16 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or1 = or i32 %shl.i, -2147483520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %addr)
  %cmp = icmp eq i8 %addr, 0
  %conv4 = select i1 %cmp, i8 -63, i8 -56
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %udev6 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %7 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev6, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i40 = shl i32 %10, 8
  %or8 = or i32 %shl.i40, -2147483648
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %addr)
  %cmp10 = icmp eq i8 %addr, 0
  %conv13 = select i1 %cmp10, i8 -64, i8 -57
  %arrayidx = getelementptr i8, ptr %wbuf, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv14 = zext i8 %12 to i16
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %wlen to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %pipe.0 = phi i32 [ %or8, %sw.bb5 ], [ %or1, %sw.bb ]
  %request.0 = phi i8 [ %conv13, %sw.bb5 ], [ %conv4, %sw.bb ]
  %type.0 = phi i8 [ 64, %sw.bb5 ], [ -64, %sw.bb ]
  %value.0 = phi i16 [ %conv14, %sw.bb5 ], [ 0, %sw.bb ]
  %conv17 = zext i8 %addr to i16
  %shl = shl nuw i16 %conv17, 8
  %13 = ptrtoint ptr %wbuf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %wbuf, align 1
  %conv19 = zext i8 %14 to i16
  %add = or i16 %shl, %conv19
  %conv21 = zext i16 %rlen to i32
  %15 = call ptr @memcpy(ptr %1, ptr %rbuf, i32 %conv21)
  tail call void @msleep(i32 noundef 1) #5
  %udev22 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %16 = ptrtoint ptr %udev22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev22, align 4
  %call25 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %pipe.0, i8 noundef zeroext %request.0, i8 noundef zeroext %type.0, i16 noundef zeroext %value.0, i16 noundef zeroext %add, ptr noundef %1, i16 noundef zeroext %rlen, i32 noundef 500) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call25, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !44, !46, !47, !48, !49, !50, !51, !53, !55, !57, !58, !59, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 18, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 19, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !6, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr389, !6, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_dtv5100__390_216_dtv5100_driver_init6, !10, !"__initcall__kmod_dvb_usb_dtv5100__390_216_dtv5100_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 216, i32 1}
!11 = !{ptr @__exitcall_dtv5100_driver_exit, !10, !"__exitcall_dtv5100_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author391, !13, !"__UNIQUE_ID_author391", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 218, i32 1}
!14 = !{ptr @__UNIQUE_ID_description392, !15, !"__UNIQUE_ID_description392", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 219, i32 1}
!16 = !{ptr @__UNIQUE_ID_file393, !17, !"__UNIQUE_ID_file393", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 220, i32 1}
!18 = !{ptr @__UNIQUE_ID_license394, !17, !"__UNIQUE_ID_license394", i1 false, i1 false}
!19 = !{ptr @dvb_usb_dtv5100_debug, !20, !"dvb_usb_dtv5100_debug", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 16, i32 12}
!21 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!22 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!23 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!24 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!25 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dtv5100_driver, !27, !"dtv5100_driver", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 209, i32 26}
!28 = distinct !{null, !29, !"dtv5100_init", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/dvb-usb/dtv5100.h", i32 32, i32 3}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 202, i32 12}
!32 = !{ptr @dtv5100_properties, !33, !"dtv5100_properties", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 171, i32 41}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 114, i32 24}
!36 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @dtv5100_frontend_attach._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @dtv5100_frontend_attach._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @dtv5100_zl10353_config, !43, !"dtv5100_zl10353_config", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 106, i32 30}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 131, i32 9}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dtv5100_tuner_attach._entry, !45, !"_entry", i1 false, i1 false}
!50 = !{ptr @dtv5100_tuner_attach._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @dtv5100_qt1010_config, !52, !"dtv5100_qt1010_config", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 125, i32 29}
!53 = !{ptr @dtv5100_i2c_algo, !54, !"dtv5100_i2c_algo", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 100, i32 29}
!55 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 53, i32 3}
!57 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @dtv5100_i2c_msg._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @dtv5100_i2c_msg._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @dtv5100_table, !61, !"dtv5100_table", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/dvb-usb/dtv5100.c", i32 165, i32 29}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
