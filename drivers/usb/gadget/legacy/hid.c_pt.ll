; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/hid.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/hid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.usb_composite_overwrite = type { i16, i16, i16, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hidg_func_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.f_hid_opts = type { %struct.usb_function_instance, i32, i8, i8, i8, i16, i16, ptr, i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.hidg_func_descriptor = type { i8, i8, i16, i16, [0 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }

@__param_str_idVendor = internal constant [15 x i8] c"g_hid.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype228 = internal constant [31 x i8] c"g_hid.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor229 = internal constant [34 x i8] c"g_hid.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [16 x i8] c"g_hid.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype230 = internal constant [32 x i8] c"g_hid.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct231 = internal constant [36 x i8] c"g_hid.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [16 x i8] c"g_hid.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype232 = internal constant [32 x i8] c"g_hid.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice233 = internal constant [46 x i8] c"g_hid.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [20 x i8] c"g_hid.iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype234 = internal constant [35 x i8] c"g_hid.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber235 = internal constant [45 x i8] c"g_hid.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [20 x i8] c"g_hid.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype236 = internal constant [35 x i8] c"g_hid.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer237 = internal constant [49 x i8] c"g_hid.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [15 x i8] c"g_hid.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype238 = internal constant [30 x i8] c"g_hid.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct239 = internal constant [39 x i8] c"g_hid.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [29 x i8] c"g_hid.description=HID Gadget\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [46 x i8] c"g_hid.author=Fabien Chouteau, Peter Korsgaard\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [43 x i8] c"g_hid.file=drivers/usb/gadget/legacy/g_hid\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [18 x i8] c"g_hid.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_g_hid__244_294_hidg_init6 = internal global ptr @hidg_init, section ".initcall6.init", align 4
@hidg_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @.str.5, ptr @device_desc, ptr @dev_strings, i32 3, i8 0, ptr @hid_bind, ptr @hid_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@hidg_plat_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @hidg_plat_driver_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.12, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hidg_cleanup = internal global ptr @hidg_cleanup, section ".exitcall.exit", align 4
@hidg_plat_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 228, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Platform data missing\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hidg_plat_driver_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/gadget/legacy/hid.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hidg_plat_driver_probe._entry_ptr = internal global ptr @hidg_plat_driver_probe._entry, section ".printk_index", align 4
@hidg_func_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hidg_func_list, ptr @hidg_func_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"g_hid\00", [26 x i8] zeroinitializer }, align 32
@device_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 0, i8 0, i8 0, i8 0, i16 9477, i16 -21340, i16 0, i8 0, i8 0, i8 0, i8 1 }, [46 x i8] zeroinitializer }, align 32
@dev_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stringtab_dev, ptr null], [24 x i8] zeroinitializer }, align 32
@stringtab_dev = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_dev }, [24 x i8] zeroinitializer }, align 32
@strings_dev = internal global { [4 x %struct.usb_string], [32 x i8] } { [4 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.6 }, %struct.usb_string { i8 0, ptr @.str.7 }, %struct.usb_string { i8 0, ptr @.str.6 }, %struct.usb_string zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HID Gadget\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hid\00", [28 x i8] zeroinitializer }, align 32
@otg_desc = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@config_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr @.str.7, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@hid_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 191, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HID Gadget, version: 2010/03/16\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hid_bind\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hid_bind._entry_ptr = internal global ptr @hid_bind._entry, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hidg\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 40, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"hidg_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 258, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"hidg_plat_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 267, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 228, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"hidg_func_list\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 37, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 259, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"device_desc\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 42, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"dev_strings\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 81, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"stringtab_dev\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 76, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"strings_dev\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 69, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 70, i32 36 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 71, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 148, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"otg_desc\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 66, i32 44 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"config_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 124, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 191, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [35 x i8] c"../drivers/usb/gadget/legacy/hid.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 270, i32 11 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_bcdDevice233, ptr @__UNIQUE_ID_bcdDevicetype232, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_iManufacturer237, ptr @__UNIQUE_ID_iManufacturertype236, ptr @__UNIQUE_ID_iProduct239, ptr @__UNIQUE_ID_iProducttype238, ptr @__UNIQUE_ID_iSerialNumber235, ptr @__UNIQUE_ID_iSerialNumbertype234, ptr @__UNIQUE_ID_idProduct231, ptr @__UNIQUE_ID_idProducttype230, ptr @__UNIQUE_ID_idVendor229, ptr @__UNIQUE_ID_idVendortype228, ptr @__UNIQUE_ID_license243, ptr @__exitcall_hidg_cleanup, ptr @__initcall__kmod_g_hid__244_294_hidg_init6, ptr @__param_bcdDevice, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @hid_bind._entry, ptr @hid_bind._entry_ptr, ptr @hidg_cleanup, ptr @hidg_plat_driver_probe._entry, ptr @hidg_plat_driver_probe._entry_ptr, ptr @coverwrite, ptr @hidg_driver, ptr @hidg_plat_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @hidg_func_list, ptr @.str.5, ptr @device_desc, ptr @dev_strings, ptr @stringtab_dev, ptr @strings_dev, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @otg_desc, ptr @config_driver, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_plat_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_plat_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_func_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stringtab_dev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_dev to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hidg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @hidg_plat_driver, ptr noundef nonnull @hidg_plat_driver_probe, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @usb_composite_probe(ptr noundef nonnull @hidg_driver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @hidg_plat_driver) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hidg_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_composite_unregister(ptr noundef nonnull @hidg_driver) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @hidg_plat_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidg_plat_driver_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #9
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %func7 = getelementptr inbounds %struct.hidg_func_node, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %func7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %func7, align 8
  %node = getelementptr inbounds %struct.hidg_func_node, ptr %call7.i.i, i32 0, i32 2
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hidg_func_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %4, ptr noundef nonnull @hidg_func_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @hidg_func_list, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @hidg_func_list, ptr %node, align 8
  %prev3.i.i = getelementptr inbounds %struct.hidg_func_node, ptr %call7.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %node, ptr %4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_bind(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %funcs.0 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.cond_crit_edge ]
  %tmp.0.in = phi ptr [ @hidg_func_list, %entry ], [ %tmp.0, %for.cond.for.cond_crit_edge ]
  %2 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, @hidg_func_list
  %inc = add i32 %funcs.0, 1
  br i1 %cmp.i.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %funcs.0)
  %tobool2.not = icmp eq i32 %funcs.0, 0
  br i1 %tobool2.not, label %for.end.cleanup71_crit_edge, label %for.cond4.preheader

for.end.cleanup71_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup71

for.cond4.preheader:                              ; preds = %for.end
  %.pn116 = load ptr, ptr @hidg_func_list, align 4
  %cmp.not117 = icmp eq ptr %.pn116, @hidg_func_list
  br i1 %cmp.not117, label %for.cond4.preheader.for.end33_crit_edge, label %for.cond4.preheader.for.body6_crit_edge

for.cond4.preheader.for.body6_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body6

for.cond4.preheader.for.end33_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end33

for.body6:                                        ; preds = %if.end13.for.body6_crit_edge, %for.cond4.preheader.for.body6_crit_edge
  %.pn118 = phi ptr [ %.pn, %if.end13.for.body6_crit_edge ], [ %.pn116, %for.cond4.preheader.for.body6_crit_edge ]
  %n.0 = getelementptr i8, ptr %.pn118, i32 -8
  %call7 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.8) #5
  %3 = ptrtoint ptr %n.0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %n.0, align 4
  %cmp.i110 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then10, label %if.end13

if.then10:                                        ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call7 to i32
  br label %put

if.end13:                                         ; preds = %for.body6
  %func = getelementptr i8, ptr %.pn118, i32 8
  %5 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %func, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 2
  %subclass18 = getelementptr inbounds %struct.f_hid_opts, ptr %call7, i32 0, i32 2
  %9 = ptrtoint ptr %subclass18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %subclass18, align 4
  %10 = load ptr, ptr %func, align 4
  %protocol = getelementptr inbounds %struct.hidg_func_descriptor, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %protocol, align 1
  %protocol20 = getelementptr inbounds %struct.f_hid_opts, ptr %call7, i32 0, i32 3
  %13 = ptrtoint ptr %protocol20 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %protocol20, align 1
  %14 = load ptr, ptr %func, align 4
  %report_length = getelementptr inbounds %struct.hidg_func_descriptor, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %report_length to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %report_length, align 2
  %report_length22 = getelementptr inbounds %struct.f_hid_opts, ptr %call7, i32 0, i32 5
  %17 = ptrtoint ptr %report_length22 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %report_length22, align 4
  %18 = load ptr, ptr %func, align 4
  %report_desc_length = getelementptr inbounds %struct.hidg_func_descriptor, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %report_desc_length to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %report_desc_length, align 2
  %report_desc_length24 = getelementptr inbounds %struct.f_hid_opts, ptr %call7, i32 0, i32 6
  %21 = ptrtoint ptr %report_desc_length24 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %report_desc_length24, align 2
  %22 = load ptr, ptr %func, align 4
  %report_desc = getelementptr inbounds %struct.hidg_func_descriptor, ptr %22, i32 0, i32 4
  %report_desc26 = getelementptr inbounds %struct.f_hid_opts, ptr %call7, i32 0, i32 7
  %23 = ptrtoint ptr %report_desc26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %report_desc, ptr %report_desc26, align 4
  %24 = ptrtoint ptr %.pn118 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn118, align 4
  %cmp.not = icmp eq ptr %.pn, @hidg_func_list
  br i1 %cmp.not, label %if.end13.for.end33_crit_edge, label %if.end13.for.body6_crit_edge

if.end13.for.body6_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6

if.end13.for.end33_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end33

for.end33:                                        ; preds = %if.end13.for.end33_crit_edge, %for.cond4.preheader.for.end33_crit_edge
  %call34 = tail call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @strings_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %for.end33.put_crit_edge, label %if.end37

for.end33.put_crit_edge:                          ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %put

if.end37:                                         ; preds = %for.end33
  %25 = load i8, ptr @strings_dev, align 4
  store i8 %25, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 10), align 1
  %26 = load i8, ptr getelementptr inbounds ([4 x %struct.usb_string], ptr @strings_dev, i32 0, i32 1), align 4
  store i8 %26, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 11), align 1
  %is_otg.i = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 17
  %27 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i = load i32, ptr %is_otg.i, align 4
  %28 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool39.not = icmp eq i32 %28, 0
  br i1 %tobool39.not, label %if.end37.if.end47_crit_edge, label %land.lhs.true

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end37
  %29 = load ptr, ptr @otg_desc, align 4
  %tobool40.not = icmp eq ptr %29, null
  br i1 %tobool40.not, label %if.then41, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then41:                                        ; preds = %land.lhs.true
  %call42 = tail call ptr @usb_otg_descriptor_alloc(ptr noundef %1) #5
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.then41.put_crit_edge, label %cleanup.thread

if.then41.put_crit_edge:                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %put

cleanup.thread:                                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  %call46 = tail call i32 @usb_otg_descriptor_init(ptr noundef %1, ptr noundef nonnull %call42) #5
  store ptr %call42, ptr @otg_desc, align 4
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @otg_desc, i32 0, i32 1), align 4
  br label %if.end47

if.end47:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %call48 = tail call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @config_driver, ptr noundef nonnull @do_config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %free_otg_desc, label %if.end51

if.end51:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #5
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup71

free_otg_desc:                                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %30 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %30) #5
  store ptr null, ptr @otg_desc, align 4
  br label %put

put:                                              ; preds = %free_otg_desc, %if.then41.put_crit_edge, %for.end33.put_crit_edge, %if.then10
  %.pn115 = phi ptr [ %.pn118, %if.then10 ], [ @hidg_func_list, %for.end33.put_crit_edge ], [ @hidg_func_list, %free_otg_desc ], [ @hidg_func_list, %if.then41.put_crit_edge ]
  %status.1 = phi i32 [ %4, %if.then10 ], [ %call34, %for.end33.put_crit_edge ], [ %call48, %free_otg_desc ], [ -12, %if.then41.put_crit_edge ]
  %.pn108119 = load ptr, ptr @hidg_func_list, align 4
  %cmp57.not120 = icmp eq ptr %.pn108119, @hidg_func_list
  %cmp60121 = icmp eq ptr %.pn108119, %.pn115
  %or.cond122 = select i1 %cmp57.not120, i1 true, i1 %cmp60121
  br i1 %or.cond122, label %put.cleanup71_crit_edge, label %put.if.end62_crit_edge

put.if.end62_crit_edge:                           ; preds = %put
  br label %if.end62

put.cleanup71_crit_edge:                          ; preds = %put
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup71

if.end62:                                         ; preds = %if.end62.if.end62_crit_edge, %put.if.end62_crit_edge
  %.pn108123 = phi ptr [ %.pn108, %if.end62.if.end62_crit_edge ], [ %.pn108119, %put.if.end62_crit_edge ]
  %m.0 = getelementptr i8, ptr %.pn108123, i32 -8
  %31 = ptrtoint ptr %m.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m.0, align 4
  tail call void @usb_put_function_instance(ptr noundef %32) #5
  %33 = ptrtoint ptr %.pn108123 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn108 = load ptr, ptr %.pn108123, align 4
  %cmp57.not = icmp eq ptr %.pn108, @hidg_func_list
  %cmp60 = icmp eq ptr %.pn108, %.pn115
  %or.cond = select i1 %cmp57.not, i1 true, i1 %cmp60
  br i1 %or.cond, label %if.end62.cleanup71_crit_edge, label %if.end62.if.end62_crit_edge

if.end62.if.end62_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.end62.cleanup71_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup71

cleanup71:                                        ; preds = %if.end62.cleanup71_crit_edge, %put.cleanup71_crit_edge, %if.end51, %for.end.cleanup71_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ -19, %for.end.cleanup71_crit_edge ], [ %status.1, %put.cleanup71_crit_edge ], [ %status.1, %if.end62.cleanup71_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_unbind(ptr nocapture noundef readnone %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn8 = load ptr, ptr @hidg_func_list, align 4
  %cmp.not9 = icmp eq ptr %.pn8, @hidg_func_list
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn10 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn8, %entry.for.body_crit_edge ]
  %n.0 = getelementptr i8, ptr %.pn10, i32 -8
  %f = getelementptr i8, ptr %.pn10, i32 -4
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 4
  tail call void @usb_put_function(ptr noundef %1) #5
  %2 = ptrtoint ptr %n.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %n.0, align 4
  tail call void @usb_put_function_instance(ptr noundef %3) #5
  %4 = ptrtoint ptr %.pn10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn10, align 4
  %cmp.not = icmp eq ptr %.pn, @hidg_func_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %5 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %5) #5
  store ptr null, ptr @otg_desc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_ids_tab(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_descriptor_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_otg_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_config(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %tobool.not, label %entry.for.cond.preheader_crit_edge, label %if.then

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %if.end9.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %if.end9.for.cond_crit_edge ], [ @hidg_func_list, %for.cond.preheader ]
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @hidg_func_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %e.0 = getelementptr i8, ptr %.pn, i32 -8
  %11 = ptrtoint ptr %e.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %e.0, align 4
  %call3 = tail call ptr @usb_get_function(ptr noundef %12) #5
  %f = getelementptr i8, ptr %.pn, i32 -4
  %13 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3, ptr %f, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call3 to i32
  br label %put

if.end9:                                          ; preds = %for.body
  %call11 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call3) #5
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end9.for.cond_crit_edge

if.end9.for.cond_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %f.le = getelementptr i8, ptr %.pn, i32 -4
  %15 = ptrtoint ptr %f.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f.le, align 4
  tail call void @usb_put_function(ptr noundef %16) #5
  br label %put

put:                                              ; preds = %if.then14, %if.then6
  %status.0 = phi i32 [ %14, %if.then6 ], [ %call11, %if.then14 ]
  %.pn6269 = load ptr, ptr @hidg_func_list, align 4
  %cmp26.not70 = icmp eq ptr %.pn6269, @hidg_func_list
  %cmp3071 = icmp eq ptr %.pn6269, %.pn
  %or.cond72 = select i1 %cmp26.not70, i1 true, i1 %cmp3071
  br i1 %or.cond72, label %put.cleanup_crit_edge, label %put.if.end33_crit_edge

put.if.end33_crit_edge:                           ; preds = %put
  br label %if.end33

put.cleanup_crit_edge:                            ; preds = %put
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end33.if.end33_crit_edge, %put.if.end33_crit_edge
  %.pn6273 = phi ptr [ %.pn62, %if.end33.if.end33_crit_edge ], [ %.pn6269, %put.if.end33_crit_edge ]
  %f34 = getelementptr i8, ptr %.pn6273, i32 -4
  %17 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %f34, align 4
  tail call void @usb_remove_function(ptr noundef %c, ptr noundef %18) #5
  %19 = ptrtoint ptr %f34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f34, align 4
  tail call void @usb_put_function(ptr noundef %20) #5
  %21 = ptrtoint ptr %.pn6273 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn62 = load ptr, ptr %.pn6273, align 4
  %cmp26.not = icmp eq ptr %.pn62, @hidg_func_list
  %cmp30 = icmp eq ptr %.pn62, %.pn
  %or.cond = select i1 %cmp26.not, i1 true, i1 %cmp30
  br i1 %or.cond, label %if.end33.cleanup_crit_edge, label %if.end33.if.end33_crit_edge

if.end33.if.end33_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end33.cleanup_crit_edge, %put.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %put.cleanup_crit_edge ], [ %status.0, %if.end33.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidg_plat_driver_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hidg_func_list, align 4
  %cmp.not16 = icmp eq ptr %0, @hidg_func_list
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in17 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %e.0 = getelementptr i8, ptr %.pn.in17, i32 -8
  %1 = ptrtoint ptr %.pn.in17 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in17, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in17) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in17, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %.pn.in17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.pn.in17, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %.pn.in17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in17, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in17, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %e.0) #5
  %cmp.not = icmp eq ptr %.pn, @hidg_func_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !23, !25, !26, !28, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !71, !73, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__param_idVendor, !1, !"__param_idVendor", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_idVendortype228, !1, !"__UNIQUE_ID_idVendortype228", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_idVendor229, !1, !"__UNIQUE_ID_idVendor229", i1 false, i1 false}
!4 = !{ptr @__param_idProduct, !1, !"__param_idProduct", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_idProducttype230, !1, !"__UNIQUE_ID_idProducttype230", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_idProduct231, !1, !"__UNIQUE_ID_idProduct231", i1 false, i1 false}
!7 = !{ptr @__param_bcdDevice, !1, !"__param_bcdDevice", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_bcdDevicetype232, !1, !"__UNIQUE_ID_bcdDevicetype232", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_bcdDevice233, !1, !"__UNIQUE_ID_bcdDevice233", i1 false, i1 false}
!10 = !{ptr @__param_iSerialNumber, !1, !"__param_iSerialNumber", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_iSerialNumbertype234, !1, !"__UNIQUE_ID_iSerialNumbertype234", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_iSerialNumber235, !1, !"__UNIQUE_ID_iSerialNumber235", i1 false, i1 false}
!13 = !{ptr @__param_iManufacturer, !1, !"__param_iManufacturer", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_iManufacturertype236, !1, !"__UNIQUE_ID_iManufacturertype236", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_iManufacturer237, !1, !"__UNIQUE_ID_iManufacturer237", i1 false, i1 false}
!16 = !{ptr @__param_iProduct, !1, !"__param_iProduct", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_iProducttype238, !1, !"__UNIQUE_ID_iProducttype238", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_iProduct239, !1, !"__UNIQUE_ID_iProduct239", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_description240, !20, !"__UNIQUE_ID_description240", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 275, i32 1}
!21 = !{ptr @__UNIQUE_ID_author241, !22, !"__UNIQUE_ID_author241", i1 false, i1 false}
!22 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 276, i32 1}
!23 = !{ptr @__UNIQUE_ID_file242, !24, !"__UNIQUE_ID_file242", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 277, i32 1}
!25 = !{ptr @__UNIQUE_ID_license243, !24, !"__UNIQUE_ID_license243", i1 false, i1 false}
!26 = !{ptr @__initcall__kmod_g_hid__244_294_hidg_init6, !27, !"__initcall__kmod_g_hid__244_294_hidg_init6", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 294, i32 1}
!28 = !{ptr @__exitcall_hidg_cleanup, !29, !"__exitcall_hidg_cleanup", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 301, i32 1}
!30 = !{ptr @coverwrite, !1, !"coverwrite", i1 false, i1 false}
!31 = !{ptr @__param_str_idVendor, !1, !"__param_str_idVendor", i1 false, i1 false}
!32 = !{ptr @__param_str_idProduct, !1, !"__param_str_idProduct", i1 false, i1 false}
!33 = !{ptr @__param_str_bcdDevice, !1, !"__param_str_bcdDevice", i1 false, i1 false}
!34 = !{ptr @__param_str_iSerialNumber, !1, !"__param_str_iSerialNumber", i1 false, i1 false}
!35 = !{ptr @__param_str_iManufacturer, !1, !"__param_str_iManufacturer", i1 false, i1 false}
!36 = !{ptr @__param_str_iProduct, !1, !"__param_str_iProduct", i1 false, i1 false}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 228, i32 3}
!39 = !{ptr @.str.1, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hidg_plat_driver_probe._entry, !38, !"_entry", i1 false, i1 false}
!44 = !{ptr @hidg_plat_driver_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @hidg_func_list, !46, !"hidg_func_list", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 37, i32 8}
!47 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 259, i32 11}
!49 = !{ptr @hidg_driver, !50, !"hidg_driver", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 258, i32 36}
!51 = !{ptr @device_desc, !52, !"device_desc", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 42, i32 37}
!53 = !{ptr @dev_strings, !54, !"dev_strings", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 81, i32 35}
!55 = !{ptr @stringtab_dev, !56, !"stringtab_dev", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 76, i32 34}
!57 = !{ptr @.str.6, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 70, i32 36}
!59 = !{ptr @.str.7, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 71, i32 31}
!61 = !{ptr @strings_dev, !62, !"strings_dev", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 69, i32 26}
!63 = !{ptr @.str.8, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 148, i32 37}
!65 = !{ptr @.str.9, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 191, i32 2}
!67 = !{ptr @.str.10, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @hid_bind._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @hid_bind._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @otg_desc, !72, !"otg_desc", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 66, i32 44}
!73 = !{ptr @config_driver, !74, !"config_driver", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 124, i32 33}
!75 = !{ptr @.str.12, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 270, i32 11}
!77 = !{ptr @hidg_plat_driver, !78, !"hidg_plat_driver", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/legacy/hid.c", i32 267, i32 31}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
