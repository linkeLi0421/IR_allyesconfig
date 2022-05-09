; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/vp702x.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/vp702x.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.vp702x_device_state = type { %struct.mutex, i32, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.vp702x_adapter_state = type { i32, i32, i8 }

@__param_str_debug = internal constant [21 x i8] c"dvb_usb_vp702x.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_vp702x_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_vp702x_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [34 x i8] c"dvb_usb_vp702x.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [78 x i8] c"dvb_usb_vp702x.parm=debug:set debugging level (1=info,xfer=2,rc=4 (or-able)).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_vp702x.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [50 x i8] c"dvb_usb_vp702x.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [51 x i8] c"dvb_usb_vp702x.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_vp702x__392_443_vp702x_usb_driver_init6 = internal global ptr @vp702x_usb_driver_init, section ".initcall6.init", align 4
@vp702x_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @vp702x_usb_probe, ptr @vp702x_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vp702x_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_vp702x_usb_driver_exit = internal global ptr @vp702x_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author393 = internal constant [70 x i8] c"dvb_usb_vp702x.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [78 x i8] c"dvb_usb_vp702x.description=Driver for Twinhan StarBox DVB-S USB2.0 and clones\00", section ".modinfo", align 1
@__UNIQUE_ID_version395 = internal constant [27 x i8] c"dvb_usb_vp702x.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_vp702x\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file396 = internal constant [61 x i8] c"dvb_usb_vp702x.file=drivers/media/usb/dvb-usb/dvb-usb-vp702x\00", section ".modinfo", align 1
@__UNIQUE_ID_license397 = internal constant [27 x i8] c"dvb_usb_vp702x.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@vp702x_usb_in_op_unlocked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014vp702x: usb in operation failed. (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vp702x_usb_in_op_unlocked\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/dvb-usb/vp702x.c\00", [61 x i8] zeroinitializer }, align 32
@vp702x_usb_in_op_unlocked._entry_ptr = internal global ptr @vp702x_usb_in_op_unlocked._entry, section ".printk_index", align 4
@vp702x_usb_in_op_unlocked._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"in: req. %02x, val: %04x, ind: %04x, buffer: \00", [50 x i8] zeroinitializer }, align 32
@vp702x_usb_in_op_unlocked._entry_ptr.8 = internal global ptr @vp702x_usb_in_op_unlocked._entry.6, section ".printk_index", align 4
@vp702x_usb_in_op_unlocked._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@vp702x_usb_in_op_unlocked._entry_ptr.11 = internal global ptr @vp702x_usb_in_op_unlocked._entry.9, section ".printk_index", align 4
@vp702x_usb_in_op_unlocked._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@vp702x_usb_in_op_unlocked._entry_ptr.14 = internal global ptr @vp702x_usb_in_op_unlocked._entry.12, section ".printk_index", align 4
@vp702x_usb_out_op_unlocked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"out: req. %02x, val: %04x, ind: %04x, buffer: \00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vp702x_usb_out_op_unlocked\00", [37 x i8] zeroinitializer }, align 32
@vp702x_usb_out_op_unlocked._entry_ptr = internal global ptr @vp702x_usb_out_op_unlocked._entry, section ".printk_index", align 4
@vp702x_usb_out_op_unlocked._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.16, ptr @.str.5, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp702x_usb_out_op_unlocked._entry_ptr.18 = internal global ptr @vp702x_usb_out_op_unlocked._entry.17, section ".printk_index", align 4
@vp702x_usb_out_op_unlocked._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.16, ptr @.str.5, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp702x_usb_out_op_unlocked._entry_ptr.20 = internal global ptr @vp702x_usb_out_op_unlocked._entry.19, section ".printk_index", align 4
@vp702x_usb_out_op_unlocked._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.5, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014vp702x: usb out operation failed. (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@vp702x_usb_out_op_unlocked._entry_ptr.23 = internal global ptr @vp702x_usb_out_op_unlocked._entry.21, section ".printk_index", align 4
@vp702x_usb_table = internal global { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5075, i16 12807, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@vp702x_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&st->buf_mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-usb-vp702x-02.fw\00", [43 x i8] zeroinitializer }, align 32
@rc_map_vp702x_table = internal global { [2 x %struct.rc_map_table], [32 x i8] } { [2 x %struct.rc_map_table] [%struct.rc_map_table { i64 1, i32 2 }, %struct.rc_map_table { i64 2, i32 3 }], [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"TwinhanDTV StarBox DVB-S USB2.0 (VP7021)\00", [55 x i8] zeroinitializer }, align 32
@vp702x_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x %struct.dvb_usb_device_description] }> } { i32 0, i32 3, ptr null, ptr @.str.25, i32 1, i32 100, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 12, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 8, i32 0, ptr @vp702x_streaming_ctrl, ptr null, ptr null, ptr @vp702x_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 10, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr @vp702x_read_mac_addr, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy { ptr @rc_map_vp702x_table, i32 2, ptr @vp702x_rc_query, i32 400 }, %struct.dvb_rc zeroinitializer }, ptr null, i32 0, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.26, <{ ptr, [14 x ptr] }> <{ ptr @vp702x_usb_table, [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@vp702x_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016vp702x: system string: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vp702x_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@vp702x_frontend_attach._entry_ptr = internal global ptr @vp702x_frontend_attach._entry, section ".printk_index", align 4
@vp702x_usb_inout_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016vp702x: successfully reallocated a bigger buffer\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vp702x_usb_inout_cmd\00", [43 x i8] zeroinitializer }, align 32
@vp702x_usb_inout_cmd._entry_ptr = internal global ptr @vp702x_usb_inout_cmd._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"dvb_usb_vp702x_debug\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 18, i32 5 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"vp702x_usb_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 436, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 447, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 22, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 43, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 49, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 50, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 71, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 72, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 80, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"vp702x_usb_table\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 372, i32 29 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 355, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 382, i32 25 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"rc_map_vp702x_table\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 251, i32 28 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 423, i32 13 }
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"vp702x_properties\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 380, i32 41 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 323, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [38 x i8] c"../drivers/media/usb/dvb-usb/vp702x.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 131, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_file396, ptr @__UNIQUE_ID_license397, ptr @__UNIQUE_ID_version395, ptr @__exitcall_vp702x_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_vp702x__392_443_vp702x_usb_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @vp702x_frontend_attach._entry, ptr @vp702x_frontend_attach._entry_ptr, ptr @vp702x_usb_driver_exit, ptr @vp702x_usb_in_op_unlocked._entry, ptr @vp702x_usb_in_op_unlocked._entry.12, ptr @vp702x_usb_in_op_unlocked._entry.6, ptr @vp702x_usb_in_op_unlocked._entry.9, ptr @vp702x_usb_in_op_unlocked._entry_ptr, ptr @vp702x_usb_in_op_unlocked._entry_ptr.11, ptr @vp702x_usb_in_op_unlocked._entry_ptr.14, ptr @vp702x_usb_in_op_unlocked._entry_ptr.8, ptr @vp702x_usb_inout_cmd._entry, ptr @vp702x_usb_inout_cmd._entry_ptr, ptr @vp702x_usb_out_op_unlocked._entry, ptr @vp702x_usb_out_op_unlocked._entry.17, ptr @vp702x_usb_out_op_unlocked._entry.19, ptr @vp702x_usb_out_op_unlocked._entry.21, ptr @vp702x_usb_out_op_unlocked._entry_ptr, ptr @vp702x_usb_out_op_unlocked._entry_ptr.18, ptr @vp702x_usb_out_op_unlocked._entry_ptr.20, ptr @vp702x_usb_out_op_unlocked._entry_ptr.23, ptr @dvb_usb_vp702x_debug, ptr @vp702x_usb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.22, ptr @vp702x_usb_table, ptr @vp702x_usb_probe.__key, ptr @.str.24, ptr @.str.25, ptr @rc_map_vp702x_table, ptr @.str.26, ptr @vp702x_properties, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_usb_in_op_unlocked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_usb_in_op_unlocked._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_usb_in_op_unlocked._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_usb_in_op_unlocked._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_usb_out_op_unlocked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_usb_out_op_unlocked._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_usb_out_op_unlocked._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_usb_out_op_unlocked._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_usb_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_map_vp702x_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_usb_inout_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vp702x_usb_in_op(ptr noundef %d, i8 noundef zeroext %req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i32 noundef %blen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex, i32 noundef 0) #7
  %call = tail call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %d, i8 noundef zeroext %req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i32 noundef %blen)
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vp702x_usb_in_op_unlocked(ptr nocapture noundef readonly %d, i8 noundef zeroext %req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i32 noundef %blen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or2 = or i32 %shl.i, -2147483520
  %conv = trunc i32 %blen to i16
  %call3 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or2, i8 noundef zeroext %req, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i16 noundef zeroext %conv, i32 noundef 2000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %call3) #10
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %ret.0 = phi i32 [ -5, %do.end ], [ 0, %entry.do.body6_crit_edge ]
  %4 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body6.do.end18_crit_edge, label %do.end10

do.body6.do.end18_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

do.end10:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %conv12 = zext i8 %req to i32
  %conv13 = zext i16 %value to i32
  %conv14 = zext i16 %index to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14) #10
  br label %do.end18

do.end18:                                         ; preds = %do.end10, %do.body6.do.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blen)
  %cmp1956 = icmp sgt i32 %blen, 0
  br i1 %cmp1956, label %do.end18.do.body21_crit_edge, label %do.end18.do.body34_crit_edge

do.end18.do.body34_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

do.end18.do.body21_crit_edge:                     ; preds = %do.end18
  br label %do.body21

do.body21:                                        ; preds = %for.inc.do.body21_crit_edge, %do.end18.do.body21_crit_edge
  %loop_.057 = phi i32 [ %inc, %for.inc.do.body21_crit_edge ], [ 0, %do.end18.do.body21_crit_edge ]
  %5 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and22 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.for.inc_crit_edge, label %do.end27

do.body21.for.inc_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %b, i32 %loop_.057
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv29 = zext i8 %7 to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv29) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end27, %do.body21.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop_.057, 1
  %exitcond.not = icmp eq i32 %inc, %blen
  br i1 %exitcond.not, label %for.inc.do.body34_crit_edge, label %for.inc.do.body21_crit_edge

for.inc.do.body21_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

for.inc.do.body34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

do.body34:                                        ; preds = %for.inc.do.body34_crit_edge, %do.end18.do.body34_crit_edge
  %8 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and35 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.do.end45_crit_edge, label %do.end40

do.body34.do.end45_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %do.end45

do.end45:                                         ; preds = %do.end40, %do.body34.do.end45_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vp702x_usb_inout_op(ptr noundef %d, ptr noundef %o, i32 noundef %olen, ptr noundef %i, i32 noundef %ilen, i32 noundef %msec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @vp702x_usb_out_op_unlocked(ptr noundef %d, i8 noundef zeroext -78, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %o, i32 noundef %olen)
  tail call void @msleep(i32 noundef %msec) #7
  %call2 = tail call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %d, i8 noundef zeroext -77, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %i, i32 noundef %ilen)
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vp702x_usb_out_op_unlocked(ptr nocapture noundef readonly %d, i8 noundef zeroext %req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i32 noundef %blen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %req to i32
  %conv2 = zext i16 %value to i32
  %conv3 = zext i16 %index to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blen)
  %cmp1 = icmp sgt i32 %blen, 0
  br i1 %cmp1, label %do.end5.do.body7_crit_edge, label %do.end5.do.body20_crit_edge

do.end5.do.body20_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

do.end5.do.body7_crit_edge:                       ; preds = %do.end5
  br label %do.body7

do.body7:                                         ; preds = %for.inc.do.body7_crit_edge, %do.end5.do.body7_crit_edge
  %loop_.02 = phi i32 [ %inc, %for.inc.do.body7_crit_edge ], [ 0, %do.end5.do.body7_crit_edge ]
  %1 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and8 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.for.inc_crit_edge, label %do.end13

do.body7.for.inc_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %b, i32 %loop_.02
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv15 = zext i8 %3 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv15) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end13, %do.body7.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop_.02, 1
  %exitcond.not = icmp eq i32 %inc, %blen
  br i1 %exitcond.not, label %for.inc.do.body20_crit_edge, label %for.inc.do.body7_crit_edge

for.inc.do.body7_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

for.inc.do.body20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

do.body20:                                        ; preds = %for.inc.do.body20_crit_edge, %do.end5.do.body20_crit_edge
  %4 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and21 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.do.end31_crit_edge, label %do.end26

do.body20.do.end31_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %do.body20.do.end31_crit_edge
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i = shl i32 %8, 8
  %or = or i32 %shl.i, -2147483648
  %conv34 = trunc i32 %blen to i16
  %call35 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or, i8 noundef zeroext %req, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i16 noundef zeroext %conv34, i32 noundef 2000) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call35, i32 %blen)
  %cmp36.not = icmp eq i32 %call35, %blen
  br i1 %cmp36.not, label %do.end31.cleanup_crit_edge, label %do.end41

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end41:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call35) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.end31.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_usb_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @vp702x_usb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vp702x_usb_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @vp702x_usb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %d = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #7
  %0 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %d, align 4, !annotation !96
  %call = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @vp702x_properties, ptr noundef null, ptr noundef nonnull %d, ptr noundef nonnull @adapter_nr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %buf_len = getelementptr inbounds %struct.vp702x_device_state, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %buf_len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 16) #11
  %buf = getelementptr inbounds %struct.vp702x_device_state, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %buf, align 4
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @dvb_usb_device_exit(ptr noundef %intf) #7
  br label %out

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__mutex_init(ptr noundef %4, ptr noundef nonnull @.str.24, ptr noundef nonnull @vp702x_usb_probe.__key) #7
  br label %out

out:                                              ; preds = %do.body, %if.then5, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ 0, %do.body ], [ -12, %if.then5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp702x_usb_disconnect(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %buf = getelementptr inbounds %struct.vp702x_device_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %5) #7
  tail call void @mutex_unlock(ptr noundef %3) #7
  tail call void @dvb_usb_device_exit(ptr noundef %intf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp702x_streaming_ctrl(ptr nocapture noundef readnone %adap, i32 noundef %onoff) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_frontend_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  tail call fastcc void @vp702x_usb_out_op(ptr noundef %1, i16 noundef zeroext 0)
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %5, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %buf_len.i = getelementptr inbounds %struct.vp702x_device_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp3.i = icmp slt i32 %7, 11
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 11) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then4.i.vp702x_usb_inout_cmd.exit.thread21_crit_edge, label %do.end.i

if.then4.i.vp702x_usb_inout_cmd.exit.thread21_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vp702x_usb_inout_cmd.exit.thread21

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  %buf11.i = getelementptr inbounds %struct.vp702x_device_state, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %buf11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf11.i, align 4
  tail call void @kfree(ptr noundef %10) #7
  %11 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %buf11.i, align 4
  %12 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 11, ptr %buf_len.i, align 4
  br label %if.end15.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf14.i = getelementptr inbounds %struct.vp702x_device_state, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %buf14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf14.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i, %do.end.i
  %buf.0.i = phi ptr [ %call7.i.i, %do.end.i ], [ %14, %if.else.i ]
  %15 = ptrtoint ptr %buf.0.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %buf.0.i, align 1
  %arrayidx16.i = getelementptr i8, ptr %buf.0.i, i32 1
  %16 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 6, ptr %arrayidx16.i, align 1
  %usb_mutex.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 6
  %call.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex.i.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %vp702x_usb_inout_op.exit.i, label %if.end15.i.vp702x_usb_inout_cmd.exit.thread21_crit_edge

if.end15.i.vp702x_usb_inout_cmd.exit.thread21_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vp702x_usb_inout_cmd.exit.thread21

vp702x_usb_inout_op.exit.i:                       ; preds = %if.end15.i
  tail call fastcc void @vp702x_usb_out_op_unlocked(ptr noundef %3, i8 noundef zeroext -78, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf.0.i, i32 noundef 2) #7
  tail call void @msleep(i32 noundef 10) #7
  %call2.i.i = tail call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %3, i8 noundef zeroext -77, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf.0.i, i32 noundef 11) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp21.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp21.i, label %if.end, label %vp702x_usb_inout_op.exit.i.vp702x_usb_inout_cmd.exit.thread21_crit_edge

vp702x_usb_inout_op.exit.i.vp702x_usb_inout_cmd.exit.thread21_crit_edge: ; preds = %vp702x_usb_inout_op.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vp702x_usb_inout_cmd.exit.thread21

vp702x_usb_inout_cmd.exit.thread21:               ; preds = %vp702x_usb_inout_op.exit.i.vp702x_usb_inout_cmd.exit.thread21_crit_edge, %if.end15.i.vp702x_usb_inout_cmd.exit.thread21_crit_edge, %if.then4.i.vp702x_usb_inout_cmd.exit.thread21_crit_edge
  tail call void @mutex_unlock(ptr noundef %5) #7
  br label %cleanup

if.end:                                           ; preds = %vp702x_usb_inout_op.exit.i
  %17 = call ptr @memcpy(ptr %buf, ptr %arrayidx16.i, i32 9)
  tail call void @mutex_unlock(ptr noundef %5) #7
  %arrayidx = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 9
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 1
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %arrayidx3) #10
  %priv.i16 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %19 = ptrtoint ptr %priv.i16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i16, align 8
  %21 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adap, align 8
  %priv1.i = getelementptr inbounds %struct.dvb_usb_device, ptr %22, i32 0, i32 18
  %23 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv1.i, align 8
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %20, align 4
  %pid_filter_can_bypass.i = getelementptr inbounds %struct.vp702x_adapter_state, ptr %20, i32 0, i32 1
  %26 = ptrtoint ptr %pid_filter_can_bypass.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %pid_filter_can_bypass.i, align 4
  %pid_filter_state.i = getelementptr inbounds %struct.vp702x_adapter_state, ptr %20, i32 0, i32 2
  %27 = ptrtoint ptr %pid_filter_state.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %pid_filter_state.i, align 4
  %28 = load ptr, ptr %adap, align 8
  %priv.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv.i.i, align 8
  call void @mutex_lock_nested(ptr noundef %30, i32 noundef 0) #7
  %buf1.i.i = getelementptr inbounds %struct.vp702x_device_state, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf1.i.i, align 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 16)
  %34 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adap, align 8
  %usb_mutex.i.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %35, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %usb_mutex.i.i.i, i32 noundef 0) #7
  %call.i.i.i = call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %35, i8 noundef zeroext -32, i16 noundef zeroext 270, i16 noundef zeroext 0, ptr noundef %32, i32 noundef 16) #7
  call void @mutex_unlock(ptr noundef %usb_mutex.i.i.i) #7
  call void @mutex_unlock(ptr noundef %30) #7
  %36 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp8.i = icmp sgt i32 %37, 0
  br i1 %cmp8.i, label %if.end.for.body.i_crit_edge, label %if.end.vp702x_init_pid_filter.exit_crit_edge

if.end.vp702x_init_pid_filter.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vp702x_init_pid_filter.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.09.i to i8
  %38 = ptrtoint ptr %priv.i16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i16, align 8
  %40 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adap, align 8
  %priv1.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %41, i32 0, i32 18
  %42 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv1.i.i, align 8
  %conv.i.i = and i32 %i.09.i, 255
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %pid_filter_state.i.i = getelementptr inbounds %struct.vp702x_adapter_state, ptr %39, i32 0, i32 2
  %44 = ptrtoint ptr %pid_filter_state.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pid_filter_state.i.i, align 4
  %46 = trunc i32 %shl.i.i to i8
  %conv3.i.i = or i8 %45, %46
  store i8 %conv3.i.i, ptr %pid_filter_state.i.i, align 4
  %mul.i.i = shl i8 %conv.i, 1
  %add.i.i = add i8 %mul.i.i, 16
  %47 = load ptr, ptr %adap, align 8
  %priv.i.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %47, i32 0, i32 18
  %48 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv.i.i.i, align 8
  call void @mutex_lock_nested(ptr noundef %49, i32 noundef 0) #7
  %buf1.i.i.i = getelementptr inbounds %struct.vp702x_device_state, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %buf1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf1.i.i.i, align 4
  %52 = call ptr @memset(ptr %51, i32 0, i32 16)
  %53 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adap, align 8
  %conv.i.i.i = zext i8 %conv3.i.i to i16
  %shl.i.i.i = shl nuw i16 %conv.i.i.i, 8
  %or.i.i.i = or i16 %shl.i.i.i, 15
  %usb_mutex.i.i.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %54, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %usb_mutex.i.i.i.i, i32 noundef 0) #7
  %call.i.i.i.i = call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %54, i8 noundef zeroext -32, i16 noundef zeroext %or.i.i.i, i16 noundef zeroext 0, ptr noundef %51, i32 noundef 16) #7
  call void @mutex_unlock(ptr noundef %usb_mutex.i.i.i.i) #7
  call void @mutex_unlock(ptr noundef %49) #7
  call void @mutex_lock_nested(ptr noundef %43, i32 noundef 0) #7
  %buf12.i.i = getelementptr inbounds %struct.vp702x_device_state, ptr %43, i32 0, i32 2
  %55 = ptrtoint ptr %buf12.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buf12.i.i, align 4
  %57 = call ptr @memset(ptr %56, i32 0, i32 16)
  %58 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adap, align 8
  %60 = zext i8 %add.i.i to i16
  %conv19.i.i = or i16 %60, -256
  %usb_mutex.i.i2.i = getelementptr inbounds %struct.dvb_usb_device, ptr %59, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %usb_mutex.i.i2.i, i32 noundef 0) #7
  %call.i.i3.i = call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %59, i8 noundef zeroext -32, i16 noundef zeroext %conv19.i.i, i16 noundef zeroext 0, ptr noundef %56, i32 noundef 16) #7
  call void @mutex_unlock(ptr noundef %usb_mutex.i.i2.i) #7
  %61 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adap, align 8
  %or27.i.i = or i16 %60, -255
  %usb_mutex.i1.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %62, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %usb_mutex.i1.i.i, i32 noundef 0) #7
  %call.i2.i.i = call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %62, i8 noundef zeroext -32, i16 noundef zeroext %or27.i.i, i16 noundef zeroext 0, ptr noundef %56, i32 noundef 16) #7
  call void @mutex_unlock(ptr noundef %usb_mutex.i1.i.i) #7
  call void @mutex_unlock(ptr noundef %43) #7
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %63 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %20, align 4
  %cmp.i = icmp slt i32 %inc.i, %64
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vp702x_init_pid_filter.exit_crit_edge

for.body.i.vp702x_init_pid_filter.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vp702x_init_pid_filter.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

vp702x_init_pid_filter.exit:                      ; preds = %for.body.i.vp702x_init_pid_filter.exit_crit_edge, %if.end.vp702x_init_pid_filter.exit_crit_edge
  call void @mutex_lock_nested(ptr noundef %24, i32 noundef 0) #7
  %buf.i = getelementptr inbounds %struct.vp702x_device_state, ptr %24, i32 0, i32 2
  %65 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buf.i, align 4
  %67 = call ptr @memset(ptr %66, i32 0, i32 10)
  %68 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adap, align 8
  %usb_mutex.i.i17 = getelementptr inbounds %struct.dvb_usb_device, ptr %69, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %usb_mutex.i.i17, i32 noundef 0) #7
  %call.i.i18 = call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %69, i8 noundef zeroext -75, i16 noundef zeroext 3, i16 noundef zeroext 0, ptr noundef %66, i32 noundef 10) #7
  call void @mutex_unlock(ptr noundef %usb_mutex.i.i17) #7
  %70 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adap, align 8
  %usb_mutex.i4.i = getelementptr inbounds %struct.dvb_usb_device, ptr %71, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %usb_mutex.i4.i, i32 noundef 0) #7
  %call.i5.i = call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %71, i8 noundef zeroext -75, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %66, i32 noundef 10) #7
  call void @mutex_unlock(ptr noundef %usb_mutex.i4.i) #7
  %72 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adap, align 8
  %usb_mutex.i6.i = getelementptr inbounds %struct.dvb_usb_device, ptr %73, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %usb_mutex.i6.i, i32 noundef 0) #7
  %call.i7.i = call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %73, i8 noundef zeroext -75, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef %66, i32 noundef 10) #7
  call void @mutex_unlock(ptr noundef %usb_mutex.i6.i) #7
  call void @mutex_unlock(ptr noundef %24) #7
  %74 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adap, align 8
  %call7 = call ptr @vp702x_fe_attach(ptr noundef %75) #7
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %76 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7, ptr %fe_adap, align 8
  %77 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adap, align 8
  call fastcc void @vp702x_usb_out_op(ptr noundef %78, i16 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %vp702x_init_pid_filter.exit, %vp702x_usb_inout_cmd.exit.thread21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vp702x_init_pid_filter.exit ], [ -5, %vp702x_usb_inout_cmd.exit.thread21 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_read_mac_addr(ptr noundef %d, ptr nocapture noundef writeonly %mac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %buf1 = getelementptr inbounds %struct.vp702x_device_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf1, align 4
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #7
  %call.i = tail call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %d, i8 noundef zeroext -73, i16 noundef zeroext 6, i16 noundef zeroext 1, ptr noundef %3, i32 noundef 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %entry.err_crit_edge, label %for.cond

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr i8, ptr %3, i32 1
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #7
  %call.i.1 = tail call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %d, i8 noundef zeroext -73, i16 noundef zeroext 7, i16 noundef zeroext 1, ptr noundef %arrayidx.1, i32 noundef 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp5.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp5.1, label %for.cond.err_crit_edge, label %for.cond.1

for.cond.err_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i8, ptr %3, i32 2
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #7
  %call.i.2 = tail call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %d, i8 noundef zeroext -73, i16 noundef zeroext 8, i16 noundef zeroext 1, ptr noundef %arrayidx.2, i32 noundef 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp5.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp5.2, label %for.cond.1.err_crit_edge, label %for.cond.2

for.cond.1.err_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr i8, ptr %3, i32 3
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #7
  %call.i.3 = tail call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %d, i8 noundef zeroext -73, i16 noundef zeroext 9, i16 noundef zeroext 1, ptr noundef %arrayidx.3, i32 noundef 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp5.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp5.3, label %for.cond.2.err_crit_edge, label %for.cond.3

for.cond.2.err_crit_edge:                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr i8, ptr %3, i32 4
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #7
  %call.i.4 = tail call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %d, i8 noundef zeroext -73, i16 noundef zeroext 10, i16 noundef zeroext 1, ptr noundef %arrayidx.4, i32 noundef 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %cmp5.4 = icmp slt i32 %call.i.4, 0
  br i1 %cmp5.4, label %for.cond.3.err_crit_edge, label %for.cond.4

for.cond.3.err_crit_edge:                         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr i8, ptr %3, i32 5
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex.i, i32 noundef 0) #7
  %call.i.5 = tail call fastcc i32 @vp702x_usb_in_op_unlocked(ptr noundef %d, i8 noundef zeroext -73, i16 noundef zeroext 11, i16 noundef zeroext 1, ptr noundef %arrayidx.5, i32 noundef 1) #7
  tail call void @mutex_unlock(ptr noundef %usb_mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %cmp5.5 = icmp slt i32 %call.i.5, 0
  br i1 %cmp5.5, label %for.cond.4.err_crit_edge, label %for.cond.5

for.cond.4.err_crit_edge:                         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  %4 = call ptr @memcpy(ptr %mac, ptr %3, i32 6)
  br label %err

err:                                              ; preds = %for.cond.5, %for.cond.4.err_crit_edge, %for.cond.3.err_crit_edge, %for.cond.2.err_crit_edge, %for.cond.1.err_crit_edge, %for.cond.err_crit_edge, %entry.err_crit_edge
  %call.i19 = phi i32 [ %call.i.5, %for.cond.5 ], [ %call.i, %entry.err_crit_edge ], [ %call.i.1, %for.cond.err_crit_edge ], [ %call.i.2, %for.cond.1.err_crit_edge ], [ %call.i.3, %for.cond.2.err_crit_edge ], [ %call.i.4, %for.cond.3.err_crit_edge ], [ %call.i.5, %for.cond.4.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  ret i32 %call.i19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp702x_rc_query(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %event, ptr nocapture noundef readnone %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vp702x_usb_out_op(ptr noundef %d, i16 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %usb_mutex, i32 noundef 0) #7
  %0 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end5.i_crit_edge, label %do.end.i

entry.do.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv2.i = zext i16 %value to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 188, i32 noundef %conv2.i, i32 noundef 7) #10
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %entry.do.end5.i_crit_edge
  %1 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and21.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.end5.i.do.end31.i_crit_edge, label %do.end26.i

do.end5.i.do.end31.i_crit_edge:                   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i

do.end26.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %do.end31.i

do.end31.i:                                       ; preds = %do.end26.i, %do.end5.i.do.end31.i_crit_edge
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call35.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext -68, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext 7, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.not.i = icmp eq i32 %call35.i, 0
  br i1 %cmp36.not.i, label %do.end31.i.vp702x_usb_out_op_unlocked.exit_crit_edge, label %do.end41.i

do.end31.i.vp702x_usb_out_op_unlocked.exit_crit_edge: ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vp702x_usb_out_op_unlocked.exit

do.end41.i:                                       ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call35.i) #10
  br label %vp702x_usb_out_op_unlocked.exit

vp702x_usb_out_op_unlocked.exit:                  ; preds = %do.end41.i, %do.end31.i.vp702x_usb_out_op_unlocked.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vp702x_fe_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !66, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 20, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 22, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !6, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr389, !6, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_vp702x__392_443_vp702x_usb_driver_init6, !10, !"__initcall__kmod_dvb_usb_vp702x__392_443_vp702x_usb_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 443, i32 1}
!11 = !{ptr @__exitcall_vp702x_usb_driver_exit, !10, !"__exitcall_vp702x_usb_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author393, !13, !"__UNIQUE_ID_author393", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 445, i32 1}
!14 = !{ptr @__UNIQUE_ID_description394, !15, !"__UNIQUE_ID_description394", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 446, i32 1}
!16 = !{ptr @__UNIQUE_ID_version395, !17, !"__UNIQUE_ID_version395", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 447, i32 1}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__modver_attr, !17, !"__modver_attr", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_file396, !23, !"__UNIQUE_ID_file396", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 448, i32 1}
!24 = !{ptr @__UNIQUE_ID_license397, !23, !"__UNIQUE_ID_license397", i1 false, i1 false}
!25 = !{ptr @dvb_usb_vp702x_debug, !26, !"dvb_usb_vp702x_debug", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 18, i32 5}
!27 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!28 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!29 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!30 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 43, i32 3}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vp702x_usb_in_op_unlocked._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @vp702x_usb_in_op_unlocked._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 49, i32 2}
!39 = !{ptr @vp702x_usb_in_op_unlocked._entry.6, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @vp702x_usb_in_op_unlocked._entry_ptr.8, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 50, i32 2}
!43 = !{ptr @vp702x_usb_in_op_unlocked._entry.9, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @vp702x_usb_in_op_unlocked._entry_ptr.11, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @vp702x_usb_in_op_unlocked._entry.12, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @vp702x_usb_in_op_unlocked._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 71, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @vp702x_usb_out_op_unlocked._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @vp702x_usb_out_op_unlocked._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @vp702x_usb_out_op_unlocked._entry.17, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 72, i32 2}
!55 = !{ptr @vp702x_usb_out_op_unlocked._entry_ptr.18, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @vp702x_usb_out_op_unlocked._entry.19, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @vp702x_usb_out_op_unlocked._entry_ptr.20, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 80, i32 3}
!60 = !{ptr @vp702x_usb_out_op_unlocked._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @vp702x_usb_out_op_unlocked._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @vp702x_usb_driver, !63, !"vp702x_usb_driver", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 436, i32 26}
!64 = !{ptr @vp702x_usb_probe.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 355, i32 2}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 382, i32 25}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 423, i32 13}
!71 = !{ptr @vp702x_properties, !72, !"vp702x_properties", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 380, i32 41}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 323, i32 2}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vp702x_frontend_attach._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @vp702x_frontend_attach._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 131, i32 3}
!80 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @vp702x_usb_inout_cmd._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @vp702x_usb_inout_cmd._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @rc_map_vp702x_table, !84, !"rc_map_vp702x_table", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 251, i32 28}
!85 = !{ptr @vp702x_usb_table, !86, !"vp702x_usb_table", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb/vp702x.c", i32 372, i32 29}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
