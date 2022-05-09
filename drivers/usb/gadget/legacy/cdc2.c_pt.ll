; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/cdc2.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/cdc2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.usb_composite_overwrite = type { i16, i16, i16, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.f_ecm_opts = type { %struct.usb_function_instance, ptr, i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }

@__param_str_idVendor = internal constant [15 x i8] c"g_cdc.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype337 = internal constant [31 x i8] c"g_cdc.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor338 = internal constant [34 x i8] c"g_cdc.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [16 x i8] c"g_cdc.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype339 = internal constant [32 x i8] c"g_cdc.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct340 = internal constant [36 x i8] c"g_cdc.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [16 x i8] c"g_cdc.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype341 = internal constant [32 x i8] c"g_cdc.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice342 = internal constant [46 x i8] c"g_cdc.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [20 x i8] c"g_cdc.iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype343 = internal constant [35 x i8] c"g_cdc.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber344 = internal constant [45 x i8] c"g_cdc.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [20 x i8] c"g_cdc.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype345 = internal constant [35 x i8] c"g_cdc.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer346 = internal constant [49 x i8] c"g_cdc.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [15 x i8] c"g_cdc.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype347 = internal constant [30 x i8] c"g_cdc.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct348 = internal constant [39 x i8] c"g_cdc.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__param_str_qmult = internal constant [12 x i8] c"g_cdc.qmult\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@qmult = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_qmult = internal constant %struct.kernel_param { ptr @__param_str_qmult, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @qmult } }, section "__param", align 4
@__UNIQUE_ID_qmulttype349 = internal constant [26 x i8] c"g_cdc.parmtype=qmult:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qmult350 = internal constant [61 x i8] c"g_cdc.parm=qmult:queue length multiplier at high/super speed\00", section ".modinfo", align 1
@__param_str_dev_addr = internal constant [15 x i8] c"g_cdc.dev_addr\00", align 1
@dev_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_dev_addr = internal constant %struct.kernel_param { ptr @__param_str_dev_addr, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @dev_addr } }, section "__param", align 4
@__UNIQUE_ID_dev_addrtype351 = internal constant [30 x i8] c"g_cdc.parmtype=dev_addr:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_dev_addr352 = internal constant [44 x i8] c"g_cdc.parm=dev_addr:Device Ethernet Address\00", section ".modinfo", align 1
@__param_str_host_addr = internal constant [16 x i8] c"g_cdc.host_addr\00", align 1
@host_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_host_addr = internal constant %struct.kernel_param { ptr @__param_str_host_addr, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @host_addr } }, section "__param", align 4
@__UNIQUE_ID_host_addrtype353 = internal constant [31 x i8] c"g_cdc.parmtype=host_addr:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_host_addr354 = internal constant [43 x i8] c"g_cdc.parm=host_addr:Host Ethernet Address\00", section ".modinfo", align 1
@__initcall__kmod_g_cdc__355_235_cdc_driver_init6 = internal global ptr @cdc_driver_init, section ".initcall6.init", align 4
@cdc_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @.str, ptr @device_desc, ptr @dev_strings, i32 5, i8 0, ptr @cdc_bind, ptr @cdc_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdc_driver_exit = internal global ptr @cdc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description356 = internal constant [39 x i8] c"g_cdc.description=CDC Composite Gadget\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [28 x i8] c"g_cdc.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_file358 = internal constant [43 x i8] c"g_cdc.file=drivers/usb/gadget/legacy/g_cdc\00", section ".modinfo", align 1
@__UNIQUE_ID_license359 = internal constant [18 x i8] c"g_cdc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"g_cdc\00", [26 x i8] zeroinitializer }, align 32
@device_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 2, i8 0, i8 0, i8 0, i16 9477, i16 -21852, i16 0, i8 0, i8 0, i8 0, i8 1 }, [46 x i8] zeroinitializer }, align 32
@dev_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stringtab_dev, ptr null], [24 x i8] zeroinitializer }, align 32
@stringtab_dev = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_dev }, [24 x i8] zeroinitializer }, align 32
@strings_dev = internal global { [4 x %struct.usb_string], [32 x i8] } { [4 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CDC Composite Gadget\00", [43 x i8] zeroinitializer }, align 32
@cdc_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 146, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"controller '%s' not usable\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cdc_bind\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/gadget/legacy/cdc2.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdc_bind._entry_ptr = internal global ptr @cdc_bind._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ecm\00", [28 x i8] zeroinitializer }, align 32
@fi_ecm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cdc_bind._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016using host ethernet address: %s\00", [62 x i8] zeroinitializer }, align 32
@cdc_bind._entry_ptr.11 = internal global ptr @cdc_bind._entry.9, section ".printk_index", align 4
@cdc_bind._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016using self ethernet address: %s\00", [62 x i8] zeroinitializer }, align 32
@cdc_bind._entry_ptr.14 = internal global ptr @cdc_bind._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acm\00", [28 x i8] zeroinitializer }, align 32
@fi_serial = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@otg_desc = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@cdc_config_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr @.str.20, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@cdc_bind._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 198, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s, version: King Kamehameha Day 2008\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cdc_bind._entry_ptr.19 = internal global ptr @cdc_bind._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CDC Composite (ECM + ACM)\00", [38 x i8] zeroinitializer }, align 32
@f_ecm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_acm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 32, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"qmult\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"dev_addr\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"host_addr\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 34, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"cdc_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 226, i32 36 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 227, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"device_desc\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 38, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"dev_strings\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 74, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"stringtab_dev\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 69, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"strings_dev\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 62, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 63, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 64, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 145, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 150, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"fi_ecm\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 84, i32 38 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 158, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 160, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 162, i32 40 }
@___asan_gen_.96 = private unnamed_addr constant [10 x i8] c"fi_serial\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 81, i32 38 }
@___asan_gen_.99 = private unnamed_addr constant [9 x i8] c"otg_desc\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 59, i32 44 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"cdc_config_driver\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 129, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 197, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 130, i32 13 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"f_ecm\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 83, i32 29 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"f_acm\00", align 1
@___asan_gen_.121 = private constant [36 x i8] c"../drivers/usb/gadget/legacy/cdc2.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 80, i32 29 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_bcdDevice342, ptr @__UNIQUE_ID_bcdDevicetype341, ptr @__UNIQUE_ID_description356, ptr @__UNIQUE_ID_dev_addr352, ptr @__UNIQUE_ID_dev_addrtype351, ptr @__UNIQUE_ID_file358, ptr @__UNIQUE_ID_host_addr354, ptr @__UNIQUE_ID_host_addrtype353, ptr @__UNIQUE_ID_iManufacturer346, ptr @__UNIQUE_ID_iManufacturertype345, ptr @__UNIQUE_ID_iProduct348, ptr @__UNIQUE_ID_iProducttype347, ptr @__UNIQUE_ID_iSerialNumber344, ptr @__UNIQUE_ID_iSerialNumbertype343, ptr @__UNIQUE_ID_idProduct340, ptr @__UNIQUE_ID_idProducttype339, ptr @__UNIQUE_ID_idVendor338, ptr @__UNIQUE_ID_idVendortype337, ptr @__UNIQUE_ID_license359, ptr @__UNIQUE_ID_qmult350, ptr @__UNIQUE_ID_qmulttype349, ptr @__exitcall_cdc_driver_exit, ptr @__initcall__kmod_g_cdc__355_235_cdc_driver_init6, ptr @__param_bcdDevice, ptr @__param_dev_addr, ptr @__param_host_addr, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @__param_qmult, ptr @cdc_bind._entry, ptr @cdc_bind._entry.12, ptr @cdc_bind._entry.16, ptr @cdc_bind._entry.9, ptr @cdc_bind._entry_ptr, ptr @cdc_bind._entry_ptr.11, ptr @cdc_bind._entry_ptr.14, ptr @cdc_bind._entry_ptr.19, ptr @cdc_driver_exit, ptr @coverwrite, ptr @qmult, ptr @dev_addr, ptr @host_addr, ptr @cdc_driver, ptr @.str, ptr @device_desc, ptr @dev_strings, ptr @stringtab_dev, ptr @strings_dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @fi_ecm, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @fi_serial, ptr @otg_desc, ptr @cdc_config_driver, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @f_ecm, ptr @f_acm], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmult to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stringtab_dev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_dev to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_ecm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_bind._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_bind._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_serial to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_config_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_bind._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ecm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_acm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_composite_probe(ptr noundef nonnull @cdc_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_composite_unregister(ptr noundef nonnull @cdc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdc_bind(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %quirk_altset_not_supp.i.i = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %quirk_altset_not_supp.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i.i = load i32, ptr %quirk_altset_not_supp.i.i, align 4
  %3 = and i32 %bf.load.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  %name = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %5) #7
  br label %cleanup53

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.8) #4
  store ptr %call3, ptr @fi_ecm, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call3 to i32
  br label %cleanup53

if.end7:                                          ; preds = %if.end
  %net = getelementptr inbounds %struct.f_ecm_opts, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  %9 = load i32, ptr @qmult, align 4
  tail call void @gether_set_qmult(ptr noundef %8, i32 noundef %9) #4
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  %12 = load ptr, ptr @host_addr, align 4
  %call9 = tail call i32 @gether_set_host_addr(ptr noundef %11, ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %do.end13, label %if.end7.if.end16_crit_edge

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %13 = load ptr, ptr @host_addr, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %13) #7
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end7.if.end16_crit_edge
  %14 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net, align 4
  %16 = load ptr, ptr @dev_addr, align 4
  %call18 = tail call i32 @gether_set_dev_addr(ptr noundef %15, ptr noundef %16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end23, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %17 = load ptr, ptr @dev_addr, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %17) #7
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.end16.if.end26_crit_edge
  %call27 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.15) #4
  store ptr %call27, ptr @fi_serial, align 4
  %cmp.i71 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %call27 to i32
  br label %fail

if.end31:                                         ; preds = %if.end26
  %call32 = tail call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @strings_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %if.end31.fail1_crit_edge, label %if.end34

if.end31.fail1_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail1

if.end34:                                         ; preds = %if.end31
  %19 = load i8, ptr @strings_dev, align 4
  store i8 %19, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 10), align 1
  %20 = load i8, ptr getelementptr inbounds ([4 x %struct.usb_string], ptr @strings_dev, i32 0, i32 1), align 4
  store i8 %20, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 11), align 1
  %21 = ptrtoint ptr %quirk_altset_not_supp.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.i = load i32, ptr %quirk_altset_not_supp.i.i, align 4
  %22 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool36.not = icmp eq i32 %22, 0
  br i1 %tobool36.not, label %if.end34.if.end44_crit_edge, label %land.lhs.true

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end34
  %23 = load ptr, ptr @otg_desc, align 4
  %tobool37.not = icmp eq ptr %23, null
  br i1 %tobool37.not, label %if.then38, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then38:                                        ; preds = %land.lhs.true
  %call39 = tail call ptr @usb_otg_descriptor_alloc(ptr noundef %1) #4
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.then38.fail1_crit_edge, label %cleanup.thread

if.then38.fail1_crit_edge:                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail1

cleanup.thread:                                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %call43 = tail call i32 @usb_otg_descriptor_init(ptr noundef %1, ptr noundef nonnull %call39) #4
  store ptr %call39, ptr @otg_desc, align 4
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @otg_desc, i32 0, i32 1), align 4
  br label %if.end44

if.end44:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end44_crit_edge, %if.end34.if.end44_crit_edge
  %call45 = tail call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @cdc_config_driver, ptr noundef nonnull @cdc_do_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %fail2, label %if.end48

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #4
  %dev52 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev52, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2) #7
  br label %cleanup53

fail2:                                            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %24 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %24) #4
  store ptr null, ptr @otg_desc, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %if.then38.fail1_crit_edge, %if.end31.fail1_crit_edge
  %status.1 = phi i32 [ %call32, %if.end31.fail1_crit_edge ], [ %call45, %fail2 ], [ -12, %if.then38.fail1_crit_edge ]
  %25 = load ptr, ptr @fi_serial, align 4
  tail call void @usb_put_function_instance(ptr noundef %25) #4
  br label %fail

fail:                                             ; preds = %fail1, %if.then29
  %status.2 = phi i32 [ %18, %if.then29 ], [ %status.1, %fail1 ]
  %26 = load ptr, ptr @fi_ecm, align 4
  tail call void @usb_put_function_instance(ptr noundef %26) #4
  br label %cleanup53

cleanup53:                                        ; preds = %fail, %if.end48, %if.then5, %do.end
  %retval.0 = phi i32 [ %6, %if.then5 ], [ %status.2, %fail ], [ 0, %if.end48 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdc_unbind(ptr nocapture noundef readnone %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @f_acm, align 4
  tail call void @usb_put_function(ptr noundef %0) #4
  %1 = load ptr, ptr @fi_serial, align 4
  tail call void @usb_put_function_instance(ptr noundef %1) #4
  %2 = load ptr, ptr @f_ecm, align 4
  %tobool.not.i = icmp eq ptr %2, null
  %cmp.i = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_put_function(ptr noundef nonnull %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = load ptr, ptr @fi_ecm, align 4
  %tobool.not.i4 = icmp eq ptr %3, null
  %cmp.i5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i6 = or i1 %tobool.not.i4, %cmp.i5
  br i1 %spec.select.i6, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_put_function_instance(ptr noundef nonnull %3) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %4 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %4) #4
  store ptr null, ptr @otg_desc, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_qmult(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_host_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_dev_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_ids_tab(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_descriptor_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_otg_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdc_do_config(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %is_otg.i = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %is_otg.i, align 4
  %5 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %descriptors = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 2
  %6 = ptrtoint ptr %descriptors to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @otg_desc, ptr %descriptors, align 4
  %bmAttributes = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 7
  %7 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bmAttributes, align 2
  %9 = or i8 %8, 32
  store i8 %9, ptr %bmAttributes, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = load ptr, ptr @fi_ecm, align 4
  %call2 = tail call ptr @usb_get_function(ptr noundef %10) #4
  store ptr %call2, ptr @f_ecm, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.err_add_ecm_crit_edge

if.end6.err_add_ecm_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_add_ecm

if.end10:                                         ; preds = %if.end6
  %12 = load ptr, ptr @fi_serial, align 4
  %call11 = tail call ptr @usb_get_function(ptr noundef %12) #4
  store ptr %call11, ptr @f_acm, align 4
  %cmp.i27 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %call11 to i32
  br label %err_get_acm

if.end15:                                         ; preds = %if.end10
  %call16 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %err_add_acm

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_add_acm:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %14 = load ptr, ptr @f_acm, align 4
  tail call void @usb_put_function(ptr noundef %14) #4
  br label %err_get_acm

err_get_acm:                                      ; preds = %err_add_acm, %if.then13
  %status.0 = phi i32 [ %13, %if.then13 ], [ %call16, %err_add_acm ]
  %15 = load ptr, ptr @f_ecm, align 4
  tail call void @usb_remove_function(ptr noundef %c, ptr noundef %15) #4
  br label %err_add_ecm

err_add_ecm:                                      ; preds = %err_get_acm, %if.end6.err_add_ecm_crit_edge
  %status.1 = phi i32 [ %call7, %if.end6.err_add_ecm_crit_edge ], [ %status.0, %err_get_acm ]
  %16 = load ptr, ptr @f_ecm, align 4
  tail call void @usb_put_function(ptr noundef %16) #4
  br label %cleanup

cleanup:                                          ; preds = %err_add_ecm, %if.end15.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ 0, %if.end15.cleanup_crit_edge ], [ %11, %if.then4 ], [ %status.1, %err_add_ecm ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_overwrite_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !74, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__param_idVendor, !1, !"__param_idVendor", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_idVendortype337, !1, !"__UNIQUE_ID_idVendortype337", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_idVendor338, !1, !"__UNIQUE_ID_idVendor338", i1 false, i1 false}
!4 = !{ptr @__param_idProduct, !1, !"__param_idProduct", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_idProducttype339, !1, !"__UNIQUE_ID_idProducttype339", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_idProduct340, !1, !"__UNIQUE_ID_idProduct340", i1 false, i1 false}
!7 = !{ptr @__param_bcdDevice, !1, !"__param_bcdDevice", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_bcdDevicetype341, !1, !"__UNIQUE_ID_bcdDevicetype341", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_bcdDevice342, !1, !"__UNIQUE_ID_bcdDevice342", i1 false, i1 false}
!10 = !{ptr @__param_iSerialNumber, !1, !"__param_iSerialNumber", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_iSerialNumbertype343, !1, !"__UNIQUE_ID_iSerialNumbertype343", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_iSerialNumber344, !1, !"__UNIQUE_ID_iSerialNumber344", i1 false, i1 false}
!13 = !{ptr @__param_iManufacturer, !1, !"__param_iManufacturer", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_iManufacturertype345, !1, !"__UNIQUE_ID_iManufacturertype345", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_iManufacturer346, !1, !"__UNIQUE_ID_iManufacturer346", i1 false, i1 false}
!16 = !{ptr @__param_iProduct, !1, !"__param_iProduct", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_iProducttype347, !1, !"__UNIQUE_ID_iProducttype347", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_iProduct348, !1, !"__UNIQUE_ID_iProduct348", i1 false, i1 false}
!19 = !{ptr @__param_qmult, !20, !"__param_qmult", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 34, i32 1}
!21 = !{ptr @__UNIQUE_ID_qmulttype349, !20, !"__UNIQUE_ID_qmulttype349", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_qmult350, !20, !"__UNIQUE_ID_qmult350", i1 false, i1 false}
!23 = !{ptr @__param_dev_addr, !20, !"__param_dev_addr", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_dev_addrtype351, !20, !"__UNIQUE_ID_dev_addrtype351", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_dev_addr352, !20, !"__UNIQUE_ID_dev_addr352", i1 false, i1 false}
!26 = !{ptr @__param_host_addr, !20, !"__param_host_addr", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_host_addrtype353, !20, !"__UNIQUE_ID_host_addrtype353", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_host_addr354, !20, !"__UNIQUE_ID_host_addr354", i1 false, i1 false}
!29 = !{ptr @__initcall__kmod_g_cdc__355_235_cdc_driver_init6, !30, !"__initcall__kmod_g_cdc__355_235_cdc_driver_init6", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 235, i32 1}
!31 = !{ptr @__exitcall_cdc_driver_exit, !30, !"__exitcall_cdc_driver_exit", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_description356, !33, !"__UNIQUE_ID_description356", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 237, i32 1}
!34 = !{ptr @__UNIQUE_ID_author357, !35, !"__UNIQUE_ID_author357", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 238, i32 1}
!36 = !{ptr @__UNIQUE_ID_file358, !37, !"__UNIQUE_ID_file358", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 239, i32 1}
!38 = !{ptr @__UNIQUE_ID_license359, !37, !"__UNIQUE_ID_license359", i1 false, i1 false}
!39 = !{ptr @coverwrite, !1, !"coverwrite", i1 false, i1 false}
!40 = !{ptr @dev_addr, !20, !"dev_addr", i1 false, i1 false}
!41 = !{ptr @host_addr, !20, !"host_addr", i1 false, i1 false}
!42 = !{ptr @__param_str_idVendor, !1, !"__param_str_idVendor", i1 false, i1 false}
!43 = !{ptr @__param_str_idProduct, !1, !"__param_str_idProduct", i1 false, i1 false}
!44 = !{ptr @__param_str_bcdDevice, !1, !"__param_str_bcdDevice", i1 false, i1 false}
!45 = !{ptr @__param_str_iSerialNumber, !1, !"__param_str_iSerialNumber", i1 false, i1 false}
!46 = !{ptr @__param_str_iManufacturer, !1, !"__param_str_iManufacturer", i1 false, i1 false}
!47 = !{ptr @__param_str_iProduct, !1, !"__param_str_iProduct", i1 false, i1 false}
!48 = !{ptr @__param_str_qmult, !20, !"__param_str_qmult", i1 false, i1 false}
!49 = !{ptr @qmult, !20, !"qmult", i1 false, i1 false}
!50 = !{ptr @__param_str_dev_addr, !20, !"__param_str_dev_addr", i1 false, i1 false}
!51 = !{ptr @__param_str_host_addr, !20, !"__param_str_host_addr", i1 false, i1 false}
!52 = !{ptr @.str, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 227, i32 11}
!54 = !{ptr @cdc_driver, !55, !"cdc_driver", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 226, i32 36}
!56 = !{ptr @device_desc, !57, !"device_desc", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 38, i32 37}
!58 = !{ptr @dev_strings, !59, !"dev_strings", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 74, i32 35}
!60 = !{ptr @stringtab_dev, !61, !"stringtab_dev", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 69, i32 34}
!62 = !{ptr @.str.1, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 63, i32 36}
!64 = !{ptr @.str.2, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 64, i32 31}
!66 = !{ptr @strings_dev, !67, !"strings_dev", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 62, i32 26}
!68 = !{ptr @.str.3, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 145, i32 3}
!70 = !{ptr @.str.4, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.5, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.6, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.7, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @cdc_bind._entry, !69, !"_entry", i1 false, i1 false}
!75 = !{ptr @cdc_bind._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.8, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 150, i32 37}
!78 = !{ptr @.str.10, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 158, i32 3}
!80 = !{ptr @cdc_bind._entry.9, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @cdc_bind._entry_ptr.11, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.13, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 160, i32 3}
!84 = !{ptr @cdc_bind._entry.12, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @cdc_bind._entry_ptr.14, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.15, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 162, i32 40}
!88 = !{ptr @.str.17, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 197, i32 2}
!90 = !{ptr @.str.18, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @cdc_bind._entry.16, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @cdc_bind._entry_ptr.19, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @fi_ecm, !94, !"fi_ecm", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 84, i32 38}
!95 = !{ptr @fi_serial, !96, !"fi_serial", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 81, i32 38}
!97 = !{ptr @otg_desc, !98, !"otg_desc", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 59, i32 44}
!99 = !{ptr @.str.20, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 130, i32 13}
!101 = !{ptr @cdc_config_driver, !102, !"cdc_config_driver", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 129, i32 33}
!103 = !{ptr @f_ecm, !104, !"f_ecm", i1 false, i1 false}
!104 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 83, i32 29}
!105 = !{ptr @f_acm, !106, !"f_acm", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/legacy/cdc2.c", i32 80, i32 29}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
