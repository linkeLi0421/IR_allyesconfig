; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ati_remote.c_pt.bc'
source_filename = "../drivers/media/rc/ati_remote.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.73 = type { i8, i8, i16 }
%struct.accel_times = type { i8, i32 }
%struct.ati_receiver_type = type { ptr, ptr }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ati_remote = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, [80 x i8], [80 x i8], [80 x i8], [80 x i8], %struct.wait_queue_head, i32, i32, %struct.mutex }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>

@__param_str_channel_mask = internal constant [24 x i8] c"ati_remote.channel_mask\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@channel_mask = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_channel_mask = internal constant %struct.kernel_param { ptr @__param_str_channel_mask, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @channel_mask } }, section "__param", align 4
@__UNIQUE_ID_channel_masktype237 = internal constant [39 x i8] c"ati_remote.parmtype=channel_mask:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_channel_mask238 = internal constant [74 x i8] c"ati_remote.parm=channel_mask:Bitmask of remote control channels to ignore\00", section ".modinfo", align 1
@__param_str_debug = internal constant [17 x i8] c"ati_remote.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype239 = internal constant [30 x i8] c"ati_remote.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug240 = internal constant [66 x i8] c"ati_remote.parm=debug:Enable extra debug messages and information\00", section ".modinfo", align 1
@__param_str_repeat_filter = internal constant [25 x i8] c"ati_remote.repeat_filter\00", align 1
@repeat_filter = internal global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@__param_repeat_filter = internal constant %struct.kernel_param { ptr @__param_str_repeat_filter, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @repeat_filter } }, section "__param", align 4
@__UNIQUE_ID_repeat_filtertype241 = internal constant [38 x i8] c"ati_remote.parmtype=repeat_filter:int\00", section ".modinfo", align 1
@__UNIQUE_ID_repeat_filter242 = internal constant [68 x i8] c"ati_remote.parm=repeat_filter:Repeat filter time, default = 60 msec\00", section ".modinfo", align 1
@__param_str_repeat_delay = internal constant [24 x i8] c"ati_remote.repeat_delay\00", align 1
@repeat_delay = internal global { i32, [28 x i8] } { i32 500, [28 x i8] zeroinitializer }, align 32
@__param_repeat_delay = internal constant %struct.kernel_param { ptr @__param_str_repeat_delay, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @repeat_delay } }, section "__param", align 4
@__UNIQUE_ID_repeat_delaytype243 = internal constant [37 x i8] c"ati_remote.parmtype=repeat_delay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_repeat_delay244 = internal constant [78 x i8] c"ati_remote.parm=repeat_delay:Delay before sending repeats, default = 500 msec\00", section ".modinfo", align 1
@__param_str_mouse = internal constant [17 x i8] c"ati_remote.mouse\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@mouse = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_mouse = internal constant %struct.kernel_param { ptr @__param_str_mouse, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @mouse } }, section "__param", align 4
@__UNIQUE_ID_mousetype245 = internal constant [31 x i8] c"ati_remote.parmtype=mouse:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_mouse246 = internal constant [57 x i8] c"ati_remote.parm=mouse:Enable mouse device, default = yes\00", section ".modinfo", align 1
@__initcall__kmod_ati_remote__252_968_ati_remote_driver_init6 = internal global ptr @ati_remote_driver_init, section ".initcall6.init", align 4
@ati_remote_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ati_remote_probe, ptr @ati_remote_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ati_remote_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ati_remote_driver_exit = internal global ptr @ati_remote_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author253 = internal constant [54 x i8] c"ati_remote.author=Torrey Hoffman <thoffman@arnor.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [53 x i8] c"ati_remote.description=ATI/X10 RF USB Remote Control\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [44 x i8] c"ati_remote.file=drivers/media/rc/ati_remote\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [23 x i8] c"ati_remote.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ati_remote\00", [21 x i8] zeroinitializer }, align 32
@ati_remote_table = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3015, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @type_ati to i32) }, %struct.usb_device_id { i16 3, i16 3015, i16 3, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @type_ati to i32) }, %struct.usb_device_id { i16 3, i16 3015, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @type_ati to i32) }, %struct.usb_device_id { i16 3, i16 3015, i16 5, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @type_ati to i32) }, %struct.usb_device_id { i16 3, i16 3015, i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @type_medion to i32) }, %struct.usb_device_id { i16 3, i16 3015, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @type_firefly to i32) }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ati_remote_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Unexpected desc.bNumEndpoints\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ati_remote_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/rc/ati_remote.c\00", [34 x i8] zeroinitializer }, align 32
@ati_remote_probe._entry_ptr = internal global ptr @ati_remote_probe._entry, section ".printk_index", align 4
@ati_remote_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Unexpected endpoint_in\0A\00", [34 x i8] zeroinitializer }, align 32
@ati_remote_probe._entry_ptr.6 = internal global ptr @ati_remote_probe._entry.4, section ".printk_index", align 4
@ati_remote_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: endpoint_in message size==0? \0A\00", [59 x i8] zeroinitializer }, align 32
@ati_remote_probe._entry_ptr.9 = internal global ptr @ati_remote_probe._entry.7, section ".printk_index", align 4
@ati_remote_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Unexpected endpoint_out\0A\00", [33 x i8] zeroinitializer }, align 32
@ati_remote_probe._entry_ptr.12 = internal global ptr @ati_remote_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input1\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%s%s\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ATI/X10 RF USB Remote Control(%04x,%04x)\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s mouse\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-ati-x10\00", [21 x i8] zeroinitializer }, align 32
@ati_remote_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ati_remote->open_mutex\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@ati_remote_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 337, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: usb_submit_urb failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ati_remote_open\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ati_remote_open._entry_ptr = internal global ptr @ati_remote_open._entry, section ".printk_index", align 4
@ati_remote_initialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ati_remote->wait\00", [46 x i8] zeroinitializer }, align 32
@init1 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\01\00 \14", [28 x i8] zeroinitializer }, align 32
@init2 = internal global { [7 x i8], [25 x i8] } { [7 x i8] c"\01\00 \14   ", [25 x i8] zeroinitializer }, align 32
@ati_remote_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 800, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Initializing ati_remote hardware failed.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ati_remote_initialize\00", [42 x i8] zeroinitializer }, align 32
@ati_remote_initialize._entry_ptr = internal global ptr @ati_remote_initialize._entry, section ".printk_index", align 4
@ati_remote_irq_in.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ati_remote_irq_in\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: urb error status, unlink?\0A\00", [33 x i8] zeroinitializer }, align 32
@ati_remote_irq_in.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.3, ptr @.str.33, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Nonzero urb status %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ati_remote_irq_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.3, i32 678, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: usb_submit_urb()=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ati_remote_irq_in._entry_ptr = internal global ptr @ati_remote_irq_in._entry, section ".printk_index", align 4
@ati_remote_input_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 507, ptr @.str.37, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wrong checksum in input: %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ati_remote_input_report\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ati_remote_input_report._entry_ptr = internal global ptr @ati_remote_input_report._entry, section ".printk_index", align 4
@ati_remote_input_report._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.3, i32 517, ptr @.str.37, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Masked input from channel 0x%02x: data %02x, mask= 0x%02lx\0A\00", [36 x i8] zeroinitializer }, align 32
@ati_remote_input_report._entry_ptr.40 = internal global ptr @ati_remote_input_report._entry.38, section ".printk_index", align 4
@ati_remote_input_report._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.3, i32 529, ptr @.str.37, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"channel 0x%02x; key data %02x, scancode %02x\0A\00", [50 x i8] zeroinitializer }, align 32
@ati_remote_input_report._entry_ptr.43 = internal global ptr @ati_remote_input_report._entry.41, section ".printk_index", align 4
@ati_remote_tbl = internal constant { [15 x %struct.anon.73], [36 x i8] } { [15 x %struct.anon.73] [%struct.anon.73 { i8 3, i8 112, i16 -256 }, %struct.anon.73 { i8 3, i8 113, i16 256 }, %struct.anon.73 { i8 3, i8 114, i16 255 }, %struct.anon.73 { i8 3, i8 115, i16 1 }, %struct.anon.73 { i8 3, i8 116, i16 -1 }, %struct.anon.73 { i8 3, i8 117, i16 511 }, %struct.anon.73 { i8 3, i8 119, i16 -255 }, %struct.anon.73 { i8 3, i8 118, i16 257 }, %struct.anon.73 { i8 1, i8 120, i16 272 }, %struct.anon.73 { i8 1, i8 121, i16 272 }, %struct.anon.73 { i8 1, i8 124, i16 273 }, %struct.anon.73 { i8 1, i8 125, i16 273 }, %struct.anon.73 { i8 2, i8 122, i16 275 }, %struct.anon.73 { i8 2, i8 126, i16 276 }, %struct.anon.73 zeroinitializer], [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ati_remote_input_report.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.44, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ati_remote kind=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@ati_remote_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 314, ptr @.str.47, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Weird byte 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ati_remote_dump\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ati_remote_dump._entry_ptr = internal global ptr @ati_remote_dump._entry, section ".printk_index", align 4
@ati_remote_dump._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.46, ptr @.str.3, i32 316, ptr @.str.47, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Weird key %*ph\0A\00", [16 x i8] zeroinitializer }, align 32
@ati_remote_dump._entry_ptr.50 = internal global ptr @ati_remote_dump._entry.48, section ".printk_index", align 4
@ati_remote_dump._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.46, ptr @.str.3, i32 318, ptr @.str.47, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Weird data, len=%d %*ph ...\0A\00", [35 x i8] zeroinitializer }, align 32
@ati_remote_dump._entry_ptr.53 = internal global ptr @ati_remote_dump._entry.51, section ".printk_index", align 4
@accel = internal constant { [7 x %struct.accel_times], [40 x i8] } { [7 x %struct.accel_times] [%struct.accel_times { i8 1, i32 125 }, %struct.accel_times { i8 2, i32 250 }, %struct.accel_times { i8 4, i32 500 }, %struct.accel_times { i8 6, i32 1000 }, %struct.accel_times { i8 9, i32 1500 }, %struct.accel_times { i8 13, i32 2000 }, %struct.accel_times { i8 20, i32 0 }], [40 x i8] zeroinitializer }, align 32
@ati_remote_irq_out.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ati_remote_irq_out\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: status %d\0A\00", [17 x i8] zeroinitializer }, align 32
@ati_remote_sendpacket.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ati_remote_sendpacket\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sendpacket: usb_submit_urb failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ati_remote_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 947, ptr @.str.47, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - null device?\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ati_remote_disconnect\00", [42 x i8] zeroinitializer }, align 32
@ati_remote_disconnect._entry_ptr = internal global ptr @ati_remote_disconnect._entry, section ".printk_index", align 4
@type_ati = internal constant { %struct.ati_receiver_type, [24 x i8] } { %struct.ati_receiver_type { ptr @.str.20, ptr null }, [24 x i8] zeroinitializer }, align 32
@type_medion = internal constant { %struct.ati_receiver_type, [24 x i8] } { %struct.ati_receiver_type { ptr null, ptr @get_medion_keymap }, [24 x i8] zeroinitializer }, align 32
@type_firefly = internal constant { %struct.ati_receiver_type, [24 x i8] } { %struct.ati_receiver_type { ptr @.str.69, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"X10 Wireless Technology Inc\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"USB Receiver\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rc-medion-x10-digitainer\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"X10 WTI\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RF receiver\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rc-medion-x10-or2x\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rc-medion-x10\00", [18 x i8] zeroinitializer }, align 32
@get_medion_keymap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 176, ptr @.str.37, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Unknown Medion X10 receiver, using default ati_remote Medion keymap\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_medion_keymap\00", [46 x i8] zeroinitializer }, align 32
@get_medion_keymap._entry_ptr = internal global ptr @get_medion_keymap._entry, section ".printk_index", align 4
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rc-snapstream-firefly\00", [42 x i8] zeroinitializer }, align 32
@switch.table.ati_remote_input_report = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7, i32 6, i32 8, i32 9, i32 12, i32 0, i32 10, i32 11, i32 13], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"channel_mask\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 116, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 120, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"repeat_filter\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 124, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"repeat_delay\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 128, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"mouse\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 132, i32 13 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"ati_remote_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 961, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 968, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"ati_remote_table\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 191, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 823, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 831, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 835, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 839, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 862, i32 31 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 863, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 865, i32 61 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 866, i32 25 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 867, i32 41 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 872, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 877, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 879, i32 21 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 890, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 912, i32 31 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 336, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 772, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [6 x i8] c"init1\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 229, i32 13 }
@___asan_gen_.184 = private unnamed_addr constant [6 x i8] c"init2\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 230, i32 13 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 799, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 664, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 669, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 676, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 506, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 515, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 527, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [15 x i8] c"ati_remote_tbl\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 277, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 640, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 314, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 316, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 318, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [6 x i8] c"accel\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 437, i32 33 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 388, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 418, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 947, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant [9 x i8] c"type_ati\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 181, i32 39 }
@___asan_gen_.292 = private unnamed_addr constant [12 x i8] c"type_medion\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 184, i32 39 }
@___asan_gen_.295 = private unnamed_addr constant [13 x i8] c"type_firefly\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 187, i32 39 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 160, i32 36 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 161, i32 34 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 162, i32 12 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 164, i32 36 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 165, i32 34 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 166, i32 12 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 171, i32 12 }
@___asan_gen_.319 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 175, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.329 = private constant [33 x i8] c"../drivers/media/rc/ati_remote.c\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 188, i32 20 }
@___asan_gen_.331 = private unnamed_addr constant [37 x i8] c"switch.table.ati_remote_input_report\00", align 1
@llvm.compiler.used = appending global [124 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_channel_mask238, ptr @__UNIQUE_ID_channel_masktype237, ptr @__UNIQUE_ID_debug240, ptr @__UNIQUE_ID_debugtype239, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__UNIQUE_ID_mouse246, ptr @__UNIQUE_ID_mousetype245, ptr @__UNIQUE_ID_repeat_delay244, ptr @__UNIQUE_ID_repeat_delaytype243, ptr @__UNIQUE_ID_repeat_filter242, ptr @__UNIQUE_ID_repeat_filtertype241, ptr @__exitcall_ati_remote_driver_exit, ptr @__initcall__kmod_ati_remote__252_968_ati_remote_driver_init6, ptr @__param_channel_mask, ptr @__param_debug, ptr @__param_mouse, ptr @__param_repeat_delay, ptr @__param_repeat_filter, ptr @ati_remote_disconnect._entry, ptr @ati_remote_disconnect._entry_ptr, ptr @ati_remote_driver_exit, ptr @ati_remote_dump._entry, ptr @ati_remote_dump._entry.48, ptr @ati_remote_dump._entry.51, ptr @ati_remote_dump._entry_ptr, ptr @ati_remote_dump._entry_ptr.50, ptr @ati_remote_dump._entry_ptr.53, ptr @ati_remote_initialize._entry, ptr @ati_remote_initialize._entry_ptr, ptr @ati_remote_input_report._entry, ptr @ati_remote_input_report._entry.38, ptr @ati_remote_input_report._entry.41, ptr @ati_remote_input_report._entry_ptr, ptr @ati_remote_input_report._entry_ptr.40, ptr @ati_remote_input_report._entry_ptr.43, ptr @ati_remote_irq_in._entry, ptr @ati_remote_irq_in._entry_ptr, ptr @ati_remote_open._entry, ptr @ati_remote_open._entry_ptr, ptr @ati_remote_probe._entry, ptr @ati_remote_probe._entry.10, ptr @ati_remote_probe._entry.4, ptr @ati_remote_probe._entry.7, ptr @ati_remote_probe._entry_ptr, ptr @ati_remote_probe._entry_ptr.12, ptr @ati_remote_probe._entry_ptr.6, ptr @ati_remote_probe._entry_ptr.9, ptr @get_medion_keymap._entry, ptr @get_medion_keymap._entry_ptr, ptr @channel_mask, ptr @debug, ptr @repeat_filter, ptr @repeat_delay, ptr @mouse, ptr @ati_remote_driver, ptr @.str, ptr @ati_remote_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ati_remote_probe.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ati_remote_initialize.__key, ptr @.str.27, ptr @init1, ptr @init2, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @ati_remote_tbl, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @accel, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @type_ati, ptr @type_medion, ptr @type_firefly, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @switch.table.ati_remote_input_report], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repeat_filter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repeat_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mouse to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_initialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_irq_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_input_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_input_report._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_input_report._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_tbl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_dump._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_dump._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accel to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ati_remote_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type_ati to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type_medion to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type_firefly to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_medion_keymap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ati_remote_input_report to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ati_remote_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ati_remote_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @ati_remote_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote_probe(ptr noundef %interface, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %4 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_info, align 4
  %6 = inttoptr i32 %5 to ptr
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp.not = icmp eq i8 %8, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endpoint, align 4
  %arrayidx5 = getelementptr %struct.usb_host_endpoint, ptr %10, i32 1
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bmAttributes.i.i, align 1
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i.not.i = icmp eq i8 %13, 3
  br i1 %cmp.i.not.i, label %usb_endpoint_is_int_in.exit, label %if.end.do.end11_crit_edge

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

usb_endpoint_is_int_in.exit:                      ; preds = %if.end
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool.not = icmp sgt i8 %15, -1
  br i1 %tobool.not, label %usb_endpoint_is_int_in.exit.do.end11_crit_edge, label %if.end14

usb_endpoint_is_int_in.exit.do.end11_crit_edge:   ; preds = %usb_endpoint_is_int_in.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.end11:                                         ; preds = %usb_endpoint_is_int_in.exit.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end14:                                         ; preds = %usb_endpoint_is_int_in.exit
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 4
  %16 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %wMaxPacketSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp16 = icmp eq i16 %17, 0
  br i1 %cmp16, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %bmAttributes.i.i198 = getelementptr %struct.usb_host_endpoint, ptr %10, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %bmAttributes.i.i198 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bmAttributes.i.i198, align 1
  %20 = and i8 %19, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp.i.not.i199 = icmp eq i8 %20, 3
  br i1 %cmp.i.not.i199, label %usb_endpoint_is_int_out.exit, label %if.end24.do.end30_crit_edge

if.end24.do.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

usb_endpoint_is_int_out.exit:                     ; preds = %if.end24
  %bEndpointAddress.i.i200 = getelementptr %struct.usb_host_endpoint, ptr %10, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %bEndpointAddress.i.i200 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bEndpointAddress.i.i200, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool26.not = icmp slt i8 %22, 0
  br i1 %tobool26.not, label %usb_endpoint_is_int_out.exit.do.end30_crit_edge, label %if.end33

usb_endpoint_is_int_out.exit.do.end30_crit_edge:  ; preds = %usb_endpoint_is_int_out.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

do.end30:                                         ; preds = %usb_endpoint_is_int_out.exit.do.end30_crit_edge, %if.end24.do.end30_crit_edge
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end33:                                         ; preds = %usb_endpoint_is_int_out.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 540) #15
  %call35 = tail call ptr @rc_allocate_device(i32 noundef 0) #11
  %tobool36.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool36.not, label %if.end33.exit_free_dev_rdev_crit_edge, label %lor.lhs.false

if.end33.exit_free_dev_rdev_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_free_dev_rdev

lor.lhs.false:                                    ; preds = %if.end33
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %lor.lhs.false.exit_free_dev_rdev_crit_edge, label %if.end39

lor.lhs.false.exit_free_dev_rdev_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_free_dev_rdev

if.end39:                                         ; preds = %lor.lhs.false
  %inbuf_dma.i = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 10
  %call.i = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef 63, i32 noundef 2592, ptr noundef %inbuf_dma.i) #11
  %inbuf.i = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %inbuf.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end39.exit_free_buffers_crit_edge, label %if.end.i

if.end39.exit_free_buffers_crit_edge:             ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_free_buffers

if.end.i:                                         ; preds = %if.end39
  %outbuf_dma.i = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 11
  %call2.i = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i, i32 noundef 63, i32 noundef 2592, ptr noundef %outbuf_dma.i) #11
  %outbuf.i = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call2.i, ptr %outbuf.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.i.exit_free_buffers_crit_edge, label %if.end6.i

if.end.i.exit_free_buffers_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_free_buffers

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %irq_urb.i = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i, ptr %irq_urb.i, align 8
  %tobool9.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool9.not.i, label %if.end6.i.exit_free_buffers_crit_edge, label %ati_remote_alloc_buffers.exit

if.end6.i.exit_free_buffers_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_free_buffers

ati_remote_alloc_buffers.exit:                    ; preds = %if.end6.i
  %call12.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #11
  %out_urb.i = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %out_urb.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call12.i, ptr %out_urb.i, align 4
  %tobool14.not.i.not = icmp eq ptr %call12.i, null
  br i1 %tobool14.not.i.not, label %ati_remote_alloc_buffers.exit.exit_free_buffers_crit_edge, label %if.end43

ati_remote_alloc_buffers.exit.exit_free_buffers_crit_edge: ; preds = %ati_remote_alloc_buffers.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_free_buffers

if.end43:                                         ; preds = %ati_remote_alloc_buffers.exit
  %endpoint_in44 = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %endpoint_in44 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %10, ptr %endpoint_in44, align 8
  %endpoint_out45 = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %endpoint_out45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx5, ptr %endpoint_out45, align 4
  %udev46 = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %udev46 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %udev46, align 8
  %rdev = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call35, ptr %rdev, align 4
  %interface47 = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %interface47 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %interface, ptr %interface47, align 4
  %rc_phys = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 18
  %bus.i = getelementptr i8, ptr %1, i32 -64
  %33 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr i8, ptr %1, i32 -124
  %call.i202 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %rc_phys, i32 noundef 80, ptr noundef nonnull @.str.22, ptr noundef %36, ptr noundef %devpath.i) #11
  %mouse_phys = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 20
  %call52 = tail call i32 @strscpy(ptr noundef %mouse_phys, ptr noundef %rc_phys, i32 noundef 80) #11
  %call55 = tail call i32 @strlcat(ptr noundef %rc_phys, ptr noundef nonnull @.str.13, i32 noundef 80) #11
  %call58 = tail call i32 @strlcat(ptr noundef %mouse_phys, ptr noundef nonnull @.str.14, i32 noundef 80) #11
  %rc_name = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 17
  %manufacturer = getelementptr i8, ptr %1, i32 1108
  %37 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %manufacturer, align 4
  %tobool60.not = icmp eq ptr %38, null
  %..str.16 = select i1 %tobool60.not, ptr @.str.16, ptr %38
  br i1 %tobool60.not, label %if.end43.land.end_crit_edge, label %land.rhs

if.end43.land.end_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %product = getelementptr i8, ptr %1, i32 1104
  %39 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %product, align 8
  %tobool63.not = icmp eq ptr %40, null
  %phi.sel = select i1 %tobool63.not, ptr @.str.16, ptr @.str.17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end43.land.end_crit_edge
  %41 = phi ptr [ @.str.16, %if.end43.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %product65 = getelementptr i8, ptr %1, i32 1104
  %42 = ptrtoint ptr %product65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %product65, align 8
  %tobool66.not = icmp eq ptr %43, null
  %..str.16135 = select i1 %tobool66.not, ptr @.str.16, ptr %43
  %call71 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %rc_name, i32 noundef 80, ptr noundef nonnull @.str.15, ptr noundef %..str.16, ptr noundef nonnull %41, ptr noundef %..str.16135)
  %44 = ptrtoint ptr %rc_name to i32
  call void @__asan_load1_noabort(i32 %44)
  %char0 = load i8, ptr %rc_name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool75.not = icmp eq i8 %char0, 0
  br i1 %tobool75.not, label %if.then76, label %land.end.if.end85_crit_edge

land.end.if.end85_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then76:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %udev46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %udev46, align 8
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 16, i32 7
  %47 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %idVendor, align 8
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %conv80 = zext i16 %49 to i32
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 16, i32 8
  %50 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %idProduct, align 2
  %52 = tail call i16 @llvm.bswap.i16(i16 %51)
  %conv83 = zext i16 %52 to i32
  %call84 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %rc_name, i32 noundef 80, ptr noundef nonnull @.str.18, i32 noundef %conv80, i32 noundef %conv83)
  br label %if.end85

if.end85:                                         ; preds = %if.then76, %land.end.if.end85_crit_edge
  %mouse_name = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 19
  %call89 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %mouse_name, i32 noundef 80, ptr noundef nonnull @.str.19, ptr noundef %rc_name)
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call35, i32 0, i32 7
  %53 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.20, ptr %map_name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool90.not = icmp eq i32 %5, 0
  br i1 %tobool90.not, label %if.end85.if.end103_crit_edge, label %if.then91

if.end85.if.end103_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then91:                                        ; preds = %if.end85
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %6, align 4
  %tobool92.not = icmp eq ptr %55, null
  br i1 %tobool92.not, label %if.else, label %if.then91.if.end103.sink.split_crit_edge

if.then91.if.end103.sink.split_crit_edge:         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103.sink.split

if.else:                                          ; preds = %if.then91
  %get_default_keymap = getelementptr inbounds %struct.ati_receiver_type, ptr %6, i32 0, i32 1
  %56 = ptrtoint ptr %get_default_keymap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_default_keymap, align 4
  %tobool96.not = icmp eq ptr %57, null
  br i1 %tobool96.not, label %if.else.if.end103_crit_edge, label %if.then97

if.else.if.end103_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then97:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call99 = tail call ptr %57(ptr noundef %interface) #11
  br label %if.end103.sink.split

if.end103.sink.split:                             ; preds = %if.then97, %if.then91.if.end103.sink.split_crit_edge
  %.sink = phi ptr [ %call99, %if.then97 ], [ %55, %if.then91.if.end103.sink.split_crit_edge ]
  %58 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %.sink, ptr %map_name, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.end103.sink.split, %if.else.if.end103_crit_edge, %if.end85.if.end103_crit_edge
  %59 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rdev, align 4
  %priv.i = getelementptr inbounds %struct.rc_dev, ptr %60, i32 0, i32 24
  %61 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i, ptr %priv.i, align 4
  %allowed_protocols.i = getelementptr inbounds %struct.rc_dev, ptr %60, i32 0, i32 16
  %62 = ptrtoint ptr %allowed_protocols.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 2, ptr %allowed_protocols.i, align 8
  %driver_name.i = getelementptr inbounds %struct.rc_dev, ptr %60, i32 0, i32 6
  %63 = ptrtoint ptr %driver_name.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str, ptr %driver_name.i, align 8
  %open.i = getelementptr inbounds %struct.rc_dev, ptr %60, i32 0, i32 48
  %64 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @ati_remote_rc_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.rc_dev, ptr %60, i32 0, i32 49
  %65 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @ati_remote_rc_close, ptr %close.i, align 4
  %device_name.i = getelementptr inbounds %struct.rc_dev, ptr %60, i32 0, i32 3
  %66 = ptrtoint ptr %device_name.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %rc_name, ptr %device_name.i, align 8
  %input_phys.i = getelementptr inbounds %struct.rc_dev, ptr %60, i32 0, i32 4
  %67 = ptrtoint ptr %input_phys.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %rc_phys, ptr %input_phys.i, align 4
  %68 = ptrtoint ptr %udev46 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %udev46, align 8
  %input_id.i = getelementptr inbounds %struct.rc_dev, ptr %60, i32 0, i32 5
  %70 = ptrtoint ptr %input_id.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 3, ptr %input_id.i, align 2
  %idVendor.i.i = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 16, i32 7
  %71 = ptrtoint ptr %idVendor.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %idVendor.i.i, align 8
  %73 = tail call i16 @llvm.bswap.i16(i16 %72) #11
  %vendor.i.i = getelementptr inbounds %struct.rc_dev, ptr %60, i32 0, i32 5, i32 1
  %74 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %vendor.i.i, align 2
  %idProduct.i.i = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 16, i32 8
  %75 = ptrtoint ptr %idProduct.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %idProduct.i.i, align 2
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #11
  %product.i.i = getelementptr inbounds %struct.rc_dev, ptr %60, i32 0, i32 5, i32 2
  %78 = ptrtoint ptr %product.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %product.i.i, align 2
  %bcdDevice.i.i = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 16, i32 9
  %79 = ptrtoint ptr %bcdDevice.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %bcdDevice.i.i, align 4
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #11
  %version.i.i = getelementptr inbounds %struct.rc_dev, ptr %60, i32 0, i32 5, i32 3
  %82 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %version.i.i, align 2
  %83 = ptrtoint ptr %interface47 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %interface47, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %84, i32 0, i32 7
  %parent.i203 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 1
  %85 = ptrtoint ptr %parent.i203 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %dev.i, ptr %parent.i203, align 8
  %open_mutex = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 24
  tail call void @__mutex_init(ptr noundef %open_mutex, ptr noundef nonnull @.str.21, ptr noundef nonnull @ati_remote_probe.__key) #11
  %86 = ptrtoint ptr %udev46 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %udev46, align 8
  %wait.i = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 21
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @ati_remote_initialize.__key) #11
  %88 = ptrtoint ptr %endpoint_in44 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %endpoint_in44, align 8
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bEndpointAddress.i, align 1
  %conv.i = zext i8 %91 to i32
  %92 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %87, align 8
  %shl.i.i = shl i32 %93, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or2.i = or i32 %or.i.i, 1073741952
  %94 = lshr i32 %or.i.i, 15
  %and.i.i = and i32 %94, 15
  %arrayidx57.i.i = getelementptr %struct.usb_device, ptr %87, i32 0, i32 21, i32 %and.i.i
  %95 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %ep.0.i.i = load ptr, ptr %arrayidx57.i.i, align 4
  %tobool59.not.i.i = icmp eq ptr %ep.0.i.i, null
  br i1 %tobool59.not.i.i, label %if.end103.usb_maxpacket.exit.thread.i_crit_edge, label %usb_maxpacket.exit.i

if.end103.usb_maxpacket.exit.thread.i_crit_edge:  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_maxpacket.exit.thread.i

usb_maxpacket.exit.i:                             ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i.i, i32 0, i32 4
  %96 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %98 = and i16 %97, -249
  %99 = tail call i16 @llvm.bswap.i16(i16 %98) #11
  %100 = tail call i16 @llvm.umin.i16(i16 %99, i16 63) #11
  %spec.select.i = zext i16 %100 to i32
  br label %usb_maxpacket.exit.thread.i

usb_maxpacket.exit.thread.i:                      ; preds = %usb_maxpacket.exit.i, %if.end103.usb_maxpacket.exit.thread.i_crit_edge
  %101 = phi i32 [ 0, %if.end103.usb_maxpacket.exit.thread.i_crit_edge ], [ %spec.select.i, %usb_maxpacket.exit.i ]
  %102 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %irq_urb.i, align 8
  %104 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %inbuf.i, align 8
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %89, i32 0, i32 5
  %106 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bInterval.i, align 1
  %conv7.i = zext i8 %107 to i32
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %103, i32 0, i32 8
  %108 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %87, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %103, i32 0, i32 10
  %109 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or2.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %103, i32 0, i32 14
  %110 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %105, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %103, i32 0, i32 19
  %111 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %101, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %103, i32 0, i32 28
  %112 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @ati_remote_irq_in, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %103, i32 0, i32 27
  %113 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call7.i.i, ptr %context4.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %87, i32 0, i32 4
  %114 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %115)
  %cmp.i.i = icmp eq i32 %115, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %115)
  %cmp6.i.i = icmp ugt i32 %115, 4
  %or.cond.i.i = or i1 %cmp.i.i, %cmp6.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %usb_maxpacket.exit.thread.i.usb_fill_int_urb.exit.i_crit_edge

usb_maxpacket.exit.thread.i.usb_fill_int_urb.exit.i_crit_edge: ; preds = %usb_maxpacket.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit.i

if.then.i.i:                                      ; preds = %usb_maxpacket.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  %116 = tail call i32 @llvm.smax.i32(i32 %conv7.i, i32 1) #11
  %117 = tail call i32 @llvm.umin.i32(i32 %116, i32 16) #11
  %sub.i.i = add nsw i32 %117, -1
  %shl.i79.i = shl nuw nsw i32 1, %sub.i.i
  br label %usb_fill_int_urb.exit.i

usb_fill_int_urb.exit.i:                          ; preds = %if.then.i.i, %usb_maxpacket.exit.thread.i.usb_fill_int_urb.exit.i_crit_edge
  %interval.sink.i.i = phi i32 [ %shl.i79.i, %if.then.i.i ], [ %conv7.i, %usb_maxpacket.exit.thread.i.usb_fill_int_urb.exit.i_crit_edge ]
  %118 = getelementptr inbounds %struct.urb, ptr %103, i32 0, i32 25
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %interval.sink.i.i, ptr %118, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %103, i32 0, i32 23
  %120 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %start_frame.i.i, align 4
  %121 = ptrtoint ptr %inbuf_dma.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %inbuf_dma.i, align 8
  %123 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %irq_urb.i, align 8
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %124, i32 0, i32 15
  %125 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %122, ptr %transfer_dma.i, align 4
  %126 = load ptr, ptr %irq_urb.i, align 8
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %126, i32 0, i32 13
  %127 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %transfer_flags.i, align 4
  %or10.i = or i32 %128, 4
  store i32 %or10.i, ptr %transfer_flags.i, align 4
  %129 = ptrtoint ptr %endpoint_out45 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %endpoint_out45, align 4
  %bEndpointAddress11.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %bEndpointAddress11.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %bEndpointAddress11.i, align 1
  %conv12.i = zext i8 %132 to i32
  %133 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %87, align 8
  %shl.i80.i = shl i32 %134, 8
  %shl1.i81.i = shl nuw nsw i32 %conv12.i, 15
  %or.i82.i = or i32 %shl.i80.i, %shl1.i81.i
  %or14.i = or i32 %or.i82.i, 1073741824
  %135 = lshr i32 %or.i82.i, 15
  %and.i83.i = and i32 %135, 15
  %arrayidx.i.i = getelementptr %struct.usb_device, ptr %87, i32 0, i32 22, i32 %and.i83.i
  %136 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %ep.0.i86.i = load ptr, ptr %arrayidx.i.i, align 4
  %tobool59.not.i87.i = icmp eq ptr %ep.0.i86.i, null
  br i1 %tobool59.not.i87.i, label %usb_fill_int_urb.exit.i.usb_maxpacket.exit91.thread.i_crit_edge, label %usb_maxpacket.exit91.i

usb_fill_int_urb.exit.i.usb_maxpacket.exit91.thread.i_crit_edge: ; preds = %usb_fill_int_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_maxpacket.exit91.thread.i

usb_maxpacket.exit91.i:                           ; preds = %usb_fill_int_urb.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %wMaxPacketSize.i.i88.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i86.i, i32 0, i32 4
  %137 = ptrtoint ptr %wMaxPacketSize.i.i88.i to i32
  call void @__asan_loadN_noabort(i32 %137, i32 2)
  %138 = load i16, ptr %wMaxPacketSize.i.i88.i, align 1
  %139 = and i16 %138, -249
  %140 = tail call i16 @llvm.bswap.i16(i16 %139) #11
  %141 = tail call i16 @llvm.umin.i16(i16 %140, i16 63) #11
  %spec.select115.i = zext i16 %141 to i32
  br label %usb_maxpacket.exit91.thread.i

usb_maxpacket.exit91.thread.i:                    ; preds = %usb_maxpacket.exit91.i, %usb_fill_int_urb.exit.i.usb_maxpacket.exit91.thread.i_crit_edge
  %142 = phi i32 [ 0, %usb_fill_int_urb.exit.i.usb_maxpacket.exit91.thread.i_crit_edge ], [ %spec.select115.i, %usb_maxpacket.exit91.i ]
  %143 = ptrtoint ptr %out_urb.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %out_urb.i, align 4
  %145 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %outbuf.i, align 4
  %bInterval28.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %130, i32 0, i32 5
  %147 = ptrtoint ptr %bInterval28.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %bInterval28.i, align 1
  %conv29.i = zext i8 %148 to i32
  %dev1.i92.i = getelementptr inbounds %struct.urb, ptr %144, i32 0, i32 8
  %149 = ptrtoint ptr %dev1.i92.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %87, ptr %dev1.i92.i, align 4
  %pipe2.i93.i = getelementptr inbounds %struct.urb, ptr %144, i32 0, i32 10
  %150 = ptrtoint ptr %pipe2.i93.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or14.i, ptr %pipe2.i93.i, align 4
  %transfer_buffer3.i94.i = getelementptr inbounds %struct.urb, ptr %144, i32 0, i32 14
  %151 = ptrtoint ptr %transfer_buffer3.i94.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %146, ptr %transfer_buffer3.i94.i, align 4
  %transfer_buffer_length.i95.i = getelementptr inbounds %struct.urb, ptr %144, i32 0, i32 19
  %152 = ptrtoint ptr %transfer_buffer_length.i95.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %142, ptr %transfer_buffer_length.i95.i, align 4
  %complete.i96.i = getelementptr inbounds %struct.urb, ptr %144, i32 0, i32 28
  %153 = ptrtoint ptr %complete.i96.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @ati_remote_irq_out, ptr %complete.i96.i, align 4
  %context4.i97.i = getelementptr inbounds %struct.urb, ptr %144, i32 0, i32 27
  %154 = ptrtoint ptr %context4.i97.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call7.i.i, ptr %context4.i97.i, align 4
  %155 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %156)
  %cmp.i99.i = icmp eq i32 %156, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %156)
  %cmp6.i100.i = icmp ugt i32 %156, 4
  %or.cond.i101.i = or i1 %cmp.i99.i, %cmp6.i100.i
  br i1 %or.cond.i101.i, label %if.then.i104.i, label %usb_maxpacket.exit91.thread.i.usb_fill_int_urb.exit108.i_crit_edge

usb_maxpacket.exit91.thread.i.usb_fill_int_urb.exit108.i_crit_edge: ; preds = %usb_maxpacket.exit91.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %usb_fill_int_urb.exit108.i

if.then.i104.i:                                   ; preds = %usb_maxpacket.exit91.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  %157 = tail call i32 @llvm.smax.i32(i32 %conv29.i, i32 1) #11
  %158 = tail call i32 @llvm.umin.i32(i32 %157, i32 16) #11
  %sub.i102.i = add nsw i32 %158, -1
  %shl.i103.i = shl nuw nsw i32 1, %sub.i102.i
  br label %usb_fill_int_urb.exit108.i

usb_fill_int_urb.exit108.i:                       ; preds = %if.then.i104.i, %usb_maxpacket.exit91.thread.i.usb_fill_int_urb.exit108.i_crit_edge
  %interval.sink.i105.i = phi i32 [ %shl.i103.i, %if.then.i104.i ], [ %conv29.i, %usb_maxpacket.exit91.thread.i.usb_fill_int_urb.exit108.i_crit_edge ]
  %159 = getelementptr inbounds %struct.urb, ptr %144, i32 0, i32 25
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %interval.sink.i105.i, ptr %159, align 4
  %start_frame.i106.i = getelementptr inbounds %struct.urb, ptr %144, i32 0, i32 23
  %161 = ptrtoint ptr %start_frame.i106.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 -1, ptr %start_frame.i106.i, align 4
  %162 = ptrtoint ptr %outbuf_dma.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %outbuf_dma.i, align 4
  %164 = ptrtoint ptr %out_urb.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %out_urb.i, align 4
  %transfer_dma31.i = getelementptr inbounds %struct.urb, ptr %165, i32 0, i32 15
  %166 = ptrtoint ptr %transfer_dma31.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %163, ptr %transfer_dma31.i, align 4
  %167 = load ptr, ptr %out_urb.i, align 4
  %transfer_flags33.i = getelementptr inbounds %struct.urb, ptr %167, i32 0, i32 13
  %168 = ptrtoint ptr %transfer_flags33.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %transfer_flags33.i, align 4
  %or34.i = or i32 %169, 4
  store i32 %or34.i, ptr %transfer_flags33.i, align 4
  %call35.i = tail call fastcc i32 @ati_remote_sendpacket(ptr noundef nonnull %call7.i.i, i16 noundef zeroext -32764, ptr noundef nonnull @init1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %lor.lhs.false.i, label %usb_fill_int_urb.exit108.i.ati_remote_initialize.exit_crit_edge

usb_fill_int_urb.exit108.i.ati_remote_initialize.exit_crit_edge: ; preds = %usb_fill_int_urb.exit108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ati_remote_initialize.exit

lor.lhs.false.i:                                  ; preds = %usb_fill_int_urb.exit108.i
  %call37.i = tail call fastcc i32 @ati_remote_sendpacket(ptr noundef nonnull %call7.i.i, i16 noundef zeroext -32761, ptr noundef nonnull @init2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end110, label %lor.lhs.false.i.ati_remote_initialize.exit_crit_edge

lor.lhs.false.i.ati_remote_initialize.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ati_remote_initialize.exit

ati_remote_initialize.exit:                       ; preds = %lor.lhs.false.i.ati_remote_initialize.exit_crit_edge, %usb_fill_int_urb.exit108.i.ati_remote_initialize.exit_crit_edge
  %170 = ptrtoint ptr %interface47 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %interface47, align 4
  %dev.i211 = getelementptr inbounds %struct.usb_interface, ptr %171, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i211, ptr noundef nonnull @.str.28) #14
  br label %exit_kill_urbs

if.end110:                                        ; preds = %lor.lhs.false.i
  %172 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %rdev, align 4
  %call112 = tail call i32 @rc_register_device(ptr noundef %173) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.end110.exit_kill_urbs_crit_edge

if.end110.exit_kill_urbs_crit_edge:               ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_kill_urbs

if.end115:                                        ; preds = %if.end110
  %174 = load i8, ptr @mouse, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool116.not = icmp eq i8 %174, 0
  br i1 %tobool116.not, label %if.end115.if.end126_crit_edge, label %if.then117

if.end115.if.end126_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.then117:                                       ; preds = %if.end115
  %call118 = tail call ptr @input_allocate_device() #11
  %tobool119.not = icmp eq ptr %call118, null
  br i1 %tobool119.not, label %if.then117.exit_unregister_device_crit_edge, label %if.end121

if.then117.exit_unregister_device_crit_edge:      ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_unregister_device

if.end121:                                        ; preds = %if.then117
  %175 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call118, ptr %call7.i.i, align 8
  tail call fastcc void @ati_remote_input_init(ptr noundef nonnull %call7.i.i)
  %call122 = tail call i32 @input_register_device(ptr noundef nonnull %call118) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end121.if.end126_crit_edge, label %exit_free_input_device

if.end121.if.end126_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.end126:                                        ; preds = %if.end121.if.end126_crit_edge, %if.end115.if.end126_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %176 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

exit_free_input_device:                           ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_free_device(ptr noundef nonnull %call118) #11
  br label %exit_unregister_device

exit_unregister_device:                           ; preds = %exit_free_input_device, %if.then117.exit_unregister_device_crit_edge
  %err.0 = phi i32 [ %call122, %exit_free_input_device ], [ -12, %if.then117.exit_unregister_device_crit_edge ]
  tail call void @rc_unregister_device(ptr noundef nonnull %call35) #11
  br label %exit_kill_urbs

exit_kill_urbs:                                   ; preds = %exit_unregister_device, %if.end110.exit_kill_urbs_crit_edge, %ati_remote_initialize.exit
  %rc_dev.0 = phi ptr [ %call35, %ati_remote_initialize.exit ], [ %call35, %if.end110.exit_kill_urbs_crit_edge ], [ null, %exit_unregister_device ]
  %err.1 = phi i32 [ -5, %ati_remote_initialize.exit ], [ %call112, %if.end110.exit_kill_urbs_crit_edge ], [ %err.0, %exit_unregister_device ]
  %177 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %irq_urb.i, align 8
  tail call void @usb_kill_urb(ptr noundef %178) #11
  %179 = ptrtoint ptr %out_urb.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %out_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %180) #11
  br label %exit_free_buffers

exit_free_buffers:                                ; preds = %exit_kill_urbs, %ati_remote_alloc_buffers.exit.exit_free_buffers_crit_edge, %if.end6.i.exit_free_buffers_crit_edge, %if.end.i.exit_free_buffers_crit_edge, %if.end39.exit_free_buffers_crit_edge
  %rc_dev.1 = phi ptr [ %call35, %ati_remote_alloc_buffers.exit.exit_free_buffers_crit_edge ], [ %rc_dev.0, %exit_kill_urbs ], [ %call35, %if.end39.exit_free_buffers_crit_edge ], [ %call35, %if.end.i.exit_free_buffers_crit_edge ], [ %call35, %if.end6.i.exit_free_buffers_crit_edge ]
  %err.2 = phi i32 [ -12, %ati_remote_alloc_buffers.exit.exit_free_buffers_crit_edge ], [ %err.1, %exit_kill_urbs ], [ -12, %if.end39.exit_free_buffers_crit_edge ], [ -12, %if.end.i.exit_free_buffers_crit_edge ], [ -12, %if.end6.i.exit_free_buffers_crit_edge ]
  %irq_urb.i213 = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 4
  %181 = ptrtoint ptr %irq_urb.i213 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %irq_urb.i213, align 8
  tail call void @usb_free_urb(ptr noundef %182) #11
  %out_urb.i214 = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 5
  %183 = ptrtoint ptr %out_urb.i214 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %out_urb.i214, align 4
  tail call void @usb_free_urb(ptr noundef %184) #11
  %udev.i215 = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 2
  %185 = ptrtoint ptr %udev.i215 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %udev.i215, align 8
  %187 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %inbuf.i, align 8
  %189 = ptrtoint ptr %inbuf_dma.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %inbuf_dma.i, align 8
  tail call void @usb_free_coherent(ptr noundef %186, i32 noundef 63, ptr noundef %188, i32 noundef %190) #11
  %191 = ptrtoint ptr %udev.i215 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %udev.i215, align 8
  %outbuf.i218 = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 9
  %193 = ptrtoint ptr %outbuf.i218 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %outbuf.i218, align 4
  %outbuf_dma.i219 = getelementptr inbounds %struct.ati_remote, ptr %call7.i.i, i32 0, i32 11
  %195 = ptrtoint ptr %outbuf_dma.i219 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %outbuf_dma.i219, align 4
  tail call void @usb_free_coherent(ptr noundef %192, i32 noundef 63, ptr noundef %194, i32 noundef %196) #11
  br label %exit_free_dev_rdev

exit_free_dev_rdev:                               ; preds = %exit_free_buffers, %lor.lhs.false.exit_free_dev_rdev_crit_edge, %if.end33.exit_free_dev_rdev_crit_edge
  %rc_dev.2 = phi ptr [ %rc_dev.1, %exit_free_buffers ], [ null, %lor.lhs.false.exit_free_dev_rdev_crit_edge ], [ %call35, %if.end33.exit_free_dev_rdev_crit_edge ]
  %err.3 = phi i32 [ %err.2, %exit_free_buffers ], [ -12, %lor.lhs.false.exit_free_dev_rdev_crit_edge ], [ -12, %if.end33.exit_free_dev_rdev_crit_edge ]
  tail call void @rc_free_device(ptr noundef %rc_dev.2) #11
  tail call void @kfree(ptr noundef %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %exit_free_dev_rdev, %if.end126, %do.end30, %do.end21, %do.end11, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end21 ], [ %err.3, %exit_free_dev_rdev ], [ 0, %if.end126 ], [ -19, %do.end30 ], [ -19, %do.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ati_remote_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_urb = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #11
  %out_urb = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_unregister_device(ptr noundef nonnull %7) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %rdev = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 4
  tail call void @rc_unregister_device(ptr noundef %9) #11
  %10 = ptrtoint ptr %irq_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_urb, align 4
  tail call void @usb_free_urb(ptr noundef %11) #11
  %12 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %out_urb, align 4
  tail call void @usb_free_urb(ptr noundef %13) #11
  %udev.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev.i, align 4
  %inbuf.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %inbuf.i, align 4
  %inbuf_dma.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %inbuf_dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inbuf_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %15, i32 noundef 63, ptr noundef %17, i32 noundef %19) #11
  %20 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev.i, align 4
  %outbuf.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %outbuf.i, align 4
  %outbuf_dma.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %outbuf_dma.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %outbuf_dma.i, align 4
  tail call void @usb_free_coherent(ptr noundef %21, i32 noundef 63, ptr noundef %23, i32 noundef %25) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ati_remote_input_init(ptr noundef %ati_remote) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ati_remote to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ati_remote, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6, ptr %evbit, align 8
  %keybit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 6
  %arrayidx2 = getelementptr %struct.input_dev, ptr %1, i32 0, i32 6, i32 8
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1769472, ptr %arrayidx2, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %relbit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %relbit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %arrayidx4 = getelementptr [15 x %struct.anon.73], ptr @ati_remote_tbl, i32 0, i32 %i.0
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 2
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %for.cond.for.inc_crit_edge [
    i8 0, label %for.end
    i8 1, label %for.cond.if.then_crit_edge
    i8 2, label %for.cond.if.then_crit_edge41
  ]

for.cond.if.then_crit_edge41:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.cond.if.then_crit_edge, %for.cond.if.then_crit_edge41
  %code = getelementptr [15 x %struct.anon.73], ptr @ati_remote_tbl, i32 0, i32 %i.0, i32 2
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %code, align 2
  %conv17 = zext i16 %9 to i32
  %rem.i = and i32 %conv17, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv17, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %11
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.cond.for.inc_crit_edge
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ati_remote, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 31
  %13 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ati_remote_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 32
  %14 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ati_remote_input_close, ptr %close, align 4
  %mouse_name = getelementptr inbounds %struct.ati_remote, ptr %ati_remote, i32 0, i32 19
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mouse_name, ptr %1, align 8
  %mouse_phys = getelementptr inbounds %struct.ati_remote, ptr %ati_remote, i32 0, i32 20
  %phys = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mouse_phys, ptr %phys, align 4
  %udev = getelementptr inbounds %struct.ati_remote, ptr %ati_remote, i32 0, i32 2
  %17 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 3, ptr %id, align 2
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 16, i32 7
  %20 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %idVendor.i, align 8
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #11
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %vendor.i, align 2
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 16, i32 8
  %24 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %idProduct.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #11
  %product.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %product.i, align 2
  %bcdDevice.i = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 16, i32 9
  %28 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %bcdDevice.i, align 4
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #11
  %version.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %version.i, align 2
  %interface = getelementptr inbounds %struct.ati_remote, ptr %ati_remote, i32 0, i32 3
  %32 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %33, i32 0, i32 7
  %parent = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, i32 1
  %34 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev, ptr %parent, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote_rc_open(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %open_mutex.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %open_mutex.i, i32 noundef 0) #11
  %users.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ati_remote_open.exit_crit_edge

entry.ati_remote_open.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ati_remote_open.exit

if.end.i:                                         ; preds = %entry
  %udev.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev.i, align 4
  %irq_urb.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_urb.i, align 4
  %dev.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %dev.i, align 4
  %9 = load ptr, ptr %irq_urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %9, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.ati_remote_open.exit_crit_edge, label %do.end.i

if.end.i.ati_remote_open.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ati_remote_open.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %interface.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interface.i, align 4
  %dev3.i = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #14
  br label %ati_remote_open.exit

ati_remote_open.exit:                             ; preds = %do.end.i, %if.end.i.ati_remote_open.exit_crit_edge, %entry.ati_remote_open.exit_crit_edge
  %err.0.i = phi i32 [ 0, %entry.ati_remote_open.exit_crit_edge ], [ -5, %do.end.i ], [ 0, %if.end.i.ati_remote_open.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_mutex.i) #11
  ret i32 %err.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ati_remote_rc_close(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %open_mutex.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %open_mutex.i, i32 noundef 0) #11
  %users.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users.i, align 4
  %dec.i = add i32 %3, -1
  store i32 %dec.i, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.ati_remote_close.exit_crit_edge

entry.ati_remote_close.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ati_remote_close.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %irq_urb.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #11
  br label %ati_remote_close.exit

ati_remote_close.exit:                            ; preds = %if.then.i, %entry.ati_remote_close.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ati_remote_irq_in(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %3, label %do.body4 [
    i32 0, label %sw.bb
    i32 -104, label %entry.do.body_crit_edge
    i32 -2, label %entry.do.body_crit_edge45
    i32 -108, label %entry.do.body_crit_edge46
  ]

entry.do.body_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ati_remote_input_report(ptr noundef %urb)
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge45, %entry.do.body_crit_edge46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote_irq_in.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote_irq_in, %if.then)) #11
          to label %cleanup [label %if.then], !srcloc !211

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %interface = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ati_remote_irq_in.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #11
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote_irq_in.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote_irq_in, %if.then16)) #11
          to label %sw.epilog [label %if.then16], !srcloc !211

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %interface17 = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %interface17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interface17, align 4
  %dev18 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ati_remote_irq_in.__UNIQUE_ID_ddebug251, ptr noundef %dev18, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef %10) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then16, %do.body4, %sw.bb
  %call23 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %sw.epilog.cleanup_crit_edge, label %do.end28

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end28:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %interface29 = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %interface29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interface29, align 4
  %dev30 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31, i32 noundef %call23) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %sw.epilog.cleanup_crit_edge, %if.then, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ati_remote_irq_out(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote_irq_out.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote_irq_out, %if.then4)) #11
          to label %cleanup [label %if.then4], !srcloc !211

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %interface = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interface, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ati_remote_irq_out.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef %7) #11
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %send_flags = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %send_flags, align 4
  %or = or i32 %9, 2
  store i32 %or, ptr %send_flags, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !212
  tail call void @arm_heavy_mb() #11
  %wait = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 21
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ati_remote_sendpacket(ptr noundef %ati_remote, i16 noundef zeroext %cmd, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %out_urb = getelementptr inbounds %struct.ati_remote, ptr %ati_remote, i32 0, i32 5
  %0 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %out_urb, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1
  %4 = and i16 %cmd, 255
  %conv3 = zext i16 %4 to i32
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %conv3)
  %6 = load ptr, ptr %out_urb, align 4
  %transfer_buffer7 = getelementptr inbounds %struct.urb, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %transfer_buffer7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transfer_buffer7, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %8, align 1
  %add = add nuw nsw i32 %conv3, 1
  %10 = load ptr, ptr %out_urb, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %transfer_buffer_length, align 4
  %udev = getelementptr inbounds %struct.ati_remote, ptr %ati_remote, i32 0, i32 2
  %12 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev, align 4
  %14 = load ptr, ptr %out_urb, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %dev, align 4
  %send_flags = getelementptr inbounds %struct.ati_remote, ptr %ati_remote, i32 0, i32 22
  %16 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %send_flags, align 4
  %17 = load ptr, ptr %out_urb, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %17, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end21, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote_sendpacket.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote_sendpacket, %if.then19)) #11
          to label %cleanup87 [label %if.then19], !srcloc !211

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %interface = getelementptr inbounds %struct.ati_remote, ptr %ati_remote, i32 0, i32 3
  %18 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interface, align 4
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ati_remote_sendpacket.__UNIQUE_ID_ddebug248, ptr noundef %dev20, ptr noundef nonnull @.str.57, i32 noundef %call) #11
  br label %cleanup87

if.end21:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 426) #11
  %20 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %out_urb, align 4
  %status = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %23)
  %cmp.not = icmp eq i32 %23, -115
  br i1 %cmp.not, label %lor.rhs, label %if.end21.if.end84_crit_edge

if.end21.if.end84_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

lor.rhs:                                          ; preds = %if.end21
  %24 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %send_flags, align 4
  %and31 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then48, label %lor.rhs.if.end84_crit_edge

lor.rhs.if.end84_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then48:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %26 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %wait = getelementptr inbounds %struct.ati_remote, ptr %ati_remote, i32 0, i32 21
  %call50123 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %27 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %out_urb, align 4
  %status53124 = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %status53124 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status53124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %30)
  %cmp54.not125 = icmp eq i32 %30, -115
  br i1 %cmp54.not125, label %if.then48.lor.end60_crit_edge, label %if.then48.for.end_crit_edge

if.then48.for.end_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then48.lor.end60_crit_edge:                    ; preds = %if.then48
  br label %lor.end60

lor.end60:                                        ; preds = %cleanup.lor.end60_crit_edge, %if.then48.lor.end60_crit_edge
  %__ret49.0126 = phi i32 [ %call81, %cleanup.lor.end60_crit_edge ], [ 100, %if.then48.lor.end60_crit_edge ]
  %31 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %send_flags, align 4
  %and58 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59 = icmp ne i32 %and58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret49.0126)
  %tobool73.not = icmp eq i32 %__ret49.0126, 0
  %or.cond = select i1 %tobool59, i1 true, i1 %tobool73.not
  br i1 %or.cond, label %lor.end60.for.end_crit_edge, label %cleanup

lor.end60.for.end_crit_edge:                      ; preds = %lor.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup:                                          ; preds = %lor.end60
  %call81 = call i32 @schedule_timeout(i32 noundef %__ret49.0126) #11
  %call50 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %33 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %out_urb, align 4
  %status53 = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %status53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status53, align 4
  %cmp54.not = icmp eq i32 %36, -115
  br i1 %cmp54.not, label %cleanup.lor.end60_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup.lor.end60_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end60

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.end60.for.end_crit_edge, %if.then48.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end84

if.end84:                                         ; preds = %for.end, %lor.rhs.if.end84_crit_edge, %if.end21.if.end84_crit_edge
  %37 = ptrtoint ptr %out_urb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %out_urb, align 4
  call void @usb_kill_urb(ptr noundef %38) #11
  br label %cleanup87

cleanup87:                                        ; preds = %if.end84, %if.then19, %do.body
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ati_remote_input_report(ptr nocapture noundef readonly %urb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %inbuf = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %inbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inbuf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.not = icmp eq i32 %7, 4
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %9)
  %cmp1.not = icmp eq i8 %9, 20
  br i1 %cmp1.not, label %lor.lhs.false3, label %lor.lhs.false.if.then.thread_crit_edge

lor.lhs.false.if.then.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.thread

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr i8, ptr %3, i32 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr i8, ptr %3, i32 2
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %13 to i32
  %arrayidx8 = getelementptr i8, ptr %3, i32 3
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %15 to i32
  %add = add i8 %13, -43
  %add10 = add i8 %add, %15
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %add10)
  %cmp13.not = icmp eq i8 %11, %add10
  %and = and i32 %conv9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp18.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp13.not, i1 %cmp18.not, i1 false
  br i1 %or.cond, label %if.end41, label %lor.lhs.false3.if.then.thread_crit_edge

lor.lhs.false3.if.then.thread_crit_edge:          ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.thread

if.then.thread:                                   ; preds = %lor.lhs.false3.if.then.thread_crit_edge, %lor.lhs.false.if.then.thread_crit_edge
  %dev20334 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %16 = ptrtoint ptr %dev20334 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev20334, align 4
  %dev21335 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev21335, ptr noundef nonnull @.str.49, i32 noundef 4, ptr noundef %3) #14
  br label %cleanup238

if.then:                                          ; preds = %entry
  %dev20 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %18 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev20, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cond = icmp eq i32 %7, 1
  br i1 %cond, label %if.then.i333, label %do.end17.i

if.then.i333:                                     ; preds = %if.then
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %21, label %do.end.i [
    i8 -1, label %if.then.i333.cleanup238_crit_edge
    i8 0, label %if.then.i333.cleanup238_crit_edge371
  ]

if.then.i333.cleanup238_crit_edge371:             ; preds = %if.then.i333
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup238

if.then.i333.cleanup238_crit_edge:                ; preds = %if.then.i333
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup238

do.end.i:                                         ; preds = %if.then.i333
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev21, ptr noundef nonnull @.str.45, i32 noundef %conv.i) #14
  br label %cleanup238

do.end17.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev21, ptr noundef nonnull @.str.52, i32 noundef %7, i32 noundef 6, ptr noundef %3) #14
  br label %cleanup238

if.end41:                                         ; preds = %lor.lhs.false3
  %23 = lshr i32 %conv9, 4
  %24 = load i32, ptr @channel_mask, align 4
  %shl = shl nuw nsw i32 2, %23
  %and46 = and i32 %24, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end62, label %do.body49

do.body49:                                        ; preds = %if.end41
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool50.not = icmp eq i32 %25, 0
  br i1 %tobool50.not, label %do.body49.cleanup238_crit_edge, label %do.end54

do.body49.cleanup238_crit_edge:                   ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup238

do.end54:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #13
  %interface55 = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %interface55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %interface55, align 4
  %dev56 = getelementptr inbounds %struct.usb_interface, ptr %27, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev56, ptr noundef nonnull @.str.39, i32 noundef %23, i32 noundef %conv7, i32 noundef %24) #14
  br label %cleanup238

if.end62:                                         ; preds = %if.end41
  %and65 = and i8 %13, 127
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool68.not = icmp eq i32 %28, 0
  br i1 %tobool68.not, label %if.end62.do.end80_crit_edge, label %do.end72

if.end62.do.end80_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = zext i8 %and65 to i32
  br label %do.end80

do.end72:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  %interface73 = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %interface73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interface73, align 4
  %dev74 = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 7
  %conv77 = zext i8 %and65 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev74, ptr noundef nonnull @.str.42, i32 noundef %23, i32 noundef %conv7, i32 noundef %conv77) #14
  br label %do.end80

do.end80:                                         ; preds = %do.end72, %if.end62.do.end80_crit_edge
  %conv81.pre-phi = phi i32 [ %.pre, %if.end62.do.end80_crit_edge ], [ %conv77, %do.end72 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %and65)
  %cmp82 = icmp ugt i8 %and65, 111
  br i1 %cmp82, label %if.then84, label %do.end80.if.then127_crit_edge

do.end80.if.then127_crit_edge:                    ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then127

if.then84:                                        ; preds = %do.end80
  %rdev = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rdev, align 4
  %and86 = and i32 %conv81.pre-phi, 120
  %33 = zext i32 %and86 to i64
  %call = tail call i32 @rc_g_keycode_from_table(ptr noundef %32, i64 noundef %33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp88 = icmp eq i32 %call, 0
  br i1 %cmp88, label %for.body.preheader, label %if.then84.if.then127_crit_edge

if.then84.if.then127_crit_edge:                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then127

for.body.preheader:                               ; preds = %if.then84
  %trunc = trunc i8 %13 to i7
  %switch.tableidx = add i7 %trunc, 16
  %34 = sext i7 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %34)
  %35 = icmp ult i7 %switch.tableidx, 15
  br i1 %35, label %switch.hole_check, label %for.body.preheader.if.then127_crit_edge

for.body.preheader.if.then127_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then127

switch.hole_check:                                ; preds = %for.body.preheader
  %switch.maskindex = zext i7 %switch.tableidx to i16
  %switch.shifted = lshr i16 30719, %switch.maskindex
  %36 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %switch.lobit.not = icmp eq i16 %36, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then127_crit_edge, label %switch.lookup

switch.hole_check.if.then127_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then127

switch.lookup:                                    ; preds = %switch.hole_check
  %37 = sext i7 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.ati_remote_input_report, i32 0, i32 %37
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx107 = getelementptr [15 x %struct.anon.73], ptr @ati_remote_tbl, i32 0, i32 %switch.load
  %39 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx107, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp110 = icmp eq i8 %40, 1
  br i1 %cmp110, label %if.then112, label %lor.lhs.false121

if.then112:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  %code = getelementptr [15 x %struct.anon.73], ptr @ati_remote_tbl, i32 0, i32 %switch.load, i32 2
  %41 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %code, align 2
  %conv114 = zext i16 %42 to i32
  %43 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx6, align 1
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  %47 = zext i8 %46 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %conv114, i32 noundef %47) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %old_jiffies = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 13
  %49 = ptrtoint ptr %old_jiffies to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %old_jiffies, align 4
  br label %if.end235

lor.lhs.false121:                                 ; preds = %switch.lookup
  %50 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx107, align 2
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %51, label %do.body216 [
    i8 2, label %lor.lhs.false121.if.then127_crit_edge
    i8 3, label %if.then193
  ]

lor.lhs.false121.if.then127_crit_edge:            ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then127

if.then127:                                       ; preds = %lor.lhs.false121.if.then127_crit_edge, %switch.hole_check.if.then127_crit_edge, %for.body.preheader.if.then127_crit_edge, %if.then84.if.then127_crit_edge, %do.end80.if.then127_crit_edge
  %wheel_keycode.0342349 = phi i32 [ 0, %lor.lhs.false121.if.then127_crit_edge ], [ 0, %do.end80.if.then127_crit_edge ], [ %call, %if.then84.if.then127_crit_edge ], [ 0, %for.body.preheader.if.then127_crit_edge ], [ 0, %switch.hole_check.if.then127_crit_edge ]
  %cmp105343348 = phi i1 [ true, %lor.lhs.false121.if.then127_crit_edge ], [ false, %do.end80.if.then127_crit_edge ], [ false, %if.then84.if.then127_crit_edge ], [ false, %for.body.preheader.if.then127_crit_edge ], [ false, %switch.hole_check.if.then127_crit_edge ]
  %index.0341 = phi i32 [ %switch.load, %lor.lhs.false121.if.then127_crit_edge ], [ -1, %do.end80.if.then127_crit_edge ], [ -1, %if.then84.if.then127_crit_edge ], [ -1, %for.body.preheader.if.then127_crit_edge ], [ -1, %switch.hole_check.if.then127_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %old_data = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 12
  %54 = ptrtoint ptr %old_data to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %old_data, align 4
  %56 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %57)
  %cmp131 = icmp eq i8 %55, %57
  br i1 %cmp131, label %land.lhs.true133, label %if.then127.if.else141_crit_edge

if.then127.if.else141_crit_edge:                  ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else141

land.lhs.true133:                                 ; preds = %if.then127
  %old_jiffies134 = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 13
  %58 = ptrtoint ptr %old_jiffies134 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %old_jiffies134, align 4
  %60 = load i32, ptr @repeat_filter, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %60) #11
  %61 = add i32 %59, %call2.i
  %sub = sub i32 %53, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp137 = icmp slt i32 %sub, 0
  br i1 %cmp137, label %if.then139, label %land.lhs.true133.if.else141_crit_edge

land.lhs.true133.if.else141_crit_edge:            ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else141

if.then139:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #13
  %repeat_count = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 16
  %62 = ptrtoint ptr %repeat_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %repeat_count, align 4
  %inc140 = add i32 %63, 1
  store i32 %inc140, ptr %repeat_count, align 4
  br label %if.end143

if.else141:                                       ; preds = %land.lhs.true133.if.else141_crit_edge, %if.then127.if.else141_crit_edge
  %repeat_count142 = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 16
  %64 = ptrtoint ptr %repeat_count142 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %repeat_count142, align 4
  %first_jiffies = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 15
  %65 = ptrtoint ptr %first_jiffies to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %53, ptr %first_jiffies, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.else141, %if.then139
  %old_jiffies144 = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 13
  %66 = ptrtoint ptr %old_jiffies144 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %53, ptr %old_jiffies144, align 4
  %repeat_count145 = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 16
  %67 = ptrtoint ptr %repeat_count145 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %repeat_count145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp146.not = icmp eq i32 %68, 0
  br i1 %cmp146.not, label %if.end143.if.end160_crit_edge, label %land.lhs.true148

if.end143.if.end160_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

land.lhs.true148:                                 ; preds = %if.end143
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %68)
  %cmp150 = icmp ult i32 %68, 5
  br i1 %cmp150, label %land.lhs.true148.cleanup238_crit_edge, label %lor.lhs.false152

land.lhs.true148.cleanup238_crit_edge:            ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup238

lor.lhs.false152:                                 ; preds = %land.lhs.true148
  %first_jiffies153 = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 15
  %69 = ptrtoint ptr %first_jiffies153 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %first_jiffies153, align 4
  %71 = load i32, ptr @repeat_delay, align 4
  %call2.i328 = tail call i32 @__msecs_to_jiffies(i32 noundef %71) #11
  %72 = add i32 %70, %call2.i328
  %sub156 = sub i32 %53, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub156)
  %cmp157 = icmp slt i32 %sub156, 0
  br i1 %cmp157, label %lor.lhs.false152.cleanup238_crit_edge, label %lor.lhs.false152.if.end160_crit_edge

lor.lhs.false152.if.end160_crit_edge:             ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

lor.lhs.false152.cleanup238_crit_edge:            ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup238

if.end160:                                        ; preds = %lor.lhs.false152.if.end160_crit_edge, %if.end143.if.end160_crit_edge
  br i1 %cmp105343348, label %cleanup.thread351, label %if.else170

cleanup.thread351:                                ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  %code165 = getelementptr [15 x %struct.anon.73], ptr @ati_remote_tbl, i32 0, i32 %index.0341, i32 2
  %73 = ptrtoint ptr %code165 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %code165, align 2
  %conv166 = zext i16 %74 to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %conv166, i32 noundef 1) #11
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %conv166, i32 noundef 0) #11
  br label %if.end235

if.else170:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wheel_keycode.0342349)
  %cmp171.not = icmp eq i32 %wheel_keycode.0342349, 0
  %and175 = and i32 %conv81.pre-phi, 7
  %add176 = add nuw nsw i32 %and175, 1
  %and178 = and i8 %13, 120
  %scancode.0 = select i1 %cmp171.not, i8 %and65, i8 %and178
  %count.0 = select i1 %cmp171.not, i32 1, i32 %add176
  %rdev182 = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 1
  %conv183 = zext i8 %scancode.0 to i64
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else170
  %count.1357 = phi i32 [ %count.0, %if.else170 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %count.1357, -1
  %75 = ptrtoint ptr %rdev182 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rdev182, align 4
  %77 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx6, align 1
  tail call void @rc_keydown_notimeout(ptr noundef %76, i32 noundef 1, i64 noundef %conv183, i8 noundef zeroext %78) #11
  %79 = ptrtoint ptr %rdev182 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rdev182, align 4
  tail call void @rc_keyup(ptr noundef %80) #11
  %tobool181.not = icmp eq i32 %dec, 0
  br i1 %tobool181.not, label %while.body.nosync_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.nosync_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %nosync

if.then193:                                       ; preds = %lor.lhs.false121
  %code195 = getelementptr [15 x %struct.anon.73], ptr @ati_remote_tbl, i32 0, i32 %switch.load, i32 2
  %81 = ptrtoint ptr %code195 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %code195, align 2
  %83 = lshr i16 %82, 8
  %conv198 = trunc i16 %83 to i8
  %conv203 = trunc i16 %82 to i8
  %call204 = tail call fastcc i32 @ati_remote_compute_accel(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv198)
  %tobool205.not = icmp eq i8 %conv198, 0
  br i1 %tobool205.not, label %if.then193.if.end208_crit_edge, label %if.then206

if.then193.if.end208_crit_edge:                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

if.then206:                                       ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #13
  %conv207 = sext i8 %conv198 to i32
  %mul = mul i32 %call204, %conv207
  tail call void @input_event(ptr noundef %5, i32 noundef 2, i32 noundef 0, i32 noundef %mul) #11
  br label %if.end208

if.end208:                                        ; preds = %if.then206, %if.then193.if.end208_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv203)
  %tobool209.not = icmp eq i8 %conv203, 0
  br i1 %tobool209.not, label %if.end208.if.end213_crit_edge, label %if.then210

if.end208.if.end213_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end213

if.then210:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #13
  %conv211 = sext i8 %conv203 to i32
  %mul212 = mul i32 %call204, %conv211
  tail call void @input_event(ptr noundef %5, i32 noundef 2, i32 noundef 1, i32 noundef %mul212) #11
  br label %if.end213

if.end213:                                        ; preds = %if.then210, %if.end208.if.end213_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %old_jiffies214 = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 13
  %85 = ptrtoint ptr %old_jiffies214 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %old_jiffies214, align 4
  br label %if.end235

do.body216:                                       ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ati_remote_input_report.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ati_remote_input_report, %if.then224)) #11
          to label %cleanup238 [label %if.then224], !srcloc !211

if.then224:                                       ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #13
  %interface225 = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 3
  %86 = ptrtoint ptr %interface225 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %interface225, align 4
  %dev226 = getelementptr inbounds %struct.usb_interface, ptr %87, i32 0, i32 7
  %conv229 = zext i8 %51 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ati_remote_input_report.__UNIQUE_ID_ddebug249, ptr noundef %dev226, ptr noundef nonnull @.str.44, i32 noundef %conv229) #11
  br label %cleanup238

if.end235:                                        ; preds = %if.end213, %cleanup.thread351, %if.then112
  tail call void @input_event(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %nosync

nosync:                                           ; preds = %if.end235, %while.body.nosync_crit_edge
  %88 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx6, align 1
  %old_data237 = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 12
  %90 = ptrtoint ptr %old_data237 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %old_data237, align 4
  br label %cleanup238

cleanup238:                                       ; preds = %nosync, %if.then224, %do.body216, %lor.lhs.false152.cleanup238_crit_edge, %land.lhs.true148.cleanup238_crit_edge, %do.end54, %do.body49.cleanup238_crit_edge, %do.end17.i, %do.end.i, %if.then.i333.cleanup238_crit_edge, %if.then.i333.cleanup238_crit_edge371, %if.then.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_g_keycode_from_table(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown_notimeout(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keyup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ati_remote_compute_accel(ptr nocapture noundef %ati_remote) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %old_jiffies = getelementptr inbounds %struct.ati_remote, ptr %ati_remote, i32 0, i32 13
  %1 = ptrtoint ptr %old_jiffies to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %old_jiffies, align 4
  %add = sub i32 25, %0
  %sub = add i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  %acc_jiffies = getelementptr inbounds %struct.ati_remote, ptr %ati_remote, i32 0, i32 14
  br i1 %cmp, label %if.then, label %msecs_to_jiffies.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %acc_jiffies to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %acc_jiffies, align 4
  br label %cleanup13

msecs_to_jiffies.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %acc_jiffies to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %acc_jiffies, align 4
  %6 = add i32 %5, 13
  %sub5 = sub i32 %0, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5)
  %cmp6 = icmp slt i32 %sub5, 0
  br i1 %cmp6, label %msecs_to_jiffies.exit.cleanup.thread_crit_edge, label %msecs_to_jiffies.exit.1

msecs_to_jiffies.exit.cleanup.thread_crit_edge:   ; preds = %msecs_to_jiffies.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %msecs_to_jiffies.exit.5.cleanup.thread_crit_edge, %msecs_to_jiffies.exit.4.cleanup.thread_crit_edge, %msecs_to_jiffies.exit.3.cleanup.thread_crit_edge, %msecs_to_jiffies.exit.2.cleanup.thread_crit_edge, %msecs_to_jiffies.exit.1.cleanup.thread_crit_edge, %msecs_to_jiffies.exit.cleanup.thread_crit_edge
  %i.027.lcssa = phi i32 [ 0, %msecs_to_jiffies.exit.cleanup.thread_crit_edge ], [ 1, %msecs_to_jiffies.exit.1.cleanup.thread_crit_edge ], [ 2, %msecs_to_jiffies.exit.2.cleanup.thread_crit_edge ], [ 3, %msecs_to_jiffies.exit.3.cleanup.thread_crit_edge ], [ 4, %msecs_to_jiffies.exit.4.cleanup.thread_crit_edge ], [ 5, %msecs_to_jiffies.exit.5.cleanup.thread_crit_edge ]
  %arrayidx = getelementptr [7 x %struct.accel_times], ptr @accel, i32 0, i32 %i.027.lcssa
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 4
  %phi.cast = zext i8 %8 to i32
  br label %cleanup13

msecs_to_jiffies.exit.1:                          ; preds = %msecs_to_jiffies.exit
  %9 = ptrtoint ptr %acc_jiffies to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %acc_jiffies, align 4
  %11 = add i32 %10, 25
  %sub5.1 = sub i32 %0, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.1)
  %cmp6.1 = icmp slt i32 %sub5.1, 0
  br i1 %cmp6.1, label %msecs_to_jiffies.exit.1.cleanup.thread_crit_edge, label %msecs_to_jiffies.exit.2

msecs_to_jiffies.exit.1.cleanup.thread_crit_edge: ; preds = %msecs_to_jiffies.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

msecs_to_jiffies.exit.2:                          ; preds = %msecs_to_jiffies.exit.1
  %12 = ptrtoint ptr %acc_jiffies to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %acc_jiffies, align 4
  %14 = add i32 %13, 50
  %sub5.2 = sub i32 %0, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.2)
  %cmp6.2 = icmp slt i32 %sub5.2, 0
  br i1 %cmp6.2, label %msecs_to_jiffies.exit.2.cleanup.thread_crit_edge, label %msecs_to_jiffies.exit.3

msecs_to_jiffies.exit.2.cleanup.thread_crit_edge: ; preds = %msecs_to_jiffies.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

msecs_to_jiffies.exit.3:                          ; preds = %msecs_to_jiffies.exit.2
  %15 = ptrtoint ptr %acc_jiffies to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %acc_jiffies, align 4
  %17 = add i32 %16, 100
  %sub5.3 = sub i32 %0, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.3)
  %cmp6.3 = icmp slt i32 %sub5.3, 0
  br i1 %cmp6.3, label %msecs_to_jiffies.exit.3.cleanup.thread_crit_edge, label %msecs_to_jiffies.exit.4

msecs_to_jiffies.exit.3.cleanup.thread_crit_edge: ; preds = %msecs_to_jiffies.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

msecs_to_jiffies.exit.4:                          ; preds = %msecs_to_jiffies.exit.3
  %18 = ptrtoint ptr %acc_jiffies to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %acc_jiffies, align 4
  %20 = add i32 %19, 150
  %sub5.4 = sub i32 %0, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.4)
  %cmp6.4 = icmp slt i32 %sub5.4, 0
  br i1 %cmp6.4, label %msecs_to_jiffies.exit.4.cleanup.thread_crit_edge, label %msecs_to_jiffies.exit.5

msecs_to_jiffies.exit.4.cleanup.thread_crit_edge: ; preds = %msecs_to_jiffies.exit.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

msecs_to_jiffies.exit.5:                          ; preds = %msecs_to_jiffies.exit.4
  %21 = ptrtoint ptr %acc_jiffies to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %acc_jiffies, align 4
  %23 = add i32 %22, 200
  %sub5.5 = sub i32 %0, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.5)
  %cmp6.5 = icmp slt i32 %sub5.5, 0
  br i1 %cmp6.5, label %msecs_to_jiffies.exit.5.cleanup.thread_crit_edge, label %msecs_to_jiffies.exit.5.cleanup13_crit_edge

msecs_to_jiffies.exit.5.cleanup13_crit_edge:      ; preds = %msecs_to_jiffies.exit.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

msecs_to_jiffies.exit.5.cleanup.thread_crit_edge: ; preds = %msecs_to_jiffies.exit.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup13:                                        ; preds = %msecs_to_jiffies.exit.5.cleanup13_crit_edge, %cleanup.thread, %if.then
  %retval.2.shrunk = phi i32 [ 1, %if.then ], [ %phi.cast, %cleanup.thread ], [ 20, %msecs_to_jiffies.exit.5.cleanup13_crit_edge ]
  ret i32 %retval.2.shrunk
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_remote_input_open(ptr nocapture noundef readonly %inputdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %inputdev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %open_mutex.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %open_mutex.i, i32 noundef 0) #11
  %users.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ati_remote_open.exit_crit_edge

entry.ati_remote_open.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ati_remote_open.exit

if.end.i:                                         ; preds = %entry
  %udev.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev.i, align 4
  %irq_urb.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_urb.i, align 4
  %dev.i = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %dev.i, align 4
  %9 = load ptr, ptr %irq_urb.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %9, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.ati_remote_open.exit_crit_edge, label %do.end.i

if.end.i.ati_remote_open.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ati_remote_open.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %interface.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interface.i, align 4
  %dev3.i = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #14
  br label %ati_remote_open.exit

ati_remote_open.exit:                             ; preds = %do.end.i, %if.end.i.ati_remote_open.exit_crit_edge, %entry.ati_remote_open.exit_crit_edge
  %err.0.i = phi i32 [ 0, %entry.ati_remote_open.exit_crit_edge ], [ -5, %do.end.i ], [ 0, %if.end.i.ati_remote_open.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_mutex.i) #11
  ret i32 %err.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ati_remote_input_close(ptr nocapture noundef readonly %inputdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %inputdev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %open_mutex.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %open_mutex.i, i32 noundef 0) #11
  %users.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %users.i, align 4
  %dec.i = add i32 %3, -1
  store i32 %dec.i, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.ati_remote_close.exit_crit_edge

entry.ati_remote_close.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ati_remote_close.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %irq_urb.i = getelementptr inbounds %struct.ati_remote, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %irq_urb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #11
  br label %ati_remote_close.exit

ati_remote_close.exit:                            ; preds = %if.then.i, %entry.ati_remote_close.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal nonnull ptr @get_medion_keymap(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %manufacturer = getelementptr i8, ptr %1, i32 1108
  %2 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %manufacturer, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %product = getelementptr i8, ptr %1, i32 1104
  %4 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %product, align 8
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  %actconfig = getelementptr i8, ptr %1, i32 956
  %6 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %actconfig, align 4
  %bmAttributes = getelementptr inbounds %struct.usb_config_descriptor, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes, align 1
  %10 = and i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  %call22 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(28) @.str.60) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  br i1 %tobool23.not, label %land.lhs.true7, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7:                                   ; preds = %if.then3
  %call9 = tail call i32 @strcmp(ptr noundef nonnull %5, ptr noundef nonnull dereferenceable(13) @.str.61) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %if.then3.if.end_crit_edge
  %call13 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(8) @.str.63) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true15, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true15:                                  ; preds = %if.end
  %call17 = tail call i32 @strcmp(ptr noundef nonnull %5, ptr noundef nonnull dereferenceable(12) @.str.64) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.do.end_crit_edge

land.lhs.true15.do.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.then
  br i1 %tobool23.not, label %land.lhs.true24, label %if.else.do.end_crit_edge

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true24:                                  ; preds = %if.else
  %call26 = tail call i32 @strcmp(ptr noundef nonnull %5, ptr noundef nonnull dereferenceable(13) @.str.61) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true24.cleanup_crit_edge, label %land.lhs.true24.do.end_crit_edge

land.lhs.true24.do.end_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true24.do.end_crit_edge, %if.else.do.end_crit_edge, %land.lhs.true15.do.end_crit_edge, %if.end.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.67) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true24.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  %retval.0 = phi ptr [ @.str.66, %do.end ], [ @.str.62, %land.lhs.true7.cleanup_crit_edge ], [ @.str.65, %land.lhs.true15.cleanup_crit_edge ], [ @.str.66, %land.lhs.true24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !55, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !92, !94, !95, !96, !97, !98, !99, !101, !102, !104, !105, !106, !107, !109, !111, !112, !113, !115, !116, !118, !119, !120, !122, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !139, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !155, !157, !158, !159, !161, !162, !163, !165, !167, !169, !170, !171, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !195, !196, !197, !199}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @__param_channel_mask, !1, !"__param_channel_mask", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ati_remote.c", i32 117, i32 1}
!2 = !{ptr @__UNIQUE_ID_channel_masktype237, !1, !"__UNIQUE_ID_channel_masktype237", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_channel_mask238, !4, !"__UNIQUE_ID_channel_mask238", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/ati_remote.c", i32 118, i32 1}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/ati_remote.c", i32 121, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype239, !6, !"__UNIQUE_ID_debugtype239", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug240, !9, !"__UNIQUE_ID_debug240", i1 false, i1 false}
!9 = !{!"../drivers/media/rc/ati_remote.c", i32 122, i32 1}
!10 = !{ptr @__param_repeat_filter, !11, !"__param_repeat_filter", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/ati_remote.c", i32 125, i32 1}
!12 = !{ptr @__UNIQUE_ID_repeat_filtertype241, !11, !"__UNIQUE_ID_repeat_filtertype241", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_repeat_filter242, !14, !"__UNIQUE_ID_repeat_filter242", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/ati_remote.c", i32 126, i32 1}
!15 = !{ptr @__param_repeat_delay, !16, !"__param_repeat_delay", i1 false, i1 false}
!16 = !{!"../drivers/media/rc/ati_remote.c", i32 129, i32 1}
!17 = !{ptr @__UNIQUE_ID_repeat_delaytype243, !16, !"__UNIQUE_ID_repeat_delaytype243", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_repeat_delay244, !19, !"__UNIQUE_ID_repeat_delay244", i1 false, i1 false}
!19 = !{!"../drivers/media/rc/ati_remote.c", i32 130, i32 1}
!20 = !{ptr @__param_mouse, !21, !"__param_mouse", i1 false, i1 false}
!21 = !{!"../drivers/media/rc/ati_remote.c", i32 133, i32 1}
!22 = !{ptr @__UNIQUE_ID_mousetype245, !21, !"__UNIQUE_ID_mousetype245", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_mouse246, !24, !"__UNIQUE_ID_mouse246", i1 false, i1 false}
!24 = !{!"../drivers/media/rc/ati_remote.c", i32 134, i32 1}
!25 = !{ptr @__initcall__kmod_ati_remote__252_968_ati_remote_driver_init6, !26, !"__initcall__kmod_ati_remote__252_968_ati_remote_driver_init6", i1 false, i1 false}
!26 = !{!"../drivers/media/rc/ati_remote.c", i32 968, i32 1}
!27 = !{ptr @__exitcall_ati_remote_driver_exit, !26, !"__exitcall_ati_remote_driver_exit", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_author253, !29, !"__UNIQUE_ID_author253", i1 false, i1 false}
!29 = !{!"../drivers/media/rc/ati_remote.c", i32 970, i32 1}
!30 = !{ptr @__UNIQUE_ID_description254, !31, !"__UNIQUE_ID_description254", i1 false, i1 false}
!31 = !{!"../drivers/media/rc/ati_remote.c", i32 971, i32 1}
!32 = !{ptr @__UNIQUE_ID_file255, !33, !"__UNIQUE_ID_file255", i1 false, i1 false}
!33 = !{!"../drivers/media/rc/ati_remote.c", i32 972, i32 1}
!34 = !{ptr @__UNIQUE_ID_license256, !33, !"__UNIQUE_ID_license256", i1 false, i1 false}
!35 = !{ptr @channel_mask, !36, !"channel_mask", i1 false, i1 false}
!36 = !{!"../drivers/media/rc/ati_remote.c", i32 116, i32 22}
!37 = !{ptr @debug, !38, !"debug", i1 false, i1 false}
!38 = !{!"../drivers/media/rc/ati_remote.c", i32 120, i32 12}
!39 = !{ptr @__param_str_channel_mask, !1, !"__param_str_channel_mask", i1 false, i1 false}
!40 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!41 = !{ptr @__param_str_repeat_filter, !11, !"__param_str_repeat_filter", i1 false, i1 false}
!42 = !{ptr @repeat_filter, !43, !"repeat_filter", i1 false, i1 false}
!43 = !{!"../drivers/media/rc/ati_remote.c", i32 124, i32 12}
!44 = !{ptr @__param_str_repeat_delay, !16, !"__param_str_repeat_delay", i1 false, i1 false}
!45 = !{ptr @repeat_delay, !46, !"repeat_delay", i1 false, i1 false}
!46 = !{!"../drivers/media/rc/ati_remote.c", i32 128, i32 12}
!47 = !{ptr @__param_str_mouse, !21, !"__param_str_mouse", i1 false, i1 false}
!48 = !{ptr @mouse, !49, !"mouse", i1 false, i1 false}
!49 = !{!"../drivers/media/rc/ati_remote.c", i32 132, i32 13}
!50 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ati_remote_driver, !52, !"ati_remote_driver", i1 false, i1 false}
!52 = !{!"../drivers/media/rc/ati_remote.c", i32 961, i32 26}
!53 = !{ptr @.str.1, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/rc/ati_remote.c", i32 823, i32 3}
!55 = !{ptr @.str.2, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ati_remote_probe._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @ati_remote_probe._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.5, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/rc/ati_remote.c", i32 831, i32 3}
!61 = !{ptr @ati_remote_probe._entry.4, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ati_remote_probe._entry_ptr.6, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.8, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/rc/ati_remote.c", i32 835, i32 3}
!65 = !{ptr @ati_remote_probe._entry.7, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ati_remote_probe._entry_ptr.9, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.11, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/rc/ati_remote.c", i32 839, i32 3}
!69 = !{ptr @ati_remote_probe._entry.10, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ati_remote_probe._entry_ptr.12, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.13, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/rc/ati_remote.c", i32 862, i32 31}
!73 = !{ptr @.str.14, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/rc/ati_remote.c", i32 863, i32 34}
!75 = !{ptr @.str.15, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/rc/ati_remote.c", i32 865, i32 61}
!77 = !{ptr @.str.16, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/rc/ati_remote.c", i32 866, i32 25}
!79 = !{ptr @.str.17, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/rc/ati_remote.c", i32 867, i32 41}
!81 = !{ptr @.str.18, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/rc/ati_remote.c", i32 872, i32 4}
!83 = !{ptr @.str.19, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/rc/ati_remote.c", i32 877, i32 4}
!85 = !{ptr @.str.20, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/rc/ati_remote.c", i32 879, i32 21}
!87 = !{ptr @ati_remote_probe.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/media/rc/ati_remote.c", i32 890, i32 2}
!89 = !{ptr @.str.21, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.22, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/usb.h", i32 912, i32 31}
!92 = !{ptr @.str.23, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/rc/ati_remote.c", i32 336, i32 3}
!94 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ati_remote_open._entry, !93, !"_entry", i1 false, i1 false}
!98 = !{ptr @ati_remote_open._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @ati_remote_initialize.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/media/rc/ati_remote.c", i32 772, i32 2}
!101 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/rc/ati_remote.c", i32 799, i32 3}
!104 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ati_remote_initialize._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @ati_remote_initialize._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = distinct !{null, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!109 = !{ptr @.str.31, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/rc/ati_remote.c", i32 664, i32 3}
!111 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ati_remote_irq_in.__UNIQUE_ID_ddebug250, !110, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!113 = !{ptr @.str.33, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/rc/ati_remote.c", i32 669, i32 3}
!115 = !{ptr @ati_remote_irq_in.__UNIQUE_ID_ddebug251, !114, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!116 = !{ptr @.str.34, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/rc/ati_remote.c", i32 676, i32 3}
!118 = !{ptr @ati_remote_irq_in._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ati_remote_irq_in._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.35, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/rc/ati_remote.c", i32 506, i32 3}
!122 = !{ptr @.str.36, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @ati_remote_input_report._entry, !121, !"_entry", i1 false, i1 false}
!125 = !{ptr @ati_remote_input_report._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/rc/ati_remote.c", i32 515, i32 3}
!128 = !{ptr @ati_remote_input_report._entry.38, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @ati_remote_input_report._entry_ptr.40, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.42, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/rc/ati_remote.c", i32 527, i32 2}
!132 = !{ptr @ati_remote_input_report._entry.41, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ati_remote_input_report._entry_ptr.43, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.44, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/rc/ati_remote.c", i32 640, i32 3}
!136 = !{ptr @ati_remote_input_report.__UNIQUE_ID_ddebug249, !135, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!137 = !{ptr @.str.45, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/rc/ati_remote.c", i32 314, i32 4}
!139 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.47, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ati_remote_dump._entry, !138, !"_entry", i1 false, i1 false}
!142 = !{ptr @ati_remote_dump._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.49, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/rc/ati_remote.c", i32 316, i32 3}
!145 = !{ptr @ati_remote_dump._entry.48, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ati_remote_dump._entry_ptr.50, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/rc/ati_remote.c", i32 318, i32 3}
!149 = !{ptr @ati_remote_dump._entry.51, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @ati_remote_dump._entry_ptr.53, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @ati_remote_tbl, !152, !"ati_remote_tbl", i1 false, i1 false}
!152 = !{!"../drivers/media/rc/ati_remote.c", i32 277, i32 4}
!153 = !{ptr @accel, !154, !"accel", i1 false, i1 false}
!154 = !{!"../drivers/media/rc/ati_remote.c", i32 437, i32 33}
!155 = !{ptr @.str.54, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/rc/ati_remote.c", i32 388, i32 3}
!157 = !{ptr @.str.55, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @ati_remote_irq_out.__UNIQUE_ID_ddebug247, !156, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!159 = !{ptr @.str.56, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/rc/ati_remote.c", i32 418, i32 3}
!161 = !{ptr @.str.57, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @ati_remote_sendpacket.__UNIQUE_ID_ddebug248, !160, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!163 = !{ptr @init1, !164, !"init1", i1 false, i1 false}
!164 = !{!"../drivers/media/rc/ati_remote.c", i32 229, i32 13}
!165 = !{ptr @init2, !166, !"init2", i1 false, i1 false}
!166 = !{!"../drivers/media/rc/ati_remote.c", i32 230, i32 13}
!167 = !{ptr @.str.58, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/rc/ati_remote.c", i32 947, i32 3}
!169 = !{ptr @.str.59, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @ati_remote_disconnect._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @ati_remote_disconnect._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @ati_remote_table, !173, !"ati_remote_table", i1 false, i1 false}
!173 = !{!"../drivers/media/rc/ati_remote.c", i32 191, i32 35}
!174 = !{ptr @type_ati, !175, !"type_ati", i1 false, i1 false}
!175 = !{!"../drivers/media/rc/ati_remote.c", i32 181, i32 39}
!176 = !{ptr @type_medion, !177, !"type_medion", i1 false, i1 false}
!177 = !{!"../drivers/media/rc/ati_remote.c", i32 184, i32 39}
!178 = !{ptr @.str.60, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/rc/ati_remote.c", i32 160, i32 36}
!180 = !{ptr @.str.61, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/rc/ati_remote.c", i32 161, i32 34}
!182 = !{ptr @.str.62, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/rc/ati_remote.c", i32 162, i32 12}
!184 = !{ptr @.str.63, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/rc/ati_remote.c", i32 164, i32 36}
!186 = !{ptr @.str.64, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/rc/ati_remote.c", i32 165, i32 34}
!188 = !{ptr @.str.65, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/rc/ati_remote.c", i32 166, i32 12}
!190 = !{ptr @.str.66, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/rc/ati_remote.c", i32 171, i32 12}
!192 = !{ptr @.str.67, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/rc/ati_remote.c", i32 175, i32 2}
!194 = !{ptr @.str.68, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @get_medion_keymap._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @get_medion_keymap._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.69, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/rc/ati_remote.c", i32 188, i32 20}
!199 = !{ptr @type_firefly, !200, !"type_firefly", i1 false, i1 false}
!200 = !{!"../drivers/media/rc/ati_remote.c", i32 187, i32 39}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!210 = !{i8 0, i8 2}
!211 = !{i64 2148718072, i64 2148718077, i64 2148718090, i64 2148718134, i64 2148718168, i64 2148718189}
!212 = !{i64 2154463251}
