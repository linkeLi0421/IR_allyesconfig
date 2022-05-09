; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/nova-t-usb2.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/nova-t-usb2.c"
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
%struct.dibusb_device_state = type { i32, i32 }

@__param_str_debug = internal constant [26 x i8] c"dvb_usb_nova_t_usb2.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [39 x i8] c"dvb_usb_nova_t_usb2.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [77 x i8] c"dvb_usb_nova_t_usb2.parm=debug:set debugging level (1=rc,2=eeprom (|-able)).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [31 x i8] c"dvb_usb_nova_t_usb2.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [55 x i8] c"dvb_usb_nova_t_usb2.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [56 x i8] c"dvb_usb_nova_t_usb2.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_nova_t_usb2__390_238_nova_t_driver_init6 = internal global ptr @nova_t_driver_init, section ".initcall6.init", align 4
@nova_t_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @nova_t_probe, ptr @dvb_usb_device_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nova_t_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_nova_t_driver_exit = internal global ptr @nova_t_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author391 = internal constant [75 x i8] c"dvb_usb_nova_t_usb2.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description392 = internal constant [60 x i8] c"dvb_usb_nova_t_usb2.description=Hauppauge WinTV-NOVA-T usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_version393 = internal constant [32 x i8] c"dvb_usb_nova_t_usb2.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb_usb_nova_t_usb2\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file394 = internal constant [71 x i8] c"dvb_usb_nova_t_usb2.file=drivers/media/usb/dvb-usb/dvb-usb-nova-t-usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license395 = internal constant [32 x i8] c"dvb_usb_nova_t_usb2.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@nova_t_table = internal global { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 8256, i16 -27904, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8256, i16 -27903, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dvb-usb-nova-t-usb2-02.fw\00", [38 x i8] zeroinitializer }, align 32
@rc_map_haupp_table = internal global { [45 x %struct.rc_map_table], [176 x i8] } { [45 x %struct.rc_map_table] [%struct.rc_map_table { i64 7680, i32 11 }, %struct.rc_map_table { i64 7681, i32 2 }, %struct.rc_map_table { i64 7682, i32 3 }, %struct.rc_map_table { i64 7683, i32 4 }, %struct.rc_map_table { i64 7684, i32 5 }, %struct.rc_map_table { i64 7685, i32 6 }, %struct.rc_map_table { i64 7686, i32 7 }, %struct.rc_map_table { i64 7687, i32 8 }, %struct.rc_map_table { i64 7688, i32 9 }, %struct.rc_map_table { i64 7689, i32 10 }, %struct.rc_map_table { i64 7690, i32 55 }, %struct.rc_map_table { i64 7691, i32 398 }, %struct.rc_map_table { i64 7692, i32 385 }, %struct.rc_map_table { i64 7693, i32 139 }, %struct.rc_map_table { i64 7694, i32 41 }, %struct.rc_map_table { i64 7695, i32 113 }, %struct.rc_map_table { i64 7696, i32 115 }, %struct.rc_map_table { i64 7697, i32 114 }, %struct.rc_map_table { i64 7698, i32 363 }, %struct.rc_map_table { i64 7700, i32 103 }, %struct.rc_map_table { i64 7701, i32 108 }, %struct.rc_map_table { i64 7702, i32 105 }, %struct.rc_map_table { i64 7703, i32 106 }, %struct.rc_map_table { i64 7704, i32 393 }, %struct.rc_map_table { i64 7705, i32 392 }, %struct.rc_map_table { i64 7706, i32 442 }, %struct.rc_map_table { i64 7707, i32 365 }, %struct.rc_map_table { i64 7708, i32 377 }, %struct.rc_map_table { i64 7710, i32 407 }, %struct.rc_map_table { i64 7711, i32 158 }, %struct.rc_map_table { i64 7712, i32 402 }, %struct.rc_map_table { i64 7713, i32 403 }, %struct.rc_map_table { i64 7716, i32 405 }, %struct.rc_map_table { i64 7717, i32 352 }, %struct.rc_map_table { i64 7721, i32 401 }, %struct.rc_map_table { i64 7726, i32 399 }, %struct.rc_map_table { i64 7728, i32 119 }, %struct.rc_map_table { i64 7730, i32 168 }, %struct.rc_map_table { i64 7732, i32 208 }, %struct.rc_map_table { i64 7733, i32 207 }, %struct.rc_map_table { i64 7734, i32 128 }, %struct.rc_map_table { i64 7735, i32 167 }, %struct.rc_map_table { i64 7736, i32 400 }, %struct.rc_map_table { i64 7739, i32 354 }, %struct.rc_map_table { i64 7741, i32 116 }], [176 x i8] zeroinitializer }, align 32
@dibusb_i2c_algo = external dso_local global %struct.i2c_algorithm, align 4
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Hauppauge WinTV-NOVA-T usb2\00", [36 x i8] zeroinitializer }, align 32
@nova_t_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> } { i32 1, i32 3, ptr null, ptr @.str.3, i32 0, i32 8, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 24, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 3, i32 32, ptr @dibusb2_0_streaming_ctrl, ptr @dibusb_pid_filter_ctrl, ptr @dibusb_pid_filter, ptr @dibusb_dib3000mc_frontend_attach, ptr @dibusb_dib3000mc_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 7, i32 6, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @dibusb2_0_power_ctrl, ptr @nova_t_read_mac_address, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy { ptr @rc_map_haupp_table, i32 45, ptr @nova_t_rc_query, i32 100 }, %struct.dvb_rc zeroinitializer }, ptr @dibusb_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.4, <{ ptr, [14 x ptr] }> <{ ptr @nova_t_table, [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @nova_t_table, i64 24), [14 x ptr] zeroinitializer }> }, [11 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@nova_t_rc_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"raw key code 0x%02x, 0x%02x, 0x%02x to c: %02x d: %02x toggle: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nova_t_rc_query\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/dvb-usb/nova-t-usb2.c\00", [56 x i8] zeroinitializer }, align 32
@nova_t_rc_query._entry_ptr = internal global ptr @nova_t_rc_query._entry, section ".printk_index", align 4
@nova_t_rc_query._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"c: %x, d: %x\0A\00", [18 x i8] zeroinitializer }, align 32
@nova_t_rc_query._entry_ptr.11 = internal global ptr @nova_t_rc_query._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 11, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"nova_t_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 231, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 242, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 15, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"nova_t_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 163, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 174, i32 14 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"rc_map_haupp_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 21, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 223, i32 7 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"nova_t_properties\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 170, i32 41 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 97, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [43 x i8] c"../drivers/media/usb/dvb-usb/nova-t-usb2.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 104, i32 6 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author391, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description392, ptr @__UNIQUE_ID_file394, ptr @__UNIQUE_ID_license395, ptr @__UNIQUE_ID_version393, ptr @__exitcall_nova_t_driver_exit, ptr @__initcall__kmod_dvb_usb_nova_t_usb2__390_238_nova_t_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @nova_t_driver_exit, ptr @nova_t_rc_query._entry, ptr @nova_t_rc_query._entry.9, ptr @nova_t_rc_query._entry_ptr, ptr @nova_t_rc_query._entry_ptr.11, ptr @debug, ptr @nova_t_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @nova_t_table, ptr @.str.3, ptr @rc_map_haupp_table, ptr @.str.4, ptr @nova_t_properties, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nova_t_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nova_t_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_map_haupp_table to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nova_t_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nova_t_rc_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nova_t_rc_query._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nova_t_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @nova_t_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nova_t_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @nova_t_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nova_t_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @nova_t_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb2_0_streaming_ctrl(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb_pid_filter_ctrl(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb_pid_filter(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb_dib3000mc_frontend_attach(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb_dib3000mc_tuner_attach(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb2_0_power_ctrl(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nova_t_read_mac_address(ptr noundef %d, ptr nocapture noundef writeonly %mac) #2 align 64 {
entry:
  %b = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #6
  %0 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b, align 1, !annotation !62
  %1 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %mac, align 1
  %arrayidx1 = getelementptr i8, ptr %mac, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 13, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %mac, i32 2
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -2, ptr %arrayidx2, align 1
  %call = call i32 @dibusb_read_eeprom_byte(ptr noundef %d, i8 noundef zeroext -120, ptr noundef nonnull %b) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %b, align 1
  %arrayidx4 = getelementptr i8, ptr %mac, i32 5
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %arrayidx4, align 1
  %call.1 = call i32 @dibusb_read_eeprom_byte(ptr noundef %d, i8 noundef zeroext -119, ptr noundef nonnull %b) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %7 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %b, align 1
  %arrayidx4.1 = getelementptr i8, ptr %mac, i32 4
  %9 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx4.1, align 1
  %call.2 = call i32 @dibusb_read_eeprom_byte(ptr noundef %d, i8 noundef zeroext -118, ptr noundef nonnull %b) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %b, align 1
  %arrayidx4.2 = getelementptr i8, ptr %mac, i32 3
  %12 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx4.2, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.1, %if.end.cleanup_crit_edge ], [ %call.2, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nova_t_rc_query(ptr noundef %d, ptr nocapture noundef writeonly %event, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 5) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %call7.i, align 8
  %arrayidx1 = getelementptr i8, ptr %call7.i, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 53, ptr %arrayidx1, align 1
  %call2 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef nonnull %call7.i, i16 noundef zeroext 2, ptr noundef nonnull %call7.i, i16 noundef zeroext 5, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.ret88_crit_edge, label %if.end4

if.end.ret88_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ret88

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state, align 4
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cond = icmp eq i8 %7, 1
  br i1 %cond, label %sw.bb, label %if.end4.ret88_crit_edge

if.end4.ret88_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %ret88

sw.bb:                                            ; preds = %if.end4
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1, align 1
  %conv7 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %arrayidx8 = getelementptr i8, ptr %call7.i, i32 2
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 2
  %conv9 = zext i8 %11 to i32
  %or = or i32 %shl, %conv9
  %12 = lshr i32 %or, 3
  %13 = lshr i8 %9, 6
  %.lobit = and i8 %13, 1
  %14 = trunc i32 %12 to i8
  %conv17 = and i8 %14, 63
  %15 = lshr i8 %9, 1
  %and20 = and i8 %15, 31
  %16 = load i32, ptr @debug, align 4
  %and22 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %sw.bb.for.body.preheader_crit_edge, label %do.end

sw.bb.for.body.preheader_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx30 = getelementptr i8, ptr %call7.i, i32 3
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %18 to i32
  %conv32 = zext i8 %and20 to i32
  %conv33 = zext i8 %conv17 to i32
  %conv34 = zext i8 %.lobit to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %conv31, i32 noundef %conv32, i32 noundef %conv33, i32 noundef %conv34) #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end, %sw.bb.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0131 = phi i32 [ %inc86, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx41 = getelementptr [45 x %struct.rc_map_table], ptr @rc_map_haupp_table, i32 0, i32 %i.0131
  %19 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx41, align 8
  %conv.i = trunc i64 %20 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv17, i8 %conv.i)
  %cmp45 = icmp eq i8 %conv17, %conv.i
  %shr.i = lshr i64 %20, 8
  %conv.i126 = trunc i64 %shr.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %and20, i8 %conv.i126)
  %cmp51 = icmp eq i8 %and20, %conv.i126
  %or.cond = select i1 %cmp45, i1 %cmp51, i1 false
  br i1 %or.cond, label %do.body54, label %for.inc

do.body54:                                        ; preds = %for.body
  %21 = load i32, ptr @debug, align 4
  %and55 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body54.do.end71_crit_edge, label %do.end60

do.body54.do.end71_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end71

do.end60:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  %22 = trunc i64 %20 to i32
  %conv64 = and i32 %22, 255
  %23 = trunc i64 %shr.i to i32
  %conv67 = and i32 %23, 255
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv64, i32 noundef %conv67) #10
  br label %do.end71

do.end71:                                         ; preds = %do.end60, %do.body54.do.end71_crit_edge
  %keycode = getelementptr [45 x %struct.rc_map_table], ptr @rc_map_haupp_table, i32 0, i32 %i.0131, i32 1
  %24 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %keycode, align 8
  %26 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %event, align 4
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %state, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %conv73 = zext i8 %.lobit to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv73)
  %cmp74 = icmp eq i32 %29, %conv73
  %last_repeat_count = getelementptr inbounds %struct.dibusb_device_state, ptr %1, i32 0, i32 1
  br i1 %cmp74, label %if.then76, label %if.else

if.then76:                                        ; preds = %do.end71
  %30 = ptrtoint ptr %last_repeat_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_repeat_count, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %last_repeat_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp77 = icmp slt i32 %31, 2
  br i1 %cmp77, label %if.then79, label %if.then76.ret88_crit_edge

if.then76.ret88_crit_edge:                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  br label %ret88

if.then79:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %state, align 4
  br label %ret88

if.else:                                          ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %last_repeat_count to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %last_repeat_count, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv73, ptr %1, align 4
  br label %ret88

for.inc:                                          ; preds = %for.body
  %inc86 = add nuw nsw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc86, 45
  br i1 %exitcond.not, label %for.inc.ret88_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.ret88_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %ret88

ret88:                                            ; preds = %for.inc.ret88_crit_edge, %if.else, %if.then79, %if.then76.ret88_crit_edge, %if.end4.ret88_crit_edge, %if.end.ret88_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ret88, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %ret88 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb_read_eeprom_byte(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_generic_rw(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !47, !49, !50, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 13, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 15, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !6, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr389, !6, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_nova_t_usb2__390_238_nova_t_driver_init6, !10, !"__initcall__kmod_dvb_usb_nova_t_usb2__390_238_nova_t_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 238, i32 1}
!11 = !{ptr @__exitcall_nova_t_driver_exit, !10, !"__exitcall_nova_t_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author391, !13, !"__UNIQUE_ID_author391", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 240, i32 1}
!14 = !{ptr @__UNIQUE_ID_description392, !15, !"__UNIQUE_ID_description392", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 241, i32 1}
!16 = !{ptr @__UNIQUE_ID_version393, !17, !"__UNIQUE_ID_version393", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 242, i32 1}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__modver_attr, !17, !"__modver_attr", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_file394, !23, !"__UNIQUE_ID_file394", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 243, i32 1}
!24 = !{ptr @__UNIQUE_ID_license395, !23, !"__UNIQUE_ID_license395", i1 false, i1 false}
!25 = !{ptr @debug, !26, !"debug", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 11, i32 12}
!27 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!28 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!29 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!30 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!31 = !{ptr @nova_t_driver, !32, !"nova_t_driver", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 231, i32 26}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 174, i32 14}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 223, i32 7}
!37 = !{ptr @nova_t_properties, !38, !"nova_t_properties", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 170, i32 41}
!39 = !{ptr @rc_map_haupp_table, !40, !"rc_map_haupp_table", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 21, i32 28}
!41 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 97, i32 4}
!43 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nova_t_rc_query._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @nova_t_rc_query._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 104, i32 6}
!49 = !{ptr @nova_t_rc_query._entry.9, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @nova_t_rc_query._entry_ptr.11, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @nova_t_table, !52, !"nova_t_table", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb/nova-t-usb2.c", i32 163, i32 29}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
