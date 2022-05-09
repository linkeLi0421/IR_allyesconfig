; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/dtt200u.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/dtt200u.c"
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

@__param_str_debug = internal constant [22 x i8] c"dvb_usb_dtt200u.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_dtt200u_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_dtt200u_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [35 x i8] c"dvb_usb_dtt200u.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [74 x i8] c"dvb_usb_dtt200u.parm=debug:set debugging level (1=info,xfer=2 (or-able)).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [27 x i8] c"dvb_usb_dtt200u.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [51 x i8] c"dvb_usb_dtt200u.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [52 x i8] c"dvb_usb_dtt200u.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_dtt200u__390_413_dtt200u_usb_driver_init6 = internal global ptr @dtt200u_usb_driver_init, section ".initcall6.init", align 4
@dtt200u_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @dtt200u_usb_probe, ptr @dvb_usb_device_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dtt200u_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_dtt200u_usb_driver_exit = internal global ptr @dtt200u_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author391 = internal constant [71 x i8] c"dvb_usb_dtt200u.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description392 = internal constant [107 x i8] c"dvb_usb_dtt200u.description=Driver for the WideView/Yakumo/Hama/Typhoon/Club3D/Miglia DVB-T USB2.0 devices\00", section ".modinfo", align 1
@__UNIQUE_ID_version393 = internal constant [28 x i8] c"dvb_usb_dtt200u.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_usb_dtt200u\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file394 = internal constant [63 x i8] c"dvb_usb_dtt200u.file=drivers/media/usb/dvb-usb/dvb-usb-dtt200u\00", section ".modinfo", align 1
@__UNIQUE_ID_license395 = internal constant [28 x i8] c"dvb_usb_dtt200u.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@dtt200u_usb_table = internal global { [11 x %struct.usb_device_id], [88 x i8] } { [11 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5290, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5290, i16 769, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5290, i16 546, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5290, i16 545, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5290, i16 554, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5290, i16 555, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5290, i16 549, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5290, i16 550, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5290, i16 544, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 6387, i16 544, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb-usb-dtt200u-01.fw\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-dtt200u\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"WideView/Yuan/Yakumo/Hama/Typhoon DVB-T USB2.0 (WT-200U)\00", [39 x i8] zeroinitializer }, align 32
@dtt200u_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> } { i32 0, i32 3, ptr null, ptr @.str.3, i32 0, i32 80, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 5, i32 15, ptr @dtt200u_streaming_ctrl, ptr null, ptr @dtt200u_pid_filter, ptr @dtt200u_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 7, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @dtt200u_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.4, i64 0, i64 512, i32 0, ptr null, ptr null, ptr @dtt200u_rc_query, i32 300, i8 0, i32 0 } }, ptr null, i32 1, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.5, <{ ptr, [14 x ptr] }> <{ ptr @dtt200u_usb_table, [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dtt200u_usb_table, i64 24), [14 x ptr] zeroinitializer }> }, [11 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@dtt200u_rc_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st->data: %*ph\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dtt200u_rc_query\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/usb/dvb-usb/dtt200u.c\00", [60 x i8] zeroinitializer }, align 32
@dtt200u_rc_query._entry_ptr = internal global ptr @dtt200u_rc_query._entry, section ".printk_index", align 4
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-usb-wt220u-02.fw\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"WideView WT-220U PenType Receiver (Typhoon/Freecom)\00", [44 x i8] zeroinitializer }, align 32
@wt220u_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> } { i32 0, i32 3, ptr null, ptr @.str.10, i32 0, i32 80, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 5, i32 15, ptr @dtt200u_streaming_ctrl, ptr null, ptr @dtt200u_pid_filter, ptr @dtt200u_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 7, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @dtt200u_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.4, i64 0, i64 512, i32 0, ptr null, ptr null, ptr @dtt200u_rc_query, i32 300, i8 0, i32 0 } }, ptr null, i32 1, i32 0, i32 1, <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, ptr, [13 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.11, <{ ptr, ptr, [13 x ptr] }> <{ ptr getelementptr (i8, ptr @dtt200u_usb_table, i64 48), ptr getelementptr (i8, ptr @dtt200u_usb_table, i64 192), [13 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dtt200u_usb_table, i64 72), [14 x ptr] zeroinitializer }> }, [11 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-usb-wt220u-fc03.fw\00", [41 x i8] zeroinitializer }, align 32
@wt220u_fc_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> } { i32 0, i32 3, ptr null, ptr @.str.13, i32 0, i32 80, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 5, i32 15, ptr @dtt200u_streaming_ctrl, ptr null, ptr @dtt200u_pid_filter, ptr @dtt200u_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 7, i32 6, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @dtt200u_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.4, i64 0, i64 512, i32 0, ptr null, ptr null, ptr @dtt200u_rc_query, i32 300, i8 0, i32 0 } }, ptr null, i32 1, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.11, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dtt200u_usb_table, i64 144), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dtt200u_usb_table, i64 168), [14 x ptr] zeroinitializer }> }, [11 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dvb-usb-wt220u-zl0353-01.fw\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"WideView WT-220U PenType Receiver (based on ZL353)\00", [45 x i8] zeroinitializer }, align 32
@wt220u_zl0353_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> } { i32 0, i32 3, ptr null, ptr @.str.15, i32 0, i32 80, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 5, i32 15, ptr @dtt200u_streaming_ctrl, ptr null, ptr @dtt200u_pid_filter, ptr @dtt200u_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 7, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @dtt200u_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.4, i64 0, i64 512, i32 0, ptr null, ptr null, ptr @dtt200u_rc_query, i32 300, i8 0, i32 0 } }, ptr null, i32 1, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.16, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dtt200u_usb_table, i64 96), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dtt200u_usb_table, i64 120), [14 x ptr] zeroinitializer }> }, [11 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dvb-usb-wt220u-miglia-01.fw\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"WideView WT-220U PenType Receiver (Miglia)\00", [53 x i8] zeroinitializer }, align 32
@wt220u_miglia_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x %struct.dvb_usb_device_description] }> } { i32 0, i32 3, ptr null, ptr @.str.18, i32 0, i32 80, ptr null, ptr null, i32 1, [2 x %struct.dvb_usb_adapter_properties] zeroinitializer, ptr null, ptr null, ptr null, %struct.anon.134 zeroinitializer, ptr null, i32 1, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.19, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @dtt200u_usb_table, i64 216), [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"dvb_usb_dtt200u_debug\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 14, i32 5 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"dtt200u_usb_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 406, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 417, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 18, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"dtt200u_usb_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 161, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 178, i32 14 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 211, i32 22 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 220, i32 13 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"dtt200u_properties\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 176, i32 41 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 124, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 230, i32 14 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 272, i32 13 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"wt220u_properties\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 228, i32 41 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 282, i32 14 }
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"wt220u_fc_properties\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 280, i32 41 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 334, i32 14 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 376, i32 13 }
@___asan_gen_.87 = private unnamed_addr constant [25 x i8] c"wt220u_zl0353_properties\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 332, i32 41 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 386, i32 14 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 395, i32 13 }
@___asan_gen_.96 = private unnamed_addr constant [25 x i8] c"wt220u_miglia_properties\00", align 1
@___asan_gen_.97 = private constant [39 x i8] c"../drivers/media/usb/dvb-usb/dtt200u.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 384, i32 41 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author391, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description392, ptr @__UNIQUE_ID_file394, ptr @__UNIQUE_ID_license395, ptr @__UNIQUE_ID_version393, ptr @__exitcall_dtt200u_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_dtt200u__390_413_dtt200u_usb_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @dtt200u_rc_query._entry, ptr @dtt200u_rc_query._entry_ptr, ptr @dtt200u_usb_driver_exit, ptr @dvb_usb_dtt200u_debug, ptr @dtt200u_usb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @dtt200u_usb_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dtt200u_properties, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @wt220u_properties, ptr @.str.13, ptr @wt220u_fc_properties, ptr @.str.15, ptr @.str.16, ptr @wt220u_zl0353_properties, ptr @.str.18, ptr @.str.19, ptr @wt220u_miglia_properties], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_dtt200u_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtt200u_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtt200u_usb_table to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtt200u_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtt200u_rc_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wt220u_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wt220u_fc_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wt220u_zl0353_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wt220u_miglia_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dtt200u_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @dtt200u_usb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dtt200u_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_deregister(ptr noundef nonnull @dtt200u_usb_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtt200u_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @dtt200u_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @wt220u_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false3

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @wt220u_fc_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %lor.lhs.false3.return_crit_edge, label %lor.lhs.false6

lor.lhs.false3.return_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @wt220u_zl0353_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %lor.lhs.false6.return_crit_edge, label %lor.lhs.false9

lor.lhs.false6.return_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @wt220u_miglia_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  %spec.select = select i1 %cmp11, i32 0, i32 -19
  br label %return

return:                                           ; preds = %lor.lhs.false9, %lor.lhs.false6.return_crit_edge, %lor.lhs.false3.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false6.return_crit_edge ], [ 0, %lor.lhs.false3.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtt200u_streaming_ctrl(ptr nocapture noundef readonly %adap, i32 noundef %onoff) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %3, align 1
  %conv = trunc i32 %onoff to i8
  %arrayidx2 = getelementptr [80 x i8], ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx2, align 1
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %call = tail call i32 @dvb_usb_generic_write(ptr noundef %7, ptr noundef %3, i16 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.end7, label %entry.ret14_crit_edge

entry.ret14_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ret14

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %3, align 1
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %call13 = tail call i32 @dvb_usb_generic_write(ptr noundef %10, ptr noundef %3, i16 noundef zeroext 1) #4
  br label %ret14

ret14:                                            ; preds = %if.end7, %entry.ret14_crit_edge
  %ret.0 = phi i32 [ %call, %entry.ret14_crit_edge ], [ %call13, %if.end7 ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtt200u_pid_filter(ptr nocapture noundef readonly %adap, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %phi.cast = zext i16 %pid to i32
  %spec.select = select i1 %tobool.not, i32 0, i32 %phi.cast
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %3, align 1
  %conv2 = trunc i32 %index to i8
  %arrayidx4 = getelementptr [80 x i8], ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %arrayidx4, align 1
  %conv6 = trunc i32 %spec.select to i8
  %arrayidx8 = getelementptr [80 x i8], ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv6, ptr %arrayidx8, align 1
  %7 = lshr i32 %spec.select, 8
  %8 = trunc i32 %7 to i8
  %conv11 = and i8 %8, 31
  %arrayidx13 = getelementptr [80 x i8], ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv11, ptr %arrayidx13, align 1
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %call = tail call i32 @dvb_usb_generic_write(ptr noundef %11, ptr noundef %3, i16 noundef zeroext 4) #4
  tail call void @mutex_unlock(ptr noundef %data_mutex) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtt200u_frontend_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %call = tail call ptr @dtt200u_fe_attach(ptr noundef %1) #4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %2 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %fe_adap, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtt200u_power_ctrl(ptr noundef %d, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @dvb_usb_generic_write(ptr noundef %d, ptr noundef %1, i16 noundef zeroext 2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dtt200u_rc_query(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -124, ptr %1, align 1
  %call = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %1, i16 noundef zeroext 1, ptr noundef %1, i16 noundef zeroext 5, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.ret74_crit_edge, label %if.end

entry.ret74_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ret74

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %if.else55 [
    i8 1, label %if.then8
    i8 2, label %if.then53
  ]

if.then8:                                         ; preds = %if.end
  %arrayidx29 = getelementptr [80 x i8], ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx29, align 1
  %neg35 = xor i8 %7, -1
  %arrayidx39 = getelementptr [80 x i8], ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %neg35)
  %cmp41 = icmp eq i8 %9, %neg35
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx18 = getelementptr [80 x i8], ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx18, align 1
  %arrayidx10 = getelementptr [80 x i8], ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx10, align 1
  %neg = xor i8 %13, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %neg)
  %cmp20.not = icmp eq i8 %11, %neg
  %proto.0 = select i1 %cmp20.not, i32 9, i32 10
  %conv11 = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %conv19 = zext i8 %11 to i32
  %or = or i32 %shl, %conv19
  %scancode.0 = select i1 %cmp20.not, i32 %conv11, i32 %or
  %conv30 = zext i8 %7 to i32
  %shl27 = shl nuw nsw i32 %scancode.0, 8
  %or31 = or i32 %shl27, %conv30
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %14 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rc_dev, align 8
  %conv44 = zext i32 %or31 to i64
  tail call void @rc_keydown(ptr noundef %15, i32 noundef %proto.0, i64 noundef %conv44, i8 noundef zeroext 0) #4
  br label %if.end58

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %rc_dev45 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %16 = ptrtoint ptr %rc_dev45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rc_dev45, align 8
  tail call void @rc_keyup(ptr noundef %17) #4
  br label %if.end58

if.then53:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %rc_dev54 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %18 = ptrtoint ptr %rc_dev54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rc_dev54, align 8
  tail call void @rc_repeat(ptr noundef %19) #4
  br label %if.end58

if.else55:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %rc_dev56 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %20 = ptrtoint ptr %rc_dev56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rc_dev56, align 8
  tail call void @rc_keyup(ptr noundef %21) #4
  br label %if.end58

if.end58:                                         ; preds = %if.else55, %if.then53, %if.else, %if.then43
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp62.not = icmp eq i8 %23, 0
  br i1 %cmp62.not, label %if.end58.ret74_crit_edge, label %do.body

if.end58.ret74_crit_edge:                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %ret74

do.body:                                          ; preds = %if.end58
  %24 = load i32, ptr @dvb_usb_dtt200u_debug, align 4
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.ret74_crit_edge, label %do.end

do.body.ret74_crit_edge:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %ret74

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 5, ptr noundef %1) #7
  br label %ret74

ret74:                                            ; preds = %do.end, %do.body.ret74_crit_edge, %if.end58.ret74_crit_edge, %entry.ret74_crit_edge
  tail call void @mutex_unlock(ptr noundef %data_mutex) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_generic_write(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dtt200u_fe_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_generic_rw(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keyup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_repeat(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 16, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 18, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !6, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr389, !6, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_dtt200u__390_413_dtt200u_usb_driver_init6, !10, !"__initcall__kmod_dvb_usb_dtt200u__390_413_dtt200u_usb_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 413, i32 1}
!11 = !{ptr @__exitcall_dtt200u_usb_driver_exit, !10, !"__exitcall_dtt200u_usb_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author391, !13, !"__UNIQUE_ID_author391", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 415, i32 1}
!14 = !{ptr @__UNIQUE_ID_description392, !15, !"__UNIQUE_ID_description392", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 416, i32 1}
!16 = !{ptr @__UNIQUE_ID_version393, !17, !"__UNIQUE_ID_version393", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 417, i32 1}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__modver_attr, !17, !"__modver_attr", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_file394, !23, !"__UNIQUE_ID_file394", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 418, i32 1}
!24 = !{ptr @__UNIQUE_ID_license395, !23, !"__UNIQUE_ID_license395", i1 false, i1 false}
!25 = !{ptr @dvb_usb_dtt200u_debug, !26, !"dvb_usb_dtt200u_debug", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 14, i32 5}
!27 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!28 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!29 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!30 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!31 = !{ptr @dtt200u_usb_driver, !32, !"dtt200u_usb_driver", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 406, i32 26}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 178, i32 14}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 211, i32 22}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 220, i32 13}
!39 = !{ptr @dtt200u_properties, !40, !"dtt200u_properties", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 176, i32 41}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 124, i32 3}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @dtt200u_rc_query._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @dtt200u_rc_query._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 230, i32 14}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 272, i32 13}
!51 = !{ptr @wt220u_properties, !52, !"wt220u_properties", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 228, i32 41}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 282, i32 14}
!55 = !{ptr @wt220u_fc_properties, !56, !"wt220u_fc_properties", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 280, i32 41}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 334, i32 14}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 376, i32 13}
!61 = !{ptr @wt220u_zl0353_properties, !62, !"wt220u_zl0353_properties", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 332, i32 41}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 386, i32 14}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 395, i32 13}
!67 = !{ptr @wt220u_miglia_properties, !68, !"wt220u_miglia_properties", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 384, i32 41}
!69 = !{ptr @dtt200u_usb_table, !70, !"dtt200u_usb_table", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb/dtt200u.c", i32 161, i32 29}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
