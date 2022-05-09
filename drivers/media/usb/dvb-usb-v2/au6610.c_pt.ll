; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/au6610.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/au6610.c"
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
%struct.dvb_usb_device_properties = type { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_usb_adapter_properties = type { i8, i8, ptr, ptr, %struct.usb_data_stream_properties }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.125 }
%union.anon.125 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, i32, i32 }
%struct.dvb_usb_driver_info = type { ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.zl10353_config = type { i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.qt1010_config = type { i8 }
%struct.dvb_usb_adapter = type { ptr, %struct.usb_data_stream, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i8, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_usb_device = type { ptr, ptr, ptr, i8, ptr, ptr, %struct.dvb_usb_rc, i32, %struct.mutex, %struct.mutex, %struct.i2c_adapter, [2 x %struct.dvb_usb_adapter], ptr, [64 x i8], %struct.delayed_work, ptr }
%struct.dvb_usb_rc = type { ptr, i64, ptr, ptr, i32, i32, i8, i32 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_au6610.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype386 = internal constant [50 x i8] c"dvb_usb_au6610.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr387 = internal constant [51 x i8] c"dvb_usb_au6610.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_au6610__389_195_au6610_driver_init6 = internal global ptr @au6610_driver_init, section ".initcall6.init", align 4
@au6610_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @dvb_usbv2_probe, ptr @dvb_usbv2_disconnect, ptr null, ptr @dvb_usbv2_suspend, ptr @dvb_usbv2_resume, ptr @dvb_usbv2_reset_resume, ptr null, ptr null, ptr @au6610_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_au6610_driver_exit = internal global ptr @au6610_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author390 = internal constant [53 x i8] c"dvb_usb_au6610.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description391 = internal constant [70 x i8] c"dvb_usb_au6610.description=Driver for Alcor Micro AU6610 DVB-T USB2.0\00", section ".modinfo", align 1
@__UNIQUE_ID_version392 = internal constant [27 x i8] c"dvb_usb_au6610.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_au6610\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file393 = internal constant [64 x i8] c"dvb_usb_au6610.file=drivers/media/usb/dvb-usb-v2/dvb-usb-au6610\00", section ".modinfo", align 1
@__UNIQUE_ID_license394 = internal constant [27 x i8] c"dvb_usb_au6610.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@au6610_id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1423, i16 26128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Sigmatek DVB-110\00", [47 x i8] zeroinitializer }, align 32
@au6610_props = internal global { %struct.dvb_usb_device_properties, [56 x i8] } { %struct.dvb_usb_device_properties { ptr @.str.1, ptr null, ptr @adapter_nr, i8 0, i32 0, i8 0, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @au6610_i2c_algo, i32 1, ptr null, [2 x %struct.dvb_usb_adapter_properties] [%struct.dvb_usb_adapter_properties { i8 0, i8 0, ptr null, ptr null, %struct.usb_data_stream_properties { i8 2, i8 5, i8 -126, %union.anon.125 { %struct.anon.127 { i32 40, i32 942, i32 1 } } } }, %struct.dvb_usb_adapter_properties zeroinitializer], ptr null, ptr null, ptr null, ptr @au6610_zl10353_frontend_attach, ptr null, ptr @au6610_qt1010_tuner_attach, ptr null, ptr null, ptr null, ptr @au6610_init, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.3, ptr null, ptr @au6610_props }, [20 x i8] zeroinitializer }, align 32
@au6610_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @au6610_i2c_xfer, ptr null, ptr null, ptr null, ptr @au6610_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@au6610_usb_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 39, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: wlen=%d, aborting\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"au6610_usb_msg\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/dvb-usb-v2/au6610.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@au6610_usb_msg._entry_ptr = internal global ptr @au6610_usb_msg._entry, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<<<\00", [28 x i8] zeroinitializer }, align 32
@au6610_usb_msg.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.6, ptr @.str.10, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: %02x %02x %02x %02x %02x %02x %02x %02x %s %*ph\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zl10353_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:zl10353_attach\00", [42 x i8] zeroinitializer }, align 32
@au6610_zl10353_config = internal global { %struct.zl10353_config, [40 x i8] } { %struct.zl10353_config { i8 15, i32 0, i32 0, i32 1, i32 1, i8 0, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@au6610_zl10353_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol zl10353_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"au6610_zl10353_frontend_attach\00", [33 x i8] zeroinitializer }, align 32
@au6610_zl10353_frontend_attach._entry_ptr = internal global ptr @au6610_zl10353_frontend_attach._entry, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qt1010_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:qt1010_attach\00", [43 x i8] zeroinitializer }, align 32
@au6610_qt1010_config = internal global { %struct.qt1010_config, [31 x i8] } { %struct.qt1010_config { i8 98 }, [31 x i8] zeroinitializer }, align 32
@au6610_qt1010_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.6, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol qt1010_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"au6610_qt1010_tuner_attach\00", [37 x i8] zeroinitializer }, align 32
@au6610_qt1010_tuner_attach._entry_ptr = internal global ptr @au6610_qt1010_tuner_attach._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 19, i64 21]
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"au6610_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 183, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 199, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 12, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"au6610_id_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 176, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 177, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"au6610_props\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 158, i32 41 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"au6610_i2c_algo\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 118, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 38, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 48, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"au6610_zl10353_config\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 124, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 132, i32 16 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"au6610_qt1010_config\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 140, i32 29 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [41 x i8] c"../drivers/media/usb/dvb-usb-v2/au6610.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 146, i32 9 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_adapter_nr387, ptr @__UNIQUE_ID_adapter_nrtype386, ptr @__UNIQUE_ID_author390, ptr @__UNIQUE_ID_description391, ptr @__UNIQUE_ID_file393, ptr @__UNIQUE_ID_license394, ptr @__UNIQUE_ID_version392, ptr @__exitcall_au6610_driver_exit, ptr @__initcall__kmod_dvb_usb_au6610__389_195_au6610_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @au6610_driver_exit, ptr @au6610_qt1010_tuner_attach._entry, ptr @au6610_qt1010_tuner_attach._entry_ptr, ptr @au6610_usb_msg._entry, ptr @au6610_usb_msg._entry_ptr, ptr @au6610_zl10353_frontend_attach._entry, ptr @au6610_zl10353_frontend_attach._entry_ptr, ptr @au6610_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @au6610_id_table, ptr @.str.3, ptr @au6610_props, ptr @.compoundliteral, ptr @au6610_i2c_algo, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @au6610_zl10353_config, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @au6610_qt1010_config, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au6610_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au6610_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au6610_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au6610_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au6610_usb_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au6610_zl10353_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au6610_zl10353_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au6610_qt1010_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au6610_qt1010_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @au6610_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @au6610_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @au6610_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @au6610_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usbv2_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_reset_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au6610_zl10353_frontend_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.11) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.12) #6
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.11) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond24 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call4 = tail call ptr %cond24(ptr noundef nonnull @au6610_zl10353_config, ptr noundef %i2c_adap) #6
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then6, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.11) #6
  br label %if.end9

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then6, %if.then.if.end9_crit_edge
  %__r.0 = phi ptr [ null, %if.then6 ], [ %call4, %if.then.if.end9_crit_edge ], [ null, %do.end ]
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %__r.0, ptr %fe, align 8
  %cmp13 = icmp eq ptr %__r.0, null
  %. = select i1 %cmp13, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au6610_qt1010_tuner_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.15) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.16) #6
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.15) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond20 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %0 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe, align 8
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %conv = zext i8 %3 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call4 = tail call ptr %cond20(ptr noundef %1, ptr noundef %i2c_adap, ptr noundef nonnull @au6610_qt1010_config) #6
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then6, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.15) #6
  br label %if.end9

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then6, %if.then.if.end9_crit_edge
  %__r.0 = phi ptr [ null, %if.then6 ], [ %call4, %if.then.if.end9_crit_edge ], [ null, %do.end ]
  %cmp11 = icmp eq ptr %__r.0, null
  %cond13 = select i1 %cmp11, i32 -19, i32 0
  ret i32 %cond13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au6610_init(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %call = tail call i32 @usb_set_interface(ptr noundef %1, i32 noundef 0, i32 noundef 5) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au6610_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp = icmp sgt i32 %num, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 9
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp567 = icmp sgt i32 %num, 0
  br i1 %cmp567, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %buf15 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %len18 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %for.inc.for.body_crit_edge ]
  %add = add nsw i32 %i.068, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp6 = icmp slt i32 %add, %num
  br i1 %cmp6, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  %arrayidx9 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.068
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx9, align 4
  %conv10 = trunc i16 %6 to i8
  %buf = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.068, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf, align 4
  %len = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.068, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %len, align 4
  %11 = ptrtoint ptr %buf15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf15, align 4
  %13 = ptrtoint ptr %len18 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len18, align 4
  %cmp.i = icmp eq ptr %12, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp1.i = icmp eq i16 %14, 0
  %spec.select.i = or i1 %cmp.i, %cmp1.i
  %request.0.i = select i1 %spec.select.i, i8 20, i8 19
  %call.i = tail call fastcc i32 @au6610_usb_msg(ptr noundef %1, i8 noundef zeroext %request.0.i, i8 noundef zeroext %conv10, ptr noundef %8, i16 noundef zeroext %10, ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20 = icmp slt i32 %call.i, 0
  br i1 %cmp20, label %if.then8.for.end_crit_edge, label %if.then8.for.inc_crit_edge

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then8.for.end_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.if.else_crit_edge
  %arrayidx24 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.068
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx24, align 4
  %conv26 = trunc i16 %16 to i8
  %buf28 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.068, i32 3
  %17 = ptrtoint ptr %buf28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf28, align 4
  %len30 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.068, i32 2
  %19 = ptrtoint ptr %len30 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len30, align 4
  %call.i66 = tail call fastcc i32 @au6610_usb_msg(ptr noundef %1, i8 noundef zeroext 20, i8 noundef zeroext %conv26, ptr noundef %18, i16 noundef zeroext %20, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp32 = icmp slt i32 %call.i66, 0
  br i1 %cmp32, label %if.else.for.end_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then8.for.inc_crit_edge
  %i.1 = phi i32 [ %i.068, %if.else.for.inc_crit_edge ], [ 1, %if.then8.for.inc_crit_edge ]
  %inc37 = add nsw i32 %i.1, 1
  %cmp5 = icmp slt i32 %inc37, %num
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge, %if.then8.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.068, %if.else.for.end_crit_edge ], [ %i.068, %if.then8.for.end_crit_edge ], [ %inc37, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.0.lcssa, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @au6610_i2c_func(ptr nocapture noundef readnone %adapter) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @au6610_usb_msg(ptr nocapture noundef readonly %d, i8 noundef zeroext %operation, i8 noundef zeroext %addr, ptr nocapture noundef readonly %wbuf, i16 noundef zeroext %wlen, ptr nocapture noundef writeonly %rbuf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 6) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = zext i16 %wlen to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i16 %wlen, label %do.end [
    i16 1, label %sw.bb
    i16 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %wbuf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wbuf, align 1
  %conv1 = zext i8 %3 to i16
  %shl = shl nuw i16 %conv1, 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %wbuf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wbuf, align 1
  %conv5 = zext i8 %5 to i16
  %shl6 = shl nuw i16 %conv5, 8
  %arrayidx8 = getelementptr i8, ptr %wbuf, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i16
  %add = or i16 %shl6, %conv9
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %wlen to i32
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv) #9
  br label %error

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %index.0 = phi i16 [ %add, %sw.bb3 ], [ %shl, %sw.bb ]
  %udev13 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %10 = ptrtoint ptr %udev13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev13, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i = shl i32 %13, 8
  %or16 = or i32 %shl.i, -2147483520
  %conv17 = zext i8 %addr to i32
  %shl18 = shl nuw nsw i32 %conv17, 1
  %conv19 = trunc i32 %shl18 to i16
  %call20 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or16, i8 noundef zeroext %operation, i8 noundef zeroext -64, i16 noundef zeroext %conv19, i16 noundef zeroext %index.0, ptr noundef nonnull %call7.i, i16 noundef zeroext 6, i32 noundef 1000) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @au6610_usb_msg.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@au6610_usb_msg, %if.then26)) #6
          to label %do.end40 [label %if.then26], !srcloc !72

if.then26:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %udev13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev13, align 4
  %dev28 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  %conv29 = zext i8 %operation to i32
  %and = and i32 %shl18, 254
  %16 = lshr i32 %conv17, 7
  %conv34 = zext i16 %index.0 to i32
  %and35 = and i32 %conv34, 255
  %17 = lshr i32 %conv34, 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @au6610_usb_msg.__UNIQUE_ID_ddebug388, ptr noundef %dev28, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef 192, i32 noundef %conv29, i32 noundef %and, i32 noundef %16, i32 noundef %and35, i32 noundef %17, i32 noundef 6, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 6, ptr noundef nonnull %call7.i) #6
  br label %do.end40

do.end40:                                         ; preds = %if.then26, %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end40.error_crit_edge, label %if.end43

do.end40.error_crit_edge:                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end43:                                         ; preds = %do.end40
  %18 = zext i8 %operation to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %operation, label %if.end43.error_crit_edge [
    i8 19, label %if.end43.sw.bb45_crit_edge
    i8 21, label %if.end43.sw.bb45_crit_edge2
  ]

if.end43.sw.bb45_crit_edge2:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb45

if.end43.sw.bb45_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb45

if.end43.error_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

sw.bb45:                                          ; preds = %if.end43.sw.bb45_crit_edge, %if.end43.sw.bb45_crit_edge2
  %arrayidx46 = getelementptr i8, ptr %call7.i, i32 4
  %19 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx46, align 4
  %21 = ptrtoint ptr %rbuf to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %rbuf, align 1
  br label %error

error:                                            ; preds = %sw.bb45, %if.end43.error_crit_edge, %do.end40.error_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %call20, %do.end40.error_crit_edge ], [ %call20, %if.end43.error_crit_edge ], [ %call20, %sw.bb45 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !51, !52, !54, !56, !57, !58, !59, !60, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype386, !1, !"__UNIQUE_ID_adapter_nrtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr387, !1, !"__UNIQUE_ID_adapter_nr387", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_dvb_usb_au6610__389_195_au6610_driver_init6, !5, !"__initcall__kmod_dvb_usb_au6610__389_195_au6610_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 195, i32 1}
!6 = !{ptr @__exitcall_au6610_driver_exit, !5, !"__exitcall_au6610_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author390, !8, !"__UNIQUE_ID_author390", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 197, i32 1}
!9 = !{ptr @__UNIQUE_ID_description391, !10, !"__UNIQUE_ID_description391", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 198, i32 1}
!11 = !{ptr @__UNIQUE_ID_version392, !12, !"__UNIQUE_ID_version392", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 199, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_file393, !18, !"__UNIQUE_ID_file393", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 200, i32 1}
!19 = !{ptr @__UNIQUE_ID_license394, !18, !"__UNIQUE_ID_license394", i1 false, i1 false}
!20 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!21 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!22 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!23 = !{ptr @au6610_driver, !24, !"au6610_driver", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 183, i32 26}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 177, i32 4}
!27 = !{ptr @au6610_id_table, !28, !"au6610_id_table", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 176, i32 35}
!29 = !{ptr @au6610_props, !30, !"au6610_props", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 158, i32 41}
!31 = !{ptr @au6610_i2c_algo, !32, !"au6610_i2c_algo", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 118, i32 29}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 38, i32 3}
!35 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @au6610_usb_msg._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @au6610_usb_msg._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 48, i32 2}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @au6610_usb_msg.__UNIQUE_ID_ddebug388, !42, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 132, i32 16}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @au6610_zl10353_frontend_attach._entry, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @au6610_zl10353_frontend_attach._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @au6610_zl10353_config, !53, !"au6610_zl10353_config", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 124, i32 30}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 146, i32 9}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @au6610_qt1010_tuner_attach._entry, !55, !"_entry", i1 false, i1 false}
!60 = !{ptr @au6610_qt1010_tuner_attach._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @au6610_qt1010_config, !62, !"au6610_qt1010_config", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb-v2/au6610.c", i32 140, i32 29}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2148950649, i64 2148950654, i64 2148950667, i64 2148950711, i64 2148950745, i64 2148950766}
