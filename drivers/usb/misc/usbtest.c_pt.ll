; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/usbtest.c_pt.bc'
source_filename = "../drivers/usb/misc/usbtest.c"
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
%struct.atomic_t = type { i32 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usbtest_info = type { ptr, i8, i8, i8, i32 }
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
%struct.usbtest_dev = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.usbtest_param_32 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usbtest_param_64 = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.sg_timeout = type { %struct.timer_list, ptr }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_dev_cap_header = type { i8, i8, i8 }
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.usb_qualifier_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.ctrl_ctx = type { %struct.spinlock, ptr, %struct.completion, i32, i32, i32, ptr, ptr, i32 }
%struct.subcase = type { %struct.usb_ctrlrequest, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.transfer_context = type { i32, i32, %struct.spinlock, %struct.completion, i32, i32, i32, ptr, i8 }
%struct.queued_ctx = type { %struct.completion, %struct.atomic_t, i32, i32, ptr }

@__param_str_alt = internal constant [12 x i8] c"usbtest.alt\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@override_alt = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_alt = internal constant %struct.kernel_param { ptr @__param_str_alt, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @override_alt } }, section "__param", align 4
@__UNIQUE_ID_alttype237 = internal constant [25 x i8] c"usbtest.parmtype=alt:int\00", section ".modinfo", align 1
@__UNIQUE_ID_alt238 = internal constant [55 x i8] c"usbtest.parm=alt:>= 0 to override altsetting selection\00", section ".modinfo", align 1
@__param_str_pattern = internal constant [16 x i8] c"usbtest.pattern\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@mod_pattern = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pattern = internal constant %struct.kernel_param { ptr @__param_str_pattern, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @mod_pattern } }, section "__param", align 4
@__UNIQUE_ID_patterntype239 = internal constant [30 x i8] c"usbtest.parmtype=pattern:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_mod_pattern240 = internal constant [51 x i8] c"usbtest.parm=mod_pattern:i/o pattern (0 == zeroes)\00", section ".modinfo", align 1
@__param_str_realworld = internal constant [18 x i8] c"usbtest.realworld\00", align 1
@realworld = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_realworld = internal constant %struct.kernel_param { ptr @__param_str_realworld, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @realworld } }, section "__param", align 4
@__UNIQUE_ID_realworldtype241 = internal constant [32 x i8] c"usbtest.parmtype=realworld:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_realworld242 = internal constant [64 x i8] c"usbtest.parm=realworld:clear to demand stricter spec compliance\00", section ".modinfo", align 1
@__param_str_force_interrupt = internal constant [24 x i8] c"usbtest.force_interrupt\00", align 1
@force_interrupt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_force_interrupt = internal constant %struct.kernel_param { ptr @__param_str_force_interrupt, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @force_interrupt } }, section "__param", align 4
@__UNIQUE_ID_force_interrupttype245 = internal constant [38 x i8] c"usbtest.parmtype=force_interrupt:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_force_interrupt246 = internal constant [62 x i8] c"usbtest.parm=force_interrupt:0 = test default; else interrupt\00", section ".modinfo", align 1
@__param_str_vendor = internal constant [15 x i8] c"usbtest.vendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@vendor = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_vendor = internal constant %struct.kernel_param { ptr @__param_str_vendor, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @vendor } }, section "__param", align 4
@__UNIQUE_ID_vendortype247 = internal constant [31 x i8] c"usbtest.parmtype=vendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_vendor248 = internal constant [46 x i8] c"usbtest.parm=vendor:vendor code (from usb-if)\00", section ".modinfo", align 1
@__param_str_product = internal constant [16 x i8] c"usbtest.product\00", align 1
@product = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_product = internal constant %struct.kernel_param { ptr @__param_str_product, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @product } }, section "__param", align 4
@__UNIQUE_ID_producttype249 = internal constant [32 x i8] c"usbtest.parmtype=product:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_product250 = internal constant [48 x i8] c"usbtest.parm=product:product code (from vendor)\00", section ".modinfo", align 1
@__initcall__kmod_usbtest__253_3068_usbtest_init6 = internal global ptr @usbtest_init, section ".initcall6.init", align 4
@usbtest_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbtest_probe, ptr @usbtest_disconnect, ptr @usbtest_ioctl, ptr @usbtest_suspend, ptr @usbtest_resume, ptr null, ptr null, ptr null, ptr @id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usbtest_exit = internal global ptr @usbtest_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description254 = internal constant [48 x i8] c"usbtest.description=USB Core/HCD Testing Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [38 x i8] c"usbtest.file=drivers/usb/misc/usbtest\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [20 x i8] c"usbtest.license=GPL\00", section ".modinfo", align 1
@usbtest_init.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 -2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbtest\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usbtest_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/misc/usbtest.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"params: vend=0x%04x prod=0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@id_table = internal constant { [9 x %struct.usb_device_id], [40 x i8] } { [9 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1351, i16 8757, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ez1_info to i32) }, %struct.usb_device_id { i16 3, i16 1351, i16 128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ez1_info to i32) }, %struct.usb_device_id { i16 3, i16 1204, i16 -31213, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ez2_info to i32) }, %struct.usb_device_id { i16 3, i16 -16, i16 -16, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @fw_info to i32) }, %struct.usb_device_id { i16 3, i16 1317, i16 -23392, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @gz_info to i32) }, %struct.usb_device_id { i16 3, i16 1317, i16 -23388, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @um_info to i32) }, %struct.usb_device_id { i16 3, i16 1317, i16 -23389, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @um2_info to i32) }, %struct.usb_device_id { i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @generic_info to i32) }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@usbtest_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 2784, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"matched module params, vend=0x%04x prod=0x%04x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usbtest_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbtest_probe._entry_ptr = internal global ptr @usbtest_probe._entry, section ".printk_index", align 4
@usbtest_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" intr-in\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" intr-out\00", [22 x i8] zeroinitializer }, align 32
@usbtest_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 2827, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"couldn't get endpoints, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usbtest_probe._entry_ptr.15 = internal global ptr @usbtest_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" bulk-in\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" bulk-out\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" iso-in\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" iso-out\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" int-in\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" int-out\00", [23 x i8] zeroinitializer }, align 32
@usbtest_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.2, i32 2856, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@usbtest_probe._entry_ptr.24 = internal global ptr @usbtest_probe._entry.22, section ".printk_index", align 4
@usbtest_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.2, i32 2863, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s {control%s%s%s%s%s%s%s} tests%s\0A\00", [60 x i8] zeroinitializer }, align 32
@usbtest_probe._entry_ptr.27 = internal global ptr @usbtest_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" in/out\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" (+alt)\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usbtest_disconnect.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 2, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usbtest_disconnect\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"disconnect\0A\00", [20 x i8] zeroinitializer }, align 32
@pattern = internal global { i32, [28 x i8] } zeroinitializer, align 32
@usbtest_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 2692, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"set altsetting to %d failed, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usbtest_ioctl\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@usbtest_ioctl._entry_ptr = internal global ptr @usbtest_ioctl._entry, section ".printk_index", align 4
@usbtest_do_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 2206, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TEST 0:  NOP\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usbtest_do_ioctl\00", [47 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr = internal global ptr @usbtest_do_ioctl._entry, section ".printk_index", align 4
@usbtest_do_ioctl._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 2216, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TEST 1:  write %d bytes %u times\0A\00", [62 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.39 = internal global ptr @usbtest_do_ioctl._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"test1\00", [26 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.2, i32 2231, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TEST 2:  read %d bytes %u times\0A\00", [63 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.43 = internal global ptr @usbtest_do_ioctl._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"test2\00", [26 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.36, ptr @.str.2, i32 2246, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"TEST 3:  write/%d 0..%d bytes %u times\0A\00", [56 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.47 = internal global ptr @usbtest_do_ioctl._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"test3\00", [26 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.36, ptr @.str.2, i32 2262, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"TEST 4:  read/%d 0..%d bytes %u times\0A\00", [57 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.51 = internal global ptr @usbtest_do_ioctl._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"test4\00", [26 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.36, ptr @.str.2, i32 2281, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"TEST 5:  write %d sglists %d entries of %d bytes\0A\00", [46 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.55 = internal global ptr @usbtest_do_ioctl._entry.53, section ".printk_index", align 4
@usbtest_do_ioctl._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.36, ptr @.str.2, i32 2300, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"TEST 6:  read %d sglists %d entries of %d bytes\0A\00", [47 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.58 = internal global ptr @usbtest_do_ioctl._entry.56, section ".printk_index", align 4
@usbtest_do_ioctl._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.36, ptr @.str.2, i32 2318, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"TEST 7:  write/%d %d sglists %d entries 0..%d bytes\0A\00", [43 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.61 = internal global ptr @usbtest_do_ioctl._entry.59, section ".printk_index", align 4
@usbtest_do_ioctl._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.36, ptr @.str.2, i32 2336, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"TEST 8:  read/%d %d sglists %d entries 0..%d bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.64 = internal global ptr @usbtest_do_ioctl._entry.62, section ".printk_index", align 4
@usbtest_do_ioctl._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.36, ptr @.str.2, i32 2354, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"TEST 9:  ch9 (subset) control tests, %d times\0A\00", [49 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.67 = internal global ptr @usbtest_do_ioctl._entry.65, section ".printk_index", align 4
@usbtest_do_ioctl._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.36, ptr @.str.2, i32 2359, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ch9 subset failed, iterations left %d\0A\00", [57 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.70 = internal global ptr @usbtest_do_ioctl._entry.68, section ".printk_index", align 4
@usbtest_do_ioctl._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.36, ptr @.str.2, i32 2368, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TEST 10:  queue %d control calls, %d times\0A\00", [52 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.73 = internal global ptr @usbtest_do_ioctl._entry.71, section ".printk_index", align 4
@usbtest_do_ioctl._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.36, ptr @.str.2, i32 2378, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TEST 11:  unlink %d reads of %d\0A\00", [63 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.76 = internal global ptr @usbtest_do_ioctl._entry.74, section ".printk_index", align 4
@usbtest_do_ioctl._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.36, ptr @.str.2, i32 2384, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unlink reads failed %d, iterations left %d\0A\00", [52 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.79 = internal global ptr @usbtest_do_ioctl._entry.77, section ".printk_index", align 4
@usbtest_do_ioctl._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.36, ptr @.str.2, i32 2391, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TEST 12:  unlink %d writes of %d\0A\00", [62 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.82 = internal global ptr @usbtest_do_ioctl._entry.80, section ".printk_index", align 4
@usbtest_do_ioctl._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.36, ptr @.str.2, i32 2397, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unlink writes failed %d, iterations left %d\0A\00", [51 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.85 = internal global ptr @usbtest_do_ioctl._entry.83, section ".printk_index", align 4
@usbtest_do_ioctl._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.36, ptr @.str.2, i32 2406, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TEST 13:  set/clear %d halts\0A\00", [34 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.88 = internal global ptr @usbtest_do_ioctl._entry.86, section ".printk_index", align 4
@usbtest_do_ioctl._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.36, ptr @.str.2, i32 2411, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"halts failed, iterations left %d\0A\00", [62 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.91 = internal global ptr @usbtest_do_ioctl._entry.89, section ".printk_index", align 4
@usbtest_do_ioctl._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.36, ptr @.str.2, i32 2421, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TEST 14:  %d ep0out, %d..%d vary %d\0A\00", [59 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.94 = internal global ptr @usbtest_do_ioctl._entry.92, section ".printk_index", align 4
@usbtest_do_ioctl._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.36, ptr @.str.2, i32 2433, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"TEST 15:  write %d iso, %d entries of %d bytes\0A\00", [48 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.97 = internal global ptr @usbtest_do_ioctl._entry.95, section ".printk_index", align 4
@usbtest_do_ioctl._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.36, ptr @.str.2, i32 2446, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"TEST 16:  read %d iso, %d entries of %d bytes\0A\00", [49 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.100 = internal global ptr @usbtest_do_ioctl._entry.98, section ".printk_index", align 4
@usbtest_do_ioctl._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.36, ptr @.str.2, i32 2460, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"TEST 17:  write odd addr %d bytes %u times core map\0A\00", [43 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.103 = internal global ptr @usbtest_do_ioctl._entry.101, section ".printk_index", align 4
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"test17\00", [25 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.36, ptr @.str.2, i32 2473, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"TEST 18:  read odd addr %d bytes %u times core map\0A\00", [44 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.107 = internal global ptr @usbtest_do_ioctl._entry.105, section ".printk_index", align 4
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"test18\00", [25 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.36, ptr @.str.2, i32 2487, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"TEST 19:  write odd addr %d bytes %u times premapped\0A\00", [42 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.111 = internal global ptr @usbtest_do_ioctl._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"test19\00", [25 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.36, ptr @.str.2, i32 2500, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"TEST 20:  read odd addr %d bytes %u times premapped\0A\00", [43 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.115 = internal global ptr @usbtest_do_ioctl._entry.113, section ".printk_index", align 4
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"test20\00", [25 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.36, ptr @.str.2, i32 2516, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"TEST 21:  %d ep0out odd addr, %d..%d vary %d\0A\00", [50 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.119 = internal global ptr @usbtest_do_ioctl._entry.117, section ".printk_index", align 4
@usbtest_do_ioctl._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.36, ptr @.str.2, i32 2528, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"TEST 22:  write %d iso odd, %d entries of %d bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.122 = internal global ptr @usbtest_do_ioctl._entry.120, section ".printk_index", align 4
@usbtest_do_ioctl._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.36, ptr @.str.2, i32 2539, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"TEST 23:  read %d iso odd, %d entries of %d bytes\0A\00", [45 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.125 = internal global ptr @usbtest_do_ioctl._entry.123, section ".printk_index", align 4
@usbtest_do_ioctl._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.36, ptr @.str.2, i32 2551, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"TEST 24:  unlink from %d queues of %d %d-byte writes\0A\00", [42 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.128 = internal global ptr @usbtest_do_ioctl._entry.126, section ".printk_index", align 4
@usbtest_do_ioctl._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.36, ptr @.str.2, i32 2558, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unlink queued writes failed %d, iterations left %d\0A\00", [44 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.131 = internal global ptr @usbtest_do_ioctl._entry.129, section ".printk_index", align 4
@usbtest_do_ioctl._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.36, ptr @.str.2, i32 2570, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TEST 25: write %d bytes %u times\0A\00", [62 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.134 = internal global ptr @usbtest_do_ioctl._entry.132, section ".printk_index", align 4
@.str.135 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"test25\00", [25 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.36, ptr @.str.2, i32 2586, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TEST 26: read %d bytes %u times\0A\00", [63 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.138 = internal global ptr @usbtest_do_ioctl._entry.136, section ".printk_index", align 4
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"test26\00", [25 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.36, ptr @.str.2, i32 2603, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TEST 27: bulk write %dMbytes\0A\00", [34 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.142 = internal global ptr @usbtest_do_ioctl._entry.140, section ".printk_index", align 4
@usbtest_do_ioctl._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.36, ptr @.str.2, i32 2612, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TEST 28: bulk read %dMbytes\0A\00", [35 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.145 = internal global ptr @usbtest_do_ioctl._entry.143, section ".printk_index", align 4
@usbtest_do_ioctl._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.36, ptr @.str.2, i32 2622, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"TEST 29: Clear toggle between bulk writes %d times\0A\00", [44 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.148 = internal global ptr @usbtest_do_ioctl._entry.146, section ".printk_index", align 4
@usbtest_do_ioctl._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.36, ptr @.str.2, i32 2628, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"toggle sync failed, iterations left %d\0A\00", [56 x i8] zeroinitializer }, align 32
@usbtest_do_ioctl._entry_ptr.151 = internal global ptr @usbtest_do_ioctl._entry.149, section ".printk_index", align 4
@simple_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 510, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s failed, iterations left %d, status %d (not %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"simple_io\00", [22 x i8] zeroinitializer }, align 32
@simple_io._entry_ptr = internal global ptr @simple_io._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.154 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@simple_check_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 433, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"buf[%d] = %d (not %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"simple_check_buf\00", [47 x i8] zeroinitializer }, align 32
@simple_check_buf._entry_ptr = internal global ptr @simple_check_buf._entry, section ".printk_index", align 4
@check_guard_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 393, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"guard byte[%d] %d (not %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_guard_bytes\00", [46 x i8] zeroinitializer }, align 32
@check_guard_bytes._entry_ptr = internal global ptr @check_guard_bytes._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@perform_sglist.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&timeout.timer)\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@perform_sglist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.2, i32 646, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"perform_sglist failed, iterations left %d, status %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"perform_sglist\00", [17 x i8] zeroinitializer }, align 32
@perform_sglist._entry_ptr = internal global ptr @perform_sglist._entry, section ".printk_index", align 4
@ch9_postconfig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.2, i32 842, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid alt [%d].bAltSetting = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch9_postconfig\00", [17 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr = internal global ptr @ch9_postconfig._entry, section ".printk_index", align 4
@ch9_postconfig._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.2, i32 853, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't set_interface = %d, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.166 = internal global ptr @ch9_postconfig._entry.164, section ".printk_index", align 4
@ch9_postconfig._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.163, ptr @.str.2, i32 861, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"get alt should be %d, was %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.169 = internal global ptr @ch9_postconfig._entry.167, section ".printk_index", align 4
@ch9_postconfig._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.163, ptr @.str.2, i32 881, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"get config --> %d %d (1 %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.172 = internal global ptr @ch9_postconfig._entry.170, section ".printk_index", align 4
@ch9_postconfig._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.163, ptr @.str.2, i32 890, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dev descriptor --> %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.175 = internal global ptr @ch9_postconfig._entry.173, section ".printk_index", align 4
@ch9_postconfig._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.163, ptr @.str.2, i32 907, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bos descriptor --> %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.178 = internal global ptr @ch9_postconfig._entry.176, section ".printk_index", align 4
@ch9_postconfig._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.163, ptr @.str.2, i32 926, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bos descriptor set --> %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.181 = internal global ptr @ch9_postconfig._entry.179, section ".printk_index", align 4
@ch9_postconfig._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.163, ptr @.str.2, i32 943, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"not device capability descriptor, skip\0A\00", [56 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.184 = internal global ptr @ch9_postconfig._entry.182, section ".printk_index", align 4
@ch9_postconfig._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.163, ptr @.str.2, i32 952, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bogus usb 2.0 extension descriptor\0A\00", [60 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.187 = internal global ptr @ch9_postconfig._entry.185, section ".printk_index", align 4
@ch9_postconfig._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.163, ptr @.str.2, i32 960, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bogus superspeed device capability descriptor\0A\00", [49 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.190 = internal global ptr @ch9_postconfig._entry.188, section ".printk_index", align 4
@ch9_postconfig._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.163, ptr @.str.2, i32 968, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bogus container id descriptor\0A\00", [33 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.193 = internal global ptr @ch9_postconfig._entry.191, section ".printk_index", align 4
@ch9_postconfig._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.163, ptr @.str.2, i32 985, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"config [%d] descriptor --> %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.196 = internal global ptr @ch9_postconfig._entry.194, section ".printk_index", align 4
@ch9_postconfig._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.163, ptr @.str.2, i32 1006, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hs dev qualifier --> %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.199 = internal global ptr @ch9_postconfig._entry.197, section ".printk_index", align 4
@ch9_postconfig._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.163, ptr @.str.2, i32 1011, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dev qualifier --> %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.202 = internal global ptr @ch9_postconfig._entry.200, section ".printk_index", align 4
@ch9_postconfig._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.163, ptr @.str.2, i32 1026, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"other speed config --> %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.205 = internal global ptr @ch9_postconfig._entry.203, section ".printk_index", align 4
@ch9_postconfig._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.163, ptr @.str.2, i32 1037, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get dev status --> %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.208 = internal global ptr @ch9_postconfig._entry.206, section ".printk_index", align 4
@ch9_postconfig._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.163, ptr @.str.2, i32 1048, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"get interface status --> %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ch9_postconfig._entry_ptr.211 = internal global ptr @ch9_postconfig._entry.209, section ".printk_index", align 4
@is_good_ext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.2, i32 749, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bogus usb 2.0 extension descriptor length\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"is_good_ext\00", [20 x i8] zeroinitializer }, align 32
@is_good_ext._entry_ptr = internal global ptr @is_good_ext._entry, section ".printk_index", align 4
@is_good_ext._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.213, ptr @.str.2, i32 756, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reserved bits set\0A\00", [45 x i8] zeroinitializer }, align 32
@is_good_ext._entry_ptr.216 = internal global ptr @is_good_ext._entry.214, section ".printk_index", align 4
@is_good_ss_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.2, i32 770, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"bogus superspeed device capability descriptor length\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"is_good_ss_cap\00", [17 x i8] zeroinitializer }, align 32
@is_good_ss_cap._entry_ptr = internal global ptr @is_good_ss_cap._entry, section ".printk_index", align 4
@is_good_ss_cap._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.218, ptr @.str.2, i32 779, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"reserved bits set in bmAttributes\0A\00", [61 x i8] zeroinitializer }, align 32
@is_good_ss_cap._entry_ptr.221 = internal global ptr @is_good_ss_cap._entry.219, section ".printk_index", align 4
@is_good_ss_cap._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.218, ptr @.str.2, i32 785, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"reserved bits set in wSpeedSupported\0A\00", [58 x i8] zeroinitializer }, align 32
@is_good_ss_cap._entry_ptr.224 = internal global ptr @is_good_ss_cap._entry.222, section ".printk_index", align 4
@is_good_con_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.2, i32 799, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bogus container id descriptor length\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"is_good_con_id\00", [17 x i8] zeroinitializer }, align 32
@is_good_con_id._entry_ptr = internal global ptr @is_good_con_id._entry, section ".printk_index", align 4
@is_good_con_id._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.226, ptr @.str.2, i32 804, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@is_good_con_id._entry_ptr.228 = internal global ptr @is_good_con_id._entry.227, section ".printk_index", align 4
@is_good_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.230, ptr @.str.2, i32 716, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bogus config descriptor length\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"is_good_config\00", [17 x i8] zeroinitializer }, align 32
@is_good_config._entry_ptr = internal global ptr @is_good_config._entry, section ".printk_index", align 4
@is_good_config._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.230, ptr @.str.2, i32 721, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"high bit of config attributes not set\0A\00", [57 x i8] zeroinitializer }, align 32
@is_good_config._entry_ptr.233 = internal global ptr @is_good_config._entry.231, section ".printk_index", align 4
@is_good_config._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.230, ptr @.str.2, i32 725, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reserved config bits set\0A\00", [38 x i8] zeroinitializer }, align 32
@is_good_config._entry_ptr.236 = internal global ptr @is_good_config._entry.234, section ".printk_index", align 4
@is_good_config._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.230, ptr @.str.2, i32 737, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bogus config descriptor read size\0A\00", [61 x i8] zeroinitializer }, align 32
@is_good_config._entry_ptr.239 = internal global ptr @is_good_config._entry.237, section ".printk_index", align 4
@test_ctrl_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.240 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&context.lock\00", [18 x i8] zeroinitializer }, align 32
@test_ctrl_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.242, ptr @.str.2, i32 1364, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bogus number of ctrl queue testcases!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"test_ctrl_queue\00", [16 x i8] zeroinitializer }, align 32
@test_ctrl_queue._entry_ptr = internal global ptr @test_ctrl_queue._entry, section ".printk_index", align 4
@test_ctrl_queue._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.242, ptr @.str.2, i32 1392, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't submit urb[%d], status %d\0A\00", [63 x i8] zeroinitializer }, align 32
@test_ctrl_queue._entry_ptr.245 = internal global ptr @test_ctrl_queue._entry.243, section ".printk_index", align 4
@ctrl_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.247, ptr @.str.2, i32 1110, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"subcase %d completed out of order, last %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctrl_complete\00", [18 x i8] zeroinitializer }, align 32
@ctrl_complete._entry_ptr = internal global ptr @ctrl_complete._entry, section ".printk_index", align 4
@ctrl_complete._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.247, ptr @.str.2, i32 1135, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"subtest %d error, status %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ctrl_complete._entry_ptr.250 = internal global ptr @ctrl_complete._entry.248, section ".printk_index", align 4
@ctrl_complete._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.247, ptr @.str.2, i32 1150, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"control queue %02x.%02x, err %d, %d left, subcase %d, len %d/%d\0A\00", [63 x i8] zeroinitializer }, align 32
@ctrl_complete._entry_ptr.253 = internal global ptr @ctrl_complete._entry.251, section ".printk_index", align 4
@ctrl_complete._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.247, ptr @.str.2, i32 1174, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"urb unlink --> %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ctrl_complete._entry_ptr.256 = internal global ptr @ctrl_complete._entry.254, section ".printk_index", align 4
@ctrl_complete._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.247, ptr @.str.2, i32 1187, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't resubmit ctrl %02x.%02x, err %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ctrl_complete._entry_ptr.259 = internal global ptr @ctrl_complete._entry.257, section ".printk_index", align 4
@unlink1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.261, ptr @.str.2, i32 1461, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"submit fail %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unlink1\00", [24 x i8] zeroinitializer }, align 32
@unlink1._entry_ptr = internal global ptr @unlink1._entry, section ".printk_index", align 4
@unlink1._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.261, ptr @.str.2, i32 1485, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unlink retry\0A\00", [18 x i8] zeroinitializer }, align 32
@unlink1._entry_ptr.264 = internal global ptr @unlink1._entry.262, section ".printk_index", align 4
@unlink1._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.261, ptr @.str.2, i32 1493, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unlink fail %d\0A\00", [16 x i8] zeroinitializer }, align 32
@unlink1._entry_ptr.267 = internal global ptr @unlink1._entry.265, section ".printk_index", align 4
@test_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.269, ptr @.str.2, i32 1691, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ep %02x couldn't set halt, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"test_halt\00", [22 x i8] zeroinitializer }, align 32
@test_halt._entry_ptr = internal global ptr @test_halt._entry, section ".printk_index", align 4
@test_halt._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.269, ptr @.str.2, i32 1702, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ep %02x couldn't clear halt, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@test_halt._entry_ptr.272 = internal global ptr @test_halt._entry.270, section ".printk_index", align 4
@test_halt._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.269, ptr @.str.2, i32 1710, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@test_halt._entry_ptr.274 = internal global ptr @test_halt._entry.273, section ".printk_index", align 4
@verify_not_halted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.276, ptr @.str.2, i32 1638, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ep %02x couldn't get no-halt status, %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"verify_not_halted\00", [46 x i8] zeroinitializer }, align 32
@verify_not_halted._entry_ptr = internal global ptr @verify_not_halted._entry, section ".printk_index", align 4
@verify_not_halted._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.276, ptr @.str.2, i32 1642, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ep %02x bogus status: %04x != 0\0A\00", [63 x i8] zeroinitializer }, align 32
@verify_not_halted._entry_ptr.279 = internal global ptr @verify_not_halted._entry.277, section ".printk_index", align 4
@verify_halted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.281, ptr @.str.2, i32 1660, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ep %02x couldn't get halt status, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"verify_halted\00", [18 x i8] zeroinitializer }, align 32
@verify_halted._entry_ptr = internal global ptr @verify_halted._entry, section ".printk_index", align 4
@verify_halted._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.281, ptr @.str.2, i32 1664, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ep %02x bogus status: %04x != 1\0A\00", [63 x i8] zeroinitializer }, align 32
@verify_halted._entry_ptr.284 = internal global ptr @verify_halted._entry.282, section ".printk_index", align 4
@.str.285 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"verify_still_halted\00", [44 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@ctrl_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.289, ptr @.str.2, i32 1855, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ctrl_out, wlen %d (expected %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctrl_out\00", [23 x i8] zeroinitializer }, align 32
@ctrl_out._entry_ptr = internal global ptr @ctrl_out._entry, section ".printk_index", align 4
@.str.290 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@ctrl_out._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.289, ptr @.str.2, i32 1869, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ctrl_out, rlen %d (expected %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@ctrl_out._entry_ptr.293 = internal global ptr @ctrl_out._entry.291, section ".printk_index", align 4
@ctrl_out._entry.294 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.295, ptr @.str.289, ptr @.str.2, i32 1879, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ctrl_out, byte %d is %d not %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ctrl_out._entry_ptr.296 = internal global ptr @ctrl_out._entry.294, section ".printk_index", align 4
@.str.297 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"verify\00", [25 x i8] zeroinitializer }, align 32
@ctrl_out._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.289, ptr @.str.2, i32 1901, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ctrl_out %s failed, code %d, count %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ctrl_out._entry_ptr.300 = internal global ptr @ctrl_out._entry.298, section ".printk_index", align 4
@test_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@test_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.302, ptr @.str.2, i32 2097, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"iso period %d %sframes, wMaxPacket %d, transactions: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"test_queue\00", [21 x i8] zeroinitializer }, align 32
@test_queue._entry_ptr = internal global ptr @test_queue._entry, section ".printk_index", align 4
@.str.303 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"micro\00", [26 x i8] zeroinitializer }, align 32
@test_queue._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.305, ptr @.str.302, ptr @.str.2, i32 2103, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"total %lu msec (%lu packets)\0A\00", [34 x i8] zeroinitializer }, align 32
@test_queue._entry_ptr.306 = internal global ptr @test_queue._entry.304, section ".printk_index", align 4
@test_queue._entry.307 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.302, ptr @.str.2, i32 2111, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"submit iso[%d], error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@test_queue._entry_ptr.309 = internal global ptr @test_queue._entry.307, section ".printk_index", align 4
@complicated_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.310, ptr @.str.311, ptr @.str.2, i32 1953, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"resubmit err %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"complicated_callback\00", [43 x i8] zeroinitializer }, align 32
@complicated_callback._entry_ptr = internal global ptr @complicated_callback._entry, section ".printk_index", align 4
@complicated_callback._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.313, ptr @.str.311, ptr @.str.2, i32 1967, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"during the test, %lu errors out of %lu\0A\00", [56 x i8] zeroinitializer }, align 32
@complicated_callback._entry_ptr.314 = internal global ptr @complicated_callback._entry.312, section ".printk_index", align 4
@unlink_queued._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.316, ptr @.str.2, i32 1599, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"submit urbs[%d] fail %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unlink_queued\00", [18 x i8] zeroinitializer }, align 32
@unlink_queued._entry_ptr = internal global ptr @unlink_queued._entry, section ".printk_index", align 4
@test_toggle_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.317, ptr @.str.2, i32 1729, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_toggle_sync\00", [47 x i8] zeroinitializer }, align 32
@test_toggle_sync._entry_ptr = internal global ptr @test_toggle_sync._entry, section ".printk_index", align 4
@test_toggle_sync._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.317, ptr @.str.2, i32 1741, ptr @.str.34, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@test_toggle_sync._entry_ptr.319 = internal global ptr @test_toggle_sync._entry.318, section ".printk_index", align 4
@ez1_info = internal global { %struct.usbtest_info, [20 x i8] } { %struct.usbtest_info { ptr @.str.320, i8 2, i8 2, i8 0, i32 1 }, [20 x i8] zeroinitializer }, align 32
@ez2_info = internal global { %struct.usbtest_info, [20 x i8] } { %struct.usbtest_info { ptr @.str.321, i8 6, i8 2, i8 0, i32 1 }, [20 x i8] zeroinitializer }, align 32
@fw_info = internal global { %struct.usbtest_info, [20 x i8] } { %struct.usbtest_info { ptr @.str.322, i8 2, i8 2, i8 -32, i32 1 }, [20 x i8] zeroinitializer }, align 32
@gz_info = internal global { %struct.usbtest_info, [20 x i8] } { %struct.usbtest_info { ptr @.str.323, i8 0, i8 0, i8 -16, i32 0 }, [20 x i8] zeroinitializer }, align 32
@um_info = internal global { %struct.usbtest_info, [20 x i8] } { %struct.usbtest_info { ptr @.str.324, i8 0, i8 0, i8 -128, i32 -1 }, [20 x i8] zeroinitializer }, align 32
@um2_info = internal global { %struct.usbtest_info, [20 x i8] } { %struct.usbtest_info { ptr @.str.325, i8 0, i8 0, i8 -96, i32 -1 }, [20 x i8] zeroinitializer }, align 32
@generic_info = internal global { %struct.usbtest_info, [20 x i8] } { %struct.usbtest_info { ptr @.str.326, i8 0, i8 0, i8 0, i32 -1 }, [20 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EZ-USB device\00", [18 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FX2 device\00", [21 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb test device\00", [16 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Linux gadget zero\00", [46 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Linux user mode test driver\00", [36 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Linux user mode ISO test driver\00", [32 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Generic USB device\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3223082340, i64 3223868772]
@__sancov_gen_cov_switch_values.327 = internal global [32 x i64] [i64 30, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29]
@__sancov_gen_cov_switch_values.328 = internal global [4 x i64] [i64 2, i64 32, i64 3223082340, i64 3223868772]
@__sancov_gen_cov_switch_values.329 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.330 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.331 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.332 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 7]
@__sancov_gen_cov_switch_values.333 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 4294967264]
@__sancov_gen_cov_switch_values.334 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 7]
@__sancov_gen_cov_switch_values.335 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.336 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@__sancov_gen_cov_switch_values.337 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.338 = internal global [5 x i64] [i64 3, i64 32, i64 4294967181, i64 4294967253, i64 4294967280]
@__sancov_gen_cov_switch_values.339 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967181, i64 4294967253, i64 4294967280]
@__sancov_gen_cov_switch_values.340 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967277]
@__sancov_gen_cov_switch_values.341 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967192]
@___asan_gen_.342 = private unnamed_addr constant [13 x i8] c"override_alt\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 18, i32 12 }
@___asan_gen_.345 = private unnamed_addr constant [12 x i8] c"mod_pattern\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 338, i32 17 }
@___asan_gen_.348 = private unnamed_addr constant [10 x i8] c"realworld\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 665, i32 17 }
@___asan_gen_.351 = private unnamed_addr constant [16 x i8] c"force_interrupt\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2747, i32 17 }
@___asan_gen_.354 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2752, i32 23 }
@___asan_gen_.357 = private unnamed_addr constant [8 x i8] c"product\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2756, i32 23 }
@___asan_gen_.360 = private unnamed_addr constant [15 x i8] c"usbtest_driver\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 3048, i32 26 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 3064, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2974, i32 35 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2781, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2793, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2808, i32 18 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2814, i32 12 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2818, i32 12 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2826, i32 5 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2842, i32 12 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2844, i32 12 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2846, i32 13 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2848, i32 13 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2850, i32 15 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2852, i32 15 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2856, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2857, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2883, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 337, i32 17 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2690, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2206, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2214, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2223, i32 57 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2229, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2238, i32 57 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2244, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2254, i32 9 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2260, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2270, i32 9 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2278, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2297, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2315, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2333, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2352, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2358, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2365, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2377, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2383, i32 4 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2390, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2396, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2405, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2411, i32 4 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2418, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2430, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2443, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2458, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2465, i32 8 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2471, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2478, i32 8 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2485, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2492, i32 30 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2498, i32 3 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2505, i32 30 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2512, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2525, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2536, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2549, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2556, i32 5 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2568, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2578, i32 57 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2584, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2594, i32 57 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2601, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2610, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2621, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2627, i32 4 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 508, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 87, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 433, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 392, i32 4 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 615, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 644, i32 3 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 840, i32 4 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 852, i32 4 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 860, i32 4 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 880, i32 4 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 890, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 907, i32 4 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 925, i32 4 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 943, i32 5 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 952, i32 6 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 960, i32 6 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 968, i32 6 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 983, i32 4 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1004, i32 5 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1011, i32 4 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1024, i32 6 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1037, i32 3 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1048, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 749, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 756, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 770, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 779, i32 3 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 785, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 799, i32 3 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 804, i32 3 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 716, i32 4 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 721, i32 4 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 725, i32 4 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 737, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1211, i32 2 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1364, i32 4 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1391, i32 4 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1108, i32 4 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1134, i32 4 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1145, i32 4 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1173, i32 6 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1185, i32 4 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1461, i32 3 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1485, i32 5 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1492, i32 5 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1691, i32 3 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1701, i32 4 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1710, i32 3 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1637, i32 3 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1642, i32 3 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1659, i32 3 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1664, i32 3 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1670, i32 46 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1852, i32 11 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1854, i32 5 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1866, i32 11 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1868, i32 5 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1878, i32 5 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1885, i32 11 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1900, i32 3 }
@___asan_gen_.1113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2063, i32 2 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2092, i32 3 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2099, i32 3 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2111, i32 4 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1951, i32 4 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1965, i32 4 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1598, i32 4 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1729, i32 3 }
@___asan_gen_.1170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 1741, i32 3 }
@___asan_gen_.1173 = private unnamed_addr constant [9 x i8] c"ez1_info\00", align 1
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2900, i32 28 }
@___asan_gen_.1176 = private unnamed_addr constant [9 x i8] c"ez2_info\00", align 1
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2908, i32 28 }
@___asan_gen_.1179 = private unnamed_addr constant [8 x i8] c"fw_info\00", align 1
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2917, i32 28 }
@___asan_gen_.1182 = private unnamed_addr constant [8 x i8] c"gz_info\00", align 1
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2932, i32 28 }
@___asan_gen_.1185 = private unnamed_addr constant [8 x i8] c"um_info\00", align 1
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2941, i32 28 }
@___asan_gen_.1188 = private unnamed_addr constant [9 x i8] c"um2_info\00", align 1
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2947, i32 28 }
@___asan_gen_.1191 = private unnamed_addr constant [13 x i8] c"generic_info\00", align 1
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2967, i32 28 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2901, i32 11 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2909, i32 11 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2918, i32 11 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2933, i32 11 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2942, i32 11 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2948, i32 11 }
@___asan_gen_.1212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1213 = private constant [30 x i8] c"../drivers/usb/misc/usbtest.c\00", align 1
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1213, i32 2968, i32 11 }
@llvm.compiler.used = appending global [417 x ptr] [ptr @__UNIQUE_ID_alt238, ptr @__UNIQUE_ID_alttype237, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_force_interrupt246, ptr @__UNIQUE_ID_force_interrupttype245, ptr @__UNIQUE_ID_license256, ptr @__UNIQUE_ID_mod_pattern240, ptr @__UNIQUE_ID_patterntype239, ptr @__UNIQUE_ID_product250, ptr @__UNIQUE_ID_producttype249, ptr @__UNIQUE_ID_realworld242, ptr @__UNIQUE_ID_realworldtype241, ptr @__UNIQUE_ID_vendor248, ptr @__UNIQUE_ID_vendortype247, ptr @__exitcall_usbtest_exit, ptr @__initcall__kmod_usbtest__253_3068_usbtest_init6, ptr @__param_alt, ptr @__param_force_interrupt, ptr @__param_pattern, ptr @__param_product, ptr @__param_realworld, ptr @__param_vendor, ptr @ch9_postconfig._entry, ptr @ch9_postconfig._entry.164, ptr @ch9_postconfig._entry.167, ptr @ch9_postconfig._entry.170, ptr @ch9_postconfig._entry.173, ptr @ch9_postconfig._entry.176, ptr @ch9_postconfig._entry.179, ptr @ch9_postconfig._entry.182, ptr @ch9_postconfig._entry.185, ptr @ch9_postconfig._entry.188, ptr @ch9_postconfig._entry.191, ptr @ch9_postconfig._entry.194, ptr @ch9_postconfig._entry.197, ptr @ch9_postconfig._entry.200, ptr @ch9_postconfig._entry.203, ptr @ch9_postconfig._entry.206, ptr @ch9_postconfig._entry.209, ptr @ch9_postconfig._entry_ptr, ptr @ch9_postconfig._entry_ptr.166, ptr @ch9_postconfig._entry_ptr.169, ptr @ch9_postconfig._entry_ptr.172, ptr @ch9_postconfig._entry_ptr.175, ptr @ch9_postconfig._entry_ptr.178, ptr @ch9_postconfig._entry_ptr.181, ptr @ch9_postconfig._entry_ptr.184, ptr @ch9_postconfig._entry_ptr.187, ptr @ch9_postconfig._entry_ptr.190, ptr @ch9_postconfig._entry_ptr.193, ptr @ch9_postconfig._entry_ptr.196, ptr @ch9_postconfig._entry_ptr.199, ptr @ch9_postconfig._entry_ptr.202, ptr @ch9_postconfig._entry_ptr.205, ptr @ch9_postconfig._entry_ptr.208, ptr @ch9_postconfig._entry_ptr.211, ptr @check_guard_bytes._entry, ptr @check_guard_bytes._entry_ptr, ptr @complicated_callback._entry, ptr @complicated_callback._entry.312, ptr @complicated_callback._entry_ptr, ptr @complicated_callback._entry_ptr.314, ptr @ctrl_complete._entry, ptr @ctrl_complete._entry.248, ptr @ctrl_complete._entry.251, ptr @ctrl_complete._entry.254, ptr @ctrl_complete._entry.257, ptr @ctrl_complete._entry_ptr, ptr @ctrl_complete._entry_ptr.250, ptr @ctrl_complete._entry_ptr.253, ptr @ctrl_complete._entry_ptr.256, ptr @ctrl_complete._entry_ptr.259, ptr @ctrl_out._entry, ptr @ctrl_out._entry.291, ptr @ctrl_out._entry.294, ptr @ctrl_out._entry.298, ptr @ctrl_out._entry_ptr, ptr @ctrl_out._entry_ptr.293, ptr @ctrl_out._entry_ptr.296, ptr @ctrl_out._entry_ptr.300, ptr @is_good_con_id._entry, ptr @is_good_con_id._entry.227, ptr @is_good_con_id._entry_ptr, ptr @is_good_con_id._entry_ptr.228, ptr @is_good_config._entry, ptr @is_good_config._entry.231, ptr @is_good_config._entry.234, ptr @is_good_config._entry.237, ptr @is_good_config._entry_ptr, ptr @is_good_config._entry_ptr.233, ptr @is_good_config._entry_ptr.236, ptr @is_good_config._entry_ptr.239, ptr @is_good_ext._entry, ptr @is_good_ext._entry.214, ptr @is_good_ext._entry_ptr, ptr @is_good_ext._entry_ptr.216, ptr @is_good_ss_cap._entry, ptr @is_good_ss_cap._entry.219, ptr @is_good_ss_cap._entry.222, ptr @is_good_ss_cap._entry_ptr, ptr @is_good_ss_cap._entry_ptr.221, ptr @is_good_ss_cap._entry_ptr.224, ptr @perform_sglist._entry, ptr @perform_sglist._entry_ptr, ptr @simple_check_buf._entry, ptr @simple_check_buf._entry_ptr, ptr @simple_io._entry, ptr @simple_io._entry_ptr, ptr @test_ctrl_queue._entry, ptr @test_ctrl_queue._entry.243, ptr @test_ctrl_queue._entry_ptr, ptr @test_ctrl_queue._entry_ptr.245, ptr @test_halt._entry, ptr @test_halt._entry.270, ptr @test_halt._entry.273, ptr @test_halt._entry_ptr, ptr @test_halt._entry_ptr.272, ptr @test_halt._entry_ptr.274, ptr @test_queue._entry, ptr @test_queue._entry.304, ptr @test_queue._entry.307, ptr @test_queue._entry_ptr, ptr @test_queue._entry_ptr.306, ptr @test_queue._entry_ptr.309, ptr @test_toggle_sync._entry, ptr @test_toggle_sync._entry.318, ptr @test_toggle_sync._entry_ptr, ptr @test_toggle_sync._entry_ptr.319, ptr @unlink1._entry, ptr @unlink1._entry.262, ptr @unlink1._entry.265, ptr @unlink1._entry_ptr, ptr @unlink1._entry_ptr.264, ptr @unlink1._entry_ptr.267, ptr @unlink_queued._entry, ptr @unlink_queued._entry_ptr, ptr @usbtest_do_ioctl._entry, ptr @usbtest_do_ioctl._entry.101, ptr @usbtest_do_ioctl._entry.105, ptr @usbtest_do_ioctl._entry.109, ptr @usbtest_do_ioctl._entry.113, ptr @usbtest_do_ioctl._entry.117, ptr @usbtest_do_ioctl._entry.120, ptr @usbtest_do_ioctl._entry.123, ptr @usbtest_do_ioctl._entry.126, ptr @usbtest_do_ioctl._entry.129, ptr @usbtest_do_ioctl._entry.132, ptr @usbtest_do_ioctl._entry.136, ptr @usbtest_do_ioctl._entry.140, ptr @usbtest_do_ioctl._entry.143, ptr @usbtest_do_ioctl._entry.146, ptr @usbtest_do_ioctl._entry.149, ptr @usbtest_do_ioctl._entry.37, ptr @usbtest_do_ioctl._entry.41, ptr @usbtest_do_ioctl._entry.45, ptr @usbtest_do_ioctl._entry.49, ptr @usbtest_do_ioctl._entry.53, ptr @usbtest_do_ioctl._entry.56, ptr @usbtest_do_ioctl._entry.59, ptr @usbtest_do_ioctl._entry.62, ptr @usbtest_do_ioctl._entry.65, ptr @usbtest_do_ioctl._entry.68, ptr @usbtest_do_ioctl._entry.71, ptr @usbtest_do_ioctl._entry.74, ptr @usbtest_do_ioctl._entry.77, ptr @usbtest_do_ioctl._entry.80, ptr @usbtest_do_ioctl._entry.83, ptr @usbtest_do_ioctl._entry.86, ptr @usbtest_do_ioctl._entry.89, ptr @usbtest_do_ioctl._entry.92, ptr @usbtest_do_ioctl._entry.95, ptr @usbtest_do_ioctl._entry.98, ptr @usbtest_do_ioctl._entry_ptr, ptr @usbtest_do_ioctl._entry_ptr.100, ptr @usbtest_do_ioctl._entry_ptr.103, ptr @usbtest_do_ioctl._entry_ptr.107, ptr @usbtest_do_ioctl._entry_ptr.111, ptr @usbtest_do_ioctl._entry_ptr.115, ptr @usbtest_do_ioctl._entry_ptr.119, ptr @usbtest_do_ioctl._entry_ptr.122, ptr @usbtest_do_ioctl._entry_ptr.125, ptr @usbtest_do_ioctl._entry_ptr.128, ptr @usbtest_do_ioctl._entry_ptr.131, ptr @usbtest_do_ioctl._entry_ptr.134, ptr @usbtest_do_ioctl._entry_ptr.138, ptr @usbtest_do_ioctl._entry_ptr.142, ptr @usbtest_do_ioctl._entry_ptr.145, ptr @usbtest_do_ioctl._entry_ptr.148, ptr @usbtest_do_ioctl._entry_ptr.151, ptr @usbtest_do_ioctl._entry_ptr.39, ptr @usbtest_do_ioctl._entry_ptr.43, ptr @usbtest_do_ioctl._entry_ptr.47, ptr @usbtest_do_ioctl._entry_ptr.51, ptr @usbtest_do_ioctl._entry_ptr.55, ptr @usbtest_do_ioctl._entry_ptr.58, ptr @usbtest_do_ioctl._entry_ptr.61, ptr @usbtest_do_ioctl._entry_ptr.64, ptr @usbtest_do_ioctl._entry_ptr.67, ptr @usbtest_do_ioctl._entry_ptr.70, ptr @usbtest_do_ioctl._entry_ptr.73, ptr @usbtest_do_ioctl._entry_ptr.76, ptr @usbtest_do_ioctl._entry_ptr.79, ptr @usbtest_do_ioctl._entry_ptr.82, ptr @usbtest_do_ioctl._entry_ptr.85, ptr @usbtest_do_ioctl._entry_ptr.88, ptr @usbtest_do_ioctl._entry_ptr.91, ptr @usbtest_do_ioctl._entry_ptr.94, ptr @usbtest_do_ioctl._entry_ptr.97, ptr @usbtest_exit, ptr @usbtest_ioctl._entry, ptr @usbtest_ioctl._entry_ptr, ptr @usbtest_probe._entry, ptr @usbtest_probe._entry.12, ptr @usbtest_probe._entry.22, ptr @usbtest_probe._entry.25, ptr @usbtest_probe._entry_ptr, ptr @usbtest_probe._entry_ptr.15, ptr @usbtest_probe._entry_ptr.24, ptr @usbtest_probe._entry_ptr.27, ptr @verify_halted._entry, ptr @verify_halted._entry.282, ptr @verify_halted._entry_ptr, ptr @verify_halted._entry_ptr.284, ptr @verify_not_halted._entry, ptr @verify_not_halted._entry.277, ptr @verify_not_halted._entry_ptr, ptr @verify_not_halted._entry_ptr.279, ptr @override_alt, ptr @mod_pattern, ptr @realworld, ptr @force_interrupt, ptr @vendor, ptr @product, ptr @usbtest_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @id_table, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @usbtest_probe.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @pattern, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @init_completion.__key, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @perform_sglist.__key, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.212, ptr @.str.213, ptr @.str.215, ptr @.str.217, ptr @.str.218, ptr @.str.220, ptr @.str.223, ptr @.str.225, ptr @.str.226, ptr @.str.229, ptr @.str.230, ptr @.str.232, ptr @.str.235, ptr @.str.238, ptr @test_ctrl_queue.__key, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.244, ptr @.str.246, ptr @.str.247, ptr @.str.249, ptr @.str.252, ptr @.str.255, ptr @.str.258, ptr @.str.260, ptr @.str.261, ptr @.str.263, ptr @.str.266, ptr @.str.268, ptr @.str.269, ptr @.str.271, ptr @.str.275, ptr @.str.276, ptr @.str.278, ptr @.str.280, ptr @.str.281, ptr @.str.283, ptr @.str.285, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.292, ptr @.str.295, ptr @.str.297, ptr @.str.299, ptr @test_queue.__key, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.305, ptr @.str.308, ptr @.str.310, ptr @.str.311, ptr @.str.313, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @ez1_info, ptr @ez2_info, ptr @fw_info, ptr @gz_info, ptr @um_info, ptr @um2_info, ptr @generic_info, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326], section "llvm.metadata"
@0 = internal global [291 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @override_alt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mod_pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realworld to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_interrupt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @product to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbtest_do_ioctl._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_check_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_guard_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perform_sglist.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @perform_sglist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9_postconfig._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_good_ext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_good_ext._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_good_ss_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_good_ss_cap._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_good_ss_cap._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_good_con_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_good_con_id._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_good_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_good_config._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_good_config._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_good_config._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ctrl_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ctrl_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_ctrl_queue._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_complete._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_complete._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_complete._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_complete._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unlink1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unlink1._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unlink1._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_halt._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_halt._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_not_halted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_not_halted._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_halted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_halted._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_out._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_out._entry.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_out._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_queue._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_queue._entry.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @complicated_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @complicated_callback._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unlink_queued._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_toggle_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_toggle_sync._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ez1_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ez2_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gz_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @um_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @um2_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtest_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtest_init.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtest_init, %if.then4)) #10
          to label %if.end6 [label %if.then4], !srcloc !606

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load i16, ptr @vendor, align 2
  %conv = zext i16 %1 to i32
  %2 = load i16, ptr @product, align 2
  %conv5 = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @usbtest_init.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv5) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.body, %entry.if.end6_crit_edge
  %call7 = tail call i32 @usb_register_driver(ptr noundef nonnull @usbtest_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usbtest_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @usbtest_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtest_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then:                                          ; preds = %entry
  %4 = load i16, ptr @vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.then.cleanup133_crit_edge, label %lor.lhs.false

if.then.cleanup133_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup133

lor.lhs.false:                                    ; preds = %if.then
  %idVendor = getelementptr i8, ptr %1, i32 936
  %5 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idVendor, align 8
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %4)
  %cmp4.not = icmp eq i16 %7, %4
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.cleanup133_crit_edge

lor.lhs.false.cleanup133_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup133

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i16, ptr @product, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool8.not = icmp eq i16 %8, 0
  br i1 %tobool8.not, label %if.end.do.end_crit_edge, label %land.lhs.true

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %idProduct = getelementptr i8, ptr %1, i32 938
  %9 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %idProduct, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %8)
  %cmp12.not = icmp eq i16 %11, %8
  br i1 %cmp12.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.cleanup133_crit_edge

land.lhs.true.cleanup133_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup133

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev16 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %conv19 = zext i16 %4 to i32
  %idProduct21 = getelementptr i8, ptr %1, i32 938
  %12 = ptrtoint ptr %idProduct21 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %idProduct21, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv22 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.4, i32 noundef %conv19, i32 noundef %conv22) #13
  br label %if.end23

if.end23:                                         ; preds = %do.end, %entry.if.end23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 144) #14
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %if.end23.cleanup133_crit_edge, label %if.end27

if.end23.cleanup133_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup133

if.end27:                                         ; preds = %if.end23
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %16 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_info, align 4
  %18 = inttoptr i32 %17 to ptr
  %info28 = getelementptr inbounds %struct.usbtest_dev, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %info28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %info28, align 4
  %lock = getelementptr inbounds %struct.usbtest_dev, ptr %call7.i.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @usbtest_probe.__key) #10
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %intf, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 256) #14
  %buf = getelementptr inbounds %struct.usbtest_dev, ptr %call7.i.i, i32 0, i32 13
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i, ptr %buf, align 4
  %cmp35 = icmp eq ptr %call7.i, null
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup133

if.end38:                                         ; preds = %if.end27
  %23 = load i32, ptr @force_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool39.not = icmp eq i32 %23, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %if.end38.if.then43_crit_edge

if.end38.if.then43_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

lor.lhs.false40:                                  ; preds = %if.end38
  %speed = getelementptr i8, ptr %1, i32 -100
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp41 = icmp eq i32 %25, 1
  br i1 %cmp41, label %lor.lhs.false40.if.then43_crit_edge, label %if.else

lor.lhs.false40.if.then43_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false40.if.then43_crit_edge, %if.end38.if.then43_crit_edge
  %ep_in = getelementptr inbounds %struct.usbtest_info, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %ep_in to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ep_in, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool44.not = icmp eq i8 %27, 0
  br i1 %tobool44.not, label %if.then43.if.end50_crit_edge, label %if.then45

if.then43.if.end50_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then45:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %conv47 = zext i8 %27 to i32
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %29, 8
  %shl1.i = shl nuw nsw i32 %conv47, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or49 = or i32 %or.i, 1073741952
  %in_pipe = getelementptr inbounds %struct.usbtest_dev, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %in_pipe to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or49, ptr %in_pipe, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.then43.if.end50_crit_edge
  %rtest.0 = phi ptr [ @.str.10, %if.then45 ], [ @.str.9, %if.then43.if.end50_crit_edge ]
  %ep_out = getelementptr inbounds %struct.usbtest_info, ptr %18, i32 0, i32 2
  %31 = ptrtoint ptr %ep_out to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ep_out, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool51.not = icmp eq i8 %32, 0
  br i1 %tobool51.not, label %if.end50.if.end115_crit_edge, label %if.then52

if.end50.if.end115_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %conv54 = zext i8 %32 to i32
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i, align 8
  %shl.i199 = shl i32 %34, 8
  %shl1.i200 = shl nuw nsw i32 %conv54, 15
  %or.i201 = or i32 %shl1.i200, %shl.i199
  %or56 = or i32 %or.i201, 1073741824
  %out_pipe = getelementptr inbounds %struct.usbtest_dev, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %out_pipe to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or56, ptr %out_pipe, align 4
  br label %if.end115

if.else:                                          ; preds = %lor.lhs.false40
  %36 = load i32, ptr @override_alt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp58 = icmp sgt i32 %36, -1
  br i1 %cmp58, label %if.else.if.then62_crit_edge, label %lor.lhs.false60

if.else.if.then62_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false60:                                  ; preds = %if.else
  %autoconf = getelementptr inbounds %struct.usbtest_info, ptr %18, i32 0, i32 3
  %37 = ptrtoint ptr %autoconf to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %autoconf, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool61.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool61.not, label %if.else74, label %lor.lhs.false60.if.then62_crit_edge

lor.lhs.false60.if.then62_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false60.if.then62_crit_edge, %if.else.if.then62_crit_edge
  %call63 = tail call fastcc i32 @get_endpoints(ptr noundef nonnull %call7.i.i, ptr noundef %intf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %do.end69, label %if.then62.if.end94_crit_edge

if.then62.if.end94_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

do.end69:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i, align 8
  %dev71 = getelementptr inbounds %struct.usb_interface, ptr %39, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev71, ptr noundef nonnull @.str.13, i32 noundef %call63) #13
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %41) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup133

if.else74:                                        ; preds = %lor.lhs.false60
  %ep_in75 = getelementptr inbounds %struct.usbtest_info, ptr %18, i32 0, i32 1
  %42 = ptrtoint ptr %ep_in75 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ep_in75, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool76.not = icmp eq i8 %43, 0
  br i1 %tobool76.not, label %if.else74.if.end84_crit_edge, label %if.then77

if.else74.if.end84_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then77:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #12
  %conv79 = zext i8 %43 to i32
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i, align 8
  %shl.i202 = shl i32 %45, 8
  %shl1.i203 = shl nuw nsw i32 %conv79, 15
  %or.i204 = or i32 %shl1.i203, %shl.i202
  %or82 = or i32 %or.i204, -1073741696
  %in_pipe83 = getelementptr inbounds %struct.usbtest_dev, ptr %call7.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %in_pipe83 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or82, ptr %in_pipe83, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then77, %if.else74.if.end84_crit_edge
  %ep_out85 = getelementptr inbounds %struct.usbtest_info, ptr %18, i32 0, i32 2
  %47 = ptrtoint ptr %ep_out85 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ep_out85, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool86.not = icmp eq i8 %48, 0
  br i1 %tobool86.not, label %if.end84.if.end94_crit_edge, label %if.then87

if.end84.if.end94_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %conv89 = zext i8 %48 to i32
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i, align 8
  %shl.i205 = shl i32 %50, 8
  %shl1.i206 = shl nuw nsw i32 %conv89, 15
  %or.i207 = or i32 %shl1.i206, %shl.i205
  %or91 = or i32 %or.i207, -1073741824
  %out_pipe92 = getelementptr inbounds %struct.usbtest_dev, ptr %call7.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %out_pipe92 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or91, ptr %out_pipe92, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then87, %if.end84.if.end94_crit_edge, %if.then62.if.end94_crit_edge
  %in_pipe95 = getelementptr inbounds %struct.usbtest_dev, ptr %call7.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %in_pipe95 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %in_pipe95, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool96.not = icmp eq i32 %53, 0
  %spec.select = select i1 %tobool96.not, ptr @.str.9, ptr @.str.16
  %out_pipe99 = getelementptr inbounds %struct.usbtest_dev, ptr %call7.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %out_pipe99 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %out_pipe99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool100.not = icmp eq i32 %55, 0
  %wtest.0 = select i1 %tobool100.not, ptr @.str.9, ptr @.str.17
  %in_iso_pipe = getelementptr inbounds %struct.usbtest_dev, ptr %call7.i.i, i32 0, i32 4
  %56 = ptrtoint ptr %in_iso_pipe to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %in_iso_pipe, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool103.not = icmp eq i32 %57, 0
  %irtest.0 = select i1 %tobool103.not, ptr @.str.9, ptr @.str.18
  %out_iso_pipe = getelementptr inbounds %struct.usbtest_dev, ptr %call7.i.i, i32 0, i32 5
  %58 = ptrtoint ptr %out_iso_pipe to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %out_iso_pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool106.not = icmp eq i32 %59, 0
  %iwtest.0 = select i1 %tobool106.not, ptr @.str.9, ptr @.str.19
  %in_int_pipe = getelementptr inbounds %struct.usbtest_dev, ptr %call7.i.i, i32 0, i32 6
  %60 = ptrtoint ptr %in_int_pipe to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %in_int_pipe, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool109.not = icmp eq i32 %61, 0
  %intrtest.0 = select i1 %tobool109.not, ptr @.str.9, ptr @.str.20
  %out_int_pipe = getelementptr inbounds %struct.usbtest_dev, ptr %call7.i.i, i32 0, i32 7
  %62 = ptrtoint ptr %out_int_pipe to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %out_int_pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool112.not = icmp eq i32 %63, 0
  %spec.select198 = select i1 %tobool112.not, ptr @.str.9, ptr @.str.21
  br label %if.end115

if.end115:                                        ; preds = %if.end94, %if.then52, %if.end50.if.end115_crit_edge
  %rtest.2 = phi ptr [ %rtest.0, %if.then52 ], [ %rtest.0, %if.end50.if.end115_crit_edge ], [ %spec.select, %if.end94 ]
  %wtest.1 = phi ptr [ @.str.11, %if.then52 ], [ @.str.9, %if.end50.if.end115_crit_edge ], [ %wtest.0, %if.end94 ]
  %irtest.1 = phi ptr [ @.str.9, %if.then52 ], [ @.str.9, %if.end50.if.end115_crit_edge ], [ %irtest.0, %if.end94 ]
  %iwtest.1 = phi ptr [ @.str.9, %if.then52 ], [ @.str.9, %if.end50.if.end115_crit_edge ], [ %iwtest.0, %if.end94 ]
  %intrtest.1 = phi ptr [ @.str.9, %if.then52 ], [ @.str.9, %if.end50.if.end115_crit_edge ], [ %intrtest.0, %if.end94 ]
  %intwtest.0 = phi ptr [ @.str.9, %if.then52 ], [ @.str.9, %if.end50.if.end115_crit_edge ], [ %spec.select198, %if.end94 ]
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %dev119 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %65 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev119, ptr noundef nonnull @.str.23, ptr noundef %66) #13
  %speed124 = getelementptr i8, ptr %1, i32 -100
  %67 = ptrtoint ptr %speed124 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %speed124, align 4
  %call125 = tail call ptr @usb_speed_string(i32 noundef %68) #10
  %ctrl_out = getelementptr inbounds %struct.usbtest_info, ptr %18, i32 0, i32 3
  %69 = ptrtoint ptr %ctrl_out to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load126 = load i8, ptr %ctrl_out, align 2
  %70 = and i8 %bf.load126, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool129.not = icmp eq i8 %70, 0
  %cond = select i1 %tobool129.not, ptr @.str.9, ptr @.str.28
  %alt = getelementptr inbounds %struct.usbtest_info, ptr %18, i32 0, i32 4
  %71 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %alt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp130 = icmp sgt i32 %72, -1
  %cond132 = select i1 %cmp130, ptr @.str.29, ptr @.str.9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev119, ptr noundef nonnull @.str.26, ptr noundef %call125, ptr noundef nonnull %cond, ptr noundef nonnull %rtest.2, ptr noundef nonnull %wtest.1, ptr noundef nonnull %irtest.1, ptr noundef nonnull %iwtest.1, ptr noundef nonnull %intrtest.1, ptr noundef nonnull %intwtest.0, ptr noundef nonnull %cond132) #13
  br label %cleanup133

cleanup133:                                       ; preds = %if.end115, %do.end69, %if.then37, %if.end23.cleanup133_crit_edge, %land.lhs.true.cleanup133_crit_edge, %lor.lhs.false.cleanup133_crit_edge, %if.then.cleanup133_crit_edge
  %retval.1 = phi i32 [ -12, %if.then37 ], [ 0, %if.end115 ], [ -19, %lor.lhs.false.cleanup133_crit_edge ], [ -19, %if.then.cleanup133_crit_edge ], [ -19, %land.lhs.true.cleanup133_crit_edge ], [ -12, %if.end23.cleanup133_crit_edge ], [ %call63, %do.end69 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbtest_disconnect(ptr noundef %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbtest_disconnect.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbtest_disconnect, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !606

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbtest_disconnect.__UNIQUE_ID_ddebug251, ptr noundef %dev4, ptr noundef nonnull @.str.31) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %buf = getelementptr inbounds %struct.usbtest_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbtest_ioctl(ptr noundef %intf, i32 noundef %code, ptr noundef %buf) #3 align 64 {
entry:
  %req.i = alloca %struct.usb_sg_request, align 4
  %temp = alloca %struct.usbtest_param_32, align 4
  %start = alloca %struct.timespec64, align 8
  %end = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %temp) #10
  %2 = getelementptr inbounds %struct.usbtest_param_32, ptr %temp, i32 0, i32 1
  %3 = getelementptr inbounds %struct.usbtest_param_32, ptr %temp, i32 0, i32 2
  %4 = getelementptr inbounds %struct.usbtest_param_32, ptr %temp, i32 0, i32 3
  %5 = getelementptr inbounds %struct.usbtest_param_32, ptr %temp, i32 0, i32 4
  %6 = getelementptr inbounds %struct.usbtest_param_32, ptr %temp, i32 0, i32 5
  %7 = getelementptr inbounds %struct.usbtest_param_32, ptr %temp, i32 0, i32 6
  %8 = call ptr @memset(ptr %temp, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %start) #10
  %9 = call ptr @memset(ptr %start, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %end) #10
  %10 = call ptr @memset(ptr %end, i32 255, i32 16)
  %11 = load i32, ptr @mod_pattern, align 4
  store i32 %11, ptr @pattern, align 4
  %lock = getelementptr inbounds %struct.usbtest_dev, ptr %1, i32 0, i32 12
  %call2 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.usbtest_dev, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %alt = getelementptr inbounds %struct.usbtest_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %alt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp = icmp sgt i32 %15, -1
  br i1 %cmp, label %if.then3, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then3:                                         ; preds = %if.end
  %16 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool4.not = icmp eq i8 %19, 0
  br i1 %tobool4.not, label %if.end6, label %if.then3.free_mutex_crit_edge

if.then3.free_mutex_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_mutex

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %15)
  %cmp1.i = icmp ugt i32 %15, 255
  br i1 %cmp1.i, label %if.end6.do.end_crit_edge, label %set_altsetting.exit

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

set_altsetting.exit:                              ; preds = %if.end6
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 -128
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %27 to i32
  %call2.i = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i.i, i32 noundef %conv.i, i32 noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool10.not = icmp eq i32 %call2.i, 0
  br i1 %tobool10.not, label %set_altsetting.exit.if.end16_crit_edge, label %set_altsetting.exit.do.end_crit_edge

set_altsetting.exit.do.end_crit_edge:             ; preds = %set_altsetting.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

set_altsetting.exit.if.end16_crit_edge:           ; preds = %set_altsetting.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end:                                           ; preds = %set_altsetting.exit.do.end_crit_edge, %if.end6.do.end_crit_edge
  %retval.0.i82 = phi i32 [ %call2.i, %set_altsetting.exit.do.end_crit_edge ], [ -22, %if.end6.do.end_crit_edge ]
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %28 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info, align 4
  %alt14 = getelementptr inbounds %struct.usbtest_info, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %alt14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %alt14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.32, i32 noundef %31, i32 noundef %retval.0.i82) #13
  br label %free_mutex

if.end16:                                         ; preds = %set_altsetting.exit.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %32 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %code, label %if.end16.free_mutex_crit_edge [
    i32 -1071098524, label %sw.bb
    i32 -1071884956, label %if.end16.sw.epilog_crit_edge
  ]

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end16.free_mutex_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_mutex

sw.bb:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf, align 8
  %35 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %temp, align 4
  %iterations = getelementptr inbounds %struct.usbtest_param_64, ptr %buf, i32 0, i32 1
  %36 = ptrtoint ptr %iterations to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iterations, align 4
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %2, align 4
  %length = getelementptr inbounds %struct.usbtest_param_64, ptr %buf, i32 0, i32 2
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 8
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %3, align 4
  %sglen = getelementptr inbounds %struct.usbtest_param_64, ptr %buf, i32 0, i32 4
  %42 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sglen, align 8
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %5, align 4
  %vary = getelementptr inbounds %struct.usbtest_param_64, ptr %buf, i32 0, i32 3
  %45 = ptrtoint ptr %vary to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vary, align 4
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %4, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end16.sw.epilog_crit_edge
  %param_32.0 = phi ptr [ %buf, %if.end16.sw.epilog_crit_edge ], [ %temp, %sw.bb ]
  call void @ktime_get_ts64(ptr noundef nonnull %start) #10
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %parent.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %51, i32 0, i32 7, i32 1
  %52 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parent.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %53, i32 -128
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %req.i) #10
  %54 = call ptr @memset(ptr %req.i, i32 255, i32 128)
  %iterations.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 1
  %55 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iterations.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i = icmp eq i32 %56, 0
  br i1 %cmp.i, label %sw.epilog.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end.i77

sw.epilog.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end.i77:                                       ; preds = %sw.epilog
  %sglen.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 4
  %57 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sglen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %58)
  %cmp3.i = icmp ugt i32 %58, 128
  br i1 %cmp3.i, label %if.end.i77.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end5.i

if.end.i77.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end5.i:                                        ; preds = %if.end.i77
  %59 = ptrtoint ptr %param_32.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %param_32.0, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.327)
  switch i32 %60, label %if.end5.i.usbtest_do_ioctl.exit.thread_crit_edge [
    i32 0, label %do.end.i
    i32 1, label %sw.bb7.i
    i32 2, label %sw.bb23.i
    i32 3, label %sw.bb41.i
    i32 4, label %sw.bb63.i
    i32 5, label %sw.bb87.i
    i32 6, label %sw.bb114.i
    i32 7, label %sw.bb141.i
    i32 8, label %sw.bb173.i
    i32 9, label %sw.bb205.i
    i32 10, label %sw.bb222.i
    i32 11, label %sw.bb230.i
    i32 12, label %sw.bb263.i
    i32 13, label %sw.bb296.i
    i32 14, label %sw.bb326.i
    i32 15, label %sw.bb342.i
    i32 16, label %sw.bb358.i
    i32 17, label %sw.bb374.i
    i32 18, label %sw.bb389.i
    i32 19, label %sw.bb404.i
    i32 20, label %sw.bb419.i
    i32 21, label %sw.bb434.i
    i32 22, label %sw.bb457.i
    i32 23, label %sw.bb475.i
    i32 24, label %sw.bb493.i
    i32 25, label %sw.bb531.i
    i32 26, label %sw.bb549.i
    i32 27, label %sw.bb568.i
    i32 28, label %sw.bb588.i
    i32 29, label %sw.bb610.i
  ]

if.end5.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev6.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6.i, ptr noundef nonnull @.str.35) #13
  br label %usbtest_do_ioctl.exit.thread86

sw.bb7.i:                                         ; preds = %if.end5.i
  %out_pipe.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 3
  %62 = ptrtoint ptr %out_pipe.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %out_pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp8.i = icmp eq i32 %63, 0
  br i1 %cmp8.i, label %sw.bb7.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end13.i

sw.bb7.i.usbtest_do_ioctl.exit.thread_crit_edge:  ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end13.i:                                       ; preds = %sw.bb7.i
  %dev14.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %64 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14.i, ptr noundef nonnull @.str.38, i32 noundef %65, i32 noundef %56) #13
  %66 = ptrtoint ptr %out_pipe.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %out_pipe.i, align 4
  %68 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %length.i, align 4
  %call.i.i = call fastcc ptr @usbtest_alloc_urb(ptr noundef %add.ptr.i.i.i, i32 noundef %67, i32 noundef %69, i32 noundef 4, i32 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @simple_callback) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end13.i.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end20.i

do.end13.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end20.i:                                       ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iterations.i, align 4
  %call22.i = call fastcc i32 @simple_io(ptr noundef %49, ptr noundef nonnull %call.i.i, i32 noundef %71, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.40) #10
  call fastcc void @simple_free_urb(ptr noundef nonnull %call.i.i) #10
  br label %usbtest_do_ioctl.exit

sw.bb23.i:                                        ; preds = %if.end5.i
  %in_pipe.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 2
  %72 = ptrtoint ptr %in_pipe.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %in_pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp24.i = icmp eq i32 %73, 0
  br i1 %cmp24.i, label %sw.bb23.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end29.i

sw.bb23.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end29.i:                                       ; preds = %sw.bb23.i
  %dev30.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length31.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %74 = ptrtoint ptr %length31.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %length31.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev30.i, ptr noundef nonnull @.str.42, i32 noundef %75, i32 noundef %56) #13
  %76 = ptrtoint ptr %in_pipe.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %in_pipe.i, align 4
  %78 = ptrtoint ptr %length31.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %length31.i, align 4
  %call.i1016.i = call fastcc ptr @usbtest_alloc_urb(ptr noundef %add.ptr.i.i.i, i32 noundef %77, i32 noundef %79, i32 noundef 4, i32 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @simple_callback) #10
  %tobool36.not.i = icmp eq ptr %call.i1016.i, null
  br i1 %tobool36.not.i, label %do.end29.i.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end38.i

do.end29.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end38.i:                                       ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %iterations.i, align 4
  %call40.i = call fastcc i32 @simple_io(ptr noundef %49, ptr noundef nonnull %call.i1016.i, i32 noundef %81, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.44) #10
  call fastcc void @simple_free_urb(ptr noundef nonnull %call.i1016.i) #10
  br label %usbtest_do_ioctl.exit

sw.bb41.i:                                        ; preds = %if.end5.i
  %out_pipe42.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 3
  %82 = ptrtoint ptr %out_pipe42.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %out_pipe42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp43.i = icmp eq i32 %83, 0
  br i1 %cmp43.i, label %sw.bb41.i.usbtest_do_ioctl.exit.thread_crit_edge, label %lor.lhs.false.i

sw.bb41.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

lor.lhs.false.i:                                  ; preds = %sw.bb41.i
  %vary.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 3
  %84 = ptrtoint ptr %vary.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vary.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp44.i = icmp eq i32 %85, 0
  br i1 %cmp44.i, label %lor.lhs.false.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end49.i

lor.lhs.false.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end49.i:                                       ; preds = %lor.lhs.false.i
  %dev50.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length52.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %86 = ptrtoint ptr %length52.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %length52.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev50.i, ptr noundef nonnull @.str.46, i32 noundef %85, i32 noundef %87, i32 noundef %56) #13
  %88 = ptrtoint ptr %out_pipe42.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %out_pipe42.i, align 4
  %90 = ptrtoint ptr %length52.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %length52.i, align 4
  %call.i1017.i = call fastcc ptr @usbtest_alloc_urb(ptr noundef %add.ptr.i.i.i, i32 noundef %89, i32 noundef %91, i32 noundef 4, i32 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @simple_callback) #10
  %tobool57.not.i = icmp eq ptr %call.i1017.i, null
  br i1 %tobool57.not.i, label %do.end49.i.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end59.i

do.end49.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end59.i:                                       ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %iterations.i, align 4
  %94 = ptrtoint ptr %vary.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %vary.i, align 4
  %call62.i = call fastcc i32 @simple_io(ptr noundef %49, ptr noundef nonnull %call.i1017.i, i32 noundef %93, i32 noundef %95, i32 noundef 0, ptr noundef nonnull @.str.48) #10
  call fastcc void @simple_free_urb(ptr noundef nonnull %call.i1017.i) #10
  br label %usbtest_do_ioctl.exit

sw.bb63.i:                                        ; preds = %if.end5.i
  %in_pipe64.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 2
  %96 = ptrtoint ptr %in_pipe64.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %in_pipe64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp65.i = icmp eq i32 %97, 0
  br i1 %cmp65.i, label %sw.bb63.i.usbtest_do_ioctl.exit.thread_crit_edge, label %lor.lhs.false66.i

sw.bb63.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

lor.lhs.false66.i:                                ; preds = %sw.bb63.i
  %vary67.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 3
  %98 = ptrtoint ptr %vary67.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %vary67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp68.i = icmp eq i32 %99, 0
  br i1 %cmp68.i, label %lor.lhs.false66.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end73.i

lor.lhs.false66.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end73.i:                                       ; preds = %lor.lhs.false66.i
  %dev74.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length76.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %100 = ptrtoint ptr %length76.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %length76.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev74.i, ptr noundef nonnull @.str.50, i32 noundef %99, i32 noundef %101, i32 noundef %56) #13
  %102 = ptrtoint ptr %in_pipe64.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %in_pipe64.i, align 4
  %104 = ptrtoint ptr %length76.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %length76.i, align 4
  %call.i1018.i = call fastcc ptr @usbtest_alloc_urb(ptr noundef %add.ptr.i.i.i, i32 noundef %103, i32 noundef %105, i32 noundef 4, i32 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull @simple_callback) #10
  %tobool81.not.i = icmp eq ptr %call.i1018.i, null
  br i1 %tobool81.not.i, label %do.end73.i.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end83.i

do.end73.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end83.i:                                       ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %iterations.i, align 4
  %108 = ptrtoint ptr %vary67.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %vary67.i, align 4
  %call86.i = call fastcc i32 @simple_io(ptr noundef %49, ptr noundef nonnull %call.i1018.i, i32 noundef %107, i32 noundef %109, i32 noundef 0, ptr noundef nonnull @.str.52) #10
  call fastcc void @simple_free_urb(ptr noundef nonnull %call.i1018.i) #10
  br label %usbtest_do_ioctl.exit

sw.bb87.i:                                        ; preds = %if.end5.i
  %out_pipe88.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 3
  %110 = ptrtoint ptr %out_pipe88.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %out_pipe88.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp89.i = icmp eq i32 %111, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp92.i = icmp eq i32 %58, 0
  %or.cond.i = select i1 %cmp89.i, i1 true, i1 %cmp92.i
  br i1 %or.cond.i, label %sw.bb87.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end97.i

sw.bb87.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end97.i:                                       ; preds = %sw.bb87.i
  %dev98.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length101.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %112 = ptrtoint ptr %length101.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %length101.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev98.i, ptr noundef nonnull @.str.54, i32 noundef %56, i32 noundef %58, i32 noundef %113) #13
  %114 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sglen.i, align 4
  %116 = ptrtoint ptr %length101.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %length101.i, align 4
  %118 = ptrtoint ptr %out_pipe88.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %out_pipe88.i, align 4
  %call105.i = call fastcc ptr @alloc_sglist(i32 noundef %115, i32 noundef %117, i32 noundef 0, ptr noundef %49, i32 noundef %119) #10
  %tobool106.not.i = icmp eq ptr %call105.i, null
  br i1 %tobool106.not.i, label %do.end97.i.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end108.i

do.end97.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %do.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end108.i:                                      ; preds = %do.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %iterations.i, align 4
  %122 = ptrtoint ptr %out_pipe88.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %out_pipe88.i, align 4
  %124 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sglen.i, align 4
  %call112.i = call fastcc i32 @perform_sglist(ptr noundef %49, i32 noundef %121, i32 noundef %123, ptr noundef nonnull %req.i, ptr noundef nonnull %call105.i, i32 noundef %125) #10
  %126 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sglen.i, align 4
  call fastcc void @free_sglist(ptr noundef nonnull %call105.i, i32 noundef %127) #10
  br label %usbtest_do_ioctl.exit

sw.bb114.i:                                       ; preds = %if.end5.i
  %in_pipe115.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 2
  %128 = ptrtoint ptr %in_pipe115.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %in_pipe115.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp116.i = icmp eq i32 %129, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp119.i = icmp eq i32 %58, 0
  %or.cond1005.i = select i1 %cmp116.i, i1 true, i1 %cmp119.i
  br i1 %or.cond1005.i, label %sw.bb114.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end124.i

sw.bb114.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end124.i:                                      ; preds = %sw.bb114.i
  %dev125.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length128.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %130 = ptrtoint ptr %length128.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %length128.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev125.i, ptr noundef nonnull @.str.57, i32 noundef %56, i32 noundef %58, i32 noundef %131) #13
  %132 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sglen.i, align 4
  %134 = ptrtoint ptr %length128.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %length128.i, align 4
  %136 = ptrtoint ptr %in_pipe115.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %in_pipe115.i, align 4
  %call132.i = call fastcc ptr @alloc_sglist(i32 noundef %133, i32 noundef %135, i32 noundef 0, ptr noundef %49, i32 noundef %137) #10
  %tobool133.not.i = icmp eq ptr %call132.i, null
  br i1 %tobool133.not.i, label %do.end124.i.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end135.i

do.end124.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %do.end124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end135.i:                                      ; preds = %do.end124.i
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %iterations.i, align 4
  %140 = ptrtoint ptr %in_pipe115.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %in_pipe115.i, align 4
  %142 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %sglen.i, align 4
  %call139.i = call fastcc i32 @perform_sglist(ptr noundef %49, i32 noundef %139, i32 noundef %141, ptr noundef nonnull %req.i, ptr noundef nonnull %call132.i, i32 noundef %143) #10
  %144 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sglen.i, align 4
  call fastcc void @free_sglist(ptr noundef nonnull %call132.i, i32 noundef %145) #10
  br label %usbtest_do_ioctl.exit

sw.bb141.i:                                       ; preds = %if.end5.i
  %out_pipe142.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 3
  %146 = ptrtoint ptr %out_pipe142.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %out_pipe142.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp143.i = icmp eq i32 %147, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp146.i = icmp eq i32 %58, 0
  %or.cond1006.i = select i1 %cmp143.i, i1 true, i1 %cmp146.i
  br i1 %or.cond1006.i, label %sw.bb141.i.usbtest_do_ioctl.exit.thread_crit_edge, label %lor.lhs.false147.i

sw.bb141.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb141.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

lor.lhs.false147.i:                               ; preds = %sw.bb141.i
  %vary148.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 3
  %148 = ptrtoint ptr %vary148.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %vary148.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp149.i = icmp eq i32 %149, 0
  br i1 %cmp149.i, label %lor.lhs.false147.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end154.i

lor.lhs.false147.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %lor.lhs.false147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end154.i:                                      ; preds = %lor.lhs.false147.i
  %dev155.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length159.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %150 = ptrtoint ptr %length159.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %length159.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev155.i, ptr noundef nonnull @.str.60, i32 noundef %149, i32 noundef %56, i32 noundef %58, i32 noundef %151) #13
  %152 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sglen.i, align 4
  %154 = ptrtoint ptr %length159.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %length159.i, align 4
  %156 = ptrtoint ptr %vary148.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %vary148.i, align 4
  %158 = ptrtoint ptr %out_pipe142.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %out_pipe142.i, align 4
  %call164.i = call fastcc ptr @alloc_sglist(i32 noundef %153, i32 noundef %155, i32 noundef %157, ptr noundef %49, i32 noundef %159) #10
  %tobool165.not.i = icmp eq ptr %call164.i, null
  br i1 %tobool165.not.i, label %do.end154.i.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end167.i

do.end154.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %do.end154.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end167.i:                                      ; preds = %do.end154.i
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %iterations.i, align 4
  %162 = ptrtoint ptr %out_pipe142.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %out_pipe142.i, align 4
  %164 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %sglen.i, align 4
  %call171.i = call fastcc i32 @perform_sglist(ptr noundef %49, i32 noundef %161, i32 noundef %163, ptr noundef nonnull %req.i, ptr noundef nonnull %call164.i, i32 noundef %165) #10
  %166 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %sglen.i, align 4
  call fastcc void @free_sglist(ptr noundef nonnull %call164.i, i32 noundef %167) #10
  br label %usbtest_do_ioctl.exit

sw.bb173.i:                                       ; preds = %if.end5.i
  %in_pipe174.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 2
  %168 = ptrtoint ptr %in_pipe174.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %in_pipe174.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %cmp175.i = icmp eq i32 %169, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp178.i = icmp eq i32 %58, 0
  %or.cond1007.i = select i1 %cmp175.i, i1 true, i1 %cmp178.i
  br i1 %or.cond1007.i, label %sw.bb173.i.usbtest_do_ioctl.exit.thread_crit_edge, label %lor.lhs.false179.i

sw.bb173.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb173.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

lor.lhs.false179.i:                               ; preds = %sw.bb173.i
  %vary180.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 3
  %170 = ptrtoint ptr %vary180.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %vary180.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %cmp181.i = icmp eq i32 %171, 0
  br i1 %cmp181.i, label %lor.lhs.false179.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end186.i

lor.lhs.false179.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %lor.lhs.false179.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end186.i:                                      ; preds = %lor.lhs.false179.i
  %dev187.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length191.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %172 = ptrtoint ptr %length191.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %length191.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev187.i, ptr noundef nonnull @.str.63, i32 noundef %171, i32 noundef %56, i32 noundef %58, i32 noundef %173) #13
  %174 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %sglen.i, align 4
  %176 = ptrtoint ptr %length191.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %length191.i, align 4
  %178 = ptrtoint ptr %vary180.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %vary180.i, align 4
  %180 = ptrtoint ptr %in_pipe174.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %in_pipe174.i, align 4
  %call196.i = call fastcc ptr @alloc_sglist(i32 noundef %175, i32 noundef %177, i32 noundef %179, ptr noundef %49, i32 noundef %181) #10
  %tobool197.not.i = icmp eq ptr %call196.i, null
  br i1 %tobool197.not.i, label %do.end186.i.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end199.i

do.end186.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %do.end186.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end199.i:                                      ; preds = %do.end186.i
  call void @__sanitizer_cov_trace_pc() #12
  %182 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %iterations.i, align 4
  %184 = ptrtoint ptr %in_pipe174.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %in_pipe174.i, align 4
  %186 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %sglen.i, align 4
  %call203.i = call fastcc i32 @perform_sglist(ptr noundef %49, i32 noundef %183, i32 noundef %185, ptr noundef nonnull %req.i, ptr noundef nonnull %call196.i, i32 noundef %187) #10
  %188 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %sglen.i, align 4
  call fastcc void @free_sglist(ptr noundef nonnull %call196.i, i32 noundef %189) #10
  br label %usbtest_do_ioctl.exit

sw.bb205.i:                                       ; preds = %if.end5.i
  %dev209.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev209.i, ptr noundef nonnull @.str.66, i32 noundef %56) #13
  %190 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %iterations.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %sw.bb205.i
  %i.01047.i = phi i32 [ %191, %sw.bb205.i ], [ %dec.i, %for.body.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.01047.i)
  %tobool213.not.i = icmp eq i32 %i.01047.i, 0
  br i1 %tobool213.not.i, label %land.rhs.i.usbtest_do_ioctl.exit.thread86_crit_edge, label %for.body.i

land.rhs.i.usbtest_do_ioctl.exit.thread86_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread86

for.body.i:                                       ; preds = %land.rhs.i
  %dec.i = add i32 %i.01047.i, -1
  %call214.i = call fastcc i32 @ch9_postconfig(ptr noundef %49) #10
  %cmp212.i = icmp eq i32 %call214.i, 0
  br i1 %cmp212.i, label %for.body.i.land.rhs.i_crit_edge, label %do.end219.i

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

do.end219.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev209.i, ptr noundef nonnull @.str.69, i32 noundef %dec.i) #13
  br label %usbtest_do_ioctl.exit

sw.bb222.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev226.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev226.i, ptr noundef nonnull @.str.72, i32 noundef %58, i32 noundef %56) #13
  %call229.i = call fastcc i32 @test_ctrl_queue(ptr noundef %49, ptr noundef %param_32.0) #10
  br label %usbtest_do_ioctl.exit

sw.bb230.i:                                       ; preds = %if.end5.i
  %in_pipe231.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 2
  %192 = ptrtoint ptr %in_pipe231.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %in_pipe231.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp232.i = icmp eq i32 %193, 0
  br i1 %cmp232.i, label %sw.bb230.i.usbtest_do_ioctl.exit.thread_crit_edge, label %lor.lhs.false233.i

sw.bb230.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb230.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

lor.lhs.false233.i:                               ; preds = %sw.bb230.i
  %length234.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %194 = ptrtoint ptr %length234.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %length234.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool235.not.i = icmp eq i32 %195, 0
  br i1 %tobool235.not.i, label %lor.lhs.false233.i.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end237.i

lor.lhs.false233.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %lor.lhs.false233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end237.i:                                      ; preds = %lor.lhs.false233.i
  %dev241.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev241.i, ptr noundef nonnull @.str.75, i32 noundef %56, i32 noundef %195) #13
  %196 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %iterations.i, align 4
  br label %land.rhs247.i

land.rhs247.i:                                    ; preds = %for.body251.i.land.rhs247.i_crit_edge, %if.end237.i
  %i.21046.i = phi i32 [ %197, %if.end237.i ], [ %dec248.i, %for.body251.i.land.rhs247.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.21046.i)
  %tobool249.not.i = icmp eq i32 %i.21046.i, 0
  br i1 %tobool249.not.i, label %land.rhs247.i.usbtest_do_ioctl.exit.thread86_crit_edge, label %for.body251.i

land.rhs247.i.usbtest_do_ioctl.exit.thread86_crit_edge: ; preds = %land.rhs247.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread86

for.body251.i:                                    ; preds = %land.rhs247.i
  %dec248.i = add i32 %i.21046.i, -1
  %198 = ptrtoint ptr %in_pipe231.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %in_pipe231.i, align 4
  %200 = ptrtoint ptr %length234.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %length234.i, align 4
  %call254.i = call fastcc i32 @unlink_simple(ptr noundef %49, i32 noundef %199, i32 noundef %201) #10
  %cmp246.i = icmp eq i32 %call254.i, 0
  br i1 %cmp246.i, label %for.body251.i.land.rhs247.i_crit_edge, label %do.end260.i

for.body251.i.land.rhs247.i_crit_edge:            ; preds = %for.body251.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs247.i

do.end260.i:                                      ; preds = %for.body251.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev241.i, ptr noundef nonnull @.str.78, i32 noundef %call254.i, i32 noundef %dec248.i) #13
  br label %usbtest_do_ioctl.exit

sw.bb263.i:                                       ; preds = %if.end5.i
  %out_pipe264.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 3
  %202 = ptrtoint ptr %out_pipe264.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %out_pipe264.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %cmp265.i = icmp eq i32 %203, 0
  br i1 %cmp265.i, label %sw.bb263.i.usbtest_do_ioctl.exit.thread_crit_edge, label %lor.lhs.false266.i

sw.bb263.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb263.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

lor.lhs.false266.i:                               ; preds = %sw.bb263.i
  %length267.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %204 = ptrtoint ptr %length267.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %length267.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool268.not.i = icmp eq i32 %205, 0
  br i1 %tobool268.not.i, label %lor.lhs.false266.i.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end270.i

lor.lhs.false266.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %lor.lhs.false266.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end270.i:                                      ; preds = %lor.lhs.false266.i
  %dev274.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev274.i, ptr noundef nonnull @.str.81, i32 noundef %56, i32 noundef %205) #13
  %206 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %iterations.i, align 4
  br label %land.rhs280.i

land.rhs280.i:                                    ; preds = %for.body284.i.land.rhs280.i_crit_edge, %if.end270.i
  %i.41045.i = phi i32 [ %207, %if.end270.i ], [ %dec281.i, %for.body284.i.land.rhs280.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.41045.i)
  %tobool282.not.i = icmp eq i32 %i.41045.i, 0
  br i1 %tobool282.not.i, label %land.rhs280.i.usbtest_do_ioctl.exit.thread86_crit_edge, label %for.body284.i

land.rhs280.i.usbtest_do_ioctl.exit.thread86_crit_edge: ; preds = %land.rhs280.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread86

for.body284.i:                                    ; preds = %land.rhs280.i
  %dec281.i = add i32 %i.41045.i, -1
  %208 = ptrtoint ptr %out_pipe264.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %out_pipe264.i, align 4
  %210 = ptrtoint ptr %length267.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %length267.i, align 4
  %call287.i = call fastcc i32 @unlink_simple(ptr noundef %49, i32 noundef %209, i32 noundef %211) #10
  %cmp279.i = icmp eq i32 %call287.i, 0
  br i1 %cmp279.i, label %for.body284.i.land.rhs280.i_crit_edge, label %do.end293.i

for.body284.i.land.rhs280.i_crit_edge:            ; preds = %for.body284.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs280.i

do.end293.i:                                      ; preds = %for.body284.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev274.i, ptr noundef nonnull @.str.84, i32 noundef %call287.i, i32 noundef %dec281.i) #13
  br label %usbtest_do_ioctl.exit

sw.bb296.i:                                       ; preds = %if.end5.i
  %out_pipe297.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 3
  %212 = ptrtoint ptr %out_pipe297.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %out_pipe297.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp298.i = icmp eq i32 %213, 0
  br i1 %cmp298.i, label %land.lhs.true.i, label %sw.bb296.i.if.end302.i_crit_edge

sw.bb296.i.if.end302.i_crit_edge:                 ; preds = %sw.bb296.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end302.i

land.lhs.true.i:                                  ; preds = %sw.bb296.i
  %in_pipe299.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 2
  %214 = ptrtoint ptr %in_pipe299.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %in_pipe299.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp300.i = icmp eq i32 %215, 0
  br i1 %cmp300.i, label %land.lhs.true.i.usbtest_do_ioctl.exit.thread_crit_edge, label %land.lhs.true.i.if.end302.i_crit_edge

land.lhs.true.i.if.end302.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end302.i

land.lhs.true.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end302.i:                                      ; preds = %land.lhs.true.i.if.end302.i_crit_edge, %sw.bb296.i.if.end302.i_crit_edge
  %dev306.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev306.i, ptr noundef nonnull @.str.87, i32 noundef %56) #13
  %216 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %iterations.i, align 4
  br label %land.rhs311.i

land.rhs311.i:                                    ; preds = %for.body315.i.land.rhs311.i_crit_edge, %if.end302.i
  %i.61044.i = phi i32 [ %217, %if.end302.i ], [ %dec312.i, %for.body315.i.land.rhs311.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.61044.i)
  %tobool313.not.i = icmp eq i32 %i.61044.i, 0
  br i1 %tobool313.not.i, label %land.rhs311.i.usbtest_do_ioctl.exit.thread86_crit_edge, label %for.body315.i

land.rhs311.i.usbtest_do_ioctl.exit.thread86_crit_edge: ; preds = %land.rhs311.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread86

for.body315.i:                                    ; preds = %land.rhs311.i
  %dec312.i = add i32 %i.61044.i, -1
  %call316.i = call fastcc i32 @halt_simple(ptr noundef %49) #10
  %cmp310.i = icmp eq i32 %call316.i, 0
  br i1 %cmp310.i, label %for.body315.i.land.rhs311.i_crit_edge, label %do.end322.i

for.body315.i.land.rhs311.i_crit_edge:            ; preds = %for.body315.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs311.i

do.end322.i:                                      ; preds = %for.body315.i
  call void @__sanitizer_cov_trace_pc() #12
  %218 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %49, align 4
  %dev324.i = getelementptr inbounds %struct.usb_interface, ptr %219, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev324.i, ptr noundef nonnull @.str.90, i32 noundef %dec312.i) #13
  br label %usbtest_do_ioctl.exit

sw.bb326.i:                                       ; preds = %if.end5.i
  %info.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 1
  %220 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %info.i, align 4
  %ctrl_out.i = getelementptr inbounds %struct.usbtest_info, ptr %221, i32 0, i32 3
  %222 = ptrtoint ptr %ctrl_out.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %bf.load.i = load i8, ptr %ctrl_out.i, align 2
  %223 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool327.not.i = icmp eq i8 %223, 0
  br i1 %tobool327.not.i, label %sw.bb326.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end332.i

sw.bb326.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb326.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end332.i:                                      ; preds = %sw.bb326.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev333.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %224 = load i32, ptr @realworld, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool335.not.i = icmp ne i32 %224, 0
  %cond.i = zext i1 %tobool335.not.i to i32
  %length336.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %225 = ptrtoint ptr %length336.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %length336.i, align 4
  %vary337.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 3
  %227 = ptrtoint ptr %vary337.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %vary337.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev333.i, ptr noundef nonnull @.str.93, i32 noundef %56, i32 noundef %cond.i, i32 noundef %226, i32 noundef %228) #13
  %229 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %iterations.i, align 4
  %231 = ptrtoint ptr %length336.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %length336.i, align 4
  %233 = ptrtoint ptr %vary337.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %vary337.i, align 4
  %call341.i = call fastcc i32 @ctrl_out(ptr noundef %49, i32 noundef %230, i32 noundef %232, i32 noundef %234, i32 noundef 0) #10
  br label %usbtest_do_ioctl.exit

sw.bb342.i:                                       ; preds = %if.end5.i
  %out_iso_pipe.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 5
  %235 = ptrtoint ptr %out_iso_pipe.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %out_iso_pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %cmp343.i = icmp eq i32 %236, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp346.i = icmp eq i32 %58, 0
  %or.cond1008.i = select i1 %cmp343.i, i1 true, i1 %cmp346.i
  br i1 %or.cond1008.i, label %sw.bb342.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end351.i

sw.bb342.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb342.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end351.i:                                      ; preds = %sw.bb342.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev352.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length355.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %237 = ptrtoint ptr %length355.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %length355.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev352.i, ptr noundef nonnull @.str.96, i32 noundef %56, i32 noundef %58, i32 noundef %238) #13
  %239 = ptrtoint ptr %out_iso_pipe.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %out_iso_pipe.i, align 4
  %iso_out.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 9
  %241 = ptrtoint ptr %iso_out.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %iso_out.i, align 4
  %call357.i = call fastcc i32 @test_queue(ptr noundef %49, ptr noundef %param_32.0, i32 noundef %240, ptr noundef %242, i32 noundef 0) #10
  br label %usbtest_do_ioctl.exit

sw.bb358.i:                                       ; preds = %if.end5.i
  %in_iso_pipe.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 4
  %243 = ptrtoint ptr %in_iso_pipe.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %in_iso_pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %cmp359.i = icmp eq i32 %244, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp362.i = icmp eq i32 %58, 0
  %or.cond1009.i = select i1 %cmp359.i, i1 true, i1 %cmp362.i
  br i1 %or.cond1009.i, label %sw.bb358.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end367.i

sw.bb358.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb358.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end367.i:                                      ; preds = %sw.bb358.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev368.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length371.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %245 = ptrtoint ptr %length371.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %length371.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev368.i, ptr noundef nonnull @.str.99, i32 noundef %56, i32 noundef %58, i32 noundef %246) #13
  %247 = ptrtoint ptr %in_iso_pipe.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %in_iso_pipe.i, align 4
  %iso_in.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 8
  %249 = ptrtoint ptr %iso_in.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %iso_in.i, align 4
  %call373.i = call fastcc i32 @test_queue(ptr noundef %49, ptr noundef %param_32.0, i32 noundef %248, ptr noundef %250, i32 noundef 0) #10
  br label %usbtest_do_ioctl.exit

sw.bb374.i:                                       ; preds = %if.end5.i
  %out_pipe375.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 3
  %251 = ptrtoint ptr %out_pipe375.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %out_pipe375.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %cmp376.i = icmp eq i32 %252, 0
  br i1 %cmp376.i, label %sw.bb374.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end381.i

sw.bb374.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb374.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end381.i:                                      ; preds = %sw.bb374.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev382.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length383.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %253 = ptrtoint ptr %length383.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %length383.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev382.i, ptr noundef nonnull @.str.102, i32 noundef %254, i32 noundef %56) #13
  %255 = ptrtoint ptr %out_pipe375.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %out_pipe375.i, align 4
  %257 = ptrtoint ptr %length383.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %length383.i, align 4
  %259 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %iterations.i, align 4
  %call388.i = call fastcc i32 @test_unaligned_bulk(ptr noundef %49, i32 noundef %256, i32 noundef %258, i32 noundef %260, i32 noundef 0, ptr noundef nonnull @.str.104) #10
  br label %usbtest_do_ioctl.exit

sw.bb389.i:                                       ; preds = %if.end5.i
  %in_pipe390.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 2
  %261 = ptrtoint ptr %in_pipe390.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %in_pipe390.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %cmp391.i = icmp eq i32 %262, 0
  br i1 %cmp391.i, label %sw.bb389.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end396.i

sw.bb389.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb389.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end396.i:                                      ; preds = %sw.bb389.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev397.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length398.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %263 = ptrtoint ptr %length398.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %length398.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev397.i, ptr noundef nonnull @.str.106, i32 noundef %264, i32 noundef %56) #13
  %265 = ptrtoint ptr %in_pipe390.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %in_pipe390.i, align 4
  %267 = ptrtoint ptr %length398.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %length398.i, align 4
  %269 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %iterations.i, align 4
  %call403.i = call fastcc i32 @test_unaligned_bulk(ptr noundef %49, i32 noundef %266, i32 noundef %268, i32 noundef %270, i32 noundef 0, ptr noundef nonnull @.str.108) #10
  br label %usbtest_do_ioctl.exit

sw.bb404.i:                                       ; preds = %if.end5.i
  %out_pipe405.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 3
  %271 = ptrtoint ptr %out_pipe405.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %out_pipe405.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %cmp406.i = icmp eq i32 %272, 0
  br i1 %cmp406.i, label %sw.bb404.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end411.i

sw.bb404.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb404.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end411.i:                                      ; preds = %sw.bb404.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev412.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length413.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %273 = ptrtoint ptr %length413.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %length413.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev412.i, ptr noundef nonnull @.str.110, i32 noundef %274, i32 noundef %56) #13
  %275 = ptrtoint ptr %out_pipe405.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %out_pipe405.i, align 4
  %277 = ptrtoint ptr %length413.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %length413.i, align 4
  %279 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %iterations.i, align 4
  %call418.i = call fastcc i32 @test_unaligned_bulk(ptr noundef %49, i32 noundef %276, i32 noundef %278, i32 noundef %280, i32 noundef 4, ptr noundef nonnull @.str.112) #10
  br label %usbtest_do_ioctl.exit

sw.bb419.i:                                       ; preds = %if.end5.i
  %in_pipe420.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 2
  %281 = ptrtoint ptr %in_pipe420.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %in_pipe420.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %282)
  %cmp421.i = icmp eq i32 %282, 0
  br i1 %cmp421.i, label %sw.bb419.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end426.i

sw.bb419.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb419.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end426.i:                                      ; preds = %sw.bb419.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev427.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length428.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %283 = ptrtoint ptr %length428.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %length428.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev427.i, ptr noundef nonnull @.str.114, i32 noundef %284, i32 noundef %56) #13
  %285 = ptrtoint ptr %in_pipe420.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %in_pipe420.i, align 4
  %287 = ptrtoint ptr %length428.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %length428.i, align 4
  %289 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %iterations.i, align 4
  %call433.i = call fastcc i32 @test_unaligned_bulk(ptr noundef %49, i32 noundef %286, i32 noundef %288, i32 noundef %290, i32 noundef 4, ptr noundef nonnull @.str.116) #10
  br label %usbtest_do_ioctl.exit

sw.bb434.i:                                       ; preds = %if.end5.i
  %info435.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 1
  %291 = ptrtoint ptr %info435.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %info435.i, align 4
  %ctrl_out436.i = getelementptr inbounds %struct.usbtest_info, ptr %292, i32 0, i32 3
  %293 = ptrtoint ptr %ctrl_out436.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %bf.load437.i = load i8, ptr %ctrl_out436.i, align 2
  %294 = and i8 %bf.load437.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %tobool441.not.i = icmp eq i8 %294, 0
  br i1 %tobool441.not.i, label %sw.bb434.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end446.i

sw.bb434.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb434.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end446.i:                                      ; preds = %sw.bb434.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev447.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %295 = load i32, ptr @realworld, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %tobool449.not.i = icmp ne i32 %295, 0
  %cond450.i = zext i1 %tobool449.not.i to i32
  %length451.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %296 = ptrtoint ptr %length451.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %length451.i, align 4
  %vary452.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 3
  %298 = ptrtoint ptr %vary452.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %vary452.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev447.i, ptr noundef nonnull @.str.118, i32 noundef %56, i32 noundef %cond450.i, i32 noundef %297, i32 noundef %299) #13
  %300 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %iterations.i, align 4
  %302 = ptrtoint ptr %length451.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %length451.i, align 4
  %304 = ptrtoint ptr %vary452.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %vary452.i, align 4
  %call456.i = call fastcc i32 @ctrl_out(ptr noundef %49, i32 noundef %301, i32 noundef %303, i32 noundef %305, i32 noundef 1) #10
  br label %usbtest_do_ioctl.exit

sw.bb457.i:                                       ; preds = %if.end5.i
  %out_iso_pipe458.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 5
  %306 = ptrtoint ptr %out_iso_pipe458.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %out_iso_pipe458.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %cmp459.i = icmp eq i32 %307, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp462.i = icmp eq i32 %58, 0
  %or.cond1010.i = select i1 %cmp459.i, i1 true, i1 %cmp462.i
  br i1 %or.cond1010.i, label %sw.bb457.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end467.i

sw.bb457.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb457.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end467.i:                                      ; preds = %sw.bb457.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev468.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length471.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %308 = ptrtoint ptr %length471.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %length471.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev468.i, ptr noundef nonnull @.str.121, i32 noundef %56, i32 noundef %58, i32 noundef %309) #13
  %310 = ptrtoint ptr %out_iso_pipe458.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %out_iso_pipe458.i, align 4
  %iso_out473.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 9
  %312 = ptrtoint ptr %iso_out473.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %iso_out473.i, align 4
  %call474.i = call fastcc i32 @test_queue(ptr noundef %49, ptr noundef %param_32.0, i32 noundef %311, ptr noundef %313, i32 noundef 1) #10
  br label %usbtest_do_ioctl.exit

sw.bb475.i:                                       ; preds = %if.end5.i
  %in_iso_pipe476.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 4
  %314 = ptrtoint ptr %in_iso_pipe476.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %in_iso_pipe476.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %cmp477.i = icmp eq i32 %315, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp480.i = icmp eq i32 %58, 0
  %or.cond1011.i = select i1 %cmp477.i, i1 true, i1 %cmp480.i
  br i1 %or.cond1011.i, label %sw.bb475.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end485.i

sw.bb475.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb475.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end485.i:                                      ; preds = %sw.bb475.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev486.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length489.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %316 = ptrtoint ptr %length489.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %length489.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev486.i, ptr noundef nonnull @.str.124, i32 noundef %56, i32 noundef %58, i32 noundef %317) #13
  %318 = ptrtoint ptr %in_iso_pipe476.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %in_iso_pipe476.i, align 4
  %iso_in491.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 8
  %320 = ptrtoint ptr %iso_in491.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %iso_in491.i, align 4
  %call492.i = call fastcc i32 @test_queue(ptr noundef %49, ptr noundef %param_32.0, i32 noundef %319, ptr noundef %321, i32 noundef 1) #10
  br label %usbtest_do_ioctl.exit

sw.bb493.i:                                       ; preds = %if.end5.i
  %out_pipe494.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 3
  %322 = ptrtoint ptr %out_pipe494.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %out_pipe494.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %cmp495.i = icmp eq i32 %323, 0
  br i1 %cmp495.i, label %sw.bb493.i.usbtest_do_ioctl.exit.thread_crit_edge, label %lor.lhs.false496.i

sw.bb493.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb493.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

lor.lhs.false496.i:                               ; preds = %sw.bb493.i
  %length497.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %324 = ptrtoint ptr %length497.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %length497.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %325)
  %tobool498.not.i = icmp eq i32 %325, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %58)
  %cmp501.i = icmp ult i32 %58, 4
  %or.cond1012.i = select i1 %tobool498.not.i, i1 true, i1 %cmp501.i
  br i1 %or.cond1012.i, label %lor.lhs.false496.i.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end503.i

lor.lhs.false496.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %lor.lhs.false496.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end503.i:                                      ; preds = %lor.lhs.false496.i
  %dev507.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev507.i, ptr noundef nonnull @.str.127, i32 noundef %56, i32 noundef %58, i32 noundef %325) #13
  %326 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %iterations.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %cmp515.not1042.i = icmp eq i32 %327, 0
  br i1 %cmp515.not1042.i, label %if.end503.i.usbtest_do_ioctl.exit.thread86_crit_edge, label %if.end503.i.for.body517.i_crit_edge

if.end503.i.for.body517.i_crit_edge:              ; preds = %if.end503.i
  br label %for.body517.i

if.end503.i.usbtest_do_ioctl.exit.thread86_crit_edge: ; preds = %if.end503.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread86

for.body517.i:                                    ; preds = %for.inc.i.for.body517.i_crit_edge, %if.end503.i.for.body517.i_crit_edge
  %i.81043.i = phi i32 [ %dec529.i, %for.inc.i.for.body517.i_crit_edge ], [ %327, %if.end503.i.for.body517.i_crit_edge ]
  %328 = ptrtoint ptr %out_pipe494.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %out_pipe494.i, align 4
  %330 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %sglen.i, align 4
  %332 = ptrtoint ptr %length497.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %length497.i, align 4
  %call521.i = call fastcc i32 @unlink_queued(ptr noundef %49, i32 noundef %329, i32 noundef %331, i32 noundef %333) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call521.i)
  %tobool522.not.i = icmp eq i32 %call521.i, 0
  br i1 %tobool522.not.i, label %for.inc.i, label %do.end526.i

do.end526.i:                                      ; preds = %for.body517.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev507.i, ptr noundef nonnull @.str.130, i32 noundef %call521.i, i32 noundef %i.81043.i) #13
  br label %usbtest_do_ioctl.exit

for.inc.i:                                        ; preds = %for.body517.i
  %dec529.i = add i32 %i.81043.i, -1
  %cmp515.not.i = icmp eq i32 %dec529.i, 0
  br i1 %cmp515.not.i, label %for.inc.i.usbtest_do_ioctl.exit.thread86_crit_edge, label %for.inc.i.for.body517.i_crit_edge

for.inc.i.for.body517.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body517.i

for.inc.i.usbtest_do_ioctl.exit.thread86_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread86

sw.bb531.i:                                       ; preds = %if.end5.i
  %out_int_pipe.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 7
  %334 = ptrtoint ptr %out_int_pipe.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %out_int_pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %cmp532.i = icmp eq i32 %335, 0
  br i1 %cmp532.i, label %sw.bb531.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end537.i

sw.bb531.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb531.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end537.i:                                      ; preds = %sw.bb531.i
  %dev538.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length539.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %336 = ptrtoint ptr %length539.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %length539.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev538.i, ptr noundef nonnull @.str.133, i32 noundef %337, i32 noundef %56) #13
  %338 = ptrtoint ptr %out_int_pipe.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %out_int_pipe.i, align 4
  %340 = ptrtoint ptr %length539.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %length539.i, align 4
  %int_out.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 11
  %342 = ptrtoint ptr %int_out.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %int_out.i, align 4
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %343, i32 0, i32 5
  %344 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %bInterval.i, align 1
  %call.i1019.i = call fastcc ptr @usbtest_alloc_urb(ptr noundef %add.ptr.i.i.i, i32 noundef %339, i32 noundef %341, i32 noundef 4, i32 noundef 0, i8 noundef zeroext %345, ptr noundef nonnull @simple_callback) #10
  %tobool544.not.i = icmp eq ptr %call.i1019.i, null
  br i1 %tobool544.not.i, label %do.end537.i.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end546.i

do.end537.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %do.end537.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end546.i:                                      ; preds = %do.end537.i
  call void @__sanitizer_cov_trace_pc() #12
  %346 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %iterations.i, align 4
  %call548.i = call fastcc i32 @simple_io(ptr noundef %49, ptr noundef nonnull %call.i1019.i, i32 noundef %347, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.135) #10
  call fastcc void @simple_free_urb(ptr noundef nonnull %call.i1019.i) #10
  br label %usbtest_do_ioctl.exit

sw.bb549.i:                                       ; preds = %if.end5.i
  %in_int_pipe.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 6
  %348 = ptrtoint ptr %in_int_pipe.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %in_int_pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %cmp550.i = icmp eq i32 %349, 0
  br i1 %cmp550.i, label %sw.bb549.i.usbtest_do_ioctl.exit.thread_crit_edge, label %do.end555.i

sw.bb549.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb549.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end555.i:                                      ; preds = %sw.bb549.i
  %dev556.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %length557.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %350 = ptrtoint ptr %length557.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %length557.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev556.i, ptr noundef nonnull @.str.137, i32 noundef %351, i32 noundef %56) #13
  %352 = ptrtoint ptr %in_int_pipe.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %in_int_pipe.i, align 4
  %354 = ptrtoint ptr %length557.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %length557.i, align 4
  %int_in.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 10
  %356 = ptrtoint ptr %int_in.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %int_in.i, align 4
  %bInterval561.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %357, i32 0, i32 5
  %358 = ptrtoint ptr %bInterval561.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %bInterval561.i, align 1
  %call.i1020.i = call fastcc ptr @usbtest_alloc_urb(ptr noundef %add.ptr.i.i.i, i32 noundef %353, i32 noundef %355, i32 noundef 4, i32 noundef 0, i8 noundef zeroext %359, ptr noundef nonnull @simple_callback) #10
  %tobool563.not.i = icmp eq ptr %call.i1020.i, null
  br i1 %tobool563.not.i, label %do.end555.i.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end565.i

do.end555.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %do.end555.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end565.i:                                      ; preds = %do.end555.i
  call void @__sanitizer_cov_trace_pc() #12
  %360 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %iterations.i, align 4
  %call567.i = call fastcc i32 @simple_io(ptr noundef %49, ptr noundef nonnull %call.i1020.i, i32 noundef %361, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.139) #10
  call fastcc void @simple_free_urb(ptr noundef nonnull %call.i1020.i) #10
  br label %usbtest_do_ioctl.exit

sw.bb568.i:                                       ; preds = %if.end5.i
  %out_pipe569.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 3
  %362 = ptrtoint ptr %out_pipe569.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %out_pipe569.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %363)
  %cmp570.i = icmp eq i32 %363, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp573.i = icmp eq i32 %58, 0
  %or.cond1013.i = select i1 %cmp570.i, i1 true, i1 %cmp573.i
  br i1 %or.cond1013.i, label %sw.bb568.i.usbtest_do_ioctl.exit.thread_crit_edge, label %lor.lhs.false574.i

sw.bb568.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb568.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

lor.lhs.false574.i:                               ; preds = %sw.bb568.i
  %364 = load i32, ptr @pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %cmp575.not.i = icmp eq i32 %364, 0
  br i1 %cmp575.not.i, label %do.end580.i, label %lor.lhs.false574.i.usbtest_do_ioctl.exit.thread_crit_edge

lor.lhs.false574.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %lor.lhs.false574.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end580.i:                                      ; preds = %lor.lhs.false574.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev581.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %mul.i = mul i32 %58, %56
  %length584.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %365 = ptrtoint ptr %length584.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %length584.i, align 4
  %mul585.i = mul i32 %mul.i, %366
  %div1004.i = lshr i32 %mul585.i, 20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev581.i, ptr noundef nonnull @.str.141, i32 noundef %div1004.i) #13
  %367 = ptrtoint ptr %out_pipe569.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %out_pipe569.i, align 4
  %call587.i = call fastcc i32 @test_queue(ptr noundef %49, ptr noundef %param_32.0, i32 noundef %368, ptr noundef null, i32 noundef 0) #10
  br label %usbtest_do_ioctl.exit

sw.bb588.i:                                       ; preds = %if.end5.i
  %in_pipe589.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 2
  %369 = ptrtoint ptr %in_pipe589.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %in_pipe589.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %cmp590.i = icmp eq i32 %370, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp593.i = icmp eq i32 %58, 0
  %or.cond1014.i = select i1 %cmp590.i, i1 true, i1 %cmp593.i
  br i1 %or.cond1014.i, label %sw.bb588.i.usbtest_do_ioctl.exit.thread_crit_edge, label %lor.lhs.false594.i

sw.bb588.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb588.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

lor.lhs.false594.i:                               ; preds = %sw.bb588.i
  %371 = load i32, ptr @pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %371)
  %cmp595.not.i = icmp eq i32 %371, 0
  br i1 %cmp595.not.i, label %do.end600.i, label %lor.lhs.false594.i.usbtest_do_ioctl.exit.thread_crit_edge

lor.lhs.false594.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %lor.lhs.false594.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

do.end600.i:                                      ; preds = %lor.lhs.false594.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev601.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %mul604.i = mul i32 %58, %56
  %length605.i = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 2
  %372 = ptrtoint ptr %length605.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %length605.i, align 4
  %mul606.i = mul i32 %mul604.i, %373
  %div6071003.i = lshr i32 %mul606.i, 20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev601.i, ptr noundef nonnull @.str.144, i32 noundef %div6071003.i) #13
  %374 = ptrtoint ptr %in_pipe589.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %in_pipe589.i, align 4
  %call609.i = call fastcc i32 @test_queue(ptr noundef %49, ptr noundef %param_32.0, i32 noundef %375, ptr noundef null, i32 noundef 0) #10
  br label %usbtest_do_ioctl.exit

sw.bb610.i:                                       ; preds = %if.end5.i
  %out_pipe611.i = getelementptr inbounds %struct.usbtest_dev, ptr %49, i32 0, i32 3
  %376 = ptrtoint ptr %out_pipe611.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %out_pipe611.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %377)
  %cmp612.i = icmp eq i32 %377, 0
  br i1 %cmp612.i, label %sw.bb610.i.usbtest_do_ioctl.exit.thread_crit_edge, label %if.end614.i

sw.bb610.i.usbtest_do_ioctl.exit.thread_crit_edge: ; preds = %sw.bb610.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread

if.end614.i:                                      ; preds = %sw.bb610.i
  %dev618.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev618.i, ptr noundef nonnull @.str.147, i32 noundef %56) #13
  %378 = ptrtoint ptr %iterations.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %iterations.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %379)
  %cmp624.not1039.i = icmp eq i32 %379, 0
  br i1 %cmp624.not1039.i, label %if.end614.i.usbtest_do_ioctl.exit.thread86_crit_edge, label %if.end614.i.for.body626.i_crit_edge

if.end614.i.for.body626.i_crit_edge:              ; preds = %if.end614.i
  br label %for.body626.i

if.end614.i.usbtest_do_ioctl.exit.thread86_crit_edge: ; preds = %if.end614.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread86

for.body626.i:                                    ; preds = %toggle_sync_simple.exit.i.for.body626.i_crit_edge, %if.end614.i.for.body626.i_crit_edge
  %i.91040.i = phi i32 [ %dec629.i, %toggle_sync_simple.exit.i.for.body626.i_crit_edge ], [ %379, %if.end614.i.for.body626.i_crit_edge ]
  %380 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %49, align 4
  %parent.i.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %381, i32 0, i32 7, i32 1
  %382 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %parent.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %383, i32 -128
  %384 = ptrtoint ptr %out_pipe611.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %out_pipe611.i, align 4
  %and.i.i.i.i = and i32 %385, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %cond.i.i.v.i.i = select i1 %tobool.not.i.i.i.i, i32 1024, i32 960
  %cond.i.i.i.i = getelementptr i8, ptr %383, i32 %cond.i.i.v.i.i
  %shr.i.i.i.i = lshr i32 %385, 15
  %and2.i.i.i.i = and i32 %shr.i.i.i.i, 15
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %cond.i.i.i.i, i32 %and2.i.i.i.i
  %386 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %387, i32 0, i32 4
  %388 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %wMaxPacketSize.i.i.i, align 2
  %390 = call i16 @llvm.bswap.i16(i16 %389) #10
  %conv.i.i.i = zext i16 %390 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %call.i24.i.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool.not.i25.i.i = icmp eq ptr %call.i24.i.i, null
  br i1 %tobool.not.i25.i.i, label %for.end630.thread1064.i, label %if.end.i26.i.i

for.end630.thread1064.i:                          ; preds = %for.body626.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec6291055.i = add i32 %i.91040.i, -1
  br label %do.end635.i

if.end.i26.i.i:                                   ; preds = %for.body626.i
  %dev1.i87.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i24.i.i, i32 0, i32 8
  %391 = ptrtoint ptr %dev1.i87.i.i.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store ptr %add.ptr.i.i.i.i, ptr %dev1.i87.i.i.i, align 4
  %pipe2.i88.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i24.i.i, i32 0, i32 10
  %392 = ptrtoint ptr %pipe2.i88.i.i.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 0, ptr %pipe2.i88.i.i.i, align 4
  %transfer_buffer3.i89.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i24.i.i, i32 0, i32 14
  %393 = ptrtoint ptr %transfer_buffer3.i89.i.i.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr null, ptr %transfer_buffer3.i89.i.i.i, align 4
  %transfer_buffer_length.i90.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i24.i.i, i32 0, i32 19
  %394 = ptrtoint ptr %transfer_buffer_length.i90.i.i.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %mul.i.i, ptr %transfer_buffer_length.i90.i.i.i, align 4
  %complete.i91.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i24.i.i, i32 0, i32 28
  %395 = ptrtoint ptr %complete.i91.i.i.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr @simple_callback, ptr %complete.i91.i.i.i, align 4
  %context4.i92.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i24.i.i, i32 0, i32 27
  %396 = ptrtoint ptr %context4.i92.i.i.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store ptr null, ptr %context4.i92.i.i.i, align 4
  %speed.i.i.i = getelementptr i8, ptr %383, i32 -100
  %397 = ptrtoint ptr %speed.i.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %speed.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %398)
  %cmp.i28.i.i = icmp eq i32 %398, 3
  %cond.i.i.i = select i1 %cmp.i28.i.i, i32 8, i32 1
  %interval.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i24.i.i, i32 0, i32 25
  %399 = ptrtoint ptr %interval.i.i.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %cond.i.i.i, ptr %interval.i.i.i, align 4
  %transfer_flags5.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i24.i.i, i32 0, i32 13
  %400 = ptrtoint ptr %transfer_flags5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 4, ptr %transfer_flags5.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %389)
  %cmp10.i29.i.i = icmp eq i16 %389, 0
  br i1 %cmp10.i29.i.i, label %if.end.i26.i.i.if.end.i.i_crit_edge, label %if.end13.i.i.i

if.end.i26.i.i.if.end.i.i_crit_edge:              ; preds = %if.end.i26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end13.i.i.i:                                   ; preds = %if.end.i26.i.i
  %transfer_dma.i30.i.i = getelementptr inbounds %struct.urb, ptr %call.i24.i.i, i32 0, i32 15
  %call19.i.i.i = call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i.i.i, i32 noundef %mul.i.i, i32 noundef 3264, ptr noundef %transfer_dma.i30.i.i) #10
  %401 = ptrtoint ptr %transfer_buffer3.i89.i.i.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %call19.i.i.i, ptr %transfer_buffer3.i89.i.i.i, align 4
  %tobool26.not.i.i.i = icmp eq ptr %call19.i.i.i, null
  br i1 %tobool26.not.i.i.i, label %if.end13.i.i.i.toggle_sync_simple.exit.i_crit_edge, label %if.end28.i.i.i

if.end13.i.i.i.toggle_sync_simple.exit.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %toggle_sync_simple.exit.i

if.end28.i.i.i:                                   ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %402 = ptrtoint ptr %pipe2.i88.i.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %pipe2.i88.i.i.i, align 4
  %and43.i.i.i = and i32 %403, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i.i)
  %tobool44.not.i.i.i = icmp eq i32 %and43.i.i.i, 0
  %404 = select i1 %tobool44.not.i.i.i, i8 0, i8 -91
  %405 = zext i8 %404 to i32
  %406 = call ptr @memset(ptr %call19.i.i.i, i32 %405, i32 %mul.i.i)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end28.i.i.i, %if.end.i26.i.i.if.end.i.i_crit_edge
  %407 = ptrtoint ptr %transfer_flags5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %transfer_flags5.i.i.i, align 4
  %or.i.i = or i32 %408, 64
  store i32 %or.i.i, ptr %transfer_flags5.i.i.i, align 4
  %409 = ptrtoint ptr %out_pipe611.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %out_pipe611.i, align 4
  %411 = lshr i32 %410, 15
  %and.i.i = and i32 %411, 15
  %412 = ptrtoint ptr %pipe2.i88.i.i.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %410, ptr %pipe2.i88.i.i.i, align 4
  %413 = ptrtoint ptr %dev1.i87.i.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %dev1.i87.i.i.i, align 4
  %call.i20.i.i = call i32 @usb_clear_halt(ptr noundef %414, i32 noundef %410) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i20.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %415 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %49, align 4
  %dev2.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %416, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i.i, ptr noundef nonnull @.str.271, i32 noundef %and.i.i, i32 noundef %call.i20.i.i) #13
  br label %test_toggle_sync.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %call3.i.i.i = call fastcc i32 @simple_io(ptr noundef %49, ptr noundef nonnull %call.i24.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.317) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %cmp4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %cmp4.not.i.i.i, label %if.end6.i.i.i, label %if.end.i.i.i.test_toggle_sync.exit.i.i_crit_edge

if.end.i.i.i.test_toggle_sync.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %test_toggle_sync.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %417 = ptrtoint ptr %dev1.i87.i.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %dev1.i87.i.i.i, align 4
  %419 = ptrtoint ptr %pipe2.i88.i.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %pipe2.i88.i.i.i, align 4
  %call9.i.i.i = call i32 @usb_clear_halt(ptr noundef %418, i32 noundef %420) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %cmp10.i.i.i = icmp slt i32 %call9.i.i.i, 0
  br i1 %cmp10.i.i.i, label %do.end14.i.i.i, label %if.end17.i.i.i

do.end14.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %421 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %49, align 4
  %dev16.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %422, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16.i.i.i, ptr noundef nonnull @.str.271, i32 noundef %and.i.i, i32 noundef %call9.i.i.i) #13
  br label %test_toggle_sync.exit.i.i

if.end17.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call18.i.i.i = call fastcc i32 @simple_io(ptr noundef %49, ptr noundef nonnull %call.i24.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.317) #10
  br label %test_toggle_sync.exit.i.i

test_toggle_sync.exit.i.i:                        ; preds = %if.end17.i.i.i, %do.end14.i.i.i, %if.end.i.i.i.test_toggle_sync.exit.i.i_crit_edge, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i20.i.i, %do.end.i.i.i ], [ %call9.i.i.i, %do.end14.i.i.i ], [ %call18.i.i.i, %if.end17.i.i.i ], [ -22, %if.end.i.i.i.test_toggle_sync.exit.i.i_crit_edge ]
  %423 = ptrtoint ptr %transfer_buffer3.i89.i.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %transfer_buffer3.i89.i.i.i, align 4
  %425 = ptrtoint ptr %424 to i32
  %and.i.i21.i.i = and i32 %425, 127
  %426 = ptrtoint ptr %transfer_flags5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %transfer_flags5.i.i.i, align 4
  %and.i.i.i = and i32 %427, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %test_toggle_sync.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %428 = ptrtoint ptr %dev1.i87.i.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %dev1.i87.i.i.i, align 4
  %430 = ptrtoint ptr %transfer_buffer_length.i90.i.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %transfer_buffer_length.i90.i.i.i, align 4
  %add.i.i.i = add i32 %431, %and.i.i21.i.i
  %idx.neg.i.i.i = sub nsw i32 0, %and.i.i21.i.i
  %add.ptr.i.i1021.i = getelementptr i8, ptr %424, i32 %idx.neg.i.i.i
  %transfer_dma.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i24.i.i, i32 0, i32 15
  %432 = ptrtoint ptr %transfer_dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %transfer_dma.i.i.i, align 4
  %sub.i.i.i = sub i32 %433, %and.i.i21.i.i
  call void @usb_free_coherent(ptr noundef %429, i32 noundef %add.i.i.i, ptr noundef %add.ptr.i.i1021.i, i32 noundef %sub.i.i.i) #10
  br label %toggle_sync_simple.exit.i

if.else.i.i.i:                                    ; preds = %test_toggle_sync.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %idx.neg3.i.i.i = sub nsw i32 0, %and.i.i21.i.i
  %add.ptr4.i.i.i = getelementptr i8, ptr %424, i32 %idx.neg3.i.i.i
  call void @kfree(ptr noundef %add.ptr4.i.i.i) #10
  br label %toggle_sync_simple.exit.i

toggle_sync_simple.exit.i:                        ; preds = %if.else.i.i.i, %if.then.i.i.i, %if.end13.i.i.i.toggle_sync_simple.exit.i_crit_edge
  %retval.0.ph.i.i = phi i32 [ -12, %if.end13.i.i.i.toggle_sync_simple.exit.i_crit_edge ], [ %retval.0.i.i.i, %if.then.i.i.i ], [ %retval.0.i.i.i, %if.else.i.i.i ]
  call void @usb_free_urb(ptr noundef nonnull %call.i24.i.i) #10
  %dec629.i = add i32 %i.91040.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i.i)
  %cmp622.i = icmp ne i32 %retval.0.ph.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec629.i)
  %cmp624.not.i = icmp eq i32 %dec629.i, 0
  %or.cond1015.i = select i1 %cmp622.i, i1 true, i1 %cmp624.not.i
  br i1 %or.cond1015.i, label %for.end630.i, label %toggle_sync_simple.exit.i.for.body626.i_crit_edge

toggle_sync_simple.exit.i.for.body626.i_crit_edge: ; preds = %toggle_sync_simple.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body626.i

for.end630.i:                                     ; preds = %toggle_sync_simple.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.ph.i.i)
  %tobool631.not.i = icmp eq i32 %retval.0.ph.i.i, 0
  br i1 %tobool631.not.i, label %for.end630.i.usbtest_do_ioctl.exit.thread86_crit_edge, label %for.end630.i.do.end635.i_crit_edge

for.end630.i.do.end635.i_crit_edge:               ; preds = %for.end630.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end635.i

for.end630.i.usbtest_do_ioctl.exit.thread86_crit_edge: ; preds = %for.end630.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_do_ioctl.exit.thread86

do.end635.i:                                      ; preds = %for.end630.i.do.end635.i_crit_edge, %for.end630.thread1064.i
  %retval2.5.lcssa1069.i = phi i32 [ -12, %for.end630.thread1064.i ], [ %retval.0.ph.i.i, %for.end630.i.do.end635.i_crit_edge ]
  %i.9.lcssa1068.i = phi i32 [ %dec6291055.i, %for.end630.thread1064.i ], [ %dec629.i, %for.end630.i.do.end635.i_crit_edge ]
  %434 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %49, align 4
  %dev637.i = getelementptr inbounds %struct.usb_interface, ptr %435, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev637.i, ptr noundef nonnull @.str.150, i32 noundef %i.9.lcssa1068.i) #13
  br label %usbtest_do_ioctl.exit

usbtest_do_ioctl.exit.thread:                     ; preds = %sw.bb610.i.usbtest_do_ioctl.exit.thread_crit_edge, %lor.lhs.false594.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb588.i.usbtest_do_ioctl.exit.thread_crit_edge, %lor.lhs.false574.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb568.i.usbtest_do_ioctl.exit.thread_crit_edge, %do.end555.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb549.i.usbtest_do_ioctl.exit.thread_crit_edge, %do.end537.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb531.i.usbtest_do_ioctl.exit.thread_crit_edge, %lor.lhs.false496.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb493.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb475.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb457.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb434.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb419.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb404.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb389.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb374.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb358.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb342.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb326.i.usbtest_do_ioctl.exit.thread_crit_edge, %land.lhs.true.i.usbtest_do_ioctl.exit.thread_crit_edge, %lor.lhs.false266.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb263.i.usbtest_do_ioctl.exit.thread_crit_edge, %lor.lhs.false233.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb230.i.usbtest_do_ioctl.exit.thread_crit_edge, %do.end186.i.usbtest_do_ioctl.exit.thread_crit_edge, %lor.lhs.false179.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb173.i.usbtest_do_ioctl.exit.thread_crit_edge, %do.end154.i.usbtest_do_ioctl.exit.thread_crit_edge, %lor.lhs.false147.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb141.i.usbtest_do_ioctl.exit.thread_crit_edge, %do.end124.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb114.i.usbtest_do_ioctl.exit.thread_crit_edge, %do.end97.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb87.i.usbtest_do_ioctl.exit.thread_crit_edge, %do.end73.i.usbtest_do_ioctl.exit.thread_crit_edge, %lor.lhs.false66.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb63.i.usbtest_do_ioctl.exit.thread_crit_edge, %do.end49.i.usbtest_do_ioctl.exit.thread_crit_edge, %lor.lhs.false.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb41.i.usbtest_do_ioctl.exit.thread_crit_edge, %do.end29.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb23.i.usbtest_do_ioctl.exit.thread_crit_edge, %do.end13.i.usbtest_do_ioctl.exit.thread_crit_edge, %sw.bb7.i.usbtest_do_ioctl.exit.thread_crit_edge, %if.end5.i.usbtest_do_ioctl.exit.thread_crit_edge, %if.end.i77.usbtest_do_ioctl.exit.thread_crit_edge, %sw.epilog.usbtest_do_ioctl.exit.thread_crit_edge
  %retval.0.i78.ph = phi i32 [ -12, %do.end555.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -12, %do.end537.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -12, %do.end186.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -12, %do.end154.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -12, %do.end124.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -12, %do.end97.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -12, %do.end73.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -12, %do.end49.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -12, %do.end29.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -12, %do.end13.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb7.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb23.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %lor.lhs.false.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb41.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %lor.lhs.false66.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb63.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb87.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb114.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %lor.lhs.false147.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb141.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %lor.lhs.false179.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb173.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %lor.lhs.false233.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb230.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %lor.lhs.false266.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb263.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %land.lhs.true.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb326.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb342.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb358.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb374.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb389.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb404.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb419.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb434.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb457.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb475.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %lor.lhs.false496.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb493.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb531.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb549.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %lor.lhs.false574.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb568.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %lor.lhs.false594.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb588.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %sw.bb610.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -95, %if.end5.i.usbtest_do_ioctl.exit.thread_crit_edge ], [ -22, %if.end.i77.usbtest_do_ioctl.exit.thread_crit_edge ], [ -22, %sw.epilog.usbtest_do_ioctl.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %req.i) #10
  br label %free_mutex

usbtest_do_ioctl.exit.thread86:                   ; preds = %for.end630.i.usbtest_do_ioctl.exit.thread86_crit_edge, %if.end614.i.usbtest_do_ioctl.exit.thread86_crit_edge, %for.inc.i.usbtest_do_ioctl.exit.thread86_crit_edge, %if.end503.i.usbtest_do_ioctl.exit.thread86_crit_edge, %land.rhs311.i.usbtest_do_ioctl.exit.thread86_crit_edge, %land.rhs280.i.usbtest_do_ioctl.exit.thread86_crit_edge, %land.rhs247.i.usbtest_do_ioctl.exit.thread86_crit_edge, %land.rhs.i.usbtest_do_ioctl.exit.thread86_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %req.i) #10
  br label %if.end25

usbtest_do_ioctl.exit:                            ; preds = %do.end635.i, %do.end600.i, %do.end580.i, %if.end565.i, %if.end546.i, %do.end526.i, %do.end485.i, %do.end467.i, %do.end446.i, %do.end426.i, %do.end411.i, %do.end396.i, %do.end381.i, %do.end367.i, %do.end351.i, %do.end332.i, %do.end322.i, %do.end293.i, %do.end260.i, %sw.bb222.i, %do.end219.i, %if.end199.i, %if.end167.i, %if.end135.i, %if.end108.i, %if.end83.i, %if.end59.i, %if.end38.i, %if.end20.i
  %retval.0.i78 = phi i32 [ %retval2.5.lcssa1069.i, %do.end635.i ], [ %call609.i, %do.end600.i ], [ %call587.i, %do.end580.i ], [ %call567.i, %if.end565.i ], [ %call548.i, %if.end546.i ], [ %call521.i, %do.end526.i ], [ %call492.i, %do.end485.i ], [ %call474.i, %do.end467.i ], [ %call456.i, %do.end446.i ], [ %call433.i, %do.end426.i ], [ %call418.i, %do.end411.i ], [ %call403.i, %do.end396.i ], [ %call388.i, %do.end381.i ], [ %call373.i, %do.end367.i ], [ %call357.i, %do.end351.i ], [ %call341.i, %do.end332.i ], [ %call316.i, %do.end322.i ], [ %call287.i, %do.end293.i ], [ %call254.i, %do.end260.i ], [ %call229.i, %sw.bb222.i ], [ %call214.i, %do.end219.i ], [ %call203.i, %if.end199.i ], [ %call171.i, %if.end167.i ], [ %call139.i, %if.end135.i ], [ %call112.i, %if.end108.i ], [ %call86.i, %if.end83.i ], [ %call62.i, %if.end59.i ], [ %call40.i, %if.end38.i ], [ %call22.i, %if.end20.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %req.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i78)
  %cmp23 = icmp slt i32 %retval.0.i78, 0
  br i1 %cmp23, label %usbtest_do_ioctl.exit.free_mutex_crit_edge, label %usbtest_do_ioctl.exit.if.end25_crit_edge

usbtest_do_ioctl.exit.if.end25_crit_edge:         ; preds = %usbtest_do_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

usbtest_do_ioctl.exit.free_mutex_crit_edge:       ; preds = %usbtest_do_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_mutex

if.end25:                                         ; preds = %usbtest_do_ioctl.exit.if.end25_crit_edge, %usbtest_do_ioctl.exit.thread86
  %retval.0.i7889 = phi i32 [ 0, %usbtest_do_ioctl.exit.thread86 ], [ %retval.0.i78, %usbtest_do_ioctl.exit.if.end25_crit_edge ]
  call void @ktime_get_ts64(ptr noundef nonnull %end) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  %436 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %436)
  %.fca.0.load = load i64, ptr %end, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %end, i32 0, i32 1
  %437 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %437)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %438 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %438)
  %.fca.0.load54 = load i64, ptr %start, align 8
  %.fca.1.gep56 = getelementptr inbounds [2 x i64], ptr %start, i32 0, i32 1
  %439 = ptrtoint ptr %.fca.1.gep56 to i32
  call void @__asan_load8_noabort(i32 %439)
  %.fca.1.load57 = load i64, ptr %.fca.1.gep56, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load57, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %440 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %sub.i = sub i64 %.fca.0.load, %.fca.0.load54
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i79 = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp, i64 noundef %sub.i, i64 noundef %conv.i79) #10
  %441 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %441)
  %duration.sroa.0.0.copyload50 = load i64, ptr %tmp, align 8
  %duration.sroa.5.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %442 = ptrtoint ptr %duration.sroa.5.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %442)
  %duration.sroa.5.0.copyload51 = load i32, ptr %duration.sroa.5.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %conv = trunc i64 %duration.sroa.0.0.copyload50 to i32
  %443 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 %conv, ptr %6, align 4
  %div = sdiv i32 %duration.sroa.5.0.copyload51, 1000
  %444 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 %div, ptr %7, align 4
  %445 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %445, ptr @__sancov_gen_cov_switch_values.328)
  switch i32 %code, label %if.end25.free_mutex_crit_edge [
    i32 -1071884956, label %sw.bb26
    i32 -1071098524, label %sw.bb31
  ]

if.end25.free_mutex_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_mutex

sw.bb26:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %duration_sec28 = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 5
  %446 = ptrtoint ptr %duration_sec28 to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %conv, ptr %duration_sec28, align 4
  %447 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %7, align 4
  %duration_usec30 = getelementptr inbounds %struct.usbtest_param_32, ptr %param_32.0, i32 0, i32 6
  %449 = ptrtoint ptr %duration_usec30 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %448, ptr %duration_usec30, align 4
  br label %free_mutex

sw.bb31:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %conv33 = sext i32 %conv to i64
  %duration_sec34 = getelementptr inbounds %struct.usbtest_param_64, ptr %buf, i32 0, i32 5
  %450 = ptrtoint ptr %duration_sec34 to i32
  call void @__asan_store8_noabort(i32 %450)
  store i64 %conv33, ptr %duration_sec34, align 8
  %conv36 = sext i32 %div to i64
  %duration_usec37 = getelementptr inbounds %struct.usbtest_param_64, ptr %buf, i32 0, i32 6
  %451 = ptrtoint ptr %duration_usec37 to i32
  call void @__asan_store8_noabort(i32 %451)
  store i64 %conv36, ptr %duration_usec37, align 8
  br label %free_mutex

free_mutex:                                       ; preds = %sw.bb31, %sw.bb26, %if.end25.free_mutex_crit_edge, %usbtest_do_ioctl.exit.free_mutex_crit_edge, %usbtest_do_ioctl.exit.thread, %if.end16.free_mutex_crit_edge, %do.end, %if.then3.free_mutex_crit_edge
  %retval1.0 = phi i32 [ %retval.0.i82, %do.end ], [ %retval.0.i78, %usbtest_do_ioctl.exit.free_mutex_crit_edge ], [ %retval.0.i7889, %if.end25.free_mutex_crit_edge ], [ %retval.0.i7889, %sw.bb31 ], [ %retval.0.i7889, %sw.bb26 ], [ -19, %if.then3.free_mutex_crit_edge ], [ -95, %if.end16.free_mutex_crit_edge ], [ %retval.0.i78.ph, %usbtest_do_ioctl.exit.thread ]
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %free_mutex, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %free_mutex ], [ -512, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %start) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %temp) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbtest_suspend(ptr nocapture noundef readnone %intf, [1 x i32] %message.coerce) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @usbtest_resume(ptr nocapture noundef readnone %intf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_endpoints(ptr nocapture noundef %dev, ptr nocapture noundef readonly %intf) unnamed_addr #3 align 64 {
entry:
  %in = alloca ptr, align 4
  %out = alloca ptr, align 4
  %iso_in = alloca ptr, align 4
  %iso_out = alloca ptr, align 4
  %int_in = alloca ptr, align 4
  %int_out = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iso_in)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iso_out)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_in)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_out)
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 2
  %0 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp231.not = icmp eq i32 %1, 0
  br i1 %cmp231.not, label %entry.cleanup128_crit_edge, label %for.body.lr.ph

entry.cleanup128_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup128

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf, align 8
  %4 = load i32, ptr @override_alt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp1 = icmp sgt i32 %4, -1
  %info18 = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc40.for.body_crit_edge, %for.body.lr.ph
  %tmp.0232 = phi i32 [ 0, %for.body.lr.ph ], [ %inc41, %for.inc40.for.body_crit_edge ]
  %5 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %out, align 4
  %6 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %in, align 4
  %7 = ptrtoint ptr %iso_out to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %iso_out, align 4
  %8 = ptrtoint ptr %iso_in to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %iso_in, align 4
  %9 = ptrtoint ptr %int_out to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %int_out, align 4
  %10 = ptrtoint ptr %int_in to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %int_in, align 4
  %add.ptr = getelementptr %struct.usb_host_interface, ptr %3, i32 %tmp.0232
  br i1 %cmp1, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, ptr %add.ptr, i32 0, i32 3
  %11 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bAlternateSetting, align 1
  %conv = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp2.not = icmp eq i32 %4, %conv
  br i1 %cmp2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc40_crit_edge

land.lhs.true.for.inc40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc40

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %add.ptr, i32 0, i32 4
  %13 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bNumEndpoints, align 4
  %conv6 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp7229.not = icmp eq i8 %14, 0
  br i1 %cmp7229.not, label %if.end.for.end_crit_edge, label %for.body9.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body9.lr.ph:                                  ; preds = %if.end
  %endpoint = getelementptr %struct.usb_host_interface, ptr %3, i32 %tmp.0232, i32 3
  %15 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %endpoint, align 4
  br label %for.body9

for.body9:                                        ; preds = %cleanup.for.body9_crit_edge, %for.body9.lr.ph
  %ep.0230 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %cleanup.for.body9_crit_edge ]
  %add.ptr10 = getelementptr %struct.usb_host_endpoint, ptr %16, i32 %ep.0230
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %add.ptr10, i32 0, i32 2
  %17 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bEndpointAddress.i, align 1
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %add.ptr10, i32 0, i32 3
  %19 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bmAttributes.i, align 1
  %21 = and i8 %20, 3
  %and.i = zext i8 %21 to i32
  %22 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.329)
  switch i32 %and.i, label %for.body9.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb14
    i32 1, label %sw.bb17
  ]

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %for.body9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool.not.i = icmp sgt i8 %18, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %23 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %23)
  %in.0.in.0.227 = load ptr, ptr %in, align 4
  %tobool1.not.i = icmp eq ptr %in.0.in.0.227, null
  br i1 %tobool1.not.i, label %if.then.i.cleanup.sink.split_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %sw.bb
  %24 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %24)
  %out.0.out.0.225 = load ptr, ptr %out, align 4
  %tobool3.not.i = icmp eq ptr %out.0.out.0.225, null
  br i1 %tobool3.not.i, label %if.else.i.cleanup.sink.split_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i.cleanup.sink.split_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %for.body9
  %25 = ptrtoint ptr %info18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info18, align 4
  %intr = getelementptr inbounds %struct.usbtest_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %intr to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %intr, align 2
  %28 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %sw.bb14.cleanup_crit_edge, label %if.then15

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool.not.i181 = icmp sgt i8 %18, -1
  br i1 %tobool.not.i181, label %if.else.i185, label %if.then.i183

if.then.i183:                                     ; preds = %if.then15
  %29 = ptrtoint ptr %int_in to i32
  call void @__asan_load4_noabort(i32 %29)
  %int_in.0.int_in.0.217 = load ptr, ptr %int_in, align 4
  %tobool1.not.i182 = icmp eq ptr %int_in.0.int_in.0.217, null
  br i1 %tobool1.not.i182, label %if.then.i183.cleanup.sink.split_crit_edge, label %if.then.i183.cleanup_crit_edge

if.then.i183.cleanup_crit_edge:                   ; preds = %if.then.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i183.cleanup.sink.split_crit_edge:        ; preds = %if.then.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else.i185:                                     ; preds = %if.then15
  %30 = ptrtoint ptr %int_out to i32
  call void @__asan_load4_noabort(i32 %30)
  %int_out.0.int_out.0.214 = load ptr, ptr %int_out, align 4
  %tobool3.not.i184 = icmp eq ptr %int_out.0.int_out.0.214, null
  br i1 %tobool3.not.i184, label %if.else.i185.cleanup.sink.split_crit_edge, label %if.else.i185.cleanup_crit_edge

if.else.i185.cleanup_crit_edge:                   ; preds = %if.else.i185
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i185.cleanup.sink.split_crit_edge:        ; preds = %if.else.i185
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb17:                                          ; preds = %for.body9
  %31 = ptrtoint ptr %info18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %info18, align 4
  %iso = getelementptr inbounds %struct.usbtest_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %iso to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load19 = load i8, ptr %iso, align 2
  %34 = and i8 %bf.load19, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool23.not = icmp eq i8 %34, 0
  br i1 %tobool23.not, label %sw.bb17.cleanup_crit_edge, label %if.then24

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %tobool.not.i189 = icmp sgt i8 %18, -1
  br i1 %tobool.not.i189, label %if.else.i193, label %if.then.i191

if.then.i191:                                     ; preds = %if.then24
  %35 = ptrtoint ptr %iso_in to i32
  call void @__asan_load4_noabort(i32 %35)
  %iso_in.0.iso_in.0.223 = load ptr, ptr %iso_in, align 4
  %tobool1.not.i190 = icmp eq ptr %iso_in.0.iso_in.0.223, null
  br i1 %tobool1.not.i190, label %if.then.i191.cleanup.sink.split_crit_edge, label %if.then.i191.cleanup_crit_edge

if.then.i191.cleanup_crit_edge:                   ; preds = %if.then.i191
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i191.cleanup.sink.split_crit_edge:        ; preds = %if.then.i191
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else.i193:                                     ; preds = %if.then24
  %36 = ptrtoint ptr %iso_out to i32
  call void @__asan_load4_noabort(i32 %36)
  %iso_out.0.iso_out.0.220 = load ptr, ptr %iso_out, align 4
  %tobool3.not.i192 = icmp eq ptr %iso_out.0.iso_out.0.220, null
  br i1 %tobool3.not.i192, label %if.else.i193.cleanup.sink.split_crit_edge, label %if.else.i193.cleanup_crit_edge

if.else.i193.cleanup_crit_edge:                   ; preds = %if.else.i193
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i193.cleanup.sink.split_crit_edge:        ; preds = %if.else.i193
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.i193.cleanup.sink.split_crit_edge, %if.then.i191.cleanup.sink.split_crit_edge, %if.else.i185.cleanup.sink.split_crit_edge, %if.then.i183.cleanup.sink.split_crit_edge, %if.else.i.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge
  %out.sink.i194.sink = phi ptr [ %in, %if.then.i.cleanup.sink.split_crit_edge ], [ %out, %if.else.i.cleanup.sink.split_crit_edge ], [ %int_in, %if.then.i183.cleanup.sink.split_crit_edge ], [ %int_out, %if.else.i185.cleanup.sink.split_crit_edge ], [ %iso_in, %if.then.i191.cleanup.sink.split_crit_edge ], [ %iso_out, %if.else.i193.cleanup.sink.split_crit_edge ]
  %37 = ptrtoint ptr %out.sink.i194.sink to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr10, ptr %out.sink.i194.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.i193.cleanup_crit_edge, %if.then.i191.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %if.else.i185.cleanup_crit_edge, %if.then.i183.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %for.body9.cleanup_crit_edge
  %inc = add nuw nsw i32 %ep.0230, 1
  %exitcond.not = icmp eq i32 %inc, %conv6
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body9_crit_edge

cleanup.for.body9_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %38 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %38)
  %in.0.in.0. = load ptr, ptr %in, align 4
  %tobool27.not = icmp eq ptr %in.0.in.0., null
  br i1 %tobool27.not, label %for.end.lor.lhs.false_crit_edge, label %land.lhs.true28

for.end.lor.lhs.false_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true28:                                  ; preds = %for.end
  %39 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %39)
  %out.0.out.0. = load ptr, ptr %out, align 4
  %tobool29.not = icmp eq ptr %out.0.out.0., null
  br i1 %tobool29.not, label %land.lhs.true28.lor.lhs.false_crit_edge, label %land.lhs.true28.found_crit_edge

land.lhs.true28.found_crit_edge:                  ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

land.lhs.true28.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true28.lor.lhs.false_crit_edge, %for.end.lor.lhs.false_crit_edge
  %40 = ptrtoint ptr %iso_in to i32
  call void @__asan_load4_noabort(i32 %40)
  %iso_in.0.iso_in.0. = load ptr, ptr %iso_in, align 4
  %tobool30.not = icmp eq ptr %iso_in.0.iso_in.0., null
  br i1 %tobool30.not, label %lor.lhs.false31, label %lor.lhs.false.found_crit_edge

lor.lhs.false.found_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %41 = ptrtoint ptr %iso_out to i32
  call void @__asan_load4_noabort(i32 %41)
  %iso_out.0.iso_out.0. = load ptr, ptr %iso_out, align 4
  %tobool32.not = icmp eq ptr %iso_out.0.iso_out.0., null
  br i1 %tobool32.not, label %lor.lhs.false33, label %lor.lhs.false31.found_crit_edge

lor.lhs.false31.found_crit_edge:                  ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

lor.lhs.false33:                                  ; preds = %lor.lhs.false31
  %42 = ptrtoint ptr %int_in to i32
  call void @__asan_load4_noabort(i32 %42)
  %int_in.0.int_in.0. = load ptr, ptr %int_in, align 4
  %tobool34.not = icmp eq ptr %int_in.0.int_in.0., null
  br i1 %tobool34.not, label %lor.lhs.false35, label %lor.lhs.false33.found_crit_edge

lor.lhs.false33.found_crit_edge:                  ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

lor.lhs.false35:                                  ; preds = %lor.lhs.false33
  %43 = ptrtoint ptr %int_out to i32
  call void @__asan_load4_noabort(i32 %43)
  %int_out.0.int_out.0. = load ptr, ptr %int_out, align 4
  %tobool36.not = icmp eq ptr %int_out.0.int_out.0., null
  br i1 %tobool36.not, label %lor.lhs.false35.for.inc40_crit_edge, label %lor.lhs.false35.found_crit_edge

lor.lhs.false35.found_crit_edge:                  ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

lor.lhs.false35.for.inc40_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc40

for.inc40:                                        ; preds = %lor.lhs.false35.for.inc40_crit_edge, %land.lhs.true.for.inc40_crit_edge
  %inc41 = add nuw i32 %tmp.0232, 1
  %exitcond236.not = icmp eq i32 %inc41, %1
  br i1 %exitcond236.not, label %for.inc40.cleanup128_crit_edge, label %for.inc40.for.body_crit_edge

for.inc40.for.body_crit_edge:                     ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc40.cleanup128_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup128

found:                                            ; preds = %lor.lhs.false35.found_crit_edge, %lor.lhs.false33.found_crit_edge, %lor.lhs.false31.found_crit_edge, %lor.lhs.false.found_crit_edge, %land.lhs.true28.found_crit_edge
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %45, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 -128
  %bAlternateSetting45 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %add.ptr, i32 0, i32 3
  %48 = ptrtoint ptr %bAlternateSetting45 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bAlternateSetting45, align 1
  %conv46 = zext i8 %49 to i32
  %50 = ptrtoint ptr %info18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info18, align 4
  %alt48 = getelementptr inbounds %struct.usbtest_info, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %alt48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv46, ptr %alt48, align 4
  %53 = load i8, ptr %bAlternateSetting45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp52.not = icmp eq i8 %53, 0
  br i1 %cmp52.not, label %found.if.end65_crit_edge, label %if.then54

found.if.end65_crit_edge:                         ; preds = %found
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then54:                                        ; preds = %found
  %conv51 = zext i8 %53 to i32
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %add.ptr, i32 0, i32 2
  %54 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bInterfaceNumber, align 2
  %conv56 = zext i8 %55 to i32
  %call60 = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i.i, i32 noundef %conv56, i32 noundef %conv51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then54.cleanup128_crit_edge, label %if.then54.if.end65_crit_edge

if.then54.if.end65_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then54.cleanup128_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup128

if.end65:                                         ; preds = %if.then54.if.end65_crit_edge, %found.if.end65_crit_edge
  %56 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %56)
  %in.0.in.0.226 = load ptr, ptr %in, align 4
  %tobool66.not = icmp eq ptr %in.0.in.0.226, null
  br i1 %tobool66.not, label %if.end65.if.end72_crit_edge, label %if.then67

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %in.0.in.0.226, i32 0, i32 2
  %57 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bEndpointAddress, align 2
  %59 = and i8 %58, 15
  %and = zext i8 %59 to i32
  %60 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i = shl i32 %61, 8
  %shl1.i = shl nuw nsw i32 %and, 15
  %or.i = or i32 %shl.i, %shl1.i
  %or71 = or i32 %or.i, -1073741696
  %in_pipe = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 2
  %62 = ptrtoint ptr %in_pipe to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or71, ptr %in_pipe, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.end65.if.end72_crit_edge
  %63 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %63)
  %out.0.out.0.224 = load ptr, ptr %out, align 4
  %tobool73.not = icmp eq ptr %out.0.out.0.224, null
  br i1 %tobool73.not, label %if.end72.if.end81_crit_edge, label %if.then74

if.end72.if.end81_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %bEndpointAddress76 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %out.0.out.0.224, i32 0, i32 2
  %64 = ptrtoint ptr %bEndpointAddress76 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bEndpointAddress76, align 2
  %66 = and i8 %65, 15
  %and78 = zext i8 %66 to i32
  %67 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i197 = shl i32 %68, 8
  %shl1.i198 = shl nuw nsw i32 %and78, 15
  %or.i199 = or i32 %shl.i197, %shl1.i198
  %or80 = or i32 %or.i199, -1073741824
  %out_pipe = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 3
  %69 = ptrtoint ptr %out_pipe to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or80, ptr %out_pipe, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then74, %if.end72.if.end81_crit_edge
  %70 = ptrtoint ptr %iso_in to i32
  call void @__asan_load4_noabort(i32 %70)
  %iso_in.0.iso_in.0.221 = load ptr, ptr %iso_in, align 4
  %tobool82.not = icmp eq ptr %iso_in.0.iso_in.0.221, null
  br i1 %tobool82.not, label %if.end81.if.end93_crit_edge, label %if.then83

if.end81.if.end93_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %iso_in85 = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 8
  %71 = ptrtoint ptr %iso_in85 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %iso_in.0.iso_in.0.221, ptr %iso_in85, align 4
  %bEndpointAddress87 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %iso_in.0.iso_in.0.221, i32 0, i32 2
  %72 = ptrtoint ptr %bEndpointAddress87 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bEndpointAddress87, align 2
  %74 = and i8 %73, 15
  %and89 = zext i8 %74 to i32
  %75 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i200 = shl i32 %76, 8
  %shl1.i201 = shl nuw nsw i32 %and89, 15
  %or.i202 = or i32 %shl.i200, %shl1.i201
  %or92 = or i32 %or.i202, 128
  %in_iso_pipe = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 4
  %77 = ptrtoint ptr %in_iso_pipe to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or92, ptr %in_iso_pipe, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then83, %if.end81.if.end93_crit_edge
  %78 = ptrtoint ptr %iso_out to i32
  call void @__asan_load4_noabort(i32 %78)
  %iso_out.0.iso_out.0.218 = load ptr, ptr %iso_out, align 4
  %tobool94.not = icmp eq ptr %iso_out.0.iso_out.0.218, null
  br i1 %tobool94.not, label %if.end93.if.end104_crit_edge, label %if.then95

if.end93.if.end104_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %iso_out97 = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 9
  %79 = ptrtoint ptr %iso_out97 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %iso_out.0.iso_out.0.218, ptr %iso_out97, align 4
  %bEndpointAddress99 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %iso_out.0.iso_out.0.218, i32 0, i32 2
  %80 = ptrtoint ptr %bEndpointAddress99 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bEndpointAddress99, align 2
  %82 = and i8 %81, 15
  %and101 = zext i8 %82 to i32
  %83 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i203 = shl i32 %84, 8
  %shl1.i204 = shl nuw nsw i32 %and101, 15
  %or.i205 = or i32 %shl1.i204, %shl.i203
  %out_iso_pipe = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 5
  %85 = ptrtoint ptr %out_iso_pipe to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or.i205, ptr %out_iso_pipe, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then95, %if.end93.if.end104_crit_edge
  %86 = ptrtoint ptr %int_in to i32
  call void @__asan_load4_noabort(i32 %86)
  %int_in.0.int_in.0.215 = load ptr, ptr %int_in, align 4
  %tobool105.not = icmp eq ptr %int_in.0.int_in.0.215, null
  br i1 %tobool105.not, label %if.end104.if.end116_crit_edge, label %if.then106

if.end104.if.end116_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then106:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %int_in108 = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 10
  %87 = ptrtoint ptr %int_in108 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %int_in.0.int_in.0.215, ptr %int_in108, align 4
  %bEndpointAddress110 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %int_in.0.int_in.0.215, i32 0, i32 2
  %88 = ptrtoint ptr %bEndpointAddress110 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bEndpointAddress110, align 2
  %90 = and i8 %89, 15
  %and112 = zext i8 %90 to i32
  %91 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i206 = shl i32 %92, 8
  %shl1.i207 = shl nuw nsw i32 %and112, 15
  %or.i208 = or i32 %shl.i206, %shl1.i207
  %or115 = or i32 %or.i208, 1073741952
  %in_int_pipe = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 6
  %93 = ptrtoint ptr %in_int_pipe to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or115, ptr %in_int_pipe, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then106, %if.end104.if.end116_crit_edge
  %94 = ptrtoint ptr %int_out to i32
  call void @__asan_load4_noabort(i32 %94)
  %int_out.0.int_out.0.212 = load ptr, ptr %int_out, align 4
  %tobool117.not = icmp eq ptr %int_out.0.int_out.0.212, null
  br i1 %tobool117.not, label %if.end116.cleanup128_crit_edge, label %if.then118

if.end116.cleanup128_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup128

if.then118:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %int_out120 = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 11
  %95 = ptrtoint ptr %int_out120 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %int_out.0.int_out.0.212, ptr %int_out120, align 4
  %bEndpointAddress122 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %int_out.0.int_out.0.212, i32 0, i32 2
  %96 = ptrtoint ptr %bEndpointAddress122 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %bEndpointAddress122, align 2
  %98 = and i8 %97, 15
  %and124 = zext i8 %98 to i32
  %99 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i209 = shl i32 %100, 8
  %shl1.i210 = shl nuw nsw i32 %and124, 15
  %or.i211 = or i32 %shl.i209, %shl1.i210
  %or126 = or i32 %or.i211, 1073741824
  %out_int_pipe = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 7
  %101 = ptrtoint ptr %out_int_pipe to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or126, ptr %out_int_pipe, align 4
  br label %cleanup128

cleanup128:                                       ; preds = %if.then118, %if.end116.cleanup128_crit_edge, %if.then54.cleanup128_crit_edge, %for.inc40.cleanup128_crit_edge, %entry.cleanup128_crit_edge
  %retval.0 = phi i32 [ %call60, %if.then54.cleanup128_crit_edge ], [ 0, %if.then118 ], [ 0, %if.end116.cleanup128_crit_edge ], [ -22, %entry.cleanup128_crit_edge ], [ -22, %for.inc40.cleanup128_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_out)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_in)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iso_out)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iso_in)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in)
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @simple_io(ptr nocapture noundef readonly %tdev, ptr noundef %urb, i32 noundef %iterations, i32 noundef %vary, i32 noundef %expected, ptr noundef %label) unnamed_addr #3 align 64 {
entry:
  %completion = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %2 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transfer_buffer_length, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #10
  %4 = call ptr @memset(ptr %completion, i32 255, i32 56)
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %5 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %completion, ptr %context, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %status12 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vary)
  %tobool22.not = icmp eq i32 %vary, 0
  %6 = call i32 @llvm.smin.i32(i32 %3, i32 %vary)
  %smin = call i32 @llvm.smin.i32(i32 %iterations, i32 0)
  %7 = add i32 %smin, -1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end34.land.rhs_crit_edge, %entry
  %iterations.addr.076 = phi i32 [ %iterations, %entry ], [ %dec, %if.end34.land.rhs_crit_edge ]
  %dec = add i32 %iterations.addr.076, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iterations.addr.076)
  %cmp2 = icmp sgt i32 %iterations.addr.076, 0
  br i1 %cmp2, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %8 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %completion, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.154, ptr noundef nonnull @init_completion.__key) #10
  %9 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pipe, align 4
  %and = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.body
  %11 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transfer_buffer.i, align 4
  %13 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transfer_buffer_length, align 4
  %15 = load i32, ptr @pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cond.i = icmp eq i32 %15, 1
  br i1 %cond.i, label %sw.bb1.i, label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %16 = call ptr @memset(ptr %12, i32 0, i32 %14)
  br label %simple_fill_buf.exit

sw.bb1.i:                                         ; preds = %if.then
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %ep_out.i.i.i = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 22
  %shr.i.i.i = lshr i32 %10, 15
  %and2.i.i.i = and i32 %shr.i.i.i, 15
  %arrayidx.i.i.i = getelementptr ptr, ptr %ep_out.i.i.i, i32 %and2.i.i.i
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i.i, align 4
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %wMaxPacketSize.i.i, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22) #10
  %conv.i.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10.not.i = icmp eq i32 %14, 0
  br i1 %cmp10.not.i, label %sw.bb1.i.simple_fill_buf.exit_crit_edge, label %sw.bb1.i.for.body.i_crit_edge

sw.bb1.i.for.body.i_crit_edge:                    ; preds = %sw.bb1.i
  br label %for.body.i

sw.bb1.i.simple_fill_buf.exit_crit_edge:          ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %simple_fill_buf.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb1.i.for.body.i_crit_edge
  %buf.012.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %12, %sw.bb1.i.for.body.i_crit_edge ]
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb1.i.for.body.i_crit_edge ]
  %rem.i = urem i32 %i.011.i, %conv.i.i
  %rem2.i = urem i32 %rem.i, 63
  %conv.i = trunc i32 %rem2.i to i8
  %incdec.ptr.i = getelementptr i8, ptr %buf.012.i, i32 1
  %24 = ptrtoint ptr %buf.012.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i, ptr %buf.012.i, align 1
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.body.i.simple_fill_buf.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.simple_fill_buf.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %simple_fill_buf.exit

simple_fill_buf.exit:                             ; preds = %for.body.i.simple_fill_buf.exit_crit_edge, %sw.bb1.i.simple_fill_buf.exit_crit_edge, %sw.bb.i
  %25 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %transfer_flags, align 4
  %or = or i32 %26, 64
  store i32 %or, ptr %transfer_flags, align 4
  br label %if.end

if.end:                                           ; preds = %simple_fill_buf.exit, %while.body.if.end_crit_edge
  %call = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end5:                                          ; preds = %if.end
  %call7 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %completion, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  call void @usb_kill_urb(ptr noundef %urb) #10
  %27 = ptrtoint ptr %status12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %28)
  %cmp10 = icmp eq i32 %28, -2
  br i1 %cmp10, label %if.end13.thread, label %if.then9.if.end13_crit_edge

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %status12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status12, align 4
  br label %if.end13

if.end13.thread:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %dev, align 4
  br label %if.end21

if.end13:                                         ; preds = %if.else, %if.then9.if.end13_crit_edge
  %retval1.1 = phi i32 [ %30, %if.else ], [ %28, %if.then9.if.end13_crit_edge ]
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %1, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1)
  %cmp15 = icmp eq i32 %retval1.1, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end13
  %33 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pipe, align 4
  %and17 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end21_crit_edge, label %if.then19

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = call fastcc i32 @simple_check_buf(ptr noundef %tdev, ptr noundef %urb)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %land.lhs.true.if.end21_crit_edge, %if.end13.if.end21_crit_edge, %if.end13.thread
  %retval1.2 = phi i32 [ %call20, %if.then19 ], [ 0, %land.lhs.true.if.end21_crit_edge ], [ %retval1.1, %if.end13.if.end21_crit_edge ], [ -110, %if.end13.thread ]
  br i1 %tobool22.not, label %if.end21.if.end34_crit_edge, label %if.then23

if.end21.if.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %transfer_buffer_length, align 4
  %add = add i32 %36, %vary
  %rem = srem i32 %add, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp25 = icmp eq i32 %rem, 0
  %len.0 = select i1 %cmp25, i32 %6, i32 %rem
  %37 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %len.0, ptr %transfer_buffer_length, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then23, %if.end21.if.end34_crit_edge
  %cmp = icmp eq i32 %retval1.2, 0
  br i1 %cmp, label %if.end34.land.rhs_crit_edge, label %if.end34.while.end_crit_edge

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end34.land.rhs_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.end:                                        ; preds = %if.end34.while.end_crit_edge, %if.end.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %dec.lcssa = phi i32 [ %dec, %if.end34.while.end_crit_edge ], [ %dec, %if.end.while.end_crit_edge ], [ %7, %land.rhs.while.end_crit_edge ]
  %retval1.3 = phi i32 [ %retval1.2, %if.end34.while.end_crit_edge ], [ %call, %if.end.while.end_crit_edge ], [ 0, %land.rhs.while.end_crit_edge ]
  %38 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %3, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval1.3, i32 %expected)
  %cmp36.not = icmp eq i32 %retval1.3, %expected
  br i1 %cmp36.not, label %while.end.if.end39_crit_edge, label %do.end

while.end.if.end39_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev38 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.152, ptr noundef %label, i32 noundef %dec.lcssa, i32 noundef %retval1.3, i32 noundef %expected) #13
  br label %if.end39

if.end39:                                         ; preds = %do.end, %while.end.if.end39_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #10
  ret i32 %retval1.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @simple_free_urb(ptr noundef %urb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, 127
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %3 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %transfer_flags, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %7 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %transfer_buffer_length, align 4
  %add = add i32 %8, %and.i
  %idx.neg = sub nsw i32 0, %and.i
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 15
  %9 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %transfer_dma, align 4
  %sub = sub i32 %10, %and.i
  tail call void @usb_free_coherent(ptr noundef %6, i32 noundef %add, ptr noundef %add.ptr, i32 noundef %sub) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %idx.neg3 = sub nsw i32 0, %and.i
  %add.ptr4 = getelementptr i8, ptr %1, i32 %idx.neg3
  tail call void @kfree(ptr noundef %add.ptr4) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @usb_free_urb(ptr noundef %urb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_sglist(i32 noundef %nents, i32 noundef %max, i32 noundef %vary, ptr nocapture noundef readonly %dev, i32 noundef %pipe) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %and.i.i = and i32 %pipe, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i.v = select i1 %tobool.not.i.i, i32 1024, i32 960
  %cond.i.i = getelementptr i8, ptr %3, i32 %cond.i.i.v
  %shr.i.i = lshr i32 %pipe, 15
  %and2.i.i = and i32 %shr.i.i, 15
  %arrayidx.i.i = getelementptr ptr, ptr %cond.i.i, i32 %and2.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wMaxPacketSize.i, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #10
  %conv.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %cmp = icmp eq i32 %max, 0
  br i1 %cmp, label %entry.cleanup30_crit_edge, label %if.end

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

if.end:                                           ; preds = %entry
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nents, i32 20) #10
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end.cleanup30_crit_edge, label %if.end7.i, !prof !607

if.end.cleanup30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

if.end7.i:                                        ; preds = %if.end
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup30_crit_edge, label %if.end4

if.end7.i.cleanup30_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

if.end4:                                          ; preds = %if.end7.i
  tail call void @sg_init_table(ptr noundef nonnull %call8.i, i32 noundef %nents) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp5116.not = icmp eq i32 %nents, 0
  br i1 %cmp5116.not, label %if.end4.cleanup30_crit_edge, label %for.body.lr.ph

if.end4.cleanup30_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

for.body.lr.ph:                                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vary)
  %tobool15.not = icmp eq i32 %vary, 0
  %12 = tail call i32 @llvm.smin.i32(i32 %vary, i32 %max)
  br label %if.end8.i.i90

if.end8.i.i90:                                    ; preds = %for.inc27.if.end8.i.i90_crit_edge, %for.body.lr.ph
  %size.0120 = phi i32 [ %max, %for.body.lr.ph ], [ %size.2112, %for.inc27.if.end8.i.i90_crit_edge ]
  %i.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %inc28, %for.inc27.if.end8.i.i90_crit_edge ]
  %n_size.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %n_size.1, %for.inc27.if.end8.i.i90_crit_edge ]
  %call9.i.i89 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size.0120, i32 noundef 3520) #15
  %tobool7.not = icmp eq ptr %call9.i.i89, null
  br i1 %tobool7.not, label %for.cond.preheader.i, label %if.end9

for.cond.preheader.i:                             ; preds = %if.end8.i.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0118)
  %cmp13.not.i = icmp eq i32 %i.0118, 0
  br i1 %cmp13.not.i, label %for.cond.preheader.i.cleanup30.sink.split_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup30.sink.split_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30.sink.split

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %call8.i, i32 %i.014.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %and.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !608

do.body2.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !609
  unreachable

sg_page.exit.i:                                   ; preds = %for.body.i
  %and.i.i91 = and i32 %14, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i91)
  %tobool1.not.i = icmp eq i32 %and.i.i91, 0
  br i1 %tobool1.not.i, label %sg_page.exit.i.for.inc.i_crit_edge, label %sg_virt.exit.i

sg_page.exit.i.for.inc.i_crit_edge:               ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

sg_virt.exit.i:                                   ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = inttoptr i32 %and.i.i91 to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef nonnull %15) #10
  %offset.i.i = getelementptr %struct.scatterlist, ptr %call8.i, i32 %i.014.i, i32 1
  %16 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %17
  tail call void @kfree(ptr noundef %add.ptr.i.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %sg_virt.exit.i, %sg_page.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.0118
  br i1 %exitcond.not.i, label %for.inc.i.cleanup30.sink.split_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup30.sink.split_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30.sink.split

if.end9:                                          ; preds = %if.end8.i.i90
  %arrayidx = getelementptr %struct.scatterlist, ptr %call8.i, i32 %i.0118
  %18 = ptrtoint ptr %call9.i.i89 to i32
  %cmp.i = icmp ugt ptr %call9.i.i89, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i92, label %if.end9.do.body5.i_crit_edge, !prof !608

if.end9.do.body5.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.lhs.true.i92:                                ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %19 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %19, %call9.i.i89
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i92.do.body5.i_crit_edge, !prof !608

land.lhs.true.i92.do.body5.i_crit_edge:           ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i92
  %sub.i = add i32 %18, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %20 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %20, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !607

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i92.do.body5.i_crit_edge, %if.end9.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #10, !srcloc !610
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %add.ptr.i93 = getelementptr %struct.page, ptr %21, i32 %shr.i
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %add.ptr.i93 to i32
  %and2.i.i.i = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i94 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i94, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !608

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !611
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !608

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !612
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %18, 3968
  %and.i.i.i95 = and i32 %23, 3
  %or.i.i.i = or i32 %and.i.i.i95, %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i.i.i, ptr %arrayidx, align 4
  %offset1.i.i = getelementptr %struct.scatterlist, ptr %call8.i, i32 %i.0118, i32 1
  %26 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %call8.i, i32 %i.0118, i32 2
  %27 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %size.0120, ptr %length.i.i, align 4
  %28 = load i32, ptr @pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cond36 = icmp eq i32 %28, 1
  br i1 %cond36, label %for.cond10.preheader, label %sg_set_buf.exit.sw.epilog_crit_edge

sg_set_buf.exit.sw.epilog_crit_edge:              ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.cond10.preheader:                             ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0120)
  %cmp11113.not = icmp eq i32 %size.0120, 0
  br i1 %cmp11113.not, label %for.cond10.preheader.for.end_crit_edge, label %for.cond10.preheader.for.body12_crit_edge

for.cond10.preheader.for.body12_crit_edge:        ; preds = %for.cond10.preheader
  br label %for.body12

for.cond10.preheader.for.end_crit_edge:           ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.cond10.preheader.for.body12_crit_edge
  %j.0115 = phi i32 [ %inc, %for.body12.for.body12_crit_edge ], [ 0, %for.cond10.preheader.for.body12_crit_edge ]
  %buf.0114 = phi ptr [ %incdec.ptr, %for.body12.for.body12_crit_edge ], [ %call9.i.i89, %for.cond10.preheader.for.body12_crit_edge ]
  %add = add i32 %j.0115, %n_size.0117
  %rem = urem i32 %add, %conv.i
  %rem13 = urem i32 %rem, 63
  %conv = trunc i32 %rem13 to i8
  %incdec.ptr = getelementptr i8, ptr %buf.0114, i32 1
  %29 = ptrtoint ptr %buf.0114 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %buf.0114, align 1
  %inc = add nuw i32 %j.0115, 1
  %exitcond.not = icmp eq i32 %inc, %size.0120
  br i1 %exitcond.not, label %for.body12.for.end_crit_edge, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12

for.body12.for.end_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body12.for.end_crit_edge, %for.cond10.preheader.for.end_crit_edge
  %add14 = add i32 %size.0120, %n_size.0117
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %sg_set_buf.exit.sw.epilog_crit_edge
  %n_size.1 = phi i32 [ %add14, %for.end ], [ %n_size.0117, %sg_set_buf.exit.sw.epilog_crit_edge ]
  br i1 %tobool15.not, label %sw.epilog.for.inc27_crit_edge, label %if.then16

sw.epilog.for.inc27_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc27

if.then16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %add17 = add i32 %size.0120, %vary
  %rem18 = urem i32 %add17, %max
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem18)
  %cmp19 = icmp eq i32 %rem18, 0
  %spec.select = select i1 %cmp19, i32 %12, i32 %rem18
  br label %for.inc27

for.inc27:                                        ; preds = %if.then16, %sw.epilog.for.inc27_crit_edge
  %size.2112 = phi i32 [ %size.0120, %sw.epilog.for.inc27_crit_edge ], [ %spec.select, %if.then16 ]
  %inc28 = add nuw i32 %i.0118, 1
  %exitcond123.not = icmp eq i32 %inc28, %nents
  br i1 %exitcond123.not, label %for.inc27.cleanup30_crit_edge, label %for.inc27.if.end8.i.i90_crit_edge

for.inc27.if.end8.i.i90_crit_edge:                ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i90

for.inc27.cleanup30_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30

cleanup30.sink.split:                             ; preds = %for.inc.i.cleanup30.sink.split_crit_edge, %for.cond.preheader.i.cleanup30.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i) #10
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup30.sink.split, %for.inc27.cleanup30_crit_edge, %if.end4.cleanup30_crit_edge, %if.end7.i.cleanup30_crit_edge, %if.end.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.2 = phi ptr [ null, %entry.cleanup30_crit_edge ], [ null, %if.end7.i.cleanup30_crit_edge ], [ null, %if.end.cleanup30_crit_edge ], [ %call8.i, %if.end4.cleanup30_crit_edge ], [ null, %cleanup30.sink.split ], [ %call8.i, %for.inc27.cleanup30_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @perform_sglist(ptr nocapture noundef readonly %tdev, i32 noundef %iterations, i32 noundef %pipe, ptr noundef %req, ptr noundef %sg, i32 noundef %nents) unnamed_addr #3 align 64 {
entry:
  %timeout = alloca %struct.sg_timeout, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tdev, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %timeout) #10
  %4 = call ptr @memset(ptr %timeout, i32 0, i32 48)
  %req2 = getelementptr inbounds %struct.sg_timeout, ptr %timeout, i32 0, i32 1
  %5 = ptrtoint ptr %req2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %req, ptr %req2, align 4
  call void @init_timer_on_stack_key(ptr noundef nonnull %timeout, ptr noundef nonnull @sg_timeout, i32 noundef 0, ptr noundef nonnull @.str.159, ptr noundef nonnull @perform_sglist.__key) #10
  %speed = getelementptr i8, ptr %3, i32 -100
  br label %land.rhs

land.rhs:                                         ; preds = %if.end13.land.rhs_crit_edge, %entry
  %iterations.addr.037 = phi i32 [ %iterations, %entry ], [ %dec, %if.end13.land.rhs_crit_edge ]
  %dec = add i32 %iterations.addr.037, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iterations.addr.037)
  %cmp3.not = icmp eq i32 %iterations.addr.037, 0
  br i1 %cmp3.not, label %land.rhs.if.end20_crit_edge, label %while.body

land.rhs.if.end20_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

while.body:                                       ; preds = %land.rhs
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp4 = icmp eq i32 %7, 3
  %cond = select i1 %cmp4, i32 8, i32 1
  %call5 = call i32 @usb_sg_init(ptr noundef %req, ptr noundef %add.ptr.i.i, i32 noundef %pipe, i32 noundef %cond, ptr noundef %sg, i32 noundef %nents, i32 noundef 0, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %while.body.do.end19_crit_edge

while.body.do.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 1000
  %call8 = call i32 @mod_timer(ptr noundef nonnull %timeout, i32 noundef %add) #10
  call void @usb_sg_wait(ptr noundef %req) #10
  %call10 = call i32 @del_timer_sync(ptr noundef nonnull %timeout) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13.thread, label %if.end13

if.end13.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @destroy_timer_on_stack(ptr noundef nonnull %timeout) #10
  br label %do.end19

if.end13:                                         ; preds = %if.end
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %req, align 4
  call void @destroy_timer_on_stack(ptr noundef nonnull %timeout) #10
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.end13.land.rhs_crit_edge, label %if.end13.do.end19_crit_edge

if.end13.do.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

if.end13.land.rhs_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

do.end19:                                         ; preds = %if.end13.do.end19_crit_edge, %if.end13.thread, %while.body.do.end19_crit_edge
  %retval1.2.ph = phi i32 [ -110, %if.end13.thread ], [ %call5, %while.body.do.end19_crit_edge ], [ %10, %if.end13.do.end19_crit_edge ]
  %11 = ptrtoint ptr %tdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tdev, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.160, i32 noundef %dec, i32 noundef %retval1.2.ph) #13
  br label %if.end20

if.end20:                                         ; preds = %do.end19, %land.rhs.if.end20_crit_edge
  %retval1.236 = phi i32 [ %retval1.2.ph, %do.end19 ], [ 0, %land.rhs.if.end20_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %timeout) #10
  ret i32 %retval1.236
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_sglist(ptr noundef %sg, i32 noundef %nents) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nents)
  %cmp13.not = icmp eq i32 %nents, 0
  br i1 %cmp13.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.scatterlist, ptr %sg, i32 %i.014
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !608

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !609
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %1, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not, label %sg_page.exit.for.inc_crit_edge, label %sg_virt.exit

sg_page.exit.for.inc_crit_edge:                   ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sg_virt.exit:                                     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %2 = inttoptr i32 %and.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef nonnull %2) #10
  %offset.i = getelementptr %struct.scatterlist, ptr %sg, i32 %i.014, i32 1
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %4
  tail call void @kfree(ptr noundef %add.ptr.i) #10
  br label %for.inc

for.inc:                                          ; preds = %sg_virt.exit, %sg_page.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %nents
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %sg) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch9_postconfig(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp581.not = icmp eq i32 %5, 0
  br i1 %cmp581.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev7 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %buf.i = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %5, %for.body.lr.ph ], [ %41, %for.inc.for.body_crit_edge ]
  %i.0582 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %bAlternateSetting = getelementptr %struct.usb_host_interface, ptr %8, i32 %i.0582, i32 0, i32 3
  %9 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bAlternateSetting, align 1
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp5.not = icmp ugt i32 %6, %conv
  br i1 %cmp5.not, label %for.body.if.end_crit_edge, label %do.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.162, i32 noundef %i.0582, i32 noundef %conv) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %11 = load i32, ptr @realworld, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp9 = icmp eq i32 %13, 1
  br i1 %cmp9, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -128
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 8
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %21 to i32
  %call2.i = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i.i, i32 noundef %conv.i, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool14.not = icmp eq i32 %call2.i, 0
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %conv.le625 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.165, i32 noundef %conv.le625, i32 noundef %call2.i) #13
  br label %cleanup328

if.end20:                                         ; preds = %if.end12
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %parent.i.i489 = getelementptr inbounds %struct.usb_interface, ptr %23, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %parent.i.i489 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i.i489, align 8
  %add.ptr.i.i490 = getelementptr i8, ptr %25, i32 -128
  %26 = ptrtoint ptr %add.ptr.i.i490 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i490, align 8
  %shl.i.i = shl i32 %27, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %23, align 8
  %bInterfaceNumber.i491 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %bInterfaceNumber.i491 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bInterfaceNumber.i491, align 2
  %conv.i492 = zext i8 %31 to i16
  %32 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf.i, align 4
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i490, i32 noundef %or3.i, i8 noundef zeroext 10, i8 noundef zeroext -127, i16 noundef zeroext 0, i16 noundef zeroext %conv.i492, ptr noundef %33, i16 noundef zeroext 1, i32 noundef 5000) #10
  %34 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.330)
  switch i32 %call4.i, label %if.end20.get_altsetting.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %do.end27.thread
  ]

if.end20.get_altsetting.exit_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_altsetting.exit

sw.bb.i:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  %conv7.i = zext i8 %38 to i32
  br label %get_altsetting.exit

do.end27.thread:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %conv.le623 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.168, i32 noundef %conv.le623, i32 noundef -34) #13
  br label %39

get_altsetting.exit:                              ; preds = %sw.bb.i, %if.end20.get_altsetting.exit_crit_edge
  %retval.0.i = phi i32 [ %conv7.i, %sw.bb.i ], [ %call4.i, %if.end20.get_altsetting.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv)
  %cmp22.not = icmp eq i32 %retval.0.i, %conv
  br i1 %cmp22.not, label %get_altsetting.exit.for.inc_crit_edge, label %do.end27

get_altsetting.exit.for.inc_crit_edge:            ; preds = %get_altsetting.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end27:                                         ; preds = %get_altsetting.exit
  %conv.le = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.168, i32 noundef %conv.le, i32 noundef %retval.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp29 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp29, label %do.end27._crit_edge, label %do.end27.cleanup328_crit_edge

do.end27.cleanup328_crit_edge:                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup328

do.end27._crit_edge:                              ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %39

39:                                               ; preds = %do.end27._crit_edge, %do.end27.thread
  %retval.0.i542546 = phi i32 [ -34, %do.end27.thread ], [ %retval.0.i, %do.end27._crit_edge ]
  br label %cleanup328

for.inc:                                          ; preds = %get_altsetting.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw i32 %i.0582, 1
  %40 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_altsetting, align 8
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %42 = load i32, ptr @realworld, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool32.not = icmp eq i32 %42, 0
  br i1 %tobool32.not, label %for.end.if.then37_crit_edge, label %lor.lhs.false33

for.end.if.then37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

lor.lhs.false33:                                  ; preds = %for.end
  %bNumConfigurations = getelementptr i8, ptr %3, i32 945
  %43 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bNumConfigurations, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp35.not = icmp eq i8 %44, 1
  br i1 %cmp35.not, label %lor.lhs.false33.if.end66_crit_edge, label %lor.lhs.false33.if.then37_crit_edge

lor.lhs.false33.if.then37_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

lor.lhs.false33.if.end66_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then37:                                        ; preds = %lor.lhs.false33.if.then37_crit_edge, %for.end.if.then37_crit_edge
  %actconfig = getelementptr i8, ptr %3, i32 956
  %45 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %actconfig, align 4
  %bConfigurationValue = getelementptr inbounds %struct.usb_config_descriptor, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %bConfigurationValue to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bConfigurationValue, align 1
  %conv39 = zext i8 %48 to i32
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %50, 8
  %or41 = or i32 %shl.i, -2147483520
  %buf = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 13
  %51 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf, align 4
  %call42 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or41, i8 noundef zeroext 8, i8 noundef zeroext -128, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %52, i16 noundef zeroext 1, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 1
  br i1 %cmp43.not, label %lor.lhs.false45, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false45:                                  ; preds = %if.then37
  %53 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %48)
  %cmp49.not = icmp eq i8 %56, %48
  br i1 %cmp49.not, label %lor.lhs.false45.if.end66_crit_edge, label %lor.lhs.false45.cleanup_crit_edge

lor.lhs.false45.cleanup_crit_edge:                ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false45.if.end66_crit_edge:               ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

cleanup:                                          ; preds = %lor.lhs.false45.cleanup_crit_edge, %if.then37.cleanup_crit_edge
  %dev55 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %57 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  %conv58 = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.171, i32 noundef %call42, i32 noundef %conv58, i32 noundef %conv39) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp59 = icmp slt i32 %call42, 0
  %spec.select482 = select i1 %cmp59, i32 %call42, i32 -33
  br label %cleanup328

if.end66:                                         ; preds = %lor.lhs.false45.if.end66_crit_edge, %lor.lhs.false33.if.end66_crit_edge
  %buf67 = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 13
  %61 = ptrtoint ptr %buf67 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buf67, align 4
  %call68 = tail call i32 @usb_get_descriptor(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %62, i32 noundef 18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %call68)
  %cmp69.not = icmp eq i32 %call68, 18
  br i1 %cmp69.not, label %if.end82, label %do.end74

do.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %dev75 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev75, ptr noundef nonnull @.str.174, i32 noundef %call68) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp76 = icmp slt i32 %call68, 0
  %spec.select483 = select i1 %cmp76, i32 %call68, i32 -33
  br label %cleanup328

if.end82:                                         ; preds = %if.end66
  %bcdUSB = getelementptr i8, ptr %3, i32 930
  %63 = ptrtoint ptr %bcdUSB to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %bcdUSB, align 2
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  call void @__sanitizer_cov_trace_const_cmp2(i16 527, i16 %65)
  %cmp85 = icmp ugt i16 %65, 527
  br i1 %cmp85, label %if.then87, label %if.end82.if.end206_crit_edge

if.end82.if.end206_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

if.then87:                                        ; preds = %if.end82
  %66 = ptrtoint ptr %buf67 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buf67, align 4
  %call90 = tail call i32 @usb_get_descriptor(ptr noundef %add.ptr.i, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef %67, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call90)
  %cmp91.not = icmp eq i32 %call90, 5
  br i1 %cmp91.not, label %if.end104, label %do.end96

do.end96:                                         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  %dev97 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev97, ptr noundef nonnull @.str.177, i32 noundef %call90) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp98 = icmp slt i32 %call90, 0
  %spec.select484 = select i1 %cmp98, i32 %call90, i32 -33
  br label %cleanup328

if.end104:                                        ; preds = %if.then87
  %68 = ptrtoint ptr %buf67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buf67, align 4
  %wTotalLength = getelementptr inbounds %struct.usb_bos_descriptor, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %wTotalLength, align 1
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  %bNumDeviceCaps = getelementptr inbounds %struct.usb_bos_descriptor, ptr %69, i32 0, i32 3
  %73 = ptrtoint ptr %bNumDeviceCaps to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bNumDeviceCaps, align 1
  %conv107 = zext i8 %74 to i32
  %75 = tail call i16 @llvm.umin.i16(i16 %72, i16 256)
  %76 = zext i16 %75 to i32
  %call113 = tail call i32 @usb_get_descriptor(ptr noundef %add.ptr.i, i8 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef %69, i32 noundef %76) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call113, i32 %76)
  %cmp114.not = icmp eq i32 %call113, %76
  br i1 %cmp114.not, label %if.end127, label %do.end119

do.end119:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %dev120 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev120, ptr noundef nonnull @.str.180, i32 noundef %call113) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp121 = icmp slt i32 %call113, 0
  %spec.select485 = select i1 %cmp121, i32 %call113, i32 -33
  br label %cleanup328

if.end127:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp130584.not = icmp eq i8 %74, 0
  br i1 %cmp130584.not, label %if.end127.if.end206_crit_edge, label %for.body132.preheader

if.end127.if.end206_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

for.body132.preheader:                            ; preds = %if.end127
  %77 = ptrtoint ptr %buf67 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf67, align 4
  br label %for.body132

for.body132:                                      ; preds = %for.inc195.for.body132_crit_edge, %for.body132.preheader
  %buf88.0587 = phi ptr [ %add.ptr, %for.inc195.for.body132_crit_edge ], [ %78, %for.body132.preheader ]
  %length.0586 = phi i32 [ %conv140, %for.inc195.for.body132_crit_edge ], [ 5, %for.body132.preheader ]
  %i.1585 = phi i32 [ %inc196, %for.inc195.for.body132_crit_edge ], [ 0, %for.body132.preheader ]
  %add.ptr = getelementptr i8, ptr %buf88.0587, i32 %length.0586
  %add.ptr133 = getelementptr i8, ptr %add.ptr, i32 3
  %79 = ptrtoint ptr %buf67 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buf67, align 4
  %add.ptr135 = getelementptr i8, ptr %80, i32 %76
  %cmp136 = icmp ugt ptr %add.ptr133, %add.ptr135
  br i1 %cmp136, label %for.body132.if.end206_crit_edge, label %if.end139

for.body132.if.end206_crit_edge:                  ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

if.end139:                                        ; preds = %for.body132
  %81 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %add.ptr, align 1
  %conv140 = zext i8 %82 to i32
  %bDescriptorType = getelementptr inbounds %struct.usb_dev_cap_header, ptr %add.ptr, i32 0, i32 1
  %83 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bDescriptorType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %84)
  %cmp142.not = icmp eq i8 %84, 16
  br i1 %cmp142.not, label %if.end149, label %do.end147

do.end147:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.183) #13
  br label %for.inc195

if.end149:                                        ; preds = %if.end139
  %bDevCapabilityType = getelementptr inbounds %struct.usb_dev_cap_header, ptr %add.ptr, i32 0, i32 2
  %85 = ptrtoint ptr %bDevCapabilityType to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bDevCapabilityType, align 1
  %87 = zext i8 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.331)
  switch i8 %86, label %if.end149.for.inc195_crit_edge [
    i8 2, label %sw.bb
    i8 3, label %sw.bb165
    i8 4, label %sw.bb180
  ]

if.end149.for.inc195_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc195

sw.bb:                                            ; preds = %if.end149
  %add.ptr151 = getelementptr i8, ptr %add.ptr, i32 7
  %cmp154 = icmp ugt ptr %add.ptr151, %add.ptr135
  br i1 %cmp154, label %sw.bb.do.end162_crit_edge, label %lor.lhs.false156

sw.bb.do.end162_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end162

lor.lhs.false156:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %82)
  %cmp.not.i = icmp eq i8 %82, 7
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false156.is_good_ext.exit.thread_crit_edge

lor.lhs.false156.is_good_ext.exit.thread_crit_edge: ; preds = %lor.lhs.false156
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_good_ext.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false156
  %88 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %add.ptr133, align 1
  %90 = and i32 %89, 16842751
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i, label %if.end.i.for.inc195_crit_edge, label %if.end.i.is_good_ext.exit.thread_crit_edge

if.end.i.is_good_ext.exit.thread_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_good_ext.exit.thread

if.end.i.for.inc195_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc195

is_good_ext.exit.thread:                          ; preds = %if.end.i.is_good_ext.exit.thread_crit_edge, %lor.lhs.false156.is_good_ext.exit.thread_crit_edge
  %.str.215.sink.i = phi ptr [ @.str.212, %lor.lhs.false156.is_good_ext.exit.thread_crit_edge ], [ @.str.215, %if.end.i.is_good_ext.exit.thread_crit_edge ]
  %91 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev, align 4
  %dev7.i = getelementptr inbounds %struct.usb_interface, ptr %92, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull %.str.215.sink.i) #13
  br label %do.end162

do.end162:                                        ; preds = %is_good_ext.exit.thread, %sw.bb.do.end162_crit_edge
  %dev163 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev163, ptr noundef nonnull @.str.186) #13
  br label %cleanup328

sw.bb165:                                         ; preds = %if.end149
  %add.ptr166 = getelementptr i8, ptr %add.ptr, i32 10
  %cmp169 = icmp ugt ptr %add.ptr166, %add.ptr135
  br i1 %cmp169, label %sw.bb165.do.end177_crit_edge, label %lor.lhs.false171

sw.bb165.do.end177_crit_edge:                     ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end177

lor.lhs.false171:                                 ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %82)
  %cmp.not.i494 = icmp eq i8 %82, 10
  br i1 %cmp.not.i494, label %if.end.i497, label %lor.lhs.false171.is_good_ss_cap.exit.thread_crit_edge

lor.lhs.false171.is_good_ss_cap.exit.thread_crit_edge: ; preds = %lor.lhs.false171
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_good_ss_cap.exit.thread

if.end.i497:                                      ; preds = %lor.lhs.false171
  %93 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %add.ptr133, align 1
  %95 = and i8 %94, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i496 = icmp eq i8 %95, 0
  br i1 %tobool.not.i496, label %if.end9.i, label %if.end.i497.is_good_ss_cap.exit.thread_crit_edge

if.end.i497.is_good_ss_cap.exit.thread_crit_edge: ; preds = %if.end.i497
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_good_ss_cap.exit.thread

if.end9.i:                                        ; preds = %if.end.i497
  %wSpeedSupported.i = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %add.ptr, i32 0, i32 4
  %96 = ptrtoint ptr %wSpeedSupported.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %wSpeedSupported.i, align 1
  %98 = and i16 %97, -3841
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool12.not.i = icmp eq i16 %98, 0
  br i1 %tobool12.not.i, label %if.end9.i.for.inc195_crit_edge, label %if.end9.i.is_good_ss_cap.exit.thread_crit_edge

if.end9.i.is_good_ss_cap.exit.thread_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_good_ss_cap.exit.thread

if.end9.i.for.inc195_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc195

is_good_ss_cap.exit.thread:                       ; preds = %if.end9.i.is_good_ss_cap.exit.thread_crit_edge, %if.end.i497.is_good_ss_cap.exit.thread_crit_edge, %lor.lhs.false171.is_good_ss_cap.exit.thread_crit_edge
  %.str.223.sink.i = phi ptr [ @.str.217, %lor.lhs.false171.is_good_ss_cap.exit.thread_crit_edge ], [ @.str.220, %if.end.i497.is_good_ss_cap.exit.thread_crit_edge ], [ @.str.223, %if.end9.i.is_good_ss_cap.exit.thread_crit_edge ]
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 4
  %dev18.i = getelementptr inbounds %struct.usb_interface, ptr %100, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18.i, ptr noundef nonnull %.str.223.sink.i) #13
  br label %do.end177

do.end177:                                        ; preds = %is_good_ss_cap.exit.thread, %sw.bb165.do.end177_crit_edge
  %dev178 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev178, ptr noundef nonnull @.str.189) #13
  br label %cleanup328

sw.bb180:                                         ; preds = %if.end149
  %add.ptr181 = getelementptr i8, ptr %add.ptr, i32 20
  %cmp184 = icmp ugt ptr %add.ptr181, %add.ptr135
  br i1 %cmp184, label %sw.bb180.do.end192_crit_edge, label %lor.lhs.false186

sw.bb180.do.end192_crit_edge:                     ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end192

lor.lhs.false186:                                 ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %82)
  %cmp.not.i500 = icmp eq i8 %82, 20
  br i1 %cmp.not.i500, label %if.end.i502, label %lor.lhs.false186.is_good_con_id.exit.thread_crit_edge

lor.lhs.false186.is_good_con_id.exit.thread_crit_edge: ; preds = %lor.lhs.false186
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_good_con_id.exit.thread

if.end.i502:                                      ; preds = %lor.lhs.false186
  %101 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %add.ptr133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i501 = icmp eq i8 %102, 0
  br i1 %tobool.not.i501, label %if.end.i502.for.inc195_crit_edge, label %if.end.i502.is_good_con_id.exit.thread_crit_edge

if.end.i502.is_good_con_id.exit.thread_crit_edge: ; preds = %if.end.i502
  call void @__sanitizer_cov_trace_pc() #12
  br label %is_good_con_id.exit.thread

if.end.i502.for.inc195_crit_edge:                 ; preds = %if.end.i502
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc195

is_good_con_id.exit.thread:                       ; preds = %if.end.i502.is_good_con_id.exit.thread_crit_edge, %lor.lhs.false186.is_good_con_id.exit.thread_crit_edge
  %.str.215.sink.i503 = phi ptr [ @.str.225, %lor.lhs.false186.is_good_con_id.exit.thread_crit_edge ], [ @.str.215, %if.end.i502.is_good_con_id.exit.thread_crit_edge ]
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  %dev7.i504 = getelementptr inbounds %struct.usb_interface, ptr %104, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i504, ptr noundef nonnull %.str.215.sink.i503) #13
  br label %do.end192

do.end192:                                        ; preds = %is_good_con_id.exit.thread, %sw.bb180.do.end192_crit_edge
  %dev193 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev193, ptr noundef nonnull @.str.192) #13
  br label %cleanup328

for.inc195:                                       ; preds = %if.end.i502.for.inc195_crit_edge, %if.end9.i.for.inc195_crit_edge, %if.end.i.for.inc195_crit_edge, %if.end149.for.inc195_crit_edge, %do.end147
  %inc196 = add nuw nsw i32 %i.1585, 1
  %exitcond.not = icmp eq i32 %inc196, %conv107
  br i1 %exitcond.not, label %for.inc195.if.end206_crit_edge, label %for.inc195.for.body132_crit_edge

for.inc195.for.body132_crit_edge:                 ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body132

for.inc195.if.end206_crit_edge:                   ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

if.end206:                                        ; preds = %for.inc195.if.end206_crit_edge, %for.body132.if.end206_crit_edge, %if.end127.if.end206_crit_edge, %if.end82.if.end206_crit_edge
  %bNumConfigurations209 = getelementptr i8, ptr %3, i32 945
  %105 = ptrtoint ptr %bNumConfigurations209 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %bNumConfigurations209, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp211589.not = icmp eq i8 %106, 0
  br i1 %cmp211589.not, label %if.end206.for.end233_crit_edge, label %if.end206.for.body213_crit_edge

if.end206.for.body213_crit_edge:                  ; preds = %if.end206
  br label %for.body213

if.end206.for.end233_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end233

for.body213:                                      ; preds = %for.inc231.for.body213_crit_edge, %if.end206.for.body213_crit_edge
  %i.2590 = phi i32 [ %inc232, %for.inc231.for.body213_crit_edge ], [ 0, %if.end206.for.body213_crit_edge ]
  %conv214 = trunc i32 %i.2590 to i8
  %107 = ptrtoint ptr %buf67 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %buf67, align 4
  %call216 = tail call i32 @usb_get_descriptor(ptr noundef %add.ptr.i, i8 noundef zeroext 2, i8 noundef zeroext %conv214, ptr noundef %108, i32 noundef 256) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call216)
  %cmp.i = icmp ult i32 %call216, 9
  br i1 %cmp.i, label %for.body213.do.end222_crit_edge, label %if.end.i508

for.body213.do.end222_crit_edge:                  ; preds = %for.body213
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end222

if.end.i508:                                      ; preds = %for.body213
  %109 = ptrtoint ptr %buf67 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %buf67, align 4
  %bDescriptorType.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %bDescriptorType.i, align 1
  %113 = zext i8 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.332)
  switch i8 %112, label %if.end.i508.do.end222_crit_edge [
    i8 2, label %if.end.i508.sw.bb.i509_crit_edge
    i8 7, label %if.end.i508.sw.bb.i509_crit_edge669
  ]

if.end.i508.sw.bb.i509_crit_edge669:              ; preds = %if.end.i508
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i509

if.end.i508.sw.bb.i509_crit_edge:                 ; preds = %if.end.i508
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i509

if.end.i508.do.end222_crit_edge:                  ; preds = %if.end.i508
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end222

sw.bb.i509:                                       ; preds = %if.end.i508.sw.bb.i509_crit_edge, %if.end.i508.sw.bb.i509_crit_edge669
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %115)
  %cmp2.not.i = icmp eq i8 %115, 9
  br i1 %cmp2.not.i, label %if.end5.i, label %sw.bb.i509.cleanup.sink.split.i512_crit_edge

sw.bb.i509.cleanup.sink.split.i512_crit_edge:     ; preds = %sw.bb.i509
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i512

if.end5.i:                                        ; preds = %sw.bb.i509
  %116 = load i32, ptr @realworld, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i510 = icmp eq i32 %116, 0
  br i1 %tobool.not.i510, label %land.lhs.true.i, label %if.end5.i.if.end14.i_crit_edge

if.end5.i.if.end14.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %bmAttributes.i511 = getelementptr inbounds %struct.usb_config_descriptor, ptr %110, i32 0, i32 6
  %117 = ptrtoint ptr %bmAttributes.i511 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %bmAttributes.i511, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %118)
  %tobool7.not.i = icmp sgt i8 %118, -1
  br i1 %tobool7.not.i, label %land.lhs.true.i.cleanup.sink.split.i512_crit_edge, label %land.lhs.true.i.if.end14.i_crit_edge

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

land.lhs.true.i.cleanup.sink.split.i512_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i512

if.end14.i:                                       ; preds = %land.lhs.true.i.if.end14.i_crit_edge, %if.end5.i.if.end14.i_crit_edge
  %bmAttributes15.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %110, i32 0, i32 6
  %119 = ptrtoint ptr %bmAttributes15.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %bmAttributes15.i, align 1
  %121 = and i8 %120, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool18.not.i = icmp eq i8 %121, 0
  br i1 %tobool18.not.i, label %sw.epilog.i, label %if.end14.i.cleanup.sink.split.i512_crit_edge

if.end14.i.cleanup.sink.split.i512_crit_edge:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i512

sw.epilog.i:                                      ; preds = %if.end14.i
  %wTotalLength.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %110, i32 0, i32 2
  %122 = ptrtoint ptr %wTotalLength.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 2)
  %123 = load i16, ptr %wTotalLength.i, align 1
  %124 = tail call i16 @llvm.bswap.i16(i16 %123) #10
  %conv26.i = zext i16 %124 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call216, i32 %conv26.i)
  %cmp27.i = icmp eq i32 %call216, %conv26.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %124)
  %cmp33.i = icmp ugt i16 %124, 255
  %or.cond.i = or i1 %cmp33.i, %cmp27.i
  br i1 %or.cond.i, label %for.inc231, label %sw.epilog.i.cleanup.sink.split.i512_crit_edge

sw.epilog.i.cleanup.sink.split.i512_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i512

cleanup.sink.split.i512:                          ; preds = %sw.epilog.i.cleanup.sink.split.i512_crit_edge, %if.end14.i.cleanup.sink.split.i512_crit_edge, %land.lhs.true.i.cleanup.sink.split.i512_crit_edge, %sw.bb.i509.cleanup.sink.split.i512_crit_edge
  %.str.238.sink.i = phi ptr [ @.str.238, %sw.epilog.i.cleanup.sink.split.i512_crit_edge ], [ @.str.235, %if.end14.i.cleanup.sink.split.i512_crit_edge ], [ @.str.232, %land.lhs.true.i.cleanup.sink.split.i512_crit_edge ], [ @.str.229, %sw.bb.i509.cleanup.sink.split.i512_crit_edge ]
  %125 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev, align 4
  %dev41.i = getelementptr inbounds %struct.usb_interface, ptr %126, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41.i, ptr noundef nonnull %.str.238.sink.i) #13
  br label %do.end222

do.end222:                                        ; preds = %cleanup.sink.split.i512, %if.end.i508.do.end222_crit_edge, %for.body213.do.end222_crit_edge
  %dev223 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev223, ptr noundef nonnull @.str.195, i32 noundef %i.2590, i32 noundef %call216) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %cmp224 = icmp slt i32 %call216, 0
  %spec.select486 = select i1 %cmp224, i32 %call216, i32 -33
  br label %cleanup328

for.inc231:                                       ; preds = %sw.epilog.i
  %inc232 = add nuw nsw i32 %i.2590, 1
  %127 = ptrtoint ptr %bNumConfigurations209 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %bNumConfigurations209, align 1
  %conv210 = zext i8 %128 to i32
  %cmp211 = icmp ult i32 %inc232, %conv210
  br i1 %cmp211, label %for.inc231.for.body213_crit_edge, label %for.inc231.for.end233_crit_edge

for.inc231.for.end233_crit_edge:                  ; preds = %for.inc231
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end233

for.inc231.for.body213_crit_edge:                 ; preds = %for.inc231
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body213

for.end233:                                       ; preds = %for.inc231.for.end233_crit_edge, %if.end206.for.end233_crit_edge
  %129 = ptrtoint ptr %bcdUSB to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %bcdUSB, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %130)
  %cmp237 = icmp eq i16 %130, 2
  br i1 %cmp237, label %if.then239, label %for.end233.if.end305_crit_edge

for.end233.if.end305_crit_edge:                   ; preds = %for.end233
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end305

if.then239:                                       ; preds = %for.end233
  %131 = ptrtoint ptr %buf67 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %buf67, align 4
  %call241 = tail call i32 @usb_get_descriptor(ptr noundef %add.ptr.i, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef %132, i32 noundef 10) #10
  %133 = zext i32 %call241 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.333)
  switch i32 %call241, label %do.end258 [
    i32 -32, label %if.then244
    i32 10, label %if.end269
  ]

if.then244:                                       ; preds = %if.then239
  %speed = getelementptr i8, ptr %3, i32 -100
  %134 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %135)
  %cmp245 = icmp eq i32 %135, 3
  br i1 %cmp245, label %do.end250, label %if.then244.if.end305_crit_edge

if.then244.if.end305_crit_edge:                   ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end305

do.end250:                                        ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #12
  %dev251 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev251, ptr noundef nonnull @.str.198, i32 noundef -32) #13
  br label %cleanup328

do.end258:                                        ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #12
  %dev259 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev259, ptr noundef nonnull @.str.201, i32 noundef %call241) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %cmp260 = icmp slt i32 %call241, 0
  %spec.select487 = select i1 %cmp260, i32 %call241, i32 -33
  br label %cleanup328

if.end269:                                        ; preds = %if.then239
  %136 = ptrtoint ptr %buf67 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %buf67, align 4
  %tobool270.not = icmp eq ptr %137, null
  br i1 %tobool270.not, label %if.end269.if.end305_crit_edge, label %if.then271

if.end269.if.end305_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end305

if.then271:                                       ; preds = %if.end269
  %bNumConfigurations272 = getelementptr inbounds %struct.usb_qualifier_descriptor, ptr %137, i32 0, i32 7
  %138 = ptrtoint ptr %bNumConfigurations272 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %bNumConfigurations272, align 1
  %conv273 = zext i8 %139 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp275592.not = icmp eq i8 %139, 0
  br i1 %cmp275592.not, label %if.then271.if.end305_crit_edge, label %if.then271.for.body277_crit_edge

if.then271.for.body277_crit_edge:                 ; preds = %if.then271
  br label %for.body277

if.then271.if.end305_crit_edge:                   ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end305

for.cond274:                                      ; preds = %sw.epilog.i533
  %inc296 = add nuw nsw i32 %i.3593, 1
  %exitcond608.not = icmp eq i32 %inc296, %conv273
  br i1 %exitcond608.not, label %for.cond274.if.end305_crit_edge, label %for.cond274.for.body277_crit_edge

for.cond274.for.body277_crit_edge:                ; preds = %for.cond274
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body277

for.cond274.if.end305_crit_edge:                  ; preds = %for.cond274
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end305

for.body277:                                      ; preds = %for.cond274.for.body277_crit_edge, %if.then271.for.body277_crit_edge
  %i.3593 = phi i32 [ %inc296, %for.cond274.for.body277_crit_edge ], [ 0, %if.then271.for.body277_crit_edge ]
  %conv278 = trunc i32 %i.3593 to i8
  %140 = ptrtoint ptr %buf67 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %buf67, align 4
  %call280 = tail call i32 @usb_get_descriptor(ptr noundef %add.ptr.i, i8 noundef zeroext 7, i8 noundef zeroext %conv278, ptr noundef %141, i32 noundef 256) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call280)
  %cmp.i514 = icmp ult i32 %call280, 9
  br i1 %cmp.i514, label %for.body277.cleanup298.thread_crit_edge, label %if.end.i517

for.body277.cleanup298.thread_crit_edge:          ; preds = %for.body277
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup298.thread

if.end.i517:                                      ; preds = %for.body277
  %142 = ptrtoint ptr %buf67 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %buf67, align 4
  %bDescriptorType.i516 = getelementptr inbounds %struct.usb_config_descriptor, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %bDescriptorType.i516 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %bDescriptorType.i516, align 1
  %146 = zext i8 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.334)
  switch i8 %145, label %if.end.i517.cleanup298.thread_crit_edge [
    i8 2, label %if.end.i517.sw.bb.i519_crit_edge
    i8 7, label %if.end.i517.sw.bb.i519_crit_edge670
  ]

if.end.i517.sw.bb.i519_crit_edge670:              ; preds = %if.end.i517
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i519

if.end.i517.sw.bb.i519_crit_edge:                 ; preds = %if.end.i517
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i519

if.end.i517.cleanup298.thread_crit_edge:          ; preds = %if.end.i517
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup298.thread

sw.bb.i519:                                       ; preds = %if.end.i517.sw.bb.i519_crit_edge, %if.end.i517.sw.bb.i519_crit_edge670
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %143, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %148)
  %cmp2.not.i518 = icmp eq i8 %148, 9
  br i1 %cmp2.not.i518, label %if.end5.i521, label %sw.bb.i519.cleanup.sink.split.i536_crit_edge

sw.bb.i519.cleanup.sink.split.i536_crit_edge:     ; preds = %sw.bb.i519
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i536

if.end5.i521:                                     ; preds = %sw.bb.i519
  %149 = load i32, ptr @realworld, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.not.i520 = icmp eq i32 %149, 0
  br i1 %tobool.not.i520, label %land.lhs.true.i524, label %if.end5.i521.if.end14.i527_crit_edge

if.end5.i521.if.end14.i527_crit_edge:             ; preds = %if.end5.i521
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i527

land.lhs.true.i524:                               ; preds = %if.end5.i521
  %bmAttributes.i522 = getelementptr inbounds %struct.usb_config_descriptor, ptr %143, i32 0, i32 6
  %150 = ptrtoint ptr %bmAttributes.i522 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %bmAttributes.i522, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %151)
  %tobool7.not.i523 = icmp sgt i8 %151, -1
  br i1 %tobool7.not.i523, label %land.lhs.true.i524.cleanup.sink.split.i536_crit_edge, label %land.lhs.true.i524.if.end14.i527_crit_edge

land.lhs.true.i524.if.end14.i527_crit_edge:       ; preds = %land.lhs.true.i524
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i527

land.lhs.true.i524.cleanup.sink.split.i536_crit_edge: ; preds = %land.lhs.true.i524
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i536

if.end14.i527:                                    ; preds = %land.lhs.true.i524.if.end14.i527_crit_edge, %if.end5.i521.if.end14.i527_crit_edge
  %bmAttributes15.i525 = getelementptr inbounds %struct.usb_config_descriptor, ptr %143, i32 0, i32 6
  %152 = ptrtoint ptr %bmAttributes15.i525 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %bmAttributes15.i525, align 1
  %154 = and i8 %153, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool18.not.i526 = icmp eq i8 %154, 0
  br i1 %tobool18.not.i526, label %sw.epilog.i533, label %if.end14.i527.cleanup.sink.split.i536_crit_edge

if.end14.i527.cleanup.sink.split.i536_crit_edge:  ; preds = %if.end14.i527
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i536

sw.epilog.i533:                                   ; preds = %if.end14.i527
  %wTotalLength.i528 = getelementptr inbounds %struct.usb_config_descriptor, ptr %143, i32 0, i32 2
  %155 = ptrtoint ptr %wTotalLength.i528 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %156 = load i16, ptr %wTotalLength.i528, align 1
  %157 = tail call i16 @llvm.bswap.i16(i16 %156) #10
  %conv26.i529 = zext i16 %157 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call280, i32 %conv26.i529)
  %cmp27.i530 = icmp eq i32 %call280, %conv26.i529
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %157)
  %cmp33.i531 = icmp ugt i16 %157, 255
  %or.cond.i532 = or i1 %cmp33.i531, %cmp27.i530
  br i1 %or.cond.i532, label %for.cond274, label %sw.epilog.i533.cleanup.sink.split.i536_crit_edge

sw.epilog.i533.cleanup.sink.split.i536_crit_edge: ; preds = %sw.epilog.i533
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i536

cleanup.sink.split.i536:                          ; preds = %sw.epilog.i533.cleanup.sink.split.i536_crit_edge, %if.end14.i527.cleanup.sink.split.i536_crit_edge, %land.lhs.true.i524.cleanup.sink.split.i536_crit_edge, %sw.bb.i519.cleanup.sink.split.i536_crit_edge
  %.str.238.sink.i534 = phi ptr [ @.str.229, %sw.bb.i519.cleanup.sink.split.i536_crit_edge ], [ @.str.232, %land.lhs.true.i524.cleanup.sink.split.i536_crit_edge ], [ @.str.235, %if.end14.i527.cleanup.sink.split.i536_crit_edge ], [ @.str.238, %sw.epilog.i533.cleanup.sink.split.i536_crit_edge ]
  %158 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev, align 4
  %dev41.i535 = getelementptr inbounds %struct.usb_interface, ptr %159, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41.i535, ptr noundef nonnull %.str.238.sink.i534) #13
  br label %cleanup298.thread

cleanup298.thread:                                ; preds = %cleanup.sink.split.i536, %if.end.i517.cleanup298.thread_crit_edge, %for.body277.cleanup298.thread_crit_edge
  %dev287 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev287, ptr noundef nonnull @.str.204, i32 noundef %call280) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call280)
  %cmp288 = icmp slt i32 %call280, 0
  %spec.select488 = select i1 %cmp288, i32 %call280, i32 -33
  br label %cleanup328

if.end305:                                        ; preds = %for.cond274.if.end305_crit_edge, %if.then271.if.end305_crit_edge, %if.end269.if.end305_crit_edge, %if.then244.if.end305_crit_edge, %for.end233.if.end305_crit_edge
  %160 = ptrtoint ptr %buf67 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %buf67, align 4
  %call.i = tail call i32 @usb_get_status(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %161) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool308.not = icmp eq i32 %call.i, 0
  br i1 %tobool308.not, label %if.end314, label %do.end312

do.end312:                                        ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #12
  %dev313 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev313, ptr noundef nonnull @.str.207, i32 noundef %call.i) #13
  br label %cleanup328

if.end314:                                        ; preds = %if.end305
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %1, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %163, i32 0, i32 2
  %164 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %bInterfaceNumber, align 2
  %conv318 = zext i8 %165 to i32
  %166 = ptrtoint ptr %buf67 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %buf67, align 4
  %call.i539 = tail call i32 @usb_get_status(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 0, i32 noundef %conv318, ptr noundef %167) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i539)
  %tobool321.not = icmp eq i32 %call.i539, 0
  br i1 %tobool321.not, label %if.end314.cleanup328_crit_edge, label %do.end325

if.end314.cleanup328_crit_edge:                   ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup328

do.end325:                                        ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #12
  %dev326 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev326, ptr noundef nonnull @.str.210, i32 noundef %call.i539) #13
  br label %cleanup328

cleanup328:                                       ; preds = %do.end325, %if.end314.cleanup328_crit_edge, %do.end312, %cleanup298.thread, %do.end258, %do.end250, %do.end222, %do.end192, %do.end177, %do.end162, %do.end119, %do.end96, %do.end74, %cleanup, %39, %do.end27.cleanup328_crit_edge, %do.end18
  %retval.7 = phi i32 [ %call2.i, %do.end18 ], [ %spec.select483, %do.end74 ], [ %spec.select486, %do.end222 ], [ %call.i, %do.end312 ], [ %call.i539, %do.end325 ], [ %spec.select482, %cleanup ], [ 0, %if.end314.cleanup328_crit_edge ], [ %retval.0.i542546, %39 ], [ -33, %do.end27.cleanup328_crit_edge ], [ -32, %do.end250 ], [ %spec.select487, %do.end258 ], [ %spec.select488, %cleanup298.thread ], [ -33, %do.end162 ], [ -33, %do.end177 ], [ -33, %do.end192 ], [ %spec.select485, %do.end119 ], [ %spec.select484, %do.end96 ]
  ret i32 %retval.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_ctrl_queue(ptr noundef %dev, ptr noundef %param) unnamed_addr #3 align 64 {
entry:
  %context = alloca %struct.ctrl_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %context) #10
  %4 = call ptr @memset(ptr %context, i32 255, i32 128)
  %sglen = getelementptr inbounds %struct.usbtest_param_32, ptr %param, i32 0, i32 4
  %5 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %entry.cleanup161_crit_edge, label %lor.lhs.false

entry.cleanup161_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup161

lor.lhs.false:                                    ; preds = %entry
  %iterations = getelementptr inbounds %struct.usbtest_param_32, ptr %param, i32 0, i32 1
  %7 = ptrtoint ptr %iterations to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iterations, align 4
  %mul222 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 %8)
  %mul.ov = extractvalue { i32, i1 } %mul222, 1
  br i1 %mul.ov, label %lor.lhs.false.cleanup161_crit_edge, label %do.body

lor.lhs.false.cleanup161_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup161

do.body:                                          ; preds = %lor.lhs.false
  call void @__raw_spin_lock_init(ptr noundef nonnull %context, ptr noundef nonnull @.str.240, ptr noundef nonnull @test_ctrl_queue.__key, i16 noundef signext 3) #10
  %dev4 = getelementptr inbounds %struct.ctrl_ctx, ptr %context, i32 0, i32 1
  %9 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev4, align 4
  %complete = getelementptr inbounds %struct.ctrl_ctx, ptr %context, i32 0, i32 2
  %10 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.ctrl_ctx, ptr %context, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.154, ptr noundef nonnull @init_completion.__key) #10
  %11 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sglen, align 4
  %13 = ptrtoint ptr %iterations to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iterations, align 4
  %mul = mul i32 %14, %12
  %count = getelementptr inbounds %struct.ctrl_ctx, ptr %context, i32 0, i32 3
  %15 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %count, align 4
  %pending = getelementptr inbounds %struct.ctrl_ctx, ptr %context, i32 0, i32 4
  %16 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pending, align 4
  %status = getelementptr inbounds %struct.ctrl_ctx, ptr %context, i32 0, i32 5
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -12, ptr %status, align 4
  %param7 = getelementptr inbounds %struct.ctrl_ctx, ptr %context, i32 0, i32 7
  %18 = ptrtoint ptr %param7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %param, ptr %param7, align 4
  %last = getelementptr inbounds %struct.ctrl_ctx, ptr %context, i32 0, i32 8
  %19 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %last, align 4
  %20 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 4) #10
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %do.body.cleanup161_crit_edge, label %if.end7.i.i, !prof !607

do.body.cleanup161_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup161

if.end7.i.i:                                      ; preds = %do.body
  %22 = extractvalue { i32, i1 } %20, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup161_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup161_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup161

for.cond.preheader:                               ; preds = %if.end7.i.i
  %23 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp13246.not = icmp eq i32 %24, 0
  br i1 %cmp13246.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bos = getelementptr i8, ptr %3, i32 948
  %bcdUSB = getelementptr i8, ptr %3, i32 930
  %bMaxPacketSize059 = getelementptr i8, ptr %3, i32 935
  %speed61 = getelementptr i8, ptr %3, i32 -100
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0247 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i = shl i32 %26, 8
  %or15 = or i32 %shl.i, -2147483520
  %rem = srem i32 %i.0247, 16
  %27 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.335)
  switch i32 %rem, label %do.end84 [
    i32 0, label %for.body.sw.epilog87_crit_edge
    i32 1, label %sw.bb16
    i32 2, label %sw.bb18
    i32 3, label %sw.bb21
    i32 4, label %sw.bb24
    i32 5, label %sw.bb27
    i32 6, label %sw.bb32
    i32 7, label %sw.bb34
    i32 8, label %sw.bb36
    i32 9, label %sw.bb41
    i32 10, label %sw.bb44
    i32 11, label %sw.bb46
    i32 12, label %sw.bb48
    i32 13, label %sw.bb50
    i32 14, label %sw.bb56
    i32 15, label %sw.bb68
  ]

for.body.sw.epilog87_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

sw.bb16:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

sw.bb18:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

sw.bb21:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

sw.bb24:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

sw.bb27:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %speed61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %speed61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp29.not = icmp eq i32 %29, 3
  %spec.select = select i1 %cmp29.not, i32 0, i32 32
  br label %sw.epilog87

sw.bb32:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

sw.bb34:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

sw.bb36:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %or40 = or i32 %shl.i, -2147483648
  br label %sw.epilog87

sw.bb41:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

sw.bb44:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

sw.bb46:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

sw.bb48:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

sw.bb50:                                          ; preds = %for.body
  %30 = ptrtoint ptr %speed61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %speed61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %31)
  %cmp53 = icmp eq i32 %31, 5
  br i1 %cmp53, label %sw.bb50.sw.epilog87_crit_edge, label %if.else

sw.bb50.sw.epilog87_crit_edge:                    ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

if.else:                                          ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %bMaxPacketSize059 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bMaxPacketSize059, align 1
  %conv = zext i8 %33 to i32
  %sub = sub nuw nsw i32 1024, %conv
  br label %sw.epilog87

sw.bb56:                                          ; preds = %for.body
  %34 = ptrtoint ptr %bMaxPacketSize059 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bMaxPacketSize059, align 1
  %conv60 = zext i8 %35 to i32
  %36 = ptrtoint ptr %speed61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %speed61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %37)
  %cmp62 = icmp eq i32 %37, 5
  %spec.store.select = select i1 %cmp62, i32 512, i32 %conv60
  %38 = zext i32 %spec.store.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.336)
  switch i32 %spec.store.select, label %sw.bb56.sw.epilog87_crit_edge [
    i32 8, label %sw.bb66
    i32 16, label %sw.bb67
  ]

sw.bb56.sw.epilog87_crit_edge:                    ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

sw.bb66:                                          ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

sw.bb67:                                          ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog87

sw.bb68:                                          ; preds = %for.body
  %39 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bos, align 4
  %tobool70.not = icmp eq ptr %40, null
  br i1 %tobool70.not, label %sw.bb68.if.end75_crit_edge, label %if.then71

sw.bb68.if.end75_crit_edge:                       ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then71:                                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %wTotalLength = getelementptr inbounds %struct.usb_bos_descriptor, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %wTotalLength, align 1
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %conv73 = zext i16 %45 to i32
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %sw.bb68.if.end75_crit_edge
  %len.2 = phi i32 [ %conv73, %if.then71 ], [ 5, %sw.bb68.if.end75_crit_edge ]
  %46 = ptrtoint ptr %bcdUSB to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %bcdUSB, align 2
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  call void @__sanitizer_cov_trace_const_cmp2(i16 513, i16 %48)
  %cmp78 = icmp ult i16 %48, 513
  %spec.select223 = select i1 %cmp78, i32 -32, i32 0
  br label %sw.epilog87

do.end84:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %dev85 = getelementptr inbounds %struct.usb_interface, ptr %50, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85, ptr noundef nonnull @.str.241) #13
  %51 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -22, ptr %status, align 4
  br label %cleanup142

sw.epilog87:                                      ; preds = %if.end75, %sw.bb67, %sw.bb66, %sw.bb56.sw.epilog87_crit_edge, %if.else, %sw.bb50.sw.epilog87_crit_edge, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb41, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb27, %sw.bb24, %sw.bb21, %sw.bb18, %sw.bb16, %for.body.sw.epilog87_crit_edge
  %pipe.0 = phi i32 [ %or15, %sw.bb48 ], [ %or15, %sw.bb46 ], [ %or15, %sw.bb44 ], [ %or15, %sw.bb41 ], [ %or40, %sw.bb36 ], [ %or15, %sw.bb34 ], [ %or15, %sw.bb32 ], [ %or15, %sw.bb24 ], [ %or15, %sw.bb21 ], [ %or15, %sw.bb18 ], [ %or15, %sw.bb16 ], [ %or15, %for.body.sw.epilog87_crit_edge ], [ %or15, %sw.bb27 ], [ %or15, %sw.bb50.sw.epilog87_crit_edge ], [ %or15, %if.else ], [ %or15, %sw.bb56.sw.epilog87_crit_edge ], [ %or15, %sw.bb67 ], [ %or15, %sw.bb66 ], [ %or15, %if.end75 ]
  %len.3 = phi i32 [ 9, %sw.bb48 ], [ 9, %sw.bb46 ], [ 1024, %sw.bb44 ], [ 2, %sw.bb41 ], [ 0, %sw.bb36 ], [ 9, %sw.bb34 ], [ 18, %sw.bb32 ], [ 2, %sw.bb24 ], [ 2, %sw.bb21 ], [ 1, %sw.bb18 ], [ 9, %sw.bb16 ], [ 18, %for.body.sw.epilog87_crit_edge ], [ 10, %sw.bb27 ], [ 512, %sw.bb50.sw.epilog87_crit_edge ], [ %sub, %if.else ], [ %spec.store.select, %sw.bb56.sw.epilog87_crit_edge ], [ 32, %sw.bb67 ], [ 24, %sw.bb66 ], [ %len.2, %if.end75 ]
  %req.sroa.0.0 = phi i8 [ -128, %sw.bb48 ], [ -128, %sw.bb46 ], [ -128, %sw.bb44 ], [ -126, %sw.bb41 ], [ 2, %sw.bb36 ], [ -128, %sw.bb34 ], [ -128, %sw.bb32 ], [ -128, %sw.bb24 ], [ -127, %sw.bb21 ], [ -127, %sw.bb18 ], [ -128, %sw.bb16 ], [ -128, %for.body.sw.epilog87_crit_edge ], [ -128, %sw.bb27 ], [ -128, %sw.bb50.sw.epilog87_crit_edge ], [ -128, %if.else ], [ -128, %sw.bb56.sw.epilog87_crit_edge ], [ -128, %sw.bb67 ], [ -128, %sw.bb66 ], [ -128, %if.end75 ]
  %req.sroa.11.0 = phi i8 [ 6, %sw.bb48 ], [ 6, %sw.bb46 ], [ 6, %sw.bb44 ], [ 0, %sw.bb41 ], [ 1, %sw.bb36 ], [ 6, %sw.bb34 ], [ 6, %sw.bb32 ], [ 0, %sw.bb24 ], [ 0, %sw.bb21 ], [ 10, %sw.bb18 ], [ 6, %sw.bb16 ], [ 6, %for.body.sw.epilog87_crit_edge ], [ 6, %sw.bb27 ], [ 6, %sw.bb50.sw.epilog87_crit_edge ], [ 6, %if.else ], [ 6, %sw.bb56.sw.epilog87_crit_edge ], [ 6, %sw.bb67 ], [ 6, %sw.bb66 ], [ 6, %if.end75 ]
  %req.sroa.18.0 = phi i16 [ 3, %sw.bb48 ], [ 5, %sw.bb46 ], [ 2, %sw.bb44 ], [ 0, %sw.bb41 ], [ 0, %sw.bb36 ], [ 4, %sw.bb34 ], [ 2, %sw.bb32 ], [ 0, %sw.bb24 ], [ 0, %sw.bb21 ], [ 0, %sw.bb18 ], [ 2, %sw.bb16 ], [ 1, %for.body.sw.epilog87_crit_edge ], [ 6, %sw.bb27 ], [ 2, %sw.bb50.sw.epilog87_crit_edge ], [ 2, %if.else ], [ 1, %sw.bb56.sw.epilog87_crit_edge ], [ 1, %sw.bb67 ], [ 1, %sw.bb66 ], [ 15, %if.end75 ]
  %expected.0 = phi i32 [ 121, %sw.bb48 ], [ 32, %sw.bb46 ], [ -121, %sw.bb44 ], [ 0, %sw.bb41 ], [ 32, %sw.bb36 ], [ -32, %sw.bb34 ], [ 0, %sw.bb32 ], [ 0, %sw.bb24 ], [ 0, %sw.bb21 ], [ 32, %sw.bb18 ], [ 0, %sw.bb16 ], [ %rem, %for.body.sw.epilog87_crit_edge ], [ %spec.select, %sw.bb27 ], [ -121, %sw.bb50.sw.epilog87_crit_edge ], [ -121, %if.else ], [ -121, %sw.bb56.sw.epilog87_crit_edge ], [ -121, %sw.bb67 ], [ -121, %sw.bb66 ], [ %spec.select223, %if.end75 ]
  %conv88 = trunc i32 %len.3 to i16
  %52 = call i16 @llvm.bswap.i16(i16 %conv88)
  %call.i225 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool.not.i226 = icmp eq ptr %call.i225, null
  br i1 %tobool.not.i226, label %sw.epilog87.usbtest_alloc_urb.exit.thread_crit_edge, label %if.end.i

sw.epilog87.usbtest_alloc_urb.exit.thread_crit_edge: ; preds = %sw.epilog87
  call void @__sanitizer_cov_trace_pc() #12
  br label %usbtest_alloc_urb.exit.thread

if.end.i:                                         ; preds = %sw.epilog87
  %dev1.i87.i = getelementptr inbounds %struct.urb, ptr %call.i225, i32 0, i32 8
  %53 = ptrtoint ptr %dev1.i87.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr.i.i, ptr %dev1.i87.i, align 4
  %pipe2.i88.i = getelementptr inbounds %struct.urb, ptr %call.i225, i32 0, i32 10
  %54 = ptrtoint ptr %pipe2.i88.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %pipe.0, ptr %pipe2.i88.i, align 4
  %transfer_buffer3.i89.i = getelementptr inbounds %struct.urb, ptr %call.i225, i32 0, i32 14
  %55 = ptrtoint ptr %transfer_buffer3.i89.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %transfer_buffer3.i89.i, align 4
  %transfer_buffer_length.i90.i = getelementptr inbounds %struct.urb, ptr %call.i225, i32 0, i32 19
  %56 = ptrtoint ptr %transfer_buffer_length.i90.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %len.3, ptr %transfer_buffer_length.i90.i, align 4
  %complete.i91.i = getelementptr inbounds %struct.urb, ptr %call.i225, i32 0, i32 28
  %57 = ptrtoint ptr %complete.i91.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @simple_callback, ptr %complete.i91.i, align 4
  %context4.i92.i = getelementptr inbounds %struct.urb, ptr %call.i225, i32 0, i32 27
  %58 = ptrtoint ptr %context4.i92.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %context4.i92.i, align 4
  %59 = ptrtoint ptr %speed61 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %speed61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp.i = icmp eq i32 %60, 3
  %cond.i = select i1 %cmp.i, i32 8, i32 1
  %interval.i = getelementptr inbounds %struct.urb, ptr %call.i225, i32 0, i32 25
  %61 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %cond.i, ptr %interval.i, align 4
  %transfer_flags5.i = getelementptr inbounds %struct.urb, ptr %call.i225, i32 0, i32 13
  %and.i228 = lshr i32 %pipe.0, 7
  %62 = and i32 %and.i228, 1
  %63 = or i32 %62, 4
  %64 = ptrtoint ptr %transfer_flags5.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %transfer_flags5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.3)
  %cmp10.i = icmp eq i32 %len.3, 0
  br i1 %cmp10.i, label %if.end.i.if.end92_crit_edge, label %if.end13.i

if.end.i.if.end92_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.end13.i:                                       ; preds = %if.end.i
  %transfer_dma.i229 = getelementptr inbounds %struct.urb, ptr %call.i225, i32 0, i32 15
  %call19.i = call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i, i32 noundef %len.3, i32 noundef 3264, ptr noundef %transfer_dma.i229) #10
  %65 = ptrtoint ptr %transfer_buffer3.i89.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call19.i, ptr %transfer_buffer3.i89.i, align 4
  %tobool26.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @usb_free_urb(ptr noundef nonnull %call.i225) #10
  br label %usbtest_alloc_urb.exit.thread

if.end28.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %pipe2.i88.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pipe2.i88.i, align 4
  %and43.i = and i32 %67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %68 = select i1 %tobool44.not.i, i8 0, i8 -91
  %69 = zext i8 %68 to i32
  %70 = call ptr @memset(ptr %call19.i, i32 %69, i32 %len.3)
  br label %if.end92

usbtest_alloc_urb.exit.thread:                    ; preds = %if.then27.i, %sw.epilog87.usbtest_alloc_urb.exit.thread_crit_edge
  %arrayidx235 = getelementptr ptr, ptr %call8.i.i, i32 %i.0247
  %71 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %arrayidx235, align 4
  br label %cleanup142

if.end92:                                         ; preds = %if.end28.i, %if.end.i.if.end92_crit_edge
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.0247
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i225, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3264, i32 noundef 16) #14
  %tobool94.not = icmp eq ptr %call7.i, null
  br i1 %tobool94.not, label %if.end92.cleanup142_crit_edge, label %for.inc

if.end92.cleanup142_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup142

for.inc:                                          ; preds = %if.end92
  %74 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %req.sroa.0.0, ptr %call7.i, align 8
  %req.sroa.11.0.setup.sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 1
  %75 = ptrtoint ptr %req.sroa.11.0.setup.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %req.sroa.11.0, ptr %req.sroa.11.0.setup.sroa_idx, align 1
  %req.sroa.18.0.setup.sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 2
  %76 = ptrtoint ptr %req.sroa.18.0.setup.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %req.sroa.18.0, ptr %req.sroa.18.0.setup.sroa_idx, align 2
  %req.sroa.30.0.setup.sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 4
  %77 = ptrtoint ptr %req.sroa.30.0.setup.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %req.sroa.30.0.setup.sroa_idx, align 4
  %req.sroa.31.0.setup.sroa_idx = getelementptr inbounds i8, ptr %call7.i, i32 6
  %78 = ptrtoint ptr %req.sroa.31.0.setup.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %52, ptr %req.sroa.31.0.setup.sroa_idx, align 2
  %number = getelementptr inbounds %struct.subcase, ptr %call7.i, i32 0, i32 1
  %79 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %rem, ptr %number, align 8
  %expected98 = getelementptr inbounds %struct.subcase, ptr %call7.i, i32 0, i32 2
  %80 = ptrtoint ptr %expected98 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %expected.0, ptr %expected98, align 4
  %setup_packet = getelementptr inbounds %struct.urb, ptr %call.i225, i32 0, i32 21
  %81 = ptrtoint ptr %setup_packet to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i, ptr %setup_packet, align 4
  %82 = ptrtoint ptr %context4.i92.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %context, ptr %context4.i92.i, align 4
  %83 = ptrtoint ptr %complete.i91.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @ctrl_complete, ptr %complete.i91.i, align 4
  %inc = add nuw i32 %i.0247, 1
  %84 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sglen, align 4
  %cmp13 = icmp ult i32 %inc, %85
  br i1 %cmp13, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %urb107 = getelementptr inbounds %struct.ctrl_ctx, ptr %context, i32 0, i32 6
  %86 = ptrtoint ptr %urb107 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call8.i.i, ptr %urb107, align 4
  call void @_raw_spin_lock_irq(ptr noundef nonnull %context) #10
  %87 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp111249.not = icmp eq i32 %88, 0
  br i1 %cmp111249.not, label %for.end.for.end134_crit_edge, label %for.end.for.body113_crit_edge

for.end.for.body113_crit_edge:                    ; preds = %for.end
  br label %for.body113

for.end.for.end134_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end134

for.body113:                                      ; preds = %if.end129.for.body113_crit_edge, %for.end.for.body113_crit_edge
  %i.1250 = phi i32 [ %inc133, %if.end129.for.body113_crit_edge ], [ 0, %for.end.for.body113_crit_edge ]
  %arrayidx114 = getelementptr ptr, ptr %call8.i.i, i32 %i.1250
  %89 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx114, align 4
  %call115 = call i32 @usb_submit_urb(ptr noundef %90, i32 noundef 2592) #10
  %91 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call115, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp118.not = icmp eq i32 %call115, 0
  br i1 %cmp118.not, label %if.end129, label %do.end123

do.end123:                                        ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  %dev125 = getelementptr inbounds %struct.usb_interface, ptr %93, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev125, ptr noundef nonnull @.str.244, i32 noundef %i.1250, i32 noundef %call115) #13
  %94 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pending, align 4
  %96 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %count, align 4
  br label %for.end134

if.end129:                                        ; preds = %for.body113
  %97 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pending, align 4
  %inc131 = add i32 %98, 1
  store i32 %inc131, ptr %pending, align 4
  %inc133 = add nuw i32 %i.1250, 1
  %99 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sglen, align 4
  %cmp111 = icmp ult i32 %inc133, %100
  br i1 %cmp111, label %if.end129.for.body113_crit_edge, label %if.end129.for.end134_crit_edge

if.end129.for.end134_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end134

if.end129.for.body113_crit_edge:                  ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body113

for.end134:                                       ; preds = %if.end129.for.end134_crit_edge, %do.end123, %for.end.for.end134_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull %context) #10
  %101 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp137.not = icmp eq i32 %102, 0
  br i1 %cmp137.not, label %for.end134.cleanup142_crit_edge, label %if.then139

for.end134.cleanup142_crit_edge:                  ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup142

if.then139:                                       ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #12
  call void @wait_for_completion(ptr noundef %complete) #10
  br label %cleanup142

cleanup142:                                       ; preds = %if.then139, %for.end134.cleanup142_crit_edge, %if.end92.cleanup142_crit_edge, %usbtest_alloc_urb.exit.thread, %do.end84
  %103 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp145251.not = icmp eq i32 %104, 0
  br i1 %cmp145251.not, label %cleanup142.for.end159_crit_edge, label %cleanup142.for.body147_crit_edge

cleanup142.for.body147_crit_edge:                 ; preds = %cleanup142
  br label %for.body147

cleanup142.for.end159_crit_edge:                  ; preds = %cleanup142
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end159

for.body147:                                      ; preds = %for.inc157.for.body147_crit_edge, %cleanup142.for.body147_crit_edge
  %i.2252 = phi i32 [ %inc158, %for.inc157.for.body147_crit_edge ], [ 0, %cleanup142.for.body147_crit_edge ]
  %arrayidx148 = getelementptr ptr, ptr %call8.i.i, i32 %i.2252
  %105 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx148, align 4
  %tobool149.not = icmp eq ptr %106, null
  br i1 %tobool149.not, label %for.body147.for.inc157_crit_edge, label %if.end151

for.body147.for.inc157_crit_edge:                 ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc157

if.end151:                                        ; preds = %for.body147
  %dev153 = getelementptr inbounds %struct.urb, ptr %106, i32 0, i32 8
  %107 = ptrtoint ptr %dev153 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %add.ptr.i.i, ptr %dev153, align 4
  %108 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx148, align 4
  %setup_packet155 = getelementptr inbounds %struct.urb, ptr %109, i32 0, i32 21
  %110 = ptrtoint ptr %setup_packet155 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %setup_packet155, align 4
  call void @kfree(ptr noundef %111) #10
  %112 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx148, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %113, i32 0, i32 14
  %114 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %transfer_buffer.i, align 4
  %116 = ptrtoint ptr %115 to i32
  %and.i.i = and i32 %116, 127
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %113, i32 0, i32 13
  %117 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %transfer_flags.i, align 4
  %and.i = and i32 %118, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.urb, ptr %113, i32 0, i32 8
  %119 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %113, i32 0, i32 19
  %121 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %transfer_buffer_length.i, align 4
  %add.i = add i32 %122, %and.i.i
  %idx.neg.i = sub nsw i32 0, %and.i.i
  %add.ptr.i = getelementptr i8, ptr %115, i32 %idx.neg.i
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %113, i32 0, i32 15
  %123 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %transfer_dma.i, align 4
  %sub.i = sub i32 %124, %and.i.i
  call void @usb_free_coherent(ptr noundef %120, i32 noundef %add.i, ptr noundef %add.ptr.i, i32 noundef %sub.i) #10
  br label %simple_free_urb.exit

if.else.i:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  %idx.neg3.i = sub nsw i32 0, %and.i.i
  %add.ptr4.i = getelementptr i8, ptr %115, i32 %idx.neg3.i
  call void @kfree(ptr noundef %add.ptr4.i) #10
  br label %simple_free_urb.exit

simple_free_urb.exit:                             ; preds = %if.else.i, %if.then.i
  call void @usb_free_urb(ptr noundef %113) #10
  br label %for.inc157

for.inc157:                                       ; preds = %simple_free_urb.exit, %for.body147.for.inc157_crit_edge
  %inc158 = add nuw i32 %i.2252, 1
  %125 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sglen, align 4
  %cmp145 = icmp ult i32 %inc158, %126
  br i1 %cmp145, label %for.inc157.for.body147_crit_edge, label %for.inc157.for.end159_crit_edge

for.inc157.for.end159_crit_edge:                  ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end159

for.inc157.for.body147_crit_edge:                 ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body147

for.end159:                                       ; preds = %for.inc157.for.end159_crit_edge, %cleanup142.for.end159_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  %127 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %status, align 4
  br label %cleanup161

cleanup161:                                       ; preds = %for.end159, %if.end7.i.i.cleanup161_crit_edge, %do.body.cleanup161_crit_edge, %lor.lhs.false.cleanup161_crit_edge, %entry.cleanup161_crit_edge
  %retval.0 = phi i32 [ %128, %for.end159 ], [ -95, %lor.lhs.false.cleanup161_crit_edge ], [ -95, %entry.cleanup161_crit_edge ], [ -12, %if.end7.i.i.cleanup161_crit_edge ], [ -12, %do.body.cleanup161_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %context) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unlink_simple(ptr nocapture noundef readonly %dev, i32 noundef %pipe, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @unlink1(ptr noundef %dev, i32 noundef %pipe, i32 noundef %len, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call fastcc i32 @unlink1(ptr noundef %dev, i32 noundef %pipe, i32 noundef %len, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call2, %if.then ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @halt_simple(ptr nocapture noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %speed = getelementptr i8, ptr %3, i32 -100
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp eq i32 %5, 5
  %call.i46 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool.not.i47 = icmp eq ptr %call.i46, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i47, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %dev1.i87.i = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 8
  %6 = ptrtoint ptr %dev1.i87.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i.i, ptr %dev1.i87.i, align 4
  %pipe2.i88.i = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 10
  %7 = ptrtoint ptr %pipe2.i88.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pipe2.i88.i, align 4
  %transfer_buffer3.i89.i = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer3.i89.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %transfer_buffer3.i89.i, align 4
  %transfer_buffer_length.i90.i = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 19
  %9 = ptrtoint ptr %transfer_buffer_length.i90.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1024, ptr %transfer_buffer_length.i90.i, align 4
  %complete.i91.i = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 28
  %10 = ptrtoint ptr %complete.i91.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @simple_callback, ptr %complete.i91.i, align 4
  %context4.i92.i = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 27
  %11 = ptrtoint ptr %context4.i92.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %context4.i92.i, align 4
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp eq i32 %13, 3
  %cond.i = select i1 %cmp.i, i32 8, i32 1
  %interval.i = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 25
  %14 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i, ptr %interval.i, align 4
  %transfer_flags5.i = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 13
  %15 = ptrtoint ptr %transfer_flags5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %transfer_flags5.i, align 4
  %transfer_dma.i49 = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 15
  %call19.i = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i, i32 noundef 1024, i32 noundef 3264, ptr noundef %transfer_dma.i49) #10
  %16 = ptrtoint ptr %transfer_buffer3.i89.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call19.i, ptr %transfer_buffer3.i89.i, align 4
  %tobool26.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool26.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end28.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end28.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %pipe2.i88.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pipe2.i88.i, align 4
  %and43.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %19 = select i1 %tobool44.not.i, i8 0, i8 -91
  %20 = zext i8 %19 to i32
  %21 = call ptr @memset(ptr %call19.i, i32 %20, i32 1024)
  br label %if.end6

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i47, label %if.else.cleanup_crit_edge, label %if.end.i51

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i51:                                       ; preds = %if.else
  %dev1.i87.i52 = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 8
  %22 = ptrtoint ptr %dev1.i87.i52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i.i, ptr %dev1.i87.i52, align 4
  %pipe2.i88.i53 = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 10
  %23 = ptrtoint ptr %pipe2.i88.i53 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pipe2.i88.i53, align 4
  %transfer_buffer3.i89.i54 = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 14
  %24 = ptrtoint ptr %transfer_buffer3.i89.i54 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %transfer_buffer3.i89.i54, align 4
  %transfer_buffer_length.i90.i55 = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 19
  %25 = ptrtoint ptr %transfer_buffer_length.i90.i55 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 512, ptr %transfer_buffer_length.i90.i55, align 4
  %complete.i91.i56 = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 28
  %26 = ptrtoint ptr %complete.i91.i56 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @simple_callback, ptr %complete.i91.i56, align 4
  %context4.i92.i57 = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 27
  %27 = ptrtoint ptr %context4.i92.i57 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %context4.i92.i57, align 4
  %28 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp.i60 = icmp eq i32 %29, 3
  %cond.i61 = select i1 %cmp.i60, i32 8, i32 1
  %interval.i62 = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 25
  %30 = ptrtoint ptr %interval.i62 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond.i61, ptr %interval.i62, align 4
  %transfer_flags5.i63 = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 13
  %31 = ptrtoint ptr %transfer_flags5.i63 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %transfer_flags5.i63, align 4
  %transfer_dma.i64 = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 15
  %call19.i65 = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i, i32 noundef 512, i32 noundef 3264, ptr noundef %transfer_dma.i64) #10
  %32 = ptrtoint ptr %transfer_buffer3.i89.i54 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call19.i65, ptr %transfer_buffer3.i89.i54, align 4
  %tobool26.not.i68 = icmp eq ptr %call19.i65, null
  br i1 %tobool26.not.i68, label %if.end.i51.cleanup.sink.split_crit_edge, label %if.end28.i70

if.end.i51.cleanup.sink.split_crit_edge:          ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end28.i70:                                     ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %pipe2.i88.i53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pipe2.i88.i53, align 4
  %and43.i72 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i72)
  %tobool44.not.i73 = icmp eq i32 %and43.i72, 0
  %35 = select i1 %tobool44.not.i73, i8 0, i8 -91
  %36 = zext i8 %35 to i32
  %37 = call ptr @memset(ptr %call19.i65, i32 %36, i32 512)
  br label %if.end6

if.end6:                                          ; preds = %if.end28.i70, %if.end28.i
  %in_pipe = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 2
  %38 = ptrtoint ptr %in_pipe to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %in_pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not = icmp eq i32 %39, 0
  br i1 %tobool.not, label %if.end6.if.end14_crit_edge, label %if.then7

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then7:                                         ; preds = %if.end6
  %40 = lshr i32 %39, 15
  %and = and i32 %40, 15
  %or = or i32 %and, 128
  %pipe = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 10
  %41 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %pipe, align 4
  %call10 = tail call fastcc i32 @test_halt(ptr noundef %dev, i32 noundef %or, ptr noundef nonnull %call.i46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then7.done_crit_edge, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then7.done_crit_edge:                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %retval1.0 = phi i32 [ %call10, %if.then7.if.end14_crit_edge ], [ 0, %if.end6.if.end14_crit_edge ]
  %out_pipe = getelementptr inbounds %struct.usbtest_dev, ptr %dev, i32 0, i32 3
  %42 = ptrtoint ptr %out_pipe to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %out_pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool15.not = icmp eq i32 %43, 0
  br i1 %tobool15.not, label %if.end14.done_crit_edge, label %if.then16

if.end14.done_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %44 = lshr i32 %43, 15
  %and19 = and i32 %44, 15
  %pipe21 = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 10
  %45 = ptrtoint ptr %pipe21 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %pipe21, align 4
  %call22 = tail call fastcc i32 @test_halt(ptr noundef %dev, i32 noundef %and19, ptr noundef nonnull %call.i46)
  br label %done

done:                                             ; preds = %if.then16, %if.end14.done_crit_edge, %if.then7.done_crit_edge
  %retval1.1 = phi i32 [ %call10, %if.then7.done_crit_edge ], [ %call22, %if.then16 ], [ %retval1.0, %if.end14.done_crit_edge ]
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 14
  %46 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %transfer_buffer.i, align 4
  %48 = ptrtoint ptr %47 to i32
  %and.i.i = and i32 %48, 127
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 13
  %49 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %transfer_flags.i, align 4
  %and.i = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 8
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 19
  %53 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %transfer_buffer_length.i, align 4
  %add.i = add i32 %54, %and.i.i
  %idx.neg.i = sub nsw i32 0, %and.i.i
  %add.ptr.i = getelementptr i8, ptr %47, i32 %idx.neg.i
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call.i46, i32 0, i32 15
  %55 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %transfer_dma.i, align 4
  %sub.i = sub i32 %56, %and.i.i
  tail call void @usb_free_coherent(ptr noundef %52, i32 noundef %add.i, ptr noundef %add.ptr.i, i32 noundef %sub.i) #10
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  %idx.neg3.i = sub nsw i32 0, %and.i.i
  %add.ptr4.i = getelementptr i8, ptr %47, i32 %idx.neg3.i
  tail call void @kfree(ptr noundef %add.ptr4.i) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.i, %if.then.i, %if.end.i51.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end.i.cleanup.sink.split_crit_edge ], [ -12, %if.end.i51.cleanup.sink.split_crit_edge ], [ %retval1.1, %if.then.i ], [ %retval1.1, %if.else.i ]
  tail call void @usb_free_urb(ptr noundef nonnull %call.i46) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctrl_out(ptr nocapture noundef readonly %dev, i32 noundef %count, i32 noundef %length, i32 noundef %vary, i32 noundef %offset) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %length, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %0)
  %1 = icmp ult i32 %0, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %vary, i32 %length)
  %cmp4.not = icmp ult i32 %vary, %length
  %or.cond153 = and i1 %1, %cmp4.not
  br i1 %or.cond153, label %if.end8.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %add = add i32 %offset, %length
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end6

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %offset
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp8189.not = icmp eq i32 %count, 0
  br i1 %cmp8189.not, label %if.end6.if.end90_crit_edge, label %if.end6.for.cond9.preheader_crit_edge

if.end6.for.cond9.preheader_crit_edge:            ; preds = %if.end6
  br label %for.cond9.preheader

if.end6.if.end90_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

for.cond9.preheader:                              ; preds = %for.inc79.for.cond9.preheader_crit_edge, %if.end6.for.cond9.preheader_crit_edge
  %len.0192 = phi i32 [ %len.1, %for.inc79.for.cond9.preheader_crit_edge ], [ %length, %if.end6.for.cond9.preheader_crit_edge ]
  %i.0190 = phi i32 [ %inc80, %for.inc79.for.cond9.preheader_crit_edge ], [ 0, %if.end6.for.cond9.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0192)
  %cmp10185.not = icmp eq i32 %len.0192, 0
  br i1 %cmp10185.not, label %for.cond9.preheader.for.end_crit_edge, label %for.cond9.preheader.for.body11_crit_edge

for.cond9.preheader.for.body11_crit_edge:         ; preds = %for.cond9.preheader
  br label %for.body11

for.cond9.preheader.for.end_crit_edge:            ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.cond9.preheader.for.body11_crit_edge
  %j.0186 = phi i32 [ %inc, %for.body11.for.body11_crit_edge ], [ 0, %for.cond9.preheader.for.body11_crit_edge ]
  %add12 = add i32 %j.0186, %i.0190
  %conv = trunc i32 %add12 to i8
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %j.0186
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw i32 %j.0186, 1
  %exitcond.not = icmp eq i32 %inc, %len.0192
  br i1 %exitcond.not, label %for.body11.for.end_crit_edge, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11

for.body11.for.end_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body11.for.end_crit_edge, %for.cond9.preheader.for.end_crit_edge
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i = shl i32 %8, 8
  %or = or i32 %shl.i, -2147483648
  %conv14 = trunc i32 %len.0192 to i16
  %call15 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or, i8 noundef zeroext 91, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %add.ptr, i16 noundef zeroext %conv14, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %len.0192)
  %cmp16.not = icmp eq i32 %call15, %len.0192
  br i1 %cmp16.not, label %if.end24, label %if.then18

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15)
  %cmp19 = icmp sgt i32 %call15, -1
  br i1 %cmp19, label %do.end, label %if.then18.do.end87_crit_edge

if.then18.do.end87_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end87

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev22 = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.288, i32 noundef %call15, i32 noundef %len.0192) #13
  br label %do.end87

if.end24:                                         ; preds = %for.end
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i154 = shl i32 %12, 8
  %or27 = or i32 %shl.i154, -2147483520
  %call29 = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i, i32 noundef %or27, i8 noundef zeroext 92, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %add.ptr, i16 noundef zeroext %conv14, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %len.0192)
  %cmp30.not = icmp eq i32 %call29, %len.0192
  br i1 %cmp30.not, label %for.cond43.preheader, label %if.then32

for.cond43.preheader:                             ; preds = %if.end24
  br i1 %cmp10185.not, label %for.cond43.preheader.if.end72_crit_edge, label %for.cond43.preheader.for.body46_crit_edge

for.cond43.preheader.for.body46_crit_edge:        ; preds = %for.cond43.preheader
  br label %for.body46

for.cond43.preheader.if.end72_crit_edge:          ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then32:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call29)
  %cmp33 = icmp sgt i32 %call29, -1
  br i1 %cmp33, label %do.end38, label %if.then32.do.end87_crit_edge

if.then32.do.end87_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end87

do.end38:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %dev40 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.292, i32 noundef %call29, i32 noundef %len.0192) #13
  br label %do.end87

for.body46:                                       ; preds = %for.inc66.for.body46_crit_edge, %for.cond43.preheader.for.body46_crit_edge
  %j.1188 = phi i32 [ %inc67, %for.inc66.for.body46_crit_edge ], [ 0, %for.cond43.preheader.for.body46_crit_edge ]
  %arrayidx47 = getelementptr i8, ptr %add.ptr, i32 %j.1188
  %15 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx47, align 1
  %add49 = add i32 %j.1188, %i.0190
  %17 = trunc i32 %add49 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %17)
  %cmp52.not = icmp eq i8 %16, %17
  br i1 %cmp52.not, label %for.inc66, label %for.end68.thread

for.end68.thread:                                 ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #12
  %conv51 = and i32 %add49, 255
  %conv48.le = zext i8 %16 to i32
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %dev59 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.295, i32 noundef %j.1188, i32 noundef %conv48.le, i32 noundef %conv51) #13
  br label %do.end87

for.inc66:                                        ; preds = %for.body46
  %inc67 = add nuw i32 %j.1188, 1
  %exitcond213.not = icmp eq i32 %inc67, %len.0192
  br i1 %exitcond213.not, label %for.end68, label %for.inc66.for.body46_crit_edge

for.inc66.for.body46_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body46

for.end68:                                        ; preds = %for.inc66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0192)
  %cmp69 = icmp slt i32 %len.0192, 0
  br i1 %cmp69, label %for.end68.do.end87_crit_edge, label %for.end68.if.end72_crit_edge

for.end68.if.end72_crit_edge:                     ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

for.end68.do.end87_crit_edge:                     ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end87

if.end72:                                         ; preds = %for.end68.if.end72_crit_edge, %for.cond43.preheader.if.end72_crit_edge
  %add73 = add i32 %len.0192, %vary
  call void @__sanitizer_cov_trace_cmp4(i32 %add73, i32 %length)
  %cmp74 = icmp ugt i32 %add73, %length
  br i1 %cmp74, label %if.then76, label %if.end72.for.inc79_crit_edge

if.end72.for.inc79_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc79

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %20 = load i32, ptr @realworld, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool77.not = icmp ne i32 %20, 0
  %cond = zext i1 %tobool77.not to i32
  br label %for.inc79

for.inc79:                                        ; preds = %if.then76, %if.end72.for.inc79_crit_edge
  %len.1 = phi i32 [ %cond, %if.then76 ], [ %add73, %if.end72.for.inc79_crit_edge ]
  %inc80 = add nuw i32 %i.0190, 1
  %exitcond214.not = icmp eq i32 %inc80, %count
  br i1 %exitcond214.not, label %for.inc79.if.end90_crit_edge, label %for.inc79.for.cond9.preheader_crit_edge

for.inc79.for.cond9.preheader_crit_edge:          ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond9.preheader

for.inc79.if.end90_crit_edge:                     ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

do.end87:                                         ; preds = %for.end68.do.end87_crit_edge, %for.end68.thread, %do.end38, %if.then32.do.end87_crit_edge, %do.end, %if.then18.do.end87_crit_edge
  %retval1.2.ph = phi i32 [ -74, %for.end68.thread ], [ %call29, %if.then32.do.end87_crit_edge ], [ -74, %do.end38 ], [ %call15, %if.then18.do.end87_crit_edge ], [ -74, %do.end ], [ %len.0192, %for.end68.do.end87_crit_edge ]
  %what.0.ph = phi ptr [ @.str.297, %for.end68.thread ], [ @.str.290, %if.then32.do.end87_crit_edge ], [ @.str.290, %do.end38 ], [ @.str.287, %if.then18.do.end87_crit_edge ], [ @.str.287, %do.end ], [ @.str.297, %for.end68.do.end87_crit_edge ]
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %dev89 = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev89, ptr noundef nonnull @.str.299, ptr noundef nonnull %what.0.ph, i32 noundef %retval1.2.ph, i32 noundef %i.0190) #13
  br label %if.end90

if.end90:                                         ; preds = %do.end87, %for.inc79.if.end90_crit_edge, %if.end6.if.end90_crit_edge
  %retval1.2164 = phi i32 [ %retval1.2.ph, %do.end87 ], [ 0, %if.end6.if.end90_crit_edge ], [ %len.0192, %for.inc79.if.end90_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.2164, %if.end90 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_queue(ptr noundef %dev, ptr nocapture noundef readonly %param, i32 noundef %pipe, ptr noundef readonly %desc, i32 noundef %offset) unnamed_addr #3 align 64 {
entry:
  %context = alloca %struct.transfer_context, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %context) #10
  %sglen = getelementptr inbounds %struct.usbtest_param_32, ptr %param, i32 0, i32 4
  %0 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %iterations = getelementptr inbounds %struct.usbtest_param_32, ptr %param, i32 0, i32 1
  %2 = ptrtoint ptr %iterations to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iterations, align 4
  %mul224 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 %3)
  %mul.ov = extractvalue { i32, i1 } %mul224, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp3 = icmp ugt i32 %1, 128
  %or.cond = or i1 %cmp3, %mul.ov
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end7.i.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %lor.lhs.false
  %4 = shl nuw nsw i32 %1, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #15
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end9

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end7.i.i
  %5 = getelementptr inbounds i8, ptr %context, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 124)
  %7 = ptrtoint ptr %iterations to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iterations, align 4
  %9 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sglen, align 4
  %mul = mul i32 %10, %8
  %11 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %context, align 4
  %dev12 = getelementptr inbounds %struct.transfer_context, ptr %context, i32 0, i32 7
  %12 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %dev12, align 4
  %tobool13 = icmp ne ptr %desc, null
  %is_iso = getelementptr inbounds %struct.transfer_context, ptr %context, i32 0, i32 8
  %frombool = zext i1 %tobool13 to i8
  %13 = ptrtoint ptr %is_iso to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %is_iso, align 4
  %done = getelementptr inbounds %struct.transfer_context, ptr %context, i32 0, i32 3
  %wait.i = getelementptr inbounds %struct.transfer_context, ptr %context, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.154, ptr noundef nonnull @init_completion.__key) #10
  %lock = getelementptr inbounds %struct.transfer_context, ptr %context, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.240, ptr noundef nonnull @test_queue.__key, i16 noundef signext 3) #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 -128
  %18 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp18275.not = icmp eq i32 %19, 0
  br i1 %cmp18275.not, label %if.end9.for.end_crit_edge, label %for.body.lr.ph

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %length = getelementptr inbounds %struct.usbtest_param_32, ptr %param, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %desc, null
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %speed.i = getelementptr i8, ptr %17, i32 -100
  %and.i.i.i = and i32 %pipe, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i.v = select i1 %tobool.not.i.i.i, i32 1024, i32 960
  %cond.i.i.i = getelementptr i8, ptr %17, i32 %cond.i.i.i.v
  %shr.i.i.i = lshr i32 %pipe, 15
  %and2.i.i.i = and i32 %shr.i.i.i, 15
  %arrayidx.i.i.i = getelementptr ptr, ptr %cond.i.i.i, i32 %and2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool18.not.i = icmp eq i32 %offset, 0
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 5
  %and.i.i226 = lshr i32 %pipe, 7
  %20 = and i32 %and.i.i226, 1
  %21 = or i32 %20, 4
  br label %for.body

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %for.body.lr.ph
  %packets.0278 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end30.for.body_crit_edge ]
  %i.0276 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end30.for.body_crit_edge ]
  %22 = ptrtoint ptr %is_iso to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_iso, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool20.not = icmp eq i8 %23, 0
  %24 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length, align 4
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp slt i32 %25, 0
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %if.then21.if.end26_crit_edge, label %if.end.i

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end.i:                                         ; preds = %if.then21
  %26 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %28 = and i16 %27, -249
  %29 = call i16 @llvm.bswap.i16(i16 %28) #10
  %and.i.i = zext i16 %29 to i32
  %30 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp1.i = icmp ugt i32 %31, 4
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i.i, align 4
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %33, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bmAttributes.i.i, align 1
  %36 = and i8 %35, 3
  %narrow.i.i = add nuw nsw i8 %36, 1
  %add.i.i = zext i8 %narrow.i.i to i32
  %bMaxBurst.i.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %33, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %bMaxBurst.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bMaxBurst.i.i, align 1
  %conv2.i.i = zext i8 %38 to i32
  %add3.i.i = add nuw nsw i32 %conv2.i.i, 1
  %mul.i.i = mul nuw nsw i32 %add3.i.i, %add.i.i
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = lshr i16 %27, 3
  %40 = and i16 %39, 3
  %narrow.i96.i = add nuw nsw i16 %40, 1
  %add.i97.i = zext i16 %narrow.i96.i to i32
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.then2.i
  %call3.pn.i = phi i32 [ %mul.i.i, %if.then2.i ], [ %add.i97.i, %if.else.i ]
  %maxp.0.i = mul nuw nsw i32 %call3.pn.i, %and.i.i
  %add.i = add nsw i32 %25, -1
  %sub.i = add i32 %add.i, %maxp.0.i
  %div.i = udiv i32 %sub.i, %maxp.0.i
  %call7.i = call ptr @usb_alloc_urb(i32 noundef %div.i, i32 noundef 3264) #10
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end6.i.if.end26_crit_edge, label %if.end10.i

if.end6.i.if.end26_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end10.i:                                       ; preds = %if.end6.i
  %dev.i = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 8
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i.i, ptr %dev.i, align 4
  %pipe11.i = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 10
  %42 = ptrtoint ptr %pipe11.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %pipe, ptr %pipe11.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 24
  %43 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div.i, ptr %number_of_packets.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 19
  %44 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %25, ptr %transfer_buffer_length.i, align 4
  %add12.i = add i32 %25, %offset
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 15
  %call13.i = call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i, i32 noundef %add12.i, i32 noundef 3264, ptr noundef %transfer_dma.i) #10
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 14
  %45 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call13.i, ptr %transfer_buffer.i, align 4
  %tobool15.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @usb_free_urb(ptr noundef nonnull %call7.i) #10
  br label %if.end26

if.end17.i:                                       ; preds = %if.end10.i
  br i1 %tobool18.not.i, label %if.end17.i.if.end24.i_crit_edge, label %if.then19.i

if.end17.i.if.end24.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %call13.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -91, ptr %call13.i, align 1
  %47 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %transfer_buffer.i, align 4
  %add.ptr.i = getelementptr i8, ptr %48, i32 1
  store ptr %add.ptr.i, ptr %transfer_buffer.i, align 4
  %49 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %transfer_dma.i, align 4
  %add23.i = add i32 %50, 1
  store i32 %add23.i, ptr %transfer_dma.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then19.i, %if.end17.i.if.end24.i_crit_edge
  %51 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %transfer_buffer.i, align 4
  %53 = ptrtoint ptr %pipe11.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pipe11.i, align 4
  %and.i = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not.i = icmp eq i32 %and.i, 0
  %55 = select i1 %tobool27.not.i, i8 0, i8 -91
  %56 = zext i8 %55 to i32
  %57 = call ptr @memset(ptr %52, i32 %56, i32 %25)
  call void @__sanitizer_cov_trace_cmp4(i32 %maxp.0.i, i32 %sub.i)
  %cmp2898.not.i = icmp ugt i32 %maxp.0.i, %sub.i
  br i1 %cmp2898.not.i, label %if.end24.i.for.end.i_crit_edge, label %for.body.preheader.i

if.end24.i.for.end.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end24.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div.i, i32 1) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0100.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %bytes.addr.099.i = phi i32 [ %sub34.i, %for.body.i.for.body.i_crit_edge ], [ %25, %for.body.preheader.i ]
  %58 = call i32 @llvm.umin.i32(i32 %bytes.addr.099.i, i32 %maxp.0.i) #10
  %arrayidx.i = getelementptr %struct.urb, ptr %call7.i, i32 0, i32 29, i32 %i.0100.i
  %length.i = getelementptr %struct.urb, ptr %call7.i, i32 0, i32 29, i32 %i.0100.i, i32 1
  %59 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %length.i, align 4
  %sub34.i = sub i32 %bytes.addr.099.i, %58
  %mul35.i = mul i32 %i.0100.i, %maxp.0.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul35.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.0100.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end24.i.for.end.i_crit_edge
  %complete.i = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 28
  %61 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @complicated_callback, ptr %complete.i, align 4
  %62 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bInterval.i, align 1
  %conv.i = zext i8 %63 to i32
  %sub39.i = add nsw i32 %conv.i, -1
  %shl.i = shl nuw i32 1, %sub39.i
  %interval.i = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 25
  %64 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shl.i, ptr %interval.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call7.i, i32 0, i32 13
  %65 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 6, ptr %transfer_flags.i, align 4
  br label %if.end26

if.else:                                          ; preds = %for.body
  %call.i.i = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.else.if.end26_crit_edge, label %if.end.i.i227

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end.i.i227:                                    ; preds = %if.else
  %dev1.i87.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 8
  %66 = ptrtoint ptr %dev1.i87.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr.i.i, ptr %dev1.i87.i.i, align 4
  %pipe2.i88.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 10
  %67 = ptrtoint ptr %pipe2.i88.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %pipe, ptr %pipe2.i88.i.i, align 4
  %transfer_buffer3.i89.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 14
  %68 = ptrtoint ptr %transfer_buffer3.i89.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %transfer_buffer3.i89.i.i, align 4
  %transfer_buffer_length.i90.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 19
  %69 = ptrtoint ptr %transfer_buffer_length.i90.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %25, ptr %transfer_buffer_length.i90.i.i, align 4
  %complete.i91.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 28
  %70 = ptrtoint ptr %complete.i91.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @complicated_callback, ptr %complete.i91.i.i, align 4
  %context4.i92.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 27
  %71 = ptrtoint ptr %context4.i92.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %context4.i92.i.i, align 4
  %72 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %cmp.i.i = icmp eq i32 %73, 3
  %cond.i.i = select i1 %cmp.i.i, i32 8, i32 1
  %interval.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 25
  %74 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %cond.i.i, ptr %interval.i.i, align 4
  %transfer_flags5.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 13
  %75 = ptrtoint ptr %transfer_flags5.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %21, ptr %transfer_flags5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp10.i.i = icmp eq i32 %25, 0
  br i1 %cmp10.i.i, label %if.end.i.i227.if.end26_crit_edge, label %if.end13.i.i

if.end.i.i227.if.end26_crit_edge:                 ; preds = %if.end.i.i227
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end13.i.i:                                     ; preds = %if.end.i.i227
  %transfer_dma.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 15
  %call19.i.i = call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i, i32 noundef %25, i32 noundef 3264, ptr noundef %transfer_dma.i.i) #10
  %76 = ptrtoint ptr %transfer_buffer3.i89.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call19.i.i, ptr %transfer_buffer3.i89.i.i, align 4
  %tobool26.not.i.i = icmp eq ptr %call19.i.i, null
  br i1 %tobool26.not.i.i, label %if.then27.i.i, label %if.end28.i.i

if.then27.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @usb_free_urb(ptr noundef nonnull %call.i.i) #10
  br label %if.end26

if.end28.i.i:                                     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %pipe2.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pipe2.i88.i.i, align 4
  %and43.i.i = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i)
  %tobool44.not.i.i = icmp eq i32 %and43.i.i, 0
  %79 = select i1 %tobool44.not.i.i, i8 0, i8 -91
  %80 = zext i8 %79 to i32
  %81 = call ptr @memset(ptr %call19.i.i, i32 %80, i32 %25)
  br label %if.end26

if.end26:                                         ; preds = %if.end28.i.i, %if.then27.i.i, %if.end.i.i227.if.end26_crit_edge, %if.else.if.end26_crit_edge, %for.end.i, %if.then16.i, %if.end6.i.if.end26_crit_edge, %if.then21.if.end26_crit_edge
  %retval.0.i.i228.sink = phi ptr [ %call7.i, %for.end.i ], [ null, %if.then16.i ], [ null, %if.then21.if.end26_crit_edge ], [ null, %if.end6.i.if.end26_crit_edge ], [ %call.i.i, %if.end28.i.i ], [ null, %if.then27.i.i ], [ null, %if.else.if.end26_crit_edge ], [ %call.i.i, %if.end.i.i227.if.end26_crit_edge ]
  %arrayidx25 = getelementptr ptr, ptr %call8.i.i, i32 %i.0276
  %82 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %retval.0.i.i228.sink, ptr %arrayidx25, align 4
  %tobool28.not = icmp eq ptr %retval.0.i.i228.sink, null
  br i1 %tobool28.not, label %if.end26.fail_crit_edge, label %if.end30

if.end26.fail_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end30:                                         ; preds = %if.end26
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %retval.0.i.i228.sink, i32 0, i32 24
  %83 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %number_of_packets, align 4
  %add = add i32 %84, %packets.0278
  %context33 = getelementptr inbounds %struct.urb, ptr %retval.0.i.i228.sink, i32 0, i32 27
  %85 = ptrtoint ptr %context33 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %context, ptr %context33, align 4
  %inc = add nuw i32 %i.0276, 1
  %86 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sglen, align 4
  %cmp18 = icmp ult i32 %inc, %87
  br i1 %cmp18, label %if.end30.for.body_crit_edge, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end30.for.end_crit_edge, %if.end9.for.end_crit_edge
  %packets.0.lcssa = phi i32 [ 0, %if.end9.for.end_crit_edge ], [ %add, %if.end30.for.end_crit_edge ]
  %88 = ptrtoint ptr %iterations to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %iterations, align 4
  %mul35 = mul i32 %89, %packets.0.lcssa
  %90 = ptrtoint ptr %is_iso to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %is_iso, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool37.not = icmp eq i8 %91, 0
  br i1 %tobool37.not, label %for.end.if.end68_crit_edge, label %if.then38

for.end.if.end68_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then38:                                        ; preds = %for.end
  %speed = getelementptr i8, ptr %17, i32 -100
  %92 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %93)
  %cmp39 = icmp ugt i32 %93, 4
  br i1 %cmp39, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i229 = and i32 %pipe, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i229)
  %tobool.not.i.i230 = icmp eq i32 %and.i.i229, 0
  %cond.i.i231.v = select i1 %tobool.not.i.i230, i32 1024, i32 960
  %cond.i.i231 = getelementptr i8, ptr %17, i32 %cond.i.i231.v
  %shr.i.i = lshr i32 %pipe, 15
  %and2.i.i = and i32 %shr.i.i, 15
  %arrayidx.i.i = getelementptr ptr, ptr %cond.i.i231, i32 %and2.i.i
  %94 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i.i, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %95, i32 0, i32 1, i32 3
  %96 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %bmAttributes.i, align 1
  %98 = and i8 %97, 3
  %narrow.i = add nuw nsw i8 %98, 1
  %add.i232 = zext i8 %narrow.i to i32
  %bMaxBurst.i = getelementptr inbounds %struct.usb_host_endpoint, ptr %95, i32 0, i32 1, i32 2
  %99 = ptrtoint ptr %bMaxBurst.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %bMaxBurst.i, align 1
  %conv2.i = zext i8 %100 to i32
  %add3.i = add nuw nsw i32 %conv2.i, 1
  %mul.i = mul nuw nsw i32 %add3.i, %add.i232
  br label %do.end47

if.else42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %101 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %wMaxPacketSize.i, align 1
  %103 = lshr i16 %102, 3
  %104 = and i16 %103, 3
  %narrow.i233 = add nuw nsw i16 %104, 1
  %add.i234 = zext i16 %narrow.i233 to i32
  br label %do.end47

do.end47:                                         ; preds = %if.else42, %if.then40
  %transaction_num.0 = phi i32 [ %mul.i, %if.then40 ], [ %add.i234, %if.else42 ]
  %105 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev, align 4
  %dev48 = getelementptr inbounds %struct.usb_interface, ptr %106, i32 0, i32 7
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 5
  %107 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %bInterval, align 1
  %conv = zext i8 %108 to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %93)
  %cmp50 = icmp ugt i32 %93, 2
  %cond = select i1 %cmp50, ptr @.str.303, ptr @.str.9
  %wMaxPacketSize.i235 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %desc, i32 0, i32 4
  %109 = ptrtoint ptr %wMaxPacketSize.i235 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %wMaxPacketSize.i235, align 1
  %111 = and i16 %110, -249
  %112 = call i16 @llvm.bswap.i16(i16 %111) #10
  %and.i236 = zext i16 %112 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48, ptr noundef nonnull @.str.301, i32 noundef %shl, ptr noundef nonnull %cond, i32 noundef %and.i236, i32 noundef %transaction_num.0) #13
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  %dev57 = getelementptr inbounds %struct.usb_interface, ptr %114, i32 0, i32 7
  %115 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %bInterval, align 1
  %conv59 = zext i8 %116 to i32
  %sub60 = add nsw i32 %conv59, -1
  %mul62 = shl i32 %mul35, %sub60
  %117 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %118)
  %cmp64.inv = icmp ult i32 %118, 3
  %119 = select i1 %cmp64.inv, i32 0, i32 3
  %div67225 = lshr i32 %mul62, %119
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev57, ptr noundef nonnull @.str.305, i32 noundef %div67225, i32 noundef %mul35) #13
  br label %if.end68

if.end68:                                         ; preds = %do.end47, %for.end.if.end68_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %120 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp72279.not = icmp eq i32 %121, 0
  br i1 %cmp72279.not, label %if.end68.for.end97_crit_edge, label %for.body74.lr.ph

if.end68.for.end97_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end97

for.body74.lr.ph:                                 ; preds = %if.end68
  %pending = getelementptr inbounds %struct.transfer_context, ptr %context, i32 0, i32 1
  br label %for.body74

for.body74:                                       ; preds = %for.inc95.for.body74_crit_edge, %for.body74.lr.ph
  %i.1280 = phi i32 [ 0, %for.body74.lr.ph ], [ %inc96, %for.inc95.for.body74_crit_edge ]
  %122 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pending, align 4
  %inc75 = add i32 %123, 1
  store i32 %inc75, ptr %pending, align 4
  %arrayidx76 = getelementptr ptr, ptr %call8.i.i, i32 %i.1280
  %124 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx76, align 4
  %call77 = call i32 @usb_submit_urb(ptr noundef %125, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.end83, label %for.inc95

do.end83:                                         ; preds = %for.body74
  %126 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev, align 4
  %dev85 = getelementptr inbounds %struct.usb_interface, ptr %127, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85, ptr noundef nonnull @.str.308, i32 noundef %i.1280, i32 noundef %call77) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1280)
  %cmp86 = icmp eq i32 %i.1280, 0
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  br label %fail

if.end90:                                         ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx76.le = getelementptr ptr, ptr %call8.i.i, i32 %i.1280
  %128 = ptrtoint ptr %arrayidx76.le to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx76.le, align 4
  call fastcc void @simple_free_urb(ptr noundef %129)
  %130 = ptrtoint ptr %arrayidx76.le to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %arrayidx76.le, align 4
  %131 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %pending, align 4
  %dec = add i32 %132, -1
  store i32 %dec, ptr %pending, align 4
  %submit_error = getelementptr inbounds %struct.transfer_context, ptr %context, i32 0, i32 4
  %133 = ptrtoint ptr %submit_error to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %submit_error, align 4
  br label %for.end97

for.inc95:                                        ; preds = %for.body74
  %inc96 = add nuw i32 %i.1280, 1
  %134 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sglen, align 4
  %cmp72 = icmp ult i32 %inc96, %135
  br i1 %cmp72, label %for.inc95.for.body74_crit_edge, label %for.inc95.for.end97_crit_edge

for.inc95.for.end97_crit_edge:                    ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end97

for.inc95.for.body74_crit_edge:                   ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body74

for.end97:                                        ; preds = %for.inc95.for.end97_crit_edge, %if.end90, %if.end68.for.end97_crit_edge
  %status.1 = phi i32 [ %call77, %if.end90 ], [ 0, %if.end68.for.end97_crit_edge ], [ %call77, %for.inc95.for.end97_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  call void @wait_for_completion(ptr noundef %done) #10
  %136 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp102282.not = icmp eq i32 %137, 0
  br i1 %cmp102282.not, label %for.end97.for.end112_crit_edge, label %for.end97.for.body104_crit_edge

for.end97.for.body104_crit_edge:                  ; preds = %for.end97
  br label %for.body104

for.end97.for.end112_crit_edge:                   ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end112

for.body104:                                      ; preds = %for.inc110.for.body104_crit_edge, %for.end97.for.body104_crit_edge
  %i.2283 = phi i32 [ %inc111, %for.inc110.for.body104_crit_edge ], [ 0, %for.end97.for.body104_crit_edge ]
  %arrayidx105 = getelementptr ptr, ptr %call8.i.i, i32 %i.2283
  %138 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx105, align 4
  %tobool106.not = icmp eq ptr %139, null
  br i1 %tobool106.not, label %for.body104.for.inc110_crit_edge, label %if.then107

for.body104.for.inc110_crit_edge:                 ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc110

if.then107:                                       ; preds = %for.body104
  %transfer_buffer.i237 = getelementptr inbounds %struct.urb, ptr %139, i32 0, i32 14
  %140 = ptrtoint ptr %transfer_buffer.i237 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %transfer_buffer.i237, align 4
  %142 = ptrtoint ptr %141 to i32
  %and.i.i238 = and i32 %142, 127
  %transfer_flags.i239 = getelementptr inbounds %struct.urb, ptr %139, i32 0, i32 13
  %143 = ptrtoint ptr %transfer_flags.i239 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %transfer_flags.i239, align 4
  %and.i240 = and i32 %144, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i240)
  %tobool.not.i241 = icmp eq i32 %and.i240, 0
  br i1 %tobool.not.i241, label %if.else.i248, label %if.then.i

if.then.i:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i242 = getelementptr inbounds %struct.urb, ptr %139, i32 0, i32 8
  %145 = ptrtoint ptr %dev.i242 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev.i242, align 4
  %transfer_buffer_length.i243 = getelementptr inbounds %struct.urb, ptr %139, i32 0, i32 19
  %147 = ptrtoint ptr %transfer_buffer_length.i243 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %transfer_buffer_length.i243, align 4
  %add.i244 = add i32 %148, %and.i.i238
  %idx.neg.i = sub nsw i32 0, %and.i.i238
  %add.ptr.i245 = getelementptr i8, ptr %141, i32 %idx.neg.i
  %transfer_dma.i246 = getelementptr inbounds %struct.urb, ptr %139, i32 0, i32 15
  %149 = ptrtoint ptr %transfer_dma.i246 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %transfer_dma.i246, align 4
  %sub.i247 = sub i32 %150, %and.i.i238
  call void @usb_free_coherent(ptr noundef %146, i32 noundef %add.i244, ptr noundef %add.ptr.i245, i32 noundef %sub.i247) #10
  br label %simple_free_urb.exit

if.else.i248:                                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #12
  %idx.neg3.i = sub nsw i32 0, %and.i.i238
  %add.ptr4.i = getelementptr i8, ptr %141, i32 %idx.neg3.i
  call void @kfree(ptr noundef %add.ptr4.i) #10
  br label %simple_free_urb.exit

simple_free_urb.exit:                             ; preds = %if.else.i248, %if.then.i
  call void @usb_free_urb(ptr noundef nonnull %139) #10
  br label %for.inc110

for.inc110:                                       ; preds = %simple_free_urb.exit, %for.body104.for.inc110_crit_edge
  %inc111 = add nuw i32 %i.2283, 1
  %151 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %sglen, align 4
  %cmp102 = icmp ult i32 %inc111, %152
  br i1 %cmp102, label %for.inc110.for.body104_crit_edge, label %for.inc110.for.end112_crit_edge

for.inc110.for.end112_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end112

for.inc110.for.body104_crit_edge:                 ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body104

for.end112:                                       ; preds = %for.inc110.for.end112_crit_edge, %for.end97.for.end112_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %cmp113.not = icmp eq i32 %status.1, 0
  br i1 %cmp113.not, label %if.else116, label %for.end112.cleanup.sink.split_crit_edge

for.end112.cleanup.sink.split_crit_edge:          ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else116:                                       ; preds = %for.end112
  %submit_error117 = getelementptr inbounds %struct.transfer_context, ptr %context, i32 0, i32 4
  %153 = ptrtoint ptr %submit_error117 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %submit_error117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool118.not = icmp eq i32 %154, 0
  br i1 %tobool118.not, label %if.else120, label %if.else116.cleanup.sink.split_crit_edge

if.else116.cleanup.sink.split_crit_edge:          ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.else120:                                       ; preds = %if.else116
  %errors = getelementptr inbounds %struct.transfer_context, ptr %context, i32 0, i32 5
  %155 = ptrtoint ptr %errors to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %errors, align 4
  %157 = ptrtoint ptr %is_iso to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %is_iso, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool122.not = icmp eq i8 %158, 0
  br i1 %tobool122.not, label %if.else120.cond.end_crit_edge, label %cond.true

if.else120.cond.end_crit_edge:                    ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #12
  %packet_count = getelementptr inbounds %struct.transfer_context, ptr %context, i32 0, i32 6
  %159 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %packet_count, align 4
  %div124 = udiv i32 %160, 10
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.else120.cond.end_crit_edge
  %cond125 = phi i32 [ %div124, %cond.true ], [ 0, %if.else120.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %cond125)
  %cmp126 = icmp ugt i32 %156, %cond125
  %spec.select = select i1 %cmp126, i32 -5, i32 0
  br label %cleanup.sink.split

fail:                                             ; preds = %if.then88, %if.end26.fail_crit_edge
  %status.3 = phi i32 [ %call77, %if.then88 ], [ -12, %if.end26.fail_crit_edge ]
  %161 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp134284.not = icmp eq i32 %162, 0
  br i1 %cmp134284.not, label %fail.cleanup.sink.split_crit_edge, label %fail.for.body136_crit_edge

fail.for.body136_crit_edge:                       ; preds = %fail
  br label %for.body136

fail.cleanup.sink.split_crit_edge:                ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.body136:                                      ; preds = %for.inc142.for.body136_crit_edge, %fail.for.body136_crit_edge
  %i.3285 = phi i32 [ %inc143, %for.inc142.for.body136_crit_edge ], [ 0, %fail.for.body136_crit_edge ]
  %arrayidx137 = getelementptr ptr, ptr %call8.i.i, i32 %i.3285
  %163 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx137, align 4
  %tobool138.not = icmp eq ptr %164, null
  br i1 %tobool138.not, label %for.body136.for.inc142_crit_edge, label %if.then139

for.body136.for.inc142_crit_edge:                 ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc142

if.then139:                                       ; preds = %for.body136
  %transfer_buffer.i250 = getelementptr inbounds %struct.urb, ptr %164, i32 0, i32 14
  %165 = ptrtoint ptr %transfer_buffer.i250 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %transfer_buffer.i250, align 4
  %167 = ptrtoint ptr %166 to i32
  %and.i.i251 = and i32 %167, 127
  %transfer_flags.i252 = getelementptr inbounds %struct.urb, ptr %164, i32 0, i32 13
  %168 = ptrtoint ptr %transfer_flags.i252 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %transfer_flags.i252, align 4
  %and.i253 = and i32 %169, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i253)
  %tobool.not.i254 = icmp eq i32 %and.i253, 0
  br i1 %tobool.not.i254, label %if.else.i265, label %if.then.i262

if.then.i262:                                     ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i255 = getelementptr inbounds %struct.urb, ptr %164, i32 0, i32 8
  %170 = ptrtoint ptr %dev.i255 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev.i255, align 4
  %transfer_buffer_length.i256 = getelementptr inbounds %struct.urb, ptr %164, i32 0, i32 19
  %172 = ptrtoint ptr %transfer_buffer_length.i256 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %transfer_buffer_length.i256, align 4
  %add.i257 = add i32 %173, %and.i.i251
  %idx.neg.i258 = sub nsw i32 0, %and.i.i251
  %add.ptr.i259 = getelementptr i8, ptr %166, i32 %idx.neg.i258
  %transfer_dma.i260 = getelementptr inbounds %struct.urb, ptr %164, i32 0, i32 15
  %174 = ptrtoint ptr %transfer_dma.i260 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %transfer_dma.i260, align 4
  %sub.i261 = sub i32 %175, %and.i.i251
  call void @usb_free_coherent(ptr noundef %171, i32 noundef %add.i257, ptr noundef %add.ptr.i259, i32 noundef %sub.i261) #10
  br label %simple_free_urb.exit267

if.else.i265:                                     ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #12
  %idx.neg3.i263 = sub nsw i32 0, %and.i.i251
  %add.ptr4.i264 = getelementptr i8, ptr %166, i32 %idx.neg3.i263
  call void @kfree(ptr noundef %add.ptr4.i264) #10
  br label %simple_free_urb.exit267

simple_free_urb.exit267:                          ; preds = %if.else.i265, %if.then.i262
  call void @usb_free_urb(ptr noundef nonnull %164) #10
  br label %for.inc142

for.inc142:                                       ; preds = %simple_free_urb.exit267, %for.body136.for.inc142_crit_edge
  %inc143 = add nuw i32 %i.3285, 1
  %176 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %sglen, align 4
  %cmp134 = icmp ult i32 %inc143, %177
  br i1 %cmp134, label %for.inc142.for.body136_crit_edge, label %for.inc142.cleanup.sink.split_crit_edge

for.inc142.cleanup.sink.split_crit_edge:          ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.inc142.for.body136_crit_edge:                 ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body136

cleanup.sink.split:                               ; preds = %for.inc142.cleanup.sink.split_crit_edge, %fail.cleanup.sink.split_crit_edge, %cond.end, %if.else116.cleanup.sink.split_crit_edge, %for.end112.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %status.1, %for.end112.cleanup.sink.split_crit_edge ], [ -13, %if.else116.cleanup.sink.split_crit_edge ], [ %spec.select, %cond.end ], [ %status.3, %fail.cleanup.sink.split_crit_edge ], [ %status.3, %for.inc142.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %context) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_unaligned_bulk(ptr nocapture noundef readonly %tdev, i32 noundef %pipe, i32 noundef %length, i32 noundef %iterations, i32 noundef %transfer_flags, ptr noundef %label) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tdev, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %call2 = tail call fastcc ptr @usbtest_alloc_urb(ptr noundef %add.ptr.i.i, i32 noundef %pipe, i32 noundef %length, i32 noundef %transfer_flags, i32 noundef 1, i8 noundef zeroext 0, ptr noundef nonnull @simple_callback)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @simple_io(ptr noundef %tdev, ptr noundef nonnull %call2, i32 noundef %iterations, i32 noundef 0, i32 noundef 0, ptr noundef %label)
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %and.i.i = and i32 %6, 127
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 13
  %7 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %transfer_flags.i, align 4
  %and.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 8
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 19
  %11 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %transfer_buffer_length.i, align 4
  %add.i = add i32 %12, %and.i.i
  %idx.neg.i = sub nsw i32 0, %and.i.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 %idx.neg.i
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 15
  %13 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %transfer_dma.i, align 4
  %sub.i = sub i32 %14, %and.i.i
  tail call void @usb_free_coherent(ptr noundef %10, i32 noundef %add.i, ptr noundef %add.ptr.i, i32 noundef %sub.i) #10
  br label %simple_free_urb.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %idx.neg3.i = sub nsw i32 0, %and.i.i
  %add.ptr4.i = getelementptr i8, ptr %5, i32 %idx.neg3.i
  tail call void @kfree(ptr noundef %add.ptr4.i) #10
  br label %simple_free_urb.exit

simple_free_urb.exit:                             ; preds = %if.else.i, %if.then.i
  tail call void @usb_free_urb(ptr noundef nonnull %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %simple_free_urb.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %simple_free_urb.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unlink_queued(ptr nocapture noundef readonly %dev, i32 noundef %pipe, i32 noundef %num, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  %ctx = alloca %struct.queued_ctx, align 4
  %buf_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %ctx) #10
  %0 = getelementptr inbounds i8, ptr %ctx, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 68)
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_dma) #10
  %6 = ptrtoint ptr %buf_dma to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %buf_dma, align 4, !annotation !614
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ctx, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %ctx, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.154, ptr noundef nonnull @init_completion.__key) #10
  %pending = getelementptr inbounds %struct.queued_ctx, ptr %ctx, i32 0, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending, i32 noundef 4) #10
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %pending, align 4
  %num2 = getelementptr inbounds %struct.queued_ctx, ptr %ctx, i32 0, i32 2
  %9 = ptrtoint ptr %num2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %num, ptr %num2, align 4
  %status = getelementptr inbounds %struct.queued_ctx, ptr %ctx, i32 0, i32 3
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %status, align 4
  %call3 = call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i, i32 noundef %size, i32 noundef 3264, ptr noundef nonnull %buf_dma) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = call ptr @memset(ptr %call3, i32 0, i32 %size)
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num, i32 4) #10
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !607

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %urbs128 = getelementptr inbounds %struct.queued_ctx, ptr %ctx, i32 0, i32 4
  %14 = ptrtoint ptr %urbs128 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %urbs128, align 4
  br label %free_buf

if.end7.i.i:                                      ; preds = %if.end
  %15 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #15
  %urbs = getelementptr inbounds %struct.queued_ctx, ptr %ctx, i32 0, i32 4
  %16 = ptrtoint ptr %urbs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i, ptr %urbs, align 4
  %tobool6.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not, label %if.end7.i.i.free_buf_crit_edge, label %for.cond.preheader

if.end7.i.i.free_buf_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_buf

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp133.not = icmp eq i32 %num, 0
  br i1 %cmp133.not, label %for.cond.preheader.for.end48_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end48_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end48

for.cond33.preheader:                             ; preds = %for.inc
  br i1 %cmp133.not, label %for.cond33.preheader.for.end48_crit_edge, label %for.cond33.preheader.for.body35_crit_edge

for.cond33.preheader.for.body35_crit_edge:        ; preds = %for.cond33.preheader
  br label %for.body35

for.cond33.preheader.for.end48_crit_edge:         ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end48

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0134 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call9 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %17 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %urbs, align 4
  %arrayidx = getelementptr ptr, ptr %18, i32 %i.0134
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9, ptr %arrayidx, align 4
  %20 = load ptr, ptr %urbs, align 4
  %arrayidx12 = getelementptr ptr, ptr %20, i32 %i.0134
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %22, null
  br i1 %tobool13.not, label %for.body.free_urbs_crit_edge, label %if.end15

for.body.free_urbs_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_urbs

if.end15:                                         ; preds = %for.body
  %dev1.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 10
  %24 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %pipe, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 14
  %25 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call3, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 19
  %26 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %size, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 28
  %27 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @unlink_queued_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %22, i32 0, i32 27
  %28 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ctx, ptr %context4.i, align 4
  %29 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_dma, align 4
  %31 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %urbs, align 4
  %arrayidx19 = getelementptr ptr, ptr %32, i32 %i.0134
  %33 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx19, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %30, ptr %transfer_dma, align 4
  %36 = load ptr, ptr %urbs, align 4
  %arrayidx21 = getelementptr ptr, ptr %36, i32 %i.0134
  %37 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx21, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %transfer_flags, align 4
  %40 = load ptr, ptr %urbs, align 4
  %arrayidx23 = getelementptr ptr, ptr %40, i32 %i.0134
  %41 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx23, align 4
  %pipe24 = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %pipe24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pipe24, align 4
  %and = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.then26, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then26:                                        ; preds = %if.end15
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 14
  %45 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %transfer_buffer.i, align 4
  %transfer_buffer_length.i126 = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 19
  %47 = ptrtoint ptr %transfer_buffer_length.i126 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %transfer_buffer_length.i126, align 4
  %49 = load i32, ptr @pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cond.i = icmp eq i32 %49, 1
  br i1 %cond.i, label %sw.bb1.i, label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %50 = call ptr @memset(ptr %46, i32 0, i32 %48)
  br label %simple_fill_buf.exit

sw.bb1.i:                                         ; preds = %if.then26
  %dev.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 8
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %ep_out.i.i.i = getelementptr inbounds %struct.usb_device, ptr %52, i32 0, i32 22
  %shr.i.i.i = lshr i32 %44, 15
  %and2.i.i.i = and i32 %shr.i.i.i, 15
  %arrayidx.i.i.i = getelementptr ptr, ptr %ep_out.i.i.i, i32 %and2.i.i.i
  %53 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i.i, align 4
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %wMaxPacketSize.i.i, align 2
  %57 = call i16 @llvm.bswap.i16(i16 %56) #10
  %conv.i.i = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp10.not.i = icmp eq i32 %48, 0
  br i1 %cmp10.not.i, label %sw.bb1.i.simple_fill_buf.exit_crit_edge, label %sw.bb1.i.for.body.i_crit_edge

sw.bb1.i.for.body.i_crit_edge:                    ; preds = %sw.bb1.i
  br label %for.body.i

sw.bb1.i.simple_fill_buf.exit_crit_edge:          ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %simple_fill_buf.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb1.i.for.body.i_crit_edge
  %buf.012.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %46, %sw.bb1.i.for.body.i_crit_edge ]
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb1.i.for.body.i_crit_edge ]
  %rem.i = urem i32 %i.011.i, %conv.i.i
  %rem2.i = urem i32 %rem.i, 63
  %conv.i = trunc i32 %rem2.i to i8
  %incdec.ptr.i = getelementptr i8, ptr %buf.012.i, i32 1
  %58 = ptrtoint ptr %buf.012.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv.i, ptr %buf.012.i, align 1
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %48
  br i1 %exitcond.not.i, label %for.body.i.simple_fill_buf.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.simple_fill_buf.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %simple_fill_buf.exit

simple_fill_buf.exit:                             ; preds = %for.body.i.simple_fill_buf.exit_crit_edge, %sw.bb1.i.simple_fill_buf.exit_crit_edge, %sw.bb.i
  %59 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %urbs, align 4
  %arrayidx30 = getelementptr ptr, ptr %60, i32 %i.0134
  %61 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx30, align 4
  %transfer_flags31 = getelementptr inbounds %struct.urb, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %transfer_flags31 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %transfer_flags31, align 4
  %or = or i32 %64, 64
  store i32 %or, ptr %transfer_flags31, align 4
  br label %for.inc

for.inc:                                          ; preds = %simple_fill_buf.exit, %if.end15.for.inc_crit_edge
  %inc = add nuw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.cond33.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body35:                                       ; preds = %for.inc46.for.body35_crit_edge, %for.cond33.preheader.for.body35_crit_edge
  %i.1136 = phi i32 [ %inc47, %for.inc46.for.body35_crit_edge ], [ 0, %for.cond33.preheader.for.body35_crit_edge ]
  %call.i.i123 = call zeroext i1 @__kasan_check_write(ptr noundef %pending, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %pending, i32 1, i32 3, i32 1) #10
  %65 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending, ptr %pending, i32 1, ptr elementtype(i32) %pending) #10, !srcloc !615
  %66 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %urbs, align 4
  %arrayidx38 = getelementptr ptr, ptr %67, i32 %i.1136
  %68 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx38, align 4
  %call39 = call i32 @usb_submit_urb(ptr noundef %69, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %for.inc46, label %do.end

do.end:                                           ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  %dev42 = getelementptr inbounds %struct.usb_interface, ptr %71, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.315, i32 noundef %i.1136, i32 noundef %call39) #13
  %call.i.i124 = call zeroext i1 @__kasan_check_write(ptr noundef %pending, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %pending, i32 1, i32 3, i32 1) #10
  %72 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending, ptr %pending, i32 1, ptr elementtype(i32) %pending) #10, !srcloc !616
  %73 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call39, ptr %status, align 4
  br label %for.end48

for.inc46:                                        ; preds = %for.body35
  %inc47 = add nuw i32 %i.1136, 1
  %exitcond144.not = icmp eq i32 %inc47, %num
  br i1 %exitcond144.not, label %for.inc46.if.then50_crit_edge, label %for.inc46.for.body35_crit_edge

for.inc46.for.body35_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35

for.inc46.if.then50_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

for.end48:                                        ; preds = %do.end, %for.cond33.preheader.for.end48_crit_edge, %for.cond.preheader.for.end48_crit_edge
  %i.1132 = phi i32 [ %i.1136, %do.end ], [ 0, %for.cond33.preheader.for.end48_crit_edge ], [ 0, %for.cond.preheader.for.end48_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1132, i32 %num)
  %cmp49 = icmp eq i32 %i.1132, %num
  br i1 %cmp49, label %for.end48.if.then50_crit_edge, label %while.cond.preheader

for.end48.if.then50_crit_edge:                    ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

while.cond.preheader:                             ; preds = %for.end48
  %dec137 = add i32 %i.1132, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec137)
  %cmp58138 = icmp sgt i32 %dec137, -1
  br i1 %cmp58138, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end62_crit_edge

while.cond.preheader.if.end62_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

if.then50:                                        ; preds = %for.end48.if.then50_crit_edge, %for.inc46.if.then50_crit_edge
  %74 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %urbs, align 4
  %sub = add i32 %num, -4
  %arrayidx52 = getelementptr ptr, ptr %75, i32 %sub
  %76 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx52, align 4
  %call53 = call i32 @usb_unlink_urb(ptr noundef %77) #10
  %78 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %urbs, align 4
  %sub55 = add i32 %num, -2
  %arrayidx56 = getelementptr ptr, ptr %79, i32 %sub55
  %80 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx56, align 4
  %call57 = call i32 @usb_unlink_urb(ptr noundef %81) #10
  br label %if.end62

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec139 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec137, %while.cond.preheader.while.body_crit_edge ]
  %82 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %urbs, align 4
  %arrayidx60 = getelementptr ptr, ptr %83, i32 %dec139
  %84 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx60, align 4
  %call61 = call i32 @usb_unlink_urb(ptr noundef %85) #10
  %dec = add nsw i32 %dec139, -1
  %cmp58 = icmp sgt i32 %dec139, 0
  br i1 %cmp58, label %while.body.while.body_crit_edge, label %while.body.if.end62_crit_edge

while.body.if.end62_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end62:                                         ; preds = %while.body.if.end62_crit_edge, %if.then50, %while.cond.preheader.if.end62_crit_edge
  %call.i.i125 = call zeroext i1 @__kasan_check_write(ptr noundef %pending, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !617
  call void @llvm.prefetch.p0(ptr %pending, i32 1, i32 3, i32 1) #10
  %86 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending, ptr %pending, i32 1, ptr elementtype(i32) %pending) #10, !srcloc !618
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %86, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !619
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then65, label %if.end62.if.end67_crit_edge

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  call void @complete(ptr noundef nonnull %ctx) #10
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end62.if.end67_crit_edge
  call void @wait_for_completion(ptr noundef nonnull %ctx) #10
  %87 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %status, align 4
  br label %free_urbs

free_urbs:                                        ; preds = %if.end67, %for.body.free_urbs_crit_edge
  %retval1.0 = phi i32 [ %88, %if.end67 ], [ -12, %for.body.free_urbs_crit_edge ]
  br i1 %cmp133.not, label %free_urbs.for.end77_crit_edge, label %free_urbs.for.body72_crit_edge

free_urbs.for.body72_crit_edge:                   ; preds = %free_urbs
  br label %for.body72

free_urbs.for.end77_crit_edge:                    ; preds = %free_urbs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end77

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %free_urbs.for.body72_crit_edge
  %i.3141 = phi i32 [ %inc76, %for.body72.for.body72_crit_edge ], [ 0, %free_urbs.for.body72_crit_edge ]
  %89 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %urbs, align 4
  %arrayidx74 = getelementptr ptr, ptr %90, i32 %i.3141
  %91 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx74, align 4
  call void @usb_free_urb(ptr noundef %92) #10
  %inc76 = add nuw i32 %i.3141, 1
  %exitcond145.not = icmp eq i32 %inc76, %num
  br i1 %exitcond145.not, label %for.body72.for.end77_crit_edge, label %for.body72.for.body72_crit_edge

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body72

for.body72.for.end77_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end77

for.end77:                                        ; preds = %for.body72.for.end77_crit_edge, %free_urbs.for.end77_crit_edge
  %93 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %urbs, align 4
  call void @kfree(ptr noundef %94) #10
  br label %free_buf

free_buf:                                         ; preds = %for.end77, %if.end7.i.i.free_buf_crit_edge, %kcalloc.exit.thread
  %retval1.1 = phi i32 [ %retval1.0, %for.end77 ], [ -12, %if.end7.i.i.free_buf_crit_edge ], [ -12, %kcalloc.exit.thread ]
  %95 = ptrtoint ptr %buf_dma to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %buf_dma, align 4
  call void @usb_free_coherent(ptr noundef %add.ptr.i.i, i32 noundef %size, ptr noundef nonnull %call3, i32 noundef %96) #10
  br label %cleanup

cleanup:                                          ; preds = %free_buf, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %free_buf ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_dma) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %ctx) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @usbtest_alloc_urb(ptr noundef %udev, i32 noundef %pipe, i32 noundef %bytes, i32 noundef %transfer_flags, i32 noundef %offset, i8 noundef zeroext %bInterval, ptr noundef %complete_fn) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bInterval)
  %tobool1.not = icmp eq i8 %bInterval, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %bInterval to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %udev, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %pipe, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %3 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bytes, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %4 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %complete_fn, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %5 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 4
  %6 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i84 = icmp eq i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp6.i = icmp ugt i32 %7, 4
  %or.cond.i = or i1 %cmp.i84, %cmp6.i
  %8 = tail call i32 @llvm.umin.i32(i32 %conv, i32 16) #10
  %sub.i = add nsw i32 %8, -1
  %shl.i = shl nuw nsw i32 1, %sub.i
  %interval.sink.i = select i1 %or.cond.i, i32 %shl.i, i32 %conv
  %9 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 25
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %interval.sink.i, ptr %9, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 23
  %11 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %start_frame.i, align 4
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev1.i87 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %12 = ptrtoint ptr %dev1.i87 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %udev, ptr %dev1.i87, align 4
  %pipe2.i88 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %13 = ptrtoint ptr %pipe2.i88 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %pipe, ptr %pipe2.i88, align 4
  %transfer_buffer3.i89 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer3.i89 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %transfer_buffer3.i89, align 4
  %transfer_buffer_length.i90 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i90 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %bytes, ptr %transfer_buffer_length.i90, align 4
  %complete.i91 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %16 = ptrtoint ptr %complete.i91 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %complete_fn, ptr %complete.i91, align 4
  %context4.i92 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %17 = ptrtoint ptr %context4.i92 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %context4.i92, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %speed = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 4
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp = icmp eq i32 %19, 3
  %cond = select i1 %cmp, i32 8, i32 1
  %interval = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 25
  %20 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %interval, align 4
  %transfer_flags5 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 13
  %and = lshr i32 %pipe, 7
  %21 = and i32 %and, 1
  %22 = or i32 %21, %transfer_flags
  %23 = ptrtoint ptr %transfer_flags5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %transfer_flags5, align 4
  %add = add i32 %offset, %bytes
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp10 = icmp eq i32 %add, 0
  br i1 %cmp10, label %if.end3.cleanup_crit_edge, label %if.end13

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  %and15 = and i32 %transfer_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end8.i, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 15
  %call19 = tail call ptr @usb_alloc_coherent(ptr noundef %udev, i32 noundef %add, i32 noundef 3264, ptr noundef %transfer_dma) #10
  br label %if.end24

if.end8.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  br label %if.end24

if.end24:                                         ; preds = %if.end8.i, %if.then17
  %retval.1.i.sink = phi ptr [ %call19, %if.then17 ], [ %call9.i, %if.end8.i ]
  %transfer_buffer23 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %24 = ptrtoint ptr %transfer_buffer23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.1.i.sink, ptr %transfer_buffer23, align 4
  %transfer_buffer25 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %tobool26.not = icmp eq ptr %retval.1.i.sink, null
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_free_urb(ptr noundef nonnull %call) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool29.not = icmp eq i32 %offset, 0
  br i1 %tobool29.not, label %if.end28.if.end40_crit_edge, label %if.then30

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then30:                                        ; preds = %if.end28
  %25 = ptrtoint ptr %retval.1.i.sink to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -91, ptr %retval.1.i.sink, align 1
  %26 = ptrtoint ptr %transfer_buffer25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %transfer_buffer25, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 1
  store ptr %add.ptr, ptr %transfer_buffer25, align 4
  %28 = ptrtoint ptr %transfer_flags5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %transfer_flags5, align 4
  %and34 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.then30.if.end40_crit_edge, label %if.then36

if.then30.if.end40_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then36:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_dma37 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 15
  %30 = ptrtoint ptr %transfer_dma37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %transfer_dma37, align 4
  %add38 = add i32 %31, 1
  store i32 %add38, ptr %transfer_dma37, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.then30.if.end40_crit_edge, %if.end28.if.end40_crit_edge
  %32 = ptrtoint ptr %transfer_buffer25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %transfer_buffer25, align 4
  %pipe42 = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %34 = ptrtoint ptr %pipe42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pipe42, align 4
  %and43 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %36 = select i1 %tobool44.not, i8 0, i8 -91
  %37 = zext i8 %36 to i32
  %38 = call ptr @memset(ptr %33, i32 %37, i32 %bytes)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then27, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end40 ], [ null, %if.then27 ], [ null, %entry.cleanup_crit_edge ], [ %call, %if.end3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simple_callback(ptr nocapture noundef readonly %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void @complete(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @simple_check_buf(ptr nocapture noundef readonly %tdev, ptr nocapture noundef readonly %urb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %0 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %2 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actual_length, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %6 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe, align 4
  %and.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %ep_in.i.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 21
  %ep_out.i.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 22
  %cond.i.i = select i1 %tobool.not.i.i, ptr %ep_out.i.i, ptr %ep_in.i.i
  %shr.i.i = lshr i32 %7, 15
  %and2.i.i = and i32 %shr.i.i, 15
  %arrayidx.i.i = getelementptr ptr, ptr %cond.i.i, i32 %and2.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wMaxPacketSize.i, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  %conv.i = zext i16 %12 to i32
  %13 = ptrtoint ptr %1 to i32
  %and.i.i33 = and i32 %13, 127
  %idx.neg.i = sub nsw i32 0, %and.i.i33
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  %cmp13.i = icmp ult ptr %add.ptr.i, %1
  br i1 %cmp13.i, label %entry.for.body.i_crit_edge, label %entry.check_guard_bytes.exit_crit_edge

entry.check_guard_bytes.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_guard_bytes.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %guard.014.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %entry.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %guard.014.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %guard.014.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %15)
  %cmp1.not.i = icmp eq i8 %15, -91
  br i1 %cmp1.not.i, label %for.inc.i, label %check_guard_bytes.exit.thread

check_guard_bytes.exit.thread:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i34 = zext i8 %15 to i32
  %16 = ptrtoint ptr %tdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tdev, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.157, i32 noundef %i.015.i, i32 noundef %conv.i34, i32 noundef 165) #13
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.015.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %guard.014.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and.i.i33
  br i1 %exitcond.not.i, label %for.inc.i.check_guard_bytes.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.check_guard_bytes.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_guard_bytes.exit

check_guard_bytes.exit:                           ; preds = %for.inc.i.check_guard_bytes.exit_crit_edge, %entry.check_guard_bytes.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp41.not = icmp eq i32 %3, 0
  br i1 %cmp41.not, label %check_guard_bytes.exit.cleanup_crit_edge, label %for.body.lr.ph

check_guard_bytes.exit.cleanup_crit_edge:         ; preds = %check_guard_bytes.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %check_guard_bytes.exit
  %18 = load i32, ptr @pattern, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %buf.043 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.337)
  switch i32 %18, label %sw.default [
    i32 0, label %for.body.sw.epilog_crit_edge
    i32 1, label %sw.bb2
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %rem = urem i32 %i.042, %conv.i
  %rem3 = urem i32 %rem, 63
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %buf.043 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf.043, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool4.not = icmp eq i8 %21, 0
  %lnot.ext = zext i1 %tobool4.not to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %for.body.sw.epilog_crit_edge
  %expected.0 = phi i32 [ %lnot.ext, %sw.default ], [ %rem3, %sw.bb2 ], [ %18, %for.body.sw.epilog_crit_edge ]
  %22 = ptrtoint ptr %buf.043 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf.043, align 1
  %conv6 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %expected.0, i32 %conv6)
  %cmp8 = icmp eq i32 %expected.0, %conv6
  br i1 %cmp8, label %for.inc, label %do.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %conv6.le = zext i8 %23 to i32
  %24 = ptrtoint ptr %tdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tdev, align 4
  %dev12 = getelementptr inbounds %struct.usb_interface, ptr %25, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.155, i32 noundef %i.042, i32 noundef %conv6.le, i32 noundef %expected.0) #13
  br label %cleanup

for.inc:                                          ; preds = %sw.epilog
  %inc = add nuw i32 %i.042, 1
  %incdec.ptr = getelementptr i8, ptr %buf.043, i32 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %check_guard_bytes.exit.cleanup_crit_edge, %check_guard_bytes.exit.thread
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %check_guard_bytes.exit.thread ], [ 0, %check_guard_bytes.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_on_stack_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sg_timeout(ptr nocapture noundef readonly %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.sg_timeout, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  tail call void @usb_sg_cancel(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_sg_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_sg_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_timer_on_stack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_sg_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_descriptor(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_status(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ctrl_complete(ptr noundef %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %4 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setup_packet, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %count = getelementptr inbounds %struct.ctrl_ctx, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %count, align 4
  %pending = getelementptr inbounds %struct.ctrl_ctx, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pending, align 4
  %dec7 = add i32 %9, -1
  store i32 %dec7, ptr %pending, align 4
  %number = getelementptr inbounds %struct.subcase, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8 = icmp sgt i32 %11, 0
  br i1 %cmp8, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then:                                          ; preds = %entry
  %last = getelementptr inbounds %struct.ctrl_ctx, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last, align 4
  %sub = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp11.not = icmp eq i32 %sub, 1
  br i1 %cmp11.not, label %if.then.if.end22_crit_edge, label %do.end16

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ctrl_ctx, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev17 = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.246, i32 noundef %11, i32 noundef %13) #13
  %18 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %number, align 4
  %20 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %last, align 4
  br label %error

if.end22:                                         ; preds = %if.then.if.end22_crit_edge, %entry.if.end22_crit_edge
  %last24 = getelementptr inbounds %struct.ctrl_ctx, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %last24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %11, ptr %last24, align 4
  %expected = getelementptr inbounds %struct.subcase, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %expected, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %23)
  %cmp25 = icmp eq i32 %3, %23
  br i1 %cmp25, label %if.end22.land.lhs.true104_crit_edge, label %if.else

if.end22.land.lhs.true104_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true104

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -104, i32 %3)
  %cmp28.not = icmp eq i32 %3, -104
  br i1 %cmp28.not, label %if.else.error_crit_edge, label %if.then30

if.else.error_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp32 = icmp sgt i32 %23, 0
  br i1 %cmp32, label %land.lhs.true, label %if.then30.if.else41_crit_edge

if.then30.if.else41_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else41

land.lhs.true:                                    ; preds = %if.then30
  %sub35 = sub nsw i32 0, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub35)
  %cmp36 = icmp eq i32 %3, %sub35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp38 = icmp eq i32 %3, 0
  %or.cond = or i1 %cmp38, %cmp36
  br i1 %or.cond, label %land.lhs.true.land.lhs.true104_crit_edge, label %land.lhs.true.if.else41_crit_edge

land.lhs.true.if.else41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else41

land.lhs.true.land.lhs.true104_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true104

if.else41:                                        ; preds = %land.lhs.true.if.else41_crit_edge, %if.then30.if.else41_crit_edge
  %24 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %25)
  %cmp43 = icmp eq i32 %25, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %3)
  %cmp46 = icmp eq i32 %3, -32
  %or.cond208 = select i1 %cmp43, i1 %cmp46, i1 false
  br i1 %or.cond208, label %if.else41.land.lhs.true104_crit_edge, label %if.end60

if.else41.land.lhs.true104_crit_edge:             ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true104

if.end60:                                         ; preds = %if.else41
  %dev53 = getelementptr inbounds %struct.ctrl_ctx, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev53, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dev55 = getelementptr inbounds %struct.usb_interface, ptr %29, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.249, i32 noundef %25, i32 noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end60.land.lhs.true104_crit_edge, label %if.end60.error_crit_edge

if.end60.error_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end60.land.lhs.true104_crit_edge:              ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true104

error:                                            ; preds = %if.end60.error_crit_edge, %if.else.error_crit_edge, %do.end16
  %status.1 = phi i32 [ -33, %do.end16 ], [ %3, %if.end60.error_crit_edge ], [ -104, %if.else.error_crit_edge ]
  %status62 = getelementptr inbounds %struct.ctrl_ctx, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %status62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp63 = icmp eq i32 %31, 0
  br i1 %cmp63, label %if.then65, label %error.if.end101_crit_edge

error.if.end101_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then65:                                        ; preds = %error
  %32 = ptrtoint ptr %status62 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %status.1, ptr %status62, align 4
  %dev70 = getelementptr inbounds %struct.ctrl_ctx, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev70, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %dev72 = getelementptr inbounds %struct.usb_interface, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %5, align 1
  %conv73 = zext i8 %38 to i32
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %5, i32 0, i32 1
  %39 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bRequest, align 1
  %conv74 = zext i8 %40 to i32
  %41 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count, align 4
  %43 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %number, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %45 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %47 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %transfer_buffer_length, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.252, i32 noundef %conv73, i32 noundef %conv74, i32 noundef %status.1, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48) #13
  %param = getelementptr inbounds %struct.ctrl_ctx, ptr %1, i32 0, i32 7
  %49 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %param, align 4
  %sglen216 = getelementptr inbounds %struct.usbtest_param_32, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %sglen216 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sglen216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp77217 = icmp ugt i32 %52, 1
  br i1 %cmp77217, label %for.body.lr.ph, label %if.then65.for.end_crit_edge

if.then65.for.end_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then65
  %urb79 = getelementptr inbounds %struct.ctrl_ctx, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %53 = phi i32 [ %52, %for.body.lr.ph ], [ %70, %cleanup.for.body_crit_edge ]
  %i.0218 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %54 = ptrtoint ptr %urb79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %urb79, align 4
  %56 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %number, align 4
  %add = add i32 %57, %i.0218
  %rem = urem i32 %add, %53
  %arrayidx = getelementptr ptr, ptr %55, i32 %rem
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx, align 4
  %cmp83 = icmp eq ptr %59, %urb
  br i1 %cmp83, label %for.body.cleanup_crit_edge, label %lor.lhs.false85

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false85:                                  ; preds = %for.body
  %dev86 = getelementptr inbounds %struct.urb, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev86, align 4
  %tobool87.not = icmp eq ptr %61, null
  br i1 %tobool87.not, label %lor.lhs.false85.cleanup_crit_edge, label %if.end89

lor.lhs.false85.cleanup_crit_edge:                ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end89:                                         ; preds = %lor.lhs.false85
  tail call void @_raw_spin_unlock(ptr noundef %1) #10
  %call91 = tail call i32 @usb_unlink_urb(ptr noundef %59) #10
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  %62 = zext i32 %call91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.338)
  switch i32 %call91, label %do.end95 [
    i32 -115, label %if.end89.cleanup_crit_edge
    i32 -16, label %if.end89.cleanup_crit_edge219
    i32 -43, label %if.end89.cleanup_crit_edge220
  ]

if.end89.cleanup_crit_edge220:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end89.cleanup_crit_edge219:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end95:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev70, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %dev98 = getelementptr inbounds %struct.usb_interface, ptr %66, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev98, ptr noundef nonnull @.str.255, i32 noundef %call91) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %if.end89.cleanup_crit_edge, %if.end89.cleanup_crit_edge219, %if.end89.cleanup_crit_edge220, %lor.lhs.false85.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.0218, 1
  %67 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %param, align 4
  %sglen = getelementptr inbounds %struct.usbtest_param_32, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sglen, align 4
  %cmp77 = icmp ult i32 %inc, %70
  br i1 %cmp77, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then65.for.end_crit_edge
  %71 = ptrtoint ptr %status62 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %status62, align 4
  br label %if.end101

if.end101:                                        ; preds = %for.end, %error.if.end101_crit_edge
  %status.2 = phi i32 [ %72, %for.end ], [ %status.1, %error.if.end101_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2)
  %cmp102 = icmp eq i32 %status.2, 0
  br i1 %cmp102, label %if.end101.land.lhs.true104_crit_edge, label %if.end101.if.end131thread-pre-split_crit_edge

if.end101.if.end131thread-pre-split_crit_edge:    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131thread-pre-split

if.end101.land.lhs.true104_crit_edge:             ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true104

land.lhs.true104:                                 ; preds = %if.end101.land.lhs.true104_crit_edge, %if.end60.land.lhs.true104_crit_edge, %if.else41.land.lhs.true104_crit_edge, %land.lhs.true.land.lhs.true104_crit_edge, %if.end22.land.lhs.true104_crit_edge
  %73 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pending, align 4
  %75 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp107 = icmp ult i32 %74, %76
  br i1 %cmp107, label %if.then109, label %land.lhs.true104.if.end131thread-pre-split_crit_edge

land.lhs.true104.if.end131thread-pre-split_crit_edge: ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131thread-pre-split

if.then109:                                       ; preds = %land.lhs.true104
  %call110 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111.not = icmp eq i32 %call110, 0
  br i1 %cmp111.not, label %if.else125, label %do.end116

do.end116:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  %dev117 = getelementptr inbounds %struct.ctrl_ctx, ptr %1, i32 0, i32 1
  %77 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev117, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %dev119 = getelementptr inbounds %struct.usb_interface, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %5, align 1
  %conv121 = zext i8 %82 to i32
  %bRequest122 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %5, i32 0, i32 1
  %83 = ptrtoint ptr %bRequest122 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bRequest122, align 1
  %conv123 = zext i8 %84 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev119, ptr noundef nonnull @.str.258, i32 noundef %conv121, i32 noundef %conv123, i32 noundef %call110) #13
  br label %if.end131thread-pre-split

if.else125:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pending, align 4
  %inc127 = add i32 %86, 1
  store i32 %inc127, ptr %pending, align 4
  br label %if.end131

if.end131thread-pre-split:                        ; preds = %do.end116, %land.lhs.true104.if.end131thread-pre-split_crit_edge, %if.end101.if.end131thread-pre-split_crit_edge
  %dev130 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %87 = ptrtoint ptr %dev130 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %dev130, align 4
  %88 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr = load i32, ptr %pending, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.end131thread-pre-split, %if.else125
  %89 = phi i32 [ %.pr, %if.end131thread-pre-split ], [ %inc127, %if.else125 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp133 = icmp eq i32 %89, 0
  br i1 %cmp133, label %if.then135, label %if.end131.if.end136_crit_edge

if.end131.if.end136_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

if.then135:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  %complete = getelementptr inbounds %struct.ctrl_ctx, ptr %1, i32 0, i32 2
  tail call void @complete(ptr noundef %complete) #10
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end131.if.end136_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unlink1(ptr nocapture noundef readonly %dev, i32 noundef %pipe, i32 noundef %size, i32 noundef %async) unnamed_addr #3 align 64 {
entry:
  %completion = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #10
  %0 = getelementptr inbounds i8, ptr %completion, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.154, ptr noundef nonnull @init_completion.__key) #10
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -128
  %call.i79 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %tobool.not.i80 = icmp eq ptr %call.i79, null
  br i1 %tobool.not.i80, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dev1.i87.i = getelementptr inbounds %struct.urb, ptr %call.i79, i32 0, i32 8
  %7 = ptrtoint ptr %dev1.i87.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i.i, ptr %dev1.i87.i, align 4
  %pipe2.i88.i = getelementptr inbounds %struct.urb, ptr %call.i79, i32 0, i32 10
  %8 = ptrtoint ptr %pipe2.i88.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %pipe, ptr %pipe2.i88.i, align 4
  %transfer_buffer3.i89.i = getelementptr inbounds %struct.urb, ptr %call.i79, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer3.i89.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %transfer_buffer3.i89.i, align 4
  %transfer_buffer_length.i90.i = getelementptr inbounds %struct.urb, ptr %call.i79, i32 0, i32 19
  %10 = ptrtoint ptr %transfer_buffer_length.i90.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %size, ptr %transfer_buffer_length.i90.i, align 4
  %complete.i91.i = getelementptr inbounds %struct.urb, ptr %call.i79, i32 0, i32 28
  %11 = ptrtoint ptr %complete.i91.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @simple_callback, ptr %complete.i91.i, align 4
  %context4.i92.i = getelementptr inbounds %struct.urb, ptr %call.i79, i32 0, i32 27
  %12 = ptrtoint ptr %context4.i92.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %context4.i92.i, align 4
  %speed.i = getelementptr i8, ptr %6, i32 -100
  %13 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i = icmp eq i32 %14, 3
  %cond.i82 = select i1 %cmp.i, i32 8, i32 1
  %interval.i = getelementptr inbounds %struct.urb, ptr %call.i79, i32 0, i32 25
  %15 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond.i82, ptr %interval.i, align 4
  %transfer_flags5.i = getelementptr inbounds %struct.urb, ptr %call.i79, i32 0, i32 13
  %and.i83 = lshr i32 %pipe, 7
  %16 = and i32 %and.i83, 1
  %17 = or i32 %16, 4
  %18 = ptrtoint ptr %transfer_flags5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %transfer_flags5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp10.i = icmp eq i32 %size, 0
  br i1 %cmp10.i, label %if.end.i.if.end_crit_edge, label %if.end13.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end13.i:                                       ; preds = %if.end.i
  %transfer_dma.i84 = getelementptr inbounds %struct.urb, ptr %call.i79, i32 0, i32 15
  %call19.i = call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i, i32 noundef %size, i32 noundef 3264, ptr noundef %transfer_dma.i84) #10
  %19 = ptrtoint ptr %transfer_buffer3.i89.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call19.i, ptr %transfer_buffer3.i89.i, align 4
  %tobool26.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @usb_free_urb(ptr noundef nonnull %call.i79) #10
  br label %cleanup

if.end28.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %pipe2.i88.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pipe2.i88.i, align 4
  %and43.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %22 = select i1 %tobool44.not.i, i8 0, i8 -91
  %23 = zext i8 %22 to i32
  %24 = call ptr @memset(ptr %call19.i, i32 %23, i32 %size)
  br label %if.end

if.end:                                           ; preds = %if.end28.i, %if.end.i.if.end_crit_edge
  %25 = ptrtoint ptr %context4.i92.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %completion, ptr %context4.i92.i, align 4
  %26 = ptrtoint ptr %complete.i91.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @unlink1_callback, ptr %complete.i91.i, align 4
  %27 = ptrtoint ptr %pipe2.i88.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pipe2.i88.i, align 4
  %and = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.end
  %29 = ptrtoint ptr %transfer_buffer3.i89.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %transfer_buffer3.i89.i, align 4
  %31 = ptrtoint ptr %transfer_buffer_length.i90.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %transfer_buffer_length.i90.i, align 4
  %33 = load i32, ptr @pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cond.i = icmp eq i32 %33, 1
  br i1 %cond.i, label %sw.bb1.i, label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %34 = call ptr @memset(ptr %30, i32 0, i32 %32)
  br label %simple_fill_buf.exit

sw.bb1.i:                                         ; preds = %if.then5
  %35 = ptrtoint ptr %dev1.i87.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1.i87.i, align 4
  %ep_out.i.i.i = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 22
  %shr.i.i.i = lshr i32 %28, 15
  %and2.i.i.i = and i32 %shr.i.i.i, 15
  %arrayidx.i.i.i = getelementptr ptr, ptr %ep_out.i.i.i, i32 %and2.i.i.i
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i.i, align 4
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %wMaxPacketSize.i.i, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40) #10
  %conv.i.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp10.not.i = icmp eq i32 %32, 0
  br i1 %cmp10.not.i, label %sw.bb1.i.simple_fill_buf.exit_crit_edge, label %sw.bb1.i.for.body.i_crit_edge

sw.bb1.i.for.body.i_crit_edge:                    ; preds = %sw.bb1.i
  br label %for.body.i

sw.bb1.i.simple_fill_buf.exit_crit_edge:          ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %simple_fill_buf.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb1.i.for.body.i_crit_edge
  %buf.012.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %30, %sw.bb1.i.for.body.i_crit_edge ]
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb1.i.for.body.i_crit_edge ]
  %rem.i = urem i32 %i.011.i, %conv.i.i
  %rem2.i = urem i32 %rem.i, 63
  %conv.i = trunc i32 %rem2.i to i8
  %incdec.ptr.i = getelementptr i8, ptr %buf.012.i, i32 1
  %42 = ptrtoint ptr %buf.012.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i, ptr %buf.012.i, align 1
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %32
  br i1 %exitcond.not.i, label %for.body.i.simple_fill_buf.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.simple_fill_buf.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %simple_fill_buf.exit

simple_fill_buf.exit:                             ; preds = %for.body.i.simple_fill_buf.exit_crit_edge, %sw.bb1.i.simple_fill_buf.exit_crit_edge, %sw.bb.i
  %43 = ptrtoint ptr %transfer_flags5.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %transfer_flags5.i, align 4
  %or = or i32 %44, 64
  store i32 %or, ptr %transfer_flags5.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %simple_fill_buf.exit, %if.end.if.end6_crit_edge
  %call7 = call i32 @usb_submit_urb(ptr noundef nonnull %call.i79, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %dev9 = getelementptr inbounds %struct.usb_interface, ptr %46, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.260, i32 noundef %call7) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %rem = and i32 %47, 1
  call void @msleep(i32 noundef %rem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %async)
  %tobool11.not = icmp eq i32 %async, 0
  br i1 %tobool11.not, label %if.else, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end10
  %call1388 = call zeroext i1 @completion_done(ptr noundef nonnull %completion) #10
  br i1 %call1388, label %while.cond.preheader.if.end33_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end33_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

while.body:                                       ; preds = %do.end24.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call14 = call i32 @usb_unlink_urb(ptr noundef nonnull %call.i79) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %land.lhs.true, label %while.body.if.end21_crit_edge

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true:                                    ; preds = %while.body
  %48 = ptrtoint ptr %pipe2.i88.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pipe2.i88.i, align 4
  %and17 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end33_crit_edge, label %if.then19

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = call fastcc i32 @simple_check_buf(ptr noundef %dev, ptr noundef nonnull %call.i79)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %while.body.if.end21_crit_edge
  %retval1.0 = phi i32 [ %call20, %if.then19 ], [ %call14, %while.body.if.end21_crit_edge ]
  %50 = zext i32 %retval1.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.339)
  switch i32 %retval1.0, label %do.end30 [
    i32 -16, label %if.end21.do.end24_crit_edge
    i32 -43, label %if.end21.do.end24_crit_edge90
    i32 0, label %if.end21.if.end33_crit_edge
    i32 -115, label %if.end21.if.end33_crit_edge91
  ]

if.end21.if.end33_crit_edge91:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end21.do.end24_crit_edge90:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

if.end21.do.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.end24:                                         ; preds = %if.end21.do.end24_crit_edge, %if.end21.do.end24_crit_edge90
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %dev26 = getelementptr inbounds %struct.usb_interface, ptr %52, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.263) #13
  %call13 = call zeroext i1 @completion_done(ptr noundef nonnull %completion) #10
  br i1 %call13, label %do.end24.if.end33_crit_edge, label %do.end24.while.body_crit_edge

do.end24.while.body_crit_edge:                    ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.end24.if.end33_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  %dev32 = getelementptr inbounds %struct.usb_interface, ptr %54, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.266, i32 noundef %retval1.0) #13
  br label %cleanup

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void @usb_kill_urb(ptr noundef nonnull %call.i79) #10
  br label %if.end33

if.end33:                                         ; preds = %if.else, %do.end24.if.end33_crit_edge, %if.end21.if.end33_crit_edge, %if.end21.if.end33_crit_edge91, %land.lhs.true.if.end33_crit_edge, %while.cond.preheader.if.end33_crit_edge
  call void @wait_for_completion(ptr noundef nonnull %completion) #10
  %status = getelementptr inbounds %struct.urb, ptr %call.i79, i32 0, i32 12
  %55 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %status, align 4
  %57 = ptrtoint ptr %transfer_buffer3.i89.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %transfer_buffer3.i89.i, align 4
  %59 = ptrtoint ptr %58 to i32
  %and.i.i = and i32 %59, 127
  %60 = ptrtoint ptr %transfer_flags5.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %transfer_flags5.i, align 4
  %and.i = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %dev1.i87.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev1.i87.i, align 4
  %64 = ptrtoint ptr %transfer_buffer_length.i90.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %transfer_buffer_length.i90.i, align 4
  %add.i = add i32 %65, %and.i.i
  %idx.neg.i = sub nsw i32 0, %and.i.i
  %add.ptr.i = getelementptr i8, ptr %58, i32 %idx.neg.i
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call.i79, i32 0, i32 15
  %66 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %transfer_dma.i, align 4
  %sub.i = sub i32 %67, %and.i.i
  call void @usb_free_coherent(ptr noundef %63, i32 noundef %add.i, ptr noundef %add.ptr.i, i32 noundef %sub.i) #10
  br label %simple_free_urb.exit

if.else.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %idx.neg3.i = sub nsw i32 0, %and.i.i
  %add.ptr4.i = getelementptr i8, ptr %58, i32 %idx.neg3.i
  call void @kfree(ptr noundef %add.ptr4.i) #10
  br label %simple_free_urb.exit

simple_free_urb.exit:                             ; preds = %if.else.i, %if.then.i
  call void @usb_free_urb(ptr noundef nonnull %call.i79) #10
  br i1 %tobool11.not, label %if.else37, label %if.then35

if.then35:                                        ; preds = %simple_free_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -104, i32 %56)
  %cmp36 = icmp eq i32 %56, -104
  %sub = add i32 %56, -1000
  %spec.select = select i1 %cmp36, i32 0, i32 %sub
  br label %cleanup

if.else37:                                        ; preds = %simple_free_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %56)
  %switch = icmp ugt i32 %56, -3
  %sub42 = add i32 %56, -2000
  %spec.select75 = select i1 %switch, i32 0, i32 %sub42
  br label %cleanup

cleanup:                                          ; preds = %if.else37, %if.then35, %do.end30, %do.end, %if.then27.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %retval1.0, %do.end30 ], [ %spec.select, %if.then35 ], [ %spec.select75, %if.else37 ], [ -12, %if.then27.i ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unlink1_callback(ptr noundef %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then3_crit_edge

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end:                                           ; preds = %entry
  %call = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %entry.if.then3_crit_edge
  %status.013 = phi i32 [ %call, %if.end.if.then3_crit_edge ], [ %1, %entry.if.then3_crit_edge ]
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %status.013, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  tail call void @complete(ptr noundef %4) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_halt(ptr nocapture noundef readonly %tdev, i32 noundef %ep, ptr noundef %urb) unnamed_addr #3 align 64 {
entry:
  %status.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @verify_not_halted(ptr noundef %tdev, i32 noundef %ep, ptr noundef %urb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or = or i32 %shl.i, -2147483648
  %conv = trunc i32 %ep to i16
  %call4 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 3, i8 noundef zeroext 2, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %tdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tdev, align 4
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.268, i32 noundef %ep, i32 noundef %call4) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i) #10
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %status.i, align 2, !annotation !614
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.i.i = call i32 @usb_get_status(ptr noundef %8, i32 noundef 2, i32 noundef 0, i32 noundef %ep, ptr noundef nonnull %status.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %tdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tdev, align 4
  %dev2.i = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.280, i32 noundef %ep, i32 noundef %call.i.i) #13
  br label %if.then13

if.end.i:                                         ; preds = %if.end9
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp3.not.i = icmp eq i16 %12, 1
  br i1 %cmp3.not.i, label %if.end12.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %12 to i32
  %13 = ptrtoint ptr %tdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tdev, align 4
  %dev10.i = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.283, i32 noundef %ep, i32 noundef %conv.i) #13
  br label %if.then13

if.end12.i:                                       ; preds = %if.end.i
  %call13.i = call fastcc i32 @simple_io(ptr noundef %tdev, ptr noundef %urb, i32 noundef 1, i32 noundef 0, i32 noundef -32, ptr noundef nonnull @.str.281) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call13.i)
  %cmp14.not.i = icmp eq i32 %call13.i, -32
  br i1 %cmp14.not.i, label %if.end17.i, label %if.end12.i.if.then13_crit_edge

if.end12.i.if.then13_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.end17.i:                                       ; preds = %if.end12.i
  %call18.i = call fastcc i32 @simple_io(ptr noundef %tdev, ptr noundef %urb, i32 noundef 1, i32 noundef 0, i32 noundef -32, ptr noundef nonnull @.str.285) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call18.i)
  %cmp19.not.i = icmp eq i32 %call18.i, -32
  br i1 %cmp19.not.i, label %if.end23, label %if.end17.i.if.then13_crit_edge

if.end17.i.if.then13_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %if.end17.i.if.then13_crit_edge, %if.end12.i.if.then13_crit_edge, %do.end8.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %if.end17.i.if.then13_crit_edge ], [ -22, %if.end12.i.if.then13_crit_edge ], [ -22, %do.end8.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #10
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %17 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pipe, align 4
  %call15 = call i32 @usb_clear_halt(ptr noundef %16, i32 noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.then13.cleanup_crit_edge, label %do.end19

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %tdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tdev, align 4
  %dev21 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.271, i32 noundef %ep, i32 noundef %call15) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end17.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #10
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %pipe25 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %23 = ptrtoint ptr %pipe25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pipe25, align 4
  %call26 = call i32 @usb_clear_halt(ptr noundef %22, i32 noundef %24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %tdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tdev, align 4
  %dev34 = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.271, i32 noundef %ep, i32 noundef %call26) #13
  br label %cleanup

if.end35:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = call fastcc i32 @verify_not_halted(ptr noundef %tdev, i32 noundef %ep, ptr noundef %urb)
  %27 = call i32 @llvm.smin.i32(i32 %call36, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end32, %do.end19, %if.then13.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call26, %do.end32 ], [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %do.end19 ], [ %retval.0.i.ph, %if.then13.cleanup_crit_edge ], [ %27, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @verify_not_halted(ptr nocapture noundef readonly %tdev, i32 noundef %ep, ptr noundef %urb) unnamed_addr #3 align 64 {
entry:
  %status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %status, align 2, !annotation !614
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call.i = call i32 @usb_get_status(ptr noundef %2, i32 noundef 2, i32 noundef 0, i32 noundef %ep, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %tdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tdev, align 4
  %dev2 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.275, i32 noundef %ep, i32 noundef %call.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp3.not = icmp eq i16 %6, 0
  br i1 %cmp3.not, label %if.end12, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %tdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tdev, align 4
  %dev10 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.278, i32 noundef %ep, i32 noundef %conv) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = call fastcc i32 @simple_io(ptr noundef %tdev, ptr noundef %urb, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.276)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  %. = select i1 %cmp14.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end8, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end8 ], [ %., %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @complicated_callback(ptr noundef %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %lock = getelementptr inbounds %struct.transfer_context, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %1, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %4 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number_of_packets, align 4
  %packet_count = getelementptr inbounds %struct.transfer_context, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %packet_count, align 4
  %add = add i32 %7, %5
  store i32 %add, ptr %packet_count, align 4
  %error_count = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 26
  %8 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5 = icmp sgt i32 %9, 0
  br i1 %cmp5, label %entry.if.end30.sink.split_crit_edge, label %if.else

entry.if.end30.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.sink.split

if.else:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9.not = icmp eq i32 %11, 0
  br i1 %cmp9.not, label %if.else16, label %if.then11

if.then11:                                        ; preds = %if.else
  %is_iso = getelementptr inbounds %struct.transfer_context, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %is_iso to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_iso, align 4, !range !613
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.then11.if.end30.sink.split_crit_edge, label %cond.true

if.then11.if.end30.sink.split_crit_edge:          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.sink.split

cond.true:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number_of_packets, align 4
  br label %if.end30.sink.split

if.else16:                                        ; preds = %if.else
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %16 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %18 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp17.not = icmp eq i32 %17, %19
  br i1 %cmp17.not, label %if.else21, label %if.else16.if.end30.sink.split_crit_edge

if.else16.if.end30.sink.split_crit_edge:          ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.sink.split

if.else21:                                        ; preds = %if.else16
  %dev = getelementptr inbounds %struct.transfer_context, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %22 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transfer_buffer.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %and.i.i = and i32 %24, 127
  %idx.neg.i = sub nsw i32 0, %and.i.i
  %add.ptr.i = getelementptr i8, ptr %23, i32 %idx.neg.i
  %cmp13.i = icmp ult ptr %add.ptr.i, %23
  br i1 %cmp13.i, label %if.else21.for.body.i_crit_edge, label %if.else21.if.end30_crit_edge

if.else21.if.end30_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.else21.for.body.i_crit_edge:                   ; preds = %if.else21
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else21.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else21.for.body.i_crit_edge ]
  %guard.014.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.else21.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %guard.014.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %guard.014.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -91, i8 %26)
  %cmp1.not.i = icmp eq i8 %26, -91
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then25

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.015.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %guard.014.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and.i.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end30_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end30_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then25:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %21, align 4
  %dev.i = getelementptr inbounds %struct.usb_interface, ptr %28, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.157, i32 noundef %i.015.i, i32 noundef %conv.i, i32 noundef 165) #13
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.then25, %if.else16.if.end30.sink.split_crit_edge, %cond.true, %if.then11.if.end30.sink.split_crit_edge, %entry.if.end30.sink.split_crit_edge
  %cond.sink = phi i32 [ 1, %if.then25 ], [ %9, %entry.if.end30.sink.split_crit_edge ], [ %15, %cond.true ], [ 1, %if.then11.if.end30.sink.split_crit_edge ], [ 1, %if.else16.if.end30.sink.split_crit_edge ]
  %errors = getelementptr inbounds %struct.transfer_context, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %errors, align 4
  %add15 = add i32 %30, %cond.sink
  store i32 %add15, ptr %errors, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %for.inc.i.if.end30_crit_edge, %if.else21.if.end30_crit_edge
  %status31 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %31 = ptrtoint ptr %status31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp32 = icmp eq i32 %32, 0
  br i1 %cmp32, label %land.lhs.true, label %if.end30.if.end49_crit_edge

if.end30.if.end49_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end30
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  %pending = getelementptr inbounds %struct.transfer_context, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pending, align 4
  %sub = add i32 %36, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %sub)
  %cmp35 = icmp ugt i32 %34, %sub
  br i1 %cmp35, label %land.lhs.true37, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

land.lhs.true37:                                  ; preds = %land.lhs.true
  %submit_error = getelementptr inbounds %struct.transfer_context, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %submit_error to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %submit_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool38.not = icmp eq i32 %38, 0
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true37.if.end49_crit_edge

land.lhs.true37.if.end49_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then39:                                        ; preds = %land.lhs.true37
  %call41 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #10
  %39 = zext i32 %call41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.340)
  switch i32 %call41, label %do.end44 [
    i32 0, label %if.then39.done69_crit_edge
    i32 -19, label %if.then39.cleanup.thread_crit_edge
    i32 -108, label %if.then39.cleanup.thread_crit_edge121
  ]

if.then39.cleanup.thread_crit_edge121:            ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then39.cleanup.thread_crit_edge:               ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then39.done69_crit_edge:                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %done69

do.end44:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %dev45 = getelementptr inbounds %struct.transfer_context, ptr %1, i32 0, i32 7
  %40 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev45, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %dev46 = getelementptr inbounds %struct.usb_interface, ptr %43, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.310, i32 noundef %call41) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end44, %if.then39.cleanup.thread_crit_edge, %if.then39.cleanup.thread_crit_edge121
  %44 = ptrtoint ptr %submit_error to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %submit_error, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %land.lhs.true37.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge, %if.end30.if.end49_crit_edge
  %pending50 = getelementptr inbounds %struct.transfer_context, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %pending50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pending50, align 4
  %dec51 = add i32 %46, -1
  store i32 %dec51, ptr %pending50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec51)
  %cmp53 = icmp eq i32 %dec51, 0
  br i1 %cmp53, label %if.then55, label %if.end49.done69_crit_edge

if.end49.done69_crit_edge:                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %done69

if.then55:                                        ; preds = %if.end49
  %errors56 = getelementptr inbounds %struct.transfer_context, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %errors56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %errors56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool57.not = icmp eq i32 %48, 0
  br i1 %tobool57.not, label %if.then55.if.end67_crit_edge, label %do.end61

if.then55.if.end67_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

do.end61:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %dev62 = getelementptr inbounds %struct.transfer_context, ptr %1, i32 0, i32 7
  %49 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev62, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %dev64 = getelementptr inbounds %struct.usb_interface, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %packet_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %packet_count, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.313, i32 noundef %48, i32 noundef %54) #13
  br label %if.end67

if.end67:                                         ; preds = %do.end61, %if.then55.if.end67_crit_edge
  %done = getelementptr inbounds %struct.transfer_context, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %done) #10
  br label %done69

done69:                                           ; preds = %if.end67, %if.end49.done69_crit_edge, %if.then39.done69_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unlink_queued_callback(ptr noundef readonly %urb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %status2 = getelementptr inbounds %struct.queued_ctx, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end:                                           ; preds = %entry
  %urbs = getelementptr inbounds %struct.queued_ctx, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urbs, align 4
  %num = getelementptr inbounds %struct.queued_ctx, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 4
  %sub = add i32 %9, -4
  %arrayidx = getelementptr ptr, ptr %7, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %11, %urb
  br i1 %cmp, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %sub5 = add i32 %9, -2
  %arrayidx6 = getelementptr ptr, ptr %7, i32 %sub5
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  %cmp7 = icmp eq ptr %13, %urb
  call void @__sanitizer_cov_trace_const_cmp4(i32 -104, i32 %1)
  %cmp9 = icmp eq i32 %1, -104
  %or.cond = select i1 %cmp7, i1 %cmp9, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13.not = icmp eq i32 %1, 0
  %or.cond31 = select i1 %or.cond, i1 true, i1 %cmp13.not
  br i1 %or.cond31, label %lor.lhs.false.done_crit_edge, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then8:                                         ; preds = %if.end
  %14 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.341)
  switch i32 %1, label %if.then8.if.then14_crit_edge [
    i32 -104, label %if.then8.done_crit_edge
    i32 0, label %if.then8.done_crit_edge32
  ]

if.then8.done_crit_edge32:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then8.done_crit_edge:                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then8.if.then14_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %if.then8.if.then14_crit_edge, %lor.lhs.false.if.then14_crit_edge
  %15 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %1, ptr %status2, align 4
  br label %done

done:                                             ; preds = %if.then14, %if.then8.done_crit_edge, %if.then8.done_crit_edge32, %lor.lhs.false.done_crit_edge, %entry.done_crit_edge
  %pending = getelementptr inbounds %struct.queued_ctx, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !617
  tail call void @llvm.prefetch.p0(ptr %pending, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending, ptr %pending, i32 1, ptr elementtype(i32) %pending) #10, !srcloc !618
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !619
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then17, label %done.if.end18_crit_edge

done.if.end18_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @complete(ptr noundef %3) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %done.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 291)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 291)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !63, !65, !67, !68, !69, !70, !71, !72, !74, !75, !77, !79, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !104, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !118, !120, !122, !123, !124, !125, !127, !128, !129, !131, !133, !134, !135, !137, !139, !140, !141, !143, !145, !146, !147, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !221, !222, !223, !225, !227, !228, !229, !231, !233, !234, !235, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !265, !266, !267, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !290, !292, !293, !295, !296, !297, !298, !300, !301, !302, !303, !305, !306, !308, !309, !310, !311, !313, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !360, !362, !363, !364, !366, !367, !368, !370, !371, !372, !374, !375, !376, !378, !379, !380, !382, !383, !384, !385, !387, !388, !389, !391, !392, !393, !394, !396, !397, !398, !400, !401, !402, !404, !405, !406, !407, !409, !410, !412, !413, !414, !415, !417, !418, !419, !421, !422, !423, !425, !426, !427, !429, !430, !432, !433, !434, !435, !437, !438, !439, !441, !442, !443, !444, !446, !447, !448, !450, !451, !452, !454, !455, !456, !458, !459, !460, !462, !463, !464, !465, !467, !468, !469, !471, !472, !473, !475, !476, !477, !478, !480, !481, !482, !484, !485, !487, !488, !489, !490, !492, !493, !494, !496, !497, !498, !499, !501, !502, !503, !505, !507, !509, !511, !512, !513, !514, !516, !518, !519, !520, !522, !523, !524, !526, !528, !529, !530, !532, !534, !535, !536, !537, !538, !540, !541, !542, !544, !545, !546, !548, !549, !550, !551, !553, !554, !555, !557, !558, !559, !560, !562, !563, !564, !566, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595}
!llvm.module.flags = !{!597, !598, !599, !600, !601, !602, !603, !604}
!llvm.ident = !{!605}

!0 = !{ptr @__param_alt, !1, !"__param_alt", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/usbtest.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_alttype237, !1, !"__UNIQUE_ID_alttype237", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alt238, !4, !"__UNIQUE_ID_alt238", i1 false, i1 false}
!4 = !{!"../drivers/usb/misc/usbtest.c", i32 20, i32 1}
!5 = !{ptr @__param_pattern, !6, !"__param_pattern", i1 false, i1 false}
!6 = !{!"../drivers/usb/misc/usbtest.c", i32 339, i32 1}
!7 = !{ptr @__UNIQUE_ID_patterntype239, !6, !"__UNIQUE_ID_patterntype239", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_mod_pattern240, !9, !"__UNIQUE_ID_mod_pattern240", i1 false, i1 false}
!9 = !{!"../drivers/usb/misc/usbtest.c", i32 340, i32 1}
!10 = !{ptr @__param_realworld, !11, !"__param_realworld", i1 false, i1 false}
!11 = !{!"../drivers/usb/misc/usbtest.c", i32 666, i32 1}
!12 = !{ptr @__UNIQUE_ID_realworldtype241, !11, !"__UNIQUE_ID_realworldtype241", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_realworld242, !14, !"__UNIQUE_ID_realworld242", i1 false, i1 false}
!14 = !{!"../drivers/usb/misc/usbtest.c", i32 667, i32 1}
!15 = !{ptr @__param_force_interrupt, !16, !"__param_force_interrupt", i1 false, i1 false}
!16 = !{!"../drivers/usb/misc/usbtest.c", i32 2748, i32 1}
!17 = !{ptr @__UNIQUE_ID_force_interrupttype245, !16, !"__UNIQUE_ID_force_interrupttype245", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_force_interrupt246, !19, !"__UNIQUE_ID_force_interrupt246", i1 false, i1 false}
!19 = !{!"../drivers/usb/misc/usbtest.c", i32 2749, i32 1}
!20 = !{ptr @__param_vendor, !21, !"__param_vendor", i1 false, i1 false}
!21 = !{!"../drivers/usb/misc/usbtest.c", i32 2753, i32 1}
!22 = !{ptr @__UNIQUE_ID_vendortype247, !21, !"__UNIQUE_ID_vendortype247", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_vendor248, !24, !"__UNIQUE_ID_vendor248", i1 false, i1 false}
!24 = !{!"../drivers/usb/misc/usbtest.c", i32 2754, i32 1}
!25 = !{ptr @__param_product, !26, !"__param_product", i1 false, i1 false}
!26 = !{!"../drivers/usb/misc/usbtest.c", i32 2757, i32 1}
!27 = !{ptr @__UNIQUE_ID_producttype249, !26, !"__UNIQUE_ID_producttype249", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_product250, !29, !"__UNIQUE_ID_product250", i1 false, i1 false}
!29 = !{!"../drivers/usb/misc/usbtest.c", i32 2758, i32 1}
!30 = !{ptr @__initcall__kmod_usbtest__253_3068_usbtest_init6, !31, !"__initcall__kmod_usbtest__253_3068_usbtest_init6", i1 false, i1 false}
!31 = !{!"../drivers/usb/misc/usbtest.c", i32 3068, i32 1}
!32 = !{ptr @__exitcall_usbtest_exit, !33, !"__exitcall_usbtest_exit", i1 false, i1 false}
!33 = !{!"../drivers/usb/misc/usbtest.c", i32 3074, i32 1}
!34 = !{ptr @__UNIQUE_ID_description254, !35, !"__UNIQUE_ID_description254", i1 false, i1 false}
!35 = !{!"../drivers/usb/misc/usbtest.c", i32 3076, i32 1}
!36 = !{ptr @__UNIQUE_ID_file255, !37, !"__UNIQUE_ID_file255", i1 false, i1 false}
!37 = !{!"../drivers/usb/misc/usbtest.c", i32 3077, i32 1}
!38 = !{ptr @__UNIQUE_ID_license256, !37, !"__UNIQUE_ID_license256", i1 false, i1 false}
!39 = !{ptr @mod_pattern, !40, !"mod_pattern", i1 false, i1 false}
!40 = !{!"../drivers/usb/misc/usbtest.c", i32 338, i32 17}
!41 = !{ptr @force_interrupt, !42, !"force_interrupt", i1 false, i1 false}
!42 = !{!"../drivers/usb/misc/usbtest.c", i32 2747, i32 17}
!43 = !{ptr @vendor, !44, !"vendor", i1 false, i1 false}
!44 = !{!"../drivers/usb/misc/usbtest.c", i32 2752, i32 23}
!45 = !{ptr @product, !46, !"product", i1 false, i1 false}
!46 = !{!"../drivers/usb/misc/usbtest.c", i32 2756, i32 23}
!47 = !{ptr @__param_str_alt, !1, !"__param_str_alt", i1 false, i1 false}
!48 = !{ptr @override_alt, !49, !"override_alt", i1 false, i1 false}
!49 = !{!"../drivers/usb/misc/usbtest.c", i32 18, i32 12}
!50 = !{ptr @__param_str_pattern, !6, !"__param_str_pattern", i1 false, i1 false}
!51 = !{ptr @__param_str_realworld, !11, !"__param_str_realworld", i1 false, i1 false}
!52 = !{ptr @realworld, !53, !"realworld", i1 false, i1 false}
!53 = !{!"../drivers/usb/misc/usbtest.c", i32 665, i32 17}
!54 = !{ptr @__param_str_force_interrupt, !16, !"__param_str_force_interrupt", i1 false, i1 false}
!55 = !{ptr @__param_str_vendor, !21, !"__param_str_vendor", i1 false, i1 false}
!56 = !{ptr @__param_str_product, !26, !"__param_str_product", i1 false, i1 false}
!57 = !{ptr @.str, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/misc/usbtest.c", i32 3064, i32 3}
!59 = !{ptr @.str.1, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.2, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.3, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @usbtest_init.__UNIQUE_ID_ddebug252, !58, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!63 = !{ptr @usbtest_driver, !64, !"usbtest_driver", i1 false, i1 false}
!64 = !{!"../drivers/usb/misc/usbtest.c", i32 3048, i32 26}
!65 = !{ptr @.str.4, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/misc/usbtest.c", i32 2781, i32 3}
!67 = !{ptr @.str.5, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.6, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.7, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @usbtest_probe._entry, !66, !"_entry", i1 false, i1 false}
!71 = !{ptr @usbtest_probe._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @usbtest_probe.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/usb/misc/usbtest.c", i32 2793, i32 2}
!74 = !{ptr @.str.8, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.9, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/misc/usbtest.c", i32 2808, i32 18}
!77 = !{ptr @.str.10, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/misc/usbtest.c", i32 2814, i32 12}
!79 = !{ptr @.str.11, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/misc/usbtest.c", i32 2818, i32 12}
!81 = !{ptr @.str.13, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/misc/usbtest.c", i32 2826, i32 5}
!83 = !{ptr @.str.14, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @usbtest_probe._entry.12, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @usbtest_probe._entry_ptr.15, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.16, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/misc/usbtest.c", i32 2842, i32 12}
!88 = !{ptr @.str.17, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/misc/usbtest.c", i32 2844, i32 12}
!90 = !{ptr @.str.18, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/misc/usbtest.c", i32 2846, i32 13}
!92 = !{ptr @.str.19, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/misc/usbtest.c", i32 2848, i32 13}
!94 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/misc/usbtest.c", i32 2850, i32 15}
!96 = !{ptr @.str.21, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/misc/usbtest.c", i32 2852, i32 15}
!98 = !{ptr @.str.23, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/misc/usbtest.c", i32 2856, i32 2}
!100 = !{ptr @usbtest_probe._entry.22, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @usbtest_probe._entry_ptr.24, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.26, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/misc/usbtest.c", i32 2857, i32 2}
!104 = !{ptr @usbtest_probe._entry.25, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @usbtest_probe._entry_ptr.27, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.30, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/misc/usbtest.c", i32 2883, i32 2}
!110 = !{ptr @.str.31, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @usbtest_disconnect.__UNIQUE_ID_ddebug251, !109, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!112 = !{ptr @.str.32, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/misc/usbtest.c", i32 2690, i32 4}
!114 = !{ptr @.str.33, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @usbtest_ioctl._entry, !113, !"_entry", i1 false, i1 false}
!117 = !{ptr @usbtest_ioctl._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @pattern, !119, !"pattern", i1 false, i1 false}
!119 = !{!"../drivers/usb/misc/usbtest.c", i32 337, i32 17}
!120 = !{ptr @.str.35, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/misc/usbtest.c", i32 2206, i32 3}
!122 = !{ptr @.str.36, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @usbtest_do_ioctl._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @usbtest_do_ioctl._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.38, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/misc/usbtest.c", i32 2214, i32 3}
!127 = !{ptr @usbtest_do_ioctl._entry.37, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @usbtest_do_ioctl._entry_ptr.39, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.40, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/misc/usbtest.c", i32 2223, i32 57}
!131 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/misc/usbtest.c", i32 2229, i32 3}
!133 = !{ptr @usbtest_do_ioctl._entry.41, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @usbtest_do_ioctl._entry_ptr.43, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.44, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/misc/usbtest.c", i32 2238, i32 57}
!137 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/misc/usbtest.c", i32 2244, i32 3}
!139 = !{ptr @usbtest_do_ioctl._entry.45, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @usbtest_do_ioctl._entry_ptr.47, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.48, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/misc/usbtest.c", i32 2254, i32 9}
!143 = !{ptr @.str.50, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/misc/usbtest.c", i32 2260, i32 3}
!145 = !{ptr @usbtest_do_ioctl._entry.49, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @usbtest_do_ioctl._entry_ptr.51, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/misc/usbtest.c", i32 2270, i32 9}
!149 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/misc/usbtest.c", i32 2278, i32 3}
!151 = !{ptr @usbtest_do_ioctl._entry.53, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @usbtest_do_ioctl._entry_ptr.55, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/misc/usbtest.c", i32 2297, i32 3}
!155 = !{ptr @usbtest_do_ioctl._entry.56, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @usbtest_do_ioctl._entry_ptr.58, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.60, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/misc/usbtest.c", i32 2315, i32 3}
!159 = !{ptr @usbtest_do_ioctl._entry.59, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @usbtest_do_ioctl._entry_ptr.61, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.63, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/misc/usbtest.c", i32 2333, i32 3}
!163 = !{ptr @usbtest_do_ioctl._entry.62, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @usbtest_do_ioctl._entry_ptr.64, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.66, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/misc/usbtest.c", i32 2352, i32 3}
!167 = !{ptr @usbtest_do_ioctl._entry.65, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @usbtest_do_ioctl._entry_ptr.67, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/misc/usbtest.c", i32 2358, i32 4}
!171 = !{ptr @usbtest_do_ioctl._entry.68, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @usbtest_do_ioctl._entry_ptr.70, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.72, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/misc/usbtest.c", i32 2365, i32 3}
!175 = !{ptr @usbtest_do_ioctl._entry.71, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @usbtest_do_ioctl._entry_ptr.73, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.75, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/misc/usbtest.c", i32 2377, i32 3}
!179 = !{ptr @usbtest_do_ioctl._entry.74, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @usbtest_do_ioctl._entry_ptr.76, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/misc/usbtest.c", i32 2383, i32 4}
!183 = !{ptr @usbtest_do_ioctl._entry.77, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @usbtest_do_ioctl._entry_ptr.79, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/misc/usbtest.c", i32 2390, i32 3}
!187 = !{ptr @usbtest_do_ioctl._entry.80, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @usbtest_do_ioctl._entry_ptr.82, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.84, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/usb/misc/usbtest.c", i32 2396, i32 4}
!191 = !{ptr @usbtest_do_ioctl._entry.83, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @usbtest_do_ioctl._entry_ptr.85, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/misc/usbtest.c", i32 2405, i32 3}
!195 = !{ptr @usbtest_do_ioctl._entry.86, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @usbtest_do_ioctl._entry_ptr.88, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.90, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/misc/usbtest.c", i32 2411, i32 4}
!199 = !{ptr @usbtest_do_ioctl._entry.89, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @usbtest_do_ioctl._entry_ptr.91, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/misc/usbtest.c", i32 2418, i32 3}
!203 = !{ptr @usbtest_do_ioctl._entry.92, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @usbtest_do_ioctl._entry_ptr.94, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/misc/usbtest.c", i32 2430, i32 3}
!207 = !{ptr @usbtest_do_ioctl._entry.95, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @usbtest_do_ioctl._entry_ptr.97, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.99, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/usb/misc/usbtest.c", i32 2443, i32 3}
!211 = !{ptr @usbtest_do_ioctl._entry.98, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @usbtest_do_ioctl._entry_ptr.100, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.102, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/misc/usbtest.c", i32 2458, i32 3}
!215 = !{ptr @usbtest_do_ioctl._entry.101, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @usbtest_do_ioctl._entry_ptr.103, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/misc/usbtest.c", i32 2465, i32 8}
!219 = !{ptr @.str.106, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/misc/usbtest.c", i32 2471, i32 3}
!221 = !{ptr @usbtest_do_ioctl._entry.105, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @usbtest_do_ioctl._entry_ptr.107, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/misc/usbtest.c", i32 2478, i32 8}
!225 = !{ptr @.str.110, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/misc/usbtest.c", i32 2485, i32 3}
!227 = !{ptr @usbtest_do_ioctl._entry.109, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @usbtest_do_ioctl._entry_ptr.111, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/usb/misc/usbtest.c", i32 2492, i32 30}
!231 = !{ptr @.str.114, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/misc/usbtest.c", i32 2498, i32 3}
!233 = !{ptr @usbtest_do_ioctl._entry.113, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @usbtest_do_ioctl._entry_ptr.115, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.116, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/usb/misc/usbtest.c", i32 2505, i32 30}
!237 = !{ptr @.str.118, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/misc/usbtest.c", i32 2512, i32 3}
!239 = !{ptr @usbtest_do_ioctl._entry.117, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @usbtest_do_ioctl._entry_ptr.119, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.121, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/usb/misc/usbtest.c", i32 2525, i32 3}
!243 = !{ptr @usbtest_do_ioctl._entry.120, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @usbtest_do_ioctl._entry_ptr.122, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.124, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/usb/misc/usbtest.c", i32 2536, i32 3}
!247 = !{ptr @usbtest_do_ioctl._entry.123, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @usbtest_do_ioctl._entry_ptr.125, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.127, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/usb/misc/usbtest.c", i32 2549, i32 3}
!251 = !{ptr @usbtest_do_ioctl._entry.126, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @usbtest_do_ioctl._entry_ptr.128, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.130, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/usb/misc/usbtest.c", i32 2556, i32 5}
!255 = !{ptr @usbtest_do_ioctl._entry.129, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @usbtest_do_ioctl._entry_ptr.131, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.133, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/usb/misc/usbtest.c", i32 2568, i32 3}
!259 = !{ptr @usbtest_do_ioctl._entry.132, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @usbtest_do_ioctl._entry_ptr.134, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.135, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/usb/misc/usbtest.c", i32 2578, i32 57}
!263 = !{ptr @.str.137, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/usb/misc/usbtest.c", i32 2584, i32 3}
!265 = !{ptr @usbtest_do_ioctl._entry.136, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @usbtest_do_ioctl._entry_ptr.138, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.139, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/usb/misc/usbtest.c", i32 2594, i32 57}
!269 = !{ptr @.str.141, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/usb/misc/usbtest.c", i32 2601, i32 3}
!271 = !{ptr @usbtest_do_ioctl._entry.140, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @usbtest_do_ioctl._entry_ptr.142, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.144, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/usb/misc/usbtest.c", i32 2610, i32 3}
!275 = !{ptr @usbtest_do_ioctl._entry.143, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @usbtest_do_ioctl._entry_ptr.145, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.147, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/usb/misc/usbtest.c", i32 2621, i32 3}
!279 = !{ptr @usbtest_do_ioctl._entry.146, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @usbtest_do_ioctl._entry_ptr.148, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.150, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/usb/misc/usbtest.c", i32 2627, i32 4}
!283 = !{ptr @usbtest_do_ioctl._entry.149, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @usbtest_do_ioctl._entry_ptr.151, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.152, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/usb/misc/usbtest.c", i32 508, i32 3}
!287 = !{ptr @.str.153, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @simple_io._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @simple_io._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @init_completion.__key, !291, !"__key", i1 false, i1 false}
!291 = !{!"../include/linux/completion.h", i32 87, i32 2}
!292 = !{ptr @.str.154, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.155, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/usb/misc/usbtest.c", i32 433, i32 3}
!295 = !{ptr @.str.156, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @simple_check_buf._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @simple_check_buf._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.157, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/usb/misc/usbtest.c", i32 392, i32 4}
!300 = !{ptr @.str.158, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @check_guard_bytes._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @check_guard_bytes._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @perform_sglist.__key, !304, !"__key", i1 false, i1 false}
!304 = !{!"../drivers/usb/misc/usbtest.c", i32 615, i32 2}
!305 = !{ptr @.str.159, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.160, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/usb/misc/usbtest.c", i32 644, i32 3}
!308 = !{ptr @.str.161, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @perform_sglist._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @perform_sglist._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.162, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/usb/misc/usbtest.c", i32 840, i32 4}
!313 = !{ptr @.str.163, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @ch9_postconfig._entry, !312, !"_entry", i1 false, i1 false}
!315 = !{ptr @ch9_postconfig._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.165, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/usb/misc/usbtest.c", i32 852, i32 4}
!318 = !{ptr @ch9_postconfig._entry.164, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @ch9_postconfig._entry_ptr.166, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.168, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/usb/misc/usbtest.c", i32 860, i32 4}
!322 = !{ptr @ch9_postconfig._entry.167, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @ch9_postconfig._entry_ptr.169, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.171, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/usb/misc/usbtest.c", i32 880, i32 4}
!326 = !{ptr @ch9_postconfig._entry.170, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @ch9_postconfig._entry_ptr.172, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.174, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/usb/misc/usbtest.c", i32 890, i32 3}
!330 = !{ptr @ch9_postconfig._entry.173, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @ch9_postconfig._entry_ptr.175, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.177, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/usb/misc/usbtest.c", i32 907, i32 4}
!334 = !{ptr @ch9_postconfig._entry.176, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @ch9_postconfig._entry_ptr.178, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.180, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/usb/misc/usbtest.c", i32 925, i32 4}
!338 = !{ptr @ch9_postconfig._entry.179, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @ch9_postconfig._entry_ptr.181, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.183, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/usb/misc/usbtest.c", i32 943, i32 5}
!342 = !{ptr @ch9_postconfig._entry.182, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @ch9_postconfig._entry_ptr.184, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.186, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/usb/misc/usbtest.c", i32 952, i32 6}
!346 = !{ptr @ch9_postconfig._entry.185, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @ch9_postconfig._entry_ptr.187, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.189, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/usb/misc/usbtest.c", i32 960, i32 6}
!350 = !{ptr @ch9_postconfig._entry.188, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @ch9_postconfig._entry_ptr.190, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.192, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/usb/misc/usbtest.c", i32 968, i32 6}
!354 = !{ptr @ch9_postconfig._entry.191, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @ch9_postconfig._entry_ptr.193, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.195, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/usb/misc/usbtest.c", i32 983, i32 4}
!358 = !{ptr @ch9_postconfig._entry.194, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @ch9_postconfig._entry_ptr.196, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.198, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/usb/misc/usbtest.c", i32 1004, i32 5}
!362 = !{ptr @ch9_postconfig._entry.197, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @ch9_postconfig._entry_ptr.199, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.201, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/usb/misc/usbtest.c", i32 1011, i32 4}
!366 = !{ptr @ch9_postconfig._entry.200, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @ch9_postconfig._entry_ptr.202, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.204, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/usb/misc/usbtest.c", i32 1024, i32 6}
!370 = !{ptr @ch9_postconfig._entry.203, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @ch9_postconfig._entry_ptr.205, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.207, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/usb/misc/usbtest.c", i32 1037, i32 3}
!374 = !{ptr @ch9_postconfig._entry.206, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @ch9_postconfig._entry_ptr.208, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.210, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/usb/misc/usbtest.c", i32 1048, i32 3}
!378 = !{ptr @ch9_postconfig._entry.209, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @ch9_postconfig._entry_ptr.211, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.212, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/usb/misc/usbtest.c", i32 749, i32 3}
!382 = !{ptr @.str.213, !381, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @is_good_ext._entry, !381, !"_entry", i1 false, i1 false}
!384 = !{ptr @is_good_ext._entry_ptr, !381, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.215, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/usb/misc/usbtest.c", i32 756, i32 3}
!387 = !{ptr @is_good_ext._entry.214, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @is_good_ext._entry_ptr.216, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.217, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/usb/misc/usbtest.c", i32 770, i32 3}
!391 = !{ptr @.str.218, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @is_good_ss_cap._entry, !390, !"_entry", i1 false, i1 false}
!393 = !{ptr @is_good_ss_cap._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.220, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/usb/misc/usbtest.c", i32 779, i32 3}
!396 = !{ptr @is_good_ss_cap._entry.219, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @is_good_ss_cap._entry_ptr.221, !395, !"_entry_ptr", i1 false, i1 false}
!398 = !{ptr @.str.223, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/usb/misc/usbtest.c", i32 785, i32 3}
!400 = !{ptr @is_good_ss_cap._entry.222, !399, !"_entry", i1 false, i1 false}
!401 = !{ptr @is_good_ss_cap._entry_ptr.224, !399, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @.str.225, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/usb/misc/usbtest.c", i32 799, i32 3}
!404 = !{ptr @.str.226, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @is_good_con_id._entry, !403, !"_entry", i1 false, i1 false}
!406 = !{ptr @is_good_con_id._entry_ptr, !403, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @is_good_con_id._entry.227, !408, !"_entry", i1 false, i1 false}
!408 = !{!"../drivers/usb/misc/usbtest.c", i32 804, i32 3}
!409 = !{ptr @is_good_con_id._entry_ptr.228, !408, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.229, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/usb/misc/usbtest.c", i32 716, i32 4}
!412 = !{ptr @.str.230, !411, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @is_good_config._entry, !411, !"_entry", i1 false, i1 false}
!414 = !{ptr @is_good_config._entry_ptr, !411, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.232, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/usb/misc/usbtest.c", i32 721, i32 4}
!417 = !{ptr @is_good_config._entry.231, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @is_good_config._entry_ptr.233, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.235, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/usb/misc/usbtest.c", i32 725, i32 4}
!421 = !{ptr @is_good_config._entry.234, !420, !"_entry", i1 false, i1 false}
!422 = !{ptr @is_good_config._entry_ptr.236, !420, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.238, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/usb/misc/usbtest.c", i32 737, i32 2}
!425 = !{ptr @is_good_config._entry.237, !424, !"_entry", i1 false, i1 false}
!426 = !{ptr @is_good_config._entry_ptr.239, !424, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @test_ctrl_queue.__key, !428, !"__key", i1 false, i1 false}
!428 = !{!"../drivers/usb/misc/usbtest.c", i32 1211, i32 2}
!429 = !{ptr @.str.240, !428, !"<string literal>", i1 false, i1 false}
!430 = !{ptr @.str.241, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/usb/misc/usbtest.c", i32 1364, i32 4}
!432 = !{ptr @.str.242, !431, !"<string literal>", i1 false, i1 false}
!433 = !{ptr @test_ctrl_queue._entry, !431, !"_entry", i1 false, i1 false}
!434 = !{ptr @test_ctrl_queue._entry_ptr, !431, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.244, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/usb/misc/usbtest.c", i32 1391, i32 4}
!437 = !{ptr @test_ctrl_queue._entry.243, !436, !"_entry", i1 false, i1 false}
!438 = !{ptr @test_ctrl_queue._entry_ptr.245, !436, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @.str.246, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/usb/misc/usbtest.c", i32 1108, i32 4}
!441 = !{ptr @.str.247, !440, !"<string literal>", i1 false, i1 false}
!442 = !{ptr @ctrl_complete._entry, !440, !"_entry", i1 false, i1 false}
!443 = !{ptr @ctrl_complete._entry_ptr, !440, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.249, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/usb/misc/usbtest.c", i32 1134, i32 4}
!446 = !{ptr @ctrl_complete._entry.248, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @ctrl_complete._entry_ptr.250, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.252, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/usb/misc/usbtest.c", i32 1145, i32 4}
!450 = !{ptr @ctrl_complete._entry.251, !449, !"_entry", i1 false, i1 false}
!451 = !{ptr @ctrl_complete._entry_ptr.253, !449, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.255, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/usb/misc/usbtest.c", i32 1173, i32 6}
!454 = !{ptr @ctrl_complete._entry.254, !453, !"_entry", i1 false, i1 false}
!455 = !{ptr @ctrl_complete._entry_ptr.256, !453, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.258, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/usb/misc/usbtest.c", i32 1185, i32 4}
!458 = !{ptr @ctrl_complete._entry.257, !457, !"_entry", i1 false, i1 false}
!459 = !{ptr @ctrl_complete._entry_ptr.259, !457, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.260, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/usb/misc/usbtest.c", i32 1461, i32 3}
!462 = !{ptr @.str.261, !461, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @unlink1._entry, !461, !"_entry", i1 false, i1 false}
!464 = !{ptr @unlink1._entry_ptr, !461, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.263, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/usb/misc/usbtest.c", i32 1485, i32 5}
!467 = !{ptr @unlink1._entry.262, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @unlink1._entry_ptr.264, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.266, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/usb/misc/usbtest.c", i32 1492, i32 5}
!471 = !{ptr @unlink1._entry.265, !470, !"_entry", i1 false, i1 false}
!472 = !{ptr @unlink1._entry_ptr.267, !470, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.268, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/usb/misc/usbtest.c", i32 1691, i32 3}
!475 = !{ptr @.str.269, !474, !"<string literal>", i1 false, i1 false}
!476 = !{ptr @test_halt._entry, !474, !"_entry", i1 false, i1 false}
!477 = !{ptr @test_halt._entry_ptr, !474, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.271, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/usb/misc/usbtest.c", i32 1701, i32 4}
!480 = !{ptr @test_halt._entry.270, !479, !"_entry", i1 false, i1 false}
!481 = !{ptr @test_halt._entry_ptr.272, !479, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @test_halt._entry.273, !483, !"_entry", i1 false, i1 false}
!483 = !{!"../drivers/usb/misc/usbtest.c", i32 1710, i32 3}
!484 = !{ptr @test_halt._entry_ptr.274, !483, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.275, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/usb/misc/usbtest.c", i32 1637, i32 3}
!487 = !{ptr @.str.276, !486, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @verify_not_halted._entry, !486, !"_entry", i1 false, i1 false}
!489 = !{ptr @verify_not_halted._entry_ptr, !486, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.278, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/usb/misc/usbtest.c", i32 1642, i32 3}
!492 = !{ptr @verify_not_halted._entry.277, !491, !"_entry", i1 false, i1 false}
!493 = !{ptr @verify_not_halted._entry_ptr.279, !491, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.280, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/usb/misc/usbtest.c", i32 1659, i32 3}
!496 = !{ptr @.str.281, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @verify_halted._entry, !495, !"_entry", i1 false, i1 false}
!498 = !{ptr @verify_halted._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.283, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/usb/misc/usbtest.c", i32 1664, i32 3}
!501 = !{ptr @verify_halted._entry.282, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @verify_halted._entry_ptr.284, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.285, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/usb/misc/usbtest.c", i32 1670, i32 46}
!505 = distinct !{null, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/usb/misc/usbtest.c", i32 1826, i32 17}
!507 = !{ptr @.str.287, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/usb/misc/usbtest.c", i32 1852, i32 11}
!509 = !{ptr @.str.288, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/usb/misc/usbtest.c", i32 1854, i32 5}
!511 = !{ptr @.str.289, !510, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @ctrl_out._entry, !510, !"_entry", i1 false, i1 false}
!513 = !{ptr @ctrl_out._entry_ptr, !510, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.290, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/usb/misc/usbtest.c", i32 1866, i32 11}
!516 = !{ptr @.str.292, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/usb/misc/usbtest.c", i32 1868, i32 5}
!518 = !{ptr @ctrl_out._entry.291, !517, !"_entry", i1 false, i1 false}
!519 = !{ptr @ctrl_out._entry_ptr.293, !517, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.295, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/usb/misc/usbtest.c", i32 1878, i32 5}
!522 = !{ptr @ctrl_out._entry.294, !521, !"_entry", i1 false, i1 false}
!523 = !{ptr @ctrl_out._entry_ptr.296, !521, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @.str.297, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/usb/misc/usbtest.c", i32 1885, i32 11}
!526 = !{ptr @.str.299, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/usb/misc/usbtest.c", i32 1900, i32 3}
!528 = !{ptr @ctrl_out._entry.298, !527, !"_entry", i1 false, i1 false}
!529 = !{ptr @ctrl_out._entry_ptr.300, !527, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @test_queue.__key, !531, !"__key", i1 false, i1 false}
!531 = !{!"../drivers/usb/misc/usbtest.c", i32 2063, i32 2}
!532 = !{ptr @.str.301, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/usb/misc/usbtest.c", i32 2092, i32 3}
!534 = !{ptr @.str.302, !533, !"<string literal>", i1 false, i1 false}
!535 = !{ptr @test_queue._entry, !533, !"_entry", i1 false, i1 false}
!536 = !{ptr @test_queue._entry_ptr, !533, !"_entry_ptr", i1 false, i1 false}
!537 = !{ptr @.str.303, !533, !"<string literal>", i1 false, i1 false}
!538 = !{ptr @.str.305, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/usb/misc/usbtest.c", i32 2099, i32 3}
!540 = !{ptr @test_queue._entry.304, !539, !"_entry", i1 false, i1 false}
!541 = !{ptr @test_queue._entry_ptr.306, !539, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @.str.308, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/usb/misc/usbtest.c", i32 2111, i32 4}
!544 = !{ptr @test_queue._entry.307, !543, !"_entry", i1 false, i1 false}
!545 = !{ptr @test_queue._entry_ptr.309, !543, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @.str.310, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/usb/misc/usbtest.c", i32 1951, i32 4}
!548 = !{ptr @.str.311, !547, !"<string literal>", i1 false, i1 false}
!549 = !{ptr @complicated_callback._entry, !547, !"_entry", i1 false, i1 false}
!550 = !{ptr @complicated_callback._entry_ptr, !547, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @.str.313, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/usb/misc/usbtest.c", i32 1965, i32 4}
!553 = !{ptr @complicated_callback._entry.312, !552, !"_entry", i1 false, i1 false}
!554 = !{ptr @complicated_callback._entry_ptr.314, !552, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @.str.315, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/usb/misc/usbtest.c", i32 1598, i32 4}
!557 = !{ptr @.str.316, !556, !"<string literal>", i1 false, i1 false}
!558 = !{ptr @unlink_queued._entry, !556, !"_entry", i1 false, i1 false}
!559 = !{ptr @unlink_queued._entry_ptr, !556, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @.str.317, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/usb/misc/usbtest.c", i32 1729, i32 3}
!562 = !{ptr @test_toggle_sync._entry, !561, !"_entry", i1 false, i1 false}
!563 = !{ptr @test_toggle_sync._entry_ptr, !561, !"_entry_ptr", i1 false, i1 false}
!564 = !{ptr @test_toggle_sync._entry.318, !565, !"_entry", i1 false, i1 false}
!565 = !{!"../drivers/usb/misc/usbtest.c", i32 1741, i32 3}
!566 = !{ptr @test_toggle_sync._entry_ptr.319, !565, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @id_table, !568, !"id_table", i1 false, i1 false}
!568 = !{!"../drivers/usb/misc/usbtest.c", i32 2974, i32 35}
!569 = !{ptr @.str.320, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/usb/misc/usbtest.c", i32 2901, i32 11}
!571 = !{ptr @ez1_info, !572, !"ez1_info", i1 false, i1 false}
!572 = !{!"../drivers/usb/misc/usbtest.c", i32 2900, i32 28}
!573 = !{ptr @.str.321, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/usb/misc/usbtest.c", i32 2909, i32 11}
!575 = !{ptr @ez2_info, !576, !"ez2_info", i1 false, i1 false}
!576 = !{!"../drivers/usb/misc/usbtest.c", i32 2908, i32 28}
!577 = !{ptr @.str.322, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/usb/misc/usbtest.c", i32 2918, i32 11}
!579 = !{ptr @fw_info, !580, !"fw_info", i1 false, i1 false}
!580 = !{!"../drivers/usb/misc/usbtest.c", i32 2917, i32 28}
!581 = !{ptr @.str.323, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/usb/misc/usbtest.c", i32 2933, i32 11}
!583 = !{ptr @gz_info, !584, !"gz_info", i1 false, i1 false}
!584 = !{!"../drivers/usb/misc/usbtest.c", i32 2932, i32 28}
!585 = !{ptr @.str.324, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/usb/misc/usbtest.c", i32 2942, i32 11}
!587 = !{ptr @um_info, !588, !"um_info", i1 false, i1 false}
!588 = !{!"../drivers/usb/misc/usbtest.c", i32 2941, i32 28}
!589 = !{ptr @.str.325, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/usb/misc/usbtest.c", i32 2948, i32 11}
!591 = !{ptr @um2_info, !592, !"um2_info", i1 false, i1 false}
!592 = !{!"../drivers/usb/misc/usbtest.c", i32 2947, i32 28}
!593 = !{ptr @.str.326, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/usb/misc/usbtest.c", i32 2968, i32 11}
!595 = !{ptr @generic_info, !596, !"generic_info", i1 false, i1 false}
!596 = !{!"../drivers/usb/misc/usbtest.c", i32 2967, i32 28}
!597 = !{i32 1, !"wchar_size", i32 2}
!598 = !{i32 1, !"min_enum_size", i32 4}
!599 = !{i32 8, !"branch-target-enforcement", i32 0}
!600 = !{i32 8, !"sign-return-address", i32 0}
!601 = !{i32 8, !"sign-return-address-all", i32 0}
!602 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!603 = !{i32 7, !"uwtable", i32 1}
!604 = !{i32 7, !"frame-pointer", i32 2}
!605 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!606 = !{i64 2148769881, i64 2148769886, i64 2148769899, i64 2148769943, i64 2148769977, i64 2148769998}
!607 = !{!"branch_weights", i32 1, i32 2000}
!608 = !{!"branch_weights", i32 2000, i32 1}
!609 = !{i64 2153671460, i64 2153671952, i64 2153671497, i64 2153671553, i64 2153671587, i64 2153671611, i64 2153671652, i64 2153671673, i64 2153671701, i64 2153671735}
!610 = !{i64 2153674221, i64 2153674713, i64 2153674258, i64 2153674314, i64 2153674348, i64 2153674372, i64 2153674413, i64 2153674434, i64 2153674462, i64 2153674496}
!611 = !{i64 2153667902, i64 2153668394, i64 2153667939, i64 2153667995, i64 2153668029, i64 2153668053, i64 2153668094, i64 2153668115, i64 2153668143, i64 2153668177}
!612 = !{i64 2153669512, i64 2153670004, i64 2153669549, i64 2153669605, i64 2153669639, i64 2153669663, i64 2153669704, i64 2153669725, i64 2153669753, i64 2153669787}
!613 = !{i8 0, i8 2}
!614 = !{!"auto-init"}
!615 = !{i64 2148288066, i64 2148288092, i64 2148288121, i64 2148288155, i64 2148288186, i64 2148288209}
!616 = !{i64 2148290531, i64 2148290557, i64 2148290586, i64 2148290620, i64 2148290651, i64 2148290674}
!617 = !{i64 2148376518}
!618 = !{i64 2148291251, i64 2148291283, i64 2148291312, i64 2148291346, i64 2148291377, i64 2148291400}
!619 = !{i64 2148376747}
