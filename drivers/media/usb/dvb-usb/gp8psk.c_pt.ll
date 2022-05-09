; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/gp8psk.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/gp8psk.c"
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
%struct.gp8psk_fe_ops = type { ptr, ptr, ptr }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_debug = internal constant [21 x i8] c"dvb_usb_gp8psk.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_gp8psk_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_gp8psk_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [34 x i8] c"dvb_usb_gp8psk.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [78 x i8] c"dvb_usb_gp8psk.parm=debug:set debugging level (1=info,xfer=2,rc=4 (or-able)).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_gp8psk.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [50 x i8] c"dvb_usb_gp8psk.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [51 x i8] c"dvb_usb_gp8psk.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_gp8psk__390_385_gp8psk_usb_driver_init6 = internal global ptr @gp8psk_usb_driver_init, section ".initcall6.init", align 4
@gp8psk_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @gp8psk_usb_probe, ptr @dvb_usb_device_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gp8psk_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_gp8psk_usb_driver_exit = internal global ptr @gp8psk_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author391 = internal constant [57 x i8] c"dvb_usb_gp8psk.author=Alan Nisota <alannisota@gamil.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description392 = internal constant [51 x i8] c"dvb_usb_gp8psk.description=Driver for Genpix DVB-S\00", section ".modinfo", align 1
@__UNIQUE_ID_version393 = internal constant [27 x i8] c"dvb_usb_gp8psk.version=1.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_gp8psk\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file394 = internal constant [61 x i8] c"dvb_usb_gp8psk.file=drivers/media/usb/dvb-usb/dvb-usb-gp8psk\00", section ".modinfo", align 1
@__UNIQUE_ID_license395 = internal constant [27 x i8] c"dvb_usb_gp8psk.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@gp8psk_usb_table = internal global { [6 x %struct.usb_device_id], [48 x i8] } { [6 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2496, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2496, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2496, i16 514, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2496, i16 515, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2496, i16 518, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@gp8psk_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016gp8psk: found Genpix USB device pID = %x (hex)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gp8psk_usb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/dvb-usb/gp8psk.c\00", [61 x i8] zeroinitializer }, align 32
@gp8psk_usb_probe._entry_ptr = internal global ptr @gp8psk_usb_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-usb-gp8psk-01.fw\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Genpix 8PSK-to-USB2 Rev.1 DVB-S receiver\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Genpix 8PSK-to-USB2 Rev.2 DVB-S receiver\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Genpix SkyWalker-1 DVB-S receiver\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Genpix SkyWalker-2 DVB-S receiver\00", [62 x i8] zeroinitializer }, align 32
@gp8psk_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [8 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [8 x %struct.dvb_usb_device_description] }> } { i32 0, i32 3, ptr null, ptr @.str.6, i32 0, i32 80, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @gp8psk_streaming_ctrl, ptr null, ptr null, ptr @gp8psk_frontend_attach, ptr null, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 7, i32 130, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 8192 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @gp8psk_power_ctrl, ptr null, ptr null, %struct.anon.134 zeroinitializer, ptr null, i32 1, i32 0, i32 4, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [8 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.7, <{ ptr, [14 x ptr] }> <{ ptr @gp8psk_usb_table, [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @gp8psk_usb_table, i64 24), [14 x ptr] zeroinitializer }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.8, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @gp8psk_usb_table, i64 48), [14 x ptr] zeroinitializer }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.9, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @gp8psk_usb_table, i64 72), [14 x ptr] zeroinitializer }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.10, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @gp8psk_usb_table, i64 96), [14 x ptr] zeroinitializer }> }, [8 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@gp8psk_usb_out_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"out: req. %x, val: %x, ind: %x, buffer: \00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gp8psk_usb_out_op\00", [46 x i8] zeroinitializer }, align 32
@gp8psk_usb_out_op._entry_ptr = internal global ptr @gp8psk_usb_out_op._entry, section ".printk_index", align 4
@gp8psk_usb_out_op._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.5, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@gp8psk_usb_out_op._entry_ptr.16 = internal global ptr @gp8psk_usb_out_op._entry.14, section ".printk_index", align 4
@gp8psk_usb_out_op._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.5, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@gp8psk_usb_out_op._entry_ptr.19 = internal global ptr @gp8psk_usb_out_op._entry.17, section ".printk_index", align 4
@gp8psk_usb_out_op._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.5, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014gp8psk: usb out operation failed.\0A\00", [59 x i8] zeroinitializer }, align 32
@gp8psk_usb_out_op._entry_ptr.22 = internal global ptr @gp8psk_usb_out_op._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gp8psk_fe_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"symbol:gp8psk_fe_attach\00", [40 x i8] zeroinitializer }, align 32
@gp8psk_fe_ops = internal constant { %struct.gp8psk_fe_ops, [20 x i8] } { %struct.gp8psk_fe_ops { ptr @gp8psk_fe_in, ptr @gp8psk_fe_out, ptr @gp8psk_fe_reload }, [20 x i8] zeroinitializer }, align 32
@gp8psk_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013DVB: Unable to find symbol gp8psk_fe_attach()\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gp8psk_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@gp8psk_frontend_attach._entry_ptr = internal global ptr @gp8psk_frontend_attach._entry, section ".printk_index", align 4
@gp8psk_usb_in_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reading number %d (ret: %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gp8psk_usb_in_op\00", [47 x i8] zeroinitializer }, align 32
@gp8psk_usb_in_op._entry_ptr = internal global ptr @gp8psk_usb_in_op._entry, section ".printk_index", align 4
@gp8psk_usb_in_op._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.5, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014gp8psk: usb in %d operation failed.\0A\00", [57 x i8] zeroinitializer }, align 32
@gp8psk_usb_in_op._entry_ptr.31 = internal global ptr @gp8psk_usb_in_op._entry.29, section ".printk_index", align 4
@gp8psk_usb_in_op._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.5, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"in: req. %x, val: %x, ind: %x, buffer: \00", [56 x i8] zeroinitializer }, align 32
@gp8psk_usb_in_op._entry_ptr.34 = internal global ptr @gp8psk_usb_in_op._entry.32, section ".printk_index", align 4
@gp8psk_usb_in_op._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.28, ptr @.str.5, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gp8psk_usb_in_op._entry_ptr.36 = internal global ptr @gp8psk_usb_in_op._entry.35, section ".printk_index", align 4
@gp8psk_usb_in_op._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.28, ptr @.str.5, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gp8psk_usb_in_op._entry_ptr.38 = internal global ptr @gp8psk_usb_in_op._entry.37, section ".printk_index", align 4
@gp8psk_bcm4500_reload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reloading firmware\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gp8psk_bcm4500_reload\00", [42 x i8] zeroinitializer }, align 32
@gp8psk_bcm4500_reload._entry_ptr = internal global ptr @gp8psk_bcm4500_reload._entry, section ".printk_index", align 4
@bcm4500_firmware = internal global { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-usb-gp8psk-02.fw\00", [43 x i8] zeroinitializer }, align 32
@gp8psk_load_bcm4500fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [138 x i8], [54 x i8] } { [138 x i8] c"\013gp8psk: did not find the bcm4500 firmware file '%s' (status %d). You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gp8psk_load_bcm4500fw\00", [42 x i8] zeroinitializer }, align 32
@gp8psk_load_bcm4500fw._entry_ptr = internal global ptr @gp8psk_load_bcm4500fw._entry, section ".printk_index", align 4
@gp8psk_load_bcm4500fw._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.5, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016gp8psk: downloading bcm4500 firmware from file '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@gp8psk_load_bcm4500fw._entry_ptr.45 = internal global ptr @gp8psk_load_bcm4500fw._entry.43, section ".printk_index", align 4
@gp8psk_load_bcm4500fw._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.5, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013gp8psk: failed to load bcm4500 firmware.\0A\00", [52 x i8] zeroinitializer }, align 32
@gp8psk_load_bcm4500fw._entry_ptr.48 = internal global ptr @gp8psk_load_bcm4500fw._entry.46, section ".printk_index", align 4
@gp8psk_load_bcm4500fw._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.5, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013gp8psk: firmware chunk size bigger than 64 bytes.\0A\00", [43 x i8] zeroinitializer }, align 32
@gp8psk_load_bcm4500fw._entry_ptr.51 = internal global ptr @gp8psk_load_bcm4500fw._entry.49, section ".printk_index", align 4
@gp8psk_load_bcm4500fw._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.5, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gp8psk_load_bcm4500fw._entry_ptr.53 = internal global ptr @gp8psk_load_bcm4500fw._entry.52, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gp8psk_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.5, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016gp8psk: FW Version = %i.%02i.%i (0x%x)  Build %4i/%02i/%02i\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gp8psk_info\00", [20 x i8] zeroinitializer }, align 32
@gp8psk_info._entry_ptr = internal global ptr @gp8psk_info._entry, section ".printk_index", align 4
@gp8psk_info._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.5, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016gp8psk: failed to get FW version\0A\00", [60 x i8] zeroinitializer }, align 32
@gp8psk_info._entry_ptr.58 = internal global ptr @gp8psk_info._entry.56, section ".printk_index", align 4
@gp8psk_info._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.5, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016gp8psk: FPGA Version = %i\0A\00", [35 x i8] zeroinitializer }, align 32
@gp8psk_info._entry_ptr.61 = internal global ptr @gp8psk_info._entry.59, section ".printk_index", align 4
@gp8psk_info._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.5, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016gp8psk: failed to get FPGA version\0A\00", [58 x i8] zeroinitializer }, align 32
@gp8psk_info._entry_ptr.64 = internal global ptr @gp8psk_info._entry.62, section ".printk_index", align 4
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"dvb_usb_gp8psk_debug\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 19, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"gp8psk_usb_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 378, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 389, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 23, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"gp8psk_usb_table\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 313, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 307, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 326, i32 14 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 357, i32 13 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 361, i32 13 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 365, i32 13 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 369, i32 13 }
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"gp8psk_properties\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 324, i32 41 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 74, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 75, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 90, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [14 x i8] c"gp8psk_fe_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 278, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 292, i32 24 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 48, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 53, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 60, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 61, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 233, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"bcm4500_firmware\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 18, i32 13 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 135, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 145, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 157, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 161, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 167, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 115, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 119, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 122, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.255 = private constant [38 x i8] c"../drivers/media/usb/dvb-usb/gp8psk.c\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 124, i32 3 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author391, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description392, ptr @__UNIQUE_ID_file394, ptr @__UNIQUE_ID_license395, ptr @__UNIQUE_ID_version393, ptr @__exitcall_gp8psk_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_gp8psk__390_385_gp8psk_usb_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @gp8psk_bcm4500_reload._entry, ptr @gp8psk_bcm4500_reload._entry_ptr, ptr @gp8psk_frontend_attach._entry, ptr @gp8psk_frontend_attach._entry_ptr, ptr @gp8psk_info._entry, ptr @gp8psk_info._entry.56, ptr @gp8psk_info._entry.59, ptr @gp8psk_info._entry.62, ptr @gp8psk_info._entry_ptr, ptr @gp8psk_info._entry_ptr.58, ptr @gp8psk_info._entry_ptr.61, ptr @gp8psk_info._entry_ptr.64, ptr @gp8psk_load_bcm4500fw._entry, ptr @gp8psk_load_bcm4500fw._entry.43, ptr @gp8psk_load_bcm4500fw._entry.46, ptr @gp8psk_load_bcm4500fw._entry.49, ptr @gp8psk_load_bcm4500fw._entry.52, ptr @gp8psk_load_bcm4500fw._entry_ptr, ptr @gp8psk_load_bcm4500fw._entry_ptr.45, ptr @gp8psk_load_bcm4500fw._entry_ptr.48, ptr @gp8psk_load_bcm4500fw._entry_ptr.51, ptr @gp8psk_load_bcm4500fw._entry_ptr.53, ptr @gp8psk_usb_driver_exit, ptr @gp8psk_usb_in_op._entry, ptr @gp8psk_usb_in_op._entry.29, ptr @gp8psk_usb_in_op._entry.32, ptr @gp8psk_usb_in_op._entry.35, ptr @gp8psk_usb_in_op._entry.37, ptr @gp8psk_usb_in_op._entry_ptr, ptr @gp8psk_usb_in_op._entry_ptr.31, ptr @gp8psk_usb_in_op._entry_ptr.34, ptr @gp8psk_usb_in_op._entry_ptr.36, ptr @gp8psk_usb_in_op._entry_ptr.38, ptr @gp8psk_usb_out_op._entry, ptr @gp8psk_usb_out_op._entry.14, ptr @gp8psk_usb_out_op._entry.17, ptr @gp8psk_usb_out_op._entry.20, ptr @gp8psk_usb_out_op._entry_ptr, ptr @gp8psk_usb_out_op._entry_ptr.16, ptr @gp8psk_usb_out_op._entry_ptr.19, ptr @gp8psk_usb_out_op._entry_ptr.22, ptr @gp8psk_usb_probe._entry, ptr @gp8psk_usb_probe._entry_ptr, ptr @dvb_usb_gp8psk_debug, ptr @gp8psk_usb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @gp8psk_usb_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @gp8psk_properties, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @gp8psk_fe_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.39, ptr @.str.40, ptr @bcm4500_firmware, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_gp8psk_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_usb_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_usb_out_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_usb_out_op._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_usb_out_op._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_usb_out_op._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_fe_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_usb_in_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_usb_in_op._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_usb_in_op._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_usb_in_op._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_usb_in_op._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_bcm4500_reload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4500_firmware to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_load_bcm4500fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_load_bcm4500fw._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_load_bcm4500fw._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_load_bcm4500fw._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_load_bcm4500fw._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_info._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_info._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gp8psk_info._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @gp8psk_usb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gp8psk_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @gp8psk_usb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %call1 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @gp8psk_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %idProduct = getelementptr i8, ptr %1, i32 938
  %2 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idProduct, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_streaming_ctrl(ptr nocapture noundef readonly %adap, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %conv = trunc i32 %onoff to i16
  %call = tail call fastcc i32 @gp8psk_usb_out_op(ptr noundef %1, i8 noundef zeroext -123, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_frontend_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 8
  %4 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 258, i16 %5)
  %cmp = icmp eq i16 %5, 258
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.23) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.24) #7
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.23) #7
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond420 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %call7 = tail call ptr %cond420(ptr noundef nonnull @gp8psk_fe_ops, ptr noundef %1, i1 noundef zeroext %cmp) #7
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then10, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.23) #7
  br label %if.end12

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then10, %if.then.if.end12_crit_edge
  %__r.0 = phi ptr [ null, %if.then10 ], [ %call7, %if.then.if.end12_crit_edge ], [ null, %do.end ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %6 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %__r.0, ptr %fe_adap, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_power_ctrl(ptr noundef %d, i32 noundef %onoff) #2 align 64 {
entry:
  %fpga_vers.i = alloca i8, align 1
  %fw_vers.i = alloca [6 x i8], align 1
  %status = alloca i8, align 1
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %status, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #7
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %buf, align 1, !annotation !149
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 8
  %4 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @gp8psk_usb_in_op(ptr noundef %d, i8 noundef zeroext -128, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %status, i32 noundef 1)
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 1026, i16 %5)
  %cmp = icmp eq i16 %5, 1026
  br i1 %cmp, label %if.then5, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call fastcc i32 @gp8psk_usb_out_op(ptr noundef %d, i8 noundef zeroext -99, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3.if.end_crit_edge
  %call7 = call fastcc i32 @gp8psk_usb_in_op(ptr noundef %d, i8 noundef zeroext -119, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fpga_vers.i) #7
  %9 = ptrtoint ptr %fpga_vers.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %fpga_vers.i, align 1, !annotation !149
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %fw_vers.i) #7
  %10 = call ptr @memset(ptr %fw_vers.i, i32 255, i32 6)
  %call.i.i = call fastcc i32 @gp8psk_usb_in_op(ptr noundef %d, i8 noundef zeroext -110, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %fw_vers.i, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.end22.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %11 = getelementptr inbounds [6 x i8], ptr %fw_vers.i, i32 0, i32 5
  %12 = getelementptr inbounds [6 x i8], ptr %fw_vers.i, i32 0, i32 4
  %13 = getelementptr inbounds [6 x i8], ptr %fw_vers.i, i32 0, i32 3
  %14 = getelementptr inbounds [6 x i8], ptr %fw_vers.i, i32 0, i32 2
  %15 = getelementptr inbounds [6 x i8], ptr %fw_vers.i, i32 0, i32 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %14, align 1
  %conv.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %15, align 1
  %conv2.i = zext i8 %19 to i32
  %20 = ptrtoint ptr %fw_vers.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fw_vers.i, align 1
  %conv4.i = zext i8 %21 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %shl9.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl9.i, %shl.i
  %or12.i = or i32 %or.i, %conv4.i
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %11, align 1
  %conv14.i = zext i8 %23 to i32
  %add.i = add nuw nsw i32 %conv14.i, 2000
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %12, align 1
  %conv16.i = zext i8 %25 to i32
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %13, align 1
  %conv18.i = zext i8 %27 to i32
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %or12.i, i32 noundef %add.i, i32 noundef %conv16.i, i32 noundef %conv18.i) #10
  br label %if.end.i

do.end22.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end22.i, %do.end.i
  %call.i42.i = call fastcc i32 @gp8psk_usb_in_op(ptr noundef %d, i8 noundef zeroext -107, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %fpga_vers.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %tobool26.not.i = icmp eq i32 %call.i42.i, 0
  br i1 %tobool26.not.i, label %do.end30.i, label %do.end37.i

do.end30.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %fpga_vers.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fpga_vers.i, align 1
  %conv32.i = zext i8 %29 to i32
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %conv32.i) #10
  br label %gp8psk_info.exit

do.end37.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #10
  br label %gp8psk_info.exit

gp8psk_info.exit:                                 ; preds = %do.end37.i, %do.end30.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %fw_vers.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fpga_vers.i) #7
  br label %if.end11

if.end11:                                         ; preds = %gp8psk_info.exit, %if.then.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 258, i16 %5)
  %cmp12 = icmp eq i16 %5, 258
  %30 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool17.not = icmp eq i8 %30, 0
  %or.cond = select i1 %cmp12, i1 %tobool17.not, i1 false
  br i1 %or.cond, label %if.then18, label %if.end11.if.end24_crit_edge

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then18:                                        ; preds = %if.end11
  %call19 = tail call fastcc i32 @gp8psk_load_bcm4500fw(ptr noundef %d)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.if.end24_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end24:                                         ; preds = %if.then18.if.end24_crit_edge, %if.end11.if.end24_crit_edge
  %31 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool27.not = icmp eq i8 %31, 0
  br i1 %tobool27.not, label %if.then28, label %if.end24.if.end33_crit_edge

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then28:                                        ; preds = %if.end24
  %call29 = call fastcc i32 @gp8psk_usb_in_op(ptr noundef %d, i8 noundef zeroext -118, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end33_crit_edge, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end33:                                         ; preds = %if.then28.if.end33_crit_edge, %if.end24.if.end33_crit_edge
  br i1 %cmp12, label %if.then36, label %if.end33.if.end41_crit_edge

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then36:                                        ; preds = %if.end33
  %call37 = tail call fastcc i32 @gp8psk_usb_out_op(ptr noundef %d, i8 noundef zeroext -114, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.if.end41_crit_edge, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36.if.end41_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end41:                                         ; preds = %if.then36.if.end41_crit_edge, %if.end33.if.end41_crit_edge
  %call42 = tail call fastcc i32 @gp8psk_usb_out_op(ptr noundef %d, i8 noundef zeroext -123, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end41.if.end59_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41.if.end59_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.else:                                          ; preds = %entry
  %call46 = call fastcc i32 @gp8psk_usb_in_op(ptr noundef %d, i8 noundef zeroext -118, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %if.else
  %call50 = call fastcc i32 @gp8psk_usb_in_op(ptr noundef %d, i8 noundef zeroext -119, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp2(i16 1026, i16 %5)
  %cmp54 = icmp eq i16 %5, 1026
  br i1 %cmp54, label %if.then56, label %if.end53.if.end59_crit_edge

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = tail call fastcc i32 @gp8psk_usb_out_op(ptr noundef %d, i8 noundef zeroext -99, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end53.if.end59_crit_edge, %if.end41.if.end59_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end49.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then18.cleanup_crit_edge ], [ -22, %if.then28.cleanup_crit_edge ], [ -22, %if.then36.cleanup_crit_edge ], [ -22, %if.end41.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gp8psk_usb_out_op(ptr noundef %d, i8 noundef zeroext %req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr nocapture noundef readonly %b, i32 noundef %blen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load i32, ptr @dvb_usb_gp8psk_debug, align 4
  %and = and i32 %2, 2
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blen)
  %cmp73 = icmp sgt i32 %blen, 0
  br i1 %cmp73, label %do.end5.do.body7_crit_edge, label %do.end5.do.body20_crit_edge

do.end5.do.body20_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

do.end5.do.body7_crit_edge:                       ; preds = %do.end5
  br label %do.body7

do.body7:                                         ; preds = %for.inc.do.body7_crit_edge, %do.end5.do.body7_crit_edge
  %loop_.074 = phi i32 [ %inc, %for.inc.do.body7_crit_edge ], [ 0, %do.end5.do.body7_crit_edge ]
  %3 = load i32, ptr @dvb_usb_gp8psk_debug, align 4
  %and8 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.for.inc_crit_edge, label %do.end13

do.body7.for.inc_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %b, i32 %loop_.074
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv15 = zext i8 %5 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv15) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end13, %do.body7.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop_.074, 1
  %exitcond.not = icmp eq i32 %inc, %blen
  br i1 %exitcond.not, label %for.inc.do.body20_crit_edge, label %for.inc.do.body7_crit_edge

for.inc.do.body7_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

for.inc.do.body20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

do.body20:                                        ; preds = %for.inc.do.body20_crit_edge, %do.end5.do.body20_crit_edge
  %6 = load i32, ptr @dvb_usb_gp8psk_debug, align 4
  %and21 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body20.do.end31_crit_edge, label %do.end26

do.body20.do.end31_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %do.body20.do.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %blen)
  %cmp32 = icmp ugt i32 %blen, 80
  br i1 %cmp32, label %do.end31.cleanup_crit_edge, label %if.end35

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %do.end31
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  %call36 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %7 = call ptr @memcpy(ptr %1, ptr %b, i32 %blen)
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or = or i32 %shl.i, -2147483648
  %conv44 = trunc i32 %blen to i16
  %call45 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or, i8 noundef zeroext %req, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %1, i16 noundef zeroext %conv44, i32 noundef 2000) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call45, i32 %blen)
  %cmp46.not = icmp eq i32 %call45, %blen
  br i1 %cmp46.not, label %if.end39.if.end54_crit_edge, label %do.end51

if.end39.if.end54_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.end51:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %if.end39.if.end54_crit_edge
  %ret.0 = phi i32 [ -5, %do.end51 ], [ 0, %if.end39.if.end54_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end35.cleanup_crit_edge, %do.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end54 ], [ -5, %do.end31.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_fe_in(ptr noundef %priv, i8 noundef zeroext %req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr nocapture noundef %b, i32 noundef %blen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @gp8psk_usb_in_op(ptr noundef %priv, i8 noundef zeroext %req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i32 noundef %blen)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_fe_out(ptr noundef %priv, i8 noundef zeroext %req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr nocapture noundef readonly %b, i32 noundef %blen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @gp8psk_usb_out_op(ptr noundef %priv, i8 noundef zeroext %req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i32 noundef %blen)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gp8psk_fe_reload(ptr noundef %priv) #2 align 64 {
entry:
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #7
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf.i, align 1, !annotation !149
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev.i, align 4
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 16, i32 8
  %3 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %idProduct.i, align 2
  %5 = load i32, ptr @dvb_usb_gp8psk_debug, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end3.i_crit_edge, label %do.end.i

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  %call4.i = call fastcc i32 @gp8psk_usb_in_op(ptr noundef %priv, i8 noundef zeroext -119, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %do.end3.i.gp8psk_bcm4500_reload.exit_crit_edge

do.end3.i.gp8psk_bcm4500_reload.exit_crit_edge:   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gp8psk_bcm4500_reload.exit

if.end7.i:                                        ; preds = %do.end3.i
  %call8.i = call fastcc i32 @gp8psk_usb_in_op(ptr noundef %priv, i8 noundef zeroext -119, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %buf.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.gp8psk_bcm4500_reload.exit_crit_edge

if.end7.i.gp8psk_bcm4500_reload.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gp8psk_bcm4500_reload.exit

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 258, i16 %4)
  %cmp.i = icmp eq i16 %4, 258
  br i1 %cmp.i, label %if.then13.i, label %if.end11.i.if.end18.i_crit_edge

if.end11.i.if.end18.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.end11.i
  %call14.i = tail call fastcc i32 @gp8psk_load_bcm4500fw(ptr noundef %priv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then13.i.if.end18.i_crit_edge, label %if.then13.i.gp8psk_bcm4500_reload.exit_crit_edge

if.then13.i.gp8psk_bcm4500_reload.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gp8psk_bcm4500_reload.exit

if.then13.i.if.end18.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i.if.end18.i_crit_edge, %if.end11.i.if.end18.i_crit_edge
  br label %gp8psk_bcm4500_reload.exit

gp8psk_bcm4500_reload.exit:                       ; preds = %if.end18.i, %if.then13.i.gp8psk_bcm4500_reload.exit_crit_edge, %if.end7.i.gp8psk_bcm4500_reload.exit_crit_edge, %do.end3.i.gp8psk_bcm4500_reload.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end18.i ], [ -22, %do.end3.i.gp8psk_bcm4500_reload.exit_crit_edge ], [ -22, %if.end7.i.gp8psk_bcm4500_reload.exit_crit_edge ], [ -22, %if.then13.i.gp8psk_bcm4500_reload.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gp8psk_usb_in_op(ptr noundef %d, i8 noundef zeroext %req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr nocapture noundef %b, i32 noundef %blen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %blen)
  %cmp = icmp ugt i32 %blen, 80
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %usb_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blen)
  %cmp4.not105 = icmp eq i32 %blen, 0
  br i1 %cmp4.not105, label %while.cond.preheader.if.else_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.else_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %conv = trunc i32 %blen to i16
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or8 = or i32 %shl.i, -2147483520
  %call9 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or8, i8 noundef zeroext %req, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %1, i16 noundef zeroext %conv, i32 noundef 2000) #7
  %6 = load i32, ptr @dvb_usb_gp8psk_debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %while.body.lr.ph.do.end16_crit_edge, label %do.end

while.body.lr.ph.do.end16_crit_edge:              ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end:                                           ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef %call9) #10
  br label %do.end16

do.end16:                                         ; preds = %do.end, %while.body.lr.ph.do.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp3 = icmp slt i32 %call9, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %blen)
  %cmp4.not = icmp eq i32 %call9, %blen
  %or.cond = or i1 %cmp3, %cmp4.not
  br i1 %or.cond, label %do.end16.while.end_crit_edge, label %while.body.1

do.end16.while.end_crit_edge:                     ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.1:                                     ; preds = %do.end16
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.1 = shl i32 %10, 8
  %or8.1 = or i32 %shl.i.1, -2147483520
  %call9.1 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or8.1, i8 noundef zeroext %req, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %1, i16 noundef zeroext %conv, i32 noundef 2000) #7
  %11 = load i32, ptr @dvb_usb_gp8psk_debug, align 4
  %and.1 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool10.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool10.not.1, label %while.body.1.do.end16.1_crit_edge, label %do.end.1

while.body.1.do.end16.1_crit_edge:                ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.1

do.end.1:                                         ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  %call13.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 1, i32 noundef %call9.1) #10
  br label %do.end16.1

do.end16.1:                                       ; preds = %do.end.1, %while.body.1.do.end16.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %cmp3.1 = icmp slt i32 %call9.1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.1, i32 %blen)
  %cmp4.not.1 = icmp eq i32 %call9.1, %blen
  %or.cond.1 = or i1 %cmp3.1, %cmp4.not.1
  br i1 %or.cond.1, label %do.end16.1.while.end_crit_edge, label %while.body.2

do.end16.1.while.end_crit_edge:                   ; preds = %do.end16.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.2:                                     ; preds = %do.end16.1
  %12 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.2 = shl i32 %15, 8
  %or8.2 = or i32 %shl.i.2, -2147483520
  %call9.2 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or8.2, i8 noundef zeroext %req, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %1, i16 noundef zeroext %conv, i32 noundef 2000) #7
  %16 = load i32, ptr @dvb_usb_gp8psk_debug, align 4
  %and.2 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool10.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool10.not.2, label %while.body.2.do.end16.2_crit_edge, label %do.end.2

while.body.2.do.end16.2_crit_edge:                ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.2

do.end.2:                                         ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #9
  %call13.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 2, i32 noundef %call9.2) #10
  br label %do.end16.2

do.end16.2:                                       ; preds = %do.end.2, %while.body.2.do.end16.2_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.2, i32 %blen)
  %cmp4.not.2 = icmp eq i32 %call9.2, %blen
  br label %while.end

while.end:                                        ; preds = %do.end16.2, %do.end16.1.while.end_crit_edge, %do.end16.while.end_crit_edge
  %cmp4.not.lcssa = phi i1 [ %cmp4.not, %do.end16.while.end_crit_edge ], [ %cmp4.not.1, %do.end16.1.while.end_crit_edge ], [ %cmp4.not.2, %do.end16.2 ]
  %call9.lcssa = phi i32 [ %call9, %do.end16.while.end_crit_edge ], [ %call9.1, %do.end16.1.while.end_crit_edge ], [ %call9.2, %do.end16.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.lcssa)
  %phi.cmp = icmp sgt i32 %call9.lcssa, -1
  %17 = and i1 %phi.cmp, %cmp4.not.lcssa
  br i1 %17, label %while.end.if.else_crit_edge, label %do.end24

while.end.if.else_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv26 = zext i8 %req to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv26) #10
  br label %do.body31

if.else:                                          ; preds = %while.end.if.else_crit_edge, %while.cond.preheader.if.else_crit_edge
  %18 = call ptr @memcpy(ptr %b, ptr %1, i32 %blen)
  br label %do.body31

do.body31:                                        ; preds = %if.else, %do.end24
  %ret.1 = phi i32 [ -5, %do.end24 ], [ 0, %if.else ]
  %19 = load i32, ptr @dvb_usb_gp8psk_debug, align 4
  %and32 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.do.end45_crit_edge, label %do.end37

do.body31.do.end45_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %conv39 = zext i8 %req to i32
  %conv40 = zext i16 %value to i32
  %conv41 = zext i16 %index to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv39, i32 noundef %conv40, i32 noundef %conv41) #10
  br label %do.end45

do.end45:                                         ; preds = %do.end37, %do.body31.do.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blen)
  %cmp46110 = icmp sgt i32 %blen, 0
  br i1 %cmp46110, label %do.end45.do.body48_crit_edge, label %do.end45.do.body62_crit_edge

do.end45.do.body62_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body62

do.end45.do.body48_crit_edge:                     ; preds = %do.end45
  br label %do.body48

do.body48:                                        ; preds = %for.inc.do.body48_crit_edge, %do.end45.do.body48_crit_edge
  %loop_.0111 = phi i32 [ %inc61, %for.inc.do.body48_crit_edge ], [ 0, %do.end45.do.body48_crit_edge ]
  %20 = load i32, ptr @dvb_usb_gp8psk_debug, align 4
  %and49 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body48.for.inc_crit_edge, label %do.end54

do.body48.for.inc_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end54:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %b, i32 %loop_.0111
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %conv56 = zext i8 %22 to i32
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv56) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end54, %do.body48.for.inc_crit_edge
  %inc61 = add nuw nsw i32 %loop_.0111, 1
  %exitcond.not = icmp eq i32 %inc61, %blen
  br i1 %exitcond.not, label %for.inc.do.body62_crit_edge, label %for.inc.do.body48_crit_edge

for.inc.do.body48_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body48

for.inc.do.body62_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body62

do.body62:                                        ; preds = %for.inc.do.body62_crit_edge, %do.end45.do.body62_crit_edge
  %23 = load i32, ptr @dvb_usb_gp8psk_debug, align 4
  %and63 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body62.do.end73_crit_edge, label %do.end68

do.body62.do.end73_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end73

do.end68:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %do.end73

do.end73:                                         ; preds = %do.end68, %do.body62.do.end73_crit_edge
  tail call void @mutex_unlock(ptr noundef %usb_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.end73 ], [ -5, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gp8psk_load_bcm4500fw(ptr noundef %d) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fw, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @bcm4500_firmware, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @bcm4500_firmware, i32 noundef %call) #10
  br label %cleanup53

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @gp8psk_usb_out_op(ptr noundef %d, i8 noundef zeroext -120, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end7, label %if.end.out_rel_fw_crit_edge

if.end.out_rel_fw_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_rel_fw

do.end7:                                          ; preds = %if.end
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @bcm4500_firmware) #10
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 64) #11
  %tobool11.not = icmp eq ptr %call7.i, null
  br i1 %tobool11.not, label %do.end7.out_rel_fw_crit_edge, label %do.end7.while.cond_crit_edge

do.end7.while.cond_crit_edge:                     ; preds = %do.end7
  br label %while.cond

do.end7.out_rel_fw_crit_edge:                     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_rel_fw

while.cond:                                       ; preds = %if.end40.while.cond_crit_edge, %do.end7.while.cond_crit_edge
  %ptr.0 = phi ptr [ %add.ptr, %if.end40.while.cond_crit_edge ], [ %6, %do.end7.while.cond_crit_edge ]
  %8 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ptr.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp14.not = icmp eq i8 %9, -1
  br i1 %cmp14.not, label %while.cond.out_free_crit_edge, label %while.body

while.cond.out_free_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free

while.body:                                       ; preds = %while.cond
  %conv = zext i8 %9 to i16
  %add = add nuw nsw i16 %conv, 4
  %conv19 = zext i16 %add to i32
  %add.ptr = getelementptr i8, ptr %ptr.0, i32 %conv19
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 4
  %data20 = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data20, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %add.ptr21 = getelementptr i8, ptr %13, i32 %15
  %cmp22.not = icmp ult ptr %add.ptr, %add.ptr21
  br i1 %cmp22.not, label %if.end30, label %while.body.out_free.sink.split_crit_edge

while.body.out_free.sink.split_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free.sink.split

if.end30:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %9)
  %cmp32 = icmp ugt i8 %9, 60
  br i1 %cmp32, label %if.end30.out_free.sink.split_crit_edge, label %if.end40

if.end30.out_free.sink.split_crit_edge:           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free.sink.split

if.end40:                                         ; preds = %if.end30
  %16 = call ptr @memcpy(ptr %call7.i, ptr %ptr.0, i32 %conv19)
  %call42 = call i32 @dvb_usb_generic_write(ptr noundef %d, ptr noundef nonnull %call7.i, i16 noundef zeroext %add) #7
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end40.while.cond_crit_edge, label %if.end40.out_free.sink.split_crit_edge

if.end40.out_free.sink.split_crit_edge:           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free.sink.split

if.end40.while.cond_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

out_free.sink.split:                              ; preds = %if.end40.out_free.sink.split_crit_edge, %if.end30.out_free.sink.split_crit_edge, %while.body.out_free.sink.split_crit_edge
  %.str.47.sink = phi ptr [ @.str.47, %while.body.out_free.sink.split_crit_edge ], [ @.str.50, %if.end30.out_free.sink.split_crit_edge ], [ @.str.47, %if.end40.out_free.sink.split_crit_edge ]
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.47.sink) #10
  br label %out_free

out_free:                                         ; preds = %out_free.sink.split, %while.cond.out_free_crit_edge
  %ret.0 = phi i32 [ -22, %out_free.sink.split ], [ 0, %while.cond.out_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %out_rel_fw

out_rel_fw:                                       ; preds = %out_free, %do.end7.out_rel_fw_crit_edge, %if.end.out_rel_fw_crit_edge
  %ret.1 = phi i32 [ -22, %if.end.out_rel_fw_crit_edge ], [ %ret.0, %out_free ], [ -12, %do.end7.out_rel_fw_crit_edge ]
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %18) #7
  br label %cleanup53

cleanup53:                                        ; preds = %out_rel_fw, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.1, %out_rel_fw ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_generic_write(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !35, !36, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 21, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 23, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !6, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr389, !6, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_gp8psk__390_385_gp8psk_usb_driver_init6, !10, !"__initcall__kmod_dvb_usb_gp8psk__390_385_gp8psk_usb_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 385, i32 1}
!11 = !{ptr @__exitcall_gp8psk_usb_driver_exit, !10, !"__exitcall_gp8psk_usb_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author391, !13, !"__UNIQUE_ID_author391", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 387, i32 1}
!14 = !{ptr @__UNIQUE_ID_description392, !15, !"__UNIQUE_ID_description392", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 388, i32 1}
!16 = !{ptr @__UNIQUE_ID_version393, !17, !"__UNIQUE_ID_version393", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 389, i32 1}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__modver_attr, !17, !"__modver_attr", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_file394, !23, !"__UNIQUE_ID_file394", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 390, i32 1}
!24 = !{ptr @__UNIQUE_ID_license395, !23, !"__UNIQUE_ID_license395", i1 false, i1 false}
!25 = !{ptr @dvb_usb_gp8psk_debug, !26, !"dvb_usb_gp8psk_debug", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 19, i32 5}
!27 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!28 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!29 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!30 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!31 = !{ptr @gp8psk_usb_driver, !32, !"gp8psk_usb_driver", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 378, i32 26}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 307, i32 3}
!35 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @gp8psk_usb_probe._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @gp8psk_usb_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 326, i32 14}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 357, i32 13}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 361, i32 13}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 365, i32 13}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 369, i32 13}
!49 = !{ptr @gp8psk_properties, !50, !"gp8psk_properties", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 324, i32 41}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 74, i32 2}
!53 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @gp8psk_usb_out_op._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @gp8psk_usb_out_op._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 75, i32 2}
!58 = !{ptr @gp8psk_usb_out_op._entry.14, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @gp8psk_usb_out_op._entry_ptr.16, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @gp8psk_usb_out_op._entry.17, !57, !"_entry", i1 false, i1 false}
!62 = !{ptr @gp8psk_usb_out_op._entry_ptr.19, !57, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 90, i32 3}
!65 = !{ptr @gp8psk_usb_out_op._entry.20, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @gp8psk_usb_out_op._entry_ptr.22, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 292, i32 24}
!69 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @gp8psk_frontend_attach._entry, !68, !"_entry", i1 false, i1 false}
!73 = !{ptr @gp8psk_frontend_attach._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @gp8psk_fe_ops, !75, !"gp8psk_fe_ops", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 278, i32 35}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 48, i32 3}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @gp8psk_usb_in_op._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @gp8psk_usb_in_op._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 53, i32 3}
!83 = !{ptr @gp8psk_usb_in_op._entry.29, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @gp8psk_usb_in_op._entry_ptr.31, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 60, i32 2}
!87 = !{ptr @gp8psk_usb_in_op._entry.32, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @gp8psk_usb_in_op._entry_ptr.34, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @gp8psk_usb_in_op._entry.35, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 61, i32 2}
!91 = !{ptr @gp8psk_usb_in_op._entry_ptr.36, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @gp8psk_usb_in_op._entry.37, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @gp8psk_usb_in_op._entry_ptr.38, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 233, i32 2}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @gp8psk_bcm4500_reload._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @gp8psk_bcm4500_reload._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 135, i32 3}
!101 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @gp8psk_load_bcm4500fw._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @gp8psk_load_bcm4500fw._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 145, i32 2}
!106 = !{ptr @gp8psk_load_bcm4500fw._entry.43, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @gp8psk_load_bcm4500fw._entry_ptr.45, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 157, i32 4}
!110 = !{ptr @gp8psk_load_bcm4500fw._entry.46, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @gp8psk_load_bcm4500fw._entry_ptr.48, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 161, i32 4}
!114 = !{ptr @gp8psk_load_bcm4500fw._entry.49, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @gp8psk_load_bcm4500fw._entry_ptr.51, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @gp8psk_load_bcm4500fw._entry.52, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 167, i32 4}
!118 = !{ptr @gp8psk_load_bcm4500fw._entry_ptr.53, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @bcm4500_firmware, !120, !"bcm4500_firmware", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 18, i32 13}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 115, i32 3}
!123 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @gp8psk_info._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @gp8psk_info._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 119, i32 3}
!128 = !{ptr @gp8psk_info._entry.56, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @gp8psk_info._entry_ptr.58, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 122, i32 3}
!132 = !{ptr @gp8psk_info._entry.59, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @gp8psk_info._entry_ptr.61, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 124, i32 3}
!136 = !{ptr @gp8psk_info._entry.62, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @gp8psk_info._entry_ptr.64, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @gp8psk_usb_table, !139, !"gp8psk_usb_table", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/dvb-usb/gp8psk.c", i32 313, i32 29}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{!"auto-init"}
