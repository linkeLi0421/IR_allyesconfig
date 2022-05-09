; ModuleID = '/llk/IR_all_yes/drivers/media/radio/si470x/radio-si470x-usb.c_pt.bc'
source_filename = "../drivers/media/radio/si470x/radio-si470x-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.si470x_device = type { %struct.v4l2_device, %struct.video_device, %struct.v4l2_ctrl_handler, i32, [16 x i16], %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, %struct.completion, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__param_str_radio_nr = internal constant [26 x i8] c"radio_si470x_usb.radio_nr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@radio_nr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype297 = internal constant [39 x i8] c"radio_si470x_usb.parmtype=radio_nr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr298 = internal constant [40 x i8] c"radio_si470x_usb.parm=radio_nr:Radio Nr\00", section ".modinfo", align 1
@__param_str_usb_timeout = internal constant [29 x i8] c"radio_si470x_usb.usb_timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@usb_timeout = internal global { i32, [28 x i8] } { i32 500, [28 x i8] zeroinitializer }, align 32
@__param_usb_timeout = internal constant %struct.kernel_param { ptr @__param_str_usb_timeout, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @usb_timeout } }, section "__param", align 4
@__UNIQUE_ID_usb_timeouttype299 = internal constant [43 x i8] c"radio_si470x_usb.parmtype=usb_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_usb_timeout300 = internal constant [58 x i8] c"radio_si470x_usb.parm=usb_timeout:USB timeout (ms): *500*\00", section ".modinfo", align 1
@__param_str_rds_buf = internal constant [25 x i8] c"radio_si470x_usb.rds_buf\00", align 1
@rds_buf = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_rds_buf = internal constant %struct.kernel_param { ptr @__param_str_rds_buf, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @rds_buf } }, section "__param", align 4
@__UNIQUE_ID_rds_buftype301 = internal constant [39 x i8] c"radio_si470x_usb.parmtype=rds_buf:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rds_buf302 = internal constant [56 x i8] c"radio_si470x_usb.parm=rds_buf:RDS buffer entries: *100*\00", section ".modinfo", align 1
@__param_str_max_rds_errors = internal constant [32 x i8] c"radio_si470x_usb.max_rds_errors\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@max_rds_errors = internal global { i16, [30 x i8] } { i16 1, [30 x i8] zeroinitializer }, align 32
@__param_max_rds_errors = internal constant %struct.kernel_param { ptr @__param_str_max_rds_errors, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @max_rds_errors } }, section "__param", align 4
@__UNIQUE_ID_max_rds_errorstype303 = internal constant [48 x i8] c"radio_si470x_usb.parmtype=max_rds_errors:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_max_rds_errors304 = internal constant [67 x i8] c"radio_si470x_usb.parm=max_rds_errors:RDS maximum block errors: *1*\00", section ".modinfo", align 1
@__initcall__kmod_radio_si470x_usb__305_847_si470x_usb_driver_init6 = internal global ptr @si470x_usb_driver_init, section ".initcall6.init", align 4
@si470x_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.3, ptr @si470x_usb_driver_probe, ptr @si470x_usb_driver_disconnect, ptr null, ptr @si470x_usb_driver_suspend, ptr @si470x_usb_driver_resume, ptr @si470x_usb_driver_resume, ptr null, ptr null, ptr @si470x_usb_driver_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_si470x_usb_driver_exit = internal global ptr @si470x_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file306 = internal constant [66 x i8] c"radio_si470x_usb.file=drivers/media/radio/si470x/radio-si470x-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [29 x i8] c"radio_si470x_usb.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [62 x i8] c"radio_si470x_usb.author=Tobias Lorenz <tobias.lorenz@gmx.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [76 x i8] c"radio_si470x_usb.description=USB radio driver for Si470x FM Radio Receivers\00", section ".modinfo", align 1
@__UNIQUE_ID_version310 = internal constant [32 x i8] c"radio_si470x_usb.version=1.0.10\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radio_si470x_usb\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.0.10\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"radio-si470x\00", [19 x i8] zeroinitializer }, align 32
@si470x_usb_driver_id_table = internal constant { [6 x %struct.usb_device_id], [48 x i8] } { [6 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 4292, i16 -32374, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1761, i16 -24235, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 7040, i16 -10496, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4293, i16 -32358, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4815, i16 28945, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@si470x_usb_driver_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&radio->lock\00", [19 x i8] zeroinitializer }, align 32
@si470x_usb_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 604, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not find interrupt in endpoint\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"si470x_usb_driver_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/radio/si470x/radio-si470x-usb.c\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si470x_usb_driver_probe._entry_ptr = internal global ptr @si470x_usb_driver_probe._entry, section ".printk_index", align 4
@si470x_usb_driver_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 613, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not allocate int_in_buffer\00", [63 x i8] zeroinitializer }, align 32
@si470x_usb_driver_probe._entry_ptr.12 = internal global ptr @si470x_usb_driver_probe._entry.10, section ".printk_index", align 4
@si470x_usb_driver_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 643, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"this is not a si470x device.\0A\00", [34 x i8] zeroinitializer }, align 32
@si470x_usb_driver_probe._entry_ptr.15 = internal global ptr @si470x_usb_driver_probe._entry.13, section ".printk_index", align 4
@si470x_usb_driver_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.7, i32 651, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't register v4l2_device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@si470x_usb_driver_probe._entry_ptr.19 = internal global ptr @si470x_usb_driver_probe._entry.16, section ".printk_index", align 4
@si470x_usb_driver_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"radio_si470x_usb:655:(&radio->hdl)->_lock\00", [54 x i8] zeroinitializer }, align 32
@si470x_ctrl_ops = external dso_local constant %struct.v4l2_ctrl_ops, align 4
@si470x_usb_driver_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.6, ptr @.str.7, i32 662, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't register control\0A\00", [37 x i8] zeroinitializer }, align 32
@si470x_usb_driver_probe._entry_ptr.23 = internal global ptr @si470x_usb_driver_probe._entry.21, section ".printk_index", align 4
@si470x_viddev_template = external dso_local local_unnamed_addr constant %struct.video_device, align 8
@si470x_usb_driver_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.6, ptr @.str.7, i32 681, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DeviceID=0x%4.4hx ChipID=0x%4.4hx\0A\00", [61 x i8] zeroinitializer }, align 32
@si470x_usb_driver_probe._entry_ptr.26 = internal global ptr @si470x_usb_driver_probe._entry.24, section ".printk_index", align 4
@si470x_usb_driver_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.6, ptr @.str.7, i32 686, ptr @.str.29, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"This driver is known to work with firmware version %u, but the device has firmware version %u.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@si470x_usb_driver_probe._entry_ptr.30 = internal global ptr @si470x_usb_driver_probe._entry.27, section ".printk_index", align 4
@si470x_usb_driver_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.6, ptr @.str.7, i32 696, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"software version %d, hardware version %d\0A\00", [54 x i8] zeroinitializer }, align 32
@si470x_usb_driver_probe._entry_ptr.33 = internal global ptr @si470x_usb_driver_probe._entry.31, section ".printk_index", align 4
@si470x_usb_driver_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.6, ptr @.str.7, i32 701, ptr @.str.29, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"This driver is known to work with hardware version %u, but the device has hardware version %u.\0A\00", [32 x i8] zeroinitializer }, align 32
@si470x_usb_driver_probe._entry_ptr.36 = internal global ptr @si470x_usb_driver_probe._entry.34, section ".printk_index", align 4
@si470x_usb_driver_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.6, ptr @.str.7, i32 708, ptr @.str.29, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"If you have some trouble using this driver, please report to V4L ML at linux-media@vger.kernel.org\0A\00", [60 x i8] zeroinitializer }, align 32
@si470x_usb_driver_probe._entry_ptr.39 = internal global ptr @si470x_usb_driver_probe._entry.37, section ".printk_index", align 4
@si470x_usb_driver_probe.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&radio->read_queue\00", [45 x i8] zeroinitializer }, align 32
@si470x_usb_driver_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.6, ptr @.str.7, i32 740, ptr @.str.18, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@si470x_usb_driver_probe._entry_ptr.44 = internal global ptr @si470x_usb_driver_probe._entry.42, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@si470x_get_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.7, i32 213, ptr @.str.29, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"si470x_get_report: usb_control_msg returned %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"si470x_get_report\00", [46 x i8] zeroinitializer }, align 32
@si470x_get_report._entry_ptr = internal global ptr @si470x_get_report._entry, section ".printk_index", align 4
@si470x_set_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.7, i32 236, ptr @.str.29, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"si470x_set_report: usb_control_msg returned %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"si470x_set_report\00", [46 x i8] zeroinitializer }, align 32
@si470x_set_report._entry_ptr = internal global ptr @si470x_set_report._entry, section ".printk_index", align 4
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Silicon Labs Si470x FM Radio\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@si470x_get_scratch_page_versions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.7, i32 342, ptr @.str.29, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"si470x_get_scratch: si470x_get_report returned %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"si470x_get_scratch_page_versions\00", [63 x i8] zeroinitializer }, align 32
@si470x_get_scratch_page_versions._entry_ptr = internal global ptr @si470x_get_scratch_page_versions._entry, section ".printk_index", align 4
@si470x_start_usb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.7, i32 541, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"submitting int urb failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si470x_start_usb\00", [47 x i8] zeroinitializer }, align 32
@si470x_start_usb._entry_ptr = internal global ptr @si470x_start_usb._entry, section ".printk_index", align 4
@si470x_int_in_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.7, i32 379, ptr @.str.29, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"non-zero urb status (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"si470x_int_in_callback\00", [41 x i8] zeroinitializer }, align 32
@si470x_int_in_callback._entry_ptr = internal global ptr @si470x_int_in_callback._entry, section ".printk_index", align 4
@si470x_int_in_callback._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.7, i32 468, ptr @.str.29, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"resubmitting urb failed (%d)\00", [35 x i8] zeroinitializer }, align 32
@si470x_int_in_callback._entry_ptr.60 = internal global ptr @si470x_int_in_callback._entry.58, section ".printk_index", align 4
@si470x_usb_driver_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.7, i32 774, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"suspending now...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"si470x_usb_driver_suspend\00", [38 x i8] zeroinitializer }, align 32
@si470x_usb_driver_suspend._entry_ptr = internal global ptr @si470x_usb_driver_suspend._entry, section ".printk_index", align 4
@si470x_usb_driver_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.7, i32 800, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"resuming now...\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"si470x_usb_driver_resume\00", [39 x i8] zeroinitializer }, align 32
@si470x_usb_driver_resume._entry_ptr = internal global ptr @si470x_usb_driver_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.65 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 55, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"usb_timeout\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 60, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant [8 x i8] c"rds_buf\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 65, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"max_rds_errors\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 70, i32 23 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"si470x_usb_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 837, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 852, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 838, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [27 x i8] c"si470x_usb_driver_id_table\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 32, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 586, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 604, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 613, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 643, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 651, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 655, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 662, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 680, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 683, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 695, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 698, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 707, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 725, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 740, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 87, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 211, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 234, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 514, i32 28 }
@___asan_gen_.225 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 912, i32 31 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 341, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 540, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 378, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 467, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 774, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.276 = private constant [49 x i8] c"../drivers/media/radio/si470x/radio-si470x-usb.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 800, i32 2 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__UNIQUE_ID_max_rds_errors304, ptr @__UNIQUE_ID_max_rds_errorstype303, ptr @__UNIQUE_ID_radio_nr298, ptr @__UNIQUE_ID_radio_nrtype297, ptr @__UNIQUE_ID_rds_buf302, ptr @__UNIQUE_ID_rds_buftype301, ptr @__UNIQUE_ID_usb_timeout300, ptr @__UNIQUE_ID_usb_timeouttype299, ptr @__UNIQUE_ID_version310, ptr @__exitcall_si470x_usb_driver_exit, ptr @__initcall__kmod_radio_si470x_usb__305_847_si470x_usb_driver_init6, ptr @__modver_attr, ptr @__param_max_rds_errors, ptr @__param_radio_nr, ptr @__param_rds_buf, ptr @__param_usb_timeout, ptr @si470x_get_report._entry, ptr @si470x_get_report._entry_ptr, ptr @si470x_get_scratch_page_versions._entry, ptr @si470x_get_scratch_page_versions._entry_ptr, ptr @si470x_int_in_callback._entry, ptr @si470x_int_in_callback._entry.58, ptr @si470x_int_in_callback._entry_ptr, ptr @si470x_int_in_callback._entry_ptr.60, ptr @si470x_set_report._entry, ptr @si470x_set_report._entry_ptr, ptr @si470x_start_usb._entry, ptr @si470x_start_usb._entry_ptr, ptr @si470x_usb_driver_exit, ptr @si470x_usb_driver_probe._entry, ptr @si470x_usb_driver_probe._entry.10, ptr @si470x_usb_driver_probe._entry.13, ptr @si470x_usb_driver_probe._entry.16, ptr @si470x_usb_driver_probe._entry.21, ptr @si470x_usb_driver_probe._entry.24, ptr @si470x_usb_driver_probe._entry.27, ptr @si470x_usb_driver_probe._entry.31, ptr @si470x_usb_driver_probe._entry.34, ptr @si470x_usb_driver_probe._entry.37, ptr @si470x_usb_driver_probe._entry.42, ptr @si470x_usb_driver_probe._entry_ptr, ptr @si470x_usb_driver_probe._entry_ptr.12, ptr @si470x_usb_driver_probe._entry_ptr.15, ptr @si470x_usb_driver_probe._entry_ptr.19, ptr @si470x_usb_driver_probe._entry_ptr.23, ptr @si470x_usb_driver_probe._entry_ptr.26, ptr @si470x_usb_driver_probe._entry_ptr.30, ptr @si470x_usb_driver_probe._entry_ptr.33, ptr @si470x_usb_driver_probe._entry_ptr.36, ptr @si470x_usb_driver_probe._entry_ptr.39, ptr @si470x_usb_driver_probe._entry_ptr.44, ptr @si470x_usb_driver_resume._entry, ptr @si470x_usb_driver_resume._entry_ptr, ptr @si470x_usb_driver_suspend._entry, ptr @si470x_usb_driver_suspend._entry_ptr, ptr @radio_nr, ptr @usb_timeout, ptr @rds_buf, ptr @max_rds_errors, ptr @si470x_usb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @si470x_usb_driver_id_table, ptr @si470x_usb_driver_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @si470x_usb_driver_probe._key, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @si470x_usb_driver_probe.__key.40, ptr @.str.41, ptr @.str.43, ptr @init_completion.__key, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_rds_errors to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_id_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_probe.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_get_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_set_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_get_scratch_page_versions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_start_usb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_int_in_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_int_in_callback._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_usb_driver_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @si470x_usb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si470x_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @si470x_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_usb_driver_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1984) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 64) #11
  %usb_buf = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 20
  %2 = ptrtoint ptr %usb_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %usb_buf, align 4
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %if.end.err_radio_crit_edge, label %if.end5

if.end.err_radio_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_radio

if.end5:                                          ; preds = %if.end
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 -128
  %usbdev = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 18
  %5 = ptrtoint ptr %usbdev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %usbdev, align 4
  %intf7 = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %intf7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %intf, ptr %intf7, align 8
  %band = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %band, align 8
  %lock = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @si470x_usb_driver_probe.__key) #8
  %completion = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 11
  %8 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #8
  %get_register = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %get_register to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @si470x_get_register, ptr %get_register, align 8
  %set_register = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 14
  %10 = ptrtoint ptr %set_register to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @si470x_set_register, ptr %set_register, align 4
  %fops_open = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 15
  %11 = ptrtoint ptr %fops_open to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @si470x_fops_open, ptr %fops_open, align 8
  %fops_release = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %fops_release to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @si470x_fops_release, ptr %fops_release, align 4
  %vidioc_querycap = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 17
  %13 = ptrtoint ptr %vidioc_querycap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @si470x_vidioc_querycap, ptr %vidioc_querycap, align 8
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %14 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp8349.not = icmp eq i8 %17, 0
  br i1 %cmp8349.not, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %endpoint10 = getelementptr inbounds %struct.usb_host_interface, ptr %15, i32 0, i32 3
  %int_in_endpoint = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0350 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %endpoint10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %endpoint10, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %19, i32 %i.0350
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %20 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bmAttributes.i.i, align 1
  %22 = and i8 %21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp.i.not.i = icmp eq i8 %22, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

usb_endpoint_is_int_in.exit:                      ; preds = %for.body
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %23 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool13.not = icmp sgt i8 %24, -1
  br i1 %tobool13.not, label %usb_endpoint_is_int_in.exit.for.inc_crit_edge, label %if.then14

usb_endpoint_is_int_in.exit.for.inc_crit_edge:    ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then14:                                        ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %int_in_endpoint to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx, ptr %int_in_endpoint, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %usb_endpoint_is_int_in.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0350, 1
  %26 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %27 to i32
  %cmp8 = icmp ult i32 %inc, %conv
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  %int_in_endpoint16 = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 22
  %28 = ptrtoint ptr %int_in_endpoint16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %int_in_endpoint16, align 4
  %tobool17.not = icmp eq ptr %29, null
  br i1 %tobool17.not, label %do.end21, label %if.end8.i

do.end21:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5) #12
  br label %err_usbbuf

if.end8.i:                                        ; preds = %for.end
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %wMaxPacketSize, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv24 = zext i16 %32 to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv24, i32 noundef 3264) #13
  %int_in_buffer = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 21
  %33 = ptrtoint ptr %int_in_buffer to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i, ptr %int_in_buffer, align 8
  %tobool27.not = icmp eq ptr %call9.i, null
  br i1 %tobool27.not, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32, ptr noundef nonnull @.str.11) #12
  br label %err_usbbuf

if.end33:                                         ; preds = %if.end8.i
  %call34 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %int_in_urb = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 23
  %34 = ptrtoint ptr %int_in_urb to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call34, ptr %int_in_urb, align 8
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %if.end33.err_intbuffer_crit_edge, label %if.end38

if.end33.err_intbuffer_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_intbuffer

if.end38:                                         ; preds = %if.end33
  %release = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @si470x_usb_release, ptr %release, align 4
  %idVendor = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 1
  %36 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %idVendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4292, i16 %37)
  %cmp40 = icmp eq i16 %37, 4292
  br i1 %cmp40, label %land.lhs.true, label %if.end38.if.end66_crit_edge

if.end38.if.end66_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end38
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %38 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %idProduct, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32374, i16 %39)
  %cmp43 = icmp eq i16 %39, -32374
  br i1 %cmp43, label %if.then45, label %land.lhs.true.if.end66_crit_edge

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then45:                                        ; preds = %land.lhs.true
  %40 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usbdev, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i = shl i32 %43, 8
  %or49 = or i32 %shl.i, -2147483520
  %44 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf, align 4
  %call51 = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or49, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 1, i16 noundef zeroext 2, ptr noundef %45, i16 noundef zeroext 3, i32 noundef 500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call51)
  %cmp52.not = icmp eq i32 %call51, 3
  br i1 %cmp52.not, label %lor.lhs.false, label %if.then45.do.end63_crit_edge

if.then45.do.end63_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

lor.lhs.false:                                    ; preds = %if.then45
  %46 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb_buf, align 4
  %arrayidx55 = getelementptr i8, ptr %47, i32 1
  %48 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %arrayidx55, align 1
  %50 = and i16 %49, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 578, i16 %50)
  %cmp58.not = icmp eq i16 %50, 578
  br i1 %cmp58.not, label %lor.lhs.false.if.end66_crit_edge, label %lor.lhs.false.do.end63_crit_edge

lor.lhs.false.do.end63_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

lor.lhs.false.if.end66_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

do.end63:                                         ; preds = %lor.lhs.false.do.end63_crit_edge, %if.then45.do.end63_crit_edge
  %dev64 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev64, ptr noundef nonnull @.str.14) #12
  br label %err_urb

if.end66:                                         ; preds = %lor.lhs.false.if.end66_crit_edge, %land.lhs.true.if.end66_crit_edge, %if.end38.if.end66_crit_edge
  %dev67 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call69 = tail call i32 @v4l2_device_register(ptr noundef %dev67, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %do.end75, label %if.end77

do.end75:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.17) #12
  br label %err_urb

if.end77:                                         ; preds = %if.end66
  %hdl = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 2
  %call78 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 2, ptr noundef nonnull @si470x_usb_driver_probe._key, ptr noundef nonnull @.str.20) #8
  %call80 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @si470x_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %call82 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @si470x_ctrl_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 15) #8
  %error = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 2, i32 9
  %51 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool84.not = icmp eq i32 %52, 0
  br i1 %tobool84.not, label %if.end92, label %if.then85

if.then85:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.22) #12
  br label %err_dev

if.end92:                                         ; preds = %if.end77
  %videodev = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 1
  %53 = call ptr @memcpy(ptr %videodev, ptr @si470x_viddev_template, i32 1352)
  %ctrl_handler = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 1, i32 9
  %54 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %lock97 = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 1, i32 26
  %55 = ptrtoint ptr %lock97 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %lock, ptr %lock97, align 8
  %v4l2_dev100 = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 1, i32 7
  %56 = ptrtoint ptr %v4l2_dev100 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i.i, ptr %v4l2_dev100, align 4
  %release102 = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 1, i32 23
  %57 = ptrtoint ptr %release102 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @video_device_release_empty, ptr %release102, align 8
  %device_caps = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 17106176, ptr %device_caps, align 8
  %driver_data.i.i = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 8
  %59 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %60 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %usb_buf, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 17, ptr %61, align 1
  %63 = load ptr, ptr %usb_buf, align 4
  %64 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %usbdev, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %shl.i.i.i = shl i32 %67, 8
  %or3.i.i = or i32 %shl.i.i.i, -2147483520
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %63, align 1
  %conv.i.i = zext i8 %69 to i16
  %70 = load i32, ptr @usb_timeout, align 4
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %65, i32 noundef %or3.i.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 2, ptr noundef %63, i16 noundef zeroext 33, i32 noundef %70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i.i331 = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i.i331, label %si470x_get_all_registers.exit.thread, label %do.end112

si470x_get_all_registers.exit.thread:             ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %intf7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %intf7, align 8
  %dev.i.i = getelementptr inbounds %struct.usb_interface, ptr %72, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.46, i32 noundef %call5.i.i) #12
  br label %err_ctrl

do.end112:                                        ; preds = %if.end92
  %73 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %usb_buf, align 4
  %arrayidx7.i = getelementptr i8, ptr %74, i32 1
  %75 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 0
  %77 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %arrayidx9.i, align 4
  %arrayidx7.1.i = getelementptr i8, ptr %74, i32 3
  %78 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %arrayidx7.1.i, align 1
  %arrayidx9.1.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %arrayidx9.1.i, align 2
  %arrayidx7.2.i = getelementptr i8, ptr %74, i32 5
  %81 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %arrayidx7.2.i, align 1
  %arrayidx9.2.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 2
  %83 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %arrayidx9.2.i, align 8
  %arrayidx7.3.i = getelementptr i8, ptr %74, i32 7
  %84 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %arrayidx7.3.i, align 1
  %arrayidx9.3.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 3
  %86 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %arrayidx9.3.i, align 2
  %arrayidx7.4.i = getelementptr i8, ptr %74, i32 9
  %87 = ptrtoint ptr %arrayidx7.4.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 2)
  %88 = load i16, ptr %arrayidx7.4.i, align 1
  %arrayidx9.4.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 4
  %89 = ptrtoint ptr %arrayidx9.4.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %arrayidx9.4.i, align 4
  %arrayidx7.5.i = getelementptr i8, ptr %74, i32 11
  %90 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %arrayidx7.5.i, align 1
  %arrayidx9.5.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 5
  %92 = ptrtoint ptr %arrayidx9.5.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %arrayidx9.5.i, align 2
  %arrayidx7.6.i = getelementptr i8, ptr %74, i32 13
  %93 = ptrtoint ptr %arrayidx7.6.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %arrayidx7.6.i, align 1
  %arrayidx9.6.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 6
  %95 = ptrtoint ptr %arrayidx9.6.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %arrayidx9.6.i, align 8
  %arrayidx7.7.i = getelementptr i8, ptr %74, i32 15
  %96 = ptrtoint ptr %arrayidx7.7.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %arrayidx7.7.i, align 1
  %arrayidx9.7.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 7
  %98 = ptrtoint ptr %arrayidx9.7.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %arrayidx9.7.i, align 2
  %arrayidx7.8.i = getelementptr i8, ptr %74, i32 17
  %99 = ptrtoint ptr %arrayidx7.8.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %arrayidx7.8.i, align 1
  %arrayidx9.8.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 8
  %101 = ptrtoint ptr %arrayidx9.8.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %100, ptr %arrayidx9.8.i, align 4
  %arrayidx7.9.i = getelementptr i8, ptr %74, i32 19
  %102 = ptrtoint ptr %arrayidx7.9.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %arrayidx7.9.i, align 1
  %arrayidx9.9.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 9
  %104 = ptrtoint ptr %arrayidx9.9.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %arrayidx9.9.i, align 2
  %arrayidx7.10.i = getelementptr i8, ptr %74, i32 21
  %105 = ptrtoint ptr %arrayidx7.10.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %arrayidx7.10.i, align 1
  %arrayidx9.10.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 10
  %107 = ptrtoint ptr %arrayidx9.10.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %arrayidx9.10.i, align 8
  %arrayidx7.11.i = getelementptr i8, ptr %74, i32 23
  %108 = ptrtoint ptr %arrayidx7.11.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %arrayidx7.11.i, align 1
  %arrayidx9.11.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 11
  %110 = ptrtoint ptr %arrayidx9.11.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %arrayidx9.11.i, align 2
  %arrayidx7.12.i = getelementptr i8, ptr %74, i32 25
  %111 = ptrtoint ptr %arrayidx7.12.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %arrayidx7.12.i, align 1
  %arrayidx9.12.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 12
  %113 = ptrtoint ptr %arrayidx9.12.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %arrayidx9.12.i, align 4
  %arrayidx7.13.i = getelementptr i8, ptr %74, i32 27
  %114 = ptrtoint ptr %arrayidx7.13.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %arrayidx7.13.i, align 1
  %arrayidx9.13.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 13
  %116 = ptrtoint ptr %arrayidx9.13.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %arrayidx9.13.i, align 2
  %arrayidx7.14.i = getelementptr i8, ptr %74, i32 29
  %117 = ptrtoint ptr %arrayidx7.14.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %arrayidx7.14.i, align 1
  %arrayidx9.14.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 14
  %119 = ptrtoint ptr %arrayidx9.14.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %118, ptr %arrayidx9.14.i, align 8
  %arrayidx7.15.i = getelementptr i8, ptr %74, i32 31
  %120 = ptrtoint ptr %arrayidx7.15.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 2)
  %121 = load i16, ptr %arrayidx7.15.i, align 1
  %arrayidx9.15.i = getelementptr %struct.si470x_device, ptr %call7.i.i, i32 0, i32 4, i32 15
  %122 = ptrtoint ptr %arrayidx9.15.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %arrayidx9.15.i, align 2
  %conv115 = zext i16 %76 to i32
  %conv118 = zext i16 %79 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev67, ptr noundef nonnull @.str.25, i32 noundef %conv115, i32 noundef %conv118) #12
  %123 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx9.1.i, align 2
  %125 = and i16 %124, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %125)
  %cmp123 = icmp ult i16 %125, 12
  br i1 %cmp123, label %do.end128, label %do.end112.if.end134_crit_edge

do.end112.if.end134_crit_edge:                    ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

do.end128:                                        ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #10
  %and122 = zext i16 %125 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev67, ptr noundef nonnull @.str.28, i32 noundef 12, i32 noundef %and122) #12
  br label %if.end134

if.end134:                                        ; preds = %do.end128, %do.end112.if.end134_crit_edge
  %call135 = tail call fastcc i32 @si470x_get_scratch_page_versions(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %if.end134.err_ctrl_crit_edge, label %do.end142

if.end134.err_ctrl_crit_edge:                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ctrl

do.end142:                                        ; preds = %if.end134
  %software_version = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 25
  %126 = ptrtoint ptr %software_version to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %software_version, align 8
  %conv144 = zext i8 %127 to i32
  %hardware_version = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 26
  %128 = ptrtoint ptr %hardware_version to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %hardware_version, align 1
  %conv145 = zext i8 %129 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev67, ptr noundef nonnull @.str.32, i32 noundef %conv144, i32 noundef %conv145) #12
  %130 = ptrtoint ptr %hardware_version to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %hardware_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp148 = icmp eq i8 %131, 0
  br i1 %cmp148, label %if.end157.thread, label %if.end157

if.end157.thread:                                 ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev67, ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef 0) #12
  br label %do.end164

if.end157:                                        ; preds = %do.end142
  br i1 %cmp123, label %if.end157.do.end164_crit_edge, label %if.end157.if.end166_crit_edge

if.end157.if.end166_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end166

if.end157.do.end164_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end164

do.end164:                                        ; preds = %if.end157.do.end164_crit_edge, %if.end157.thread
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev67, ptr noundef nonnull @.str.38) #12
  br label %if.end166

if.end166:                                        ; preds = %do.end164, %if.end157.if.end166_crit_edge
  tail call fastcc void @si470x_set_led_state(ptr noundef nonnull %call7.i.i)
  %132 = load i32, ptr @rds_buf, align 4
  %mul = mul i32 %132, 3
  %buf_size = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 8
  %133 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %mul, ptr %buf_size, align 8
  %call9.i327 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #13
  %buffer = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 7
  %134 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call9.i327, ptr %buffer, align 4
  %tobool171.not = icmp eq ptr %call9.i327, null
  br i1 %tobool171.not, label %if.end166.err_ctrl_crit_edge, label %if.end173

if.end166.err_ctrl_crit_edge:                     ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ctrl

if.end173:                                        ; preds = %if.end166
  %wr_index = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 10
  %135 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %wr_index, align 8
  %rd_index = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 9
  %136 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %rd_index, align 4
  %read_queue = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %read_queue, ptr noundef nonnull @.str.41, ptr noundef nonnull @si470x_usb_driver_probe.__key.40) #8
  %driver_data.i.i333 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %137 = ptrtoint ptr %driver_data.i.i333 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call7.i.i, ptr %driver_data.i.i333, align 4
  %call177 = tail call fastcc i32 @si470x_start_usb(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp178 = icmp slt i32 %call177, 0
  br i1 %cmp178, label %if.end173.err_buf_crit_edge, label %if.end181

if.end173.err_buf_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_buf

if.end181:                                        ; preds = %if.end173
  %call182 = tail call i32 @si470x_set_freq(ptr noundef nonnull %call7.i.i, i32 noundef 1400000) #8
  %138 = load i32, ptr @radio_nr, align 4
  %fops.i = getelementptr inbounds %struct.si470x_device, ptr %call7.i.i, i32 0, i32 1, i32 3
  %139 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %fops.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %videodev, i32 noundef 2, i32 noundef %138, i32 noundef 1, ptr noundef %142) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool185.not = icmp eq i32 %call.i, 0
  br i1 %tobool185.not, label %if.end181.cleanup_crit_edge, label %do.end189

if.end181.cleanup_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end189:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.43) #12
  %143 = ptrtoint ptr %int_in_urb to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %int_in_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %144) #8
  br label %err_buf

err_buf:                                          ; preds = %do.end189, %if.end173.err_buf_crit_edge
  %retval1.0 = phi i32 [ %call177, %if.end173.err_buf_crit_edge ], [ %call.i, %do.end189 ]
  %145 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %146) #8
  br label %err_ctrl

err_ctrl:                                         ; preds = %err_buf, %if.end166.err_ctrl_crit_edge, %if.end134.err_ctrl_crit_edge, %si470x_get_all_registers.exit.thread
  %retval1.1 = phi i32 [ %retval1.0, %err_buf ], [ -5, %if.end134.err_ctrl_crit_edge ], [ -5, %if.end166.err_ctrl_crit_edge ], [ -5, %si470x_get_all_registers.exit.thread ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  br label %err_dev

err_dev:                                          ; preds = %err_ctrl, %if.then85
  %retval1.2 = phi i32 [ %52, %if.then85 ], [ %retval1.1, %err_ctrl ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call7.i.i) #8
  br label %err_urb

err_urb:                                          ; preds = %err_dev, %do.end75, %do.end63
  %retval1.3 = phi i32 [ -19, %do.end63 ], [ %call69, %do.end75 ], [ %retval1.2, %err_dev ]
  %147 = ptrtoint ptr %int_in_urb to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %int_in_urb, align 8
  tail call void @usb_free_urb(ptr noundef %148) #8
  br label %err_intbuffer

err_intbuffer:                                    ; preds = %err_urb, %if.end33.err_intbuffer_crit_edge
  %retval1.4 = phi i32 [ %retval1.3, %err_urb ], [ -12, %if.end33.err_intbuffer_crit_edge ]
  %149 = ptrtoint ptr %int_in_buffer to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %int_in_buffer, align 8
  tail call void @kfree(ptr noundef %150) #8
  br label %err_usbbuf

err_usbbuf:                                       ; preds = %err_intbuffer, %do.end31, %do.end21
  %retval1.5 = phi i32 [ %retval1.4, %err_intbuffer ], [ -12, %do.end31 ], [ -5, %do.end21 ]
  %151 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %usb_buf, align 4
  tail call void @kfree(ptr noundef %152) #8
  br label %err_radio

err_radio:                                        ; preds = %err_usbbuf, %if.end.err_radio_crit_edge
  %retval1.6 = phi i32 [ %retval1.5, %err_usbbuf ], [ -12, %if.end.err_radio_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_radio, %if.end181.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end181.cleanup_crit_edge ], [ %retval1.6, %err_radio ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si470x_usb_driver_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  tail call void @v4l2_device_disconnect(ptr noundef %1) #8
  %videodev = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %videodev) #8
  %int_in_urb = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %int_in_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %int_in_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %3) #8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %call3 = tail call i32 @v4l2_device_put(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_usb_driver_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.61) #12
  %int_in_running = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %int_in_running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %int_in_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %int_in_running to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %int_in_running, align 4
  %int_in_urb = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %int_in_urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %int_in_urb, align 8
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_kill_urb(ptr noundef nonnull %6) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %read_queue = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %read_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %call6 = tail call i32 @si470x_stop(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_usb_driver_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.63) #12
  %call1 = tail call fastcc i32 @si470x_start_usb(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hdl = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_get_register(ptr nocapture noundef %radio, i32 noundef %regnr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %regnr to i8
  %conv = add i8 %0, 1
  %usb_buf = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 20
  %1 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb_buf, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %2, align 1
  %4 = load ptr, ptr %usb_buf, align 4
  %usbdev.i = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 18
  %5 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usbdev.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %4, align 1
  %conv.i = zext i8 %10 to i16
  %11 = load i32, ptr @usb_timeout, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or3.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext %conv.i, i16 noundef zeroext 2, ptr noundef %4, i16 noundef zeroext 3, i32 noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %si470x_get_report.exit, label %if.then

si470x_get_report.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intf.i = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 19
  %12 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf.i, align 8
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.46, i32 noundef %call5.i) #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb_buf, align 4
  %arrayidx5 = getelementptr i8, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr %struct.si470x_device, ptr %radio, i32 0, i32 4, i32 %regnr
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx7, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %si470x_get_report.exit
  %cond = phi i32 [ -22, %si470x_get_report.exit ], [ 0, %if.then ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_set_register(ptr nocapture noundef readonly %radio, i32 noundef %regnr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %regnr to i8
  %conv = add i8 %0, 1
  %usb_buf = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 20
  %1 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usb_buf, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %2, align 1
  %arrayidx2 = getelementptr %struct.si470x_device, ptr %radio, i32 0, i32 4, i32 %regnr
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx2, align 2
  %6 = load ptr, ptr %usb_buf, align 4
  %arrayidx4 = getelementptr i8, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %5, ptr %arrayidx4, align 1
  %8 = load ptr, ptr %usb_buf, align 4
  %usbdev.i = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 18
  %9 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usbdev.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i = shl i32 %12, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %8, align 1
  %conv.i = zext i8 %14 to i16
  %15 = load i32, ptr @usb_timeout, align 4
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext %conv.i, i16 noundef zeroext 2, ptr noundef %8, i16 noundef zeroext 3, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.si470x_set_report.exit_crit_edge

entry.si470x_set_report.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %si470x_set_report.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intf.i = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 19
  %16 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf.i, align 8
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.48, i32 noundef %call4.i) #12
  br label %si470x_set_report.exit

si470x_set_report.exit:                           ; preds = %do.end.i, %entry.si470x_set_report.exit_crit_edge
  %cond = phi i32 [ 0, %entry.si470x_set_report.exit_crit_edge ], [ -22, %do.end.i ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_fops_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_fh_open(ptr noundef %file) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_fops_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_fh_release(ptr noundef %file) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %capability) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %capability, ptr noundef nonnull @.str.3, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %capability, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.50, i32 noundef 32) #8
  %usbdev = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbdev, align 4
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %capability, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 1
  %call.i8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.51, ptr noundef %7, ptr noundef %devpath.i) #8
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si470x_usb_release(ptr noundef %v4l2_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %int_in_urb = getelementptr inbounds %struct.si470x_device, ptr %v4l2_dev, i32 0, i32 23
  %0 = ptrtoint ptr %int_in_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_in_urb, align 8
  tail call void @usb_free_urb(ptr noundef %1) #8
  %hdl = getelementptr inbounds %struct.si470x_device, ptr %v4l2_dev, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  %int_in_buffer = getelementptr inbounds %struct.si470x_device, ptr %v4l2_dev, i32 0, i32 21
  %2 = ptrtoint ptr %int_in_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %int_in_buffer, align 8
  tail call void @kfree(ptr noundef %3) #8
  %buffer = getelementptr inbounds %struct.si470x_device, ptr %v4l2_dev, i32 0, i32 7
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %5) #8
  %usb_buf = getelementptr inbounds %struct.si470x_device, ptr %v4l2_dev, i32 0, i32 20
  %6 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf, align 4
  tail call void @kfree(ptr noundef %7) #8
  tail call void @kfree(ptr noundef %v4l2_dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si470x_get_scratch_page_versions(ptr nocapture noundef %radio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_buf = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 20
  %0 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 20, ptr %1, align 1
  %3 = load ptr, ptr %usb_buf, align 4
  %usbdev.i = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 18
  %4 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usbdev.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 1
  %conv.i = zext i8 %9 to i16
  %10 = load i32, ptr @usb_timeout, align 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or3.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext %conv.i, i16 noundef zeroext 2, ptr noundef %3, i16 noundef zeroext 64, i32 noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intf.i = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 19
  %11 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf.i, align 8
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.46, i32 noundef %call5.i) #12
  %13 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf.i, align 8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %call5.i) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf, align 4
  %arrayidx4 = getelementptr i8, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4, align 1
  %software_version = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 25
  %19 = ptrtoint ptr %software_version to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %software_version, align 8
  %arrayidx6 = getelementptr i8, ptr %16, i32 2
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx6, align 1
  %hardware_version = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 26
  %22 = ptrtoint ptr %hardware_version to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %hardware_version, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %cond = phi i32 [ 0, %if.else ], [ -22, %do.end ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @si470x_set_led_state(ptr nocapture noundef readonly %radio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_buf = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 20
  %0 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 19, ptr %1, align 1
  %3 = load ptr, ptr %usb_buf, align 4
  %arrayidx3 = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 53, ptr %arrayidx3, align 1
  %5 = load ptr, ptr %usb_buf, align 4
  %arrayidx5 = getelementptr i8, ptr %5, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %arrayidx5, align 1
  %7 = load ptr, ptr %usb_buf, align 4
  %usbdev.i = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 18
  %8 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usbdev.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %7, align 1
  %conv.i = zext i8 %13 to i16
  %14 = load i32, ptr @usb_timeout, align 4
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext %conv.i, i16 noundef zeroext 2, ptr noundef %7, i16 noundef zeroext 3, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.si470x_set_report.exit_crit_edge

entry.si470x_set_report.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %si470x_set_report.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intf.i = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 19
  %15 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %intf.i, align 8
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.48, i32 noundef %call4.i) #12
  br label %si470x_set_report.exit

si470x_set_report.exit:                           ; preds = %do.end.i, %entry.si470x_set_report.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si470x_start_usb(ptr noundef %radio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %int_in_urb = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 23
  %0 = ptrtoint ptr %int_in_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_in_urb, align 8
  %usbdev = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 18
  %2 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usbdev, align 4
  %int_in_endpoint = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 22
  %4 = ptrtoint ptr %int_in_endpoint to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %int_in_endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 8
  %shl.i = shl i32 %9, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or3 = or i32 %or.i, 1073741952
  %int_in_buffer = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 21
  %10 = ptrtoint ptr %int_in_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %int_in_buffer, align 8
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %wMaxPacketSize, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv5 = zext i16 %14 to i32
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bInterval, align 1
  %conv7 = zext i8 %16 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or3, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %11, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv5, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 28
  %21 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @si470x_int_in_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 27
  %22 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %radio, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp.i = icmp eq i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp6.i = icmp ugt i32 %24, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %entry.usb_fill_int_urb.exit_crit_edge

entry.usb_fill_int_urb.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %25 = tail call i32 @llvm.smax.i32(i32 %conv7, i32 1) #8
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 16) #8
  %sub.i = add nsw i32 %26, -1
  %shl.i40 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %entry.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i40, %if.then.i ], [ %conv7, %entry.usb_fill_int_urb.exit_crit_edge ]
  %27 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 25
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %interval.sink.i, ptr %27, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 23
  %29 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %start_frame.i, align 4
  %int_in_running = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 24
  %30 = ptrtoint ptr %int_in_running to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %int_in_running, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %int_in_urb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %int_in_urb, align 8
  %call9 = tail call i32 @usb_submit_urb(ptr noundef %32, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %usb_fill_int_urb.exit.if.end_crit_edge, label %do.end12

usb_fill_int_urb.exit.if.end_crit_edge:           ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end12:                                         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 19
  %33 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intf, align 8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %34, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %call9) #12
  %35 = ptrtoint ptr %int_in_running to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %int_in_running, align 4
  br label %if.end

if.end:                                           ; preds = %do.end12, %usb_fill_int_urb.exit.if.end_crit_edge
  %36 = ptrtoint ptr %int_in_running to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %int_in_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool15 = icmp ne i32 %37, 0
  %status_rssi_auto_update = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 12
  %frombool = zext i1 %tobool15 to i8
  %38 = ptrtoint ptr %status_rssi_auto_update to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool, ptr %status_rssi_auto_update, align 4
  %call16 = tail call i32 @si470x_start(ptr noundef %radio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %hdl = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 2
  %call20 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge
  ret i32 %call16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si470x_set_freq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si470x_int_in_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 0, label %if.end
    i32 -2, label %entry.cleanup_crit_edge
    i32 -104, label %entry.cleanup_crit_edge228
    i32 -108, label %entry.cleanup_crit_edge229
  ]

entry.cleanup_crit_edge229:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge228:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %intf = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 8
  %dev = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %3) #12
  br label %resubmit

if.end:                                           ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %8)
  %cmp9.not = icmp eq i32 %8, 13
  br i1 %cmp9.not, label %if.end11, label %if.end.resubmit_crit_edge

if.end.resubmit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit

if.end11:                                         ; preds = %if.end
  %int_in_buffer = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %int_in_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %int_in_buffer, align 8
  %arrayidx = getelementptr i8, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %arrayidx, align 1
  %arrayidx12 = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 10
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %arrayidx12, align 4
  %14 = and i16 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool15.not = icmp eq i16 %14, 0
  br i1 %tobool15.not, label %if.end11.if.end17_crit_edge, label %if.then16

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %completion = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 11
  tail call void @complete(ptr noundef %completion) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end11.if.end17_crit_edge
  %arrayidx19 = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx19, align 4
  %17 = and i16 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool22.not = icmp eq i16 %17, 0
  br i1 %tobool22.not, label %if.end17.resubmit_crit_edge, label %for.body.preheader

if.end17.resubmit_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit

for.body.preheader:                               ; preds = %if.end17
  %18 = ptrtoint ptr %int_in_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %int_in_buffer, align 8
  %arrayidx29 = getelementptr i8, ptr %19, i32 3
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %arrayidx29, align 1
  %arrayidx34 = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 11
  %22 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx34, align 2
  %arrayidx29.1 = getelementptr i8, ptr %19, i32 5
  %23 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %arrayidx29.1, align 1
  %arrayidx34.1 = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 12
  %25 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %arrayidx34.1, align 2
  %arrayidx29.2 = getelementptr i8, ptr %19, i32 7
  %26 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %arrayidx29.2, align 1
  %arrayidx34.2 = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 13
  %28 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %arrayidx34.2, align 2
  %arrayidx29.3 = getelementptr i8, ptr %19, i32 9
  %29 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %arrayidx29.3, align 1
  %arrayidx34.3 = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 14
  %31 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %arrayidx34.3, align 2
  %arrayidx29.4 = getelementptr i8, ptr %19, i32 11
  %32 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %arrayidx29.4, align 1
  %arrayidx34.4 = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 15
  %34 = ptrtoint ptr %arrayidx34.4 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %arrayidx34.4, align 2
  %35 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx12, align 4
  %37 = and i16 %36, -30720
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %37)
  %.not = icmp eq i16 %37, -30720
  br i1 %.not, label %sw.epilog, label %for.body.preheader.resubmit_crit_edge

for.body.preheader.resubmit_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit

sw.epilog:                                        ; preds = %for.body.preheader
  %buffer = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 7
  %wr_index = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 10
  %buf_size = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 8
  %rd_index = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx12, align 4
  %40 = lshr i16 %39, 9
  %41 = and i16 %40, 3
  %42 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %rds.0 = load i16, ptr %arrayidx34.1, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %rds.0) #8
  %44 = load i16, ptr @max_rds_errors, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %44)
  %cmp97 = icmp ugt i16 %41, %44
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp106.not = icmp eq i16 %41, 0
  %spec.select = select i1 %cmp106.not, i8 0, i8 64
  %tmpbuf.sroa.6.0 = select i1 %cmp97, i8 -128, i8 %spec.select
  %45 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer, align 4
  %47 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wr_index, align 8
  %arrayidx115 = getelementptr i8, ptr %46, i32 %48
  %49 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %43, ptr %arrayidx115, align 1
  %tmpbuf.sroa.6.0.arrayidx115.sroa_idx = getelementptr inbounds i8, ptr %arrayidx115, i32 2
  %50 = ptrtoint ptr %tmpbuf.sroa.6.0.arrayidx115.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %tmpbuf.sroa.6.0, ptr %tmpbuf.sroa.6.0.arrayidx115.sroa_idx, align 1
  %51 = load i32, ptr %wr_index, align 8
  %add117 = add i32 %51, 3
  %52 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %buf_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add117, i32 %53)
  %cmp119.not = icmp ult i32 %add117, %53
  %spec.store.select = select i1 %cmp119.not, i32 %add117, i32 0
  %54 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.store.select, ptr %wr_index, align 8
  %55 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rd_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %56)
  %cmp125 = icmp eq i32 %spec.store.select, %56
  br i1 %cmp125, label %if.then127, label %sw.epilog.sw.epilog.1_crit_edge

sw.epilog.sw.epilog.1_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.1

if.then127:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %add129 = add i32 %spec.store.select, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add129, i32 %53)
  %cmp132.not = icmp ult i32 %add129, %53
  %spec.store.select225 = select i1 %cmp132.not, i32 %add129, i32 0
  %57 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %spec.store.select225, ptr %rd_index, align 4
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %if.then127, %sw.epilog.sw.epilog.1_crit_edge
  %58 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx34, align 2
  %60 = lshr i16 %59, 14
  %61 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_load2_noabort(i32 %61)
  %rds.0.1 = load i16, ptr %arrayidx34.2, align 2
  %62 = tail call i16 @llvm.bswap.i16(i16 %rds.0.1) #8
  %63 = load i16, ptr @max_rds_errors, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %63)
  %cmp97.1 = icmp ugt i16 %60, %63
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %59)
  %cmp106.not.1 = icmp ult i16 %59, 16384
  %spec.select.1 = select i1 %cmp106.not.1, i8 9, i8 73
  %tmpbuf.sroa.6.0.1 = select i1 %cmp97.1, i8 -119, i8 %spec.select.1
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer, align 4
  %66 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wr_index, align 8
  %arrayidx115.1 = getelementptr i8, ptr %65, i32 %67
  %68 = ptrtoint ptr %arrayidx115.1 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 %62, ptr %arrayidx115.1, align 1
  %tmpbuf.sroa.6.0.arrayidx115.sroa_idx.1 = getelementptr inbounds i8, ptr %arrayidx115.1, i32 2
  %69 = ptrtoint ptr %tmpbuf.sroa.6.0.arrayidx115.sroa_idx.1 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %tmpbuf.sroa.6.0.1, ptr %tmpbuf.sroa.6.0.arrayidx115.sroa_idx.1, align 1
  %70 = load i32, ptr %wr_index, align 8
  %add117.1 = add i32 %70, 3
  %71 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buf_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add117.1, i32 %72)
  %cmp119.not.1 = icmp ult i32 %add117.1, %72
  %spec.store.select.1 = select i1 %cmp119.not.1, i32 %add117.1, i32 0
  %73 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %spec.store.select.1, ptr %wr_index, align 8
  %74 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rd_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.1, i32 %75)
  %cmp125.1 = icmp eq i32 %spec.store.select.1, %75
  br i1 %cmp125.1, label %if.then127.1, label %sw.epilog.1.sw.epilog.2_crit_edge

sw.epilog.1.sw.epilog.2_crit_edge:                ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.2

if.then127.1:                                     ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %add129.1 = add i32 %spec.store.select.1, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.1, i32 %72)
  %cmp132.not.1 = icmp ult i32 %add129.1, %72
  %spec.store.select225.1 = select i1 %cmp132.not.1, i32 %add129.1, i32 0
  %76 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %spec.store.select225.1, ptr %rd_index, align 4
  br label %sw.epilog.2

sw.epilog.2:                                      ; preds = %if.then127.1, %sw.epilog.1.sw.epilog.2_crit_edge
  %77 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx34, align 2
  %79 = lshr i16 %78, 12
  %80 = and i16 %79, 3
  %81 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_load2_noabort(i32 %81)
  %rds.0.2 = load i16, ptr %arrayidx34.3, align 2
  %82 = tail call i16 @llvm.bswap.i16(i16 %rds.0.2) #8
  %83 = load i16, ptr @max_rds_errors, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %83)
  %cmp97.2 = icmp ugt i16 %80, %83
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp106.not.2 = icmp eq i16 %80, 0
  %spec.select.2 = select i1 %cmp106.not.2, i8 18, i8 82
  %tmpbuf.sroa.6.0.2 = select i1 %cmp97.2, i8 -110, i8 %spec.select.2
  %84 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buffer, align 4
  %86 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %wr_index, align 8
  %arrayidx115.2 = getelementptr i8, ptr %85, i32 %87
  %88 = ptrtoint ptr %arrayidx115.2 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %82, ptr %arrayidx115.2, align 1
  %tmpbuf.sroa.6.0.arrayidx115.sroa_idx.2 = getelementptr inbounds i8, ptr %arrayidx115.2, i32 2
  %89 = ptrtoint ptr %tmpbuf.sroa.6.0.arrayidx115.sroa_idx.2 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %tmpbuf.sroa.6.0.2, ptr %tmpbuf.sroa.6.0.arrayidx115.sroa_idx.2, align 1
  %90 = load i32, ptr %wr_index, align 8
  %add117.2 = add i32 %90, 3
  %91 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %buf_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add117.2, i32 %92)
  %cmp119.not.2 = icmp ult i32 %add117.2, %92
  %spec.store.select.2 = select i1 %cmp119.not.2, i32 %add117.2, i32 0
  %93 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %spec.store.select.2, ptr %wr_index, align 8
  %94 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rd_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.2, i32 %95)
  %cmp125.2 = icmp eq i32 %spec.store.select.2, %95
  br i1 %cmp125.2, label %if.then127.2, label %sw.epilog.2.sw.epilog.3_crit_edge

sw.epilog.2.sw.epilog.3_crit_edge:                ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.3

if.then127.2:                                     ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #10
  %add129.2 = add i32 %spec.store.select.2, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.2, i32 %92)
  %cmp132.not.2 = icmp ult i32 %add129.2, %92
  %spec.store.select225.2 = select i1 %cmp132.not.2, i32 %add129.2, i32 0
  %96 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %spec.store.select225.2, ptr %rd_index, align 4
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %if.then127.2, %sw.epilog.2.sw.epilog.3_crit_edge
  %97 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx34, align 2
  %99 = lshr i16 %98, 10
  %100 = and i16 %99, 3
  %101 = ptrtoint ptr %arrayidx34.4 to i32
  call void @__asan_load2_noabort(i32 %101)
  %rds.0.3 = load i16, ptr %arrayidx34.4, align 2
  %102 = tail call i16 @llvm.bswap.i16(i16 %rds.0.3) #8
  %103 = load i16, ptr @max_rds_errors, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %100, i16 %103)
  %cmp97.3 = icmp ugt i16 %100, %103
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %cmp106.not.3 = icmp eq i16 %100, 0
  %spec.select.3 = select i1 %cmp106.not.3, i8 27, i8 91
  %tmpbuf.sroa.6.0.3 = select i1 %cmp97.3, i8 -101, i8 %spec.select.3
  %104 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %buffer, align 4
  %106 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %wr_index, align 8
  %arrayidx115.3 = getelementptr i8, ptr %105, i32 %107
  %108 = ptrtoint ptr %arrayidx115.3 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 %102, ptr %arrayidx115.3, align 1
  %tmpbuf.sroa.6.0.arrayidx115.sroa_idx.3 = getelementptr inbounds i8, ptr %arrayidx115.3, i32 2
  %109 = ptrtoint ptr %tmpbuf.sroa.6.0.arrayidx115.sroa_idx.3 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %tmpbuf.sroa.6.0.3, ptr %tmpbuf.sroa.6.0.arrayidx115.sroa_idx.3, align 1
  %110 = load i32, ptr %wr_index, align 8
  %add117.3 = add i32 %110, 3
  %111 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %buf_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add117.3, i32 %112)
  %cmp119.not.3 = icmp ult i32 %add117.3, %112
  %spec.store.select.3 = select i1 %cmp119.not.3, i32 %add117.3, i32 0
  %113 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %spec.store.select.3, ptr %wr_index, align 8
  %114 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rd_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.3, i32 %115)
  %cmp125.3 = icmp eq i32 %spec.store.select.3, %115
  br i1 %cmp125.3, label %if.then127.3, label %sw.epilog.3.for.inc138.3_crit_edge

sw.epilog.3.for.inc138.3_crit_edge:               ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc138.3

if.then127.3:                                     ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #10
  %add129.3 = add i32 %spec.store.select.3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.3, i32 %112)
  %cmp132.not.3 = icmp ult i32 %add129.3, %112
  %spec.store.select225.3 = select i1 %cmp132.not.3, i32 %add129.3, i32 0
  %116 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %spec.store.select225.3, ptr %rd_index, align 4
  br label %for.inc138.3

for.inc138.3:                                     ; preds = %if.then127.3, %sw.epilog.3.for.inc138.3_crit_edge
  %117 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %wr_index, align 8
  %119 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rd_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp143.not = icmp eq i32 %118, %120
  br i1 %cmp143.not, label %for.inc138.3.resubmit_crit_edge, label %if.then145

for.inc138.3.resubmit_crit_edge:                  ; preds = %for.inc138.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit

if.then145:                                       ; preds = %for.inc138.3
  call void @__sanitizer_cov_trace_pc() #10
  %read_queue = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %read_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %resubmit

resubmit:                                         ; preds = %if.then145, %for.inc138.3.resubmit_crit_edge, %for.body.preheader.resubmit_crit_edge, %if.end17.resubmit_crit_edge, %if.end.resubmit_crit_edge, %do.end
  %int_in_running = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 24
  %121 = ptrtoint ptr %int_in_running to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %int_in_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool148.not = icmp eq i32 %122, 0
  br i1 %tobool148.not, label %resubmit.if.end161_crit_edge, label %land.lhs.true

resubmit.if.end161_crit_edge:                     ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

land.lhs.true:                                    ; preds = %resubmit
  %usbdev = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 18
  %123 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %usbdev, align 4
  %tobool149.not = icmp eq ptr %124, null
  br i1 %tobool149.not, label %land.lhs.true.if.end161_crit_edge, label %if.then150

land.lhs.true.if.end161_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then150:                                       ; preds = %land.lhs.true
  %int_in_urb = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 23
  %125 = ptrtoint ptr %int_in_urb to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %int_in_urb, align 8
  %call151 = tail call i32 @usb_submit_urb(ptr noundef %126, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.then150.if.end161_crit_edge, label %do.end156

if.then150.if.end161_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

do.end156:                                        ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #10
  %intf157 = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 19
  %127 = ptrtoint ptr %intf157 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %intf157, align 8
  %dev158 = getelementptr inbounds %struct.usb_interface, ptr %128, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev158, ptr noundef nonnull @.str.59, i32 noundef %call151) #12
  %129 = ptrtoint ptr %int_in_running to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %int_in_running, align 4
  br label %if.end161

if.end161:                                        ; preds = %do.end156, %if.then150.if.end161_crit_edge, %land.lhs.true.if.end161_crit_edge, %resubmit.if.end161_crit_edge
  %130 = ptrtoint ptr %int_in_running to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %int_in_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool163 = icmp ne i32 %131, 0
  %status_rssi_auto_update = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 12
  %frombool = zext i1 %tobool163 to i8
  %132 = ptrtoint ptr %status_rssi_auto_update to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %frombool, ptr %status_rssi_auto_update, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end161, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge228, %entry.cleanup_crit_edge229
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si470x_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si470x_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !26, !28, !30, !32, !33, !34, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !50, !52, !54, !55, !57, !58, !59, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__param_radio_nr, !1, !"__param_radio_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_radio_nrtype297, !1, !"__UNIQUE_ID_radio_nrtype297", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_radio_nr298, !4, !"__UNIQUE_ID_radio_nr298", i1 false, i1 false}
!4 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 57, i32 1}
!5 = !{ptr @__param_usb_timeout, !6, !"__param_usb_timeout", i1 false, i1 false}
!6 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 61, i32 1}
!7 = !{ptr @__UNIQUE_ID_usb_timeouttype299, !6, !"__UNIQUE_ID_usb_timeouttype299", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_usb_timeout300, !9, !"__UNIQUE_ID_usb_timeout300", i1 false, i1 false}
!9 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 62, i32 1}
!10 = !{ptr @__param_rds_buf, !11, !"__param_rds_buf", i1 false, i1 false}
!11 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 66, i32 1}
!12 = !{ptr @__UNIQUE_ID_rds_buftype301, !11, !"__UNIQUE_ID_rds_buftype301", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_rds_buf302, !14, !"__UNIQUE_ID_rds_buf302", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 67, i32 1}
!15 = !{ptr @__param_max_rds_errors, !16, !"__param_max_rds_errors", i1 false, i1 false}
!16 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 75, i32 1}
!17 = !{ptr @__UNIQUE_ID_max_rds_errorstype303, !16, !"__UNIQUE_ID_max_rds_errorstype303", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_max_rds_errors304, !19, !"__UNIQUE_ID_max_rds_errors304", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 76, i32 1}
!20 = !{ptr @__initcall__kmod_radio_si470x_usb__305_847_si470x_usb_driver_init6, !21, !"__initcall__kmod_radio_si470x_usb__305_847_si470x_usb_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 847, i32 1}
!22 = !{ptr @__exitcall_si470x_usb_driver_exit, !21, !"__exitcall_si470x_usb_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_file306, !24, !"__UNIQUE_ID_file306", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 849, i32 1}
!25 = !{ptr @__UNIQUE_ID_license307, !24, !"__UNIQUE_ID_license307", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_author308, !27, !"__UNIQUE_ID_author308", i1 false, i1 false}
!27 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 850, i32 1}
!28 = !{ptr @__UNIQUE_ID_description309, !29, !"__UNIQUE_ID_description309", i1 false, i1 false}
!29 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 851, i32 1}
!30 = !{ptr @__UNIQUE_ID_version310, !31, !"__UNIQUE_ID_version310", i1 false, i1 false}
!31 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 852, i32 1}
!32 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__modver_attr, !31, !"__modver_attr", i1 false, i1 false}
!36 = !{ptr @__param_str_radio_nr, !1, !"__param_str_radio_nr", i1 false, i1 false}
!37 = !{ptr @radio_nr, !38, !"radio_nr", i1 false, i1 false}
!38 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 55, i32 12}
!39 = !{ptr @__param_str_usb_timeout, !6, !"__param_str_usb_timeout", i1 false, i1 false}
!40 = !{ptr @usb_timeout, !41, !"usb_timeout", i1 false, i1 false}
!41 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 60, i32 21}
!42 = !{ptr @__param_str_rds_buf, !11, !"__param_str_rds_buf", i1 false, i1 false}
!43 = !{ptr @rds_buf, !44, !"rds_buf", i1 false, i1 false}
!44 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 65, i32 21}
!45 = !{ptr @__param_str_max_rds_errors, !16, !"__param_str_max_rds_errors", i1 false, i1 false}
!46 = !{ptr @max_rds_errors, !47, !"max_rds_errors", i1 false, i1 false}
!47 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 70, i32 23}
!48 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 838, i32 12}
!50 = !{ptr @si470x_usb_driver, !51, !"si470x_usb_driver", i1 false, i1 false}
!51 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 837, i32 26}
!52 = !{ptr @si470x_usb_driver_probe.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 586, i32 2}
!54 = !{ptr @.str.4, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.5, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 604, i32 3}
!57 = !{ptr @.str.6, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @si470x_usb_driver_probe._entry, !56, !"_entry", i1 false, i1 false}
!62 = !{ptr @si470x_usb_driver_probe._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 613, i32 3}
!65 = !{ptr @si470x_usb_driver_probe._entry.10, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @si470x_usb_driver_probe._entry_ptr.12, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 643, i32 4}
!69 = !{ptr @si470x_usb_driver_probe._entry.13, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @si470x_usb_driver_probe._entry_ptr.15, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 651, i32 3}
!73 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @si470x_usb_driver_probe._entry.16, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @si470x_usb_driver_probe._entry_ptr.19, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @si470x_usb_driver_probe._key, !77, !"_key", i1 false, i1 false}
!77 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 655, i32 2}
!78 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 662, i32 3}
!81 = !{ptr @si470x_usb_driver_probe._entry.21, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @si470x_usb_driver_probe._entry_ptr.23, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 680, i32 2}
!85 = !{ptr @si470x_usb_driver_probe._entry.24, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @si470x_usb_driver_probe._entry_ptr.26, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 683, i32 3}
!89 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @si470x_usb_driver_probe._entry.27, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @si470x_usb_driver_probe._entry_ptr.30, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 695, i32 2}
!94 = !{ptr @si470x_usb_driver_probe._entry.31, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @si470x_usb_driver_probe._entry_ptr.33, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 698, i32 3}
!98 = !{ptr @si470x_usb_driver_probe._entry.34, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @si470x_usb_driver_probe._entry_ptr.36, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 707, i32 3}
!102 = !{ptr @si470x_usb_driver_probe._entry.37, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @si470x_usb_driver_probe._entry_ptr.39, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @si470x_usb_driver_probe.__key.40, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 725, i32 2}
!106 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 740, i32 3}
!109 = !{ptr @si470x_usb_driver_probe._entry.42, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @si470x_usb_driver_probe._entry_ptr.44, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @init_completion.__key, !112, !"__key", i1 false, i1 false}
!112 = !{!"../include/linux/completion.h", i32 87, i32 2}
!113 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 211, i32 3}
!116 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @si470x_get_report._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @si470x_get_report._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 234, i32 3}
!121 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @si470x_set_report._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @si470x_set_report._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 514, i32 28}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../include/linux/usb.h", i32 912, i32 31}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 341, i32 3}
!130 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @si470x_get_scratch_page_versions._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @si470x_get_scratch_page_versions._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 540, i32 3}
!135 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @si470x_start_usb._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @si470x_start_usb._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 378, i32 4}
!140 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @si470x_int_in_callback._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @si470x_int_in_callback._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 467, i32 4}
!145 = !{ptr @si470x_int_in_callback._entry.58, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @si470x_int_in_callback._entry_ptr.60, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 774, i32 2}
!149 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @si470x_usb_driver_suspend._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @si470x_usb_driver_suspend._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 800, i32 2}
!154 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @si470x_usb_driver_resume._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @si470x_usb_driver_resume._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @si470x_usb_driver_id_table, !158, !"si470x_usb_driver_id_table", i1 false, i1 false}
!158 = !{!"../drivers/media/radio/si470x/radio-si470x-usb.c", i32 32, i32 35}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{i64 2156631994}
