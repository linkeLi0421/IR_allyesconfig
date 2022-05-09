; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/az6007.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/az6007.c"
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_usb_driver_info = type { ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.125 = type { i32 }
%struct.dvb_usb_adapter_properties = type { i8, i8, ptr, ptr, %struct.usb_data_stream_properties }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.124 }
%union.anon.124 = type { %struct.anon.126 }
%struct.anon.126 = type { i32, i32, i32 }
%struct.drxk_config = type { i8, i8, i8, i8, i8, i8, i8, i16, i8, i32, ptr, i32 }
%struct.mt2063_config = type { i8, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dvb_usb_device = type { ptr, ptr, ptr, i8, ptr, ptr, %struct.dvb_usb_rc, i32, %struct.mutex, %struct.mutex, %struct.i2c_adapter, [2 x %struct.dvb_usb_adapter], ptr, [64 x i8], %struct.delayed_work, ptr }
%struct.dvb_usb_rc = type { ptr, i64, ptr, ptr, i32, i32, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.dvb_usb_adapter = type { ptr, %struct.usb_data_stream, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i8, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.az6007_device_state = type { %struct.mutex, %struct.mutex, %struct.dvb_ca_en50221, i8, ptr, [4096 x i8] }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.140], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.140 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.141 }>
%union.anon.141 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_xfer_debug = internal constant [26 x i8] c"dvb_usb_az6007.xfer_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@az6007_xfer_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_xfer_debug = internal constant %struct.kernel_param { ptr @__param_str_xfer_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @az6007_xfer_debug } }, section "__param", align 4
@__UNIQUE_ID_xfer_debugtype386 = internal constant [39 x i8] c"dvb_usb_az6007.parmtype=xfer_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_xfer_debug387 = internal constant [49 x i8] c"dvb_usb_az6007.parm=xfer_debug:Enable xfer debug\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [26 x i8] c"dvb_usb_az6007.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [50 x i8] c"dvb_usb_az6007.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [51 x i8] c"dvb_usb_az6007.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_az6007__410_976_az6007_usb_driver_init6 = internal global ptr @az6007_usb_driver_init, section ".initcall6.init", align 4
@az6007_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @dvb_usbv2_probe, ptr @az6007_usb_disconnect, ptr null, ptr @az6007_suspend, ptr @az6007_resume, ptr null, ptr null, ptr null, ptr @az6007_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -112 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_az6007_usb_driver_exit = internal global ptr @az6007_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author411 = internal constant [60 x i8] c"dvb_usb_az6007.author=Henry Wang <Henry.wang@AzureWave.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author412 = internal constant [44 x i8] c"dvb_usb_az6007.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_description413 = internal constant [79 x i8] c"dvb_usb_az6007.description=Driver for AzureWave 6007 DVB-C/T USB2.0 and clones\00", section ".modinfo", align 1
@__UNIQUE_ID_version414 = internal constant [27 x i8] c"dvb_usb_az6007.version=2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usb_az6007\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file415 = internal constant [64 x i8] c"dvb_usb_az6007.file=drivers/media/usb/dvb-usb-v2/dvb-usb-az6007\00", section ".modinfo", align 1
@__UNIQUE_ID_license416 = internal constant [27 x i8] c"dvb_usb_az6007.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware417 = internal constant [54 x i8] c"dvb_usb_az6007.firmware=dvb-usb-terratec-h7-az6007.fw\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@az6007_usb_table = internal constant { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5075, i16 3277, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 4276, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 4259, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.usb_device_id { i16 3, i16 5367, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@az6007_ci_uninit.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"az6007_ci_uninit\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/dvb-usb-v2/az6007.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@az6007_ci_init.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.4, ptr @.str.5, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"az6007_ci_init\00", [17 x i8] zeroinitializer }, align 32
@az6007_ci_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&state->ca_mutex\00", [47 x i8] zeroinitializer }, align 32
@az6007_ci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.4, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Cannot initialize CI: Error %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@az6007_ci_init._entry_ptr = internal global ptr @az6007_ci_init._entry, section ".printk_index", align 4
@az6007_ci_init.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.4, ptr @.str.9, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CI initialized.\0A\00", [47 x i8] zeroinitializer }, align 32
@az6007_ci_read_attribute_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014usb in operation failed. (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"az6007_ci_read_attribute_mem\00", [35 x i8] zeroinitializer }, align 32
@az6007_ci_read_attribute_mem._entry_ptr = internal global ptr @az6007_ci_read_attribute_mem._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__az6007_read._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 111, ptr null, ptr null }, align 1
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014usb read operation failed. (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__az6007_read\00", [18 x i8] zeroinitializer }, align 32
@__az6007_read._entry_ptr = internal global ptr @__az6007_read._entry, section ".printk_index", align 4
@__az6007_read._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 117, ptr null, ptr null }, align 1
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017az6007: IN  req: %02x, value: %04x, index: %04x\0A\00", [45 x i8] zeroinitializer }, align 32
@__az6007_read._entry_ptr.16 = internal global ptr @__az6007_read._entry.14, section ".printk_index", align 4
@__az6007_read.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.4, ptr @.str.17, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"az6007: payload: \00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@az6007_ci_write_attribute_mem.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"az6007_ci_write_attribute_mem\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(), slot %d\0A\00", [17 x i8] zeroinitializer }, align 32
@az6007_ci_write_attribute_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014usb out operation failed. (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@az6007_ci_write_attribute_mem._entry_ptr = internal global ptr @az6007_ci_write_attribute_mem._entry, section ".printk_index", align 4
@__az6007_write._entry = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 148, ptr null, ptr null }, align 1
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017az6007: OUT req: %02x, value: %04x, index: %04x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__az6007_write\00", [17 x i8] zeroinitializer }, align 32
@__az6007_write._entry_ptr = internal global ptr @__az6007_write._entry, section ".printk_index", align 4
@__az6007_write.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.4, ptr @.str.17, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__az6007_write._entry.24 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.4, i32 155, ptr null, ptr null }, align 1
@.str.25 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013az6007: tried to write %d bytes, but I2C max size is 64 bytes\0A\00", [63 x i8] zeroinitializer }, align 32
@__az6007_write._entry_ptr.26 = internal global ptr @__az6007_write._entry.24, section ".printk_index", align 4
@__az6007_write._entry.27 = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.4, i32 165, ptr null, ptr null }, align 1
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013usb write operation failed. (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@__az6007_write._entry_ptr.29 = internal global ptr @__az6007_write._entry.27, section ".printk_index", align 4
@az6007_ci_read_cam_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.30, ptr @.str.4, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"az6007_ci_read_cam_control\00", [37 x i8] zeroinitializer }, align 32
@az6007_ci_read_cam_control._entry_ptr = internal global ptr @az6007_ci_read_cam_control._entry, section ".printk_index", align 4
@az6007_ci_read_cam_control._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\014Read CI IO error\0A\00", [44 x i8] zeroinitializer }, align 32
@az6007_ci_read_cam_control._entry_ptr.33 = internal global ptr @az6007_ci_read_cam_control._entry.31, section ".printk_index", align 4
@az6007_ci_read_cam_control.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.4, ptr @.str.34, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"read cam data = %x from 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@az6007_ci_write_cam_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.35, ptr @.str.4, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"az6007_ci_write_cam_control\00", [36 x i8] zeroinitializer }, align 32
@az6007_ci_write_cam_control._entry_ptr = internal global ptr @az6007_ci_write_cam_control._entry, section ".printk_index", align 4
@az6007_ci_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.36, ptr @.str.4, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"az6007_ci_slot_reset\00", [43 x i8] zeroinitializer }, align 32
@az6007_ci_slot_reset._entry_ptr = internal global ptr @az6007_ci_slot_reset._entry, section ".printk_index", align 4
@az6007_ci_slot_reset._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.36, ptr @.str.4, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@az6007_ci_slot_reset._entry_ptr.38 = internal global ptr @az6007_ci_slot_reset._entry.37, section ".printk_index", align 4
@az6007_ci_slot_reset.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.4, ptr @.str.39, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CAM Ready\0A\00", [21 x i8] zeroinitializer }, align 32
@CI_CamReady._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.40, ptr @.str.4, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CI_CamReady\00", [20 x i8] zeroinitializer }, align 32
@CI_CamReady._entry_ptr = internal global ptr @CI_CamReady._entry, section ".printk_index", align 4
@az6007_ci_slot_ts_enable.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.4, ptr @.str.5, i8 0, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"az6007_ci_slot_ts_enable\00", [39 x i8] zeroinitializer }, align 32
@az6007_ci_slot_ts_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.41, ptr @.str.4, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@az6007_ci_slot_ts_enable._entry_ptr = internal global ptr @az6007_ci_slot_ts_enable._entry, section ".printk_index", align 4
@az6007_ci_poll_slot_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.42, ptr @.str.4, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"az6007_ci_poll_slot_status\00", [37 x i8] zeroinitializer }, align 32
@az6007_ci_poll_slot_status._entry_ptr = internal global ptr @az6007_ci_poll_slot_status._entry, section ".printk_index", align 4
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Azurewave 6007\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.43, ptr @.str.44, ptr @az6007_props }, [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Terratec H7\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rc-nec-terratec-cinergy-xs\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.45, ptr @.str.46, ptr @az6007_props }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.45, ptr @.str.46, ptr @az6007_props }, [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Technisat CableStar Combo HD CI\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal constant { %struct.dvb_usb_driver_info, [20 x i8] } { %struct.dvb_usb_driver_info { ptr @.str.49, ptr @.str.44, ptr @az6007_cablestar_hdci_props }, [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dvb-usb-terratec-h7-az6007.fw\00", [34 x i8] zeroinitializer }, align 32
@az6007_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @az6007_i2c_xfer, ptr null, ptr null, ptr null, ptr @az6007_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@az6007_props = internal global { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.125, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.125, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.1, ptr null, ptr @adapter_nr, i8 0, i32 4340, i8 0, i8 0, i32 0, ptr null, ptr null, ptr @az6007_identify_state, ptr @.str.51, ptr @az6007_download_firmware, ptr @az6007_i2c_algo, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.125, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.125, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.125, [8 x i8] } } { i8 1, i8 10, i8 2, { %struct.anon.125, [8 x i8] } { %struct.anon.125 { i32 4096 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @az6007_power_ctrl, ptr null, ptr @az6007_read_mac_addr, ptr @az6007_frontend_attach, ptr null, ptr @az6007_tuner_attach, ptr null, ptr null, ptr @az6007_streaming_ctrl, ptr null, ptr null, ptr @az6007_get_rc_config, ptr null }, [56 x i8] zeroinitializer }, align 32
@az6007_identify_state.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.4, ptr @.str.54, i8 0, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"az6007_identify_state\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Identifying az6007 state\0A\00", [38 x i8] zeroinitializer }, align 32
@az6007_identify_state.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.4, ptr @.str.55, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Device is on %s state\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"warm\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cold\00", [27 x i8] zeroinitializer }, align 32
@az6007_download_firmware.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.4, ptr @.str.59, i8 0, i8 -37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"az6007_download_firmware\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Loading az6007 firmware\0A\00", [39 x i8] zeroinitializer }, align 32
@az6007_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017az6007: I2C W/R addr=0x%x len=%d/%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"az6007_i2c_xfer\00", [16 x i8] zeroinitializer }, align 32
@az6007_i2c_xfer._entry_ptr = internal global ptr @az6007_i2c_xfer._entry, section ".printk_index", align 4
@az6007_i2c_xfer._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.4, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017az6007: I2C W addr=0x%x len=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@az6007_i2c_xfer._entry_ptr.64 = internal global ptr @az6007_i2c_xfer._entry.62, section ".printk_index", align 4
@az6007_i2c_xfer._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.4, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017az6007: I2C R addr=0x%x len=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@az6007_i2c_xfer._entry_ptr.67 = internal global ptr @az6007_i2c_xfer._entry.65, section ".printk_index", align 4
@az6007_i2c_xfer._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.4, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s ERROR: %i\0A\00", [16 x i8] zeroinitializer }, align 32
@az6007_i2c_xfer._entry_ptr.70 = internal global ptr @az6007_i2c_xfer._entry.68, section ".printk_index", align 4
@az6007_power_ctrl.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.4, ptr @.str.5, i8 0, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"az6007_power_ctrl\00", [46 x i8] zeroinitializer }, align 32
@az6007_power_ctrl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&state->mutex\00", [18 x i8] zeroinitializer }, align 32
@az6007_read_mac_addr.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.73, ptr @.str.4, ptr @.str.74, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"az6007_read_mac_addr\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: mac is %pM\0A\00", [16 x i8] zeroinitializer }, align 32
@az6007_frontend_attach.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.75, ptr @.str.4, ptr @.str.76, i8 0, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"az6007_frontend_attach\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"attaching demod drxk\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drxk_attach\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"symbol:drxk_attach\00", [45 x i8] zeroinitializer }, align 32
@terratec_h7_drxk = internal global { %struct.drxk_config, [40 x i8] } { %struct.drxk_config { i8 41, i8 1, i8 0, i8 1, i8 1, i8 1, i8 0, i16 0, i8 2, i32 64, ptr @.str.80, i32 2 }, [40 x i8] zeroinitializer }, align 32
@az6007_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.75, ptr @.str.4, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013DVB: Unable to find symbol drxk_attach()\0A\00", [52 x i8] zeroinitializer }, align 32
@az6007_frontend_attach._entry_ptr = internal global ptr @az6007_frontend_attach._entry, section ".printk_index", align 4
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dvb-usb-terratec-h7-drxk.fw\00", [36 x i8] zeroinitializer }, align 32
@drxk_gate_ctrl.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.4, ptr @.str.82, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drxk_gate_ctrl\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@az6007_tuner_attach.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.4, ptr @.str.86, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"az6007_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"attaching tuner mt2063\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2063_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:mt2063_attach\00", [43 x i8] zeroinitializer }, align 32
@az6007_mt2063_config = internal global { %struct.mt2063_config, [24 x i8] } { %struct.mt2063_config { i8 96, i32 36125000 }, [24 x i8] zeroinitializer }, align 32
@az6007_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.85, ptr @.str.4, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol mt2063_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@az6007_tuner_attach._entry_ptr = internal global ptr @az6007_tuner_attach._entry, section ".printk_index", align 4
@az6007_streaming_ctrl.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.90, ptr @.str.4, ptr @.str.82, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"az6007_streaming_ctrl\00", [42 x i8] zeroinitializer }, align 32
@az6007_get_rc_config.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.91, ptr @.str.4, ptr @.str.92, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"az6007_get_rc_config\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Getting az6007 Remote Control properties\0A\00", [54 x i8] zeroinitializer }, align 32
@az6007_cablestar_hdci_props = internal global { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.125, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, [56 x i8] } { { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.125, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @.str.1, ptr null, ptr @adapter_nr, i8 0, i32 4340, i8 0, i8 0, i32 0, ptr null, ptr null, ptr @az6007_identify_state, ptr @.str.51, ptr @az6007_download_firmware, ptr @az6007_i2c_algo, i32 1, ptr null, <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.125, [8 x i8] } } }, %struct.dvb_usb_adapter_properties }> <{ { i8, i8, ptr, ptr, { i8, i8, i8, { %struct.anon.125, [8 x i8] } } } { i8 0, i8 0, ptr null, ptr null, { i8, i8, i8, { %struct.anon.125, [8 x i8] } } { i8 1, i8 10, i8 2, { %struct.anon.125, [8 x i8] } { %struct.anon.125 { i32 4096 }, [8 x i8] undef } } }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @az6007_power_ctrl, ptr null, ptr @az6007_read_mac_addr, ptr @az6007_cablestar_hdci_frontend_attach, ptr null, ptr @az6007_tuner_attach, ptr null, ptr null, ptr @az6007_streaming_ctrl, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@az6007_cablestar_hdci_frontend_attach.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.94, ptr @.str.4, ptr @.str.76, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"az6007_cablestar_hdci_frontend_attach\00", [58 x i8] zeroinitializer }, align 32
@cablestar_hdci_drxk = internal global { %struct.drxk_config, [40 x i8] } { %struct.drxk_config { i8 41, i8 1, i8 0, i8 1, i8 1, i8 1, i8 0, i16 0, i8 2, i32 64, ptr @.str.95, i32 2 }, [40 x i8] zeroinitializer }, align 32
@az6007_cablestar_hdci_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.94, ptr @.str.4, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@az6007_cablestar_hdci_frontend_attach._entry_ptr = internal global ptr @az6007_cablestar_hdci_frontend_attach._entry, section ".printk_index", align 4
@.str.95 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dvb-usb-technisat-cablestar-hdci-drxk.fw\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"az6007_xfer_debug\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 24, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"az6007_usb_driver\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 961, i32 26 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 981, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 28, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"az6007_usb_table\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 929, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 558, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 582, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 584, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 601, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 606, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 277, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 111, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 116, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 118, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 302, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 314, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 147, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 154, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 165, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 350, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 354, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 357, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 390, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 450, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 462, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 470, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 421, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 497, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 506, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 538, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 930, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 932, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 936, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 887, i32 25 }
@___asan_gen_.265 = private unnamed_addr constant [16 x i8] c"az6007_i2c_algo\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 832, i32 29 }
@___asan_gen_.268 = private unnamed_addr constant [13 x i8] c"az6007_props\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 884, i32 41 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 842, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 863, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 878, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 770, i32 5 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 788, i32 5 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 802, i32 5 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 821, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 693, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 696, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 621, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 631, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"terratec_h7_drxk\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 50, i32 27 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 633, i32 16 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 60, i32 20 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 82, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 672, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [21 x i8] c"az6007_mt2063_config\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 95, i32 29 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 677, i32 7 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 192, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 234, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [28 x i8] c"az6007_cablestar_hdci_props\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 906, i32 41 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 652, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [20 x i8] c"cablestar_hdci_drxk\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 63, i32 27 }
@___asan_gen_.409 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 654, i32 16 }
@___asan_gen_.412 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.413 = private constant [41 x i8] c"../drivers/media/usb/dvb-usb-v2/az6007.c\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 73, i32 20 }
@llvm.compiler.used = appending global [154 x ptr] [ptr @CI_CamReady._entry, ptr @CI_CamReady._entry_ptr, ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author411, ptr @__UNIQUE_ID_author412, ptr @__UNIQUE_ID_description413, ptr @__UNIQUE_ID_file415, ptr @__UNIQUE_ID_firmware417, ptr @__UNIQUE_ID_license416, ptr @__UNIQUE_ID_version414, ptr @__UNIQUE_ID_xfer_debug387, ptr @__UNIQUE_ID_xfer_debugtype386, ptr @__az6007_read._entry, ptr @__az6007_read._entry.14, ptr @__az6007_read._entry_ptr, ptr @__az6007_read._entry_ptr.16, ptr @__az6007_write._entry, ptr @__az6007_write._entry.24, ptr @__az6007_write._entry.27, ptr @__az6007_write._entry_ptr, ptr @__az6007_write._entry_ptr.26, ptr @__az6007_write._entry_ptr.29, ptr @__exitcall_az6007_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_az6007__410_976_az6007_usb_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @__param_xfer_debug, ptr @az6007_cablestar_hdci_frontend_attach._entry, ptr @az6007_cablestar_hdci_frontend_attach._entry_ptr, ptr @az6007_ci_init._entry, ptr @az6007_ci_init._entry_ptr, ptr @az6007_ci_poll_slot_status._entry, ptr @az6007_ci_poll_slot_status._entry_ptr, ptr @az6007_ci_read_attribute_mem._entry, ptr @az6007_ci_read_attribute_mem._entry_ptr, ptr @az6007_ci_read_cam_control._entry, ptr @az6007_ci_read_cam_control._entry.31, ptr @az6007_ci_read_cam_control._entry_ptr, ptr @az6007_ci_read_cam_control._entry_ptr.33, ptr @az6007_ci_slot_reset._entry, ptr @az6007_ci_slot_reset._entry.37, ptr @az6007_ci_slot_reset._entry_ptr, ptr @az6007_ci_slot_reset._entry_ptr.38, ptr @az6007_ci_slot_ts_enable._entry, ptr @az6007_ci_slot_ts_enable._entry_ptr, ptr @az6007_ci_write_attribute_mem._entry, ptr @az6007_ci_write_attribute_mem._entry_ptr, ptr @az6007_ci_write_cam_control._entry, ptr @az6007_ci_write_cam_control._entry_ptr, ptr @az6007_frontend_attach._entry, ptr @az6007_frontend_attach._entry_ptr, ptr @az6007_i2c_xfer._entry, ptr @az6007_i2c_xfer._entry.62, ptr @az6007_i2c_xfer._entry.65, ptr @az6007_i2c_xfer._entry.68, ptr @az6007_i2c_xfer._entry_ptr, ptr @az6007_i2c_xfer._entry_ptr.64, ptr @az6007_i2c_xfer._entry_ptr.67, ptr @az6007_i2c_xfer._entry_ptr.70, ptr @az6007_tuner_attach._entry, ptr @az6007_tuner_attach._entry_ptr, ptr @az6007_usb_driver_exit, ptr @az6007_xfer_debug, ptr @az6007_usb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @az6007_usb_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @az6007_ci_init.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.compoundliteral, ptr @.str.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @az6007_i2c_algo, ptr @az6007_props, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @az6007_power_ctrl.__key, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @terratec_h7_drxk, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @az6007_mt2063_config, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @az6007_cablestar_hdci_props, ptr @.str.94, ptr @cablestar_hdci_drxk, ptr @.str.95], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_xfer_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_usb_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_ci_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_ci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_ci_read_attribute_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_ci_write_attribute_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_ci_read_cam_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_ci_read_cam_control._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_ci_write_cam_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_ci_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_ci_slot_reset._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CI_CamReady._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_ci_slot_ts_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_ci_poll_slot_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_i2c_xfer._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_i2c_xfer._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_i2c_xfer._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_power_ctrl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_h7_drxk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_mt2063_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_cablestar_hdci_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cablestar_hdci_drxk to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @az6007_cablestar_hdci_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @az6007_usb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @az6007_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @az6007_usb_driver) #6
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @az6007_usb_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_ci_uninit.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_usb_disconnect, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !251

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_ci_uninit.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %do.end.i.az6007_ci_uninit.exit_crit_edge, label %if.end4.i

do.end.i.az6007_ci_uninit.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %az6007_ci_uninit.exit

if.end4.i:                                        ; preds = %do.end.i
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %cmp5.i = icmp eq ptr %3, null
  br i1 %cmp5.i, label %if.end4.i.az6007_ci_uninit.exit_crit_edge, label %if.end7.i

if.end4.i.az6007_ci_uninit.exit_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %az6007_ci_uninit.exit

if.end7.i:                                        ; preds = %if.end4.i
  %data.i = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 2, i32 11
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %cmp8.i = icmp eq ptr %5, null
  br i1 %cmp8.i, label %if.end7.i.az6007_ci_uninit.exit_crit_edge, label %if.end10.i

if.end7.i.az6007_ci_uninit.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %az6007_ci_uninit.exit

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %ca.i = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 2
  tail call void @dvb_ca_en50221_release(ptr noundef %ca.i) #6
  %6 = call ptr @memset(ptr %ca.i, i32 0, i32 52)
  br label %az6007_ci_uninit.exit

az6007_ci_uninit.exit:                            ; preds = %if.end10.i, %if.end7.i.az6007_ci_uninit.exit_crit_edge, %if.end4.i.az6007_ci_uninit.exit_crit_edge, %do.end.i.az6007_ci_uninit.exit_crit_edge
  tail call void @dvb_usbv2_disconnect(ptr noundef %intf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_suspend(ptr noundef %intf, [1 x i32] %msg.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_ci_uninit.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_suspend, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !251

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_ci_uninit.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %do.end.i.az6007_ci_uninit.exit_crit_edge, label %if.end4.i

do.end.i.az6007_ci_uninit.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %az6007_ci_uninit.exit

if.end4.i:                                        ; preds = %do.end.i
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %cmp5.i = icmp eq ptr %3, null
  br i1 %cmp5.i, label %if.end4.i.az6007_ci_uninit.exit_crit_edge, label %if.end7.i

if.end4.i.az6007_ci_uninit.exit_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %az6007_ci_uninit.exit

if.end7.i:                                        ; preds = %if.end4.i
  %data.i = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 2, i32 11
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %cmp8.i = icmp eq ptr %5, null
  br i1 %cmp8.i, label %if.end7.i.az6007_ci_uninit.exit_crit_edge, label %if.end10.i

if.end7.i.az6007_ci_uninit.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %az6007_ci_uninit.exit

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %ca.i = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 2
  tail call void @dvb_ca_en50221_release(ptr noundef %ca.i) #6
  %6 = call ptr @memset(ptr %ca.i, i32 0, i32 52)
  br label %az6007_ci_uninit.exit

az6007_ci_uninit.exit:                            ; preds = %if.end10.i, %if.end7.i.az6007_ci_uninit.exit_crit_edge, %if.end4.i.az6007_ci_uninit.exit_crit_edge, %do.end.i.az6007_ci_uninit.exit_crit_edge
  %call2 = tail call i32 @dvb_usbv2_suspend(ptr noundef %intf, [1 x i32] %msg.coerce) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 11
  tail call fastcc void @az6007_ci_init(ptr noundef %adapter)
  %call2 = tail call i32 @dvb_usbv2_resume(ptr noundef %intf) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usbv2_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @az6007_ci_init(ptr noundef %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_ci_init.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_ci_init, %if.then)) #6
          to label %do.body10 [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_ci_init.__UNIQUE_ID_ddebug400, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #6
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  %ca_mutex = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %ca_mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @az6007_ci_init.__key) #6
  %ca = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ca to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ca, align 4
  %read_attribute_mem = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %read_attribute_mem to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @az6007_ci_read_attribute_mem, ptr %read_attribute_mem, align 4
  %write_attribute_mem = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %write_attribute_mem to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @az6007_ci_write_attribute_mem, ptr %write_attribute_mem, align 4
  %read_cam_control = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %read_cam_control to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @az6007_ci_read_cam_control, ptr %read_cam_control, align 4
  %write_cam_control = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %write_cam_control to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @az6007_ci_write_cam_control, ptr %write_cam_control, align 4
  %slot_reset = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 2, i32 7
  %9 = ptrtoint ptr %slot_reset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @az6007_ci_slot_reset, ptr %slot_reset, align 4
  %slot_shutdown = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 2, i32 8
  %10 = ptrtoint ptr %slot_shutdown to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @az6007_ci_slot_shutdown, ptr %slot_shutdown, align 4
  %slot_ts_enable = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 2, i32 9
  %11 = ptrtoint ptr %slot_ts_enable to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @az6007_ci_slot_ts_enable, ptr %slot_ts_enable, align 4
  %poll_slot_status = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 2, i32 10
  %12 = ptrtoint ptr %poll_slot_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @az6007_ci_poll_slot_status, ptr %poll_slot_status, align 4
  %data = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 2, i32 11
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %data, align 4
  %dvb_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 10
  %call23 = tail call i32 @dvb_ca_en50221_init(ptr noundef %dvb_adap, ptr noundef %ca, i32 noundef 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp.not = icmp eq i32 %call23, 0
  br i1 %cmp.not, label %do.body33, label %do.end28

do.end28:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call23) #9
  %14 = call ptr @memset(ptr %ca, i32 0, i32 52)
  br label %cleanup

do.body33:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_ci_init.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_ci_init, %if.then45)) #6
          to label %cleanup [label %if.then45], !srcloc !251

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_ci_init.__UNIQUE_ID_ddebug401, ptr noundef nonnull @.str.9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.body33, %do.end28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usbv2_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_ci_read_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 12) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %ca_mutex = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %6, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end2.do.end_crit_edge, label %az6007_read.exit

if.end2.do.end_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

az6007_read.exit:                                 ; preds = %if.end2
  %conv = trunc i32 %address to i16
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev.i, align 4
  %call1.i = tail call fastcc i32 @__az6007_read(ptr noundef %8, i8 noundef zeroext -63, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp4 = icmp slt i32 %call1.i, 0
  br i1 %cmp4, label %az6007_read.exit.do.end_crit_edge, label %if.else

az6007_read.exit.do.end_crit_edge:                ; preds = %az6007_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %az6007_read.exit.do.end_crit_edge, %if.end2.do.end_crit_edge
  %retval.0.i27 = phi i32 [ %call1.i, %az6007_read.exit.do.end_crit_edge ], [ -11, %if.end2.do.end_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %retval.0.i27) #9
  br label %if.end9

if.else:                                          ; preds = %az6007_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i, align 8
  %conv8 = zext i8 %10 to i32
  br label %if.end9

if.end9:                                          ; preds = %if.else, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %conv8, %if.else ]
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_ci_write_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_ci_write_attribute_mem.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_ci_write_attribute_mem, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_ci_write_attribute_mem.__UNIQUE_ID_ddebug395, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %slot) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end4, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %ca_mutex = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #6
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %5, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end4.do.end12_crit_edge, label %az6007_write.exit

if.end4.do.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

az6007_write.exit:                                ; preds = %if.end4
  %conv5 = zext i8 %value to i16
  %conv = trunc i32 %address to i16
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i, align 4
  %call1.i = tail call fastcc i32 @__az6007_write(ptr noundef %7, i8 noundef zeroext -62, i16 noundef zeroext %conv, i16 noundef zeroext %conv5, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp7.not = icmp eq i32 %call1.i, 0
  br i1 %cmp7.not, label %az6007_write.exit.if.end15_crit_edge, label %az6007_write.exit.do.end12_crit_edge

az6007_write.exit.do.end12_crit_edge:             ; preds = %az6007_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

az6007_write.exit.if.end15_crit_edge:             ; preds = %az6007_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end12:                                         ; preds = %az6007_write.exit.do.end12_crit_edge, %if.end4.do.end12_crit_edge
  %retval.0.i2832 = phi i32 [ %call1.i, %az6007_write.exit.do.end12_crit_edge ], [ -11, %if.end4.do.end12_crit_edge ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %retval.0.i2832) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %az6007_write.exit.if.end15_crit_edge
  %retval.0.i2833 = phi i32 [ %retval.0.i2832, %do.end12 ], [ 0, %az6007_write.exit.if.end15_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i2833, %if.end15 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_ci_read_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 12) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %ca_mutex = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %6, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end2.do.end_crit_edge, label %az6007_read.exit

if.end2.do.end_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

az6007_read.exit:                                 ; preds = %if.end2
  %conv = zext i8 %address to i16
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev.i, align 4
  %call1.i = tail call fastcc i32 @__az6007_read(ptr noundef %8, i8 noundef zeroext -61, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i32 noundef 2) #6
  tail call void @mutex_unlock(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp4 = icmp slt i32 %call1.i, 0
  br i1 %cmp4, label %az6007_read.exit.do.end_crit_edge, label %if.else

az6007_read.exit.do.end_crit_edge:                ; preds = %az6007_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %az6007_read.exit.do.end_crit_edge, %if.end2.do.end_crit_edge
  %retval.0.i5255 = phi i32 [ %call1.i, %az6007_read.exit.do.end_crit_edge ], [ -11, %if.end2.do.end_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %retval.0.i5255) #9
  br label %if.end33

if.else:                                          ; preds = %az6007_read.exit
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp9 = icmp eq i8 %10, 0
  br i1 %cmp9, label %do.end14, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #9
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.else.if.end17_crit_edge
  %arrayidx18 = getelementptr i8, ptr %call7.i, i32 1
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %12 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_ci_read_cam_control.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_ci_read_cam_control, %if.then26)) #6
          to label %if.end33 [label %if.then26], !srcloc !251

if.then26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx18, align 1
  %conv28 = zext i8 %14 to i32
  %conv29 = zext i8 %address to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_ci_read_cam_control.__UNIQUE_ID_ddebug396, ptr noundef nonnull @.str.34, i32 noundef %conv28, i32 noundef %conv29) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.end17, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %conv19, %if.then26 ], [ %conv19, %if.end17 ]
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end33 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_ci_write_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %ca_mutex = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #6
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %5, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.do.end_crit_edge, label %az6007_write.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

az6007_write.exit:                                ; preds = %if.end
  %conv1 = zext i8 %value to i16
  %conv = zext i8 %address to i16
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i, align 4
  %call1.i = tail call fastcc i32 @__az6007_write(ptr noundef %7, i8 noundef zeroext -60, i16 noundef zeroext %conv, i16 noundef zeroext %conv1, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.not = icmp eq i32 %call1.i, 0
  br i1 %cmp2.not, label %az6007_write.exit.failed_crit_edge, label %az6007_write.exit.do.end_crit_edge

az6007_write.exit.do.end_crit_edge:               ; preds = %az6007_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

az6007_write.exit.failed_crit_edge:               ; preds = %az6007_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

do.end:                                           ; preds = %az6007_write.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i20 = phi i32 [ %call1.i, %az6007_write.exit.do.end_crit_edge ], [ -11, %if.end.do.end_crit_edge ]
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %retval.0.i20) #9
  br label %failed

failed:                                           ; preds = %do.end, %az6007_write.exit.failed_crit_edge
  %retval.0.i21 = phi i32 [ 0, %az6007_write.exit.failed_crit_edge ], [ %retval.0.i20, %do.end ]
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %failed, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i21, %failed ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_ci_slot_reset(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %ca_mutex = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #6
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %5, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %az6007_write.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

az6007_write.exit:                                ; preds = %entry
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i, align 4
  %call1.i = tail call fastcc i32 @__az6007_write(ptr noundef %7, i8 noundef zeroext -58, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not = icmp eq i32 %call1.i, 0
  br i1 %cmp.not, label %if.end, label %az6007_write.exit.do.end_crit_edge

az6007_write.exit.do.end_crit_edge:               ; preds = %az6007_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %az6007_write.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i3953 = phi i32 [ %call1.i, %az6007_write.exit.do.end_crit_edge ], [ -11, %entry.do.end_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %retval.0.i3953) #9
  br label %failed

if.end:                                           ; preds = %az6007_write.exit
  tail call void @msleep(i32 noundef 500) #6
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %call.i41 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %9, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp.i42 = icmp slt i32 %call.i41, 0
  br i1 %cmp.i42, label %if.end.do.end7_crit_edge, label %az6007_write.exit47

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

az6007_write.exit47:                              ; preds = %if.end
  %10 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev.i, align 4
  %call1.i44 = tail call fastcc i32 @__az6007_write(ptr noundef %11, i8 noundef zeroext -58, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %cmp3.not = icmp eq i32 %call1.i44, 0
  br i1 %cmp3.not, label %az6007_write.exit47.for.body_crit_edge, label %az6007_write.exit47.do.end7_crit_edge

az6007_write.exit47.do.end7_crit_edge:            ; preds = %az6007_write.exit47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

az6007_write.exit47.for.body_crit_edge:           ; preds = %az6007_write.exit47
  br label %for.body

do.end7:                                          ; preds = %az6007_write.exit47.do.end7_crit_edge, %if.end.do.end7_crit_edge
  %retval.0.i4656 = phi i32 [ %call1.i44, %az6007_write.exit47.do.end7_crit_edge ], [ -11, %if.end.do.end7_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %retval.0.i4656) #9
  br label %failed

for.cond:                                         ; preds = %CI_CamReady.exit
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %az6007_write.exit47.for.body_crit_edge
  %i.064 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %az6007_write.exit47.for.body_crit_edge ]
  tail call void @msleep(i32 noundef 100) #6
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 12) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.do.body14_crit_edge, label %if.end.i48

for.body.do.body14_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

if.end.i48:                                       ; preds = %for.body
  %priv.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %13, i32 0, i32 15
  %15 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i.i, align 8
  %call.i.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %16, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i48.CI_CamReady.exit.thread59_crit_edge, label %az6007_read.exit.i

if.end.i48.CI_CamReady.exit.thread59_crit_edge:   ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %CI_CamReady.exit.thread59

az6007_read.exit.i:                               ; preds = %if.end.i48
  %udev.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %13, i32 0, i32 5
  %17 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev.i.i, align 4
  %call1.i.i = tail call fastcc i32 @__az6007_read(ptr noundef %18, i8 noundef zeroext -56, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i49 = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i49, label %az6007_read.exit.i.CI_CamReady.exit.thread59_crit_edge, label %CI_CamReady.exit

az6007_read.exit.i.CI_CamReady.exit.thread59_crit_edge: ; preds = %az6007_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %CI_CamReady.exit.thread59

CI_CamReady.exit.thread59:                        ; preds = %az6007_read.exit.i.CI_CamReady.exit.thread59_crit_edge, %if.end.i48.CI_CamReady.exit.thread59_crit_edge
  %retval.0.i3.i = phi i32 [ %call1.i.i, %az6007_read.exit.i.CI_CamReady.exit.thread59_crit_edge ], [ -11, %if.end.i48.CI_CamReady.exit.thread59_crit_edge ]
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %retval.0.i3.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %do.body14

CI_CamReady.exit:                                 ; preds = %az6007_read.exit.i
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %for.cond, label %CI_CamReady.exit.do.body14_crit_edge

CI_CamReady.exit.do.body14_crit_edge:             ; preds = %CI_CamReady.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

do.body14:                                        ; preds = %CI_CamReady.exit.do.body14_crit_edge, %CI_CamReady.exit.thread59, %for.body.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_ci_slot_reset.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_ci_slot_reset, %if.then20)) #6
          to label %for.end [label %if.then20], !srcloc !251

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_ci_slot_reset.__UNIQUE_ID_ddebug397, ptr noundef nonnull @.str.39) #6
  br label %for.end

for.end:                                          ; preds = %if.then20, %do.body14, %for.cond.for.end_crit_edge
  tail call void @msleep(i32 noundef 5000) #6
  br label %failed

failed:                                           ; preds = %for.end, %do.end7, %do.end
  %ret.0 = phi i32 [ %retval.0.i3953, %do.end ], [ %retval.0.i4656, %do.end7 ], [ 0, %for.end ]
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #6
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @az6007_ci_slot_shutdown(ptr nocapture noundef readnone %ca, i32 noundef %slot) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_ci_slot_ts_enable(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_ci_slot_ts_enable.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_ci_slot_ts_enable, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_ci_slot_ts_enable.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.41) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ca_mutex = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #6
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %5, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.do.end7_crit_edge, label %az6007_write.exit

do.end.do.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

az6007_write.exit:                                ; preds = %do.end
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i, align 4
  %call1.i = tail call fastcc i32 @__az6007_write(ptr noundef %7, i8 noundef zeroext -57, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.not = icmp eq i32 %call1.i, 0
  br i1 %cmp.not, label %az6007_write.exit.failed_crit_edge, label %az6007_write.exit.do.end7_crit_edge

az6007_write.exit.do.end7_crit_edge:              ; preds = %az6007_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

az6007_write.exit.failed_crit_edge:               ; preds = %az6007_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

do.end7:                                          ; preds = %az6007_write.exit.do.end7_crit_edge, %do.end.do.end7_crit_edge
  %retval.0.i1620 = phi i32 [ %call1.i, %az6007_write.exit.do.end7_crit_edge ], [ -11, %do.end.do.end7_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %retval.0.i1620) #9
  br label %failed

failed:                                           ; preds = %do.end7, %az6007_write.exit.failed_crit_edge
  %retval.0.i1621 = phi i32 [ 0, %az6007_write.exit.failed_crit_edge ], [ %retval.0.i1620, %do.end7 ]
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #6
  ret i32 %retval.0.i1621
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_ci_poll_slot_status(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %open) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 12) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ca_mutex = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #6
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %6, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.if.end4.thread_crit_edge, label %az6007_read.exit

if.end.if.end4.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.thread

az6007_read.exit:                                 ; preds = %if.end
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev.i, align 4
  %call1.i = tail call fastcc i32 @__az6007_read(ptr noundef %8, i8 noundef zeroext -59, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i32 noundef 1) #6
  tail call void @mutex_unlock(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %az6007_read.exit.if.end4.thread_crit_edge, label %land.lhs.true

az6007_read.exit.if.end4.thread_crit_edge:        ; preds = %az6007_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.thread

if.end4.thread:                                   ; preds = %az6007_read.exit.if.end4.thread_crit_edge, %if.end.if.end4.thread_crit_edge
  %retval.0.i28 = phi i32 [ %call1.i, %az6007_read.exit.if.end4.thread_crit_edge ], [ -11, %if.end.if.end4.thread_crit_edge ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %retval.0.i28) #9
  br label %if.end9

land.lhs.true:                                    ; preds = %az6007_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp6 = icmp eq i8 %10, 1
  %spec.select = select i1 %cmp6, i32 5, i32 0
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end4.thread
  %ret.1 = phi i32 [ %spec.select, %land.lhs.true ], [ -5, %if.end4.thread ]
  tail call void @mutex_unlock(ptr noundef %ca_mutex) #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__az6007_read(ptr noundef %udev, i8 noundef zeroext %req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i32 noundef %blen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %udev, align 8
  %shl.i = shl i32 %1, 8
  %or1 = or i32 %shl.i, -2147483520
  %conv = trunc i32 %blen to i16
  %call2 = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or1, i8 noundef zeroext %req, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i16 noundef zeroext %conv, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @az6007_xfer_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv10 = zext i8 %req to i32
  %conv11 = zext i16 %value to i32
  %conv12 = zext i16 %index to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__az6007_read.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__az6007_read, %if.then20)) #6
          to label %cleanup [label %if.then20], !srcloc !251

if.then20:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %b, i32 noundef %blen, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call2, %if.then20 ], [ %call2, %if.end.cleanup_crit_edge ], [ %call2, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__az6007_write(ptr noundef %udev, i8 noundef zeroext %req, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i32 noundef %blen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @az6007_xfer_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %do.end

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %req to i32
  %conv1 = zext i16 %value to i32
  %conv2 = zext i16 %index to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__az6007_write.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__az6007_write, %if.then9)) #6
          to label %if.end12 [label %if.then9], !srcloc !251

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %b, i32 noundef %blen, i1 noundef zeroext true) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.end, %entry.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %blen)
  %cmp = icmp sgt i32 %blen, 64
  br i1 %cmp, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %blen) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %udev, align 8
  %shl.i = shl i32 %2, 8
  %or = or i32 %shl.i, -2147483648
  %conv22 = trunc i32 %blen to i16
  %call23 = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or, i8 noundef zeroext %req, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %b, i16 noundef zeroext %conv22, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %blen)
  %cmp24.not = icmp eq i32 %call23, %blen
  br i1 %cmp24.not, label %if.end20.cleanup_crit_edge, label %do.end29

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call23) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %if.end20.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ -95, %do.end17 ], [ -5, %do.end29 ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_identify_state(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_identify_state.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_identify_state, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_identify_state.__UNIQUE_ID_ddebug407, ptr noundef nonnull @.str.54) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 6) #10
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 4
  %call7 = tail call fastcc i32 @__az6007_read(ptr noundef %2, i8 noundef zeroext -73, i16 noundef zeroext 6, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call7)
  %cmp = icmp eq i32 %call7, 6
  %not.cmp = xor i1 %cmp, true
  %. = zext i1 %not.cmp to i32
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br i1 %cmp, label %if.end6.do.body19_crit_edge, label %if.then11

if.end6.do.body19_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %call13 = tail call fastcc i32 @__az6007_write(ptr noundef %4, i8 noundef zeroext 9, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %call15 = tail call fastcc i32 @__az6007_write(ptr noundef %6, i8 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %call17 = tail call fastcc i32 @__az6007_write(ptr noundef %8, i8 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  br label %do.body19

do.body19:                                        ; preds = %if.then11, %if.end6.do.body19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_identify_state.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_identify_state, %if.then31)) #6
          to label %cleanup [label %if.then31], !srcloc !251

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %cmp, ptr @.str.56, ptr @.str.57
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_identify_state.__UNIQUE_ID_ddebug408, ptr noundef nonnull @.str.55, ptr noundef nonnull %cond) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body19, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ %., %if.then31 ], [ %., %do.body19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_download_firmware(ptr nocapture noundef readonly %d, ptr noundef %fw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_download_firmware.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_download_firmware, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_download_firmware.__UNIQUE_ID_ddebug409, ptr noundef nonnull @.str.59) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %call3 = tail call i32 @cypress_load_firmware(ptr noundef %1, ptr noundef %fw, i32 noundef 2) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_power_ctrl(ptr nocapture noundef readonly %d, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_power_ctrl.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_power_ctrl, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_power_ctrl.__UNIQUE_ID_ddebug406, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.71) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %warm = getelementptr inbounds %struct.az6007_device_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %warm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool3.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool3.not, label %do.body5, label %if.end37

do.body5:                                         ; preds = %do.end
  tail call void @__mutex_init(ptr noundef %1, ptr noundef nonnull @.str.72, ptr noundef nonnull @az6007_power_ctrl.__key) #6
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %4, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body5.cleanup_crit_edge, label %az6007_write.exit

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

az6007_write.exit:                                ; preds = %do.body5
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %5 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev.i, align 4
  %call1.i = tail call fastcc i32 @__az6007_write(ptr noundef %6, i8 noundef zeroext -68, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %az6007_write.exit.cleanup_crit_edge, label %if.end10

az6007_write.exit.cleanup_crit_edge:              ; preds = %az6007_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %az6007_write.exit
  tail call void @msleep(i32 noundef 60) #6
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %call.i70 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %8, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp.i71 = icmp slt i32 %call.i70, 0
  br i1 %cmp.i71, label %if.end10.cleanup_crit_edge, label %az6007_write.exit76

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

az6007_write.exit76:                              ; preds = %if.end10
  %9 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev.i, align 4
  %call1.i73 = tail call fastcc i32 @__az6007_write(ptr noundef %10, i8 noundef zeroext -68, i16 noundef zeroext 1, i16 noundef zeroext 4, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %cmp12 = icmp slt i32 %call1.i73, 0
  br i1 %cmp12, label %az6007_write.exit76.cleanup_crit_edge, label %if.end14

az6007_write.exit76.cleanup_crit_edge:            ; preds = %az6007_write.exit76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %az6007_write.exit76
  tail call void @msleep(i32 noundef 100) #6
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %call.i78 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %12, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp.i79 = icmp slt i32 %call.i78, 0
  br i1 %cmp.i79, label %if.end14.cleanup_crit_edge, label %az6007_write.exit84

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

az6007_write.exit84:                              ; preds = %if.end14
  %13 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev.i, align 4
  %call1.i81 = tail call fastcc i32 @__az6007_write(ptr noundef %14, i8 noundef zeroext -68, i16 noundef zeroext 1, i16 noundef zeroext 3, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %cmp16 = icmp slt i32 %call1.i81, 0
  br i1 %cmp16, label %az6007_write.exit84.cleanup_crit_edge, label %if.end18

az6007_write.exit84.cleanup_crit_edge:            ; preds = %az6007_write.exit84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %az6007_write.exit84
  tail call void @msleep(i32 noundef 20) #6
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %call.i86 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %16, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp.i87 = icmp slt i32 %call.i86, 0
  br i1 %cmp.i87, label %if.end18.cleanup_crit_edge, label %az6007_write.exit92

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

az6007_write.exit92:                              ; preds = %if.end18
  %17 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev.i, align 4
  %call1.i89 = tail call fastcc i32 @__az6007_write(ptr noundef %18, i8 noundef zeroext -68, i16 noundef zeroext 1, i16 noundef zeroext 4, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i89)
  %cmp20 = icmp slt i32 %call1.i89, 0
  br i1 %cmp20, label %az6007_write.exit92.cleanup_crit_edge, label %if.end22

az6007_write.exit92.cleanup_crit_edge:            ; preds = %az6007_write.exit92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %az6007_write.exit92
  tail call void @msleep(i32 noundef 400) #6
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 8
  %call.i94 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %20, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp.i95 = icmp slt i32 %call.i94, 0
  br i1 %cmp.i95, label %if.end22.cleanup_crit_edge, label %az6007_write.exit100

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

az6007_write.exit100:                             ; preds = %if.end22
  %21 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev.i, align 4
  %call1.i97 = tail call fastcc i32 @__az6007_write(ptr noundef %22, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i97)
  %cmp24 = icmp slt i32 %call1.i97, 0
  br i1 %cmp24, label %az6007_write.exit100.cleanup_crit_edge, label %if.end26

az6007_write.exit100.cleanup_crit_edge:           ; preds = %az6007_write.exit100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %az6007_write.exit100
  tail call void @msleep(i32 noundef 150) #6
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %call.i102 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %24, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp.i103 = icmp slt i32 %call.i102, 0
  br i1 %cmp.i103, label %if.end26.cleanup_crit_edge, label %az6007_write.exit108

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

az6007_write.exit108:                             ; preds = %if.end26
  %25 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev.i, align 4
  %call1.i105 = tail call fastcc i32 @__az6007_write(ptr noundef %26, i8 noundef zeroext -64, i16 noundef zeroext 1, i16 noundef zeroext 3, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i105)
  %cmp28 = icmp slt i32 %call1.i105, 0
  br i1 %cmp28, label %az6007_write.exit108.cleanup_crit_edge, label %if.end30

az6007_write.exit108.cleanup_crit_edge:           ; preds = %az6007_write.exit108
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %az6007_write.exit108
  tail call void @msleep(i32 noundef 430) #6
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %call.i110 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %28, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp.i111 = icmp slt i32 %call.i110, 0
  br i1 %cmp.i111, label %if.end30.cleanup_crit_edge, label %az6007_write.exit116

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

az6007_write.exit116:                             ; preds = %if.end30
  %29 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udev.i, align 4
  %call1.i113 = tail call fastcc i32 @__az6007_write(ptr noundef %30, i8 noundef zeroext -68, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113)
  %cmp32 = icmp slt i32 %call1.i113, 0
  br i1 %cmp32, label %az6007_write.exit116.cleanup_crit_edge, label %if.end34

az6007_write.exit116.cleanup_crit_edge:           ; preds = %az6007_write.exit116
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %az6007_write.exit116
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load36 = load i8, ptr %warm, align 4
  %bf.set = or i8 %bf.load36, -128
  store i8 %bf.set, ptr %warm, align 4
  br label %cleanup

if.end37:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool38.not = icmp eq i32 %onoff, 0
  br i1 %tobool38.not, label %if.end37.cleanup_crit_edge, label %if.end40

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.end37
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %call.i118 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %33, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp.i119 = icmp slt i32 %call.i118, 0
  br i1 %cmp.i119, label %if.end40.az6007_write.exit124_crit_edge, label %if.end.i122

if.end40.az6007_write.exit124_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %az6007_write.exit124

if.end.i122:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %udev.i120 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %34 = ptrtoint ptr %udev.i120 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %udev.i120, align 4
  %call1.i121 = tail call fastcc i32 @__az6007_write(ptr noundef %35, i8 noundef zeroext -68, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %33) #6
  br label %az6007_write.exit124

az6007_write.exit124:                             ; preds = %if.end.i122, %if.end40.az6007_write.exit124_crit_edge
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %call.i126 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %37, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %cmp.i127 = icmp slt i32 %call.i126, 0
  br i1 %cmp.i127, label %az6007_write.exit124.cleanup_crit_edge, label %if.end.i130

az6007_write.exit124.cleanup_crit_edge:           ; preds = %az6007_write.exit124
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i130:                                      ; preds = %az6007_write.exit124
  call void @__sanitizer_cov_trace_pc() #8
  %udev.i128 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %38 = ptrtoint ptr %udev.i128 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %udev.i128, align 4
  %call1.i129 = tail call fastcc i32 @__az6007_write(ptr noundef %39, i8 noundef zeroext -57, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %37) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i130, %az6007_write.exit124.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end34, %az6007_write.exit116.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %az6007_write.exit108.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %az6007_write.exit100.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %az6007_write.exit92.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %az6007_write.exit84.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %az6007_write.exit76.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %az6007_write.exit.cleanup_crit_edge, %do.body5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ %call1.i, %az6007_write.exit.cleanup_crit_edge ], [ %call1.i73, %az6007_write.exit76.cleanup_crit_edge ], [ %call1.i81, %az6007_write.exit84.cleanup_crit_edge ], [ %call1.i89, %az6007_write.exit92.cleanup_crit_edge ], [ %call1.i97, %az6007_write.exit100.cleanup_crit_edge ], [ %call1.i105, %az6007_write.exit108.cleanup_crit_edge ], [ %call1.i113, %az6007_write.exit116.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ 0, %az6007_write.exit124.cleanup_crit_edge ], [ 0, %if.end.i130 ], [ -11, %do.body5.cleanup_crit_edge ], [ -11, %if.end10.cleanup_crit_edge ], [ -11, %if.end14.cleanup_crit_edge ], [ -11, %if.end18.cleanup_crit_edge ], [ -11, %if.end22.cleanup_crit_edge ], [ -11, %if.end26.cleanup_crit_edge ], [ -11, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_read_mac_addr(ptr nocapture noundef readonly %adap, ptr noundef %mac) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %data = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 5
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %az6007_read.exit.thread, label %az6007_read.exit

az6007_read.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = call ptr @memcpy(ptr %mac, ptr %data, i32 6)
  br label %if.end15

az6007_read.exit:                                 ; preds = %entry
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %5 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev.i, align 4
  %call1.i = tail call fastcc i32 @__az6007_read(ptr noundef %6, i8 noundef zeroext -73, i16 noundef zeroext 6, i16 noundef zeroext 0, ptr noundef %data, i32 noundef 6) #6
  tail call void @mutex_unlock(ptr noundef %3) #6
  %7 = call ptr @memcpy(ptr %mac, ptr %data, i32 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp sgt i32 %call1.i, 0
  br i1 %cmp, label %do.body, label %az6007_read.exit.if.end15_crit_edge

az6007_read.exit.if.end15_crit_edge:              ; preds = %az6007_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body:                                          ; preds = %az6007_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_read_mac_addr.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_read_mac_addr, %if.then14)) #6
          to label %if.end15 [label %if.then14], !srcloc !251

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_read_mac_addr.__UNIQUE_ID_ddebug402, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73, ptr noundef %mac) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.body, %az6007_read.exit.if.end15_crit_edge, %az6007_read.exit.thread
  %retval.0.i2225 = phi i32 [ -11, %az6007_read.exit.thread ], [ %call1.i, %if.then14 ], [ %call1.i, %az6007_read.exit.if.end15_crit_edge ], [ %call1.i, %do.body ]
  ret i32 %retval.0.i2225
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_frontend_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_frontend_attach.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_frontend_attach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_frontend_attach.__UNIQUE_ID_ddebug403, ptr noundef nonnull @.str.76) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call10 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.77) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %cond.end, label %do.end.if.then15_crit_edge

do.end.if.then15_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

cond.end:                                         ; preds = %do.end
  %call12 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.78) #6
  %call13 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.77) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end22, label %cond.end.if.then15_crit_edge

cond.end.if.then15_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %cond.end.if.then15_crit_edge, %do.end.if.then15_crit_edge
  %cond57 = phi ptr [ %call13, %cond.end.if.then15_crit_edge ], [ %call10, %do.end.if.then15_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call16 = tail call ptr %cond57(ptr noundef nonnull @terratec_h7_drxk, ptr noundef %i2c_adap) #6
  %cmp = icmp eq ptr %call16, null
  br i1 %cmp, label %if.then18, label %if.end31

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.77) #6
  br label %if.end25.thread

do.end22:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #9
  br label %if.end25.thread

if.end25.thread:                                  ; preds = %do.end22, %if.then18
  %fe59 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %4 = ptrtoint ptr %fe59 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fe59, align 8
  br label %cleanup

if.end31:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %5 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call16, ptr %fe, align 8
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call16, i32 0, i32 6
  %6 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %adap, ptr %sec_priv, align 4
  %7 = load ptr, ptr %fe, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 28
  %8 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_gate_ctrl, align 4
  %gate_ctrl = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %gate_ctrl, align 4
  %11 = load ptr, ptr %fe, align 8
  %i2c_gate_ctrl39 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 1, i32 28
  %12 = ptrtoint ptr %i2c_gate_ctrl39 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @drxk_gate_ctrl, ptr %i2c_gate_ctrl39, align 4
  tail call fastcc void @az6007_ci_init(ptr noundef %adap)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end25.thread
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -22, %if.end25.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_tuner_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_tuner_attach.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_tuner_attach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_tuner_attach.__UNIQUE_ID_ddebug405, ptr noundef nonnull @.str.86) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end.if.end13_crit_edge, label %if.then5

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 %5(ptr noundef %3, i32 noundef 1) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %do.end.if.end13_crit_edge
  %call14 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.87) #6
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %cond.end, label %if.end13.if.then19_crit_edge

if.end13.if.then19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

cond.end:                                         ; preds = %if.end13
  %call16 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.88) #6
  %call17 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.87) #6
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end28, label %cond.end.if.then19_crit_edge

cond.end.if.then19_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then19:                                        ; preds = %cond.end.if.then19_crit_edge, %if.end13.if.then19_crit_edge
  %cond64 = phi ptr [ %call17, %cond.end.if.then19_crit_edge ], [ %call14, %if.end13.if.then19_crit_edge ]
  %6 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call22 = tail call ptr %cond64(ptr noundef %7, ptr noundef nonnull @az6007_mt2063_config, ptr noundef %i2c_adap) #6
  %cmp = icmp eq ptr %call22, null
  br i1 %cmp, label %if.then24, label %if.end35

if.then24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.87) #6
  br label %cleanup

do.end28:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #9
  br label %cleanup

if.end35:                                         ; preds = %if.then19
  %8 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe, align 8
  %i2c_gate_ctrl39 = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 1, i32 28
  %10 = ptrtoint ptr %i2c_gate_ctrl39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_gate_ctrl39, align 4
  %tobool40.not = icmp eq ptr %11, null
  br i1 %tobool40.not, label %if.end35.cleanup_crit_edge, label %if.then41

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = tail call i32 %11(ptr noundef %9, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end35.cleanup_crit_edge, %do.end28, %if.then24
  %retval.0 = phi i32 [ 0, %if.then41 ], [ 0, %if.end35.cleanup_crit_edge ], [ -22, %if.then24 ], [ -22, %do.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_streaming_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_streaming_ctrl.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_streaming_ctrl, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool6.not = icmp eq i32 %onoff, 0
  %cond = select i1 %tobool6.not, ptr @.str.84, ptr @.str.83
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_streaming_ctrl.__UNIQUE_ID_ddebug393, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.90, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %7, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.az6007_write.exit_crit_edge, label %if.end.i

do.end.az6007_write.exit_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %az6007_write.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv7 = trunc i32 %onoff to i16
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %8 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev.i, align 4
  %call1.i = tail call fastcc i32 @__az6007_write(ptr noundef %9, i8 noundef zeroext -68, i16 noundef zeroext %conv7, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #6
  tail call void @mutex_unlock(ptr noundef %7) #6
  br label %az6007_write.exit

az6007_write.exit:                                ; preds = %if.end.i, %do.end.az6007_write.exit_crit_edge
  %retval.0.i11 = phi i32 [ %call1.i, %if.end.i ], [ -11, %do.end.az6007_write.exit_crit_edge ]
  ret i32 %retval.0.i11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_get_rc_config(ptr nocapture noundef readnone %d, ptr nocapture noundef writeonly %rc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_get_rc_config.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_get_rc_config, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_get_rc_config.__UNIQUE_ID_ddebug394, ptr noundef nonnull @.str.92) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %allowed_protos = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 1
  %0 = ptrtoint ptr %allowed_protos to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 3584, ptr %allowed_protos, align 8
  %query = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 3
  %1 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @az6007_rc_query, ptr %query, align 4
  %interval = getelementptr inbounds %struct.dvb_usb_rc, ptr %rc, i32 0, i32 4
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 400, ptr %interval, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_load_firmware(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp2302 = icmp sgt i32 %num, 0
  br i1 %cmp2302, label %for.body.lr.ph, label %for.cond.preheader.err_crit_edge

for.cond.preheader.err_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %data = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 5
  br label %for.body

for.cond:                                         ; preds = %if.end170
  %inc176 = add i32 %i.1, 1
  %cmp2 = icmp slt i32 %inc176, %num
  br i1 %cmp2, label %for.cond.for.body_crit_edge, label %for.cond.err_crit_edge

for.cond.err_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0303 = phi i32 [ 0, %for.body.lr.ph ], [ %inc176, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0303
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  %.tr = trunc i16 %5 to i8
  %conv4 = shl i8 %.tr, 1
  %add = add nsw i32 %i.0303, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp5 = icmp slt i32 %add, %num
  br i1 %cmp5, label %land.lhs.true, label %for.body.if.else77_crit_edge

for.body.if.else77_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else77

land.lhs.true:                                    ; preds = %for.body
  %len8 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0303, i32 2
  %6 = ptrtoint ptr %len8 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len8, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp10 = icmp eq i16 %7, 1
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true.if.else77_crit_edge

land.lhs.true.if.else77_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else77

land.lhs.true12:                                  ; preds = %land.lhs.true
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0303, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp15.not.not = icmp eq i16 %10, 0
  br i1 %cmp15.not.not, label %land.lhs.true17, label %land.lhs.true12.if.else77_crit_edge

land.lhs.true12.if.else77_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else77

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %flags20 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %11 = ptrtoint ptr %flags20 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags20, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %land.lhs.true17.if.else77_crit_edge, label %land.lhs.true23

land.lhs.true17.if.else77_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else77

land.lhs.true23:                                  ; preds = %land.lhs.true17
  %arrayidx19 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %15)
  %cmp31 = icmp eq i16 %5, %15
  br i1 %cmp31, label %if.then33, label %land.lhs.true23.if.else77_crit_edge

land.lhs.true23.if.else77_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else77

if.then33:                                        ; preds = %land.lhs.true23
  %16 = load i32, ptr @az6007_xfer_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool34.not = icmp eq i32 %16, 0
  br i1 %tobool34.not, label %if.then33.if.end45_crit_edge, label %do.end

if.then33.if.end45_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.end:                                           ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %conv36 = zext i8 %conv4 to i32
  %len42 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %17 = ptrtoint ptr %len42 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len42, align 4
  %conv43 = zext i16 %18 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %conv36, i32 noundef 1, i32 noundef %conv43) #9
  br label %if.end45

if.end45:                                         ; preds = %do.end, %if.then33.if.end45_crit_edge
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0303, i32 3
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %conv48 = zext i8 %22 to i16
  %conv49 = zext i8 %conv4 to i16
  %or = or i16 %conv49, 256
  %len53 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %23 = ptrtoint ptr %len53 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %len53, align 4
  %conv54 = zext i16 %24 to i32
  %add55 = add nuw nsw i32 %conv54, 6
  %25 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev, align 4
  %call60 = tail call fastcc i32 @__az6007_read(ptr noundef %26, i8 noundef zeroext -71, i16 noundef zeroext %or, i16 noundef zeroext %conv48, ptr noundef %data, i32 noundef %add55)
  call void @__sanitizer_cov_trace_cmp4(i32 %call60, i32 %conv54)
  %cmp61.not = icmp slt i32 %call60, %conv54
  br i1 %cmp61.not, label %if.end45.do.end184_crit_edge, label %for.cond64.preheader

if.end45.do.end184_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end184

for.cond64.preheader:                             ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp65296.not = icmp eq i16 %24, 0
  br i1 %cmp65296.not, label %for.cond64.preheader.if.end170_crit_edge, label %for.body67.lr.ph

for.cond64.preheader.if.end170_crit_edge:         ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

for.body67.lr.ph:                                 ; preds = %for.cond64.preheader
  %buf73 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 3
  br label %for.body67

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %for.body67.lr.ph
  %j.0297 = phi i32 [ 0, %for.body67.lr.ph ], [ %inc, %for.body67.for.body67_crit_edge ]
  %add69 = add nuw nsw i32 %j.0297, 5
  %arrayidx70 = getelementptr %struct.az6007_device_state, ptr %3, i32 0, i32 5, i32 %add69
  %27 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx70, align 1
  %29 = ptrtoint ptr %buf73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf73, align 4
  %arrayidx74 = getelementptr i8, ptr %30, i32 %j.0297
  %31 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %28, ptr %arrayidx74, align 1
  %inc = add nuw nsw i32 %j.0297, 1
  %exitcond.not = icmp eq i32 %inc, %conv54
  br i1 %exitcond.not, label %for.body67.if.end170_crit_edge, label %for.body67.for.body67_crit_edge

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body67

for.body67.if.end170_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

if.else77:                                        ; preds = %land.lhs.true23.if.else77_crit_edge, %land.lhs.true17.if.else77_crit_edge, %land.lhs.true12.if.else77_crit_edge, %land.lhs.true.if.else77_crit_edge, %for.body.if.else77_crit_edge
  %flags79 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0303, i32 1
  %32 = ptrtoint ptr %flags79 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags79, align 2
  %34 = and i16 %33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool82.not = icmp eq i16 %34, 0
  %35 = load i32, ptr @az6007_xfer_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool84.not = icmp eq i32 %35, 0
  br i1 %tobool82.not, label %if.then83, label %if.else127

if.then83:                                        ; preds = %if.else77
  br i1 %tobool84.not, label %if.then83.if.end95_crit_edge, label %do.end88

if.then83.if.end95_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

do.end88:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  %conv90 = zext i8 %conv4 to i32
  %len92 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0303, i32 2
  %36 = ptrtoint ptr %len92 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %len92, align 4
  %conv93 = zext i16 %37 to i32
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %conv90, i32 noundef %conv93) #9
  br label %if.end95

if.end95:                                         ; preds = %do.end88, %if.then83.if.end95_crit_edge
  %buf97 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0303, i32 3
  %38 = ptrtoint ptr %buf97 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buf97, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %conv99 = zext i8 %41 to i16
  %conv100 = zext i8 %conv4 to i16
  %or101 = or i16 %conv100, 256
  %len104 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0303, i32 2
  %42 = ptrtoint ptr %len104 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len104, align 4
  %conv105 = zext i16 %43 to i32
  %sub = add nsw i32 %conv105, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %43)
  %cmp111300 = icmp ugt i16 %43, 1
  br i1 %cmp111300, label %if.end95.for.body113_crit_edge, label %if.end95.for.end122_crit_edge

if.end95.for.end122_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end122

if.end95.for.body113_crit_edge:                   ; preds = %if.end95
  br label %for.body113

for.body113:                                      ; preds = %for.body113.for.body113_crit_edge, %if.end95.for.body113_crit_edge
  %j.1301 = phi i32 [ %add116, %for.body113.for.body113_crit_edge ], [ 0, %if.end95.for.body113_crit_edge ]
  %44 = ptrtoint ptr %buf97 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf97, align 4
  %add116 = add nuw nsw i32 %j.1301, 1
  %arrayidx117 = getelementptr i8, ptr %45, i32 %add116
  %46 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx117, align 1
  %arrayidx119 = getelementptr %struct.az6007_device_state, ptr %3, i32 0, i32 5, i32 %j.1301
  %48 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx119, align 1
  %exitcond306.not = icmp eq i32 %add116, %sub
  br i1 %exitcond306.not, label %for.body113.for.end122_crit_edge, label %for.body113.for.body113_crit_edge

for.body113.for.body113_crit_edge:                ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body113

for.body113.for.end122_crit_edge:                 ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end122

for.end122:                                       ; preds = %for.body113.for.end122_crit_edge, %if.end95.for.end122_crit_edge
  %49 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udev, align 4
  %call126 = tail call fastcc i32 @__az6007_write(ptr noundef %50, i8 noundef zeroext -67, i16 noundef zeroext %or101, i16 noundef zeroext %conv99, ptr noundef %data, i32 noundef %sub)
  br label %if.end170

if.else127:                                       ; preds = %if.else77
  br i1 %tobool84.not, label %if.else127.if.end139_crit_edge, label %do.end132

if.else127.if.end139_crit_edge:                   ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

do.end132:                                        ; preds = %if.else127
  call void @__sanitizer_cov_trace_pc() #8
  %conv134 = zext i8 %conv4 to i32
  %len136 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0303, i32 2
  %51 = ptrtoint ptr %len136 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %len136, align 4
  %conv137 = zext i16 %52 to i32
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv134, i32 noundef %conv137) #9
  br label %if.end139

if.end139:                                        ; preds = %do.end132, %if.else127.if.end139_crit_edge
  %buf141 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0303, i32 3
  %53 = ptrtoint ptr %buf141 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf141, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %conv143 = zext i8 %56 to i16
  %conv144 = zext i8 %conv4 to i16
  %len146 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0303, i32 2
  %57 = ptrtoint ptr %len146 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %len146, align 4
  %conv147 = zext i16 %58 to i32
  %add148 = add nuw nsw i32 %conv147, 6
  %59 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %udev, align 4
  %call155 = tail call fastcc i32 @__az6007_read(ptr noundef %60, i8 noundef zeroext -71, i16 noundef zeroext %conv144, i16 noundef zeroext %conv143, ptr noundef %data, i32 noundef %add148)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp157298.not = icmp eq i16 %58, 0
  br i1 %cmp157298.not, label %if.end139.if.end170_crit_edge, label %if.end139.for.body159_crit_edge

if.end139.for.body159_crit_edge:                  ; preds = %if.end139
  br label %for.body159

if.end139.if.end170_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

for.body159:                                      ; preds = %for.body159.for.body159_crit_edge, %if.end139.for.body159_crit_edge
  %j.2299 = phi i32 [ %inc167, %for.body159.for.body159_crit_edge ], [ 0, %if.end139.for.body159_crit_edge ]
  %add161 = add nuw nsw i32 %j.2299, 5
  %arrayidx162 = getelementptr %struct.az6007_device_state, ptr %3, i32 0, i32 5, i32 %add161
  %61 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx162, align 1
  %63 = ptrtoint ptr %buf141 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buf141, align 4
  %arrayidx165 = getelementptr i8, ptr %64, i32 %j.2299
  %65 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %62, ptr %arrayidx165, align 1
  %inc167 = add nuw nsw i32 %j.2299, 1
  %exitcond305.not = icmp eq i32 %inc167, %conv147
  br i1 %exitcond305.not, label %for.body159.if.end170_crit_edge, label %for.body159.for.body159_crit_edge

for.body159.for.body159_crit_edge:                ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body159

for.body159.if.end170_crit_edge:                  ; preds = %for.body159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170

if.end170:                                        ; preds = %for.body159.if.end170_crit_edge, %if.end139.if.end170_crit_edge, %for.end122, %for.body67.if.end170_crit_edge, %for.cond64.preheader.if.end170_crit_edge
  %ret.2 = phi i32 [ %call126, %for.end122 ], [ %call155, %if.end139.if.end170_crit_edge ], [ %call60, %for.cond64.preheader.if.end170_crit_edge ], [ %call155, %for.body159.if.end170_crit_edge ], [ %call60, %for.body67.if.end170_crit_edge ]
  %i.1 = phi i32 [ %i.0303, %for.end122 ], [ %i.0303, %if.end139.if.end170_crit_edge ], [ %add, %for.cond64.preheader.if.end170_crit_edge ], [ %i.0303, %for.body159.if.end170_crit_edge ], [ %add, %for.body67.if.end170_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp171 = icmp slt i32 %ret.2, 0
  br i1 %cmp171, label %if.end170.do.end184_crit_edge, label %for.cond

if.end170.do.end184_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end184

err:                                              ; preds = %for.cond.err_crit_edge, %for.cond.preheader.err_crit_edge
  tail call void @mutex_unlock(ptr noundef %3) #6
  br label %cleanup

do.end184:                                        ; preds = %if.end170.do.end184_crit_edge, %if.end45.do.end184_crit_edge
  %ret.3.ph = phi i32 [ %ret.2, %if.end170.do.end184_crit_edge ], [ -5, %if.end45.do.end184_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %3) #6
  %call186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.61, i32 noundef %ret.3.ph) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end184, %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3.ph, %do.end184 ], [ -11, %entry.cleanup_crit_edge ], [ %num, %err ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @az6007_i2c_func(ptr nocapture noundef readnone %adapter) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drxk_gate_ctrl(ptr noundef %fe, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  %priv3 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 8
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %8 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sec_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @drxk_gate_ctrl.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@drxk_gate_ctrl, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool7.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool7.not, ptr @.str.84, ptr @.str.83
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @drxk_gate_ctrl.__UNIQUE_ID_ddebug390, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool8.not = icmp eq ptr %9, null
  %tobool9.not = icmp eq ptr %7, null
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool12.not = icmp ne i32 %enable, 0
  %gate_ctrl15 = getelementptr inbounds %struct.az6007_device_state, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %gate_ctrl15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gate_ctrl15, align 4
  %. = zext i1 %tobool12.not to i32
  %call14 = tail call i32 %11(ptr noundef %fe, i32 noundef %.) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ %call14, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_rc_query(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.az6007_read.exit_crit_edge, label %if.end.i

entry.az6007_read.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %az6007_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.az6007_device_state, ptr %1, i32 0, i32 5
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %2 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev.i, align 4
  %call1.i = tail call fastcc i32 @__az6007_read(ptr noundef %3, i8 noundef zeroext -76, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %data, i32 noundef 10) #6
  tail call void @mutex_unlock(ptr noundef %1) #6
  br label %az6007_read.exit

az6007_read.exit:                                 ; preds = %if.end.i, %entry.az6007_read.exit_crit_edge
  %arrayidx = getelementptr %struct.az6007_device_state, ptr %1, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %5)
  %cmp = icmp eq i8 %5, 68
  br i1 %cmp, label %az6007_read.exit.cleanup_crit_edge, label %if.end

az6007_read.exit.cleanup_crit_edge:               ; preds = %az6007_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %az6007_read.exit
  %arrayidx4 = getelementptr %struct.az6007_device_state, ptr %1, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %7 to i32
  %arrayidx7 = getelementptr %struct.az6007_device_state, ptr %1, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 4
  %xor84 = xor i8 %9, %7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor84)
  %cmp9 = icmp eq i8 %xor84, -1
  br i1 %cmp9, label %if.then11, label %if.else42

if.then11:                                        ; preds = %if.end
  %arrayidx16 = getelementptr %struct.az6007_device_state, ptr %1, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16, align 2
  %xor1885 = xor i8 %11, %5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor1885)
  %cmp19 = icmp eq i8 %xor1885, -1
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %conv5
  br label %if.end61

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %conv17 = zext i8 %11 to i32
  %12 = shl nuw nsw i32 %conv, 16
  %13 = shl nuw nsw i32 %conv17, 8
  %shl36 = or i32 %12, %conv5
  %or40 = or i32 %shl36, %13
  br label %if.end61

if.else42:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv8 = zext i8 %9 to i32
  %shl46 = shl nuw i32 %conv, 24
  %arrayidx48 = getelementptr %struct.az6007_device_state, ptr %1, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx48, align 2
  %conv49 = zext i8 %15 to i32
  %shl50 = shl nuw nsw i32 %conv49, 16
  %shl55 = shl nuw nsw i32 %conv5, 8
  %or51 = or i32 %shl55, %shl46
  %or56 = or i32 %or51, %conv8
  %or60 = or i32 %or56, %shl50
  br label %if.end61

if.end61:                                         ; preds = %if.else42, %if.else, %if.then21
  %code.0 = phi i32 [ %or, %if.then21 ], [ %or40, %if.else ], [ %or60, %if.else42 ]
  %proto.0 = phi i32 [ 9, %if.then21 ], [ 10, %if.else ], [ 11, %if.else42 ]
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 12
  %16 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rc_dev, align 8
  %conv62 = zext i32 %code.0 to i64
  %arrayidx64 = getelementptr %struct.az6007_device_state, ptr %1, i32 0, i32 5, i32 5
  %18 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx64, align 1
  tail call void @rc_keydown(ptr noundef %17, i32 noundef %proto.0, i64 noundef %conv62, i8 noundef zeroext %19) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %az6007_read.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @az6007_cablestar_hdci_frontend_attach(ptr noundef %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 15
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @az6007_cablestar_hdci_frontend_attach.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@az6007_cablestar_hdci_frontend_attach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !251

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @az6007_cablestar_hdci_frontend_attach.__UNIQUE_ID_ddebug404, ptr noundef nonnull @.str.76) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call10 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.77) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %cond.end, label %do.end.if.then15_crit_edge

do.end.if.then15_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

cond.end:                                         ; preds = %do.end
  %call12 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.78) #6
  %call13 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.77) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end22, label %cond.end.if.then15_crit_edge

cond.end.if.then15_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %cond.end.if.then15_crit_edge, %do.end.if.then15_crit_edge
  %cond57 = phi ptr [ %call13, %cond.end.if.then15_crit_edge ], [ %call10, %do.end.if.then15_crit_edge ]
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 10
  %call16 = tail call ptr %cond57(ptr noundef nonnull @cablestar_hdci_drxk, ptr noundef %i2c_adap) #6
  %cmp = icmp eq ptr %call16, null
  br i1 %cmp, label %if.then18, label %if.end31

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__symbol_put(ptr noundef nonnull @.str.77) #6
  br label %if.end25.thread

do.end22:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #9
  br label %if.end25.thread

if.end25.thread:                                  ; preds = %do.end22, %if.then18
  %fe59 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %4 = ptrtoint ptr %fe59 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fe59, align 8
  br label %cleanup

if.end31:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %5 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call16, ptr %fe, align 8
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call16, i32 0, i32 6
  %6 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %adap, ptr %sec_priv, align 4
  %7 = load ptr, ptr %fe, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 28
  %8 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_gate_ctrl, align 4
  %gate_ctrl = getelementptr inbounds %struct.az6007_device_state, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %gate_ctrl, align 4
  %11 = load ptr, ptr %fe, align 8
  %i2c_gate_ctrl39 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 1, i32 28
  %12 = ptrtoint ptr %i2c_gate_ctrl39 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @drxk_gate_ctrl, ptr %i2c_gate_ctrl39, align 4
  tail call fastcc void @az6007_ci_init(ptr noundef %adap)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end25.thread
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -22, %if.end25.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !123, !124, !125, !127, !128, !130, !131, !133, !134, !135, !137, !138, !140, !141, !143, !145, !147, !149, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !200, !201, !203, !205, !207, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !220, !221, !223, !225, !226, !228, !229, !230, !232, !234, !235, !237, !238, !240}
!llvm.module.flags = !{!242, !243, !244, !245, !246, !247, !248, !249}
!llvm.ident = !{!250}

!0 = !{ptr @__param_xfer_debug, !1, !"__param_xfer_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_xfer_debugtype386, !1, !"__UNIQUE_ID_xfer_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_xfer_debug387, !4, !"__UNIQUE_ID_xfer_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 26, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 28, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !6, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr389, !6, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_az6007__410_976_az6007_usb_driver_init6, !10, !"__initcall__kmod_dvb_usb_az6007__410_976_az6007_usb_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 976, i32 1}
!11 = !{ptr @__exitcall_az6007_usb_driver_exit, !10, !"__exitcall_az6007_usb_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author411, !13, !"__UNIQUE_ID_author411", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 978, i32 1}
!14 = !{ptr @__UNIQUE_ID_author412, !15, !"__UNIQUE_ID_author412", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 979, i32 1}
!16 = !{ptr @__UNIQUE_ID_description413, !17, !"__UNIQUE_ID_description413", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 980, i32 1}
!18 = !{ptr @__UNIQUE_ID_version414, !19, !"__UNIQUE_ID_version414", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 981, i32 1}
!20 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__modver_attr, !19, !"__modver_attr", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_file415, !25, !"__UNIQUE_ID_file415", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 982, i32 1}
!26 = !{ptr @__UNIQUE_ID_license416, !25, !"__UNIQUE_ID_license416", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_firmware417, !28, !"__UNIQUE_ID_firmware417", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 983, i32 1}
!29 = !{ptr @az6007_xfer_debug, !30, !"az6007_xfer_debug", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 24, i32 12}
!31 = !{ptr @__param_str_xfer_debug, !1, !"__param_str_xfer_debug", i1 false, i1 false}
!32 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!33 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!34 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!35 = !{ptr @az6007_usb_driver, !36, !"az6007_usb_driver", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 961, i32 26}
!37 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 558, i32 2}
!39 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @az6007_ci_uninit.__UNIQUE_ID_ddebug399, !38, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 582, i32 2}
!44 = !{ptr @az6007_ci_init.__UNIQUE_ID_ddebug400, !43, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!45 = !{ptr @az6007_ci_init.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 584, i32 2}
!47 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 601, i32 3}
!50 = !{ptr @az6007_ci_init._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @az6007_ci_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 606, i32 2}
!54 = !{ptr @az6007_ci_init.__UNIQUE_ID_ddebug401, !53, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 277, i32 3}
!57 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @az6007_ci_read_attribute_mem._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @az6007_ci_read_attribute_mem._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 111, i32 3}
!62 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__az6007_read._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @__az6007_read._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 116, i32 3}
!67 = !{ptr @__az6007_read._entry.14, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @__az6007_read._entry_ptr.16, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 118, i32 3}
!71 = !{ptr @__az6007_read.__UNIQUE_ID_ddebug391, !70, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!72 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 302, i32 2}
!75 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @az6007_ci_write_attribute_mem.__UNIQUE_ID_ddebug395, !74, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 314, i32 3}
!79 = !{ptr @az6007_ci_write_attribute_mem._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @az6007_ci_write_attribute_mem._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 147, i32 3}
!83 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__az6007_write._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @__az6007_write._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @__az6007_write.__UNIQUE_ID_ddebug392, !87, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 149, i32 3}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 154, i32 3}
!90 = !{ptr @__az6007_write._entry.24, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @__az6007_write._entry_ptr.26, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 165, i32 3}
!94 = !{ptr @__az6007_write._entry.27, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @__az6007_write._entry_ptr.29, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 350, i32 3}
!98 = !{ptr @az6007_ci_read_cam_control._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @az6007_ci_read_cam_control._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 354, i32 4}
!102 = !{ptr @az6007_ci_read_cam_control._entry.31, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @az6007_ci_read_cam_control._entry_ptr.33, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.34, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 357, i32 3}
!106 = !{ptr @az6007_ci_read_cam_control.__UNIQUE_ID_ddebug396, !105, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 390, i32 3}
!109 = !{ptr @az6007_ci_write_cam_control._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @az6007_ci_write_cam_control._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 450, i32 3}
!113 = !{ptr @az6007_ci_slot_reset._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @az6007_ci_slot_reset._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @az6007_ci_slot_reset._entry.37, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 462, i32 3}
!117 = !{ptr @az6007_ci_slot_reset._entry_ptr.38, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 470, i32 4}
!120 = !{ptr @az6007_ci_slot_reset.__UNIQUE_ID_ddebug397, !119, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!121 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 421, i32 3}
!123 = !{ptr @CI_CamReady._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @CI_CamReady._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 497, i32 2}
!127 = !{ptr @az6007_ci_slot_ts_enable.__UNIQUE_ID_ddebug398, !126, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!128 = !{ptr @az6007_ci_slot_ts_enable._entry, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 506, i32 3}
!130 = !{ptr @az6007_ci_slot_ts_enable._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 538, i32 3}
!133 = !{ptr @az6007_ci_poll_slot_status._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @az6007_ci_poll_slot_status._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.43, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 930, i32 3}
!137 = !{ptr @.str.44, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.45, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 932, i32 3}
!140 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.49, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 936, i32 3}
!143 = !{ptr @az6007_usb_table, !144, !"az6007_usb_table", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 929, i32 35}
!145 = !{ptr @.str.51, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 887, i32 25}
!147 = !{ptr @az6007_props, !148, !"az6007_props", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 884, i32 41}
!149 = !{ptr @.str.53, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 842, i32 2}
!151 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @az6007_identify_state.__UNIQUE_ID_ddebug407, !150, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!153 = !{ptr @.str.55, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 863, i32 2}
!155 = !{ptr @az6007_identify_state.__UNIQUE_ID_ddebug408, !154, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!156 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 878, i32 2}
!160 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @az6007_download_firmware.__UNIQUE_ID_ddebug409, !159, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!162 = !{ptr @az6007_i2c_algo, !163, !"az6007_i2c_algo", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 832, i32 29}
!164 = !{ptr @.str.60, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 770, i32 5}
!166 = !{ptr @.str.61, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @az6007_i2c_xfer._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @az6007_i2c_xfer._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 788, i32 5}
!171 = !{ptr @az6007_i2c_xfer._entry.62, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @az6007_i2c_xfer._entry_ptr.64, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.66, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 802, i32 5}
!175 = !{ptr @az6007_i2c_xfer._entry.65, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @az6007_i2c_xfer._entry_ptr.67, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.69, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 821, i32 3}
!179 = !{ptr @az6007_i2c_xfer._entry.68, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @az6007_i2c_xfer._entry_ptr.70, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.71, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 693, i32 2}
!183 = !{ptr @az6007_power_ctrl.__UNIQUE_ID_ddebug406, !182, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!184 = !{ptr @az6007_power_ctrl.__key, !185, !"__key", i1 false, i1 false}
!185 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 696, i32 3}
!186 = !{ptr @.str.72, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.73, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 621, i32 3}
!189 = !{ptr @.str.74, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @az6007_read_mac_addr.__UNIQUE_ID_ddebug402, !188, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!191 = !{ptr @.str.75, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 631, i32 2}
!193 = !{ptr @.str.76, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @az6007_frontend_attach.__UNIQUE_ID_ddebug403, !192, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!195 = !{ptr @.str.77, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 633, i32 16}
!197 = !{ptr @.str.78, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.79, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @az6007_frontend_attach._entry, !196, !"_entry", i1 false, i1 false}
!200 = !{ptr @az6007_frontend_attach._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.80, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 60, i32 20}
!203 = !{ptr @terratec_h7_drxk, !204, !"terratec_h7_drxk", i1 false, i1 false}
!204 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 50, i32 27}
!205 = !{ptr @.str.81, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 82, i32 2}
!207 = !{ptr @.str.82, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @drxk_gate_ctrl.__UNIQUE_ID_ddebug390, !206, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!209 = !{ptr @.str.83, !206, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.84, !206, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.85, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 672, i32 2}
!213 = !{ptr @.str.86, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @az6007_tuner_attach.__UNIQUE_ID_ddebug405, !212, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!215 = !{ptr @.str.87, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 677, i32 7}
!217 = !{ptr @.str.88, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.89, !216, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @az6007_tuner_attach._entry, !216, !"_entry", i1 false, i1 false}
!220 = !{ptr @az6007_tuner_attach._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @az6007_mt2063_config, !222, !"az6007_mt2063_config", i1 false, i1 false}
!222 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 95, i32 29}
!223 = !{ptr @.str.90, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 192, i32 2}
!225 = !{ptr @az6007_streaming_ctrl.__UNIQUE_ID_ddebug393, !224, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!226 = !{ptr @.str.91, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 234, i32 2}
!228 = !{ptr @.str.92, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @az6007_get_rc_config.__UNIQUE_ID_ddebug394, !227, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!230 = !{ptr @az6007_cablestar_hdci_props, !231, !"az6007_cablestar_hdci_props", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 906, i32 41}
!232 = !{ptr @.str.94, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 652, i32 2}
!234 = !{ptr @az6007_cablestar_hdci_frontend_attach.__UNIQUE_ID_ddebug404, !233, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!235 = !{ptr @az6007_cablestar_hdci_frontend_attach._entry, !236, !"_entry", i1 false, i1 false}
!236 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 654, i32 16}
!237 = !{ptr @az6007_cablestar_hdci_frontend_attach._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.95, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 73, i32 20}
!240 = !{ptr @cablestar_hdci_drxk, !241, !"cablestar_hdci_drxk", i1 false, i1 false}
!241 = !{!"../drivers/media/usb/dvb-usb-v2/az6007.c", i32 63, i32 27}
!242 = !{i32 1, !"wchar_size", i32 2}
!243 = !{i32 1, !"min_enum_size", i32 4}
!244 = !{i32 8, !"branch-target-enforcement", i32 0}
!245 = !{i32 8, !"sign-return-address", i32 0}
!246 = !{i32 8, !"sign-return-address-all", i32 0}
!247 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!248 = !{i32 7, !"uwtable", i32 1}
!249 = !{i32 7, !"frame-pointer", i32 2}
!250 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!251 = !{i64 2149010119, i64 2149010124, i64 2149010137, i64 2149010181, i64 2149010215, i64 2149010236}
