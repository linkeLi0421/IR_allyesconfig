; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/digitv.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/digitv.c"
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
%struct.mt352_config = type { i8, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nxt6000_config = type { i8, i8 }
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
%struct.digitv_state = type { i32, [7 x i8], [7 x i8] }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [21 x i8] c"dvb_usb_digitv.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_digitv_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_digitv_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [34 x i8] c"dvb_usb_digitv.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [64 x i8] c"dvb_usb_digitv.parm=debug:set debugging level (1=rc (or-able)).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_digitv.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [50 x i8] c"dvb_usb_digitv.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [51 x i8] c"dvb_usb_digitv.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_digitv__390_360_digitv_driver_init6 = internal global ptr @digitv_driver_init, section ".initcall6.init", align 4
@digitv_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @digitv_probe, ptr @dvb_usb_device_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @digitv_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_digitv_driver_exit = internal global ptr @digitv_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author391 = internal constant [70 x i8] c"dvb_usb_digitv.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description392 = internal constant [78 x i8] c"dvb_usb_digitv.description=Driver for Nebula Electronics uDigiTV DVB-T USB2.0\00", section ".modinfo", align 1
@__UNIQUE_ID_version393 = internal constant [33 x i8] c"dvb_usb_digitv.version=1.0-alpha\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_digitv\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"1.0-alpha\00", [22 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file394 = internal constant [61 x i8] c"dvb_usb_digitv.file=drivers/media/usb/dvb-usb/dvb-usb-digitv\00", section ".modinfo", align 1
@__UNIQUE_ID_license395 = internal constant [27 x i8] c"dvb_usb_digitv.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@digitv_table = internal global { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1351, i16 513, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-usb-digitv-02.fw\00", [43 x i8] zeroinitializer }, align 32
@rc_map_digitv_table = internal global { [55 x %struct.rc_map_table], [208 x i8] } { [55 x %struct.rc_map_table] [%struct.rc_map_table { i64 24405, i32 11 }, %struct.rc_map_table { i64 28501, i32 2 }, %struct.rc_map_table { i64 40789, i32 3 }, %struct.rc_map_table { i64 44885, i32 4 }, %struct.rc_map_table { i64 24406, i32 5 }, %struct.rc_map_table { i64 28502, i32 6 }, %struct.rc_map_table { i64 40790, i32 7 }, %struct.rc_map_table { i64 44886, i32 8 }, %struct.rc_map_table { i64 24409, i32 9 }, %struct.rc_map_table { i64 28505, i32 10 }, %struct.rc_map_table { i64 40793, i32 377 }, %struct.rc_map_table { i64 44889, i32 390 }, %struct.rc_map_table { i64 24410, i32 389 }, %struct.rc_map_table { i64 28506, i32 116 }, %struct.rc_map_table { i64 40794, i32 212 }, %struct.rc_map_table { i64 44890, i32 392 }, %struct.rc_map_table { i64 24421, i32 358 }, %struct.rc_map_table { i64 28517, i32 183 }, %struct.rc_map_table { i64 40805, i32 184 }, %struct.rc_map_table { i64 44901, i32 365 }, %struct.rc_map_table { i64 24422, i32 174 }, %struct.rc_map_table { i64 28518, i32 139 }, %struct.rc_map_table { i64 40806, i32 103 }, %struct.rc_map_table { i64 44902, i32 108 }, %struct.rc_map_table { i64 24425, i32 105 }, %struct.rc_map_table { i64 28521, i32 106 }, %struct.rc_map_table { i64 40809, i32 28 }, %struct.rc_map_table { i64 44905, i32 402 }, %struct.rc_map_table { i64 24426, i32 403 }, %struct.rc_map_table { i64 28522, i32 115 }, %struct.rc_map_table { i64 40810, i32 114 }, %struct.rc_map_table { i64 44906, i32 398 }, %struct.rc_map_table { i64 24469, i32 399 }, %struct.rc_map_table { i64 28565, i32 400 }, %struct.rc_map_table { i64 40853, i32 401 }, %struct.rc_map_table { i64 44949, i32 370 }, %struct.rc_map_table { i64 24470, i32 185 }, %struct.rc_map_table { i64 28566, i32 388 }, %struct.rc_map_table { i64 40854, i32 113 }, %struct.rc_map_table { i64 44950, i32 168 }, %struct.rc_map_table { i64 24473, i32 128 }, %struct.rc_map_table { i64 28569, i32 207 }, %struct.rc_map_table { i64 40857, i32 208 }, %struct.rc_map_table { i64 44953, i32 186 }, %struct.rc_map_table { i64 24474, i32 119 }, %struct.rc_map_table { i64 28570, i32 207 }, %struct.rc_map_table { i64 40858, i32 167 }, %struct.rc_map_table { i64 44954, i32 187 }, %struct.rc_map_table { i64 24485, i32 78 }, %struct.rc_map_table { i64 28581, i32 74 }, %struct.rc_map_table { i64 40869, i32 188 }, %struct.rc_map_table { i64 44965, i32 189 }, %struct.rc_map_table { i64 24486, i32 215 }, %struct.rc_map_table { i64 28582, i32 169 }, %struct.rc_map_table { i64 40870, i32 376 }], [208 x i8] zeroinitializer }, align 32
@digitv_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @digitv_i2c_xfer, ptr null, ptr null, ptr null, ptr @digitv_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Nebula Electronics uDigiTV DVB-T USB2.0)\00", [55 x i8] zeroinitializer }, align 32
@digitv_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x %struct.dvb_usb_device_description] }> } { i32 1, i32 3, ptr null, ptr @.str.3, i32 0, i32 20, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 0, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @digitv_frontend_attach, ptr @digitv_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 7, i32 2, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 4096 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr null, ptr null, ptr @digitv_identify_state, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy { ptr @rc_map_digitv_table, i32 55, ptr @digitv_rc_query, i32 1000 }, %struct.dvb_rc zeroinitializer }, ptr @digitv_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] }, [11 x %struct.dvb_usb_device_description] }> <{ { ptr, <{ ptr, [14 x ptr] }>, [15 x ptr] } { ptr @.str.4, <{ ptr, [14 x ptr] }> <{ ptr @digitv_table, [14 x ptr] zeroinitializer }>, [15 x ptr] zeroinitializer }, [11 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt352_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:mt352_attach\00", [44 x i8] zeroinitializer }, align 32
@digitv_mt352_config = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 0, i32 0, i32 0, i32 0, ptr @digitv_mt352_demod_init }, [44 x i8] zeroinitializer }, align 32
@digitv_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol mt352_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"digitv_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/dvb-usb/digitv.c\00", [61 x i8] zeroinitializer }, align 32
@digitv_frontend_attach._entry_ptr = internal global ptr @digitv_frontend_attach._entry, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nxt6000_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:nxt6000_attach\00", [42 x i8] zeroinitializer }, align 32
@digitv_nxt6000_config = internal global { %struct.nxt6000_config, [30 x i8] } { %struct.nxt6000_config { i8 0, i8 -128 }, [30 x i8] zeroinitializer }, align 32
@digitv_frontend_attach._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol nxt6000_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@digitv_frontend_attach._entry_ptr.15 = internal global ptr @digitv_frontend_attach._entry.13, section ".printk_index", align 4
@digitv_mt352_demod_init.reset_buf = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\898\8A-P\80", [26 x i8] zeroinitializer }, align 32
@digitv_mt352_demod_init.init_buf = internal global { [24 x i8], [40 x i8] } { [24 x i8] c"h\A0\8E@SPg }\01|\00z\00y W\05V1\88\0Fu2", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@digitv_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.10, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"digitv_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@digitv_tuner_attach._entry_ptr = internal global ptr @digitv_tuner_attach._entry, section ".printk_index", align 4
@digitv_rc_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.10, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"key: %*ph\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"digitv_rc_query\00", [16 x i8] zeroinitializer }, align 32
@digitv_rc_query._entry_ptr = internal global ptr @digitv_rc_query._entry, section ".printk_index", align 4
@digitv_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.10, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014digitv: more than 2 i2c messages at a time is not handled yet. TODO.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"digitv_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@digitv_i2c_xfer._entry_ptr = internal global ptr @digitv_i2c_xfer._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"dvb_usb_digitv_debug\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 17, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"digitv_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 353, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 364, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 21, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"digitv_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 294, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 304, i32 14 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"rc_map_digitv_table\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 174, i32 28 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"digitv_i2c_algo\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 87, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 345, i32 7 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"digitv_properties\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 300, i32 41 }
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"digitv_mt352_config\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 122, i32 28 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 145, i32 24 }
@___asan_gen_.87 = private unnamed_addr constant [22 x i8] c"digitv_nxt6000_config\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 137, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 151, i32 24 }
@___asan_gen_.96 = private unnamed_addr constant [10 x i8] c"reset_buf\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 104, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [9 x i8] c"init_buf\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 105, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 165, i32 7 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 265, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [38 x i8] c"../drivers/media/usb/dvb-usb/digitv.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 63, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author391, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description392, ptr @__UNIQUE_ID_file394, ptr @__UNIQUE_ID_license395, ptr @__UNIQUE_ID_version393, ptr @__exitcall_digitv_driver_exit, ptr @__initcall__kmod_dvb_usb_digitv__390_360_digitv_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_debug, ptr @digitv_driver_exit, ptr @digitv_frontend_attach._entry, ptr @digitv_frontend_attach._entry.13, ptr @digitv_frontend_attach._entry_ptr, ptr @digitv_frontend_attach._entry_ptr.15, ptr @digitv_i2c_xfer._entry, ptr @digitv_i2c_xfer._entry_ptr, ptr @digitv_rc_query._entry, ptr @digitv_rc_query._entry_ptr, ptr @digitv_tuner_attach._entry, ptr @digitv_tuner_attach._entry_ptr, ptr @dvb_usb_digitv_debug, ptr @digitv_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @digitv_table, ptr @.str.3, ptr @rc_map_digitv_table, ptr @digitv_i2c_algo, ptr @.str.4, ptr @digitv_properties, ptr @.str.6, ptr @.str.7, ptr @digitv_mt352_config, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @digitv_nxt6000_config, ptr @.str.14, ptr @digitv_mt352_demod_init.reset_buf, ptr @digitv_mt352_demod_init.init_buf, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_digitv_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_map_digitv_table to i32), i32 880, i32 1088, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_mt352_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_nxt6000_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_frontend_attach._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_mt352_demod_init.reset_buf to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_mt352_demod_init.init_buf to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_rc_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digitv_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @digitv_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @digitv_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @digitv_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @digitv_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digitv_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %d = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #7
  %0 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %d, align 4, !annotation !93
  %call = call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @digitv_properties, ptr noundef null, ptr noundef nonnull %d, ptr noundef nonnull @adapter_nr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d, align 4
  %cmp1.not = icmp eq ptr %2, null
  br i1 %cmp1.not, label %if.then.if.end7_crit_edge, label %if.then2

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %sndbuf.i = getelementptr inbounds %struct.digitv_state, ptr %4, i32 0, i32 1
  %5 = getelementptr inbounds %struct.digitv_state, ptr %4, i32 0, i32 1, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 10)
  %7 = ptrtoint ptr %sndbuf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %sndbuf.i, align 4
  %arrayidx7.i = getelementptr %struct.digitv_state, ptr %4, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.digitv_state, ptr %4, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %arrayidx9.i, align 2
  %arrayidx13.i = getelementptr %struct.digitv_state, ptr %4, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx13.i, align 1
  %call.i = call i32 @dvb_usb_generic_write(ptr noundef nonnull %2, ptr noundef %sndbuf.i, i16 noundef zeroext 7) #7
  %11 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d, align 4
  %priv.i9 = getelementptr inbounds %struct.dvb_usb_device, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %priv.i9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i9, align 8
  %sndbuf.i10 = getelementptr inbounds %struct.digitv_state, ptr %14, i32 0, i32 1
  %15 = getelementptr inbounds %struct.digitv_state, ptr %14, i32 0, i32 1, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 10)
  %17 = ptrtoint ptr %sndbuf.i10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 7, ptr %sndbuf.i10, align 4
  %arrayidx7.i11 = getelementptr %struct.digitv_state, ptr %14, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx7.i11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx7.i11, align 1
  %arrayidx9.i12 = getelementptr %struct.digitv_state, ptr %14, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx9.i12 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %arrayidx9.i12, align 2
  %arrayidx13.i13 = getelementptr %struct.digitv_state, ptr %14, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx13.i13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx13.i13, align 1
  %call.i14 = call i32 @dvb_usb_generic_write(ptr noundef %12, ptr noundef %sndbuf.i10, i16 noundef zeroext 7) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digitv_frontend_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.6) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.7) #7
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.6) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond65 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 8
  %call5 = tail call ptr %cond65(ptr noundef nonnull @digitv_mt352_config, ptr noundef %i2c_adap) #7
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %if.then6, label %if.then14

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.6) #7
  br label %if.end15

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %if.end15

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %6 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %fe_adap, align 8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %3, align 4
  br label %cleanup

if.end15:                                         ; preds = %do.end, %if.then6
  %fe_adap67 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %8 = ptrtoint ptr %fe_adap67 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fe_adap67, align 8
  %call18 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.11) #7
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %cond.end24, label %if.end15.if.then27_crit_edge

if.end15.if.then27_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

cond.end24:                                       ; preds = %if.end15
  %call22 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.12) #7
  %call23 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.11) #7
  %tobool26.not = icmp eq ptr %call23, null
  br i1 %tobool26.not, label %do.end37, label %cond.end24.if.then27_crit_edge

cond.end24.if.then27_crit_edge:                   ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.then27:                                        ; preds = %cond.end24.if.then27_crit_edge, %if.end15.if.then27_crit_edge
  %cond2572 = phi ptr [ %call23, %cond.end24.if.then27_crit_edge ], [ %call18, %if.end15.if.then27_crit_edge ]
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 8
  %i2c_adap29 = getelementptr inbounds %struct.dvb_usb_device, ptr %10, i32 0, i32 8
  %call30 = tail call ptr %cond2572(ptr noundef nonnull @digitv_nxt6000_config, ptr noundef %i2c_adap29) #7
  %cmp31 = icmp eq ptr %call30, null
  br i1 %cmp31, label %if.then32, label %if.then49

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.11) #7
  br label %if.end40.thread

do.end37:                                         ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %if.end40.thread

if.end40.thread:                                  ; preds = %do.end37, %if.then32
  %11 = ptrtoint ptr %fe_adap67 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %fe_adap67, align 8
  br label %cleanup

if.then49:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %fe_adap67 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call30, ptr %fe_adap67, align 8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end40.thread, %if.then14
  %retval.0 = phi i32 [ 0, %if.then14 ], [ 0, %if.then49 ], [ -5, %if.end40.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digitv_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.16) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.17) #7
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.16) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond24 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %4 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_adap, align 8
  %call4 = tail call ptr %cond24(ptr noundef %5, i32 noundef 96, ptr noundef null, i32 noundef 9) #7
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.16) #7
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end11:                                         ; preds = %if.then
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe_adap, align 8
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 1, i32 32, i32 6
  %10 = ptrtoint ptr %set_params to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @digitv_nxt6000_tuner_set_params, ptr %set_params, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end11.cleanup_crit_edge, %do.end, %if.then5
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 0, %if.end11.cleanup_crit_edge ], [ -19, %if.then5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @digitv_identify_state(ptr nocapture noundef readonly %udev, ptr nocapture noundef readnone %props, ptr nocapture noundef readnone %desc, ptr nocapture noundef writeonly %cold) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iManufacturer = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 10
  %0 = ptrtoint ptr %iManufacturer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iManufacturer, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %iProduct = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 11
  %2 = ptrtoint ptr %iProduct to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iProduct, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp4 = icmp eq i8 %3, 0
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %5 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cold, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digitv_rc_query(ptr noundef %d, ptr nocapture noundef writeonly %event, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  %key = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #7
  %0 = getelementptr inbounds [4 x i8], ptr %key, i32 0, i32 1
  %1 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %event, align 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %sndbuf.i = getelementptr inbounds %struct.digitv_state, ptr %4, i32 0, i32 1
  %5 = call ptr @memset(ptr %sndbuf.i, i32 0, i32 14)
  %6 = ptrtoint ptr %sndbuf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %sndbuf.i, align 4
  %arrayidx9.i = getelementptr %struct.digitv_state, ptr %4, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %arrayidx9.i, align 2
  %rcvbuf.i = getelementptr inbounds %struct.digitv_state, ptr %4, i32 0, i32 2
  %call20.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef %sndbuf.i, i16 noundef zeroext 7, ptr noundef %rcvbuf.i, i16 noundef zeroext 7, i32 noundef 10) #7
  %arrayidx22.i = getelementptr %struct.digitv_state, ptr %4, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx22.i, align 1
  %10 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool.not = icmp eq i32 %call20.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 8
  %sndbuf.i55 = getelementptr inbounds %struct.digitv_state, ptr %12, i32 0, i32 1
  %13 = getelementptr inbounds %struct.digitv_state, ptr %12, i32 0, i32 1, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 10)
  %15 = ptrtoint ptr %sndbuf.i55 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 7, ptr %sndbuf.i55, align 4
  %arrayidx7.i56 = getelementptr %struct.digitv_state, ptr %12, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx7.i56 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx7.i56, align 1
  %arrayidx9.i57 = getelementptr %struct.digitv_state, ptr %12, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx9.i57 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %arrayidx9.i57, align 2
  %arrayidx13.i = getelementptr %struct.digitv_state, ptr %12, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %arrayidx13.i, align 1
  %call.i = tail call i32 @dvb_usb_generic_write(ptr noundef %d, ptr noundef %sndbuf.i55, i16 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %19 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.not = icmp eq i8 %20, 0
  br i1 %cmp.not, label %if.end6.cleanup_crit_edge, label %for.cond.preheader

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end6
  %rc_map_size = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 1, i32 1
  %21 = ptrtoint ptr %rc_map_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rc_map_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp960 = icmp sgt i32 %22, 0
  br i1 %cmp960, label %for.body.lr.ph, label %for.cond.preheader.do.body_crit_edge

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %legacy = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 1
  %23 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %legacy, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx14 = getelementptr %struct.rc_map_table, ptr %24, i32 %i.061
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx14, align 8
  %shr.i = lshr i64 %26, 8
  %conv.i = trunc i64 %shr.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %conv.i)
  %cmp19 = icmp eq i8 %20, %conv.i
  br i1 %cmp19, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %conv.i58 = trunc i64 %26 to i8
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %conv.i58)
  %cmp25 = icmp eq i8 %28, %conv.i58
  br i1 %cmp25, label %if.then27, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %keycode = getelementptr %struct.rc_map_table, ptr %24, i32 %i.061, i32 1
  %29 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %keycode, align 8
  %31 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %event, align 4
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %state, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, %22
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %33 = load i32, ptr @dvb_usb_digitv_debug, align 4
  %and = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef 4, ptr noundef nonnull %key) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.then27, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then27 ], [ %call20.i, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digitv_mt352_demod_init(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit.2_crit_edge, label %mt352_write.exit

entry.mt352_write.exit.2_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit.2

mt352_write.exit:                                 ; preds = %entry
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @digitv_mt352_demod_init.reset_buf, i32 noundef 2) #7
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i.1 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.1, label %mt352_write.exit.mt352_write.exit.2_crit_edge, label %mt352_write.exit.1

mt352_write.exit.mt352_write.exit.2_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit.2

mt352_write.exit.1:                               ; preds = %mt352_write.exit
  %call.i.1 = tail call i32 %.pr(ptr noundef %fe, ptr noundef getelementptr inbounds ([6 x i8], ptr @digitv_mt352_demod_init.reset_buf, i32 0, i32 2), i32 noundef 2) #7
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr25 = load ptr, ptr %write.i, align 4
  %tobool.not.i.2 = icmp eq ptr %.pr25, null
  br i1 %tobool.not.i.2, label %mt352_write.exit.1.mt352_write.exit.2_crit_edge, label %if.then.i.2

mt352_write.exit.1.mt352_write.exit.2_crit_edge:  ; preds = %mt352_write.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit.2

if.then.i.2:                                      ; preds = %mt352_write.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.2 = tail call i32 %.pr25(ptr noundef %fe, ptr noundef getelementptr inbounds ([6 x i8], ptr @digitv_mt352_demod_init.reset_buf, i32 0, i32 4), i32 noundef 2) #7
  br label %mt352_write.exit.2

mt352_write.exit.2:                               ; preds = %if.then.i.2, %mt352_write.exit.1.mt352_write.exit.2_crit_edge, %mt352_write.exit.mt352_write.exit.2_crit_edge, %entry.mt352_write.exit.2_crit_edge
  tail call void @msleep(i32 noundef 1) #7
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 4
  %tobool.not.i16 = icmp eq ptr %5, null
  br i1 %tobool.not.i16, label %mt352_write.exit.2.mt352_write.exit19.11_crit_edge, label %mt352_write.exit19

mt352_write.exit.2.mt352_write.exit19.11_crit_edge: ; preds = %mt352_write.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit19.11

mt352_write.exit19:                               ; preds = %mt352_write.exit.2
  %call.i17 = tail call i32 %5(ptr noundef %fe, ptr noundef nonnull @digitv_mt352_demod_init.init_buf, i32 noundef 2) #7
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr27 = load ptr, ptr %write.i, align 4
  %tobool.not.i16.1 = icmp eq ptr %.pr27, null
  br i1 %tobool.not.i16.1, label %mt352_write.exit19.mt352_write.exit19.11_crit_edge, label %mt352_write.exit19.1

mt352_write.exit19.mt352_write.exit19.11_crit_edge: ; preds = %mt352_write.exit19
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit19.11

mt352_write.exit19.1:                             ; preds = %mt352_write.exit19
  %call.i17.1 = tail call i32 %.pr27(ptr noundef %fe, ptr noundef getelementptr inbounds ([24 x i8], ptr @digitv_mt352_demod_init.init_buf, i32 0, i32 2), i32 noundef 2) #7
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr29 = load ptr, ptr %write.i, align 4
  %tobool.not.i16.2 = icmp eq ptr %.pr29, null
  br i1 %tobool.not.i16.2, label %mt352_write.exit19.1.mt352_write.exit19.11_crit_edge, label %mt352_write.exit19.2

mt352_write.exit19.1.mt352_write.exit19.11_crit_edge: ; preds = %mt352_write.exit19.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit19.11

mt352_write.exit19.2:                             ; preds = %mt352_write.exit19.1
  %call.i17.2 = tail call i32 %.pr29(ptr noundef %fe, ptr noundef getelementptr inbounds ([24 x i8], ptr @digitv_mt352_demod_init.init_buf, i32 0, i32 4), i32 noundef 2) #7
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr31.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i16.3 = icmp eq ptr %.pr31.pr, null
  br i1 %tobool.not.i16.3, label %mt352_write.exit19.2.mt352_write.exit19.11_crit_edge, label %mt352_write.exit19.3

mt352_write.exit19.2.mt352_write.exit19.11_crit_edge: ; preds = %mt352_write.exit19.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit19.11

mt352_write.exit19.3:                             ; preds = %mt352_write.exit19.2
  %call.i17.3 = tail call i32 %.pr31.pr(ptr noundef %fe, ptr noundef getelementptr inbounds ([24 x i8], ptr @digitv_mt352_demod_init.init_buf, i32 0, i32 6), i32 noundef 2) #7
  %9 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr33 = load ptr, ptr %write.i, align 4
  %tobool.not.i16.4 = icmp eq ptr %.pr33, null
  br i1 %tobool.not.i16.4, label %mt352_write.exit19.3.mt352_write.exit19.11_crit_edge, label %mt352_write.exit19.4

mt352_write.exit19.3.mt352_write.exit19.11_crit_edge: ; preds = %mt352_write.exit19.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit19.11

mt352_write.exit19.4:                             ; preds = %mt352_write.exit19.3
  %call.i17.4 = tail call i32 %.pr33(ptr noundef %fe, ptr noundef getelementptr inbounds ([24 x i8], ptr @digitv_mt352_demod_init.init_buf, i32 0, i32 8), i32 noundef 2) #7
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr35.pr.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i16.5 = icmp eq ptr %.pr35.pr.pr, null
  br i1 %tobool.not.i16.5, label %mt352_write.exit19.4.mt352_write.exit19.11_crit_edge, label %mt352_write.exit19.5

mt352_write.exit19.4.mt352_write.exit19.11_crit_edge: ; preds = %mt352_write.exit19.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit19.11

mt352_write.exit19.5:                             ; preds = %mt352_write.exit19.4
  %call.i17.5 = tail call i32 %.pr35.pr.pr(ptr noundef %fe, ptr noundef getelementptr inbounds ([24 x i8], ptr @digitv_mt352_demod_init.init_buf, i32 0, i32 10), i32 noundef 2) #7
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr37 = load ptr, ptr %write.i, align 4
  %tobool.not.i16.6 = icmp eq ptr %.pr37, null
  br i1 %tobool.not.i16.6, label %mt352_write.exit19.5.mt352_write.exit19.11_crit_edge, label %mt352_write.exit19.6

mt352_write.exit19.5.mt352_write.exit19.11_crit_edge: ; preds = %mt352_write.exit19.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit19.11

mt352_write.exit19.6:                             ; preds = %mt352_write.exit19.5
  %call.i17.6 = tail call i32 %.pr37(ptr noundef %fe, ptr noundef getelementptr inbounds ([24 x i8], ptr @digitv_mt352_demod_init.init_buf, i32 0, i32 12), i32 noundef 2) #7
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr39.pr.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i16.7 = icmp eq ptr %.pr39.pr.pr, null
  br i1 %tobool.not.i16.7, label %mt352_write.exit19.6.mt352_write.exit19.11_crit_edge, label %mt352_write.exit19.7

mt352_write.exit19.6.mt352_write.exit19.11_crit_edge: ; preds = %mt352_write.exit19.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit19.11

mt352_write.exit19.7:                             ; preds = %mt352_write.exit19.6
  %call.i17.7 = tail call i32 %.pr39.pr.pr(ptr noundef %fe, ptr noundef getelementptr inbounds ([24 x i8], ptr @digitv_mt352_demod_init.init_buf, i32 0, i32 14), i32 noundef 2) #7
  %13 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr41 = load ptr, ptr %write.i, align 4
  %tobool.not.i16.8 = icmp eq ptr %.pr41, null
  br i1 %tobool.not.i16.8, label %mt352_write.exit19.7.mt352_write.exit19.11_crit_edge, label %mt352_write.exit19.8

mt352_write.exit19.7.mt352_write.exit19.11_crit_edge: ; preds = %mt352_write.exit19.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit19.11

mt352_write.exit19.8:                             ; preds = %mt352_write.exit19.7
  %call.i17.8 = tail call i32 %.pr41(ptr noundef %fe, ptr noundef getelementptr inbounds ([24 x i8], ptr @digitv_mt352_demod_init.init_buf, i32 0, i32 16), i32 noundef 2) #7
  %14 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr43.pr.pr.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i16.9 = icmp eq ptr %.pr43.pr.pr.pr, null
  br i1 %tobool.not.i16.9, label %mt352_write.exit19.8.mt352_write.exit19.11_crit_edge, label %mt352_write.exit19.9

mt352_write.exit19.8.mt352_write.exit19.11_crit_edge: ; preds = %mt352_write.exit19.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit19.11

mt352_write.exit19.9:                             ; preds = %mt352_write.exit19.8
  %call.i17.9 = tail call i32 %.pr43.pr.pr.pr(ptr noundef %fe, ptr noundef getelementptr inbounds ([24 x i8], ptr @digitv_mt352_demod_init.init_buf, i32 0, i32 18), i32 noundef 2) #7
  %15 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr45 = load ptr, ptr %write.i, align 4
  %tobool.not.i16.10 = icmp eq ptr %.pr45, null
  br i1 %tobool.not.i16.10, label %mt352_write.exit19.9.mt352_write.exit19.11_crit_edge, label %mt352_write.exit19.10

mt352_write.exit19.9.mt352_write.exit19.11_crit_edge: ; preds = %mt352_write.exit19.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit19.11

mt352_write.exit19.10:                            ; preds = %mt352_write.exit19.9
  %call.i17.10 = tail call i32 %.pr45(ptr noundef %fe, ptr noundef getelementptr inbounds ([24 x i8], ptr @digitv_mt352_demod_init.init_buf, i32 0, i32 20), i32 noundef 2) #7
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr47.pr.pr.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i16.11 = icmp eq ptr %.pr47.pr.pr.pr, null
  br i1 %tobool.not.i16.11, label %mt352_write.exit19.10.mt352_write.exit19.11_crit_edge, label %if.then.i18.11

mt352_write.exit19.10.mt352_write.exit19.11_crit_edge: ; preds = %mt352_write.exit19.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt352_write.exit19.11

if.then.i18.11:                                   ; preds = %mt352_write.exit19.10
  call void @__sanitizer_cov_trace_pc() #9
  %call.i17.11 = tail call i32 %.pr47.pr.pr.pr(ptr noundef %fe, ptr noundef getelementptr inbounds ([24 x i8], ptr @digitv_mt352_demod_init.init_buf, i32 0, i32 22), i32 noundef 2) #7
  br label %mt352_write.exit19.11

mt352_write.exit19.11:                            ; preds = %if.then.i18.11, %mt352_write.exit19.10.mt352_write.exit19.11_crit_edge, %mt352_write.exit19.9.mt352_write.exit19.11_crit_edge, %mt352_write.exit19.8.mt352_write.exit19.11_crit_edge, %mt352_write.exit19.7.mt352_write.exit19.11_crit_edge, %mt352_write.exit19.6.mt352_write.exit19.11_crit_edge, %mt352_write.exit19.5.mt352_write.exit19.11_crit_edge, %mt352_write.exit19.4.mt352_write.exit19.11_crit_edge, %mt352_write.exit19.3.mt352_write.exit19.11_crit_edge, %mt352_write.exit19.2.mt352_write.exit19.11_crit_edge, %mt352_write.exit19.1.mt352_write.exit19.11_crit_edge, %mt352_write.exit19.mt352_write.exit19.11_crit_edge, %mt352_write.exit.2.mt352_write.exit19.11_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digitv_nxt6000_tuner_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %b = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %b) #7
  %calc_regs = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 15
  %4 = call ptr @memset(ptr %b, i32 255, i32 5)
  %5 = ptrtoint ptr %calc_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %calc_regs, align 4
  %call = call i32 %6(ptr noundef %fe, ptr noundef nonnull %b, i32 noundef 5) #7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %7 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 %8(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = getelementptr inbounds [5 x i8], ptr %b, i32 0, i32 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 8
  %sndbuf.i = getelementptr inbounds %struct.digitv_state, ptr %13, i32 0, i32 1
  %14 = getelementptr inbounds %struct.digitv_state, ptr %13, i32 0, i32 1, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 10)
  %16 = ptrtoint ptr %sndbuf.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 6, ptr %sndbuf.i, align 4
  %arrayidx7.i = getelementptr %struct.digitv_state, ptr %13, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.digitv_state, ptr %13, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %arrayidx9.i, align 2
  %arrayidx13.i = getelementptr %struct.digitv_state, ptr %13, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %9, align 1
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %arrayidx13.i, align 1
  %call.i = call i32 @dvb_usb_generic_write(ptr noundef %11, ptr noundef %sndbuf.i, i16 noundef zeroext 7) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %b) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @digitv_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp2 = icmp sgt i32 %num, 2
  br i1 %cmp2, label %if.end5.thread, label %if.end5

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #10
  br label %for.body.lr.ph

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp678 = icmp sgt i32 %num, 0
  br i1 %cmp678, label %if.end5.for.body.lr.ph_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end5.for.body.lr.ph_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end5.for.body.lr.ph_crit_edge, %if.end5.thread
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc38.pre-phi, %for.inc.for.body_crit_edge ]
  %add = add nsw i32 %i.079, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp7 = icmp slt i32 %add, %num
  br i1 %cmp7, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then9

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  %buf14 = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 3
  %5 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf14, align 4
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 %add, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len, align 4
  %conv17 = zext i16 %8 to i32
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp3.i = icmp ugt i16 %8, 4
  br i1 %cmp3.i, label %if.then9.for.end_crit_edge, label %if.end.i

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.i:                                         ; preds = %if.then9
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.079, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %cmp.i = icmp eq ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp1.i = icmp eq i16 %8, 0
  %spec.select.i = or i1 %cmp.i, %cmp1.i
  %sndbuf.i = getelementptr inbounds %struct.digitv_state, ptr %10, i32 0, i32 1
  %15 = call ptr @memset(ptr %sndbuf.i, i32 0, i32 14)
  %16 = ptrtoint ptr %sndbuf.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %sndbuf.i, align 4
  %arrayidx7.i = getelementptr %struct.digitv_state, ptr %10, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %arrayidx7.i, align 1
  %18 = trunc i16 %8 to i8
  %conv.i = select i1 %spec.select.i, i8 0, i8 %18
  %arrayidx9.i = getelementptr %struct.digitv_state, ptr %10, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %arrayidx9.i, align 2
  br i1 %spec.select.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @dvb_usb_generic_write(ptr noundef %1, ptr noundef %sndbuf.i, i16 noundef zeroext 7) #7
  br label %digitv_ctrl_msg.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %rcvbuf.i = getelementptr inbounds %struct.digitv_state, ptr %10, i32 0, i32 2
  %call20.i = tail call i32 @dvb_usb_generic_rw(ptr noundef %1, ptr noundef %sndbuf.i, i16 noundef zeroext 7, ptr noundef %rcvbuf.i, i16 noundef zeroext 7, i32 noundef 10) #7
  %arrayidx22.i = getelementptr %struct.digitv_state, ptr %10, i32 0, i32 2, i32 3
  %20 = call ptr @memcpy(ptr %6, ptr %arrayidx22.i, i32 %conv17)
  br label %digitv_ctrl_msg.exit

digitv_ctrl_msg.exit:                             ; preds = %if.else.i, %if.then11.i
  %retval.0.i = phi i32 [ %call.i, %if.then11.i ], [ %call20.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp19 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp19, label %digitv_ctrl_msg.exit.for.end_crit_edge, label %digitv_ctrl_msg.exit.for.inc_crit_edge

digitv_ctrl_msg.exit.for.end_crit_edge:           ; preds = %digitv_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

digitv_ctrl_msg.exit.for.inc_crit_edge:           ; preds = %digitv_ctrl_msg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = add nsw i32 %i.079, 2
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %len30 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.079, i32 2
  %21 = ptrtoint ptr %len30 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %len30, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %22)
  %cmp2.i = icmp ugt i16 %22, 5
  br i1 %cmp2.i, label %if.else.for.end_crit_edge, label %digitv_ctrl_msg.exit73

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

digitv_ctrl_msg.exit73:                           ; preds = %if.else
  %conv31 = zext i16 %22 to i32
  %sub = add nsw i32 %conv31, -1
  %23 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i, align 8
  %buf24 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.079, i32 3
  %25 = ptrtoint ptr %buf24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf24, align 4
  %arrayidx28 = getelementptr i8, ptr %26, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %sndbuf.i64 = getelementptr inbounds %struct.digitv_state, ptr %24, i32 0, i32 1
  %29 = call ptr @memset(ptr %sndbuf.i64, i32 0, i32 14)
  %30 = ptrtoint ptr %sndbuf.i64 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %sndbuf.i64, align 4
  %arrayidx7.i65 = getelementptr %struct.digitv_state, ptr %24, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx7.i65 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %28, ptr %arrayidx7.i65, align 1
  %conv.i66 = trunc i32 %sub to i8
  %arrayidx9.i67 = getelementptr %struct.digitv_state, ptr %24, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx9.i67 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i66, ptr %arrayidx9.i67, align 2
  %arrayidx13.i69 = getelementptr %struct.digitv_state, ptr %24, i32 0, i32 1, i32 3
  %33 = call ptr @memcpy(ptr %arrayidx13.i69, ptr %arrayidx28, i32 %sub)
  %call.i70 = tail call i32 @dvb_usb_generic_write(ptr noundef %1, ptr noundef %sndbuf.i64, i16 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp33 = icmp slt i32 %call.i70, 0
  br i1 %cmp33, label %digitv_ctrl_msg.exit73.for.end_crit_edge, label %digitv_ctrl_msg.exit73.for.inc_crit_edge

digitv_ctrl_msg.exit73.for.inc_crit_edge:         ; preds = %digitv_ctrl_msg.exit73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

digitv_ctrl_msg.exit73.for.end_crit_edge:         ; preds = %digitv_ctrl_msg.exit73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %digitv_ctrl_msg.exit73.for.inc_crit_edge, %digitv_ctrl_msg.exit.for.inc_crit_edge
  %inc38.pre-phi = phi i32 [ %.pre, %digitv_ctrl_msg.exit.for.inc_crit_edge ], [ %add, %digitv_ctrl_msg.exit73.for.inc_crit_edge ]
  %cmp6 = icmp slt i32 %inc38.pre-phi, %num
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %digitv_ctrl_msg.exit73.for.end_crit_edge, %if.else.for.end_crit_edge, %digitv_ctrl_msg.exit.for.end_crit_edge, %if.then9.for.end_crit_edge, %if.end5.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end5.for.end_crit_edge ], [ %i.079, %if.else.for.end_crit_edge ], [ %i.079, %if.then9.for.end_crit_edge ], [ %i.079, %digitv_ctrl_msg.exit73.for.end_crit_edge ], [ %i.079, %digitv_ctrl_msg.exit.for.end_crit_edge ], [ %inc38.pre-phi, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.0.lcssa, %for.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @digitv_i2c_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_generic_write(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_generic_rw(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !55, !57, !59, !61, !63, !64, !65, !66, !67, !68, !70, !72, !73, !74, !75, !77, !79, !80, !81, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 19, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 21, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !6, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr389, !6, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_digitv__390_360_digitv_driver_init6, !10, !"__initcall__kmod_dvb_usb_digitv__390_360_digitv_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 360, i32 1}
!11 = !{ptr @__exitcall_digitv_driver_exit, !10, !"__exitcall_digitv_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author391, !13, !"__UNIQUE_ID_author391", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 362, i32 1}
!14 = !{ptr @__UNIQUE_ID_description392, !15, !"__UNIQUE_ID_description392", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 363, i32 1}
!16 = !{ptr @__UNIQUE_ID_version393, !17, !"__UNIQUE_ID_version393", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 364, i32 1}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__modver_attr, !17, !"__modver_attr", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_file394, !23, !"__UNIQUE_ID_file394", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 365, i32 1}
!24 = !{ptr @__UNIQUE_ID_license395, !23, !"__UNIQUE_ID_license395", i1 false, i1 false}
!25 = !{ptr @dvb_usb_digitv_debug, !26, !"dvb_usb_digitv_debug", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 17, i32 12}
!27 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!28 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!29 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!30 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!31 = !{ptr @digitv_driver, !32, !"digitv_driver", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 353, i32 26}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 304, i32 14}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 345, i32 7}
!37 = !{ptr @digitv_properties, !38, !"digitv_properties", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 300, i32 41}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 145, i32 24}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @digitv_frontend_attach._entry, !40, !"_entry", i1 false, i1 false}
!46 = !{ptr @digitv_frontend_attach._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 151, i32 24}
!49 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @digitv_frontend_attach._entry.13, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @digitv_frontend_attach._entry_ptr.15, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @digitv_mt352_config, !54, !"digitv_mt352_config", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 122, i32 28}
!55 = !{ptr @digitv_mt352_demod_init.reset_buf, !56, !"reset_buf", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 104, i32 12}
!57 = !{ptr @digitv_mt352_demod_init.init_buf, !58, !"init_buf", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 105, i32 12}
!59 = !{ptr @digitv_nxt6000_config, !60, !"digitv_nxt6000_config", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 137, i32 30}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 165, i32 7}
!63 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @digitv_tuner_attach._entry, !62, !"_entry", i1 false, i1 false}
!67 = !{ptr @digitv_tuner_attach._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @rc_map_digitv_table, !69, !"rc_map_digitv_table", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 174, i32 28}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 265, i32 3}
!72 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @digitv_rc_query._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @digitv_rc_query._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @digitv_i2c_algo, !76, !"digitv_i2c_algo", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 87, i32 29}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 63, i32 3}
!79 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @digitv_i2c_xfer._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @digitv_i2c_xfer._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @digitv_table, !83, !"digitv_table", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/dvb-usb/digitv.c", i32 294, i32 29}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
