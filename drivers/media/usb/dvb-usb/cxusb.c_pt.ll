; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/cxusb.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/cxusb.c"
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
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cx22702_config = type { i8, i8 }
%struct.lgdt330x_config = type { i32, i32, ptr, ptr, i32, ptr }
%struct.mt352_config = type { i8, i32, i32, i32, ptr }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
%struct.mxl5005s_config = type { i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.dib7000p_config = type { i8, i8, i8, ptr, i8, ptr, ptr, i16, i16, i16, i16, i8, i8, ptr, i8, i8, i16, i8, i8 }
%struct.dibx000_agc_config = type { i8, i16, i16, i16, i8, i16, i8, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.150 }
%struct.anon.150 = type { i16, i16, i16, i16 }
%struct.dibx000_bandwidth_config = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32 }
%struct.dib0070_config = type { i8, ptr, ptr, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, ptr, i8 }
%struct.lgs8gxx_config = type { i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.atbm8830_config = type { i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.max2165_config = type { i8, i8 }
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
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
%struct.cxusb_state = type { [3 x i8], [3 x i8], ptr, ptr, [80 x i8], %struct.mutex, i8, ptr }
%struct.cxusb_medion_dev = type { %struct.cxusb_state, ptr, i32, i32, %struct.mutex, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.vb2_queue, i32, i8, i32, i32, i32, %struct.cxusb_medion_auxbuf, i64, [5 x ptr], i32, %struct.work_struct, i32, %struct.cxusb_bt656_params, ptr, i32, %struct.list_head, %struct.completion }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cxusb_medion_auxbuf = type { ptr, i32, i32 }
%struct.cxusb_bt656_params = type { i32, i32, i32, i32, i32, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.xc2028_config = type { ptr, i8, ptr }
%struct.dib0700_adapter_state = type { ptr, %struct.dib7000p_ops }
%struct.dib7000p_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_debug = internal constant [20 x i8] c"dvb_usb_cxusb.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_cxusb_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_cxusb_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype388 = internal constant [33 x i8] c"dvb_usb_cxusb.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug389 = internal constant [60 x i8] c"dvb_usb_cxusb.parm=debug:set debugging level (see cxusb.h).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [25 x i8] c"dvb_usb_cxusb.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype390 = internal constant [49 x i8] c"dvb_usb_cxusb.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr391 = internal constant [50 x i8] c"dvb_usb_cxusb.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@cxusb_ctrl_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014cxusb: i2c wr: len=%d is too big!\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxusb_ctrl_msg\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/dvb-usb/cxusb.c\00", [62 x i8] zeroinitializer }, align 32
@cxusb_ctrl_msg._entry_ptr = internal global ptr @cxusb_ctrl_msg._entry, section ".printk_index", align 4
@cxusb_ctrl_msg._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014cxusb: i2c rd: len=%d is too big!\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@cxusb_ctrl_msg._entry_ptr.5 = internal global ptr @cxusb_ctrl_msg._entry.3, section ".printk_index", align 4
@cxusb_medion_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1446, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"will acquire and switch to %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxusb_medion_get\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxusb_medion_get._entry_ptr = internal global ptr @cxusb_medion_get._entry, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"analog\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"digital\00", [24 x i8] zeroinitializer }, align 32
@cxusb_medion_get._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.2, i32 1453, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"powerup for analog switch failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cxusb_medion_get._entry_ptr.15 = internal global ptr @cxusb_medion_get._entry.12, section ".printk_index", align 4
@cxusb_medion_get._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.2, i32 1467, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"powerup for digital switch failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@cxusb_medion_get._entry_ptr.18 = internal global ptr @cxusb_medion_get._entry.16, section ".printk_index", align 4
@cxusb_medion_get._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.2, i32 1478, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reacquired idle %s\0A\00", [44 x i8] zeroinitializer }, align 32
@cxusb_medion_get._entry_ptr.21 = internal global ptr @cxusb_medion_get._entry.19, section ".printk_index", align 4
@cxusb_medion_get._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.2, i32 1485, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"acquired %s\0A\00", [19 x i8] zeroinitializer }, align 32
@cxusb_medion_get._entry_ptr.24 = internal global ptr @cxusb_medion_get._entry.22, section ".printk_index", align 4
@cxusb_medion_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1513, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"release %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxusb_medion_put\00", [47 x i8] zeroinitializer }, align 32
@cxusb_medion_put._entry_ptr = internal global ptr @cxusb_medion_put._entry, section ".printk_index", align 4
@__initcall__kmod_dvb_usb_cxusb__392_2436_cxusb_driver_init6 = internal global ptr @cxusb_driver_init, section ".initcall6.init", align 4
@cxusb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.46, ptr @cxusb_probe, ptr @cxusb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxusb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_cxusb_driver_exit = internal global ptr @cxusb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author393 = internal constant [69 x i8] c"dvb_usb_cxusb.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author394 = internal constant [58 x i8] c"dvb_usb_cxusb.author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author395 = internal constant [60 x i8] c"dvb_usb_cxusb.author=Chris Pascoe <c.pascoe@itee.uq.edu.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_author396 = internal constant [70 x i8] c"dvb_usb_cxusb.author=Maciej S. Szmigiero <mail@maciej.szmigiero.name>\00", section ".modinfo", align 1
@__UNIQUE_ID_description397 = internal constant [77 x i8] c"dvb_usb_cxusb.description=Driver for Conexant USB2.0 hybrid reference design\00", section ".modinfo", align 1
@__UNIQUE_ID_file398 = internal constant [59 x i8] c"dvb_usb_cxusb.file=drivers/media/usb/dvb-usb/dvb-usb-cxusb\00", section ".modinfo", align 1
@__UNIQUE_ID_license399 = internal constant [26 x i8] c"dvb_usb_cxusb.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@_cxusb_power_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 299, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setting power %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_cxusb_power_ctrl\00", [46 x i8] zeroinitializer }, align 32
@_cxusb_power_ctrl._entry_ptr = internal global ptr @_cxusb_power_ctrl._entry, section ".printk_index", align 4
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@cxusb_medion_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 852, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"digital interface selection failed (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxusb_medion_set_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cxusb_medion_set_mode._entry_ptr = internal global ptr @cxusb_medion_set_mode._entry, section ".printk_index", align 4
@cxusb_medion_set_mode._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.2, i32 860, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"analog interface selection failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@cxusb_medion_set_mode._entry_ptr.36 = internal global ptr @cxusb_medion_set_mode._entry.34, section ".printk_index", align 4
@cxusb_medion_set_mode._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.2, i32 870, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"clear halt on IN pipe failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@cxusb_medion_set_mode._entry_ptr.39 = internal global ptr @cxusb_medion_set_mode._entry.37, section ".printk_index", align 4
@cxusb_medion_set_mode._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.32, ptr @.str.2, i32 876, ptr @.str.14, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clear halt on OUT pipe failed (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@cxusb_medion_set_mode._entry_ptr.42 = internal global ptr @cxusb_medion_set_mode._entry.40, section ".printk_index", align 4
@cxusb_medion_set_mode._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.32, ptr @.str.2, i32 882, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mode switch failed (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@cxusb_medion_set_mode._entry_ptr.45 = internal global ptr @cxusb_medion_set_mode._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dvb_usb_cxusb\00", [18 x i8] zeroinitializer }, align 32
@cxusb_table = internal global { [21 x %struct.usb_device_id], [104 x i8] } { [21 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5728, i16 2354, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -11008, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -11007, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -9392, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -9391, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -9472, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -9471, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -9456, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -9455, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -9388, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -9387, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -9384, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -9383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -9352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -9360, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -9359, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1994, i16 -22424, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4073, i16 -9320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1394, i16 -31018, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1394, i16 -10223, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [104 x i8] zeroinitializer }, align 32
@cxusb_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @cxusb_i2c_xfer, ptr null, ptr null, ptr null, ptr @cxusb_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Medion MD95700 (MDUSBTV-HYBRID)\00", [32 x i8] zeroinitializer }, align 32
@cxusb_medion_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 3, ptr null, ptr null, i32 0, i32 1264, ptr @cxusb_medion_priv_init, ptr @cxusb_medion_priv_destroy, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @cxusb_streaming_ctrl, ptr null, ptr null, ptr @cxusb_cx22702_frontend_attach, ptr @cxusb_fmd1216me_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 5, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 8192 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @cxusb_power_ctrl, ptr null, ptr null, %struct.anon.134 zeroinitializer, ptr @cxusb_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.47, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr @cxusb_table, [14 x ptr] zeroinitializer }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@cxusb_medion_priv_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cxdev->open_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx22702_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cx22702_attach\00", [42 x i8] zeroinitializer }, align 32
@cxusb_cx22702_config = internal global { %struct.cx22702_config, [30 x i8] } { %struct.cx22702_config { i8 99, i8 0 }, [30 x i8] zeroinitializer }, align 32
@cxusb_cx22702_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cx22702_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cxusb_cx22702_frontend_attach\00", [34 x i8] zeroinitializer }, align 32
@cxusb_cx22702_frontend_attach._entry_ptr = internal global ptr @cxusb_cx22702_frontend_attach._entry, section ".printk_index", align 4
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"simple_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"symbol:simple_tuner_attach\00", [37 x i8] zeroinitializer }, align 32
@cxusb_fmd1216me_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013DVB: Unable to find symbol simple_tuner_attach()\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cxusb_fmd1216me_tuner_attach\00", [35 x i8] zeroinitializer }, align 32
@cxusb_fmd1216me_tuner_attach._entry_ptr = internal global ptr @cxusb_fmd1216me_tuner_attach._entry, section ".printk_index", align 4
@cxusb_power_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 318, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"preventing DVB core from setting power OFF while we are in analog mode\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxusb_power_ctrl\00", [47 x i8] zeroinitializer }, align 32
@cxusb_power_ctrl._entry_ptr = internal global ptr @cxusb_power_ctrl._entry, section ".printk_index", align 4
@cxusb_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.60, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxusb_i2c_xfer\00", [17 x i8] zeroinitializer }, align 32
@cxusb_i2c_xfer._entry_ptr = internal global ptr @cxusb_i2c_xfer._entry, section ".printk_index", align 4
@cxusb_i2c_xfer._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014cxusb: i2c read failed\0A\00", [38 x i8] zeroinitializer }, align 32
@cxusb_i2c_xfer._entry_ptr.63 = internal global ptr @cxusb_i2c_xfer._entry.61, section ".printk_index", align 4
@cxusb_i2c_xfer._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.60, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxusb_i2c_xfer._entry_ptr.65 = internal global ptr @cxusb_i2c_xfer._entry.64, section ".printk_index", align 4
@cxusb_i2c_xfer._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.60, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxusb_i2c_xfer._entry_ptr.67 = internal global ptr @cxusb_i2c_xfer._entry.66, section ".printk_index", align 4
@cxusb_i2c_xfer._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.60, ptr @.str.2, i32 248, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i2c read may have failed\0A\00", [38 x i8] zeroinitializer }, align 32
@cxusb_i2c_xfer._entry_ptr.70 = internal global ptr @cxusb_i2c_xfer._entry.68, section ".printk_index", align 4
@cxusb_i2c_xfer._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.60, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxusb_i2c_xfer._entry_ptr.72 = internal global ptr @cxusb_i2c_xfer._entry.71, section ".printk_index", align 4
@cxusb_i2c_xfer._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.60, ptr @.str.2, i32 271, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"i2c write may have failed\0A\00", [37 x i8] zeroinitializer }, align 32
@cxusb_i2c_xfer._entry_ptr.75 = internal global ptr @cxusb_i2c_xfer._entry.73, section ".printk_index", align 4
@cxusb_gpio_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 125, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpio_write failed.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxusb_gpio_tuner\00", [47 x i8] zeroinitializer }, align 32
@cxusb_gpio_tuner._entry_ptr = internal global ptr @cxusb_gpio_tuner._entry, section ".printk_index", align 4
@cxusb_medion_check_intf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1577, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no alternate interface\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxusb_medion_check_intf\00", [40 x i8] zeroinitializer }, align 32
@cxusb_medion_check_intf._entry_ptr = internal global ptr @cxusb_medion_check_intf._entry, section ".printk_index", align 4
@cxusb_medion_check_intf._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 1592, ptr @.str.33, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no iso interface\00", [47 x i8] zeroinitializer }, align 32
@cxusb_medion_check_intf._entry_ptr.82 = internal global ptr @cxusb_medion_check_intf._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-usb-bluebird-01.fw\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc-dvico-portable\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DViCO FusionHDTV5 USB Gold\00", [37 x i8] zeroinitializer }, align 32
@cxusb_bluebird_lgh064f_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 0, ptr @bluebird_patch_dvico_firmware_download, ptr @.str.83, i32 0, i32 196, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @cxusb_streaming_ctrl, ptr null, ptr null, ptr @cxusb_lgdt3303_frontend_attach, ptr @cxusb_lgh064f_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 5, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 8192 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @cxusb_bluebird_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.84, i64 0, i64 512, i32 0, ptr null, ptr @.str.46, ptr @cxusb_rc_query, i32 100, i8 0, i32 0 } }, ptr @cxusb_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.85, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 24), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 48), [14 x ptr] zeroinitializer }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@cxusb_lgdt3303_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013cxusb: set interface failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cxusb_lgdt3303_frontend_attach\00", [33 x i8] zeroinitializer }, align 32
@cxusb_lgdt3303_frontend_attach._entry_ptr = internal global ptr @cxusb_lgdt3303_frontend_attach._entry, section ".printk_index", align 4
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt330x_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:lgdt330x_attach\00", [41 x i8] zeroinitializer }, align 32
@cxusb_lgdt3303_config = internal global { %struct.lgdt330x_config, [40 x i8] } { %struct.lgdt330x_config { i32 2, i32 0, ptr null, ptr null, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxusb_lgdt3303_frontend_attach._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.88, ptr @.str.2, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol lgdt330x_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@cxusb_lgdt3303_frontend_attach._entry_ptr.93 = internal global ptr @cxusb_lgdt3303_frontend_attach._entry.91, section ".printk_index", align 4
@cxusb_lgh064f_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.94, ptr @.str.2, i32 742, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cxusb_lgh064f_tuner_attach\00", [37 x i8] zeroinitializer }, align 32
@cxusb_lgh064f_tuner_attach._entry_ptr = internal global ptr @cxusb_lgh064f_tuner_attach._entry, section ".printk_index", align 4
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-dvico-mce\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DViCO FusionHDTV DVB-T Dual USB\00", [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DigitalNow DVB-T Dual USB\00", [38 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DViCO FusionHDTV DVB-T Dual Digital 2\00", [58 x i8] zeroinitializer }, align 32
@cxusb_bluebird_dee1601_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [9 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [9 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 0, ptr @bluebird_patch_dvico_firmware_download, ptr @.str.83, i32 0, i32 196, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @cxusb_streaming_ctrl, ptr null, ptr null, ptr @cxusb_dee1601_frontend_attach, ptr @cxusb_dee1601_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 5, i32 4, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 8192 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @cxusb_bluebird_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.95, i64 0, i64 512, i32 0, ptr null, ptr @.str.46, ptr @cxusb_rc_query, i32 100, i8 0, i32 0 } }, ptr @cxusb_i2c_algo, i32 1, i32 0, i32 3, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [9 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.96, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 72), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 96), [14 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.97, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 216), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 240), [14 x ptr] zeroinitializer }> }, { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.98, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 264), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 288), [14 x ptr] zeroinitializer }> }, [9 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@cxusb_dee1601_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.100, ptr @.str.2, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cxusb_dee1601_frontend_attach\00", [34 x i8] zeroinitializer }, align 32
@cxusb_dee1601_frontend_attach._entry_ptr = internal global ptr @cxusb_dee1601_frontend_attach._entry, section ".printk_index", align 4
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt352_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:mt352_attach\00", [44 x i8] zeroinitializer }, align 32
@cxusb_dee1601_config = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 0, i32 0, ptr @cxusb_dee1601_demod_init }, [44 x i8] zeroinitializer }, align 32
@cxusb_dee1601_frontend_attach._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.100, ptr @.str.2, i32 975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol mt352_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@cxusb_dee1601_frontend_attach._entry_ptr.105 = internal global ptr @cxusb_dee1601_frontend_attach._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@cxusb_zl10353_dee1601_config = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 0, i32 0, i32 1, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@cxusb_dee1601_frontend_attach._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.100, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@cxusb_dee1601_frontend_attach._entry_ptr.110 = internal global ptr @cxusb_dee1601_frontend_attach._entry.108, section ".printk_index", align 4
@cxusb_dee1601_demod_init.clock_config = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\898(", [29 x i8] zeroinitializer }, align 32
@cxusb_dee1601_demod_init.reset = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@cxusb_dee1601_demod_init.adc_ctl_1_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@cxusb_dee1601_demod_init.agc_cfg = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"g( ", [29 x i8] zeroinitializer }, align 32
@cxusb_dee1601_demod_init.gpp_ctl_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8C3", [30 x i8] zeroinitializer }, align 32
@cxusb_dee1601_demod_init.capt_range_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"u2", [30 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@cxusb_dee1601_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cxusb_dee1601_tuner_attach\00", [37 x i8] zeroinitializer }, align 32
@cxusb_dee1601_tuner_attach._entry_ptr = internal global ptr @cxusb_dee1601_tuner_attach._entry, section ".printk_index", align 4
@.str.115 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DViCO FusionHDTV DVB-T USB (LGZ201)\00", [60 x i8] zeroinitializer }, align 32
@cxusb_bluebird_lgz201_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 0, ptr @bluebird_patch_dvico_firmware_download, ptr @.str.83, i32 0, i32 196, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @cxusb_streaming_ctrl, ptr null, ptr null, ptr @cxusb_mt352_frontend_attach, ptr @cxusb_lgz201_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 5, i32 4, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 8192 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @cxusb_bluebird_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.84, i64 0, i64 512, i32 0, ptr null, ptr @.str.46, ptr @cxusb_rc_query, i32 100, i8 0, i32 0 } }, ptr @cxusb_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.115, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 120), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 144), [14 x ptr] zeroinitializer }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@cxusb_mt352_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.117, ptr @.str.2, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cxusb_mt352_frontend_attach\00", [36 x i8] zeroinitializer }, align 32
@cxusb_mt352_frontend_attach._entry_ptr = internal global ptr @cxusb_mt352_frontend_attach._entry, section ".printk_index", align 4
@cxusb_mt352_config = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 0, i32 0, ptr @cxusb_mt352_demod_init }, [44 x i8] zeroinitializer }, align 32
@cxusb_mt352_frontend_attach._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.117, ptr @.str.2, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxusb_mt352_frontend_attach._entry_ptr.119 = internal global ptr @cxusb_mt352_frontend_attach._entry.118, section ".printk_index", align 4
@cxusb_mt352_demod_init.clock_config = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\898)", [29 x i8] zeroinitializer }, align 32
@cxusb_mt352_demod_init.reset = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@cxusb_mt352_demod_init.adc_ctl_1_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@cxusb_mt352_demod_init.agc_cfg = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"g$ ", [29 x i8] zeroinitializer }, align 32
@cxusb_mt352_demod_init.gpp_ctl_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8C3", [30 x i8] zeroinitializer }, align 32
@cxusb_mt352_demod_init.capt_range_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"u2", [30 x i8] zeroinitializer }, align 32
@cxusb_lgz201_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.120, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxusb_lgz201_tuner_attach\00", [38 x i8] zeroinitializer }, align 32
@cxusb_lgz201_tuner_attach._entry_ptr = internal global ptr @cxusb_lgz201_tuner_attach._entry, section ".printk_index", align 4
@.str.121 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DViCO FusionHDTV DVB-T USB (TH7579)\00", [60 x i8] zeroinitializer }, align 32
@cxusb_bluebird_dtt7579_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 0, ptr @bluebird_patch_dvico_firmware_download, ptr @.str.83, i32 0, i32 196, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @cxusb_streaming_ctrl, ptr null, ptr null, ptr @cxusb_mt352_frontend_attach, ptr @cxusb_dtt7579_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 5, i32 4, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 8192 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @cxusb_bluebird_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.84, i64 0, i64 512, i32 0, ptr null, ptr @.str.46, ptr @cxusb_rc_query, i32 100, i8 0, i32 0 } }, ptr @cxusb_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.121, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 168), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 192), [14 x ptr] zeroinitializer }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@cxusb_dtt7579_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.123, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cxusb_dtt7579_tuner_attach\00", [37 x i8] zeroinitializer }, align 32
@cxusb_dtt7579_tuner_attach._entry_ptr = internal global ptr @cxusb_dtt7579_tuner_attach._entry, section ".printk_index", align 4
@.str.124 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DViCO FusionHDTV DVB-T Dual Digital 4\00", [58 x i8] zeroinitializer }, align 32
@cxusb_bluebird_dualdig4_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 3, ptr null, ptr null, i32 0, i32 196, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @cxusb_streaming_ctrl, ptr null, ptr null, ptr @cxusb_dualdig4_frontend_attach, ptr @cxusb_dvico_xc3028_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 5, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 8192 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @cxusb_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.95, i64 0, i64 512, i32 0, ptr null, ptr @.str.46, ptr @cxusb_bluebird2_rc_query, i32 100, i8 0, i32 0 } }, ptr @cxusb_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.124, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 312), [14 x ptr] zeroinitializer }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@cxusb_dualdig4_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.126, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cxusb_dualdig4_frontend_attach\00", [33 x i8] zeroinitializer }, align 32
@cxusb_dualdig4_frontend_attach._entry_ptr = internal global ptr @cxusb_dualdig4_frontend_attach._entry, section ".printk_index", align 4
@cxusb_zl10353_xc3028_config_no_i2c_gate = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 45600, i32 1, i32 1, i8 -128, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@cxusb_dualdig4_frontend_attach._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.126, ptr @.str.2, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxusb_dualdig4_frontend_attach._entry_ptr.128 = internal global ptr @cxusb_dualdig4_frontend_attach._entry.127, section ".printk_index", align 4
@cxusb_dualdig4_frontend_attach._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.126, ptr @.str.2, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cxusb: No IR receiver detected on this device.\0A\00", [46 x i8] zeroinitializer }, align 32
@cxusb_dualdig4_frontend_attach._entry_ptr.131 = internal global ptr @cxusb_dualdig4_frontend_attach._entry.129, section ".printk_index", align 4
@cxusb_bluebird_gpio_rw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 142, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bluebird_gpio_write failed.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxusb_bluebird_gpio_rw\00", [41 x i8] zeroinitializer }, align 32
@cxusb_bluebird_gpio_rw._entry_ptr = internal global ptr @cxusb_bluebird_gpio_rw._entry, section ".printk_index", align 4
@cxusb_dvico_xc3028_tuner_attach.ctl = internal global { %struct.xc2028_ctrl, [36 x i8] } { %struct.xc2028_ctrl { ptr @.str.134, i32 64, i32 0, i32 0, i8 0, i32 4560, i8 0 }, [36 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc3028-v27.fw\00", [18 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc2028_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc2028_attach\00", [43 x i8] zeroinitializer }, align 32
@cxusb_dvico_xc3028_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc2028_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cxusb_dvico_xc3028_tuner_attach\00", [32 x i8] zeroinitializer }, align 32
@cxusb_dvico_xc3028_tuner_attach._entry_ptr = internal global ptr @cxusb_dvico_xc3028_tuner_attach._entry, section ".printk_index", align 4
@dvico_bluebird_xc2028_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 754, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"XC2028_TUNER_RESET %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dvico_bluebird_xc2028_callback\00", [33 x i8] zeroinitializer }, align 32
@dvico_bluebird_xc2028_callback._entry_ptr = internal global ptr @dvico_bluebird_xc2028_callback._entry, section ".printk_index", align 4
@dvico_bluebird_xc2028_callback._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 758, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"XC2028_RESET_CLK %d\0A\00", [43 x i8] zeroinitializer }, align 32
@dvico_bluebird_xc2028_callback._entry_ptr.143 = internal global ptr @dvico_bluebird_xc2028_callback._entry.141, section ".printk_index", align 4
@dvico_bluebird_xc2028_callback._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.2, i32 764, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unknown command %d, arg %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dvico_bluebird_xc2028_callback._entry_ptr.146 = internal global ptr @dvico_bluebird_xc2028_callback._entry.144, section ".printk_index", align 4
@.str.147 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DViCO FusionHDTV DVB-T NANO2\00", [35 x i8] zeroinitializer }, align 32
@cxusb_bluebird_nano2_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 3, ptr null, ptr null, i32 0, i32 196, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @cxusb_streaming_ctrl, ptr null, ptr null, ptr @cxusb_nano2_frontend_attach, ptr @cxusb_dvico_xc3028_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 5, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 8192 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @cxusb_nano2_power_ctrl, ptr null, ptr @bluebird_fx2_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.84, i64 0, i64 512, i32 0, ptr null, ptr @.str.46, ptr @cxusb_bluebird2_rc_query, i32 100, i8 0, i32 0 } }, ptr @cxusb_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.147, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 336), [14 x ptr] zeroinitializer }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@cxusb_nano2_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.149, ptr @.str.2, i32 1213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cxusb_nano2_frontend_attach\00", [36 x i8] zeroinitializer }, align 32
@cxusb_nano2_frontend_attach._entry_ptr = internal global ptr @cxusb_nano2_frontend_attach._entry, section ".printk_index", align 4
@cxusb_zl10353_xc3028_config = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 45600, i32 1, i32 1, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@cxusb_nano2_frontend_attach._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.149, ptr @.str.2, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxusb_nano2_frontend_attach._entry_ptr.151 = internal global ptr @cxusb_nano2_frontend_attach._entry.150, section ".printk_index", align 4
@cxusb_mt352_xc3028_config = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 4560, i32 1, ptr @cxusb_mt352_demod_init }, [44 x i8] zeroinitializer }, align 32
@cxusb_nano2_frontend_attach._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.149, ptr @.str.2, i32 1230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxusb_nano2_frontend_attach._entry_ptr.153 = internal global ptr @cxusb_nano2_frontend_attach._entry.152, section ".printk_index", align 4
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-usb-bluebird-02.fw\00", [41 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DViCO FusionHDTV DVB-T NANO2 w/o firmware\00", [54 x i8] zeroinitializer }, align 32
@cxusb_bluebird_nano2_needsfirmware_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 0, ptr @bluebird_patch_dvico_firmware_download, ptr @.str.154, i32 0, i32 196, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @cxusb_streaming_ctrl, ptr null, ptr null, ptr @cxusb_nano2_frontend_attach, ptr @cxusb_dvico_xc3028_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 5, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 8192 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @cxusb_nano2_power_ctrl, ptr null, ptr @bluebird_fx2_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.84, i64 0, i64 512, i32 0, ptr null, ptr @.str.46, ptr @cxusb_rc_query, i32 100, i8 0, i32 0 } }, ptr @cxusb_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.155, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 336), [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 360), [14 x ptr] zeroinitializer }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AVerMedia AVerTVHD Volar (A868R)\00", [63 x i8] zeroinitializer }, align 32
@cxusb_aver_a868r_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 3, ptr null, ptr null, i32 0, i32 196, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @cxusb_aver_streaming_ctrl, ptr null, ptr null, ptr @cxusb_aver_lgdt3303_frontend_attach, ptr @cxusb_mxl5003s_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 5, i32 4, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 8192 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @cxusb_aver_power_ctrl, ptr null, ptr null, %struct.anon.134 zeroinitializer, ptr @cxusb_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.157, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 384), [14 x ptr] zeroinitializer }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@cxusb_aver_lgdt3303_config = internal global { %struct.lgdt330x_config, [40 x i8] } { %struct.lgdt330x_config { i32 2, i32 0, ptr null, ptr null, i32 2, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxusb_aver_lgdt3303_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.159, ptr @.str.2, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cxusb_aver_lgdt3303_frontend_attach\00", [60 x i8] zeroinitializer }, align 32
@cxusb_aver_lgdt3303_frontend_attach._entry_ptr = internal global ptr @cxusb_aver_lgdt3303_frontend_attach._entry, section ".printk_index", align 4
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxl5005s_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:mxl5005s_attach\00", [41 x i8] zeroinitializer }, align 32
@aver_a868r_tuner = internal global { %struct.mxl5005s_config, [32 x i8] } { %struct.mxl5005s_config { i8 99, i32 6000000, i32 16000000, i8 1, i8 2, i8 1, i8 1, i8 1, i8 0, i32 200, i32 252, i8 1, i8 0, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@cxusb_mxl5003s_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.2, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol mxl5005s_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cxusb_mxl5003s_tuner_attach\00", [36 x i8] zeroinitializer }, align 32
@cxusb_mxl5003s_tuner_attach._entry_ptr = internal global ptr @cxusb_mxl5003s_tuner_attach._entry, section ".printk_index", align 4
@cxusb_aver_power_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.164, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxusb_aver_power_ctrl\00", [42 x i8] zeroinitializer }, align 32
@cxusb_aver_power_ctrl._entry_ptr = internal global ptr @cxusb_aver_power_ctrl._entry, section ".printk_index", align 4
@cxusb_aver_power_ctrl.bufs = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\0E\02\00\7F\0E\02\02\FE\0E\02\02\01\0E\02\00\03\0E\02\0D@\0E\02\0E\87\0E\02\0F\8E\0E\02\10\01\0E\02\14\D7\0E\02G\88", [56 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DViCO FusionHDTV DVB-T Dual Digital 4 (rev 2)\00", [50 x i8] zeroinitializer }, align 32
@cxusb_bluebird_dualdig4_rev2_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 3, ptr null, ptr null, i32 0, i32 196, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 68, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @cxusb_streaming_ctrl, ptr null, ptr null, ptr @cxusb_dualdig4_rev2_frontend_attach, ptr @cxusb_dualdig4_rev2_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 7, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @cxusb_bluebird_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.95, i64 0, i64 512, i32 0, ptr null, ptr @.str.46, ptr @cxusb_rc_query, i32 100, i8 0, i32 0 } }, ptr @cxusb_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.165, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 408), [14 x ptr] zeroinitializer }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@cxusb_dualdig4_rev2_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.167, ptr @.str.2, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cxusb_dualdig4_rev2_frontend_attach\00", [60 x i8] zeroinitializer }, align 32
@cxusb_dualdig4_rev2_frontend_attach._entry_ptr = internal global ptr @cxusb_dualdig4_rev2_frontend_attach._entry, section ".printk_index", align 4
@.str.168 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dib7000p_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:dib7000p_attach\00", [41 x i8] zeroinitializer }, align 32
@cxusb_dualdig4_rev2_frontend_attach._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.167, ptr @.str.2, i32 1126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol dib7000p_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@cxusb_dualdig4_rev2_frontend_attach._entry_ptr.172 = internal global ptr @cxusb_dualdig4_rev2_frontend_attach._entry.170, section ".printk_index", align 4
@cxusb_dualdig4_rev2_config = internal global { %struct.dib7000p_config, [52 x i8] } { %struct.dib7000p_config { i8 1, i8 1, i8 1, ptr null, i8 1, ptr @dib7070_agc_config, ptr @dib7070_bw_config_12_mhz, i16 -785, i16 272, i16 -1, i16 0, i8 0, i8 1, ptr null, i8 1, i8 0, i16 0, i8 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@cxusb_dualdig4_rev2_frontend_attach._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.167, ptr @.str.2, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014Unable to enumerate dib7000p\0A\00", [32 x i8] zeroinitializer }, align 32
@cxusb_dualdig4_rev2_frontend_attach._entry_ptr.175 = internal global ptr @cxusb_dualdig4_rev2_frontend_attach._entry.173, section ".printk_index", align 4
@dib7070_agc_config = internal global { %struct.dibx000_agc_config, [48 x i8] } { %struct.dibx000_agc_config { i8 15, i16 10346, i16 600, i16 10, i8 0, i16 118, i8 0, i16 3530, i8 1, i8 5, i16 -1, i16 0, i16 -1, i16 0, i8 0, i8 40, i8 -73, i8 -50, i8 -1, i8 72, i8 -104, i8 88, i8 90, i8 17, i8 27, i8 23, i8 51, i8 0, %struct.anon.150 zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@dib7070_bw_config_12_mhz = internal global { %struct.dibx000_bandwidth_config, [32 x i8] } { %struct.dibx000_bandwidth_config { i32 60000, i32 15000, i8 1, i8 20, i8 3, i8 1, i8 0, i8 0, i8 0, i8 1, i8 1, i8 2, i16 -11764, i32 0, i32 20452225, i32 12000000 }, [32 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dib0070_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dib0070_attach\00", [42 x i8] zeroinitializer }, align 32
@dib7070p_dib0070_config = internal global { %struct.dib0070_config, [52 x i8] } { %struct.dib0070_config { i8 96, ptr @dib7070_tuner_reset, ptr @dib7070_tuner_sleep, i32 0, i32 0, i8 0, i32 12000, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@cxusb_dualdig4_rev2_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.2, i32 1202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dib0070_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cxusb_dualdig4_rev2_tuner_attach\00", [63 x i8] zeroinitializer }, align 32
@cxusb_dualdig4_rev2_tuner_attach._entry_ptr = internal global ptr @cxusb_dualdig4_rev2_tuner_attach._entry, section ".printk_index", align 4
@.str.180 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rc-total-media-in-hand-02\00", [38 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Conexant DMB-TH Stick\00", [42 x i8] zeroinitializer }, align 32
@cxusb_d680_dmb_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 3, ptr null, ptr null, i32 0, i32 196, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @cxusb_d680_dmb_streaming_ctrl, ptr null, ptr null, ptr @cxusb_d680_dmb_frontend_attach, ptr @cxusb_d680_dmb_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 5, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 8192 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @cxusb_d680_dmb_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.180, i64 0, i64 1, i32 0, ptr null, ptr @.str.46, ptr @cxusb_d680_dmb_rc_query, i32 100, i8 0, i32 0 } }, ptr @cxusb_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.181, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 432), [14 x ptr] zeroinitializer }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cxusb_d680_dmb_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.183, ptr @.str.2, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cxusb_d680_dmb_frontend_attach\00", [33 x i8] zeroinitializer }, align 32
@cxusb_d680_dmb_frontend_attach._entry_ptr = internal global ptr @cxusb_d680_dmb_frontend_attach._entry, section ".printk_index", align 4
@cxusb_d680_dmb_frontend_attach._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.183, ptr @.str.2, i32 1280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cxusb: clear tuner gpio failed\0A\00", [62 x i8] zeroinitializer }, align 32
@cxusb_d680_dmb_frontend_attach._entry_ptr.186 = internal global ptr @cxusb_d680_dmb_frontend_attach._entry.184, section ".printk_index", align 4
@cxusb_d680_dmb_frontend_attach._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.183, ptr @.str.2, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013cxusb: set tuner gpio failed\0A\00", [32 x i8] zeroinitializer }, align 32
@cxusb_d680_dmb_frontend_attach._entry_ptr.189 = internal global ptr @cxusb_d680_dmb_frontend_attach._entry.187, section ".printk_index", align 4
@.str.190 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lgs8gxx_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:lgs8gxx_attach\00", [42 x i8] zeroinitializer }, align 32
@d680_lgs8gl5_cfg = internal global { %struct.lgs8gxx_config, [40 x i8] } { %struct.lgs8gxx_config { i8 1, i8 25, i8 0, i8 0, i8 1, i32 30400, i32 5725, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@cxusb_d680_dmb_frontend_attach._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.183, ptr @.str.2, i32 1292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol lgs8gxx_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@cxusb_d680_dmb_frontend_attach._entry_ptr.194 = internal global ptr @cxusb_d680_dmb_frontend_attach._entry.192, section ".printk_index", align 4
@cxusb_d680_dmb_gpio_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.195, ptr @.str.2, i32 174, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxusb_d680_dmb_gpio_tuner\00", [38 x i8] zeroinitializer }, align 32
@cxusb_d680_dmb_gpio_tuner._entry_ptr = internal global ptr @cxusb_d680_dmb_gpio_tuner._entry, section ".printk_index", align 4
@d680_dmb_tuner = internal global { %struct.mxl5005s_config, [32 x i8] } { %struct.mxl5005s_config { i8 99, i32 36125000, i32 16000000, i8 1, i8 2, i8 1, i8 1, i8 1, i8 0, i32 200, i32 252, i8 1, i8 0, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@cxusb_d680_dmb_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.196, ptr @.str.2, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cxusb_d680_dmb_tuner_attach\00", [36 x i8] zeroinitializer }, align 32
@cxusb_d680_dmb_tuner_attach._entry_ptr = internal global ptr @cxusb_d680_dmb_tuner_attach._entry, section ".printk_index", align 4
@.str.197 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc-d680-dmb\00", [20 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mygica D689 DMB-TH\00", [45 x i8] zeroinitializer }, align 32
@cxusb_mygica_d689_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 3, ptr null, ptr null, i32 0, i32 196, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @cxusb_d680_dmb_streaming_ctrl, ptr null, ptr null, ptr @cxusb_mygica_d689_frontend_attach, ptr @cxusb_mygica_d689_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 5, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 8192 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @cxusb_d680_dmb_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.197, i64 0, i64 1, i32 0, ptr null, ptr @.str.46, ptr @cxusb_d680_dmb_rc_query, i32 100, i8 0, i32 0 } }, ptr @cxusb_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] }> <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.198, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @cxusb_table, i64 456), [14 x ptr] zeroinitializer }> }, [11 x { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@cxusb_mygica_d689_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.200, ptr @.str.2, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cxusb_mygica_d689_frontend_attach\00", [62 x i8] zeroinitializer }, align 32
@cxusb_mygica_d689_frontend_attach._entry_ptr = internal global ptr @cxusb_mygica_d689_frontend_attach._entry, section ".printk_index", align 4
@cxusb_mygica_d689_frontend_attach._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.200, ptr @.str.2, i32 1334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxusb_mygica_d689_frontend_attach._entry_ptr.202 = internal global ptr @cxusb_mygica_d689_frontend_attach._entry.201, section ".printk_index", align 4
@cxusb_mygica_d689_frontend_attach._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.200, ptr @.str.2, i32 1339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxusb_mygica_d689_frontend_attach._entry_ptr.204 = internal global ptr @cxusb_mygica_d689_frontend_attach._entry.203, section ".printk_index", align 4
@.str.205 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atbm8830_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:atbm8830_attach\00", [41 x i8] zeroinitializer }, align 32
@mygica_d689_atbm8830_cfg = internal global { %struct.atbm8830_config, [44 x i8] } { %struct.atbm8830_config { i8 0, i8 64, i8 0, i8 0, i8 1, i32 30400, i32 0, i8 1, i8 46, i8 -112, i8 0 }, [44 x i8] zeroinitializer }, align 32
@cxusb_mygica_d689_frontend_attach._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.200, ptr @.str.2, i32 1347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol atbm8830_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@cxusb_mygica_d689_frontend_attach._entry_ptr.209 = internal global ptr @cxusb_mygica_d689_frontend_attach._entry.207, section ".printk_index", align 4
@.str.210 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max2165_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:max2165_attach\00", [42 x i8] zeroinitializer }, align 32
@mygica_d689_max2165_cfg = internal global { %struct.max2165_config, [30 x i8] } { %struct.max2165_config { i8 96, i8 20 }, [30 x i8] zeroinitializer }, align 32
@cxusb_mygica_d689_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol max2165_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cxusb_mygica_d689_tuner_attach\00", [33 x i8] zeroinitializer }, align 32
@cxusb_mygica_d689_tuner_attach._entry_ptr = internal global ptr @cxusb_mygica_d689_tuner_attach._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c"dvb_usb_cxusb_debug\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 50, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 90, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 95, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1444, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1451, i32 6 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1465, i32 6 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1476, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1484, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1511, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [13 x i8] c"cxusb_driver\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2429, i32 26 }
@___asan_gen_.295 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 55, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 299, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 850, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 858, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 868, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 874, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 881, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2436, i32 1 }
@___asan_gen_.352 = private unnamed_addr constant [12 x i8] c"cxusb_table\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1695, i32 29 }
@___asan_gen_.355 = private unnamed_addr constant [15 x i8] c"cxusb_i2c_algo\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 290, i32 29 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1803, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant [24 x i8] c"cxusb_medion_properties\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1763, i32 41 }
@___asan_gen_.364 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1540, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [21 x i8] c"cxusb_cx22702_config\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 604, i32 30 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 910, i32 24 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 704, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 318, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 205, i32 5 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 216, i32 5 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 226, i32 5 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 232, i32 5 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 248, i32 5 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 258, i32 5 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 271, i32 5 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 125, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1577, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1592, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1814, i32 23 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1853, i32 15 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1863, i32 7 }
@___asan_gen_.478 = private unnamed_addr constant [34 x i8] c"cxusb_bluebird_lgh064f_properties\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1810, i32 41 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 925, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant [22 x i8] c"cxusb_lgdt3303_config\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 609, i32 31 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 929, i32 24 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 741, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1912, i32 15 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1922, i32 7 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1926, i32 7 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1930, i32 7 }
@___asan_gen_.523 = private unnamed_addr constant [34 x i8] c"cxusb_bluebird_dee1601_properties\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1870, i32 41 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 970, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant [21 x i8] c"cxusb_dee1601_config\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 618, i32 28 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 974, i32 24 }
@___asan_gen_.553 = private unnamed_addr constant [29 x i8] c"cxusb_zl10353_dee1601_config\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 623, i32 30 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 979, i32 24 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 564, i32 12 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 565, i32 12 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 566, i32 12 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 567, i32 12 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 568, i32 12 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 569, i32 12 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 720, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1988, i32 7 }
@___asan_gen_.598 = private unnamed_addr constant [33 x i8] c"cxusb_bluebird_lgz201_properties\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1937, i32 41 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 955, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant [19 x i8] c"cxusb_mt352_config\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 628, i32 28 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 959, i32 24 }
@___asan_gen_.613 = private unnamed_addr constant [13 x i8] c"clock_config\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 586, i32 12 }
@___asan_gen_.616 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 587, i32 12 }
@___asan_gen_.619 = private unnamed_addr constant [14 x i8] c"adc_ctl_1_cfg\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 588, i32 12 }
@___asan_gen_.622 = private unnamed_addr constant [8 x i8] c"agc_cfg\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 589, i32 12 }
@___asan_gen_.625 = private unnamed_addr constant [12 x i8] c"gpp_ctl_cfg\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 590, i32 12 }
@___asan_gen_.628 = private unnamed_addr constant [15 x i8] c"capt_range_cfg\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 591, i32 12 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 727, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2048, i32 7 }
@___asan_gen_.640 = private unnamed_addr constant [34 x i8] c"cxusb_bluebird_dtt7579_properties\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1995, i32 41 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 734, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2101, i32 7 }
@___asan_gen_.652 = private unnamed_addr constant [35 x i8] c"cxusb_bluebird_dualdig4_properties\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2055, i32 41 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1000, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant [40 x i8] c"cxusb_zl10353_xc3028_config_no_i2c_gate\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 641, i32 30 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1010, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1026, i32 4 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 142, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant [4 x i8] c"ctl\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 778, i32 28 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 779, i32 18 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 787, i32 7 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 754, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 758, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 763, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2155, i32 7 }
@___asan_gen_.727 = private unnamed_addr constant [32 x i8] c"cxusb_bluebird_nano2_properties\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2108, i32 41 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1213, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant [28 x i8] c"cxusb_zl10353_xc3028_config\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 634, i32 30 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1222, i32 24 }
@___asan_gen_.742 = private unnamed_addr constant [26 x i8] c"cxusb_mt352_xc3028_config\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 649, i32 28 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1228, i32 24 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2167, i32 23 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2212, i32 4 }
@___asan_gen_.754 = private unnamed_addr constant [46 x i8] c"cxusb_bluebird_nano2_needsfirmware_properties\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2163, i32 1 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2257, i32 7 }
@___asan_gen_.760 = private unnamed_addr constant [28 x i8] c"cxusb_aver_a868r_properties\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2220, i32 41 }
@___asan_gen_.763 = private unnamed_addr constant [27 x i8] c"cxusb_aver_lgdt3303_config\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 613, i32 31 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 941, i32 24 }
@___asan_gen_.778 = private unnamed_addr constant [17 x i8] c"aver_a868r_tuner\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 657, i32 31 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 798, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 344, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant [5 x i8] c"bufs\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 358, i32 19 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2312, i32 7 }
@___asan_gen_.802 = private unnamed_addr constant [40 x i8] c"cxusb_bluebird_dualdig4_rev2_properties\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2265, i32 34 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1120, i32 3 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1126, i32 7 }
@___asan_gen_.823 = private unnamed_addr constant [27 x i8] c"cxusb_dualdig4_rev2_config\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1092, i32 31 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1131, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant [19 x i8] c"dib7070_agc_config\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1034, i32 34 }
@___asan_gen_.835 = private unnamed_addr constant [25 x i8] c"dib7070_bw_config_12_mhz\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1072, i32 40 }
@___asan_gen_.844 = private unnamed_addr constant [24 x i8] c"dib7070p_dib0070_config\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1157, i32 30 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1201, i32 6 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2358, i32 15 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2367, i32 4 }
@___asan_gen_.862 = private unnamed_addr constant [26 x i8] c"cxusb_d680_dmb_properties\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2319, i32 41 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1258, i32 3 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1280, i32 3 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1285, i32 3 }
@___asan_gen_.889 = private unnamed_addr constant [17 x i8] c"d680_lgs8gl5_cfg\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1237, i32 30 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1291, i32 24 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 174, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant [15 x i8] c"d680_dmb_tuner\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 675, i32 31 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 807, i32 7 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2413, i32 15 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2422, i32 4 }
@___asan_gen_.919 = private unnamed_addr constant [29 x i8] c"cxusb_mygica_d689_properties\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 2374, i32 41 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1319, i32 3 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1334, i32 3 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1339, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant [25 x i8] c"mygica_d689_atbm8830_cfg\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1299, i32 31 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 1345, i32 24 }
@___asan_gen_.955 = private unnamed_addr constant [24 x i8] c"mygica_d689_max2165_cfg\00", align 1
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 692, i32 30 }
@___asan_gen_.958 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.964 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.965 = private constant [37 x i8] c"../drivers/media/usb/dvb-usb/cxusb.c\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.965, i32 816, i32 7 }
@llvm.compiler.used = appending global [334 x ptr] [ptr @__UNIQUE_ID_adapter_nr391, ptr @__UNIQUE_ID_adapter_nrtype390, ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_author394, ptr @__UNIQUE_ID_author395, ptr @__UNIQUE_ID_author396, ptr @__UNIQUE_ID_debug389, ptr @__UNIQUE_ID_debugtype388, ptr @__UNIQUE_ID_description397, ptr @__UNIQUE_ID_file398, ptr @__UNIQUE_ID_license399, ptr @__exitcall_cxusb_driver_exit, ptr @__initcall__kmod_dvb_usb_cxusb__392_2436_cxusb_driver_init6, ptr @__param_adapter_nr, ptr @__param_debug, ptr @_cxusb_power_ctrl._entry, ptr @_cxusb_power_ctrl._entry_ptr, ptr @cxusb_aver_lgdt3303_frontend_attach._entry, ptr @cxusb_aver_lgdt3303_frontend_attach._entry_ptr, ptr @cxusb_aver_power_ctrl._entry, ptr @cxusb_aver_power_ctrl._entry_ptr, ptr @cxusb_bluebird_gpio_rw._entry, ptr @cxusb_bluebird_gpio_rw._entry_ptr, ptr @cxusb_ctrl_msg._entry, ptr @cxusb_ctrl_msg._entry.3, ptr @cxusb_ctrl_msg._entry_ptr, ptr @cxusb_ctrl_msg._entry_ptr.5, ptr @cxusb_cx22702_frontend_attach._entry, ptr @cxusb_cx22702_frontend_attach._entry_ptr, ptr @cxusb_d680_dmb_frontend_attach._entry, ptr @cxusb_d680_dmb_frontend_attach._entry.184, ptr @cxusb_d680_dmb_frontend_attach._entry.187, ptr @cxusb_d680_dmb_frontend_attach._entry.192, ptr @cxusb_d680_dmb_frontend_attach._entry_ptr, ptr @cxusb_d680_dmb_frontend_attach._entry_ptr.186, ptr @cxusb_d680_dmb_frontend_attach._entry_ptr.189, ptr @cxusb_d680_dmb_frontend_attach._entry_ptr.194, ptr @cxusb_d680_dmb_gpio_tuner._entry, ptr @cxusb_d680_dmb_gpio_tuner._entry_ptr, ptr @cxusb_d680_dmb_tuner_attach._entry, ptr @cxusb_d680_dmb_tuner_attach._entry_ptr, ptr @cxusb_dee1601_frontend_attach._entry, ptr @cxusb_dee1601_frontend_attach._entry.103, ptr @cxusb_dee1601_frontend_attach._entry.108, ptr @cxusb_dee1601_frontend_attach._entry_ptr, ptr @cxusb_dee1601_frontend_attach._entry_ptr.105, ptr @cxusb_dee1601_frontend_attach._entry_ptr.110, ptr @cxusb_dee1601_tuner_attach._entry, ptr @cxusb_dee1601_tuner_attach._entry_ptr, ptr @cxusb_driver_exit, ptr @cxusb_dtt7579_tuner_attach._entry, ptr @cxusb_dtt7579_tuner_attach._entry_ptr, ptr @cxusb_dualdig4_frontend_attach._entry, ptr @cxusb_dualdig4_frontend_attach._entry.127, ptr @cxusb_dualdig4_frontend_attach._entry.129, ptr @cxusb_dualdig4_frontend_attach._entry_ptr, ptr @cxusb_dualdig4_frontend_attach._entry_ptr.128, ptr @cxusb_dualdig4_frontend_attach._entry_ptr.131, ptr @cxusb_dualdig4_rev2_frontend_attach._entry, ptr @cxusb_dualdig4_rev2_frontend_attach._entry.170, ptr @cxusb_dualdig4_rev2_frontend_attach._entry.173, ptr @cxusb_dualdig4_rev2_frontend_attach._entry_ptr, ptr @cxusb_dualdig4_rev2_frontend_attach._entry_ptr.172, ptr @cxusb_dualdig4_rev2_frontend_attach._entry_ptr.175, ptr @cxusb_dualdig4_rev2_tuner_attach._entry, ptr @cxusb_dualdig4_rev2_tuner_attach._entry_ptr, ptr @cxusb_dvico_xc3028_tuner_attach._entry, ptr @cxusb_dvico_xc3028_tuner_attach._entry_ptr, ptr @cxusb_fmd1216me_tuner_attach._entry, ptr @cxusb_fmd1216me_tuner_attach._entry_ptr, ptr @cxusb_gpio_tuner._entry, ptr @cxusb_gpio_tuner._entry_ptr, ptr @cxusb_i2c_xfer._entry, ptr @cxusb_i2c_xfer._entry.61, ptr @cxusb_i2c_xfer._entry.64, ptr @cxusb_i2c_xfer._entry.66, ptr @cxusb_i2c_xfer._entry.68, ptr @cxusb_i2c_xfer._entry.71, ptr @cxusb_i2c_xfer._entry.73, ptr @cxusb_i2c_xfer._entry_ptr, ptr @cxusb_i2c_xfer._entry_ptr.63, ptr @cxusb_i2c_xfer._entry_ptr.65, ptr @cxusb_i2c_xfer._entry_ptr.67, ptr @cxusb_i2c_xfer._entry_ptr.70, ptr @cxusb_i2c_xfer._entry_ptr.72, ptr @cxusb_i2c_xfer._entry_ptr.75, ptr @cxusb_lgdt3303_frontend_attach._entry, ptr @cxusb_lgdt3303_frontend_attach._entry.91, ptr @cxusb_lgdt3303_frontend_attach._entry_ptr, ptr @cxusb_lgdt3303_frontend_attach._entry_ptr.93, ptr @cxusb_lgh064f_tuner_attach._entry, ptr @cxusb_lgh064f_tuner_attach._entry_ptr, ptr @cxusb_lgz201_tuner_attach._entry, ptr @cxusb_lgz201_tuner_attach._entry_ptr, ptr @cxusb_medion_check_intf._entry, ptr @cxusb_medion_check_intf._entry.80, ptr @cxusb_medion_check_intf._entry_ptr, ptr @cxusb_medion_check_intf._entry_ptr.82, ptr @cxusb_medion_get._entry, ptr @cxusb_medion_get._entry.12, ptr @cxusb_medion_get._entry.16, ptr @cxusb_medion_get._entry.19, ptr @cxusb_medion_get._entry.22, ptr @cxusb_medion_get._entry_ptr, ptr @cxusb_medion_get._entry_ptr.15, ptr @cxusb_medion_get._entry_ptr.18, ptr @cxusb_medion_get._entry_ptr.21, ptr @cxusb_medion_get._entry_ptr.24, ptr @cxusb_medion_put._entry, ptr @cxusb_medion_put._entry_ptr, ptr @cxusb_medion_set_mode._entry, ptr @cxusb_medion_set_mode._entry.34, ptr @cxusb_medion_set_mode._entry.37, ptr @cxusb_medion_set_mode._entry.40, ptr @cxusb_medion_set_mode._entry.43, ptr @cxusb_medion_set_mode._entry_ptr, ptr @cxusb_medion_set_mode._entry_ptr.36, ptr @cxusb_medion_set_mode._entry_ptr.39, ptr @cxusb_medion_set_mode._entry_ptr.42, ptr @cxusb_medion_set_mode._entry_ptr.45, ptr @cxusb_mt352_frontend_attach._entry, ptr @cxusb_mt352_frontend_attach._entry.118, ptr @cxusb_mt352_frontend_attach._entry_ptr, ptr @cxusb_mt352_frontend_attach._entry_ptr.119, ptr @cxusb_mxl5003s_tuner_attach._entry, ptr @cxusb_mxl5003s_tuner_attach._entry_ptr, ptr @cxusb_mygica_d689_frontend_attach._entry, ptr @cxusb_mygica_d689_frontend_attach._entry.201, ptr @cxusb_mygica_d689_frontend_attach._entry.203, ptr @cxusb_mygica_d689_frontend_attach._entry.207, ptr @cxusb_mygica_d689_frontend_attach._entry_ptr, ptr @cxusb_mygica_d689_frontend_attach._entry_ptr.202, ptr @cxusb_mygica_d689_frontend_attach._entry_ptr.204, ptr @cxusb_mygica_d689_frontend_attach._entry_ptr.209, ptr @cxusb_mygica_d689_tuner_attach._entry, ptr @cxusb_mygica_d689_tuner_attach._entry_ptr, ptr @cxusb_nano2_frontend_attach._entry, ptr @cxusb_nano2_frontend_attach._entry.150, ptr @cxusb_nano2_frontend_attach._entry.152, ptr @cxusb_nano2_frontend_attach._entry_ptr, ptr @cxusb_nano2_frontend_attach._entry_ptr.151, ptr @cxusb_nano2_frontend_attach._entry_ptr.153, ptr @cxusb_power_ctrl._entry, ptr @cxusb_power_ctrl._entry_ptr, ptr @dvico_bluebird_xc2028_callback._entry, ptr @dvico_bluebird_xc2028_callback._entry.141, ptr @dvico_bluebird_xc2028_callback._entry.144, ptr @dvico_bluebird_xc2028_callback._entry_ptr, ptr @dvico_bluebird_xc2028_callback._entry_ptr.143, ptr @dvico_bluebird_xc2028_callback._entry_ptr.146, ptr @dvb_usb_cxusb_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @cxusb_driver, ptr @adapter_nr, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @cxusb_table, ptr @cxusb_i2c_algo, ptr @.str.47, ptr @cxusb_medion_properties, ptr @cxusb_medion_priv_init.__key, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @cxusb_cx22702_config, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.69, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @cxusb_bluebird_lgh064f_properties, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @cxusb_lgdt3303_config, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @cxusb_bluebird_dee1601_properties, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @cxusb_dee1601_config, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @cxusb_zl10353_dee1601_config, ptr @.str.109, ptr @cxusb_dee1601_demod_init.clock_config, ptr @cxusb_dee1601_demod_init.reset, ptr @cxusb_dee1601_demod_init.adc_ctl_1_cfg, ptr @cxusb_dee1601_demod_init.agc_cfg, ptr @cxusb_dee1601_demod_init.gpp_ctl_cfg, ptr @cxusb_dee1601_demod_init.capt_range_cfg, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @cxusb_bluebird_lgz201_properties, ptr @.str.117, ptr @cxusb_mt352_config, ptr @cxusb_mt352_demod_init.clock_config, ptr @cxusb_mt352_demod_init.reset, ptr @cxusb_mt352_demod_init.adc_ctl_1_cfg, ptr @cxusb_mt352_demod_init.agc_cfg, ptr @cxusb_mt352_demod_init.gpp_ctl_cfg, ptr @cxusb_mt352_demod_init.capt_range_cfg, ptr @.str.120, ptr @.str.121, ptr @cxusb_bluebird_dtt7579_properties, ptr @.str.123, ptr @.str.124, ptr @cxusb_bluebird_dualdig4_properties, ptr @.str.126, ptr @cxusb_zl10353_xc3028_config_no_i2c_gate, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @cxusb_dvico_xc3028_tuner_attach.ctl, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @cxusb_bluebird_nano2_properties, ptr @.str.149, ptr @cxusb_zl10353_xc3028_config, ptr @cxusb_mt352_xc3028_config, ptr @.str.154, ptr @.str.155, ptr @cxusb_bluebird_nano2_needsfirmware_properties, ptr @.str.157, ptr @cxusb_aver_a868r_properties, ptr @cxusb_aver_lgdt3303_config, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @aver_a868r_tuner, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @cxusb_aver_power_ctrl.bufs, ptr @.str.165, ptr @cxusb_bluebird_dualdig4_rev2_properties, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @cxusb_dualdig4_rev2_config, ptr @.str.174, ptr @dib7070_agc_config, ptr @dib7070_bw_config_12_mhz, ptr @.str.176, ptr @.str.177, ptr @dib7070p_dib0070_config, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @cxusb_d680_dmb_properties, ptr @.str.183, ptr @.str.185, ptr @.str.188, ptr @.str.190, ptr @.str.191, ptr @d680_lgs8gl5_cfg, ptr @.str.193, ptr @.str.195, ptr @d680_dmb_tuner, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @cxusb_mygica_d689_properties, ptr @.str.200, ptr @.str.205, ptr @.str.206, ptr @mygica_d689_atbm8830_cfg, ptr @.str.208, ptr @.str.210, ptr @.str.211, ptr @mygica_d689_max2165_cfg, ptr @.str.212, ptr @.str.213], section "llvm.metadata"
@0 = internal global [251 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_cxusb_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_ctrl_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_ctrl_msg._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_get._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_get._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_get._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_get._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_cxusb_power_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_set_mode._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_set_mode._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_set_mode._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_set_mode._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_table to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_priv_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_cx22702_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_cx22702_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_fmd1216me_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_power_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_i2c_xfer._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_i2c_xfer._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_i2c_xfer._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_i2c_xfer._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_i2c_xfer._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_i2c_xfer._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_gpio_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_check_intf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_medion_check_intf._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_bluebird_lgh064f_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_lgdt3303_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_lgdt3303_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_lgdt3303_frontend_attach._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_lgh064f_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_bluebird_dee1601_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dee1601_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dee1601_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dee1601_frontend_attach._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_zl10353_dee1601_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dee1601_frontend_attach._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dee1601_demod_init.clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dee1601_demod_init.reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dee1601_demod_init.adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dee1601_demod_init.agc_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dee1601_demod_init.gpp_ctl_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dee1601_demod_init.capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dee1601_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_bluebird_lgz201_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mt352_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mt352_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mt352_frontend_attach._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mt352_demod_init.clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mt352_demod_init.reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mt352_demod_init.adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mt352_demod_init.agc_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mt352_demod_init.gpp_ctl_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mt352_demod_init.capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_lgz201_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_bluebird_dtt7579_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dtt7579_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_bluebird_dualdig4_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dualdig4_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_zl10353_xc3028_config_no_i2c_gate to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dualdig4_frontend_attach._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dualdig4_frontend_attach._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_bluebird_gpio_rw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dvico_xc3028_tuner_attach.ctl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dvico_xc3028_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_bluebird_xc2028_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_bluebird_xc2028_callback._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvico_bluebird_xc2028_callback._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_bluebird_nano2_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_nano2_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_zl10353_xc3028_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_nano2_frontend_attach._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mt352_xc3028_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_nano2_frontend_attach._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_bluebird_nano2_needsfirmware_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_aver_a868r_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_aver_lgdt3303_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_aver_lgdt3303_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aver_a868r_tuner to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mxl5003s_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_aver_power_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_aver_power_ctrl.bufs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_bluebird_dualdig4_rev2_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dualdig4_rev2_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dualdig4_rev2_frontend_attach._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dualdig4_rev2_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dualdig4_rev2_frontend_attach._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070_agc_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070_bw_config_12_mhz to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib7070p_dib0070_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_dualdig4_rev2_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_d680_dmb_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_d680_dmb_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_d680_dmb_frontend_attach._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_d680_dmb_frontend_attach._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d680_lgs8gl5_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_d680_dmb_frontend_attach._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_d680_dmb_gpio_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d680_dmb_tuner to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_d680_dmb_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mygica_d689_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mygica_d689_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mygica_d689_frontend_attach._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mygica_d689_frontend_attach._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mygica_d689_atbm8830_cfg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mygica_d689_frontend_attach._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mygica_d689_max2165_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxusb_mygica_d689_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxusb_ctrl_msg(ptr noundef %d, i8 noundef zeroext %cmd, ptr nocapture noundef readonly %wbuf, i32 noundef %wlen, ptr noundef writeonly %rbuf, i32 noundef %rlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add = add i32 %wlen, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %add)
  %cmp = icmp sgt i32 %add, 80
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %wlen) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %rlen)
  %cmp1 = icmp sgt i32 %rlen, 80
  br i1 %cmp1, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %rlen) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %data_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #9
  %data = getelementptr inbounds %struct.cxusb_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %cmd, ptr %data, align 4
  %arrayidx10 = getelementptr %struct.cxusb_state, ptr %1, i32 0, i32 4, i32 1
  %3 = call ptr @memcpy(ptr %arrayidx10, ptr %wbuf, i32 %wlen)
  %conv = trunc i32 %add to i16
  %conv15 = trunc i32 %rlen to i16
  %call16 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data, i16 noundef zeroext %conv, ptr noundef %data, i16 noundef zeroext %conv15, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp ne i32 %call16, 0
  %tobool17.not = icmp eq ptr %rbuf, null
  %or.cond = or i1 %tobool17.not, %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rlen)
  %tobool19.not = icmp eq i32 %rlen, 0
  %or.cond42 = or i1 %tobool19.not, %or.cond
  br i1 %or.cond42, label %if.end8.if.end23_crit_edge, label %if.then20

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %rbuf, ptr %data, i32 %rlen)
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end8.if.end23_crit_edge
  tail call void @mutex_unlock(ptr noundef %data_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end5, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ -95, %do.end5 ], [ %call16, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_generic_rw(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxusb_medion_get(ptr noundef %dvbdev, i32 noundef %open_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %open_lock = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #9
  %open_type1 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %open_type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_type1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %open_ctr = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %open_ctr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_ctr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %if.end25, label %do.end, !prof !494

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1432, i32 noundef 9, ptr noundef null) #9
  br label %ret_unlock

if.end25:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp27 = icmp eq i32 %3, 0
  br i1 %cmp27, label %if.end25.ret_unlock_crit_edge, label %if.end25.if.end29_crit_edge

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.end25.ret_unlock_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %ret_unlock

if.end29:                                         ; preds = %if.end25.if.end29_crit_edge, %entry.if.end29_crit_edge
  %open_ctr30 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %open_ctr30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %open_ctr30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp31 = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %open_type)
  %cmp34.not = icmp eq i32 %3, %open_type
  br i1 %cmp31, label %if.then32, label %if.else83

if.then32:                                        ; preds = %if.end29
  %udev77 = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 2
  %8 = ptrtoint ptr %udev77 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev77, align 4
  %dev78 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %open_type)
  %cmp79 = icmp eq i32 %open_type, 2
  %cond80 = select i1 %cmp79, ptr @.str.10, ptr @.str.11
  br i1 %cmp34.not, label %do.end76, label %do.end38

do.end38:                                         ; preds = %if.then32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev78, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond80) #12
  %call = tail call fastcc i32 @_cxusb_power_ctrl(ptr noundef %dvbdev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp42.not = icmp eq i32 %call, 0
  br i1 %cmp79, label %if.then41, label %if.else

if.then41:                                        ; preds = %do.end38
  br i1 %cmp42.not, label %if.then41.if.end49_crit_edge, label %do.end46

if.then41.if.end49_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

do.end46:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %udev77 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev77, align 4
  %dev48 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev48, ptr noundef nonnull @.str.13, i32 noundef %call) #12
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %if.then41.if.end49_crit_edge
  %call50 = tail call fastcc i32 @cxusb_medion_set_mode(ptr noundef %dvbdev, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51.not = icmp eq i32 %call50, 0
  br i1 %cmp51.not, label %if.end53, label %if.end49.ret_unlock_crit_edge

if.end49.ret_unlock_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %ret_unlock

if.end53:                                         ; preds = %if.end49
  %call54 = tail call i32 @cxusb_medion_analog_init(ptr noundef %dvbdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55.not = icmp eq i32 %call54, 0
  br i1 %cmp55.not, label %if.end53.if.end71_crit_edge, label %if.end53.ret_unlock_crit_edge

if.end53.ret_unlock_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %ret_unlock

if.end53.if.end71_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.else:                                          ; preds = %do.end38
  br i1 %cmp42.not, label %if.else.if.end66_crit_edge, label %do.end63

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

do.end63:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %udev77 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev77, align 4
  %dev65 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev65, ptr noundef nonnull @.str.17, i32 noundef %call) #12
  br label %if.end66

if.end66:                                         ; preds = %do.end63, %if.else.if.end66_crit_edge
  %call67 = tail call fastcc i32 @cxusb_medion_set_mode(ptr noundef %dvbdev, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68.not = icmp eq i32 %call67, 0
  br i1 %cmp68.not, label %if.end66.if.end71_crit_edge, label %if.end66.ret_unlock_crit_edge

if.end66.ret_unlock_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %ret_unlock

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.end71:                                         ; preds = %if.end66.if.end71_crit_edge, %if.end53.if.end71_crit_edge
  %14 = ptrtoint ptr %open_type1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %open_type, ptr %open_type1, align 8
  br label %if.end81

do.end76:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev78, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond80) #12
  br label %if.end81

if.end81:                                         ; preds = %do.end76, %if.end71
  %15 = ptrtoint ptr %open_ctr30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %open_ctr30, align 4
  br label %ret_unlock

if.else83:                                        ; preds = %if.end29
  br i1 %cmp34.not, label %if.then86, label %if.else83.ret_unlock_crit_edge

if.else83.ret_unlock_crit_edge:                   ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #11
  br label %ret_unlock

if.then86:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %7, 1
  %16 = ptrtoint ptr %open_ctr30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc, ptr %open_ctr30, align 4
  %udev91 = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 2
  %17 = ptrtoint ptr %udev91 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev91, align 4
  %dev92 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %open_type)
  %cmp93 = icmp eq i32 %open_type, 2
  %cond94 = select i1 %cmp93, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev92, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond94) #12
  br label %ret_unlock

ret_unlock:                                       ; preds = %if.then86, %if.else83.ret_unlock_crit_edge, %if.end81, %if.end66.ret_unlock_crit_edge, %if.end53.ret_unlock_crit_edge, %if.end49.ret_unlock_crit_edge, %if.end25.ret_unlock_crit_edge, %do.end
  %ret.2 = phi i32 [ -22, %do.end ], [ %call50, %if.end49.ret_unlock_crit_edge ], [ %call54, %if.end53.ret_unlock_crit_edge ], [ 0, %if.end81 ], [ %call67, %if.end66.ret_unlock_crit_edge ], [ 0, %if.then86 ], [ -11, %if.end25.ret_unlock_crit_edge ], [ -16, %if.else83.ret_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_lock) #9
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_cxusb_power_ctrl(ptr noundef %d, i32 noundef %onoff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %cond = select i1 %tobool.not, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond) #12
  %priv.i6 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %2 = ptrtoint ptr %priv.i6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i6, align 8
  %data_mutex.i7 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i7, i32 noundef 0) #9
  %data.i8 = getelementptr inbounds %struct.cxusb_state, ptr %3, i32 0, i32 4
  %. = select i1 %tobool.not, i8 -36, i8 -34
  %4 = ptrtoint ptr %data.i8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %., ptr %data.i8, align 4
  %arrayidx10.i9 = getelementptr %struct.cxusb_state, ptr %3, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %arrayidx10.i9 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx10.i9, align 1
  %call16.i10 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data.i8, i16 noundef zeroext 2, ptr noundef %data.i8, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i7) #9
  ret i32 %call16.i10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxusb_medion_set_mode(ptr noundef %dvbdev, i1 noundef zeroext %digital) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %i2c_mutex, i32 noundef 0) #9
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  br i1 %digital, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef 0, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.then.if.end13_crit_edge, label %do.end

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call) #12
  br label %ret_unlock

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef 0, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.else.if.end13_crit_edge, label %do.end9

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.end9:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.35, i32 noundef %call4) #12
  br label %ret_unlock

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %udev14 = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 2
  %8 = ptrtoint ptr %udev14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev14, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or17 = or i32 %shl.i, -1073708928
  %call18 = tail call i32 @usb_clear_halt(ptr noundef %9, i32 noundef %or17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end13.if.end26_crit_edge, label %do.end23

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %udev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev14, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev25, ptr noundef nonnull @.str.38, i32 noundef %call18) #12
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.end13.if.end26_crit_edge
  %14 = ptrtoint ptr %udev14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev14, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i81 = shl i32 %17, 8
  %or30 = or i32 %shl.i81, -1073709056
  %call31 = tail call i32 @usb_clear_halt(ptr noundef %15, i32 noundef %or30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.end26.if.end39_crit_edge, label %do.end36

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.end36:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %udev14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev14, align 4
  %dev38 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev38, ptr noundef nonnull @.str.41, i32 noundef %call31) #12
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %if.end26.if.end39_crit_edge
  %conv = select i1 %digital, i8 81, i8 80
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %data.i, align 4
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %dvbdev, ptr noundef %data.i, i16 noundef zeroext 1, ptr noundef %data.i, i16 noundef zeroext 1, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp42.not = icmp eq i32 %call16.i, 0
  br i1 %cmp42.not, label %for.body.preheader, label %do.end47

for.body.preheader:                               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %uglygep = getelementptr i8, ptr %1, i32 3
  %23 = call ptr @memset(ptr %uglygep, i32 1, i32 3)
  br label %ret_unlock

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %udev14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev14, align 4
  %dev49 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.44, i32 noundef %call16.i) #12
  br label %ret_unlock

ret_unlock:                                       ; preds = %do.end47, %for.body.preheader, %do.end9, %do.end
  %ret.0 = phi i32 [ %call, %do.end ], [ %call16.i, %do.end47 ], [ %call4, %do.end9 ], [ 0, %for.body.preheader ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxusb_medion_analog_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxusb_medion_put(ptr nocapture noundef readonly %dvbdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %open_lock = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #9
  %open_type = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %open_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %open_ctr = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %open_ctr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_ctr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  br i1 %cmp1.not, label %if.then.if.end_crit_edge, label %do.end, !prof !494

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1503, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %open_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %open_type, align 8
  br label %unlock

if.end22:                                         ; preds = %entry
  br i1 %cmp1.not, label %do.end41, label %if.then56.critedge, !prof !495

do.end41:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1508, i32 noundef 9, ptr noundef null) #9
  br label %unlock

if.then56.critedge:                               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %5, -1
  %7 = ptrtoint ptr %open_ctr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dec, ptr %open_ctr, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 2
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp62 = icmp eq i32 %3, 2
  %cond = select i1 %cmp62, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond) #12
  br label %unlock

unlock:                                           ; preds = %if.then56.critedge, %do.end41, %if.end
  tail call void @mutex_unlock(ptr noundef %open_lock) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @cxusb_driver, ptr noundef null, ptr noundef nonnull @.str.46) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cxusb_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @cxusb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %dvbdev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dvbdev) #9
  %0 = ptrtoint ptr %dvbdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dvbdev, align 4, !annotation !496
  %call = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @cxusb_medion_properties, ptr noundef null, ptr noundef nonnull %dvbdev, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %num_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 2
  %1 = ptrtoint ptr %num_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_altsetting.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.i = icmp ult i32 %2, 2
  br i1 %cmp.i, label %if.then.cxusb_medion_check_intf.exit_crit_edge, label %for.body.preheader.i

if.then.cxusb_medion_check_intf.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxusb_medion_check_intf.exit

for.body.preheader.i:                             ; preds = %if.then
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %ctr.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.usb_host_interface, ptr %4, i32 %ctr.030.i
  %bAlternateSetting.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i, i32 0, i32 3
  %5 = ptrtoint ptr %bAlternateSetting.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bAlternateSetting.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp3.not.i = icmp eq i8 %6, 1
  br i1 %cmp3.not.i, label %if.end6.i, label %for.inc.i

if.end6.i:                                        ; preds = %for.body.i
  %bNumEndpoints.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i, i32 0, i32 4
  %7 = ptrtoint ptr %bNumEndpoints.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bNumEndpoints.i.i, align 4
  %conv.i.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp28.not.i.i = icmp eq i8 %8, 0
  br i1 %cmp28.not.i.i, label %if.end6.i.cxusb_medion_check_intf.exit_crit_edge, label %for.body.lr.ph.i.i

if.end6.i.cxusb_medion_check_intf.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxusb_medion_check_intf.exit

for.body.lr.ph.i.i:                               ; preds = %if.end6.i
  %endpoint.i.i = getelementptr %struct.usb_host_interface, ptr %4, i32 %ctr.030.i, i32 3
  %9 = ptrtoint ptr %endpoint.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endpoint.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %ctr.029.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.cxusb_medion_check_intf.exit_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond.i.i.cxusb_medion_check_intf.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxusb_medion_check_intf.exit

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %ctr.029.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.usb_host_endpoint, ptr %10, i32 %ctr.029.i.i
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i.i, align 2
  %13 = and i8 %12, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp4.not.i.i = icmp eq i8 %13, 2
  br i1 %cmp4.not.i.i, label %if.end.i.i, label %for.cond.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool.not.i.i = icmp sgt i8 %12, -1
  br i1 %tobool.not.i.i, label %if.end.i.i.cxusb_medion_check_intf.exit_crit_edge, label %land.lhs.true.i.i

if.end.i.i.cxusb_medion_check_intf.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxusb_medion_check_intf.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bmAttributes.i.i, align 1
  %16 = and i8 %15, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp17.i.i = icmp eq i8 %16, 1
  br i1 %cmp17.i.i, label %if.end, label %land.lhs.true.i.i.cxusb_medion_check_intf.exit_crit_edge

land.lhs.true.i.i.cxusb_medion_check_intf.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxusb_medion_check_intf.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %ctr.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.cxusb_medion_check_intf.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cxusb_medion_check_intf.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxusb_medion_check_intf.exit

cxusb_medion_check_intf.exit:                     ; preds = %for.inc.i.cxusb_medion_check_intf.exit_crit_edge, %land.lhs.true.i.i.cxusb_medion_check_intf.exit_crit_edge, %if.end.i.i.cxusb_medion_check_intf.exit_crit_edge, %for.cond.i.i.cxusb_medion_check_intf.exit_crit_edge, %if.end6.i.cxusb_medion_check_intf.exit_crit_edge, %if.then.cxusb_medion_check_intf.exit_crit_edge
  %.str.81.sink.i = phi ptr [ @.str.78, %if.then.cxusb_medion_check_intf.exit_crit_edge ], [ @.str.81, %land.lhs.true.i.i.cxusb_medion_check_intf.exit_crit_edge ], [ @.str.81, %if.end.i.i.cxusb_medion_check_intf.exit_crit_edge ], [ @.str.81, %if.end6.i.cxusb_medion_check_intf.exit_crit_edge ], [ @.str.81, %for.cond.i.i.cxusb_medion_check_intf.exit_crit_edge ], [ @.str.81, %for.inc.i.cxusb_medion_check_intf.exit_crit_edge ]
  %usb_dev14.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 8
  %17 = ptrtoint ptr %usb_dev14.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_dev14.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull %.str.81.sink.i) #12
  br label %ret_uninit

if.end:                                           ; preds = %land.lhs.true.i.i
  %19 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dvbdev, align 4
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29) #12
  %priv.i6.i = getelementptr inbounds %struct.dvb_usb_device, ptr %20, i32 0, i32 18
  %23 = ptrtoint ptr %priv.i6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i6.i, align 8
  %data_mutex.i7.i = getelementptr inbounds %struct.dvb_usb_device, ptr %20, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %data_mutex.i7.i, i32 noundef 0) #9
  %data.i8.i = getelementptr inbounds %struct.cxusb_state, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %data.i8.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -34, ptr %data.i8.i, align 4
  %arrayidx10.i9.i = getelementptr %struct.cxusb_state, ptr %24, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %arrayidx10.i9.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx10.i9.i, align 1
  %call16.i10.i = call i32 @dvb_usb_generic_rw(ptr noundef %20, ptr noundef %data.i8.i, i16 noundef zeroext 2, ptr noundef %data.i8.i, i16 noundef zeroext 0, i32 noundef 0) #9
  call void @mutex_unlock(ptr noundef %data_mutex.i7.i) #9
  %27 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dvbdev, align 4
  %call4 = call fastcc i32 @cxusb_medion_set_mode(ptr noundef %28, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.ret_uninit_crit_edge

if.end.ret_uninit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ret_uninit

if.end7:                                          ; preds = %if.end
  %29 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dvbdev, align 4
  %call8 = call i32 @cxusb_medion_register_analog(ptr noundef %30) #9
  %31 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dvbdev, align 4
  %call9 = call fastcc i32 @cxusb_medion_set_mode(ptr noundef %32, i1 noundef zeroext true)
  %33 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dvbdev, align 4
  %udev.i63 = getelementptr inbounds %struct.dvb_usb_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %udev.i63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %udev.i63, align 4
  %dev.i64 = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i64, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30) #12
  %priv.i6.i65 = getelementptr inbounds %struct.dvb_usb_device, ptr %34, i32 0, i32 18
  %37 = ptrtoint ptr %priv.i6.i65 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv.i6.i65, align 8
  %data_mutex.i7.i66 = getelementptr inbounds %struct.dvb_usb_device, ptr %34, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %data_mutex.i7.i66, i32 noundef 0) #9
  %data.i8.i67 = getelementptr inbounds %struct.cxusb_state, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %data.i8.i67 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -36, ptr %data.i8.i67, align 4
  %arrayidx10.i9.i68 = getelementptr %struct.cxusb_state, ptr %38, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %arrayidx10.i9.i68 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx10.i9.i68, align 1
  %call16.i10.i69 = call i32 @dvb_usb_generic_rw(ptr noundef %34, ptr noundef %data.i8.i67, i16 noundef zeroext 2, ptr noundef %data.i8.i67, i16 noundef zeroext 0, i32 noundef 0) #9
  call void @mutex_unlock(ptr noundef %data_mutex.i7.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.end12, label %if.end7.ret_uninit_crit_edge

if.end7.ret_uninit_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %ret_uninit

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %dvbdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dvbdev, align 4
  call void @cxusb_medion_put(ptr noundef %42)
  br label %cleanup

if.else:                                          ; preds = %entry
  %call13 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @cxusb_bluebird_lgh064f_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else.cleanup_crit_edge, label %lor.lhs.false

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else
  %call15 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @cxusb_bluebird_dee1601_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false17

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %call18 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @cxusb_bluebird_lgz201_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %lor.lhs.false17.cleanup_crit_edge, label %lor.lhs.false20

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %call21 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @cxusb_bluebird_dtt7579_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %lor.lhs.false20.cleanup_crit_edge, label %lor.lhs.false23

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %call24 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @cxusb_bluebird_dualdig4_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false23.cleanup_crit_edge, label %lor.lhs.false26

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %call27 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @cxusb_bluebird_nano2_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.lhs.false26.cleanup_crit_edge, label %lor.lhs.false29

lor.lhs.false26.cleanup_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %call30 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @cxusb_bluebird_nano2_needsfirmware_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %lor.lhs.false29.cleanup_crit_edge, label %lor.lhs.false32

lor.lhs.false29.cleanup_crit_edge:                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %call33 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @cxusb_aver_a868r_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %lor.lhs.false32.cleanup_crit_edge, label %lor.lhs.false35

lor.lhs.false32.cleanup_crit_edge:                ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  %call36 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @cxusb_bluebird_dualdig4_rev2_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %lor.lhs.false35.cleanup_crit_edge, label %lor.lhs.false38

lor.lhs.false35.cleanup_crit_edge:                ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  %call39 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @cxusb_d680_dmb_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %lor.lhs.false38.cleanup_crit_edge, label %lor.lhs.false41

lor.lhs.false38.cleanup_crit_edge:                ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false41:                                  ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @cxusb_mygica_d689_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  %spec.select = select i1 %tobool43.not, i32 0, i32 -22
  br label %cleanup

ret_uninit:                                       ; preds = %if.end7.ret_uninit_crit_edge, %if.end.ret_uninit_crit_edge, %cxusb_medion_check_intf.exit
  %ret.0 = phi i32 [ %call4, %if.end.ret_uninit_crit_edge ], [ %call8, %if.end7.ret_uninit_crit_edge ], [ -19, %cxusb_medion_check_intf.exit ]
  call void @dvb_usb_device_exit(ptr noundef %intf) #9
  br label %cleanup

cleanup:                                          ; preds = %ret_uninit, %lor.lhs.false41, %lor.lhs.false38.cleanup_crit_edge, %lor.lhs.false35.cleanup_crit_edge, %lor.lhs.false32.cleanup_crit_edge, %lor.lhs.false29.cleanup_crit_edge, %lor.lhs.false26.cleanup_crit_edge, %lor.lhs.false23.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end12
  %retval.0 = phi i32 [ %ret.0, %ret_uninit ], [ 0, %if.end12 ], [ 0, %lor.lhs.false38.cleanup_crit_edge ], [ 0, %lor.lhs.false35.cleanup_crit_edge ], [ 0, %lor.lhs.false32.cleanup_crit_edge ], [ 0, %lor.lhs.false29.cleanup_crit_edge ], [ 0, %lor.lhs.false26.cleanup_crit_edge ], [ 0, %lor.lhs.false23.cleanup_crit_edge ], [ 0, %lor.lhs.false20.cleanup_crit_edge ], [ 0, %lor.lhs.false17.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dvbdev) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxusb_disconnect(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %warm_ids = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 18, i32 0, i32 2
  %4 = ptrtoint ptr %warm_ids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %warm_ids, align 8
  %cmp = icmp eq ptr %5, @cxusb_table
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cxusb_medion_unregister_analog(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_client_tuner = getelementptr inbounds %struct.cxusb_state, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client_tuner, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %driver = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %11) #9
  tail call void @i2c_unregister_device(ptr noundef nonnull %7) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %i2c_client_demod = getelementptr inbounds %struct.cxusb_state, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client_demod, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.end3.if.end9_crit_edge, label %if.then5

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %driver7 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4, i32 6
  %14 = ptrtoint ptr %driver7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver7, align 4
  %owner8 = getelementptr inbounds %struct.device_driver, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %owner8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner8, align 4
  tail call void @module_put(ptr noundef %17) #9
  tail call void @i2c_unregister_device(ptr noundef nonnull %13) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end3.if.end9_crit_edge
  tail call void @dvb_usb_device_exit(ptr noundef %intf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxusb_medion_register_analog(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_priv_init(ptr noundef %dvbdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dvbdev1 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dvbdev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dvbdev, ptr %dvbdev1, align 4
  %open_type = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %open_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %open_type, align 8
  %open_lock = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %open_lock, ptr noundef nonnull @.str.49, ptr noundef nonnull @cxusb_medion_priv_init.__key) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxusb_medion_priv_destroy(ptr nocapture noundef readonly %dvbdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %dvbdev, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %open_lock = getelementptr inbounds %struct.cxusb_medion_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %open_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_streaming_ctrl(ptr nocapture noundef readonly %adap, i32 noundef %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %warm_ids = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 18, i32 0, i32 2
  %2 = ptrtoint ptr %warm_ids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %warm_ids, align 8
  %cmp = icmp ne ptr %3, @cxusb_table
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool2.not = icmp eq i32 %onoff, 0
  %or.cond = or i1 %tobool2.not, %cmp
  br i1 %or.cond, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @cxusb_medion_get(ptr noundef %1, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup16_crit_edge

if.then.cleanup16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %priv.i28 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %priv.i28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i28, align 8
  %data_mutex.i29 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i29, i32 noundef 0) #9
  %data.i30 = getelementptr inbounds %struct.cxusb_state, ptr %5, i32 0, i32 4
  br i1 %tobool2.not, label %if.end10, label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %data.i30 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 54, ptr %data.i30, align 4
  %arrayidx10.i = getelementptr %struct.cxusb_state, ptr %5, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 768, ptr %arrayidx10.i, align 1
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data.i30, i16 noundef zeroext 3, ptr noundef %data.i30, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i29) #9
  br label %cleanup16

if.end10:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %data.i30 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 55, ptr %data.i30, align 4
  %call16.i32 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data.i30, i16 noundef zeroext 1, ptr noundef %data.i30, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i29) #9
  br i1 %cmp, label %if.end10.cleanup16_crit_edge, label %if.then14

if.end10.cleanup16_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cxusb_medion_put(ptr noundef %1)
  br label %cleanup16

cleanup16:                                        ; preds = %if.then14, %if.end10.cleanup16_crit_edge, %if.end10.thread, %if.then.cleanup16_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.cleanup16_crit_edge ], [ 0, %if.end10.cleanup16_crit_edge ], [ 0, %if.then14 ], [ 0, %if.end10.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_cx22702_frontend_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %warm_ids = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 18, i32 0, i32 2
  %2 = ptrtoint ptr %warm_ids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %warm_ids, align 8
  %cmp = icmp eq ptr %3, @cxusb_table
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @cxusb_medion_set_mode(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup31_crit_edge

if.then.cleanup31_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup31

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.50) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %cond.end, label %if.end4.if.then10_crit_edge

if.end4.if.then10_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

cond.end:                                         ; preds = %if.end4
  %call7 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.51) #9
  %call8 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.50) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end, label %cond.end.if.then10_crit_edge

cond.end.if.then10_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %cond.end.if.then10_crit_edge, %if.end4.if.then10_crit_edge
  %cond45 = phi ptr [ %call8, %cond.end.if.then10_crit_edge ], [ %call5, %if.end4.if.then10_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call11 = tail call ptr %cond45(ptr noundef nonnull @cxusb_cx22702_config, ptr noundef %i2c_adap) #9
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.50) #9
  br label %if.end16.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #12
  br label %if.end16.thread

if.end16.thread:                                  ; preds = %do.end, %if.then13
  %fe_adap47 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap47 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fe_adap47, align 8
  br label %cleanup31

if.end16:                                         ; preds = %if.then10
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %5 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %fe_adap, align 8
  br i1 %cmp, label %if.then26, label %if.end16.cleanup31_crit_edge

if.end16.cleanup31_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup31

if.then26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %ts_bus_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %call11, i32 0, i32 1, i32 29
  %6 = ptrtoint ptr %ts_bus_ctrl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cxusb_medion_fe_ts_bus_ctrl, ptr %ts_bus_ctrl, align 4
  br label %cleanup31

cleanup31:                                        ; preds = %if.then26, %if.end16.cleanup31_crit_edge, %if.end16.thread, %if.then.cleanup31_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.cleanup31_crit_edge ], [ 0, %if.end16.cleanup31_crit_edge ], [ 0, %if.then26 ], [ -5, %if.end16.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_fmd1216me_tuner_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %warm_ids = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 18, i32 0, i32 2
  %2 = ptrtoint ptr %warm_ids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %warm_ids, align 8
  %cmp = icmp eq ptr %3, @cxusb_table
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.54) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.55) #9
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.54) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond30 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call6 = tail call ptr %cond30(ptr noundef %5, ptr noundef %i2c_adap, i8 noundef zeroext 97, i32 noundef 63) #9
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.then8, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.54) #9
  br label %if.end10

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #12
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then8, %if.then.if.end10_crit_edge
  br i1 %cmp, label %land.lhs.true, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end10
  %fe_adap13 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %6 = ptrtoint ptr %fe_adap13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe_adap13, align 8
  %tobool16.not = icmp eq ptr %7, null
  br i1 %tobool16.not, label %land.lhs.true.if.end21_crit_edge, label %if.then17

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 32, i32 3
  %8 = ptrtoint ptr %sleep to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sleep, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %land.lhs.true.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_power_ctrl(ptr noundef %d, i32 noundef %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %warm_ids = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 18, i32 0, i32 2
  %0 = ptrtoint ptr %warm_ids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %warm_ids, align 8
  %cmp = icmp eq ptr %1, @cxusb_table
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool2.not = icmp eq i32 %onoff, 0
  %or.cond = and i1 %tobool2.not, %cmp
  br i1 %or.cond, label %if.then, label %entry.ret_unlock_crit_edge

entry.ret_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ret_unlock

if.then:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %open_lock = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %open_lock, i32 noundef 0) #9
  %open_type = getelementptr inbounds %struct.cxusb_medion_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %open_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %ret_unlock.thread, label %if.then.ret_unlock_crit_edge

if.then.ret_unlock_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %ret_unlock

ret_unlock.thread:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.58) #12
  br label %if.then9

ret_unlock:                                       ; preds = %if.then.ret_unlock_crit_edge, %entry.ret_unlock_crit_edge
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  %cond.i = select i1 %tobool2.not, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond.i) #12
  %priv.i6.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %10 = ptrtoint ptr %priv.i6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i6.i, align 8
  %data_mutex.i7.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i7.i, i32 noundef 0) #9
  %data.i8.i = getelementptr inbounds %struct.cxusb_state, ptr %11, i32 0, i32 4
  %..i = select i1 %tobool2.not, i8 -36, i8 -34
  %12 = ptrtoint ptr %data.i8.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %..i, ptr %data.i8.i, align 4
  %arrayidx10.i9.i = getelementptr %struct.cxusb_state, ptr %11, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx10.i9.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx10.i9.i, align 1
  %call16.i10.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data.i8.i, i16 noundef zeroext 2, ptr noundef %data.i8.i, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i7.i) #9
  br i1 %or.cond, label %ret_unlock.if.then9_crit_edge, label %ret_unlock.cleanup14_crit_edge

ret_unlock.cleanup14_crit_edge:                   ; preds = %ret_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

ret_unlock.if.then9_crit_edge:                    ; preds = %ret_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %ret_unlock.if.then9_crit_edge, %ret_unlock.thread
  %ret.131 = phi i32 [ -16, %ret_unlock.thread ], [ %call16.i10.i, %ret_unlock.if.then9_crit_edge ]
  %priv11 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %14 = ptrtoint ptr %priv11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv11, align 8
  %open_lock12 = getelementptr inbounds %struct.cxusb_medion_dev, ptr %15, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %open_lock12) #9
  br label %cleanup14

cleanup14:                                        ; preds = %if.then9, %ret_unlock.cleanup14_crit_edge
  %ret.130 = phi i32 [ %call16.i10.i, %ret_unlock.cleanup14_crit_edge ], [ %ret.131, %if.then9 ]
  ret i32 %ret.130
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_medion_fe_ts_bus_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %acquire) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %acquire)
  %tobool.not = icmp eq i32 %acquire, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @cxusb_medion_get(ptr noundef %5, i32 noundef 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cxusb_medion_put(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #0 align 64 {
entry:
  %ibuf = alloca [80 x i8], align 1
  %obuf71 = alloca [80 x i8], align 1
  %ibuf72 = alloca [80 x i8], align 1
  %obuf165 = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup230_crit_edge, label %for.cond.preheader

entry.cleanup230_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup230

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp2407 = icmp sgt i32 %num, 0
  br i1 %cmp2407, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %ibuf.1.ibuf.1.arrayidx46.sroa_idx = getelementptr inbounds i8, ptr %ibuf, i32 1
  %2 = getelementptr inbounds i8, ptr %obuf71, i32 3
  %obuf71.1.obuf71.1.arrayidx115.sroa_idx = getelementptr inbounds i8, ptr %obuf71, i32 1
  %obuf71.2.obuf71.2.arrayidx119.sroa_idx = getelementptr inbounds i8, ptr %obuf71, i32 2
  %obuf71.3.obuf71.3.arrayidx120.sroa_idx = getelementptr inbounds i8, ptr %obuf71, i32 3
  %ibuf72.1.ibuf72.1.arrayidx155.sroa_idx = getelementptr inbounds i8, ptr %ibuf72, i32 1
  %3 = getelementptr inbounds i8, ptr %obuf165, i32 2
  %obuf165.1.obuf165.1.arrayidx190.sroa_idx = getelementptr inbounds i8, ptr %obuf165, i32 1
  %obuf165.2.obuf165.2.arrayidx191.sroa_idx = getelementptr inbounds i8, ptr %obuf165, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0408 = phi i32 [ 0, %for.body.lr.ph ], [ %inc223, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 16, i32 7
  %6 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 24598, i16 %7)
  %cmp3 = icmp eq i16 %7, 24598
  br i1 %cmp3, label %if.then5, label %for.body.if.end7_crit_edge

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0408
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 99, i16 %9)
  %cond = icmp ne i16 %9, 99
  %. = zext i1 %cond to i32
  tail call fastcc void @cxusb_gpio_tuner(ptr noundef %1, i32 noundef %.)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %for.body.if.end7_crit_edge
  %arrayidx8 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0408
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0408, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %ibuf)
  %13 = call ptr @memset(ptr %ibuf, i32 255, i32 80)
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0408, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 79, i16 %15)
  %cmp13 = icmp ugt i16 %15, 79
  br i1 %cmp13, label %cleanup, label %if.end20

if.end20:                                         ; preds = %if.then10
  %conv24 = trunc i16 %15 to i8
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx8, align 4
  %conv28 = trunc i16 %17 to i8
  %conv33 = zext i16 %15 to i32
  %add34 = add nuw nsw i32 %conv33, 1
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 9, ptr %data.i, align 4
  %arrayidx10.i = getelementptr %struct.cxusb_state, ptr %19, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx10.i, align 1
  %obuf.sroa.5.0.arrayidx10.i.sroa_idx = getelementptr %struct.cxusb_state, ptr %19, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %obuf.sroa.5.0.arrayidx10.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv24, ptr %obuf.sroa.5.0.arrayidx10.i.sroa_idx, align 1
  %obuf.sroa.7.0.arrayidx10.i.sroa_idx = getelementptr %struct.cxusb_state, ptr %19, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %obuf.sroa.7.0.arrayidx10.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv28, ptr %obuf.sroa.7.0.arrayidx10.i.sroa_idx, align 1
  %conv15.i = trunc i32 %add34 to i16
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data.i, i16 noundef zeroext 4, ptr noundef %data.i, i16 noundef zeroext %conv15.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i.not = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i.not, label %cxusb_ctrl_msg.exit.thread348, label %cxusb_ctrl_msg.exit

cxusb_ctrl_msg.exit.thread348:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %24 = call ptr @memcpy(ptr %ibuf, ptr %data.i, i32 %add34)
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  br label %cleanup.thread

cxusb_ctrl_msg.exit:                              ; preds = %if.end20
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp36 = icmp slt i32 %call16.i, 0
  br i1 %cmp36, label %cleanup.thread352, label %cxusb_ctrl_msg.exit.cleanup.thread_crit_edge

cxusb_ctrl_msg.exit.cleanup.thread_crit_edge:     ; preds = %cxusb_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

cleanup.thread352:                                ; preds = %cxusb_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ibuf)
  br label %for.end

cleanup.thread:                                   ; preds = %cxusb_ctrl_msg.exit.cleanup.thread_crit_edge, %cxusb_ctrl_msg.exit.thread348
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0408, i32 3
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf, align 4
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %len, align 4
  %conv49 = zext i16 %28 to i32
  %29 = call ptr @memcpy(ptr %26, ptr %ibuf.1.ibuf.1.arrayidx46.sroa_idx, i32 %conv49)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ibuf)
  br label %for.inc

cleanup:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %conv12 = zext i16 %15 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv12) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ibuf)
  br label %unlock

if.else:                                          ; preds = %if.end7
  %add51 = add nsw i32 %i.0408, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add51, i32 %num)
  %cmp52 = icmp slt i32 %add51, %num
  br i1 %cmp52, label %land.lhs.true, label %if.else.if.else164_crit_edge

if.else.if.else164_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else164

land.lhs.true:                                    ; preds = %if.else
  %flags56 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add51, i32 1
  %30 = ptrtoint ptr %flags56 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags56, align 2
  %32 = and i16 %31, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool59.not = icmp eq i16 %32, 0
  br i1 %tobool59.not, label %land.lhs.true.if.else164_crit_edge, label %land.lhs.true60

land.lhs.true.if.else164_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else164

land.lhs.true60:                                  ; preds = %land.lhs.true
  %arrayidx55 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add51
  %33 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx8, align 4
  %35 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx55, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %36)
  %cmp68 = icmp eq i16 %34, %36
  br i1 %cmp68, label %if.then70, label %land.lhs.true60.if.else164_crit_edge

land.lhs.true60.if.else164_crit_edge:             ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else164

if.then70:                                        ; preds = %land.lhs.true60
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %obuf71)
  %37 = call ptr @memset(ptr %2, i32 255, i32 77)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %ibuf72)
  %38 = call ptr @memset(ptr %ibuf72, i32 255, i32 80)
  %len74 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0408, i32 2
  %39 = ptrtoint ptr %len74 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %len74, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 77, i16 %40)
  %cmp77 = icmp ugt i16 %40, 77
  br i1 %cmp77, label %if.then70.cleanup160.thread363_crit_edge, label %if.end88

if.then70.cleanup160.thread363_crit_edge:         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup160.thread363

if.end88:                                         ; preds = %if.then70
  %len91 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add51, i32 2
  %41 = ptrtoint ptr %len91 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %len91, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 79, i16 %42)
  %cmp94 = icmp ugt i16 %42, 79
  br i1 %cmp94, label %if.end88.cleanup160.thread363_crit_edge, label %if.end106

if.end88.cleanup160.thread363_crit_edge:          ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup160.thread363

if.end106:                                        ; preds = %if.end88
  %conv109 = trunc i16 %40 to i8
  %43 = ptrtoint ptr %obuf71 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv109, ptr %obuf71, align 1
  %conv114 = trunc i16 %42 to i8
  %44 = ptrtoint ptr %obuf71.1.obuf71.1.arrayidx115.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv114, ptr %obuf71.1.obuf71.1.arrayidx115.sroa_idx, align 1
  %conv118 = trunc i16 %34 to i8
  %45 = ptrtoint ptr %obuf71.2.obuf71.2.arrayidx119.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv118, ptr %obuf71.2.obuf71.2.arrayidx119.sroa_idx, align 1
  %buf122 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0408, i32 3
  %46 = ptrtoint ptr %buf122 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buf122, align 4
  %conv125 = zext i16 %40 to i32
  %48 = call ptr @memcpy(ptr %obuf71.3.obuf71.3.arrayidx120.sroa_idx, ptr %47, i32 %conv125)
  %add130 = add nuw nsw i32 %conv125, 3
  %conv135 = zext i16 %42 to i32
  %add136 = add nuw nsw i32 %conv135, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %40)
  %cmp.i = icmp ugt i16 %40, 76
  br i1 %cmp.i, label %cxusb_ctrl_msg.exit328.thread, label %if.end8.i324

cxusb_ctrl_msg.exit328.thread:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %add130) #12
  br label %cleanup160.thread

if.end8.i324:                                     ; preds = %if.end106
  %add.i = add nuw nsw i16 %40, 4
  %49 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i319 = getelementptr inbounds %struct.cxusb_state, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %data.i319 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 9, ptr %data.i319, align 4
  %arrayidx10.i320 = getelementptr %struct.cxusb_state, ptr %50, i32 0, i32 4, i32 1
  %52 = call ptr @memcpy(ptr %arrayidx10.i320, ptr %obuf71, i32 %add130)
  %conv15.i321 = trunc i32 %add136 to i16
  %call16.i322 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data.i319, i16 noundef zeroext %add.i, ptr noundef %data.i319, i16 noundef zeroext %conv15.i321, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i322)
  %tobool.not.i323.not = icmp eq i32 %call16.i322, 0
  br i1 %tobool.not.i323.not, label %cxusb_ctrl_msg.exit328.thread357, label %cxusb_ctrl_msg.exit328

cxusb_ctrl_msg.exit328.thread357:                 ; preds = %if.end8.i324
  call void @__sanitizer_cov_trace_pc() #11
  %53 = call ptr @memcpy(ptr %ibuf72, ptr %data.i319, i32 %add136)
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  br label %if.end141

cxusb_ctrl_msg.exit328:                           ; preds = %if.end8.i324
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i322)
  %cmp138 = icmp slt i32 %call16.i322, 0
  br i1 %cmp138, label %cxusb_ctrl_msg.exit328.cleanup160.thread_crit_edge, label %cxusb_ctrl_msg.exit328.if.end141_crit_edge

cxusb_ctrl_msg.exit328.if.end141_crit_edge:       ; preds = %cxusb_ctrl_msg.exit328
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

cxusb_ctrl_msg.exit328.cleanup160.thread_crit_edge: ; preds = %cxusb_ctrl_msg.exit328
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup160.thread

if.end141:                                        ; preds = %cxusb_ctrl_msg.exit328.if.end141_crit_edge, %cxusb_ctrl_msg.exit328.thread357
  %54 = ptrtoint ptr %ibuf72 to i32
  call void @__asan_load1_noabort(i32 %54)
  %ibuf72.0.ibuf72.0. = load i8, ptr %ibuf72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %ibuf72.0.ibuf72.0.)
  %cmp144.not = icmp eq i8 %ibuf72.0.ibuf72.0., 8
  br i1 %cmp144.not, label %if.end141.cleanup160_crit_edge, label %do.end149

if.end141.cleanup160_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup160

do.end149:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.69) #12
  br label %cleanup160

cleanup160.thread:                                ; preds = %cxusb_ctrl_msg.exit328.cleanup160.thread_crit_edge, %cxusb_ctrl_msg.exit328.thread
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ibuf72)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %obuf71)
  br label %for.end

cleanup160.thread363:                             ; preds = %if.end88.cleanup160.thread363_crit_edge, %if.then70.cleanup160.thread363_crit_edge
  %.lcssa437.sink = phi i16 [ %40, %if.then70.cleanup160.thread363_crit_edge ], [ %42, %if.end88.cleanup160.thread363_crit_edge ]
  %.str.sink = phi ptr [ @.str, %if.then70.cleanup160.thread363_crit_edge ], [ @.str.4, %if.end88.cleanup160.thread363_crit_edge ]
  %conv75 = zext i16 %.lcssa437.sink to i32
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.sink, i32 noundef %conv75) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ibuf72)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %obuf71)
  br label %unlock

cleanup160:                                       ; preds = %do.end149, %if.end141.cleanup160_crit_edge
  %buf154 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add51, i32 3
  %57 = ptrtoint ptr %buf154 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf154, align 4
  %59 = ptrtoint ptr %len91 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %len91, align 4
  %conv159 = zext i16 %60 to i32
  %61 = call ptr @memcpy(ptr %58, ptr %ibuf72.1.ibuf72.1.arrayidx155.sroa_idx, i32 %conv159)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %ibuf72)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %obuf71)
  br label %for.inc

if.else164:                                       ; preds = %land.lhs.true60.if.else164_crit_edge, %land.lhs.true.if.else164_crit_edge, %if.else.if.else164_crit_edge
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %obuf165)
  %62 = call ptr @memset(ptr %3, i32 255, i32 78)
  %len168 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0408, i32 2
  %63 = ptrtoint ptr %len168 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %len168, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 78, i16 %64)
  %cmp171 = icmp ugt i16 %64, 78
  br i1 %cmp171, label %cleanup217, label %if.end182

if.end182:                                        ; preds = %if.else164
  %65 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx8, align 4
  %conv185 = trunc i16 %66 to i8
  %67 = ptrtoint ptr %obuf165 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv185, ptr %obuf165, align 1
  %conv189 = trunc i16 %64 to i8
  %68 = ptrtoint ptr %obuf165.1.obuf165.1.arrayidx190.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv189, ptr %obuf165.1.obuf165.1.arrayidx190.sroa_idx, align 1
  %buf193 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0408, i32 3
  %69 = ptrtoint ptr %buf193 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buf193, align 4
  %conv196 = zext i16 %64 to i32
  %71 = call ptr @memcpy(ptr %obuf165.2.obuf165.2.arrayidx191.sroa_idx, ptr %70, i32 %conv196)
  %add201 = add nuw nsw i32 %conv196, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 78, i16 %64)
  %cmp.i331 = icmp eq i16 %64, 78
  br i1 %cmp.i331, label %cxusb_ctrl_msg.exit345.thread, label %if.end.i334

cxusb_ctrl_msg.exit345.thread:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  %call.i332 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %add201) #12
  br label %cleanup217.thread379

if.end.i334:                                      ; preds = %if.end182
  %add.i330 = add nuw nsw i16 %64, 3
  %72 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i336 = getelementptr inbounds %struct.cxusb_state, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %data.i336 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 8, ptr %data.i336, align 4
  %arrayidx10.i337 = getelementptr %struct.cxusb_state, ptr %73, i32 0, i32 4, i32 1
  %75 = call ptr @memcpy(ptr %arrayidx10.i337, ptr %obuf165, i32 %add201)
  %call16.i339 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data.i336, i16 noundef zeroext %add.i330, ptr noundef %data.i336, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i339)
  %tobool.not.i340.not = icmp eq i32 %call16.i339, 0
  br i1 %tobool.not.i340.not, label %if.end206, label %cxusb_ctrl_msg.exit345

cxusb_ctrl_msg.exit345:                           ; preds = %if.end.i334
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i339)
  %cmp203 = icmp slt i32 %call16.i339, 0
  br i1 %cmp203, label %cxusb_ctrl_msg.exit345.cleanup217.thread379_crit_edge, label %cxusb_ctrl_msg.exit345.do.end213_crit_edge

cxusb_ctrl_msg.exit345.do.end213_crit_edge:       ; preds = %cxusb_ctrl_msg.exit345
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end213

cxusb_ctrl_msg.exit345.cleanup217.thread379_crit_edge: ; preds = %cxusb_ctrl_msg.exit345
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup217.thread379

if.end206:                                        ; preds = %if.end.i334
  %76 = ptrtoint ptr %data.i336 to i32
  call void @__asan_load1_noabort(i32 %76)
  %ibuf166.0.copyload = load i8, ptr %data.i336, align 4
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %ibuf166.0.copyload)
  %cmp208.not = icmp eq i8 %ibuf166.0.copyload, 8
  br i1 %cmp208.not, label %if.end206.cleanup217.thread_crit_edge, label %if.end206.do.end213_crit_edge

if.end206.do.end213_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end213

if.end206.cleanup217.thread_crit_edge:            ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup217.thread

do.end213:                                        ; preds = %if.end206.do.end213_crit_edge, %cxusb_ctrl_msg.exit345.do.end213_crit_edge
  %77 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %udev, align 4
  %dev215 = getelementptr inbounds %struct.usb_device, ptr %78, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev215, ptr noundef nonnull @.str.74) #12
  br label %cleanup217.thread

cleanup217.thread:                                ; preds = %do.end213, %if.end206.cleanup217.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %obuf165)
  br label %for.inc

cleanup217.thread379:                             ; preds = %cxusb_ctrl_msg.exit345.cleanup217.thread379_crit_edge, %cxusb_ctrl_msg.exit345.thread
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %obuf165)
  br label %for.end

cleanup217:                                       ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #11
  %conv169 = zext i16 %64 to i32
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv169) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %obuf165)
  br label %unlock

for.inc:                                          ; preds = %cleanup217.thread, %cleanup160, %cleanup.thread
  %i.2 = phi i32 [ %add51, %cleanup160 ], [ %i.0408, %cleanup.thread ], [ %i.0408, %cleanup217.thread ]
  %inc223 = add nsw i32 %i.2, 1
  %cmp2 = icmp slt i32 %inc223, %num
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup217.thread379, %cleanup160.thread, %cleanup.thread352, %for.cond.preheader.for.end_crit_edge
  %i.0400 = phi i32 [ %i.0408, %cleanup217.thread379 ], [ %i.0408, %cleanup160.thread ], [ %i.0408, %cleanup.thread352 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc223, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0400, i32 %num)
  %cmp224 = icmp eq i32 %i.0400, %num
  %num. = select i1 %cmp224, i32 %num, i32 -121
  br label %unlock

unlock:                                           ; preds = %for.end, %cleanup217, %cleanup160.thread363, %cleanup
  %ret.5 = phi i32 [ -95, %cleanup ], [ -95, %cleanup217 ], [ %num., %for.end ], [ -95, %cleanup160.thread363 ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #9
  br label %cleanup230

cleanup230:                                       ; preds = %unlock, %entry.cleanup230_crit_edge
  %retval.0 = phi i32 [ %ret.5, %unlock ], [ -11, %entry.cleanup230_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxusb_i2c_func(ptr nocapture noundef readnone %adapter) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxusb_gpio_tuner(ptr noundef %d, i32 noundef %onoff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %arrayidx = getelementptr [3 x i8], ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %onoff)
  %cmp = icmp eq i32 %conv, %onoff
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr %struct.cxusb_state, ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1, !range !497
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %conv4 = trunc i32 %onoff to i8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 14, ptr %data.i, align 4
  %arrayidx10.i = getelementptr %struct.cxusb_state, ptr %1, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %arrayidx10.i, align 1
  %o.sroa.5.0.arrayidx10.i.sroa_idx = getelementptr %struct.cxusb_state, ptr %1, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %o.sroa.5.0.arrayidx10.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %o.sroa.5.0.arrayidx10.i.sroa_idx, align 1
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data.i, i16 noundef zeroext 3, ptr noundef %data.i, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i.not = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i.not, label %cxusb_ctrl_msg.exit, label %cxusb_ctrl_msg.exit.thread

cxusb_ctrl_msg.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  br label %do.end

cxusb_ctrl_msg.exit:                              ; preds = %if.end
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %i.0.copyload = load i8, ptr %data.i, align 4
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %i.0.copyload)
  %cmp7.not = icmp eq i8 %i.0.copyload, 1
  br i1 %cmp7.not, label %cxusb_ctrl_msg.exit.if.end10_crit_edge, label %cxusb_ctrl_msg.exit.do.end_crit_edge

cxusb_ctrl_msg.exit.do.end_crit_edge:             ; preds = %cxusb_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

cxusb_ctrl_msg.exit.if.end10_crit_edge:           ; preds = %cxusb_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end:                                           ; preds = %cxusb_ctrl_msg.exit.do.end_crit_edge, %cxusb_ctrl_msg.exit.thread
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.76) #12
  br label %if.end10

if.end10:                                         ; preds = %do.end, %cxusb_ctrl_msg.exit.if.end10_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4, ptr %arrayidx, align 2
  %arrayidx15 = getelementptr %struct.cxusb_state, ptr %1, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx15, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bluebird_patch_dvico_firmware_download(ptr noundef %udev, ptr nocapture noundef readonly %fw) #0 align 64 {
entry:
  %new_fw = alloca %struct.firmware, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6642, i32 %1)
  %cmp1 = icmp ult i32 %1, 6642
  br i1 %cmp1, label %for.inc, label %if.end

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx2 = getelementptr i8, ptr %3, i32 6638
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -23, i8 %5)
  %cmp3 = icmp eq i8 %5, -23
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end.1_crit_edge

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

land.lhs.true:                                    ; preds = %if.end
  %arrayidx7 = getelementptr i8, ptr %3, i32 6639
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %7)
  %cmp9 = icmp eq i8 %7, 15
  br i1 %cmp9, label %land.lhs.true.if.then11_crit_edge, label %land.lhs.true.if.end.1_crit_edge

land.lhs.true.if.end.1_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %land.lhs.true.1.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge
  %.lcssa = phi i32 [ 6638, %land.lhs.true.if.then11_crit_edge ], [ 3204, %land.lhs.true.1.if.then11_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %new_fw) #9
  %8 = getelementptr inbounds %struct.firmware, ptr %new_fw, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %8, align 4, !annotation !496
  %call = tail call noalias ptr @vmalloc(i32 noundef %1) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then11.cleanup35_crit_edge, label %if.end14

if.then11.cleanup35_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup35

if.end14:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %10 = getelementptr inbounds %struct.firmware, ptr %new_fw, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw, align 4
  %15 = call ptr @memcpy(ptr %call, ptr %12, i32 %14)
  %16 = ptrtoint ptr %new_fw to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %new_fw, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %10, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 8
  %18 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %idProduct, align 2
  %20 = lshr i16 %19, 8
  %conv20 = trunc i16 %20 to i8
  %add21 = add i8 %conv20, 1
  %add23 = add nuw nsw i32 %.lcssa, 2
  %arrayidx24 = getelementptr i8, ptr %call, i32 %add23
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %add21, ptr %arrayidx24, align 1
  %conv28 = trunc i16 %19 to i8
  %add29 = add nuw nsw i32 %.lcssa, 3
  %arrayidx30 = getelementptr i8, ptr %call, i32 %add29
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv28, ptr %arrayidx30, align 1
  %call31 = call i32 @usb_cypress_load_firmware(ptr noundef %udev, ptr noundef nonnull %new_fw, i32 noundef 3) #9
  call void @vfree(ptr noundef nonnull %call) #9
  br label %cleanup35

cleanup35:                                        ; preds = %if.end14, %if.then11.cleanup35_crit_edge
  %retval.1 = phi i32 [ %call31, %if.end14 ], [ -12, %if.then11.cleanup35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %new_fw) #9
  br label %cleanup36

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3208, i32 %1)
  %cmp1.1 = icmp ult i32 %1, 3208
  br i1 %cmp1.1, label %for.inc.cleanup36_crit_edge, label %for.inc.if.end.1_crit_edge

for.inc.if.end.1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

for.inc.cleanup36_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

if.end.1:                                         ; preds = %for.inc.if.end.1_crit_edge, %land.lhs.true.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %arrayidx2.1 = getelementptr i8, ptr %24, i32 3204
  %25 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx2.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -23, i8 %26)
  %cmp3.1 = icmp eq i8 %26, -23
  br i1 %cmp3.1, label %land.lhs.true.1, label %if.end.1.cleanup36_crit_edge

if.end.1.cleanup36_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

land.lhs.true.1:                                  ; preds = %if.end.1
  %arrayidx7.1 = getelementptr i8, ptr %24, i32 3205
  %27 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx7.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %28)
  %cmp9.1 = icmp eq i8 %28, 15
  br i1 %cmp9.1, label %land.lhs.true.1.if.then11_crit_edge, label %land.lhs.true.1.cleanup36_crit_edge

land.lhs.true.1.cleanup36_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

land.lhs.true.1.if.then11_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

cleanup36:                                        ; preds = %land.lhs.true.1.cleanup36_crit_edge, %if.end.1.cleanup36_crit_edge, %for.inc.cleanup36_crit_edge, %cleanup35
  %retval.3 = phi i32 [ %retval.1, %cleanup35 ], [ -22, %land.lhs.true.1.cleanup36_crit_edge ], [ -22, %if.end.1.cleanup36_crit_edge ], [ -22, %for.inc.cleanup36_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_lgdt3303_frontend_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef 0, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 81, ptr %data.i, align 4
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %5, ptr noundef %data.i, i16 noundef zeroext 1, ptr noundef %data.i, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.89) #9
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %cond.end, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

cond.end:                                         ; preds = %if.end
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.90) #9
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.89) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end15, label %cond.end.if.then8_crit_edge

cond.end.if.then8_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %cond.end.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %cond34 = phi ptr [ %call6, %cond.end.if.then8_crit_edge ], [ %call4, %if.end.if.then8_crit_edge ]
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %10, i32 0, i32 8
  %call10 = tail call ptr %cond34(ptr noundef nonnull @cxusb_lgdt3303_config, i8 noundef zeroext 14, ptr noundef %i2c_adap) #9
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then12, label %if.then8.if.end18_crit_edge

if.then8.if.end18_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.89) #9
  br label %if.end18

do.end15:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.then12, %if.then8.if.end18_crit_edge
  %__r.0 = phi ptr [ null, %if.then12 ], [ %call10, %if.then8.if.end18_crit_edge ], [ null, %do.end15 ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %11 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %__r.0, ptr %fe_adap, align 8
  %tobool23.not = icmp eq ptr %__r.0, null
  %. = select i1 %tobool23.not, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_lgh064f_tuner_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.54) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.55) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.54) #9
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
  %call4 = tail call ptr %cond14(ptr noundef %1, ptr noundef %i2c_adap, i8 noundef zeroext 97, i32 noundef 64) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.54) #9
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_bluebird_power_ctrl(ptr noundef %d, i32 noundef %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -34, ptr %data.i, align 4
  %arrayidx10.i = getelementptr %struct.cxusb_state, ptr %1, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx10.i, align 1
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data.i, i16 noundef zeroext 2, ptr noundef %data.i, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16.i, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_rc_query(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 71, ptr %data.i, align 4
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data.i, i16 noundef zeroext 1, ptr noundef %data.i, i16 noundef zeroext 4, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i.not = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %cxusb_ctrl_msg.exit

cxusb_ctrl_msg.exit:                              ; preds = %entry
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp = icmp slt i32 %call16.i, 0
  br i1 %cmp, label %cxusb_ctrl_msg.exit.cleanup_crit_edge, label %cxusb_ctrl_msg.exit.if.then4_crit_edge

cxusb_ctrl_msg.exit.if.then4_crit_edge:           ; preds = %cxusb_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

cxusb_ctrl_msg.exit.cleanup_crit_edge:            ; preds = %cxusb_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ircode.sroa.5.0.data.i.sroa_idx = getelementptr inbounds %struct.cxusb_state, ptr %1, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %ircode.sroa.5.0.data.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %ircode.sroa.5.0.copyload = load i8, ptr %ircode.sroa.5.0.data.i.sroa_idx, align 2
  %ircode.sroa.8.0.data.i.sroa_idx = getelementptr inbounds %struct.cxusb_state, ptr %1, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %ircode.sroa.8.0.data.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %ircode.sroa.8.0.copyload = load i8, ptr %ircode.sroa.8.0.data.i.sroa_idx, align 1
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ircode.sroa.5.0.copyload)
  %tobool.not = icmp eq i8 %ircode.sroa.5.0.copyload, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ircode.sroa.8.0.copyload)
  %tobool3.not = icmp eq i8 %ircode.sroa.8.0.copyload, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge, %cxusb_ctrl_msg.exit.if.then4_crit_edge
  %ircode.sroa.5.01923 = phi i8 [ 0, %lor.lhs.false.if.then4_crit_edge ], [ %ircode.sroa.5.0.copyload, %if.end.if.then4_crit_edge ], [ -1, %cxusb_ctrl_msg.exit.if.then4_crit_edge ]
  %ircode.sroa.8.018 = phi i8 [ %ircode.sroa.8.0.copyload, %lor.lhs.false.if.then4_crit_edge ], [ %ircode.sroa.8.0.copyload, %if.end.if.then4_crit_edge ], [ -1, %cxusb_ctrl_msg.exit.if.then4_crit_edge ]
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %5 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rc_dev, align 8
  %7 = xor i8 %ircode.sroa.5.01923, -1
  %and = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %and, 8
  %conv8 = zext i8 %ircode.sroa.8.018 to i32
  %or = or i32 %shl, %conv8
  %conv9 = zext i32 %or to i64
  tail call void @rc_keydown(ptr noundef %6, i32 noundef 9, i64 noundef %conv9, i8 noundef zeroext 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %lor.lhs.false.cleanup_crit_edge, %cxusb_ctrl_msg.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_cypress_load_firmware(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_dee1601_frontend_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 81, ptr %data.i, align 4
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %5, ptr noundef %data.i, i16 noundef zeroext 1, ptr noundef %data.i, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.101) #9
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %cond.end, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

cond.end:                                         ; preds = %if.end
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.102) #9
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.101) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end15, label %cond.end.if.then8_crit_edge

cond.end.if.then8_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %cond.end.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %cond74 = phi ptr [ %call6, %cond.end.if.then8_crit_edge ], [ %call4, %if.end.if.then8_crit_edge ]
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %10, i32 0, i32 8
  %call10 = tail call ptr %cond74(ptr noundef nonnull @cxusb_dee1601_config, ptr noundef %i2c_adap) #9
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.101) #9
  br label %if.end25

do.end15:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #12
  br label %if.end25

if.end18:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %11 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %fe_adap, align 8
  br label %return

if.end25:                                         ; preds = %do.end15, %if.then12
  %fe_adap76 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %12 = ptrtoint ptr %fe_adap76 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %fe_adap76, align 8
  %call28 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.106) #9
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %cond.end34, label %if.end25.if.then37_crit_edge

if.end25.if.then37_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

cond.end34:                                       ; preds = %if.end25
  %call32 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.107) #9
  %call33 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.106) #9
  %tobool36.not = icmp eq ptr %call33, null
  br i1 %tobool36.not, label %do.end47, label %cond.end34.if.then37_crit_edge

cond.end34.if.then37_crit_edge:                   ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

if.then37:                                        ; preds = %cond.end34.if.then37_crit_edge, %if.end25.if.then37_crit_edge
  %cond3581 = phi ptr [ %call33, %cond.end34.if.then37_crit_edge ], [ %call28, %if.end25.if.then37_crit_edge ]
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap, align 8
  %i2c_adap39 = getelementptr inbounds %struct.dvb_usb_device, ptr %14, i32 0, i32 8
  %call40 = tail call ptr %cond3581(ptr noundef nonnull @cxusb_zl10353_dee1601_config, ptr noundef %i2c_adap39) #9
  %cmp41 = icmp eq ptr %call40, null
  br i1 %cmp41, label %if.then42, label %if.then37.if.end50_crit_edge

if.then37.if.end50_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.106) #9
  br label %if.end50

do.end47:                                         ; preds = %cond.end34
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end47, %if.then42, %if.then37.if.end50_crit_edge
  %__r26.0 = phi ptr [ null, %if.then42 ], [ %call40, %if.then37.if.end50_crit_edge ], [ null, %do.end47 ]
  %15 = ptrtoint ptr %fe_adap76 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %__r26.0, ptr %fe_adap76, align 8
  %tobool58.not = icmp eq ptr %__r26.0, null
  %. = select i1 %tobool58.not, i32 -5, i32 0
  br label %return

return:                                           ; preds = %if.end50, %if.end18
  %retval.0 = phi i32 [ 0, %if.end18 ], [ %., %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_dee1601_tuner_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.111) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.112) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.111) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond13 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %0 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe_adap, align 8
  %call4 = tail call ptr %cond13(ptr noundef %1, i32 noundef 97, ptr noundef null, i32 noundef 1) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.111) #9
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_dee1601_demod_init(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit_crit_edge, label %if.then.i

entry.mt352_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @cxusb_dee1601_demod_init.clock_config, i32 noundef 3) #9
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %entry.mt352_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 42949600) #9
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i12 = icmp eq ptr %4, null
  br i1 %tobool.not.i12, label %mt352_write.exit.mt352_write.exit35_crit_edge, label %mt352_write.exit15

mt352_write.exit.mt352_write.exit35_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit35

mt352_write.exit15:                               ; preds = %mt352_write.exit
  %call.i13 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @cxusb_dee1601_demod_init.reset, i32 noundef 2) #9
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i17 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i17, label %mt352_write.exit15.mt352_write.exit35_crit_edge, label %mt352_write.exit20

mt352_write.exit15.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit15
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit35

mt352_write.exit20:                               ; preds = %mt352_write.exit15
  %call.i18 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @cxusb_dee1601_demod_init.adc_ctl_1_cfg, i32 noundef 2) #9
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr37 = load ptr, ptr %write.i, align 4
  %tobool.not.i22 = icmp eq ptr %.pr37, null
  br i1 %tobool.not.i22, label %mt352_write.exit20.mt352_write.exit35_crit_edge, label %mt352_write.exit25

mt352_write.exit20.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit20
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit35

mt352_write.exit25:                               ; preds = %mt352_write.exit20
  %call.i23 = tail call i32 %.pr37(ptr noundef %fe, ptr noundef nonnull @cxusb_dee1601_demod_init.agc_cfg, i32 noundef 3) #9
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr39.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i27 = icmp eq ptr %.pr39.pr, null
  br i1 %tobool.not.i27, label %mt352_write.exit25.mt352_write.exit35_crit_edge, label %mt352_write.exit30

mt352_write.exit25.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit25
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit35

mt352_write.exit30:                               ; preds = %mt352_write.exit25
  %call.i28 = tail call i32 %.pr39.pr(ptr noundef %fe, ptr noundef nonnull @cxusb_dee1601_demod_init.gpp_ctl_cfg, i32 noundef 2) #9
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr41 = load ptr, ptr %write.i, align 4
  %tobool.not.i32 = icmp eq ptr %.pr41, null
  br i1 %tobool.not.i32, label %mt352_write.exit30.mt352_write.exit35_crit_edge, label %if.then.i34

mt352_write.exit30.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit35

if.then.i34:                                      ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #11
  %call.i33 = tail call i32 %.pr41(ptr noundef %fe, ptr noundef nonnull @cxusb_dee1601_demod_init.capt_range_cfg, i32 noundef 2) #9
  br label %mt352_write.exit35

mt352_write.exit35:                               ; preds = %if.then.i34, %mt352_write.exit30.mt352_write.exit35_crit_edge, %mt352_write.exit25.mt352_write.exit35_crit_edge, %mt352_write.exit20.mt352_write.exit35_crit_edge, %mt352_write.exit15.mt352_write.exit35_crit_edge, %mt352_write.exit.mt352_write.exit35_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_mt352_frontend_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 81, ptr %data.i, align 4
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %5, ptr noundef %data.i, i16 noundef zeroext 1, ptr noundef %data.i, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.101) #9
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %cond.end, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

cond.end:                                         ; preds = %if.end
  %call5 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.102) #9
  %call6 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.101) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end15, label %cond.end.if.then8_crit_edge

cond.end.if.then8_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %cond.end.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %cond34 = phi ptr [ %call6, %cond.end.if.then8_crit_edge ], [ %call4, %if.end.if.then8_crit_edge ]
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %10, i32 0, i32 8
  %call10 = tail call ptr %cond34(ptr noundef nonnull @cxusb_mt352_config, ptr noundef %i2c_adap) #9
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then12, label %if.then8.if.end18_crit_edge

if.then8.if.end18_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.101) #9
  br label %if.end18

do.end15:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.then12, %if.then8.if.end18_crit_edge
  %__r.0 = phi ptr [ null, %if.then12 ], [ %call10, %if.then8.if.end18_crit_edge ], [ null, %do.end15 ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %11 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %__r.0, ptr %fe_adap, align 8
  %tobool23.not = icmp eq ptr %__r.0, null
  %. = select i1 %tobool23.not, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_lgz201_tuner_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.111) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.112) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.111) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond13 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %0 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe_adap, align 8
  %call4 = tail call ptr %cond13(ptr noundef %1, i32 noundef 97, ptr noundef null, i32 noundef 3) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.111) #9
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_mt352_demod_init(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit_crit_edge, label %if.then.i

entry.mt352_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @cxusb_mt352_demod_init.clock_config, i32 noundef 3) #9
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %entry.mt352_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 42949600) #9
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i12 = icmp eq ptr %4, null
  br i1 %tobool.not.i12, label %mt352_write.exit.mt352_write.exit35_crit_edge, label %mt352_write.exit15

mt352_write.exit.mt352_write.exit35_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit35

mt352_write.exit15:                               ; preds = %mt352_write.exit
  %call.i13 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @cxusb_mt352_demod_init.reset, i32 noundef 2) #9
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i17 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i17, label %mt352_write.exit15.mt352_write.exit35_crit_edge, label %mt352_write.exit20

mt352_write.exit15.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit15
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit35

mt352_write.exit20:                               ; preds = %mt352_write.exit15
  %call.i18 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @cxusb_mt352_demod_init.adc_ctl_1_cfg, i32 noundef 2) #9
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr37 = load ptr, ptr %write.i, align 4
  %tobool.not.i22 = icmp eq ptr %.pr37, null
  br i1 %tobool.not.i22, label %mt352_write.exit20.mt352_write.exit35_crit_edge, label %mt352_write.exit25

mt352_write.exit20.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit20
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit35

mt352_write.exit25:                               ; preds = %mt352_write.exit20
  %call.i23 = tail call i32 %.pr37(ptr noundef %fe, ptr noundef nonnull @cxusb_mt352_demod_init.agc_cfg, i32 noundef 3) #9
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr39.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i27 = icmp eq ptr %.pr39.pr, null
  br i1 %tobool.not.i27, label %mt352_write.exit25.mt352_write.exit35_crit_edge, label %mt352_write.exit30

mt352_write.exit25.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit25
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit35

mt352_write.exit30:                               ; preds = %mt352_write.exit25
  %call.i28 = tail call i32 %.pr39.pr(ptr noundef %fe, ptr noundef nonnull @cxusb_mt352_demod_init.gpp_ctl_cfg, i32 noundef 2) #9
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr41 = load ptr, ptr %write.i, align 4
  %tobool.not.i32 = icmp eq ptr %.pr41, null
  br i1 %tobool.not.i32, label %mt352_write.exit30.mt352_write.exit35_crit_edge, label %if.then.i34

mt352_write.exit30.mt352_write.exit35_crit_edge:  ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #11
  br label %mt352_write.exit35

if.then.i34:                                      ; preds = %mt352_write.exit30
  call void @__sanitizer_cov_trace_pc() #11
  %call.i33 = tail call i32 %.pr41(ptr noundef %fe, ptr noundef nonnull @cxusb_mt352_demod_init.capt_range_cfg, i32 noundef 2) #9
  br label %mt352_write.exit35

mt352_write.exit35:                               ; preds = %if.then.i34, %mt352_write.exit30.mt352_write.exit35_crit_edge, %mt352_write.exit25.mt352_write.exit35_crit_edge, %mt352_write.exit20.mt352_write.exit35_crit_edge, %mt352_write.exit15.mt352_write.exit35_crit_edge, %mt352_write.exit.mt352_write.exit35_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_dtt7579_tuner_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.111) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.112) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.111) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond13 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %0 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe_adap, align 8
  %call4 = tail call ptr %cond13(ptr noundef %1, i32 noundef 96, ptr noundef null, i32 noundef 1) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.111) #9
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_dualdig4_frontend_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  %ircode = alloca [4 x i8], align 4
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ircode) #9
  %0 = getelementptr inbounds [4 x i8], ptr %ircode, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %ircode, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %ircode, i32 0, i32 3
  %3 = ptrtoint ptr %ircode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ircode, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 107, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ircode, ptr %buf, align 4
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev, align 4
  %call = call i32 @usb_set_interface(ptr noundef %13, i32 noundef 0, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %15, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 81, ptr %data.i, align 4
  %call16.i = call i32 @dvb_usb_generic_rw(ptr noundef %15, ptr noundef %data.i, i16 noundef zeroext 1, ptr noundef %data.i, i16 noundef zeroext 0, i32 noundef 0) #9
  call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  %19 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adap, align 8
  call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %20, i8 noundef zeroext 4, i8 noundef zeroext 0)
  %21 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adap, align 8
  call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %22, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @msleep(i32 noundef 5) #9
  call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %22, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  %23 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adap, align 8
  call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %24, i8 noundef zeroext 2, i8 noundef zeroext 0) #9
  call void @msleep(i32 noundef 5) #9
  call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %24, i8 noundef zeroext 2, i8 noundef zeroext 2) #9
  %call8 = call ptr @__symbol_get(ptr noundef nonnull @.str.106) #9
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %cond.end, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

cond.end:                                         ; preds = %if.end
  %call9 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.107) #9
  %call10 = call ptr @__symbol_get(ptr noundef nonnull @.str.106) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end20, label %cond.end.if.then12_crit_edge

cond.end.if.then12_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %cond.end.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %cond84 = phi ptr [ %call10, %cond.end.if.then12_crit_edge ], [ %call8, %if.end.if.then12_crit_edge ]
  %25 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %26, i32 0, i32 8
  %call14 = call ptr %cond84(ptr noundef nonnull @cxusb_zl10353_xc3028_config_no_i2c_gate, ptr noundef %i2c_adap) #9
  %cmp15 = icmp eq ptr %call14, null
  br i1 %cmp15, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  call void @__symbol_put(ptr noundef nonnull @.str.106) #9
  br label %if.end23.thread

do.end20:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #12
  br label %if.end23.thread

if.end23.thread:                                  ; preds = %do.end20, %if.then16
  %fe_adap86 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %27 = ptrtoint ptr %fe_adap86 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %fe_adap86, align 8
  br label %cleanup

if.end23:                                         ; preds = %if.then12
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %28 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call14, ptr %fe_adap, align 8
  %29 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adap, align 8
  %core88 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %30, i32 0, i32 13, i32 2
  %31 = ptrtoint ptr %core88 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %core88, align 8
  %tobool32.not89.not = icmp eq ptr %32, null
  br i1 %tobool32.not89.not, label %if.end23.cleanup_crit_edge, label %for.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %if.end23
  call void @msleep(i32 noundef 20) #9
  %33 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adap, align 8
  %i2c_adap35 = getelementptr inbounds %struct.dvb_usb_device, ptr %34, i32 0, i32 8
  %call36 = call i32 @cxusb_i2c_xfer(ptr noundef %i2c_adap35, ptr noundef nonnull %msg, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 1
  br i1 %cmp37.not, label %if.end39, label %for.body.no_IR_crit_edge

for.body.no_IR_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_IR

if.end39:                                         ; preds = %for.body
  %35 = ptrtoint ptr %ircode to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ircode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp41 = icmp eq i8 %36, 0
  br i1 %cmp41, label %land.lhs.true, label %if.end39.if.end48_crit_edge

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end39
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp45 = icmp eq i8 %38, 0
  br i1 %cmp45, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end48:                                         ; preds = %land.lhs.true.if.end48_crit_edge, %if.end39.if.end48_crit_edge
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %1, align 2
  %conv50 = zext i8 %40 to i32
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %2, align 1
  %conv52 = zext i8 %42 to i32
  %add = add nuw nsw i32 %conv52, %conv50
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add)
  %cmp53.not = icmp eq i32 %add, 255
  br i1 %cmp53.not, label %if.end48.for.inc_crit_edge, label %if.end48.no_IR_crit_edge

if.end48.no_IR_crit_edge:                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_IR

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

no_IR:                                            ; preds = %if.end48.4.no_IR_crit_edge, %for.body.4.no_IR_crit_edge, %if.end48.3.no_IR_crit_edge, %for.body.3.no_IR_crit_edge, %if.end48.2.no_IR_crit_edge, %for.body.2.no_IR_crit_edge, %if.end48.1.no_IR_crit_edge, %for.body.1.no_IR_crit_edge, %if.end48.no_IR_crit_edge, %for.body.no_IR_crit_edge
  %43 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adap, align 8
  %core59 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %44, i32 0, i32 13, i32 2
  %45 = ptrtoint ptr %core59 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %core59, align 8
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #12
  br label %cleanup

for.inc:                                          ; preds = %if.end48.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %46 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adap, align 8
  %core = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %47, i32 0, i32 13, i32 2
  %48 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %core, align 8
  %tobool32.not.not = icmp eq ptr %49, null
  br i1 %tobool32.not.not, label %for.inc.cleanup_crit_edge, label %for.body.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.1:                                       ; preds = %for.inc
  call void @msleep(i32 noundef 20) #9
  %50 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adap, align 8
  %i2c_adap35.1 = getelementptr inbounds %struct.dvb_usb_device, ptr %51, i32 0, i32 8
  %call36.1 = call i32 @cxusb_i2c_xfer(ptr noundef %i2c_adap35.1, ptr noundef nonnull %msg, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36.1)
  %cmp37.not.1 = icmp eq i32 %call36.1, 1
  br i1 %cmp37.not.1, label %if.end39.1, label %for.body.1.no_IR_crit_edge

for.body.1.no_IR_crit_edge:                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_IR

if.end39.1:                                       ; preds = %for.body.1
  %52 = ptrtoint ptr %ircode to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ircode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp41.1 = icmp eq i8 %53, 0
  br i1 %cmp41.1, label %land.lhs.true.1, label %if.end39.1.if.end48.1_crit_edge

if.end39.1.if.end48.1_crit_edge:                  ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.1

land.lhs.true.1:                                  ; preds = %if.end39.1
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp45.1 = icmp eq i8 %55, 0
  br i1 %cmp45.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.if.end48.1_crit_edge

land.lhs.true.1.if.end48.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end48.1:                                       ; preds = %land.lhs.true.1.if.end48.1_crit_edge, %if.end39.1.if.end48.1_crit_edge
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %1, align 2
  %conv50.1 = zext i8 %57 to i32
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %2, align 1
  %conv52.1 = zext i8 %59 to i32
  %add.1 = add nuw nsw i32 %conv52.1, %conv50.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.1)
  %cmp53.not.1 = icmp eq i32 %add.1, 255
  br i1 %cmp53.not.1, label %if.end48.1.for.inc.1_crit_edge, label %if.end48.1.no_IR_crit_edge

if.end48.1.no_IR_crit_edge:                       ; preds = %if.end48.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_IR

if.end48.1.for.inc.1_crit_edge:                   ; preds = %if.end48.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end48.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge
  %60 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adap, align 8
  %core.1 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %61, i32 0, i32 13, i32 2
  %62 = ptrtoint ptr %core.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %core.1, align 8
  %tobool32.not.1.not = icmp eq ptr %63, null
  br i1 %tobool32.not.1.not, label %for.inc.1.cleanup_crit_edge, label %for.body.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.2:                                       ; preds = %for.inc.1
  call void @msleep(i32 noundef 20) #9
  %64 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adap, align 8
  %i2c_adap35.2 = getelementptr inbounds %struct.dvb_usb_device, ptr %65, i32 0, i32 8
  %call36.2 = call i32 @cxusb_i2c_xfer(ptr noundef %i2c_adap35.2, ptr noundef nonnull %msg, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36.2)
  %cmp37.not.2 = icmp eq i32 %call36.2, 1
  br i1 %cmp37.not.2, label %if.end39.2, label %for.body.2.no_IR_crit_edge

for.body.2.no_IR_crit_edge:                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_IR

if.end39.2:                                       ; preds = %for.body.2
  %66 = ptrtoint ptr %ircode to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ircode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp41.2 = icmp eq i8 %67, 0
  br i1 %cmp41.2, label %land.lhs.true.2, label %if.end39.2.if.end48.2_crit_edge

if.end39.2.if.end48.2_crit_edge:                  ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.2

land.lhs.true.2:                                  ; preds = %if.end39.2
  %68 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp45.2 = icmp eq i8 %69, 0
  br i1 %cmp45.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.if.end48.2_crit_edge

land.lhs.true.2.if.end48.2_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.end48.2:                                       ; preds = %land.lhs.true.2.if.end48.2_crit_edge, %if.end39.2.if.end48.2_crit_edge
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %1, align 2
  %conv50.2 = zext i8 %71 to i32
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %2, align 1
  %conv52.2 = zext i8 %73 to i32
  %add.2 = add nuw nsw i32 %conv52.2, %conv50.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.2)
  %cmp53.not.2 = icmp eq i32 %add.2, 255
  br i1 %cmp53.not.2, label %if.end48.2.for.inc.2_crit_edge, label %if.end48.2.no_IR_crit_edge

if.end48.2.no_IR_crit_edge:                       ; preds = %if.end48.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_IR

if.end48.2.for.inc.2_crit_edge:                   ; preds = %if.end48.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end48.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge
  %74 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adap, align 8
  %core.2 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %75, i32 0, i32 13, i32 2
  %76 = ptrtoint ptr %core.2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %core.2, align 8
  %tobool32.not.2.not = icmp eq ptr %77, null
  br i1 %tobool32.not.2.not, label %for.inc.2.cleanup_crit_edge, label %for.body.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.3:                                       ; preds = %for.inc.2
  call void @msleep(i32 noundef 20) #9
  %78 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %adap, align 8
  %i2c_adap35.3 = getelementptr inbounds %struct.dvb_usb_device, ptr %79, i32 0, i32 8
  %call36.3 = call i32 @cxusb_i2c_xfer(ptr noundef %i2c_adap35.3, ptr noundef nonnull %msg, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36.3)
  %cmp37.not.3 = icmp eq i32 %call36.3, 1
  br i1 %cmp37.not.3, label %if.end39.3, label %for.body.3.no_IR_crit_edge

for.body.3.no_IR_crit_edge:                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_IR

if.end39.3:                                       ; preds = %for.body.3
  %80 = ptrtoint ptr %ircode to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ircode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp41.3 = icmp eq i8 %81, 0
  br i1 %cmp41.3, label %land.lhs.true.3, label %if.end39.3.if.end48.3_crit_edge

if.end39.3.if.end48.3_crit_edge:                  ; preds = %if.end39.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.3

land.lhs.true.3:                                  ; preds = %if.end39.3
  %82 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp45.3 = icmp eq i8 %83, 0
  br i1 %cmp45.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true.3.if.end48.3_crit_edge

land.lhs.true.3.if.end48.3_crit_edge:             ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.end48.3:                                       ; preds = %land.lhs.true.3.if.end48.3_crit_edge, %if.end39.3.if.end48.3_crit_edge
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %1, align 2
  %conv50.3 = zext i8 %85 to i32
  %86 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %2, align 1
  %conv52.3 = zext i8 %87 to i32
  %add.3 = add nuw nsw i32 %conv52.3, %conv50.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.3)
  %cmp53.not.3 = icmp eq i32 %add.3, 255
  br i1 %cmp53.not.3, label %if.end48.3.for.inc.3_crit_edge, label %if.end48.3.no_IR_crit_edge

if.end48.3.no_IR_crit_edge:                       ; preds = %if.end48.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_IR

if.end48.3.for.inc.3_crit_edge:                   ; preds = %if.end48.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end48.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge
  %88 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adap, align 8
  %core.3 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %89, i32 0, i32 13, i32 2
  %90 = ptrtoint ptr %core.3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %core.3, align 8
  %tobool32.not.3.not = icmp eq ptr %91, null
  br i1 %tobool32.not.3.not, label %for.inc.3.cleanup_crit_edge, label %for.body.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.4:                                       ; preds = %for.inc.3
  call void @msleep(i32 noundef 20) #9
  %92 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adap, align 8
  %i2c_adap35.4 = getelementptr inbounds %struct.dvb_usb_device, ptr %93, i32 0, i32 8
  %call36.4 = call i32 @cxusb_i2c_xfer(ptr noundef %i2c_adap35.4, ptr noundef nonnull %msg, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36.4)
  %cmp37.not.4 = icmp eq i32 %call36.4, 1
  br i1 %cmp37.not.4, label %if.end39.4, label %for.body.4.no_IR_crit_edge

for.body.4.no_IR_crit_edge:                       ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_IR

if.end39.4:                                       ; preds = %for.body.4
  %94 = ptrtoint ptr %ircode to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ircode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp41.4 = icmp eq i8 %95, 0
  br i1 %cmp41.4, label %land.lhs.true.4, label %if.end39.4.if.end48.4_crit_edge

if.end39.4.if.end48.4_crit_edge:                  ; preds = %if.end39.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.4

land.lhs.true.4:                                  ; preds = %if.end39.4
  %96 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp45.4 = icmp eq i8 %97, 0
  br i1 %cmp45.4, label %land.lhs.true.4.cleanup_crit_edge, label %land.lhs.true.4.if.end48.4_crit_edge

land.lhs.true.4.if.end48.4_crit_edge:             ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.4

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48.4:                                       ; preds = %land.lhs.true.4.if.end48.4_crit_edge, %if.end39.4.if.end48.4_crit_edge
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %1, align 2
  %conv50.4 = zext i8 %99 to i32
  %100 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %2, align 1
  %conv52.4 = zext i8 %101 to i32
  %add.4 = add nuw nsw i32 %conv52.4, %conv50.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add.4)
  %cmp53.not.4 = icmp eq i32 %add.4, 255
  br i1 %cmp53.not.4, label %if.end48.4.cleanup_crit_edge, label %if.end48.4.no_IR_crit_edge

if.end48.4.no_IR_crit_edge:                       ; preds = %if.end48.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_IR

if.end48.4.cleanup_crit_edge:                     ; preds = %if.end48.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end48.4.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %no_IR, %if.end23.cleanup_crit_edge, %if.end23.thread
  %retval.0 = phi i32 [ 0, %no_IR ], [ -5, %if.end23.thread ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %land.lhs.true.4.cleanup_crit_edge ], [ 0, %if.end48.4.cleanup_crit_edge ], [ 0, %for.inc.3.cleanup_crit_edge ], [ 0, %for.inc.2.cleanup_crit_edge ], [ 0, %for.inc.1.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ircode) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_dvico_xc3028_tuner_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  %cfg = alloca %struct.xc2028_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #9
  %0 = getelementptr inbounds i8, ptr %cfg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %i2c_adap1 = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %i2c_adap1, ptr %cfg, align 4
  %i2c_addr = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 1
  %5 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 97, ptr %i2c_addr, align 4
  %ctrl = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ctrl, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %7 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fe_adap, align 8
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dvico_bluebird_xc2028_callback, ptr %callback, align 4
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.135) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call3 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.136) #9
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.135) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond32 = phi ptr [ %call4, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %10 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fe_adap, align 8
  %call9 = call ptr %cond32(ptr noundef %11, ptr noundef nonnull %cfg) #9
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.then10, label %lor.lhs.false

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @__symbol_put(ptr noundef nonnull @.str.135) #9
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137) #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %set_config = getelementptr inbounds %struct.dvb_frontend, ptr %call9, i32 0, i32 1, i32 32, i32 8
  %12 = ptrtoint ptr %set_config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_config, align 4
  %tobool15.not = icmp eq ptr %13, null
  br i1 %tobool15.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end17

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = call i32 %13(ptr noundef nonnull %call9, ptr noundef nonnull @cxusb_dvico_xc3028_tuner_attach.ctl) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %lor.lhs.false.cleanup_crit_edge, %do.end, %if.then10
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %if.then10 ], [ -5, %do.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_bluebird2_rc_query(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  %ircode = alloca [4 x i8], align 4
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ircode) #9
  %0 = getelementptr inbounds [4 x i8], ptr %ircode, i32 0, i32 2
  %1 = ptrtoint ptr %ircode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ircode, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 107, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ircode, ptr %buf, align 4
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 8
  %call = call i32 @cxusb_i2c_xfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds [4 x i8], ptr %ircode, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not = icmp eq i8 %12, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %13 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rc_dev, align 8
  %15 = xor i8 %10, -1
  %and = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %and, 8
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %0, align 2
  %conv8 = zext i8 %17 to i32
  %or = or i32 %shl, %conv8
  %conv9 = zext i32 %or to i64
  call void @rc_keydown(ptr noundef %14, i32 noundef 9, i64 noundef %conv9, i8 noundef zeroext 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ircode) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %d, i8 noundef zeroext %changemask, i8 noundef zeroext %newval) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = xor i8 %changemask, -1
  %and41 = and i8 %newval, %changemask
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 5, ptr %data.i, align 4
  %arrayidx10.i = getelementptr %struct.cxusb_state, ptr %1, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %and, ptr %arrayidx10.i, align 1
  %o.sroa.5.0.arrayidx10.i.sroa_idx = getelementptr %struct.cxusb_state, ptr %1, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %o.sroa.5.0.arrayidx10.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %and41, ptr %o.sroa.5.0.arrayidx10.i.sroa_idx, align 1
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data.i, i16 noundef zeroext 3, ptr noundef %data.i, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i.not = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i.not, label %cxusb_ctrl_msg.exit.thread, label %cxusb_ctrl_msg.exit

cxusb_ctrl_msg.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %gpio_state.0.copyload = load i8, ptr %data.i, align 4
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  br label %lor.lhs.false

cxusb_ctrl_msg.exit:                              ; preds = %entry
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp = icmp slt i32 %call16.i, 0
  br i1 %cmp, label %cxusb_ctrl_msg.exit.do.end_crit_edge, label %cxusb_ctrl_msg.exit.lor.lhs.false_crit_edge

cxusb_ctrl_msg.exit.lor.lhs.false_crit_edge:      ; preds = %cxusb_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

cxusb_ctrl_msg.exit.do.end_crit_edge:             ; preds = %cxusb_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %cxusb_ctrl_msg.exit.lor.lhs.false_crit_edge, %cxusb_ctrl_msg.exit.thread
  %gpio_state.05 = phi i8 [ %gpio_state.0.copyload, %cxusb_ctrl_msg.exit.thread ], [ -1, %cxusb_ctrl_msg.exit.lor.lhs.false_crit_edge ]
  %and102 = and i8 %gpio_state.05, %changemask
  call void @__sanitizer_cov_trace_cmp1(i8 %and102, i8 %and41)
  %cmp14.not = icmp eq i8 %and102, %and41
  br i1 %cmp14.not, label %lor.lhs.false.cond.end_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.cond.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %cxusb_ctrl_msg.exit.do.end_crit_edge
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.132) #12
  br label %cond.end

cond.end:                                         ; preds = %do.end, %lor.lhs.false.cond.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvico_bluebird_xc2028_callback(ptr nocapture noundef readonly %ptr, i32 noundef %component, i32 noundef %command, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %2 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %command, label %do.end10 [
    i32 0, label %do.end
    i32 1, label %do.end5
    i32 2, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.139, i32 noundef %arg) #12
  tail call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  tail call void @msleep(i32 noundef 5) #9
  tail call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  br label %cleanup

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev6 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev6, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.142, i32 noundef %arg) #12
  br label %cleanup

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev11 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %udev11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev11, align 4
  %dev12 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.145, i32 noundef %command, i32 noundef %arg) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %do.end5, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end5 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_nano2_frontend_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef 0, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 81, ptr %data.i, align 4
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %5, ptr noundef %data.i, i16 noundef zeroext 1, ptr noundef %data.i, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  tail call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %10, i8 noundef zeroext 4, i8 noundef zeroext 0)
  %11 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adap, align 8
  tail call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %12, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  tail call void @msleep(i32 noundef 5) #9
  tail call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %12, i8 noundef zeroext 1, i8 noundef zeroext 1) #9
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap, align 8
  tail call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %14, i8 noundef zeroext 2, i8 noundef zeroext 0) #9
  tail call void @msleep(i32 noundef 5) #9
  tail call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %14, i8 noundef zeroext 2, i8 noundef zeroext 2) #9
  %call8 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.106) #9
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %cond.end, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

cond.end:                                         ; preds = %if.end
  %call9 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.107) #9
  %call10 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.106) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end19, label %cond.end.if.then12_crit_edge

cond.end.if.then12_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %cond.end.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %cond81 = phi ptr [ %call10, %cond.end.if.then12_crit_edge ], [ %call8, %if.end.if.then12_crit_edge ]
  %15 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %16, i32 0, i32 8
  %call14 = tail call ptr %cond81(ptr noundef nonnull @cxusb_zl10353_xc3028_config, ptr noundef %i2c_adap) #9
  %cmp15 = icmp eq ptr %call14, null
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.106) #9
  br label %if.end29

do.end19:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #12
  br label %if.end29

if.end22:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %17 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call14, ptr %fe_adap, align 8
  br label %return

if.end29:                                         ; preds = %do.end19, %if.then16
  %fe_adap83 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %18 = ptrtoint ptr %fe_adap83 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %fe_adap83, align 8
  %call32 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.101) #9
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %cond.end38, label %if.end29.if.then41_crit_edge

if.end29.if.then41_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

cond.end38:                                       ; preds = %if.end29
  %call36 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.102) #9
  %call37 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.101) #9
  %tobool40.not = icmp eq ptr %call37, null
  br i1 %tobool40.not, label %do.end51, label %cond.end38.if.then41_crit_edge

cond.end38.if.then41_crit_edge:                   ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.then41:                                        ; preds = %cond.end38.if.then41_crit_edge, %if.end29.if.then41_crit_edge
  %cond3988 = phi ptr [ %call37, %cond.end38.if.then41_crit_edge ], [ %call32, %if.end29.if.then41_crit_edge ]
  %19 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adap, align 8
  %i2c_adap43 = getelementptr inbounds %struct.dvb_usb_device, ptr %20, i32 0, i32 8
  %call44 = tail call ptr %cond3988(ptr noundef nonnull @cxusb_mt352_xc3028_config, ptr noundef %i2c_adap43) #9
  %cmp45 = icmp eq ptr %call44, null
  br i1 %cmp45, label %if.then46, label %if.then41.if.end54_crit_edge

if.then41.if.end54_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then46:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.101) #9
  br label %if.end54

do.end51:                                         ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #12
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %if.then46, %if.then41.if.end54_crit_edge
  %__r30.0 = phi ptr [ null, %if.then46 ], [ %call44, %if.then41.if.end54_crit_edge ], [ null, %do.end51 ]
  %21 = ptrtoint ptr %fe_adap83 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %__r30.0, ptr %fe_adap83, align 8
  %tobool62.not = icmp eq ptr %__r30.0, null
  %. = select i1 %tobool62.not, i32 -5, i32 0
  br label %return

return:                                           ; preds = %if.end54, %if.end22
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %., %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_nano2_power_ctrl(ptr noundef %d, i32 noundef %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cxusb_power_ctrl(ptr noundef %d, i32 noundef %onoff)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %d, i8 noundef zeroext 64, i8 noundef zeroext 64) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bluebird_fx2_identify_state(ptr nocapture noundef readonly %udev, ptr nocapture noundef readnone %props, ptr nocapture noundef writeonly %desc, ptr nocapture noundef %cold) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cold to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cold, align 4
  %bDeviceClass = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bDeviceClass, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.critedge16

land.lhs.true:                                    ; preds = %entry
  %bDeviceSubClass = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 4
  %4 = ptrtoint ptr %bDeviceSubClass to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bDeviceSubClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp4 = icmp eq i8 %5, -1
  br i1 %cmp4, label %land.rhs, label %if.end.critedge

land.rhs:                                         ; preds = %land.lhs.true
  %bDeviceProtocol = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 5
  %6 = ptrtoint ptr %bDeviceProtocol to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bDeviceProtocol, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp8 = icmp eq i8 %7, -1
  %land.ext = zext i1 %cmp8 to i32
  %8 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %land.ext, ptr %cold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool11.not = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp8, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %if.then, label %land.rhs.if.end_crit_edge

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end.critedge:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cold, align 4
  br label %if.end

if.end.critedge16:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cold, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.critedge16, %if.end.critedge, %if.then, %land.rhs.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_aver_streaming_ctrl(ptr nocapture noundef readonly %adap, i32 noundef %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv.i4 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i4, align 8
  %data_mutex.i5 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i5, i32 noundef 0) #9
  %data.i6 = getelementptr inbounds %struct.cxusb_state, ptr %3, i32 0, i32 4
  %. = select i1 %tobool.not, i8 25, i8 24
  %4 = ptrtoint ptr %data.i6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %., ptr %data.i6, align 4
  %call16.i8 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data.i6, i16 noundef zeroext 1, ptr noundef %data.i6, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_aver_lgdt3303_frontend_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.89) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.90) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.89) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond21 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call4 = tail call ptr %cond21(ptr noundef nonnull @cxusb_aver_lgdt3303_config, i8 noundef zeroext 14, ptr noundef %i2c_adap) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.89) #9
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  %__r.0 = phi ptr [ null, %if.then5 ], [ %call4, %if.then.if.end7_crit_edge ], [ null, %do.end ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %2 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %__r.0, ptr %fe_adap, align 8
  %tobool12.not = icmp eq ptr %__r.0, null
  %. = select i1 %tobool12.not, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_mxl5003s_tuner_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.160) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.161) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.160) #9
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
  %call4 = tail call ptr %cond14(ptr noundef %1, ptr noundef %i2c_adap, ptr noundef nonnull @aver_a868r_tuner) #9
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.160) #9
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_aver_power_ctrl(ptr noundef %d, i32 noundef %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -36, ptr %data.i, align 4
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data.i, i16 noundef zeroext 1, ptr noundef %data.i, i16 noundef zeroext 0, i32 noundef 0) #9
  br label %cleanup30.sink.split

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 3
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %call1 = tail call i32 @usb_set_interface(ptr noundef %6, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  br label %if.end5

if.end5:                                          ; preds = %do.end, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %priv.i41 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %7 = ptrtoint ptr %priv.i41 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i41, align 8
  %data_mutex.i42 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i42, i32 noundef 0) #9
  %data.i43 = getelementptr inbounds %struct.cxusb_state, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %data.i43 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -34, ptr %data.i43, align 4
  %call16.i45 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data.i43, i16 noundef zeroext 1, ptr noundef %data.i43, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i45)
  %tobool9.not = icmp eq i32 %call16.i45, 0
  br i1 %tobool9.not, label %land.lhs.true10, label %if.end5.cleanup30_crit_edge

if.end5.cleanup30_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

land.lhs.true10:                                  ; preds = %if.end5
  %10 = ptrtoint ptr %priv.i41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i41, align 8
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i42, i32 noundef 0) #9
  %data.i49 = getelementptr inbounds %struct.cxusb_state, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %data.i49 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 21, ptr %data.i49, align 4
  %call16.i51 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data.i49, i16 noundef zeroext 1, ptr noundef %data.i49, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i51)
  %tobool12.not = icmp eq i32 %call16.i51, 0
  br i1 %tobool12.not, label %do.end16, label %land.lhs.true10.cleanup30_crit_edge

land.lhs.true10.cleanup30_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

do.end16:                                         ; preds = %land.lhs.true10
  %13 = ptrtoint ptr %priv.i41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i41, align 8
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i42, i32 noundef 0) #9
  %data.i55 = getelementptr inbounds %struct.cxusb_state, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %data.i55 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 23, ptr %data.i55, align 4
  %call16.i57 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data.i55, i16 noundef zeroext 1, ptr noundef %data.i55, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i57)
  %tobool17.not = icmp eq i32 %call16.i57, 0
  br i1 %tobool17.not, label %if.then18, label %do.end16.cleanup30_crit_edge

do.end16.cleanup30_crit_edge:                     ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

if.then18:                                        ; preds = %do.end16
  tail call void @msleep(i32 noundef 20) #9
  br label %for.body

for.cond:                                         ; preds = %if.end23
  %add = add nuw nsw i32 %i.072, 4
  %cmp19 = icmp ult i32 %i.072, 36
  br i1 %cmp19, label %for.cond.for.body_crit_edge, label %for.cond.cleanup30_crit_edge

for.cond.cleanup30_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then18
  %i.072 = phi i32 [ 0, %if.then18 ], [ %add, %for.cond.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr @cxusb_aver_power_ctrl.bufs, i32 %i.072
  %16 = ptrtoint ptr %priv.i41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i41, align 8
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i42, i32 noundef 0) #9
  %data.i61 = getelementptr inbounds %struct.cxusb_state, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %data.i61 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %data.i61, align 4
  %arrayidx10.i62 = getelementptr %struct.cxusb_state, ptr %17, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr, align 1
  %21 = ptrtoint ptr %arrayidx10.i62 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %arrayidx10.i62, align 1
  %call16.i63 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data.i61, i16 noundef zeroext 5, ptr noundef %data.i61, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i63)
  %tobool.not.i64.not = icmp eq i32 %call16.i63, 0
  br i1 %tobool.not.i64.not, label %if.end23, label %for.body.cleanup30.sink.split_crit_edge

for.body.cleanup30.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30.sink.split

if.end23:                                         ; preds = %for.body
  %22 = ptrtoint ptr %data.i61 to i32
  call void @__asan_load1_noabort(i32 %22)
  %buf.0.copyload = load i8, ptr %data.i61, align 4
  tail call void @mutex_unlock(ptr noundef %data_mutex.i42) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %buf.0.copyload)
  %cmp24.not = icmp eq i8 %buf.0.copyload, 8
  br i1 %cmp24.not, label %for.cond, label %if.end23.cleanup30_crit_edge

if.end23.cleanup30_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

cleanup30.sink.split:                             ; preds = %for.body.cleanup30.sink.split_crit_edge, %if.then
  %data_mutex.i42.sink = phi ptr [ %data_mutex.i, %if.then ], [ %data_mutex.i42, %for.body.cleanup30.sink.split_crit_edge ]
  %retval.1.ph = phi i32 [ %call16.i, %if.then ], [ %call16.i63, %for.body.cleanup30.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %data_mutex.i42.sink) #9
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup30.sink.split, %if.end23.cleanup30_crit_edge, %for.cond.cleanup30_crit_edge, %do.end16.cleanup30_crit_edge, %land.lhs.true10.cleanup30_crit_edge, %if.end5.cleanup30_crit_edge
  %retval.1 = phi i32 [ %call16.i57, %do.end16.cleanup30_crit_edge ], [ %call16.i51, %land.lhs.true10.cleanup30_crit_edge ], [ %call16.i45, %if.end5.cleanup30_crit_edge ], [ %retval.1.ph, %cleanup30.sink.split ], [ 0, %for.cond.cleanup30_crit_edge ], [ -121, %if.end23.cleanup30_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_dualdig4_rev2_frontend_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %5, i32 noundef 0, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %7, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 81, ptr %data.i, align 4
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %7, ptr noundef %data.i, i16 noundef zeroext 1, ptr noundef %data.i, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  %11 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adap, align 8
  tail call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %12, i8 noundef zeroext 2, i8 noundef zeroext 0) #9
  tail call void @msleep(i32 noundef 5) #9
  tail call fastcc void @cxusb_bluebird_gpio_rw(ptr noundef %12, i8 noundef zeroext 2, i8 noundef zeroext 2) #9
  %call5 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #9
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %cond.end, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

cond.end:                                         ; preds = %if.end
  %call6 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.169) #9
  %call7 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.168) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end16, label %cond.end.if.then9_crit_edge

cond.end.if.then9_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %cond.end.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %cond58 = phi ptr [ %call7, %cond.end.if.then9_crit_edge ], [ %call5, %if.end.if.then9_crit_edge ]
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 1
  %call10 = tail call ptr %cond58(ptr noundef %dib7000p_ops) #9
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then12, label %if.end23

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.168) #9
  br label %cleanup

do.end16:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171) #12
  br label %cleanup

if.end23:                                         ; preds = %if.then9
  %i2c_enumeration = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %i2c_enumeration to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_enumeration, align 4
  %15 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %16, i32 0, i32 8
  %call26 = tail call i32 %14(ptr noundef %i2c_adap, i32 noundef 1, i8 noundef zeroext 18, ptr noundef nonnull @cxusb_dualdig4_rev2_config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174) #12
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %init = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 1, i32 15
  %17 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init, align 4
  %19 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adap, align 8
  %i2c_adap37 = getelementptr inbounds %struct.dvb_usb_device, ptr %20, i32 0, i32 8
  %call38 = tail call ptr %18(ptr noundef %i2c_adap37, i8 noundef zeroext -128, ptr noundef nonnull @cxusb_dualdig4_rev2_config) #9
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %21 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call38, ptr %fe_adap, align 8
  %tobool42.not = icmp eq ptr %call38, null
  %. = select i1 %tobool42.not, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end31, %do.end16, %if.then12
  %retval.0 = phi i32 [ -19, %do.end31 ], [ %., %if.end34 ], [ -19, %if.then12 ], [ -19, %do.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_dualdig4_rev2_tuner_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %get_i2c_master = getelementptr inbounds %struct.dib0700_adapter_state, ptr %1, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %get_i2c_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_i2c_master, align 4
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call = tail call ptr %3(ptr noundef %5, i32 noundef 0, i32 noundef 1) #9
  %call1 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.176) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.177) #9
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.176) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond35 = phi ptr [ %call3, %cond.end.if.then_crit_edge ], [ %call1, %entry.if.then_crit_edge ]
  %6 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe_adap, align 8
  %call8 = tail call ptr %cond35(ptr noundef %7, ptr noundef %call, ptr noundef nonnull @dib7070p_dib0070_config) #9
  %cmp = icmp eq ptr %call8, null
  br i1 %cmp, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.176) #9
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #12
  br label %cleanup

if.end15:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_adap, align 8
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 1, i32 32, i32 6
  %10 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_params, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %1, align 4
  %13 = load ptr, ptr %fe_adap, align 8
  %set_params24 = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 1, i32 32, i32 6
  %14 = ptrtoint ptr %set_params24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dib7070_set_param_override, ptr %set_params24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end, %if.then9
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -19, %if.then9 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7070_set_param_override(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
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
  %6 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtv_property_cache, align 4
  %8 = add i32 %7, -170001000
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000000, i32 %8)
  %9 = icmp ult i32 %8, 80000000
  %10 = select i1 %9, i16 950, i16 550
  %dib7000p_ops = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %dib7000p_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dib7000p_ops, align 4
  %call = tail call zeroext i16 @dib0070_wbd_offset(ptr noundef %fe) #9
  %add = add i16 %10, %call
  %call32 = tail call i32 %12(ptr noundef %fe, i16 noundef zeroext %add) #9
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call33 = tail call i32 %14(ptr noundef %fe) #9
  ret i32 %call33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib7070_tuner_reset(ptr noundef %fe, i32 noundef %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %set_gpio = getelementptr inbounds %struct.dib0700_adapter_state, ptr %5, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %set_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %conv = zext i1 %tobool.not to i8
  %call = tail call i32 %7(ptr noundef %fe, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext %conv) #9
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dib7070_tuner_sleep(ptr nocapture noundef readnone %fe, i32 noundef %onoff) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dib0070_wbd_offset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_d680_dmb_streaming_ctrl(ptr nocapture noundef readonly %adap, i32 noundef %onoff) #0 align 64 {
entry:
  %rd_count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %u.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 9, i32 0, i32 3, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rd_count.i) #9
  %4 = ptrtoint ptr %rd_count.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rd_count.i, align 4, !annotation !496
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #13
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.then.cxusb_d680_dmb_drain_video.exit_crit_edge, label %while.cond.preheader.i

if.then.cxusb_d680_dmb_drain_video.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxusb_d680_dmb_drain_video.exit

while.cond.preheader.i:                           ; preds = %if.then
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %endpoint.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 9, i32 0, i32 3, i32 0, i32 7, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end7.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %5 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev.i, align 4
  %7 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %endpoint.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %10, 8
  %shl1.i.i = shl i32 %8, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or4.i = or i32 %or.i.i, -1073741696
  %call5.i = call i32 @usb_bulk_msg(ptr noundef %6, i32 noundef %or4.i, ptr noundef nonnull %call9.i.i, i32 noundef %3, ptr noundef nonnull %rd_count.i, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %while.cond.i.while.end.i_crit_edge, label %if.end7.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end7.i:                                        ; preds = %while.cond.i
  %11 = ptrtoint ptr %rd_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rd_count.i, align 4
  %tobool8.not.i = icmp eq i32 %12, 0
  br i1 %tobool8.not.i, label %if.end7.i.while.end.i_crit_edge, label %if.end7.i.while.cond.i_crit_edge

if.end7.i.while.cond.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end7.i.while.end.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %if.end7.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cxusb_d680_dmb_drain_video.exit

cxusb_d680_dmb_drain_video.exit:                  ; preds = %while.end.i, %if.then.cxusb_d680_dmb_drain_video.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rd_count.i) #9
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap, align 8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %14, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 54, ptr %data.i, align 4
  %arrayidx10.i = getelementptr %struct.cxusb_state, ptr %16, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 768, ptr %arrayidx10.i, align 1
  %call16.i = call i32 @dvb_usb_generic_rw(ptr noundef %14, ptr noundef %data.i, i16 noundef zeroext 3, ptr noundef %data.i, i16 noundef zeroext 0, i32 noundef 0) #9
  call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i7 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %priv.i7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i7, align 8
  %data_mutex.i8 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i8, i32 noundef 0) #9
  %data.i9 = getelementptr inbounds %struct.cxusb_state, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %data.i9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 55, ptr %data.i9, align 4
  %call16.i11 = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %data.i9, i16 noundef zeroext 1, ptr noundef %data.i9, i16 noundef zeroext 0, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i8) #9
  br label %return

return:                                           ; preds = %if.else, %cxusb_d680_dmb_drain_video.exit
  %retval.0 = phi i32 [ %call16.i, %cxusb_d680_dmb_drain_video.exit ], [ %call16.i11, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_d680_dmb_frontend_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  %rd_count.i91 = alloca i32, align 4
  %rd_count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %generic_bulk_ctrl_endpoint = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %generic_bulk_ctrl_endpoint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %generic_bulk_ctrl_endpoint, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %shl.i = shl i32 %9, 8
  %shl1.i = shl i32 %7, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %call5 = tail call i32 @usb_clear_halt(ptr noundef %5, i32 noundef %or) #9
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 4
  %12 = ptrtoint ptr %generic_bulk_ctrl_endpoint to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %generic_bulk_ctrl_endpoint, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 8
  %shl.i85 = shl i32 %15, 8
  %shl1.i86 = shl i32 %13, 15
  %or.i87 = or i32 %shl1.i86, %shl.i85
  %or12 = or i32 %or.i87, -1073741696
  %call13 = tail call i32 @usb_clear_halt(ptr noundef %11, i32 noundef %or12) #9
  %16 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev, align 4
  %endpoint = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 9, i32 0, i32 3, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %endpoint, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 8
  %shl.i88 = shl i32 %21, 8
  %shl1.i89 = shl i32 %19, 15
  %or.i90 = or i32 %shl1.i89, %shl.i88
  %or20 = or i32 %or.i90, -1073741696
  %call21 = tail call i32 @usb_clear_halt(ptr noundef %17, i32 noundef %or20) #9
  %u.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 9, i32 0, i32 3, i32 0, i32 7, i32 3
  br label %for.body

for.body:                                         ; preds = %cxusb_d680_dmb_drain_video.exit.for.body_crit_edge, %if.end
  %n.0105 = phi i32 [ 0, %if.end ], [ %inc, %cxusb_d680_dmb_drain_video.exit.for.body_crit_edge ]
  %22 = ptrtoint ptr %generic_bulk_ctrl_endpoint to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %generic_bulk_ctrl_endpoint, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rd_count.i) #9
  %24 = ptrtoint ptr %rd_count.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %rd_count.i, align 4, !annotation !496
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 32) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.cxusb_d680_dmb_drain_message.exit_crit_edge, label %while.cond.preheader.i

for.body.cxusb_d680_dmb_drain_message.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxusb_d680_dmb_drain_message.exit

while.cond.preheader.i:                           ; preds = %for.body
  %shl1.i.i = shl i32 %23, 15
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end6.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %26 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udev, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i = shl i32 %29, 8
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or3.i = or i32 %or.i.i, -1073741696
  %call4.i = call i32 @usb_bulk_msg(ptr noundef %27, i32 noundef %or3.i, ptr noundef nonnull %call7.i.i, i32 noundef 32, ptr noundef nonnull %rd_count.i, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %while.cond.i.while.end.i_crit_edge, label %if.end6.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end6.i:                                        ; preds = %while.cond.i
  %30 = ptrtoint ptr %rd_count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rd_count.i, align 4
  %tobool7.not.i = icmp eq i32 %31, 0
  br i1 %tobool7.not.i, label %if.end6.i.while.end.i_crit_edge, label %if.end6.i.while.cond.i_crit_edge

if.end6.i.while.cond.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end6.i.while.end.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %if.end6.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cxusb_d680_dmb_drain_message.exit

cxusb_d680_dmb_drain_message.exit:                ; preds = %while.end.i, %for.body.cxusb_d680_dmb_drain_message.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rd_count.i) #9
  %32 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %u.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rd_count.i91) #9
  %34 = ptrtoint ptr %rd_count.i91 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %rd_count.i91, align 4, !annotation !496
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #13
  %tobool.not.i93 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i93, label %cxusb_d680_dmb_drain_message.exit.cxusb_d680_dmb_drain_video.exit_crit_edge, label %cxusb_d680_dmb_drain_message.exit.while.cond.i100_crit_edge

cxusb_d680_dmb_drain_message.exit.while.cond.i100_crit_edge: ; preds = %cxusb_d680_dmb_drain_message.exit
  br label %while.cond.i100

cxusb_d680_dmb_drain_message.exit.cxusb_d680_dmb_drain_video.exit_crit_edge: ; preds = %cxusb_d680_dmb_drain_message.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cxusb_d680_dmb_drain_video.exit

while.cond.i100:                                  ; preds = %if.end7.i.while.cond.i100_crit_edge, %cxusb_d680_dmb_drain_message.exit.while.cond.i100_crit_edge
  %35 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %udev, align 4
  %37 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %endpoint, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %36, align 8
  %shl.i.i96 = shl i32 %40, 8
  %shl1.i.i97 = shl i32 %38, 15
  %or.i.i98 = or i32 %shl1.i.i97, %shl.i.i96
  %or4.i = or i32 %or.i.i98, -1073741696
  %call5.i = call i32 @usb_bulk_msg(ptr noundef %36, i32 noundef %or4.i, ptr noundef nonnull %call9.i.i, i32 noundef %33, ptr noundef nonnull %rd_count.i91, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i99 = icmp slt i32 %call5.i, 0
  br i1 %cmp.i99, label %while.cond.i100.while.end.i101_crit_edge, label %if.end7.i

while.cond.i100.while.end.i101_crit_edge:         ; preds = %while.cond.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i101

if.end7.i:                                        ; preds = %while.cond.i100
  %41 = ptrtoint ptr %rd_count.i91 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rd_count.i91, align 4
  %tobool8.not.i = icmp eq i32 %42, 0
  br i1 %tobool8.not.i, label %if.end7.i.while.end.i101_crit_edge, label %if.end7.i.while.cond.i100_crit_edge

if.end7.i.while.cond.i100_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i100

if.end7.i.while.end.i101_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i101

while.end.i101:                                   ; preds = %if.end7.i.while.end.i101_crit_edge, %while.cond.i100.while.end.i101_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cxusb_d680_dmb_drain_video.exit

cxusb_d680_dmb_drain_video.exit:                  ; preds = %while.end.i101, %cxusb_d680_dmb_drain_message.exit.cxusb_d680_dmb_drain_video.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rd_count.i91) #9
  call void @msleep(i32 noundef 200) #9
  %inc = add nuw nsw i32 %n.0105, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %cxusb_d680_dmb_drain_video.exit.for.body_crit_edge

cxusb_d680_dmb_drain_video.exit.for.body_crit_edge: ; preds = %cxusb_d680_dmb_drain_video.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cxusb_d680_dmb_drain_video.exit
  %call23 = call fastcc i32 @cxusb_d680_dmb_gpio_tuner(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end28, label %if.end31

do.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185) #12
  br label %cleanup

if.end31:                                         ; preds = %for.end
  call void @msleep(i32 noundef 100) #9
  %call32 = call fastcc i32 @cxusb_d680_dmb_gpio_tuner(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188) #12
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  call void @msleep(i32 noundef 100) #9
  %call41 = call ptr @__symbol_get(ptr noundef nonnull @.str.190) #9
  %tobool.not = icmp eq ptr %call41, null
  br i1 %tobool.not, label %cond.end, label %if.end40.if.then45_crit_edge

if.end40.if.then45_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45

cond.end:                                         ; preds = %if.end40
  %call42 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.191) #9
  %call43 = call ptr @__symbol_get(ptr noundef nonnull @.str.190) #9
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %do.end52, label %cond.end.if.then45_crit_edge

cond.end.if.then45_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45

if.then45:                                        ; preds = %cond.end.if.then45_crit_edge, %if.end40.if.then45_crit_edge
  %cond104 = phi ptr [ %call43, %cond.end.if.then45_crit_edge ], [ %call41, %if.end40.if.then45_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call46 = call ptr %cond104(ptr noundef nonnull @d680_lgs8gl5_cfg, ptr noundef %i2c_adap) #9
  %cmp47 = icmp eq ptr %call46, null
  br i1 %cmp47, label %if.then48, label %if.then45.if.end55_crit_edge

if.then45.if.end55_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  call void @__symbol_put(ptr noundef nonnull @.str.190) #9
  br label %if.end55

do.end52:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193) #12
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %if.then48, %if.then45.if.end55_crit_edge
  %__r.0 = phi ptr [ null, %if.then48 ], [ %call46, %if.then45.if.end55_crit_edge ], [ null, %do.end52 ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %43 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %__r.0, ptr %fe_adap, align 8
  %tobool62.not = icmp eq ptr %__r.0, null
  %. = select i1 %tobool62.not, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end37, %do.end28
  %retval.0 = phi i32 [ -5, %do.end28 ], [ -5, %do.end37 ], [ %., %if.end55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_d680_dmb_tuner_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.160) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.161) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.160) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond17 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %0 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe_adap, align 8
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 8
  %call5 = tail call ptr %cond17(ptr noundef %1, ptr noundef %i2c_adap, ptr noundef nonnull @d680_dmb_tuner) #9
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then6, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.160) #9
  br label %if.end8

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then6, %if.then.if.end8_crit_edge
  %__r.0 = phi ptr [ null, %if.then6 ], [ %call5, %if.then.if.end8_crit_edge ], [ null, %do.end ]
  %tobool10.not = icmp eq ptr %__r.0, null
  %cond11 = select i1 %tobool10.not, i32 -5, i32 0
  ret i32 %cond11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_d680_dmb_power_ctrl(ptr noundef %d, i32 noundef %onoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cxusb_power_ctrl(ptr noundef %d, i32 noundef %onoff)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 128) #9
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 81, ptr %data.i, align 4
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data.i, i16 noundef zeroext 1, ptr noundef %data.i, i16 noundef zeroext 1, i32 noundef 0) #9
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  tail call void @msleep(i32 noundef 100) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_d680_dmb_rc_query(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %data.i, align 4
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data.i, i16 noundef zeroext 1, ptr noundef %data.i, i16 noundef zeroext 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i.not = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %cxusb_ctrl_msg.exit

cxusb_ctrl_msg.exit:                              ; preds = %entry
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp = icmp slt i32 %call16.i, 0
  br i1 %cmp, label %cxusb_ctrl_msg.exit.cleanup_crit_edge, label %cxusb_ctrl_msg.exit.if.then4_crit_edge

cxusb_ctrl_msg.exit.if.then4_crit_edge:           ; preds = %cxusb_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

cxusb_ctrl_msg.exit.cleanup_crit_edge:            ; preds = %cxusb_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %ircode.sroa.0.0.copyload = load i8, ptr %data.i, align 4
  %ircode.sroa.6.0.data.i.sroa_idx = getelementptr inbounds %struct.cxusb_state, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %ircode.sroa.6.0.data.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %ircode.sroa.6.0.copyload = load i8, ptr %ircode.sroa.6.0.data.i.sroa_idx, align 1
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ircode.sroa.0.0.copyload)
  %tobool.not = icmp eq i8 %ircode.sroa.0.0.copyload, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ircode.sroa.6.0.copyload)
  %tobool3.not = icmp eq i8 %ircode.sroa.6.0.copyload, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge, %cxusb_ctrl_msg.exit.if.then4_crit_edge
  %ircode.sroa.0.01923 = phi i8 [ 0, %lor.lhs.false.if.then4_crit_edge ], [ %ircode.sroa.0.0.copyload, %if.end.if.then4_crit_edge ], [ -1, %cxusb_ctrl_msg.exit.if.then4_crit_edge ]
  %ircode.sroa.6.018 = phi i8 [ %ircode.sroa.6.0.copyload, %lor.lhs.false.if.then4_crit_edge ], [ %ircode.sroa.6.0.copyload, %if.end.if.then4_crit_edge ], [ -1, %cxusb_ctrl_msg.exit.if.then4_crit_edge ]
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %5 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rc_dev, align 8
  %conv6 = zext i8 %ircode.sroa.0.01923 to i32
  %shl = shl nuw nsw i32 %conv6, 8
  %conv8 = zext i8 %ircode.sroa.6.018 to i32
  %or = or i32 %shl, %conv8
  %conv9 = zext i32 %or to i64
  tail call void @rc_keydown(ptr noundef %6, i32 noundef 0, i64 noundef %conv9, i8 noundef zeroext 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %lor.lhs.false.cleanup_crit_edge, %cxusb_ctrl_msg.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxusb_d680_dmb_gpio_tuner(ptr noundef %d, i32 noundef %onoff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %onoff to i8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %data.i = getelementptr inbounds %struct.cxusb_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 14, ptr %data.i, align 4
  %arrayidx10.i = getelementptr %struct.cxusb_state, ptr %1, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 7, ptr %arrayidx10.i, align 1
  %o.sroa.5.0.arrayidx10.i.sroa_idx = getelementptr %struct.cxusb_state, ptr %1, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %o.sroa.5.0.arrayidx10.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %o.sroa.5.0.arrayidx10.i.sroa_idx, align 1
  %call16.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %data.i, i16 noundef zeroext 3, ptr noundef %data.i, i16 noundef zeroext 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool.not.i.not = icmp eq i32 %call16.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %cxusb_ctrl_msg.exit

cxusb_ctrl_msg.exit:                              ; preds = %entry
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp = icmp slt i32 %call16.i, 0
  br i1 %cmp, label %cxusb_ctrl_msg.exit.cleanup_crit_edge, label %cxusb_ctrl_msg.exit.do.end_crit_edge

cxusb_ctrl_msg.exit.do.end_crit_edge:             ; preds = %cxusb_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

cxusb_ctrl_msg.exit.cleanup_crit_edge:            ; preds = %cxusb_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %i.0.copyload = load i8, ptr %data.i, align 4
  tail call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %i.0.copyload)
  %cmp3 = icmp eq i8 %i.0.copyload, 1
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end.do.end_crit_edge, %cxusb_ctrl_msg.exit.do.end_crit_edge
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.76) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %cxusb_ctrl_msg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call16.i, %cxusb_ctrl_msg.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_mygica_d689_frontend_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %3, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %generic_bulk_ctrl_endpoint = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %generic_bulk_ctrl_endpoint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %generic_bulk_ctrl_endpoint, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %shl.i = shl i32 %9, 8
  %shl1.i = shl i32 %7, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %call5 = tail call i32 @usb_clear_halt(ptr noundef %5, i32 noundef %or) #9
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 4
  %12 = ptrtoint ptr %generic_bulk_ctrl_endpoint to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %generic_bulk_ctrl_endpoint, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 8
  %shl.i80 = shl i32 %15, 8
  %shl1.i81 = shl i32 %13, 15
  %or.i82 = or i32 %shl1.i81, %shl.i80
  %or12 = or i32 %or.i82, -1073741696
  %call13 = tail call i32 @usb_clear_halt(ptr noundef %11, i32 noundef %or12) #9
  %16 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev, align 4
  %endpoint = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 9, i32 0, i32 3, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %endpoint, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 8
  %shl.i83 = shl i32 %21, 8
  %shl1.i84 = shl i32 %19, 15
  %or.i85 = or i32 %shl1.i84, %shl.i83
  %or20 = or i32 %or.i85, -1073741696
  %call21 = tail call i32 @usb_clear_halt(ptr noundef %17, i32 noundef %or20) #9
  %call22 = tail call fastcc i32 @cxusb_d680_dmb_gpio_tuner(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185) #12
  br label %cleanup

if.end30:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 100) #9
  %call31 = tail call fastcc i32 @cxusb_d680_dmb_gpio_tuner(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188) #12
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  tail call void @msleep(i32 noundef 100) #9
  %call40 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.205) #9
  %tobool.not = icmp eq ptr %call40, null
  br i1 %tobool.not, label %cond.end, label %if.end39.if.then44_crit_edge

if.end39.if.then44_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

cond.end:                                         ; preds = %if.end39
  %call41 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.206) #9
  %call42 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.205) #9
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %do.end51, label %cond.end.if.then44_crit_edge

cond.end.if.then44_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

if.then44:                                        ; preds = %cond.end.if.then44_crit_edge, %if.end39.if.then44_crit_edge
  %cond88 = phi ptr [ %call42, %cond.end.if.then44_crit_edge ], [ %call40, %if.end39.if.then44_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call45 = tail call ptr %cond88(ptr noundef nonnull @mygica_d689_atbm8830_cfg, ptr noundef %i2c_adap) #9
  %cmp46 = icmp eq ptr %call45, null
  br i1 %cmp46, label %if.then47, label %if.then44.if.end54_crit_edge

if.then44.if.end54_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.205) #9
  br label %if.end54

do.end51:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208) #12
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %if.then47, %if.then44.if.end54_crit_edge
  %__r.0 = phi ptr [ null, %if.then47 ], [ %call45, %if.then44.if.end54_crit_edge ], [ null, %do.end51 ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %22 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %__r.0, ptr %fe_adap, align 8
  %tobool61.not = icmp eq ptr %__r.0, null
  %. = select i1 %tobool61.not, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end36, %do.end27
  %retval.0 = phi i32 [ -5, %do.end27 ], [ -5, %do.end36 ], [ %., %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxusb_mygica_d689_tuner_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.210) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.211) #9
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.210) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond17 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %0 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe_adap, align 8
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 8
  %call5 = tail call ptr %cond17(ptr noundef %1, ptr noundef %i2c_adap, ptr noundef nonnull @mygica_d689_max2165_cfg) #9
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then6, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__symbol_put(ptr noundef nonnull @.str.210) #9
  br label %if.end8

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then6, %if.then.if.end8_crit_edge
  %__r.0 = phi ptr [ null, %if.then6 ], [ %call5, %if.then.if.end8_crit_edge ], [ null, %do.end ]
  %tobool10.not = icmp eq ptr %__r.0, null
  %cond11 = select i1 %tobool10.not, i32 -5, i32 0
  ret i32 %cond11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxusb_medion_unregister_analog(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 251)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 251)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55, !57, !59, !61, !63, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !77, !78, !79, !81, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !106, !108, !110, !111, !113, !114, !115, !116, !117, !118, !120, !122, !123, !124, !125, !126, !127, !129, !130, !131, !132, !134, !136, !137, !138, !140, !141, !142, !144, !145, !147, !148, !150, !151, !152, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !177, !179, !181, !183, !185, !186, !187, !188, !190, !191, !192, !193, !194, !196, !198, !199, !200, !202, !204, !206, !208, !210, !212, !213, !214, !216, !217, !218, !219, !220, !222, !223, !224, !225, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !245, !246, !247, !248, !249, !251, !253, !255, !256, !257, !259, !260, !262, !264, !266, !268, !270, !272, !274, !276, !277, !278, !280, !282, !284, !285, !286, !288, !290, !292, !293, !294, !296, !297, !299, !300, !301, !303, !304, !305, !306, !308, !310, !312, !314, !315, !316, !317, !318, !319, !321, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !336, !338, !339, !340, !342, !343, !345, !346, !348, !350, !352, !354, !356, !358, !360, !362, !363, !364, !366, !368, !369, !370, !371, !372, !373, !375, !377, !378, !379, !381, !383, !385, !387, !388, !389, !391, !392, !393, !394, !395, !397, !398, !399, !401, !403, !405, !407, !408, !409, !410, !411, !412, !414, !416, !418, !420, !422, !423, !424, !426, !427, !428, !430, !431, !432, !434, !435, !436, !437, !438, !440, !441, !442, !444, !446, !447, !448, !450, !452, !454, !456, !458, !459, !460, !462, !463, !465, !466, !468, !469, !470, !471, !472, !474, !476, !477, !478, !479, !480, !481, !483}
!llvm.module.flags = !{!485, !486, !487, !488, !489, !490, !491, !492}
!llvm.ident = !{!493}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 51, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype388, !1, !"__UNIQUE_ID_debugtype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug389, !4, !"__UNIQUE_ID_debug389", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 52, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 55, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype390, !6, !"__UNIQUE_ID_adapter_nrtype390", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr391, !6, !"__UNIQUE_ID_adapter_nr391", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 90, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cxusb_ctrl_msg._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @cxusb_ctrl_msg._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 95, i32 3}
!17 = !{ptr @cxusb_ctrl_msg._entry.3, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @cxusb_ctrl_msg._entry_ptr.5, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1444, i32 4}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cxusb_medion_get._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @cxusb_medion_get._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1451, i32 6}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cxusb_medion_get._entry.12, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @cxusb_medion_get._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1465, i32 6}
!35 = !{ptr @cxusb_medion_get._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @cxusb_medion_get._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1476, i32 4}
!39 = !{ptr @cxusb_medion_get._entry.19, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @cxusb_medion_get._entry_ptr.21, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1484, i32 3}
!43 = !{ptr @cxusb_medion_get._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cxusb_medion_get._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1511, i32 3}
!47 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cxusb_medion_put._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @cxusb_medion_put._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @__initcall__kmod_dvb_usb_cxusb__392_2436_cxusb_driver_init6, !51, !"__initcall__kmod_dvb_usb_cxusb__392_2436_cxusb_driver_init6", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2436, i32 1}
!52 = !{ptr @__exitcall_cxusb_driver_exit, !51, !"__exitcall_cxusb_driver_exit", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_author393, !54, !"__UNIQUE_ID_author393", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2438, i32 1}
!55 = !{ptr @__UNIQUE_ID_author394, !56, !"__UNIQUE_ID_author394", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2439, i32 1}
!57 = !{ptr @__UNIQUE_ID_author395, !58, !"__UNIQUE_ID_author395", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2440, i32 1}
!59 = !{ptr @__UNIQUE_ID_author396, !60, !"__UNIQUE_ID_author396", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2441, i32 1}
!61 = !{ptr @__UNIQUE_ID_description397, !62, !"__UNIQUE_ID_description397", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2442, i32 1}
!63 = !{ptr @__UNIQUE_ID_file398, !64, !"__UNIQUE_ID_file398", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2443, i32 1}
!65 = !{ptr @__UNIQUE_ID_license399, !64, !"__UNIQUE_ID_license399", i1 false, i1 false}
!66 = !{ptr @dvb_usb_cxusb_debug, !67, !"dvb_usb_cxusb_debug", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 50, i32 5}
!68 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!69 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!70 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!71 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 299, i32 2}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @_cxusb_power_ctrl._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @_cxusb_power_ctrl._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 850, i32 4}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @cxusb_medion_set_mode._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @cxusb_medion_set_mode._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 858, i32 4}
!87 = !{ptr @cxusb_medion_set_mode._entry.34, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @cxusb_medion_set_mode._entry_ptr.36, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 868, i32 3}
!91 = !{ptr @cxusb_medion_set_mode._entry.37, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @cxusb_medion_set_mode._entry_ptr.39, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 874, i32 3}
!95 = !{ptr @cxusb_medion_set_mode._entry.40, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @cxusb_medion_set_mode._entry_ptr.42, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 881, i32 3}
!99 = !{ptr @cxusb_medion_set_mode._entry.43, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @cxusb_medion_set_mode._entry_ptr.45, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.46, !51, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @cxusb_driver, !103, !"cxusb_driver", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2429, i32 26}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1803, i32 4}
!106 = !{ptr @cxusb_medion_properties, !107, !"cxusb_medion_properties", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1763, i32 41}
!108 = !{ptr @cxusb_medion_priv_init.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1540, i32 2}
!110 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 910, i32 24}
!113 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @cxusb_cx22702_frontend_attach._entry, !112, !"_entry", i1 false, i1 false}
!117 = !{ptr @cxusb_cx22702_frontend_attach._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @cxusb_cx22702_config, !119, !"cxusb_cx22702_config", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 604, i32 30}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 704, i32 2}
!122 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @cxusb_fmd1216me_tuner_attach._entry, !121, !"_entry", i1 false, i1 false}
!126 = !{ptr @cxusb_fmd1216me_tuner_attach._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 318, i32 4}
!129 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @cxusb_power_ctrl._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @cxusb_power_ctrl._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @cxusb_i2c_algo, !133, !"cxusb_i2c_algo", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 290, i32 29}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 205, i32 5}
!136 = !{ptr @cxusb_i2c_xfer._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @cxusb_i2c_xfer._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 216, i32 5}
!140 = !{ptr @cxusb_i2c_xfer._entry.61, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @cxusb_i2c_xfer._entry_ptr.63, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @cxusb_i2c_xfer._entry.64, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 226, i32 5}
!144 = !{ptr @cxusb_i2c_xfer._entry_ptr.65, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @cxusb_i2c_xfer._entry.66, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 232, i32 5}
!147 = !{ptr @cxusb_i2c_xfer._entry_ptr.67, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 248, i32 5}
!150 = !{ptr @cxusb_i2c_xfer._entry.68, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @cxusb_i2c_xfer._entry_ptr.70, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @cxusb_i2c_xfer._entry.71, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 258, i32 5}
!154 = !{ptr @cxusb_i2c_xfer._entry_ptr.72, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 271, i32 5}
!157 = !{ptr @cxusb_i2c_xfer._entry.73, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @cxusb_i2c_xfer._entry_ptr.75, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 125, i32 3}
!161 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @cxusb_gpio_tuner._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @cxusb_gpio_tuner._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1577, i32 3}
!166 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @cxusb_medion_check_intf._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @cxusb_medion_check_intf._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1592, i32 2}
!171 = !{ptr @cxusb_medion_check_intf._entry.80, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @cxusb_medion_check_intf._entry_ptr.82, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1814, i32 23}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1853, i32 15}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1863, i32 7}
!179 = !{ptr @cxusb_bluebird_lgh064f_properties, !180, !"cxusb_bluebird_lgh064f_properties", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1810, i32 41}
!181 = distinct !{null, !182, !"dvico_firmware_id_offsets", i1 false, i1 false}
!182 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1382, i32 18}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 925, i32 3}
!185 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @cxusb_lgdt3303_frontend_attach._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @cxusb_lgdt3303_frontend_attach._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 929, i32 24}
!190 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @cxusb_lgdt3303_frontend_attach._entry.91, !189, !"_entry", i1 false, i1 false}
!193 = !{ptr @cxusb_lgdt3303_frontend_attach._entry_ptr.93, !189, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @cxusb_lgdt3303_config, !195, !"cxusb_lgdt3303_config", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 609, i32 31}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 741, i32 2}
!198 = !{ptr @cxusb_lgh064f_tuner_attach._entry, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @cxusb_lgh064f_tuner_attach._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.95, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1912, i32 15}
!202 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1922, i32 7}
!204 = !{ptr @.str.97, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1926, i32 7}
!206 = !{ptr @.str.98, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1930, i32 7}
!208 = !{ptr @cxusb_bluebird_dee1601_properties, !209, !"cxusb_bluebird_dee1601_properties", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1870, i32 41}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 970, i32 3}
!212 = !{ptr @cxusb_dee1601_frontend_attach._entry, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @cxusb_dee1601_frontend_attach._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.101, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 974, i32 24}
!216 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @cxusb_dee1601_frontend_attach._entry.103, !215, !"_entry", i1 false, i1 false}
!219 = !{ptr @cxusb_dee1601_frontend_attach._entry_ptr.105, !215, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 979, i32 24}
!222 = !{ptr @.str.107, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @cxusb_dee1601_frontend_attach._entry.108, !221, !"_entry", i1 false, i1 false}
!225 = !{ptr @cxusb_dee1601_frontend_attach._entry_ptr.110, !221, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @cxusb_dee1601_config, !227, !"cxusb_dee1601_config", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 618, i32 28}
!228 = !{ptr @cxusb_dee1601_demod_init.clock_config, !229, !"clock_config", i1 false, i1 false}
!229 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 564, i32 12}
!230 = !{ptr @cxusb_dee1601_demod_init.reset, !231, !"reset", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 565, i32 12}
!232 = !{ptr @cxusb_dee1601_demod_init.adc_ctl_1_cfg, !233, !"adc_ctl_1_cfg", i1 false, i1 false}
!233 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 566, i32 12}
!234 = !{ptr @cxusb_dee1601_demod_init.agc_cfg, !235, !"agc_cfg", i1 false, i1 false}
!235 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 567, i32 12}
!236 = !{ptr @cxusb_dee1601_demod_init.gpp_ctl_cfg, !237, !"gpp_ctl_cfg", i1 false, i1 false}
!237 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 568, i32 12}
!238 = !{ptr @cxusb_dee1601_demod_init.capt_range_cfg, !239, !"capt_range_cfg", i1 false, i1 false}
!239 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 569, i32 12}
!240 = !{ptr @cxusb_zl10353_dee1601_config, !241, !"cxusb_zl10353_dee1601_config", i1 false, i1 false}
!241 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 623, i32 30}
!242 = !{ptr @.str.111, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 720, i32 2}
!244 = !{ptr @.str.112, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.113, !243, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.114, !243, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @cxusb_dee1601_tuner_attach._entry, !243, !"_entry", i1 false, i1 false}
!248 = !{ptr @cxusb_dee1601_tuner_attach._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.115, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1988, i32 7}
!251 = !{ptr @cxusb_bluebird_lgz201_properties, !252, !"cxusb_bluebird_lgz201_properties", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1937, i32 41}
!253 = !{ptr @.str.117, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 955, i32 3}
!255 = !{ptr @cxusb_mt352_frontend_attach._entry, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @cxusb_mt352_frontend_attach._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @cxusb_mt352_frontend_attach._entry.118, !258, !"_entry", i1 false, i1 false}
!258 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 959, i32 24}
!259 = !{ptr @cxusb_mt352_frontend_attach._entry_ptr.119, !258, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @cxusb_mt352_config, !261, !"cxusb_mt352_config", i1 false, i1 false}
!261 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 628, i32 28}
!262 = !{ptr @cxusb_mt352_demod_init.clock_config, !263, !"clock_config", i1 false, i1 false}
!263 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 586, i32 12}
!264 = !{ptr @cxusb_mt352_demod_init.reset, !265, !"reset", i1 false, i1 false}
!265 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 587, i32 12}
!266 = !{ptr @cxusb_mt352_demod_init.adc_ctl_1_cfg, !267, !"adc_ctl_1_cfg", i1 false, i1 false}
!267 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 588, i32 12}
!268 = !{ptr @cxusb_mt352_demod_init.agc_cfg, !269, !"agc_cfg", i1 false, i1 false}
!269 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 589, i32 12}
!270 = !{ptr @cxusb_mt352_demod_init.gpp_ctl_cfg, !271, !"gpp_ctl_cfg", i1 false, i1 false}
!271 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 590, i32 12}
!272 = !{ptr @cxusb_mt352_demod_init.capt_range_cfg, !273, !"capt_range_cfg", i1 false, i1 false}
!273 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 591, i32 12}
!274 = !{ptr @.str.120, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 727, i32 2}
!276 = !{ptr @cxusb_lgz201_tuner_attach._entry, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @cxusb_lgz201_tuner_attach._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.121, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2048, i32 7}
!280 = !{ptr @cxusb_bluebird_dtt7579_properties, !281, !"cxusb_bluebird_dtt7579_properties", i1 false, i1 false}
!281 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1995, i32 41}
!282 = !{ptr @.str.123, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 734, i32 2}
!284 = !{ptr @cxusb_dtt7579_tuner_attach._entry, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @cxusb_dtt7579_tuner_attach._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.124, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2101, i32 7}
!288 = !{ptr @cxusb_bluebird_dualdig4_properties, !289, !"cxusb_bluebird_dualdig4_properties", i1 false, i1 false}
!289 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2055, i32 41}
!290 = !{ptr @.str.126, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1000, i32 3}
!292 = !{ptr @cxusb_dualdig4_frontend_attach._entry, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @cxusb_dualdig4_frontend_attach._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @cxusb_dualdig4_frontend_attach._entry.127, !295, !"_entry", i1 false, i1 false}
!295 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1010, i32 3}
!296 = !{ptr @cxusb_dualdig4_frontend_attach._entry_ptr.128, !295, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.130, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1026, i32 4}
!299 = !{ptr @cxusb_dualdig4_frontend_attach._entry.129, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @cxusb_dualdig4_frontend_attach._entry_ptr.131, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.132, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 142, i32 3}
!303 = !{ptr @.str.133, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @cxusb_bluebird_gpio_rw._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @cxusb_bluebird_gpio_rw._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @cxusb_zl10353_xc3028_config_no_i2c_gate, !307, !"cxusb_zl10353_xc3028_config_no_i2c_gate", i1 false, i1 false}
!307 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 641, i32 30}
!308 = !{ptr @.str.134, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 779, i32 18}
!310 = !{ptr @cxusb_dvico_xc3028_tuner_attach.ctl, !311, !"ctl", i1 false, i1 false}
!311 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 778, i32 28}
!312 = !{ptr @.str.135, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 787, i32 7}
!314 = !{ptr @.str.136, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.137, !313, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.138, !313, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @cxusb_dvico_xc3028_tuner_attach._entry, !313, !"_entry", i1 false, i1 false}
!318 = !{ptr @cxusb_dvico_xc3028_tuner_attach._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.139, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 754, i32 3}
!321 = !{ptr @.str.140, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @dvico_bluebird_xc2028_callback._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @dvico_bluebird_xc2028_callback._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.142, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 758, i32 3}
!326 = !{ptr @dvico_bluebird_xc2028_callback._entry.141, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @dvico_bluebird_xc2028_callback._entry_ptr.143, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.145, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 763, i32 3}
!330 = !{ptr @dvico_bluebird_xc2028_callback._entry.144, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @dvico_bluebird_xc2028_callback._entry_ptr.146, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.147, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2155, i32 7}
!334 = !{ptr @cxusb_bluebird_nano2_properties, !335, !"cxusb_bluebird_nano2_properties", i1 false, i1 false}
!335 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2108, i32 41}
!336 = !{ptr @.str.149, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1213, i32 3}
!338 = !{ptr @cxusb_nano2_frontend_attach._entry, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @cxusb_nano2_frontend_attach._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @cxusb_nano2_frontend_attach._entry.150, !341, !"_entry", i1 false, i1 false}
!341 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1222, i32 24}
!342 = !{ptr @cxusb_nano2_frontend_attach._entry_ptr.151, !341, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @cxusb_nano2_frontend_attach._entry.152, !344, !"_entry", i1 false, i1 false}
!344 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1228, i32 24}
!345 = !{ptr @cxusb_nano2_frontend_attach._entry_ptr.153, !344, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @cxusb_zl10353_xc3028_config, !347, !"cxusb_zl10353_xc3028_config", i1 false, i1 false}
!347 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 634, i32 30}
!348 = !{ptr @cxusb_mt352_xc3028_config, !349, !"cxusb_mt352_xc3028_config", i1 false, i1 false}
!349 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 649, i32 28}
!350 = !{ptr @.str.154, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2167, i32 23}
!352 = !{ptr @.str.155, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2212, i32 4}
!354 = !{ptr @cxusb_bluebird_nano2_needsfirmware_properties, !355, !"cxusb_bluebird_nano2_needsfirmware_properties", i1 false, i1 false}
!355 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2163, i32 1}
!356 = !{ptr @.str.157, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2257, i32 7}
!358 = !{ptr @cxusb_aver_a868r_properties, !359, !"cxusb_aver_a868r_properties", i1 false, i1 false}
!359 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2220, i32 41}
!360 = !{ptr @.str.159, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 941, i32 24}
!362 = !{ptr @cxusb_aver_lgdt3303_frontend_attach._entry, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @cxusb_aver_lgdt3303_frontend_attach._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @cxusb_aver_lgdt3303_config, !365, !"cxusb_aver_lgdt3303_config", i1 false, i1 false}
!365 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 613, i32 31}
!366 = !{ptr @.str.160, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 798, i32 2}
!368 = !{ptr @.str.161, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.162, !367, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.163, !367, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @cxusb_mxl5003s_tuner_attach._entry, !367, !"_entry", i1 false, i1 false}
!372 = !{ptr @cxusb_mxl5003s_tuner_attach._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @aver_a868r_tuner, !374, !"aver_a868r_tuner", i1 false, i1 false}
!374 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 657, i32 31}
!375 = !{ptr @.str.164, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 344, i32 3}
!377 = !{ptr @cxusb_aver_power_ctrl._entry, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @cxusb_aver_power_ctrl._entry_ptr, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @cxusb_aver_power_ctrl.bufs, !380, !"bufs", i1 false, i1 false}
!380 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 358, i32 19}
!381 = !{ptr @.str.165, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2312, i32 7}
!383 = !{ptr @cxusb_bluebird_dualdig4_rev2_properties, !384, !"cxusb_bluebird_dualdig4_rev2_properties", i1 false, i1 false}
!384 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2265, i32 34}
!385 = !{ptr @.str.167, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1120, i32 3}
!387 = !{ptr @cxusb_dualdig4_rev2_frontend_attach._entry, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @cxusb_dualdig4_rev2_frontend_attach._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.168, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1126, i32 7}
!391 = !{ptr @.str.169, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @.str.171, !390, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @cxusb_dualdig4_rev2_frontend_attach._entry.170, !390, !"_entry", i1 false, i1 false}
!394 = !{ptr @cxusb_dualdig4_rev2_frontend_attach._entry_ptr.172, !390, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.174, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1131, i32 3}
!397 = !{ptr @cxusb_dualdig4_rev2_frontend_attach._entry.173, !396, !"_entry", i1 false, i1 false}
!398 = !{ptr @cxusb_dualdig4_rev2_frontend_attach._entry_ptr.175, !396, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @cxusb_dualdig4_rev2_config, !400, !"cxusb_dualdig4_rev2_config", i1 false, i1 false}
!400 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1092, i32 31}
!401 = !{ptr @dib7070_agc_config, !402, !"dib7070_agc_config", i1 false, i1 false}
!402 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1034, i32 34}
!403 = !{ptr @dib7070_bw_config_12_mhz, !404, !"dib7070_bw_config_12_mhz", i1 false, i1 false}
!404 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1072, i32 40}
!405 = !{ptr @.str.176, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1201, i32 6}
!407 = !{ptr @.str.177, !406, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @.str.178, !406, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @.str.179, !406, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @cxusb_dualdig4_rev2_tuner_attach._entry, !406, !"_entry", i1 false, i1 false}
!411 = !{ptr @cxusb_dualdig4_rev2_tuner_attach._entry_ptr, !406, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @dib7070p_dib0070_config, !413, !"dib7070p_dib0070_config", i1 false, i1 false}
!413 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1157, i32 30}
!414 = !{ptr @.str.180, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2358, i32 15}
!416 = !{ptr @.str.181, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2367, i32 4}
!418 = !{ptr @cxusb_d680_dmb_properties, !419, !"cxusb_d680_dmb_properties", i1 false, i1 false}
!419 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2319, i32 41}
!420 = !{ptr @.str.183, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1258, i32 3}
!422 = !{ptr @cxusb_d680_dmb_frontend_attach._entry, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @cxusb_d680_dmb_frontend_attach._entry_ptr, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.185, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1280, i32 3}
!426 = !{ptr @cxusb_d680_dmb_frontend_attach._entry.184, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @cxusb_d680_dmb_frontend_attach._entry_ptr.186, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.188, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1285, i32 3}
!430 = !{ptr @cxusb_d680_dmb_frontend_attach._entry.187, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @cxusb_d680_dmb_frontend_attach._entry_ptr.189, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.190, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1291, i32 24}
!434 = !{ptr @.str.191, !433, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @.str.193, !433, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @cxusb_d680_dmb_frontend_attach._entry.192, !433, !"_entry", i1 false, i1 false}
!437 = !{ptr @cxusb_d680_dmb_frontend_attach._entry_ptr.194, !433, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.195, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 174, i32 2}
!440 = !{ptr @cxusb_d680_dmb_gpio_tuner._entry, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @cxusb_d680_dmb_gpio_tuner._entry_ptr, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @d680_lgs8gl5_cfg, !443, !"d680_lgs8gl5_cfg", i1 false, i1 false}
!443 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1237, i32 30}
!444 = !{ptr @.str.196, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 807, i32 7}
!446 = !{ptr @cxusb_d680_dmb_tuner_attach._entry, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @cxusb_d680_dmb_tuner_attach._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @d680_dmb_tuner, !449, !"d680_dmb_tuner", i1 false, i1 false}
!449 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 675, i32 31}
!450 = !{ptr @.str.197, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2413, i32 15}
!452 = !{ptr @.str.198, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2422, i32 4}
!454 = !{ptr @cxusb_mygica_d689_properties, !455, !"cxusb_mygica_d689_properties", i1 false, i1 false}
!455 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 2374, i32 41}
!456 = !{ptr @.str.200, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1319, i32 3}
!458 = !{ptr @cxusb_mygica_d689_frontend_attach._entry, !457, !"_entry", i1 false, i1 false}
!459 = !{ptr @cxusb_mygica_d689_frontend_attach._entry_ptr, !457, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @cxusb_mygica_d689_frontend_attach._entry.201, !461, !"_entry", i1 false, i1 false}
!461 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1334, i32 3}
!462 = !{ptr @cxusb_mygica_d689_frontend_attach._entry_ptr.202, !461, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @cxusb_mygica_d689_frontend_attach._entry.203, !464, !"_entry", i1 false, i1 false}
!464 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1339, i32 3}
!465 = !{ptr @cxusb_mygica_d689_frontend_attach._entry_ptr.204, !464, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.205, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1345, i32 24}
!468 = !{ptr @.str.206, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @.str.208, !467, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @cxusb_mygica_d689_frontend_attach._entry.207, !467, !"_entry", i1 false, i1 false}
!471 = !{ptr @cxusb_mygica_d689_frontend_attach._entry_ptr.209, !467, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @mygica_d689_atbm8830_cfg, !473, !"mygica_d689_atbm8830_cfg", i1 false, i1 false}
!473 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1299, i32 31}
!474 = !{ptr @.str.210, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 816, i32 7}
!476 = !{ptr @.str.211, !475, !"<string literal>", i1 false, i1 false}
!477 = !{ptr @.str.212, !475, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @.str.213, !475, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @cxusb_mygica_d689_tuner_attach._entry, !475, !"_entry", i1 false, i1 false}
!480 = !{ptr @cxusb_mygica_d689_tuner_attach._entry_ptr, !475, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @mygica_d689_max2165_cfg, !482, !"mygica_d689_max2165_cfg", i1 false, i1 false}
!482 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 692, i32 30}
!483 = !{ptr @cxusb_table, !484, !"cxusb_table", i1 false, i1 false}
!484 = !{!"../drivers/media/usb/dvb-usb/cxusb.c", i32 1695, i32 29}
!485 = !{i32 1, !"wchar_size", i32 2}
!486 = !{i32 1, !"min_enum_size", i32 4}
!487 = !{i32 8, !"branch-target-enforcement", i32 0}
!488 = !{i32 8, !"sign-return-address", i32 0}
!489 = !{i32 8, !"sign-return-address-all", i32 0}
!490 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!491 = !{i32 7, !"uwtable", i32 1}
!492 = !{i32 7, !"frame-pointer", i32 2}
!493 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!494 = !{!"branch_weights", i32 2000, i32 1}
!495 = !{!"branch_weights", i32 1, i32 2000}
!496 = !{!"auto-init"}
!497 = !{i8 0, i8 2}
