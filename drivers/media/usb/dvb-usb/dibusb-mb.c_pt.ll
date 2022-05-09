; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/dibusb-mb.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/dibusb-mb.c"
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
%struct.dib3000_config = type { i8 }
%struct.dvb_usb_adapter = type { ptr, %struct.dvb_usb_adapter_properties, i32, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x %struct.dvb_usb_fe_adapter], i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_usb_fe_adapter = type { ptr, ptr, ptr, %struct.usb_data_stream, i32, i32, ptr }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i32, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dibusb_state = type { %struct.dib_fe_xfer_ops, i32, i8 }
%struct.dib_fe_xfer_ops = type { ptr, ptr, ptr, ptr }

@__param_str_adapter_nr = internal constant [29 x i8] c"dvb_usb_dibusb_mb.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype386 = internal constant [53 x i8] c"dvb_usb_dibusb_mb.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr387 = internal constant [54 x i8] c"dvb_usb_dibusb_mb.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_dibusb_mb__388_463_dibusb_driver_init6 = internal global ptr @dibusb_driver_init, section ".initcall6.init", align 4
@dibusb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @dibusb_probe, ptr @dvb_usb_device_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dibusb_dib3000mb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_dibusb_driver_exit = internal global ptr @dibusb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author389 = internal constant [73 x i8] c"dvb_usb_dibusb_mb.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description390 = internal constant [85 x i8] c"dvb_usb_dibusb_mb.description=Driver for DiBcom USB DVB-T devices (DiB3000M-B based)\00", section ".modinfo", align 1
@__UNIQUE_ID_version391 = internal constant [30 x i8] c"dvb_usb_dibusb_mb.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb_usb_dibusb_mb\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file392 = internal constant [67 x i8] c"dvb_usb_dibusb_mb.file=drivers/media/usb/dvb-usb/dvb-usb-dibusb-mb\00", section ".modinfo", align 1
@__UNIQUE_ID_license393 = internal constant [30 x i8] c"dvb_usb_dibusb_mb.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@dibusb_dib3000mb_table = internal global { [32 x %struct.usb_device_id], [192 x i8] } { [32 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5290, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5290, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6235, i16 -12288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6235, i16 -12287, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5215, i16 268, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 3000, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4280, i16 3001, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -5350, i16 6110, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -5350, i16 6111, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20530, i16 4000, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20530, i16 4001, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20530, i16 3000, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 20530, i16 3001, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4133, i16 94, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4133, i16 95, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 12801, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 12802, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6178, i16 12801, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6178, i16 12802, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1496, i16 -32507, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1496, i16 -32506, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1496, i16 -32505, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1496, i16 -32504, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1761, i16 -23757, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1761, i16 -23756, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1112, i16 28702, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1112, i16 28703, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -5334, i16 6110, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1496, i16 -32503, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1496, i16 -32502, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1351, i16 8757, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb-usb-dibusb-5.0.0.11.fw\00", [37 x i8] zeroinitializer }, align 32
@rc_map_dibusb_table = external dso_local global [0 x %struct.rc_map_table], align 8
@dibusb_i2c_algo = external dso_local global %struct.i2c_algorithm, align 4
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AVerMedia AverTV DVBT USB1.1\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Compro Videomate DVB-U2000 - DVB-T USB1.1 (please confirm to linux-dvb)\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DiBcom USB1.1 DVB-T reference design (MOD3000)\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"KWorld V-Stream XPERT DTV - DVB-T USB1.1\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Grandtec USB1.1 DVB-T\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Unknown USB1.1 DVB-T device ???? please report the name to the author\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"TwinhanDTV USB-Ter USB1.1 / Magic Box I / HAMA USB1.1 DVB-T device\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Artec T1 USB1.1 TVBOX with AN2135\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VideoWalker DVB-T USB\00", [42 x i8] zeroinitializer }, align 32
@dibusb1_1_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, ptr, [13 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, ptr, [13 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, ptr, [13 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, ptr, [13 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> } { i32 1, i32 1, ptr null, ptr @.str.3, i32 0, i32 0, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 24, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 16, ptr @dibusb_streaming_ctrl, ptr @dibusb_pid_filter_ctrl, ptr @dibusb_pid_filter, ptr @dibusb_dib3000mb_frontend_attach, ptr @dibusb_tuner_probe_and_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 7, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @dibusb_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy { ptr @rc_map_dibusb_table, i32 111, ptr @dibusb_rc_query, i32 150 }, %struct.dvb_rc zeroinitializer }, ptr @dibusb_i2c_algo, i32 1, i32 0, i32 9, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, ptr, [13 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, ptr, [13 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description, %struct.dvb_usb_device_description }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.4, <{ ptr, [14 x ptr] }> <{ ptr @dibusb_dib3000mb_table, [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 24), [14 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.5, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 48), ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 96), [13 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 72), [14 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.6, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 120), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 144), [14 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.7, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 168), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 192), [14 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, ptr, [13 x ptr] }> } { ptr @.str.8, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 216), ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 264), [13 x ptr] zeroinitializer }>, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 240), ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 288), [13 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.9, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 312), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 336), [14 x ptr] zeroinitializer }> }, { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, ptr, [13 x ptr] }> } { ptr @.str.10, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 360), ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 408), [13 x ptr] zeroinitializer }>, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 384), ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 432), [13 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.11, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 456), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 480), [14 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.12, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 600), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 624), [14 x ptr] zeroinitializer }> }, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer, %struct.dvb_usb_device_description zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dib3000mb_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"symbol:dib3000mb_attach\00", [40 x i8] zeroinitializer }, align 32
@dibusb_dib3000mb_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013DVB: Unable to find symbol dib3000mb_attach()\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dibusb_dib3000mb_frontend_attach\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/dvb-usb/dibusb-mb.c\00", [58 x i8] zeroinitializer }, align 32
@dibusb_dib3000mb_frontend_attach._entry_ptr = internal global ptr @dibusb_dib3000mb_frontend_attach._entry, section ".printk_index", align 4
@dibusb_tuner_probe_and_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.18, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013dibusb: tuner i2c write failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dibusb_tuner_probe_and_attach\00", [34 x i8] zeroinitializer }, align 32
@dibusb_tuner_probe_and_attach._entry_ptr = internal global ptr @dibusb_tuner_probe_and_attach._entry, section ".printk_index", align 4
@dibusb_tuner_probe_and_attach._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.18, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016dibusb: This device has the Thomson Cable onboard. Which is default.\0A\00", [56 x i8] zeroinitializer }, align 32
@dibusb_tuner_probe_and_attach._entry_ptr.23 = internal global ptr @dibusb_tuner_probe_and_attach._entry.21, section ".printk_index", align 4
@dibusb_tuner_probe_and_attach._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.18, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016dibusb: This device has the Panasonic ENV77H11D5 onboard.\0A\00", [35 x i8] zeroinitializer }, align 32
@dibusb_tuner_probe_and_attach._entry_ptr.26 = internal global ptr @dibusb_tuner_probe_and_attach._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@dibusb_thomson_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.18, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dibusb_thomson_tuner_attach\00", [36 x i8] zeroinitializer }, align 32
@dibusb_thomson_tuner_attach._entry_ptr = internal global ptr @dibusb_thomson_tuner_attach._entry, section ".printk_index", align 4
@dibusb_panasonic_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.31, ptr @.str.18, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dibusb_panasonic_tuner_attach\00", [34 x i8] zeroinitializer }, align 32
@dibusb_panasonic_tuner_attach._entry_ptr = internal global ptr @dibusb_panasonic_tuner_attach._entry, section ".printk_index", align 4
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dvb-usb-dibusb-an2235-01.fw\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Artec T1 USB1.1 TVBOX with AN2235\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Artec T1 USB1.1 TVBOX with AN2235 (faulty USB IDs)\00", [45 x i8] zeroinitializer }, align 32
@dibusb1_1_an2235_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x %struct.dvb_usb_device_description] }> } { i32 1, i32 2, ptr null, ptr @.str.32, i32 0, i32 0, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 24, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 16, ptr @dibusb_streaming_ctrl, ptr @dibusb_pid_filter_ctrl, ptr @dibusb_pid_filter, ptr @dibusb_dib3000mb_frontend_attach, ptr @dibusb_tuner_probe_and_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 7, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @dibusb_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy { ptr @rc_map_dibusb_table, i32 111, ptr @dibusb_rc_query, i32 150 }, %struct.dvb_rc zeroinitializer }, ptr @dibusb_i2c_algo, i32 1, i32 0, i32 2, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.33, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 504), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 528), [14 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.34, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 720), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [10 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb-usb-adstech-usb2-02.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"KWorld/ADSTech Instant DVB-T USB2.0\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"KWorld Xpert DVB-T USB2.0\00", [38 x i8] zeroinitializer }, align 32
@dibusb2_0b_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x %struct.dvb_usb_device_description] }> } { i32 1, i32 3, ptr null, ptr @.str.36, i32 0, i32 0, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 24, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 16, ptr @dibusb2_0_streaming_ctrl, ptr @dibusb_pid_filter_ctrl, ptr @dibusb_pid_filter, ptr @dibusb_dib3000mb_frontend_attach, ptr @dibusb_thomson_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 7, i32 6, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @dibusb2_0_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy { ptr @rc_map_dibusb_table, i32 111, ptr @dibusb_rc_query, i32 150 }, %struct.dvb_rc zeroinitializer }, ptr @dibusb_i2c_algo, i32 1, i32 0, i32 2, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [10 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.37, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 552), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 576), [14 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.38, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 648), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [10 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dvb-usb-dibusb-6.0.0.8.fw\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Artec T1 USB2.0\00", [16 x i8] zeroinitializer }, align 32
@artec_t1_usb2_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> } { i32 1, i32 3, ptr null, ptr @.str.40, i32 0, i32 0, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 24, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 16, ptr @dibusb2_0_streaming_ctrl, ptr @dibusb_pid_filter_ctrl, ptr @dibusb_pid_filter, ptr @dibusb_dib3000mb_frontend_attach, ptr @dibusb_tuner_probe_and_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 7, i32 6, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @dibusb2_0_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy { ptr @rc_map_dibusb_table, i32 111, ptr @dibusb_rc_query, i32 150 }, %struct.dvb_rc zeroinitializer }, ptr @dibusb_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.41, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 672), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dibusb_dib3000mb_table, i64 696), [14 x ptr] zeroinitializer }> }, [11 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"dibusb_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 456, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 467, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 14, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"dibusb_dib3000mb_table\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 124, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 181, i32 14 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 228, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 232, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 236, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 240, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 244, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 248, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 252, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 256, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 260, i32 5 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"dibusb1_1_properties\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 176, i32 41 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 31, i32 24 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 83, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 91, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 94, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 47, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 58, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 271, i32 14 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 321, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 326, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant [28 x i8] c"dibusb1_1_an2235_properties\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 267, i32 41 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 340, i32 14 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 386, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 390, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant [22 x i8] c"dibusb2_0b_properties\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 335, i32 41 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 403, i32 14 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 448, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant [25 x i8] c"artec_t1_usb2_properties\00", align 1
@___asan_gen_.185 = private constant [41 x i8] c"../drivers/media/usb/dvb-usb/dibusb-mb.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 398, i32 41 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_adapter_nr387, ptr @__UNIQUE_ID_adapter_nrtype386, ptr @__UNIQUE_ID_author389, ptr @__UNIQUE_ID_description390, ptr @__UNIQUE_ID_file392, ptr @__UNIQUE_ID_license393, ptr @__UNIQUE_ID_version391, ptr @__exitcall_dibusb_driver_exit, ptr @__initcall__kmod_dvb_usb_dibusb_mb__388_463_dibusb_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @dibusb_dib3000mb_frontend_attach._entry, ptr @dibusb_dib3000mb_frontend_attach._entry_ptr, ptr @dibusb_driver_exit, ptr @dibusb_panasonic_tuner_attach._entry, ptr @dibusb_panasonic_tuner_attach._entry_ptr, ptr @dibusb_thomson_tuner_attach._entry, ptr @dibusb_thomson_tuner_attach._entry_ptr, ptr @dibusb_tuner_probe_and_attach._entry, ptr @dibusb_tuner_probe_and_attach._entry.21, ptr @dibusb_tuner_probe_and_attach._entry.24, ptr @dibusb_tuner_probe_and_attach._entry_ptr, ptr @dibusb_tuner_probe_and_attach._entry_ptr.23, ptr @dibusb_tuner_probe_and_attach._entry_ptr.26, ptr @dibusb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @dibusb_dib3000mb_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @dibusb1_1_properties, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @dibusb1_1_an2235_properties, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @dibusb2_0b_properties, ptr @.str.40, ptr @.str.41, ptr @artec_t1_usb2_properties], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb_dib3000mb_table to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb1_1_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb_dib3000mb_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb_tuner_probe_and_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb_tuner_probe_and_attach._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb_tuner_probe_and_attach._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb_thomson_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb_panasonic_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb1_1_an2235_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb2_0b_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artec_t1_usb2_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dibusb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @dibusb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dibusb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_deregister(ptr noundef nonnull @dibusb_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dibusb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @dibusb1_1_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @dibusb1_1_an2235_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false3

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @dibusb2_0b_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %lor.lhs.false3.return_crit_edge, label %lor.lhs.false6

lor.lhs.false3.return_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @artec_t1_usb2_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  %spec.select = select i1 %cmp8, i32 0, i32 -22
  br label %return

return:                                           ; preds = %lor.lhs.false6, %lor.lhs.false3.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false3.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb_streaming_ctrl(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb_pid_filter_ctrl(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb_pid_filter(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dibusb_dib3000mb_frontend_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  %demod_cfg = alloca %struct.dib3000_config, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %demod_cfg) #5
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %demod_cfg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %demod_cfg, align 1
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.14) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.15) #5
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.14) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond28 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %3 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %4, i32 0, i32 8
  %call4 = call ptr %cond28(ptr noundef nonnull %demod_cfg, ptr noundef %i2c_adap, ptr noundef %1) #5
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__symbol_put(ptr noundef nonnull @.str.14) #5
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe_adap30 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %5 = ptrtoint ptr %fe_adap30 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fe_adap30, align 8
  br label %cleanup

if.end14:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %6 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %fe_adap, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %call4, i32 0, i32 1, i32 28
  %7 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dib3000mb_i2c_gate_ctrl, ptr %i2c_gate_ctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end7.thread
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -19, %if.end7.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %demod_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dibusb_tuner_probe_and_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  %b = alloca [2 x i8], align 2
  %b2 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b) #5
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %b, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b2) #5
  %1 = ptrtoint ptr %b2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %b2, align 1, !annotation !112
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #5
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %b, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %7 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %flags2, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %8 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len3, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %9 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %b2, ptr %buf4, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %tuner_addr = getelementptr inbounds %struct.dibusb_state, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 96, ptr %tuner_addr, align 4
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 96, ptr %arrayinit.element, align 4
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 96, ptr %msg, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %15 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fe_adap, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %16, i32 0, i32 1, i32 28
  %17 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = call i32 %18(ptr noundef %16, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %20, i32 0, i32 8
  %call19 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call19)
  %cmp.not = icmp eq i32 %call19, 2
  br i1 %cmp.not, label %if.end22, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %21 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fe_adap, align 8
  %i2c_gate_ctrl27 = getelementptr inbounds %struct.dvb_frontend, ptr %22, i32 0, i32 1, i32 28
  %23 = ptrtoint ptr %i2c_gate_ctrl27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_gate_ctrl27, align 4
  %tobool28.not = icmp eq ptr %24, null
  br i1 %tobool28.not, label %if.end22.if.end39_crit_edge, label %if.then29

if.end22.if.end39_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = call i32 %24(ptr noundef %22, i32 noundef 0) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then29, %if.end22.if.end39_crit_edge
  %25 = ptrtoint ptr %b2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %26)
  %cmp41 = icmp eq i8 %26, -2
  br i1 %cmp41, label %do.end46, label %do.end52

do.end46:                                         ; preds = %if.end39
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #8
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %tuner_addr.i = getelementptr inbounds %struct.dibusb_state, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %tuner_addr.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 97, ptr %tuner_addr.i, align 4
  %call.i = call ptr @__symbol_get(ptr noundef nonnull @.str.27) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cond.end.i, label %do.end46.if.then.i_crit_edge

do.end46.if.then.i_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

cond.end.i:                                       ; preds = %do.end46
  %call1.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.28) #5
  %call2.i = call ptr @__symbol_get(ptr noundef nonnull @.str.27) #5
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.end.i, label %cond.end.i.if.then.i_crit_edge

cond.end.i.if.then.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %cond.end.i.if.then.i_crit_edge, %do.end46.if.then.i_crit_edge
  %cond15.i = phi ptr [ %call2.i, %cond.end.i.if.then.i_crit_edge ], [ %call.i, %do.end46.if.then.i_crit_edge ]
  %30 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fe_adap, align 8
  %32 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adap, align 8
  %i2c_adap.i = getelementptr inbounds %struct.dvb_usb_device, ptr %33, i32 0, i32 8
  %call4.i = call ptr %cond15.i(ptr noundef %31, i32 noundef 97, ptr noundef %i2c_adap.i, i32 noundef 5) #5
  %cmp.i = icmp eq ptr %call4.i, null
  br i1 %cmp.i, label %if.then5.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__symbol_put(ptr noundef nonnull @.str.27) #5
  br label %cleanup

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #8
  br label %cleanup

do.end52:                                         ; preds = %if.end39
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #8
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 8
  %tuner_addr.i72 = getelementptr inbounds %struct.dibusb_state, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %tuner_addr.i72 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 96, ptr %tuner_addr.i72, align 4
  %call.i73 = call ptr @__symbol_get(ptr noundef nonnull @.str.27) #5
  %tobool.not.i74 = icmp eq ptr %call.i73, null
  br i1 %tobool.not.i74, label %cond.end.i78, label %do.end52.if.then.i83_crit_edge

do.end52.if.then.i83_crit_edge:                   ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i83

cond.end.i78:                                     ; preds = %do.end52
  %call1.i75 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.28) #5
  %call2.i76 = call ptr @__symbol_get(ptr noundef nonnull @.str.27) #5
  %tobool3.not.i77 = icmp eq ptr %call2.i76, null
  br i1 %tobool3.not.i77, label %do.end.i86, label %cond.end.i78.if.then.i83_crit_edge

cond.end.i78.if.then.i83_crit_edge:               ; preds = %cond.end.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i83

if.then.i83:                                      ; preds = %cond.end.i78.if.then.i83_crit_edge, %do.end52.if.then.i83_crit_edge
  %cond3.i = phi ptr [ %call2.i76, %cond.end.i78.if.then.i83_crit_edge ], [ %call.i73, %do.end52.if.then.i83_crit_edge ]
  %37 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fe_adap, align 8
  %39 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adap, align 8
  %i2c_adap.i80 = getelementptr inbounds %struct.dvb_usb_device, ptr %40, i32 0, i32 8
  %call4.i81 = call ptr %cond3.i(ptr noundef %38, i32 noundef 96, ptr noundef %i2c_adap.i80, i32 noundef 8) #5
  %cmp.i82 = icmp eq ptr %call4.i81, null
  br i1 %cmp.i82, label %if.then5.i84, label %if.then.i83.cleanup_crit_edge

if.then.i83.cleanup_crit_edge:                    ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.i84:                                     ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #7
  call void @__symbol_put(ptr noundef nonnull @.str.27) #5
  br label %cleanup

do.end.i86:                                       ; preds = %cond.end.i78
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.i86, %if.then5.i84, %if.then.i83.cleanup_crit_edge, %do.end.i, %if.then5.i, %if.then.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.then5.i ], [ 0, %do.end.i ], [ 0, %if.then.i83.cleanup_crit_edge ], [ 0, %if.then5.i84 ], [ 0, %do.end.i86 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb_power_ctrl(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb_rc_query(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mb_i2c_gate_ctrl(ptr noundef %fe, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %priv1 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 8
  %tuner_pass_ctrl = getelementptr inbounds %struct.dib_fe_xfer_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %tuner_pass_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_pass_ctrl, align 4
  %tuner_addr = getelementptr inbounds %struct.dibusb_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tuner_addr, align 4
  %call = tail call i32 %7(ptr noundef %fe, i32 noundef %enable, i8 noundef zeroext %9) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dibusb_thomson_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tuner_addr = getelementptr inbounds %struct.dibusb_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 97, ptr %tuner_addr, align 4
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.27) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.28) #5
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.27) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond15 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %3 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fe_adap, align 8
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %6, i32 0, i32 8
  %call4 = tail call ptr %cond15(ptr noundef %4, i32 noundef 97, ptr noundef %i2c_adap, i32 noundef 5) #5
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.27) #5
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #8
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb2_0_streaming_ctrl(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb2_0_power_ctrl(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype386, !1, !"__UNIQUE_ID_adapter_nrtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr387, !1, !"__UNIQUE_ID_adapter_nr387", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_dvb_usb_dibusb_mb__388_463_dibusb_driver_init6, !5, !"__initcall__kmod_dvb_usb_dibusb_mb__388_463_dibusb_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 463, i32 1}
!6 = !{ptr @__exitcall_dibusb_driver_exit, !5, !"__exitcall_dibusb_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author389, !8, !"__UNIQUE_ID_author389", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 465, i32 1}
!9 = !{ptr @__UNIQUE_ID_description390, !10, !"__UNIQUE_ID_description390", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 466, i32 1}
!11 = !{ptr @__UNIQUE_ID_version391, !12, !"__UNIQUE_ID_version391", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 467, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_file392, !18, !"__UNIQUE_ID_file392", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 468, i32 1}
!19 = !{ptr @__UNIQUE_ID_license393, !18, !"__UNIQUE_ID_license393", i1 false, i1 false}
!20 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!21 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!22 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!23 = !{ptr @dibusb_driver, !24, !"dibusb_driver", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 456, i32 26}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 181, i32 14}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 228, i32 5}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 232, i32 5}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 236, i32 5}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 240, i32 5}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 244, i32 5}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 248, i32 5}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 252, i32 5}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 256, i32 5}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 260, i32 5}
!45 = !{ptr @dibusb1_1_properties, !46, !"dibusb1_1_properties", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 176, i32 41}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 31, i32 24}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @dibusb_dib3000mb_frontend_attach._entry, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @dibusb_dib3000mb_frontend_attach._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 83, i32 3}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @dibusb_tuner_probe_and_attach._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @dibusb_tuner_probe_and_attach._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 91, i32 3}
!62 = !{ptr @dibusb_tuner_probe_and_attach._entry.21, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @dibusb_tuner_probe_and_attach._entry_ptr.23, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 94, i32 3}
!66 = !{ptr @dibusb_tuner_probe_and_attach._entry.24, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @dibusb_tuner_probe_and_attach._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 47, i32 2}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @dibusb_thomson_tuner_attach._entry, !69, !"_entry", i1 false, i1 false}
!74 = !{ptr @dibusb_thomson_tuner_attach._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 58, i32 2}
!77 = !{ptr @dibusb_panasonic_tuner_attach._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @dibusb_panasonic_tuner_attach._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 271, i32 14}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 321, i32 5}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 326, i32 5}
!85 = !{ptr @dibusb1_1_an2235_properties, !86, !"dibusb1_1_an2235_properties", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 267, i32 41}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 340, i32 14}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 386, i32 5}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 390, i32 5}
!93 = !{ptr @dibusb2_0b_properties, !94, !"dibusb2_0b_properties", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 335, i32 41}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 403, i32 14}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 448, i32 5}
!99 = !{ptr @artec_t1_usb2_properties, !100, !"artec_t1_usb2_properties", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 398, i32 41}
!101 = !{ptr @dibusb_dib3000mb_table, !102, !"dibusb_dib3000mb_table", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/dvb-usb/dibusb-mb.c", i32 124, i32 29}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"auto-init"}
