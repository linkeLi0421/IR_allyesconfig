; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/tcm_usb_gadget.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/tcm_usb_gadget.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.usb_composite_overwrite = type { i16, i16, i16, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.f_tcm_opts = type { %struct.usb_function_instance, ptr, %struct.mutex, i8, i8, i8, ptr, ptr }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__param_str_idVendor = internal constant [24 x i8] c"tcm_usb_gadget.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype281 = internal constant [40 x i8] c"tcm_usb_gadget.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor282 = internal constant [43 x i8] c"tcm_usb_gadget.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [25 x i8] c"tcm_usb_gadget.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype283 = internal constant [41 x i8] c"tcm_usb_gadget.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct284 = internal constant [45 x i8] c"tcm_usb_gadget.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [25 x i8] c"tcm_usb_gadget.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype285 = internal constant [41 x i8] c"tcm_usb_gadget.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice286 = internal constant [55 x i8] c"tcm_usb_gadget.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [29 x i8] c"tcm_usb_gadget.iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype287 = internal constant [44 x i8] c"tcm_usb_gadget.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber288 = internal constant [54 x i8] c"tcm_usb_gadget.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [29 x i8] c"tcm_usb_gadget.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype289 = internal constant [44 x i8] c"tcm_usb_gadget.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer290 = internal constant [58 x i8] c"tcm_usb_gadget.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [24 x i8] c"tcm_usb_gadget.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.76 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype291 = internal constant [39 x i8] c"tcm_usb_gadget.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct292 = internal constant [48 x i8] c"tcm_usb_gadget.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__initcall__kmod_tcm_usb_gadget__293_161_usb_target_gadget_init6 = internal global ptr @usb_target_gadget_init, section ".initcall6.init", align 4
@fi_tcm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_usb_target_gadget_exit = internal global ptr @usb_target_gadget_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [72 x i8] c"tcm_usb_gadget.author=Sebastian Andrzej Siewior <bigeasy@linutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [45 x i8] c"tcm_usb_gadget.description=usb-gadget fabric\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [61 x i8] c"tcm_usb_gadget.file=drivers/usb/gadget/legacy/tcm_usb_gadget\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [30 x i8] c"tcm_usb_gadget.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcm\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tcm-legacy\00", [21 x i8] zeroinitializer }, align 32
@usbg_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @.str.2, ptr @usbg_device_desc, ptr @usbg_strings, i32 5, i8 0, ptr @usb_target_bind, ptr @guas_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"g_target\00", [23 x i8] zeroinitializer }, align 32
@usbg_device_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 0, i8 0, i8 0, i8 0, i16 9477, i16 -23132, i16 0, i8 0, i8 0, i8 0, i8 1 }, [46 x i8] zeroinitializer }, align 32
@usbg_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @usbg_stringtab, ptr null], [24 x i8] zeroinitializer }, align 32
@usbg_stringtab = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @usbg_us_strings }, [24 x i8] zeroinitializer }, align 32
@usbg_us_strings = internal global { [5 x %struct.usb_string], [56 x i8] } { [5 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.3 }, %struct.usb_string { i8 0, ptr @.str.4 }, %struct.usb_string { i8 0, ptr @.str.5 }, %struct.usb_string { i8 0, ptr @.str.6 }, %struct.usb_string zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Target Manufacturer\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Target Product\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"000000000001\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"default config\00", [17 x i8] zeroinitializer }, align 32
@usbg_config_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr @.str.7, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Linux Target\00", [19 x i8] zeroinitializer }, align 32
@f_tcm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 26, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"fi_tcm\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 61, i32 38 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 144, i32 37 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 157, i32 32 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"usbg_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 121, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 122, i32 20 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"usbg_device_desc\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 31, i32 37 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"usbg_strings\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 56, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"usbg_stringtab\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 51, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"usbg_us_strings\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 43, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 44, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 45, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 46, i32 30 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 47, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"usbg_config_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 89, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 90, i32 28 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"f_tcm\00", align 1
@___asan_gen_.57 = private constant [46 x i8] c"../drivers/usb/gadget/legacy/tcm_usb_gadget.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 62, i32 29 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_bcdDevice286, ptr @__UNIQUE_ID_bcdDevicetype285, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_iManufacturer290, ptr @__UNIQUE_ID_iManufacturertype289, ptr @__UNIQUE_ID_iProduct292, ptr @__UNIQUE_ID_iProducttype291, ptr @__UNIQUE_ID_iSerialNumber288, ptr @__UNIQUE_ID_iSerialNumbertype287, ptr @__UNIQUE_ID_idProduct284, ptr @__UNIQUE_ID_idProducttype283, ptr @__UNIQUE_ID_idVendor282, ptr @__UNIQUE_ID_idVendortype281, ptr @__UNIQUE_ID_license297, ptr @__exitcall_usb_target_gadget_exit, ptr @__initcall__kmod_tcm_usb_gadget__293_161_usb_target_gadget_init6, ptr @__param_bcdDevice, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @usb_target_gadget_exit, ptr @coverwrite, ptr @fi_tcm, ptr @.str, ptr @.str.1, ptr @usbg_driver, ptr @.str.2, ptr @usbg_device_desc, ptr @usbg_strings, ptr @usbg_stringtab, ptr @usbg_us_strings, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @usbg_config_driver, ptr @.str.7, ptr @f_tcm], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_tcm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_device_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_stringtab to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_us_strings to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbg_config_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_tcm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_target_gadget_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str) #3
  store ptr %call, ptr @fi_tcm, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dep_lock = getelementptr inbounds %struct.f_tcm_opts, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dep_lock, i32 noundef 0) #3
  %tcm_register_callback = getelementptr inbounds %struct.f_tcm_opts, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %tcm_register_callback to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @usbg_attach, ptr %tcm_register_callback, align 4
  %tcm_unregister_callback = getelementptr inbounds %struct.f_tcm_opts, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %tcm_unregister_callback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @usbg_detach, ptr %tcm_unregister_callback, align 4
  %dependent = getelementptr inbounds %struct.f_tcm_opts, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %dependent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dependent, align 4
  %can_attach = getelementptr inbounds %struct.f_tcm_opts, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %can_attach to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %can_attach, align 1
  %has_dep = getelementptr inbounds %struct.f_tcm_opts, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %has_dep to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %has_dep, align 2
  tail call void @mutex_unlock(ptr noundef %dep_lock) #3
  %6 = load ptr, ptr @fi_tcm, align 4
  %set_inst_name = getelementptr inbounds %struct.usb_function_instance, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %set_inst_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_inst_name, align 4
  %call4 = tail call i32 %8(ptr noundef %6, ptr noundef nonnull @.str.1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_target_gadget_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = load ptr, ptr @fi_tcm, align 4
  %tobool.not.i = icmp eq ptr %0, null
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @usb_put_function_instance(ptr noundef nonnull %0) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbg_attach(ptr nocapture noundef readnone %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_composite_probe(ptr noundef nonnull @usbg_driver) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbg_detach(ptr nocapture noundef readnone %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_composite_unregister(ptr noundef nonnull @usbg_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_target_bind(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @usbg_us_strings) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @usbg_us_strings, align 4
  store i8 %0, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @usbg_device_desc, i32 0, i32 10), align 1
  %1 = load i8, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @usbg_us_strings, i32 0, i32 1), align 4
  store i8 %1, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @usbg_device_desc, i32 0, i32 11), align 1
  %2 = load i8, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @usbg_us_strings, i32 0, i32 2), align 4
  store i8 %2, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @usbg_device_desc, i32 0, i32 12), align 1
  %3 = load i8, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @usbg_us_strings, i32 0, i32 3), align 4
  store i8 %3, ptr getelementptr inbounds (%struct.usb_configuration, ptr @usbg_config_driver, i32 0, i32 6), align 1
  %call1 = tail call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @usbg_config_driver, ptr noundef nonnull @tcm_do_config) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @guas_unbind(ptr nocapture noundef readnone %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @f_tcm, align 4
  %tobool.not.i = icmp eq ptr %0, null
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @usb_put_function(ptr noundef nonnull %0) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_ids_tab(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcm_do_config(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fi_tcm, align 4
  %call = tail call ptr @usb_get_function(ptr noundef %0) #3
  store ptr %call, ptr @f_tcm, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %2 = load ptr, ptr @f_tcm, align 4
  tail call void @usb_put_function(ptr noundef %2) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_overwrite_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__param_idVendor, !1, !"__param_idVendor", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_idVendortype281, !1, !"__UNIQUE_ID_idVendortype281", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_idVendor282, !1, !"__UNIQUE_ID_idVendor282", i1 false, i1 false}
!4 = !{ptr @__param_idProduct, !1, !"__param_idProduct", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_idProducttype283, !1, !"__UNIQUE_ID_idProducttype283", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_idProduct284, !1, !"__UNIQUE_ID_idProduct284", i1 false, i1 false}
!7 = !{ptr @__param_bcdDevice, !1, !"__param_bcdDevice", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_bcdDevicetype285, !1, !"__UNIQUE_ID_bcdDevicetype285", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_bcdDevice286, !1, !"__UNIQUE_ID_bcdDevice286", i1 false, i1 false}
!10 = !{ptr @__param_iSerialNumber, !1, !"__param_iSerialNumber", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_iSerialNumbertype287, !1, !"__UNIQUE_ID_iSerialNumbertype287", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_iSerialNumber288, !1, !"__UNIQUE_ID_iSerialNumber288", i1 false, i1 false}
!13 = !{ptr @__param_iManufacturer, !1, !"__param_iManufacturer", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_iManufacturertype289, !1, !"__UNIQUE_ID_iManufacturertype289", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_iManufacturer290, !1, !"__UNIQUE_ID_iManufacturer290", i1 false, i1 false}
!16 = !{ptr @__param_iProduct, !1, !"__param_iProduct", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_iProducttype291, !1, !"__UNIQUE_ID_iProducttype291", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_iProduct292, !1, !"__UNIQUE_ID_iProduct292", i1 false, i1 false}
!19 = !{ptr @__initcall__kmod_tcm_usb_gadget__293_161_usb_target_gadget_init6, !20, !"__initcall__kmod_tcm_usb_gadget__293_161_usb_target_gadget_init6", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 161, i32 1}
!21 = !{ptr @__exitcall_usb_target_gadget_exit, !22, !"__exitcall_usb_target_gadget_exit", i1 false, i1 false}
!22 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 169, i32 1}
!23 = !{ptr @__UNIQUE_ID_author294, !24, !"__UNIQUE_ID_author294", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 171, i32 1}
!25 = !{ptr @__UNIQUE_ID_description295, !26, !"__UNIQUE_ID_description295", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 172, i32 1}
!27 = !{ptr @__UNIQUE_ID_file296, !28, !"__UNIQUE_ID_file296", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 173, i32 1}
!29 = !{ptr @__UNIQUE_ID_license297, !28, !"__UNIQUE_ID_license297", i1 false, i1 false}
!30 = !{ptr @coverwrite, !1, !"coverwrite", i1 false, i1 false}
!31 = !{ptr @fi_tcm, !32, !"fi_tcm", i1 false, i1 false}
!32 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 61, i32 38}
!33 = !{ptr @__param_str_idVendor, !1, !"__param_str_idVendor", i1 false, i1 false}
!34 = !{ptr @__param_str_idProduct, !1, !"__param_str_idProduct", i1 false, i1 false}
!35 = !{ptr @__param_str_bcdDevice, !1, !"__param_str_bcdDevice", i1 false, i1 false}
!36 = !{ptr @__param_str_iSerialNumber, !1, !"__param_str_iSerialNumber", i1 false, i1 false}
!37 = !{ptr @__param_str_iManufacturer, !1, !"__param_str_iManufacturer", i1 false, i1 false}
!38 = !{ptr @__param_str_iProduct, !1, !"__param_str_iProduct", i1 false, i1 false}
!39 = !{ptr @.str, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 144, i32 37}
!41 = !{ptr @.str.1, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 157, i32 32}
!43 = !{ptr @.str.2, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 122, i32 20}
!45 = !{ptr @usbg_driver, !46, !"usbg_driver", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 121, i32 36}
!47 = !{ptr @usbg_device_desc, !48, !"usbg_device_desc", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 31, i32 37}
!49 = !{ptr @usbg_strings, !50, !"usbg_strings", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 56, i32 35}
!51 = !{ptr @usbg_stringtab, !52, !"usbg_stringtab", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 51, i32 34}
!53 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 44, i32 36}
!55 = !{ptr @.str.4, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 45, i32 31}
!57 = !{ptr @.str.5, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 46, i32 30}
!59 = !{ptr @.str.6, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 47, i32 26}
!61 = !{ptr @usbg_us_strings, !62, !"usbg_us_strings", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 43, i32 26}
!63 = !{ptr @.str.7, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 90, i32 28}
!65 = !{ptr @usbg_config_driver, !66, !"usbg_config_driver", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 89, i32 33}
!67 = !{ptr @f_tcm, !68, !"f_tcm", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/legacy/tcm_usb_gadget.c", i32 62, i32 29}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
