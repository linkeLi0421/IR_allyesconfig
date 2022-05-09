; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/vp7045.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/vp7045.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@__param_str_debug = internal constant [21 x i8] c"dvb_usb_vp7045.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_vp7045_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_vp7045_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [34 x i8] c"dvb_usb_vp7045.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [78 x i8] c"dvb_usb_vp7045.parm=debug:set debugging level (1=info,xfer=2,rc=4 (or-able)).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_vp7045.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [50 x i8] c"dvb_usb_vp7045.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [51 x i8] c"dvb_usb_vp7045.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@vp7045_usb_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"out buffer: \00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vp7045_usb_op\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/dvb-usb/vp7045.c\00", [61 x i8] zeroinitializer }, align 32
@vp7045_usb_op._entry_ptr = internal global ptr @vp7045_usb_op._entry, section ".printk_index", align 4
@vp7045_usb_op._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@vp7045_usb_op._entry_ptr.5 = internal global ptr @vp7045_usb_op._entry.3, section ".printk_index", align 4
@vp7045_usb_op._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@vp7045_usb_op._entry_ptr.8 = internal global ptr @vp7045_usb_op._entry.6, section ".printk_index", align 4
@vp7045_usb_op._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013vp7045: USB control message 'out' went wrong.\0A\00", [47 x i8] zeroinitializer }, align 32
@vp7045_usb_op._entry_ptr.11 = internal global ptr @vp7045_usb_op._entry.9, section ".printk_index", align 4
@vp7045_usb_op._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013vp7045: USB control message 'in' went wrong.\0A\00", [48 x i8] zeroinitializer }, align 32
@vp7045_usb_op._entry_ptr.14 = internal global ptr @vp7045_usb_op._entry.12, section ".printk_index", align 4
@vp7045_usb_op._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in buffer: \00", [20 x i8] zeroinitializer }, align 32
@vp7045_usb_op._entry_ptr.17 = internal global ptr @vp7045_usb_op._entry.15, section ".printk_index", align 4
@vp7045_usb_op._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp7045_usb_op._entry_ptr.19 = internal global ptr @vp7045_usb_op._entry.18, section ".printk_index", align 4
@vp7045_usb_op._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp7045_usb_op._entry_ptr.21 = internal global ptr @vp7045_usb_op._entry.20, section ".printk_index", align 4
@__initcall__kmod_dvb_usb_vp7045__390_243_vp7045_usb_driver_init6 = internal global ptr @vp7045_usb_driver_init, section ".initcall6.init", align 4
@vp7045_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.23, ptr @vp7045_usb_probe, ptr @dvb_usb_device_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vp7045_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_vp7045_usb_driver_exit = internal global ptr @vp7045_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author391 = internal constant [70 x i8] c"dvb_usb_vp7045.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description392 = internal constant [92 x i8] c"dvb_usb_vp7045.description=Driver for Twinhan MagicBox/Alpha and DNTV tinyUSB2 DVB-T USB2.0\00", section ".modinfo", align 1
@__UNIQUE_ID_version393 = internal constant [27 x i8] c"dvb_usb_vp7045.version=1.0\00", section ".modinfo", align 1
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_vp7045\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.23, ptr @.str.24 }, section "__modver", align 4
@__UNIQUE_ID_file394 = internal constant [61 x i8] c"dvb_usb_vp7045.file=drivers/media/usb/dvb-usb/dvb-usb-vp7045\00", section ".modinfo", align 1
@__UNIQUE_ID_license395 = internal constant [27 x i8] c"dvb_usb_vp7045.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@vp7045_usb_table = internal global { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5075, i16 12805, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 12806, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 12835, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 12836, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-usb-vp7045-01.fw\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rc-twinhan1027\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Twinhan USB2.0 DVB-T receiver (TwinhanDTV Alpha/MagicBox II)\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DigitalNow TinyUSB 2 DVB-t Receiver\00", [60 x i8] zeroinitializer }, align 32
@vp7045_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [10 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [10 x %struct.dvb_usb_device_description] }> } { i32 0, i32 3, ptr null, ptr @.str.25, i32 0, i32 20, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @vp7045_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 7, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @vp7045_power_ctrl, ptr @vp7045_read_mac_addr, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.26, i64 0, i64 512, i32 0, ptr null, ptr @.str.23, ptr @vp7045_rc_query, i32 400, i8 0, i32 255 } }, ptr null, i32 0, i32 0, i32 2, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [10 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.27, <{ ptr, [14 x ptr] }> <{ ptr @vp7045_usb_table, [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @vp7045_usb_table, i64 24), [14 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.28, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @vp7045_usb_table, i64 48), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @vp7045_usb_table, i64 72), [14 x ptr] zeroinitializer }> }, [10 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@vp7045_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"firmware says: %s \00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vp7045_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@vp7045_frontend_attach._entry_ptr = internal global ptr @vp7045_frontend_attach._entry, section ".printk_index", align 4
@vp7045_frontend_attach._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@vp7045_frontend_attach._entry_ptr.34 = internal global ptr @vp7045_frontend_attach._entry.32, section ".printk_index", align 4
@vp7045_frontend_attach._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v%s\0A\00", [27 x i8] zeroinitializer }, align 32
@vp7045_frontend_attach._entry_ptr.37 = internal global ptr @vp7045_frontend_attach._entry.35, section ".printk_index", align 4
@vp7045_read_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VP7045 EEPROM read (offs: %d, len: %d) : \00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vp7045_read_eeprom\00", [45 x i8] zeroinitializer }, align 32
@vp7045_read_eeprom._entry_ptr = internal global ptr @vp7045_read_eeprom._entry, section ".printk_index", align 4
@vp7045_read_eeprom._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.39, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp7045_read_eeprom._entry_ptr.41 = internal global ptr @vp7045_read_eeprom._entry.40, section ".printk_index", align 4
@vp7045_read_eeprom._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.39, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp7045_read_eeprom._entry_ptr.43 = internal global ptr @vp7045_read_eeprom._entry.42, section ".printk_index", align 4
@vp7045_rc_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"remote query key: %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vp7045_rc_query\00", [16 x i8] zeroinitializer }, align 32
@vp7045_rc_query._entry_ptr = internal global ptr @vp7045_rc_query._entry, section ".printk_index", align 4
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"dvb_usb_vp7045_debug\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 15, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 45, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 46, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 53, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 64, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 69, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 70, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"vp7045_usb_driver\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 236, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 247, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 19, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"vp7045_usb_table\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 175, i32 29 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 186, i32 14 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 214, i32 15 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 223, i32 13 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 227, i32 13 }
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"vp7045_properties\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 184, i32 41 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 148, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 152, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 156, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 132, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 133, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [38 x i8] c"../drivers/media/usb/dvb-usb/vp7045.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 106, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author391, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description392, ptr @__UNIQUE_ID_file394, ptr @__UNIQUE_ID_license395, ptr @__UNIQUE_ID_version393, ptr @__exitcall_vp7045_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_vp7045__390_243_vp7045_usb_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @vp7045_frontend_attach._entry, ptr @vp7045_frontend_attach._entry.32, ptr @vp7045_frontend_attach._entry.35, ptr @vp7045_frontend_attach._entry_ptr, ptr @vp7045_frontend_attach._entry_ptr.34, ptr @vp7045_frontend_attach._entry_ptr.37, ptr @vp7045_rc_query._entry, ptr @vp7045_rc_query._entry_ptr, ptr @vp7045_read_eeprom._entry, ptr @vp7045_read_eeprom._entry.40, ptr @vp7045_read_eeprom._entry.42, ptr @vp7045_read_eeprom._entry_ptr, ptr @vp7045_read_eeprom._entry_ptr.41, ptr @vp7045_read_eeprom._entry_ptr.43, ptr @vp7045_usb_driver_exit, ptr @vp7045_usb_op._entry, ptr @vp7045_usb_op._entry.12, ptr @vp7045_usb_op._entry.15, ptr @vp7045_usb_op._entry.18, ptr @vp7045_usb_op._entry.20, ptr @vp7045_usb_op._entry.3, ptr @vp7045_usb_op._entry.6, ptr @vp7045_usb_op._entry.9, ptr @vp7045_usb_op._entry_ptr, ptr @vp7045_usb_op._entry_ptr.11, ptr @vp7045_usb_op._entry_ptr.14, ptr @vp7045_usb_op._entry_ptr.17, ptr @vp7045_usb_op._entry_ptr.19, ptr @vp7045_usb_op._entry_ptr.21, ptr @vp7045_usb_op._entry_ptr.5, ptr @vp7045_usb_op._entry_ptr.8, ptr @dvb_usb_vp7045_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @vp7045_usb_driver, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @adapter_nr, ptr @vp7045_usb_table, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @vp7045_properties, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_vp7045_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_usb_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_usb_op._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_usb_op._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_usb_op._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_usb_op._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_usb_op._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_usb_op._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_usb_op._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_usb_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_frontend_attach._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_frontend_attach._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_read_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_read_eeprom._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_read_eeprom._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp7045_rc_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vp7045_usb_op(ptr noundef %d, i8 noundef zeroext %cmd, ptr noundef readonly %out, i32 noundef %outlen, ptr noundef writeonly %in, i32 noundef %inlen, i32 noundef %msec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %cmd, ptr %1, align 1
  %3 = tail call i32 @llvm.smin.i32(i32 %outlen, i32 19)
  %4 = tail call i32 @llvm.smin.i32(i32 %inlen, i32 11)
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %entry
  %cmp6.not = icmp ne ptr %out, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %outlen)
  %cmp7 = icmp sgt i32 %outlen, 0
  %or.cond = and i1 %cmp6.not, %cmp7
  br i1 %or.cond, label %if.then8, label %if.end5.do.body_crit_edge

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9 = getelementptr i8, ptr %1, i32 1
  %5 = call ptr @memcpy(ptr %arrayidx9, ptr %out, i32 %3)
  br label %do.body

do.body:                                          ; preds = %if.then8, %if.end5.do.body_crit_edge
  %6 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.do.end17_crit_edge, label %do.end

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not155 = icmp slt i32 %3, 0
  br i1 %cmp18.not155, label %do.end17.do.body32_crit_edge, label %do.end17.do.body19_crit_edge

do.end17.do.body19_crit_edge:                     ; preds = %do.end17
  br label %do.body19

do.end17.do.body32_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

do.body19:                                        ; preds = %for.inc.do.body19_crit_edge, %do.end17.do.body19_crit_edge
  %loop_.0156 = phi i32 [ %inc, %for.inc.do.body19_crit_edge ], [ 0, %do.end17.do.body19_crit_edge ]
  %7 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and20 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.for.inc_crit_edge, label %do.end25

do.body19.for.inc_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx27 = getelementptr i8, ptr %1, i32 %loop_.0156
  %8 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx27, align 1
  %conv = zext i8 %9 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end25, %do.body19.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop_.0156, 1
  %exitcond = icmp eq i32 %loop_.0156, %3
  br i1 %exitcond, label %for.inc.do.body32_crit_edge, label %for.inc.do.body19_crit_edge

for.inc.do.body19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

for.inc.do.body32_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

do.body32:                                        ; preds = %for.inc.do.body32_crit_edge, %do.end17.do.body32_crit_edge
  %10 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and33 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body32.do.end43_crit_edge, label %do.end38

do.body32.do.end43_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %do.end43

do.end43:                                         ; preds = %do.end38, %do.body32.do.end43_crit_edge
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i = shl i32 %14, 8
  %or = or i32 %shl.i, -2147483648
  %call46 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or, i8 noundef zeroext -63, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 20, i32 noundef 2000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 20
  br i1 %cmp47.not, label %if.end55, label %do.end52

do.end52:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %unlock

if.end55:                                         ; preds = %do.end43
  tail call void @msleep(i32 noundef %msec) #6
  %15 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i154 = shl i32 %18, 8
  %or60 = or i32 %shl.i154, -2147483520
  %call61 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or60, i8 noundef zeroext -64, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 12, i32 noundef 2000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 12
  br i1 %cmp62.not, label %do.body71, label %do.end67

do.end67:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %unlock

do.body71:                                        ; preds = %if.end55
  %19 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and72 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.body71.do.end82_crit_edge, label %do.end77

do.body71.do.end82_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end82

do.end77:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %do.end82

do.end82:                                         ; preds = %do.end77, %do.body71.do.end82_crit_edge
  %20 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and89 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.end82.for.inc102_crit_edge, label %do.end94

do.end82.for.inc102_crit_edge:                    ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102

do.end94:                                         ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 1
  %conv97 = zext i8 %22 to i32
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv97) #9
  br label %for.inc102

for.inc102:                                       ; preds = %do.end94, %do.end82.for.inc102_crit_edge
  %23 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and89.1 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.1)
  %tobool90.not.1 = icmp eq i32 %and89.1, 0
  br i1 %tobool90.not.1, label %for.inc102.for.inc102.1_crit_edge, label %do.end94.1

for.inc102.for.inc102.1_crit_edge:                ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102.1

do.end94.1:                                       ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx96.1 = getelementptr i8, ptr %1, i32 1
  %24 = ptrtoint ptr %arrayidx96.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx96.1, align 1
  %conv97.1 = zext i8 %25 to i32
  %call98.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv97.1) #9
  br label %for.inc102.1

for.inc102.1:                                     ; preds = %do.end94.1, %for.inc102.for.inc102.1_crit_edge
  %26 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and89.2 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.2)
  %tobool90.not.2 = icmp eq i32 %and89.2, 0
  br i1 %tobool90.not.2, label %for.inc102.1.for.inc102.2_crit_edge, label %do.end94.2

for.inc102.1.for.inc102.2_crit_edge:              ; preds = %for.inc102.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102.2

do.end94.2:                                       ; preds = %for.inc102.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx96.2 = getelementptr i8, ptr %1, i32 2
  %27 = ptrtoint ptr %arrayidx96.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx96.2, align 1
  %conv97.2 = zext i8 %28 to i32
  %call98.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv97.2) #9
  br label %for.inc102.2

for.inc102.2:                                     ; preds = %do.end94.2, %for.inc102.1.for.inc102.2_crit_edge
  %29 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and89.3 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.3)
  %tobool90.not.3 = icmp eq i32 %and89.3, 0
  br i1 %tobool90.not.3, label %for.inc102.2.for.inc102.3_crit_edge, label %do.end94.3

for.inc102.2.for.inc102.3_crit_edge:              ; preds = %for.inc102.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102.3

do.end94.3:                                       ; preds = %for.inc102.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx96.3 = getelementptr i8, ptr %1, i32 3
  %30 = ptrtoint ptr %arrayidx96.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx96.3, align 1
  %conv97.3 = zext i8 %31 to i32
  %call98.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv97.3) #9
  br label %for.inc102.3

for.inc102.3:                                     ; preds = %do.end94.3, %for.inc102.2.for.inc102.3_crit_edge
  %32 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and89.4 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.4)
  %tobool90.not.4 = icmp eq i32 %and89.4, 0
  br i1 %tobool90.not.4, label %for.inc102.3.for.inc102.4_crit_edge, label %do.end94.4

for.inc102.3.for.inc102.4_crit_edge:              ; preds = %for.inc102.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102.4

do.end94.4:                                       ; preds = %for.inc102.3
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx96.4 = getelementptr i8, ptr %1, i32 4
  %33 = ptrtoint ptr %arrayidx96.4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx96.4, align 1
  %conv97.4 = zext i8 %34 to i32
  %call98.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv97.4) #9
  br label %for.inc102.4

for.inc102.4:                                     ; preds = %do.end94.4, %for.inc102.3.for.inc102.4_crit_edge
  %35 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and89.5 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.5)
  %tobool90.not.5 = icmp eq i32 %and89.5, 0
  br i1 %tobool90.not.5, label %for.inc102.4.for.inc102.5_crit_edge, label %do.end94.5

for.inc102.4.for.inc102.5_crit_edge:              ; preds = %for.inc102.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102.5

do.end94.5:                                       ; preds = %for.inc102.4
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx96.5 = getelementptr i8, ptr %1, i32 5
  %36 = ptrtoint ptr %arrayidx96.5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx96.5, align 1
  %conv97.5 = zext i8 %37 to i32
  %call98.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv97.5) #9
  br label %for.inc102.5

for.inc102.5:                                     ; preds = %do.end94.5, %for.inc102.4.for.inc102.5_crit_edge
  %38 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and89.6 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.6)
  %tobool90.not.6 = icmp eq i32 %and89.6, 0
  br i1 %tobool90.not.6, label %for.inc102.5.for.inc102.6_crit_edge, label %do.end94.6

for.inc102.5.for.inc102.6_crit_edge:              ; preds = %for.inc102.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102.6

do.end94.6:                                       ; preds = %for.inc102.5
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx96.6 = getelementptr i8, ptr %1, i32 6
  %39 = ptrtoint ptr %arrayidx96.6 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx96.6, align 1
  %conv97.6 = zext i8 %40 to i32
  %call98.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv97.6) #9
  br label %for.inc102.6

for.inc102.6:                                     ; preds = %do.end94.6, %for.inc102.5.for.inc102.6_crit_edge
  %41 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and89.7 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.7)
  %tobool90.not.7 = icmp eq i32 %and89.7, 0
  br i1 %tobool90.not.7, label %for.inc102.6.for.inc102.7_crit_edge, label %do.end94.7

for.inc102.6.for.inc102.7_crit_edge:              ; preds = %for.inc102.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102.7

do.end94.7:                                       ; preds = %for.inc102.6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx96.7 = getelementptr i8, ptr %1, i32 7
  %42 = ptrtoint ptr %arrayidx96.7 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx96.7, align 1
  %conv97.7 = zext i8 %43 to i32
  %call98.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv97.7) #9
  br label %for.inc102.7

for.inc102.7:                                     ; preds = %do.end94.7, %for.inc102.6.for.inc102.7_crit_edge
  %44 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and89.8 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.8)
  %tobool90.not.8 = icmp eq i32 %and89.8, 0
  br i1 %tobool90.not.8, label %for.inc102.7.for.inc102.8_crit_edge, label %do.end94.8

for.inc102.7.for.inc102.8_crit_edge:              ; preds = %for.inc102.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102.8

do.end94.8:                                       ; preds = %for.inc102.7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx96.8 = getelementptr i8, ptr %1, i32 8
  %45 = ptrtoint ptr %arrayidx96.8 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx96.8, align 1
  %conv97.8 = zext i8 %46 to i32
  %call98.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv97.8) #9
  br label %for.inc102.8

for.inc102.8:                                     ; preds = %do.end94.8, %for.inc102.7.for.inc102.8_crit_edge
  %47 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and89.9 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.9)
  %tobool90.not.9 = icmp eq i32 %and89.9, 0
  br i1 %tobool90.not.9, label %for.inc102.8.for.inc102.9_crit_edge, label %do.end94.9

for.inc102.8.for.inc102.9_crit_edge:              ; preds = %for.inc102.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102.9

do.end94.9:                                       ; preds = %for.inc102.8
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx96.9 = getelementptr i8, ptr %1, i32 9
  %48 = ptrtoint ptr %arrayidx96.9 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx96.9, align 1
  %conv97.9 = zext i8 %49 to i32
  %call98.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv97.9) #9
  br label %for.inc102.9

for.inc102.9:                                     ; preds = %do.end94.9, %for.inc102.8.for.inc102.9_crit_edge
  %50 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and89.10 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.10)
  %tobool90.not.10 = icmp eq i32 %and89.10, 0
  br i1 %tobool90.not.10, label %for.inc102.9.for.inc102.10_crit_edge, label %do.end94.10

for.inc102.9.for.inc102.10_crit_edge:             ; preds = %for.inc102.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102.10

do.end94.10:                                      ; preds = %for.inc102.9
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx96.10 = getelementptr i8, ptr %1, i32 10
  %51 = ptrtoint ptr %arrayidx96.10 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx96.10, align 1
  %conv97.10 = zext i8 %52 to i32
  %call98.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv97.10) #9
  br label %for.inc102.10

for.inc102.10:                                    ; preds = %do.end94.10, %for.inc102.9.for.inc102.10_crit_edge
  %53 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and89.11 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.11)
  %tobool90.not.11 = icmp eq i32 %and89.11, 0
  br i1 %tobool90.not.11, label %for.inc102.10.for.inc102.11_crit_edge, label %do.end94.11

for.inc102.10.for.inc102.11_crit_edge:            ; preds = %for.inc102.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102.11

do.end94.11:                                      ; preds = %for.inc102.10
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx96.11 = getelementptr i8, ptr %1, i32 11
  %54 = ptrtoint ptr %arrayidx96.11 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx96.11, align 1
  %conv97.11 = zext i8 %55 to i32
  %call98.11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv97.11) #9
  br label %for.inc102.11

for.inc102.11:                                    ; preds = %do.end94.11, %for.inc102.10.for.inc102.11_crit_edge
  %56 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and106 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %for.inc102.11.do.end116_crit_edge, label %do.end111

for.inc102.11.do.end116_crit_edge:                ; preds = %for.inc102.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end116

do.end111:                                        ; preds = %for.inc102.11
  call void @__sanitizer_cov_trace_pc() #8
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %do.end116

do.end116:                                        ; preds = %do.end111, %for.inc102.11.do.end116_crit_edge
  %cmp117.not = icmp ne ptr %in, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inlen)
  %cmp120 = icmp sgt i32 %inlen, 0
  %or.cond153 = and i1 %cmp117.not, %cmp120
  br i1 %or.cond153, label %if.then122, label %do.end116.unlock_crit_edge

do.end116.unlock_crit_edge:                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then122:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx123 = getelementptr i8, ptr %1, i32 1
  %57 = call ptr @memcpy(ptr %in, ptr %arrayidx123, i32 %4)
  br label %unlock

unlock:                                           ; preds = %if.then122, %do.end116.unlock_crit_edge, %do.end67, %do.end52
  %ret.0 = phi i32 [ -5, %do.end52 ], [ -5, %do.end67 ], [ 0, %if.then122 ], [ 0, %do.end116.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @vp7045_read_reg(ptr noundef %d, i8 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  %obuf = alloca [2 x i8], align 2
  %v = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %obuf) #6
  %0 = ptrtoint ptr %obuf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %obuf, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v) #6
  %1 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %v, align 1, !annotation !112
  %arrayidx = getelementptr inbounds [2 x i8], ptr %obuf, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %reg, ptr %arrayidx, align 1
  %call = call i32 @vp7045_usb_op(ptr noundef %d, i8 noundef zeroext 3, ptr noundef nonnull %obuf, i32 noundef 2, ptr noundef nonnull %v, i32 noundef 1, i32 noundef 30)
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %v, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %obuf) #6
  ret i8 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vp7045_usb_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @vp7045_usb_driver, ptr noundef null, ptr noundef nonnull @.str.23) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vp7045_usb_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @vp7045_usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp7045_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @vp7045_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp7045_frontend_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  %buf = alloca [255 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 0, i32 255)
  %1 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adap, align 8
  %call = call i32 @vp7045_usb_op(ptr noundef %2, i8 noundef zeroext 12, ptr noundef null, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 20, i32 noundef 0)
  %arrayidx = getelementptr inbounds [255 x i8], ptr %buf, i32 0, i32 10
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  %4 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull %buf) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 8
  %call8 = call i32 @vp7045_usb_op(ptr noundef %6, i8 noundef zeroext 13, ptr noundef null, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 20, i32 noundef 0)
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  %8 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and11 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.end5.do.end22_crit_edge, label %do.end16

do.end5.do.end22_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

do.end16:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %buf) #9
  br label %do.end22

do.end22:                                         ; preds = %do.end16, %do.end5.do.end22_crit_edge
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %call25 = call i32 @vp7045_usb_op(ptr noundef %10, i8 noundef zeroext 11, ptr noundef null, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 20, i32 noundef 0)
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx, align 1
  %12 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and28 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.end22.do.end39_crit_edge, label %do.end33

do.end22.do.end39_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

do.end33:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull %buf) #9
  br label %do.end39

do.end39:                                         ; preds = %do.end33, %do.end22.do.end39_crit_edge
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap, align 8
  %call41 = call ptr @vp7045_fe_attach(ptr noundef %14) #6
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %15 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call41, ptr %fe_adap, align 8
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %buf) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp7045_power_ctrl(ptr noundef %d, i32 noundef %onoff) #0 align 64 {
entry:
  %v = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v) #6
  %conv = trunc i32 %onoff to i8
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %v, align 1
  %call = call i32 @vp7045_usb_op(ptr noundef %d, i8 noundef zeroext 6, ptr noundef nonnull %v, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 150)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp7045_read_mac_addr(ptr noundef %d, ptr nocapture noundef %mac) #0 align 64 {
entry:
  %v.i = alloca i8, align 1
  %br.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %br.i) #6
  %0 = ptrtoint ptr %br.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %br.i, align 1, !annotation !112
  %1 = getelementptr inbounds [2 x i8], ptr %br.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !112
  %3 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 7, ptr %v.i, align 1
  %call.i = call i32 @vp7045_usb_op(ptr noundef %d, i8 noundef zeroext 17, ptr noundef nonnull %v.i, i32 noundef 1, ptr noundef nonnull %br.i, i32 noundef 2, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.vp7045_read_eeprom.exit_crit_edge

entry.vp7045_read_eeprom.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %vp7045_read_eeprom.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %mac, align 1
  %7 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %v.i, align 1
  %call.1.i = call i32 @vp7045_usb_op(ptr noundef %d, i8 noundef zeroext 17, ptr noundef nonnull %v.i, i32 noundef 1, ptr noundef nonnull %br.i, i32 noundef 2, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %if.end.i.vp7045_read_eeprom.exit_crit_edge

if.end.i.vp7045_read_eeprom.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vp7045_read_eeprom.exit

if.end.1.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %arrayidx1.1.i = getelementptr i8, ptr %mac, i32 1
  %10 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx1.1.i, align 1
  %11 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 9, ptr %v.i, align 1
  %call.2.i = call i32 @vp7045_usb_op(ptr noundef %d, i8 noundef zeroext 17, ptr noundef nonnull %v.i, i32 noundef 1, ptr noundef nonnull %br.i, i32 noundef 2, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %if.end.1.i.vp7045_read_eeprom.exit_crit_edge

if.end.1.i.vp7045_read_eeprom.exit_crit_edge:     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vp7045_read_eeprom.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 1
  %arrayidx1.2.i = getelementptr i8, ptr %mac, i32 2
  %14 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx1.2.i, align 1
  %15 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 10, ptr %v.i, align 1
  %call.3.i = call i32 @vp7045_usb_op(ptr noundef %d, i8 noundef zeroext 17, ptr noundef nonnull %v.i, i32 noundef 1, ptr noundef nonnull %br.i, i32 noundef 2, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %if.end.3.i, label %if.end.2.i.vp7045_read_eeprom.exit_crit_edge

if.end.2.i.vp7045_read_eeprom.exit_crit_edge:     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vp7045_read_eeprom.exit

if.end.3.i:                                       ; preds = %if.end.2.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 1
  %arrayidx1.3.i = getelementptr i8, ptr %mac, i32 3
  %18 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx1.3.i, align 1
  %19 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 11, ptr %v.i, align 1
  %call.4.i = call i32 @vp7045_usb_op(ptr noundef %d, i8 noundef zeroext 17, ptr noundef nonnull %v.i, i32 noundef 1, ptr noundef nonnull %br.i, i32 noundef 2, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %if.end.4.i, label %if.end.3.i.vp7045_read_eeprom.exit_crit_edge

if.end.3.i.vp7045_read_eeprom.exit_crit_edge:     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vp7045_read_eeprom.exit

if.end.4.i:                                       ; preds = %if.end.3.i
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  %arrayidx1.4.i = getelementptr i8, ptr %mac, i32 4
  %22 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx1.4.i, align 1
  %23 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 12, ptr %v.i, align 1
  %call.5.i = call i32 @vp7045_usb_op(ptr noundef %d, i8 noundef zeroext 17, ptr noundef nonnull %v.i, i32 noundef 1, ptr noundef nonnull %br.i, i32 noundef 2, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %if.end.5.i, label %if.end.4.i.vp7045_read_eeprom.exit_crit_edge

if.end.4.i.vp7045_read_eeprom.exit_crit_edge:     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vp7045_read_eeprom.exit

if.end.5.i:                                       ; preds = %if.end.4.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 1
  %arrayidx1.5.i = getelementptr i8, ptr %mac, i32 5
  %26 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx1.5.i, align 1
  %27 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.5.i.do.end8.i_crit_edge, label %do.end.i

if.end.5.i.do.end8.i_crit_edge:                   ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8.i

do.end.i:                                         ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 7, i32 noundef 6) #9
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %if.end.5.i.do.end8.i_crit_edge
  %28 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and14.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %do.end8.i.for.inc27.i_crit_edge, label %do.end19.i

do.end8.i.for.inc27.i_crit_edge:                  ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.i

do.end19.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mac, align 1
  %conv22.i = zext i8 %30 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv22.i) #9
  br label %for.inc27.i

for.inc27.i:                                      ; preds = %do.end19.i, %do.end8.i.for.inc27.i_crit_edge
  %31 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and14.1.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.1.i)
  %tobool15.not.1.i = icmp eq i32 %and14.1.i, 0
  br i1 %tobool15.not.1.i, label %for.inc27.i.for.inc27.1.i_crit_edge, label %do.end19.1.i

for.inc27.i.for.inc27.1.i_crit_edge:              ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.1.i

do.end19.1.i:                                     ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx1.1.i, align 1
  %conv22.1.i = zext i8 %33 to i32
  %call23.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv22.1.i) #9
  br label %for.inc27.1.i

for.inc27.1.i:                                    ; preds = %do.end19.1.i, %for.inc27.i.for.inc27.1.i_crit_edge
  %34 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and14.2.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.2.i)
  %tobool15.not.2.i = icmp eq i32 %and14.2.i, 0
  br i1 %tobool15.not.2.i, label %for.inc27.1.i.for.inc27.2.i_crit_edge, label %do.end19.2.i

for.inc27.1.i.for.inc27.2.i_crit_edge:            ; preds = %for.inc27.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.2.i

do.end19.2.i:                                     ; preds = %for.inc27.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx1.2.i, align 1
  %conv22.2.i = zext i8 %36 to i32
  %call23.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv22.2.i) #9
  br label %for.inc27.2.i

for.inc27.2.i:                                    ; preds = %do.end19.2.i, %for.inc27.1.i.for.inc27.2.i_crit_edge
  %37 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and14.3.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.3.i)
  %tobool15.not.3.i = icmp eq i32 %and14.3.i, 0
  br i1 %tobool15.not.3.i, label %for.inc27.2.i.for.inc27.3.i_crit_edge, label %do.end19.3.i

for.inc27.2.i.for.inc27.3.i_crit_edge:            ; preds = %for.inc27.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.3.i

do.end19.3.i:                                     ; preds = %for.inc27.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx1.3.i, align 1
  %conv22.3.i = zext i8 %39 to i32
  %call23.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv22.3.i) #9
  br label %for.inc27.3.i

for.inc27.3.i:                                    ; preds = %do.end19.3.i, %for.inc27.2.i.for.inc27.3.i_crit_edge
  %40 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and14.4.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.4.i)
  %tobool15.not.4.i = icmp eq i32 %and14.4.i, 0
  br i1 %tobool15.not.4.i, label %for.inc27.3.i.for.inc27.4.i_crit_edge, label %do.end19.4.i

for.inc27.3.i.for.inc27.4.i_crit_edge:            ; preds = %for.inc27.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.4.i

do.end19.4.i:                                     ; preds = %for.inc27.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx1.4.i, align 1
  %conv22.4.i = zext i8 %42 to i32
  %call23.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv22.4.i) #9
  br label %for.inc27.4.i

for.inc27.4.i:                                    ; preds = %do.end19.4.i, %for.inc27.3.i.for.inc27.4.i_crit_edge
  %43 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and14.5.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.5.i)
  %tobool15.not.5.i = icmp eq i32 %and14.5.i, 0
  br i1 %tobool15.not.5.i, label %for.inc27.4.i.for.inc27.5.i_crit_edge, label %do.end19.5.i

for.inc27.4.i.for.inc27.5.i_crit_edge:            ; preds = %for.inc27.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.5.i

do.end19.5.i:                                     ; preds = %for.inc27.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx1.5.i, align 1
  %conv22.5.i = zext i8 %45 to i32
  %call23.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv22.5.i) #9
  br label %for.inc27.5.i

for.inc27.5.i:                                    ; preds = %do.end19.5.i, %for.inc27.4.i.for.inc27.5.i_crit_edge
  %46 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and31.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %for.inc27.5.i.vp7045_read_eeprom.exit_crit_edge, label %do.end36.i

for.inc27.5.i.vp7045_read_eeprom.exit_crit_edge:  ; preds = %for.inc27.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vp7045_read_eeprom.exit

do.end36.i:                                       ; preds = %for.inc27.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %vp7045_read_eeprom.exit

vp7045_read_eeprom.exit:                          ; preds = %do.end36.i, %for.inc27.5.i.vp7045_read_eeprom.exit_crit_edge, %if.end.4.i.vp7045_read_eeprom.exit_crit_edge, %if.end.3.i.vp7045_read_eeprom.exit_crit_edge, %if.end.2.i.vp7045_read_eeprom.exit_crit_edge, %if.end.1.i.vp7045_read_eeprom.exit_crit_edge, %if.end.i.vp7045_read_eeprom.exit_crit_edge, %entry.vp7045_read_eeprom.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end36.i ], [ 0, %for.inc27.5.i.vp7045_read_eeprom.exit_crit_edge ], [ %call.i, %entry.vp7045_read_eeprom.exit_crit_edge ], [ %call.1.i, %if.end.i.vp7045_read_eeprom.exit_crit_edge ], [ %call.2.i, %if.end.1.i.vp7045_read_eeprom.exit_crit_edge ], [ %call.3.i, %if.end.2.i.vp7045_read_eeprom.exit_crit_edge ], [ %call.4.i, %if.end.3.i.vp7045_read_eeprom.exit_crit_edge ], [ %call.5.i, %if.end.4.i.vp7045_read_eeprom.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %br.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp7045_rc_query(ptr noundef %d) #0 align 64 {
entry:
  %key = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %key) #6
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %key, align 1, !annotation !112
  %call = call i32 @vp7045_usb_op(ptr noundef %d, i8 noundef zeroext 5, ptr noundef null, i32 noundef 0, ptr noundef nonnull %key, i32 noundef 1, i32 noundef 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %1 = load i32, ptr @dvb_usb_vp7045_debug, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %key, align 1
  %conv = zext i8 %3 to i32
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv) #9
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %5)
  %cmp.not = icmp eq i8 %5, 68
  br i1 %cmp.not, label %do.end7.cleanup_crit_edge, label %if.then10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %6 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rc_dev, align 8
  %conv12 = zext i8 %5 to i64
  call void @rc_keydown(ptr noundef %7, i32 noundef 9, i64 noundef %conv12, i8 noundef zeroext 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %key) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vp7045_fe_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !46, !48, !49, !50, !51, !52, !54, !55, !57, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 17, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 19, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !6, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr389, !6, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 45, i32 2}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vp7045_usb_op._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @vp7045_usb_op._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 46, i32 2}
!17 = !{ptr @vp7045_usb_op._entry.3, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @vp7045_usb_op._entry_ptr.5, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vp7045_usb_op._entry.6, !16, !"_entry", i1 false, i1 false}
!21 = !{ptr @vp7045_usb_op._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 53, i32 3}
!24 = !{ptr @vp7045_usb_op._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @vp7045_usb_op._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 64, i32 3}
!28 = !{ptr @vp7045_usb_op._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @vp7045_usb_op._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 69, i32 2}
!32 = !{ptr @vp7045_usb_op._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @vp7045_usb_op._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @vp7045_usb_op._entry.18, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 70, i32 2}
!36 = !{ptr @vp7045_usb_op._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @vp7045_usb_op._entry.20, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @vp7045_usb_op._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__initcall__kmod_dvb_usb_vp7045__390_243_vp7045_usb_driver_init6, !40, !"__initcall__kmod_dvb_usb_vp7045__390_243_vp7045_usb_driver_init6", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 243, i32 1}
!41 = !{ptr @__exitcall_vp7045_usb_driver_exit, !40, !"__exitcall_vp7045_usb_driver_exit", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_author391, !43, !"__UNIQUE_ID_author391", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 245, i32 1}
!44 = !{ptr @__UNIQUE_ID_description392, !45, !"__UNIQUE_ID_description392", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 246, i32 1}
!46 = !{ptr @__UNIQUE_ID_version393, !47, !"__UNIQUE_ID_version393", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 247, i32 1}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @__modver_attr, !47, !"__modver_attr", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_file394, !53, !"__UNIQUE_ID_file394", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 248, i32 1}
!54 = !{ptr @__UNIQUE_ID_license395, !53, !"__UNIQUE_ID_license395", i1 false, i1 false}
!55 = !{ptr @dvb_usb_vp7045_debug, !56, !"dvb_usb_vp7045_debug", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 15, i32 12}
!57 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!58 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!59 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!60 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!61 = !{ptr @vp7045_usb_driver, !62, !"vp7045_usb_driver", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 236, i32 26}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 186, i32 14}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 214, i32 15}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 223, i32 13}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 227, i32 13}
!71 = !{ptr @vp7045_properties, !72, !"vp7045_properties", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 184, i32 41}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 148, i32 2}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vp7045_frontend_attach._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @vp7045_frontend_attach._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 152, i32 2}
!80 = !{ptr @vp7045_frontend_attach._entry.32, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @vp7045_frontend_attach._entry_ptr.34, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 156, i32 2}
!84 = !{ptr @vp7045_frontend_attach._entry.35, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @vp7045_frontend_attach._entry_ptr.37, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 132, i32 2}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @vp7045_read_eeprom._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @vp7045_read_eeprom._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @vp7045_read_eeprom._entry.40, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 133, i32 2}
!93 = !{ptr @vp7045_read_eeprom._entry_ptr.41, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @vp7045_read_eeprom._entry.42, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @vp7045_read_eeprom._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 106, i32 2}
!98 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @vp7045_rc_query._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @vp7045_rc_query._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @vp7045_usb_table, !102, !"vp7045_usb_table", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/dvb-usb/vp7045.c", i32 175, i32 29}
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
