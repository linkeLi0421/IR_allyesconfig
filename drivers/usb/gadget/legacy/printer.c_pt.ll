; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/printer.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/printer.c"
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.f_printer_opts = type { %struct.usb_function_instance, i32, ptr, i8, i32, %struct.mutex, i32 }
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
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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

@__param_str_idVendor = internal constant [19 x i8] c"g_printer.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype228 = internal constant [35 x i8] c"g_printer.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor229 = internal constant [38 x i8] c"g_printer.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [20 x i8] c"g_printer.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype230 = internal constant [36 x i8] c"g_printer.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct231 = internal constant [40 x i8] c"g_printer.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [20 x i8] c"g_printer.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype232 = internal constant [36 x i8] c"g_printer.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice233 = internal constant [50 x i8] c"g_printer.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [24 x i8] c"g_printer.iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype234 = internal constant [39 x i8] c"g_printer.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber235 = internal constant [49 x i8] c"g_printer.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [24 x i8] c"g_printer.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype236 = internal constant [39 x i8] c"g_printer.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer237 = internal constant [53 x i8] c"g_printer.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [19 x i8] c"g_printer.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype238 = internal constant [34 x i8] c"g_printer.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct239 = internal constant [43 x i8] c"g_printer.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__param_str_iSerialNum = internal constant [21 x i8] c"g_printer.iSerialNum\00", align 1
@__param_iSerialNum = internal constant %struct.kernel_param { ptr @__param_str_iSerialNum, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumtype240 = internal constant [36 x i8] c"g_printer.parmtype=iSerialNum:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNum241 = internal constant [28 x i8] c"g_printer.parm=iSerialNum:1\00", section ".modinfo", align 1
@__param_str_iPNPstring = internal constant [21 x i8] c"g_printer.iPNPstring\00", align 1
@iPNPstring = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_iPNPstring = internal constant %struct.kernel_param { ptr @__param_str_iPNPstring, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @iPNPstring } }, section "__param", align 4
@__UNIQUE_ID_iPNPstringtype242 = internal constant [36 x i8] c"g_printer.parmtype=iPNPstring:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iPNPstring243 = internal constant [68 x i8] c"g_printer.parm=iPNPstring:MFG:linux;MDL:g_printer;CLS:PRINTER;SN:1;\00", section ".modinfo", align 1
@__param_str_qlen = internal constant [15 x i8] c"g_printer.qlen\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@qlen = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_qlen = internal constant %struct.kernel_param { ptr @__param_str_qlen, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @qlen } }, section "__param", align 4
@__UNIQUE_ID_qlentype244 = internal constant [29 x i8] c"g_printer.parmtype=qlen:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qlen245 = internal constant [65 x i8] c"g_printer.parm=qlen:The number of 8k buffers to use per endpoint\00", section ".modinfo", align 1
@__initcall__kmod_g_printer__246_222_printer_driver_init6 = internal global ptr @printer_driver_init, section ".initcall6.init", align 4
@printer_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @shortname, ptr @device_desc, ptr @dev_strings, i32 5, i8 0, ptr @printer_bind, ptr @printer_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_printer_driver_exit = internal global ptr @printer_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description247 = internal constant [37 x i8] c"g_printer.description=Printer Gadget\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [30 x i8] c"g_printer.author=Craig Nadler\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [51 x i8] c"g_printer.file=drivers/usb/gadget/legacy/g_printer\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [22 x i8] c"g_printer.license=GPL\00", section ".modinfo", align 1
@shortname = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"printer\00", [24 x i8] zeroinitializer }, align 32
@device_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 0, i8 0, i8 0, i8 0, i16 9477, i16 -22364, i16 0, i8 0, i8 0, i8 0, i8 1 }, [46 x i8] zeroinitializer }, align 32
@dev_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stringtab_dev, ptr null], [24 x i8] zeroinitializer }, align 32
@stringtab_dev = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings }, [24 x i8] zeroinitializer }, align 32
@strings = internal global { [4 x %struct.usb_string], [32 x i8] } { [4 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str }, %struct.usb_string { i8 0, ptr @product_desc }, %struct.usb_string { i8 0, ptr @serial_num }, %struct.usb_string zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@product_desc = internal global { [40 x i8], [56 x i8] } { [40 x i8] c"Printer Gadget\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [56 x i8] zeroinitializer }, align 32
@serial_num = internal global { [40 x i8], [56 x i8] } { [40 x i8] c"1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"printer\00", [24 x i8] zeroinitializer }, align 32
@fi_printer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@otg_desc = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@printer_cfg_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 -64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MFG:linux;MDL:g_printer;CLS:PRINTER;SN:1;\00", [54 x i8] zeroinitializer }, align 32
@f_printer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.3 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 18, i32 1 }
@___asan_gen_.6 = private unnamed_addr constant [11 x i8] c"iPNPstring\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 46, i32 14 }
@___asan_gen_.9 = private unnamed_addr constant [5 x i8] c"qlen\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 51, i32 17 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"printer_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 213, i32 36 }
@___asan_gen_.15 = private unnamed_addr constant [10 x i8] c"shortname\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 23, i32 19 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"device_desc\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 67, i32 37 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"dev_strings\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 103, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"stringtab_dev\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 98, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 91, i32 27 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 92, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"product_desc\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 85, i32 16 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"serial_num\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 86, i32 16 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 144, i32 41 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"fi_printer\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 57, i32 38 }
@___asan_gen_.45 = private unnamed_addr constant [9 x i8] c"otg_desc\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 79, i32 44 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"printer_cfg_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 108, i32 33 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 88, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"f_printer\00", align 1
@___asan_gen_.55 = private constant [39 x i8] c"../drivers/usb/gadget/legacy/printer.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 58, i32 29 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_bcdDevice233, ptr @__UNIQUE_ID_bcdDevicetype232, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_iManufacturer237, ptr @__UNIQUE_ID_iManufacturertype236, ptr @__UNIQUE_ID_iPNPstring243, ptr @__UNIQUE_ID_iPNPstringtype242, ptr @__UNIQUE_ID_iProduct239, ptr @__UNIQUE_ID_iProducttype238, ptr @__UNIQUE_ID_iSerialNum241, ptr @__UNIQUE_ID_iSerialNumber235, ptr @__UNIQUE_ID_iSerialNumbertype234, ptr @__UNIQUE_ID_iSerialNumtype240, ptr @__UNIQUE_ID_idProduct231, ptr @__UNIQUE_ID_idProducttype230, ptr @__UNIQUE_ID_idVendor229, ptr @__UNIQUE_ID_idVendortype228, ptr @__UNIQUE_ID_license250, ptr @__UNIQUE_ID_qlen245, ptr @__UNIQUE_ID_qlentype244, ptr @__exitcall_printer_driver_exit, ptr @__initcall__kmod_g_printer__246_222_printer_driver_init6, ptr @__param_bcdDevice, ptr @__param_iManufacturer, ptr @__param_iPNPstring, ptr @__param_iProduct, ptr @__param_iSerialNum, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @__param_qlen, ptr @printer_driver_exit, ptr @coverwrite, ptr @iPNPstring, ptr @qlen, ptr @printer_driver, ptr @shortname, ptr @device_desc, ptr @dev_strings, ptr @stringtab_dev, ptr @strings, ptr @.str, ptr @product_desc, ptr @serial_num, ptr @.str.1, ptr @fi_printer, ptr @otg_desc, ptr @printer_cfg_driver, ptr @.str.2, ptr @f_printer], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iPNPstring to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlen to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printer_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shortname to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stringtab_dev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @product_desc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_num to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_printer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printer_cfg_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_printer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @printer_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_composite_probe(ptr noundef nonnull @printer_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @printer_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @usb_composite_unregister(ptr noundef nonnull @printer_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @printer_bind(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.1) #3
  store ptr %call, ptr @fi_printer, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %call to i32
  br label %cleanup30

if.end:                                           ; preds = %entry
  %minor = getelementptr inbounds %struct.f_printer_opts, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %minor, align 4
  %2 = load i32, ptr @qlen, align 4
  %q_len = getelementptr inbounds %struct.f_printer_opts, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %q_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %q_len, align 4
  %4 = load ptr, ptr @iPNPstring, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call noalias ptr @kstrdup(ptr noundef nonnull %4, i32 noundef 3264) #3
  %pnp_string = getelementptr inbounds %struct.f_printer_opts, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %pnp_string to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %pnp_string, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.then3.fail_put_func_inst_crit_edge, label %if.end8

if.then3.fail_put_func_inst_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail_put_func_inst

if.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  %pnp_string_allocated = getelementptr inbounds %struct.f_printer_opts, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %pnp_string_allocated to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %pnp_string_allocated, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %pnp_string9 = getelementptr inbounds %struct.f_printer_opts, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %pnp_string9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.2, ptr %pnp_string9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end8
  %call11 = tail call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @strings) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end10.fail_put_func_inst_crit_edge, label %if.end13

if.end10.fail_put_func_inst_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail_put_func_inst

if.end13:                                         ; preds = %if.end10
  %8 = load i8, ptr @strings, align 4
  store i8 %8, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 10), align 1
  %9 = load i8, ptr getelementptr inbounds ([4 x %struct.usb_string], ptr @strings, i32 0, i32 1), align 4
  store i8 %9, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 11), align 1
  %10 = load i8, ptr getelementptr inbounds ([4 x %struct.usb_string], ptr @strings, i32 0, i32 2), align 4
  store i8 %10, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 12), align 1
  %11 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cdev, align 4
  %is_otg.i = getelementptr inbounds %struct.usb_gadget, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load i32, ptr %is_otg.i, align 4
  %14 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %if.end13.if.end25_crit_edge, label %land.lhs.true

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end13
  %15 = load ptr, ptr @otg_desc, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

if.then17:                                        ; preds = %land.lhs.true
  %call19 = tail call ptr @usb_otg_descriptor_alloc(ptr noundef %12) #3
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then17.fail_put_func_inst_crit_edge, label %cleanup.thread

if.then17.fail_put_func_inst_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail_put_func_inst

cleanup.thread:                                   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cdev, align 4
  %call24 = tail call i32 @usb_otg_descriptor_init(ptr noundef %17, ptr noundef nonnull %call19) #3
  store ptr %call19, ptr @otg_desc, align 4
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @otg_desc, i32 0, i32 1), align 4
  br label %if.end25

if.end25:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end25_crit_edge, %if.end13.if.end25_crit_edge
  %call26 = tail call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @printer_cfg_driver, ptr noundef nonnull @printer_do_config) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %fail_free_otg_desc

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #3
  br label %cleanup30

fail_free_otg_desc:                               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  %18 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %18) #3
  store ptr null, ptr @otg_desc, align 4
  br label %fail_put_func_inst

fail_put_func_inst:                               ; preds = %fail_free_otg_desc, %if.then17.fail_put_func_inst_crit_edge, %if.end10.fail_put_func_inst_crit_edge, %if.then3.fail_put_func_inst_crit_edge
  %ret.1 = phi i32 [ %call11, %if.end10.fail_put_func_inst_crit_edge ], [ %call26, %fail_free_otg_desc ], [ -12, %if.then3.fail_put_func_inst_crit_edge ], [ -12, %if.then17.fail_put_func_inst_crit_edge ]
  %19 = load ptr, ptr @fi_printer, align 4
  tail call void @usb_put_function_instance(ptr noundef %19) #3
  br label %cleanup30

cleanup30:                                        ; preds = %fail_put_func_inst, %if.end29, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.1, %fail_put_func_inst ], [ 0, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @printer_unbind(ptr nocapture noundef readnone %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @f_printer, align 4
  tail call void @usb_put_function(ptr noundef %0) #3
  %1 = load ptr, ptr @fi_printer, align 4
  tail call void @usb_put_function_instance(ptr noundef %1) #3
  %2 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %2) #3
  store ptr null, ptr @otg_desc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_ids_tab(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_descriptor_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_otg_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @printer_do_config(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @usb_ep_autoconfig_reset(ptr noundef %3) #3
  %call = tail call i32 @usb_gadget_set_selfpowered(ptr noundef %3) #3
  %is_otg.i = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %is_otg.i, align 4
  %5 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  store ptr @otg_desc, ptr getelementptr inbounds (%struct.usb_configuration, ptr @printer_cfg_driver, i32 0, i32 2), align 4
  %6 = load i8, ptr getelementptr inbounds (%struct.usb_configuration, ptr @printer_cfg_driver, i32 0, i32 7), align 2
  %7 = or i8 %6, 32
  store i8 %7, ptr getelementptr inbounds (%struct.usb_configuration, ptr @printer_cfg_driver, i32 0, i32 7), align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = load ptr, ptr @fi_printer, align 4
  %call4 = tail call ptr @usb_get_function(ptr noundef %8) #3
  store ptr %call4, ptr @f_printer, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %10 = load ptr, ptr @f_printer, align 4
  tail call void @usb_put_function(ptr noundef %10) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end8.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ %9, %if.then6 ], [ %call9, %if.then11 ], [ %call9, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_overwrite_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_autoconfig_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_set_selfpowered(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !36, !37, !39, !41, !43, !44, !45, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__param_idVendor, !1, !"__param_idVendor", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 18, i32 1}
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
!19 = !{ptr @__param_iSerialNum, !20, !"__param_iSerialNum", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 43, i32 1}
!21 = !{ptr @__UNIQUE_ID_iSerialNumtype240, !20, !"__UNIQUE_ID_iSerialNumtype240", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_iSerialNum241, !23, !"__UNIQUE_ID_iSerialNum241", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 44, i32 1}
!24 = !{ptr @__param_iPNPstring, !25, !"__param_iPNPstring", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 47, i32 1}
!26 = !{ptr @__UNIQUE_ID_iPNPstringtype242, !25, !"__UNIQUE_ID_iPNPstringtype242", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_iPNPstring243, !28, !"__UNIQUE_ID_iPNPstring243", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 48, i32 1}
!29 = !{ptr @__param_qlen, !30, !"__param_qlen", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 52, i32 1}
!31 = !{ptr @__UNIQUE_ID_qlentype244, !30, !"__UNIQUE_ID_qlentype244", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_qlen245, !33, !"__UNIQUE_ID_qlen245", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 53, i32 1}
!34 = !{ptr @__initcall__kmod_g_printer__246_222_printer_driver_init6, !35, !"__initcall__kmod_g_printer__246_222_printer_driver_init6", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 222, i32 1}
!36 = !{ptr @__exitcall_printer_driver_exit, !35, !"__exitcall_printer_driver_exit", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_description247, !38, !"__UNIQUE_ID_description247", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 224, i32 1}
!39 = !{ptr @__UNIQUE_ID_author248, !40, !"__UNIQUE_ID_author248", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 225, i32 1}
!41 = !{ptr @__UNIQUE_ID_file249, !42, !"__UNIQUE_ID_file249", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 226, i32 1}
!43 = !{ptr @__UNIQUE_ID_license250, !42, !"__UNIQUE_ID_license250", i1 false, i1 false}
!44 = !{ptr @coverwrite, !1, !"coverwrite", i1 false, i1 false}
!45 = !{ptr @iPNPstring, !46, !"iPNPstring", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 46, i32 14}
!47 = !{ptr @__param_str_idVendor, !1, !"__param_str_idVendor", i1 false, i1 false}
!48 = !{ptr @__param_str_idProduct, !1, !"__param_str_idProduct", i1 false, i1 false}
!49 = !{ptr @__param_str_bcdDevice, !1, !"__param_str_bcdDevice", i1 false, i1 false}
!50 = !{ptr @__param_str_iSerialNumber, !1, !"__param_str_iSerialNumber", i1 false, i1 false}
!51 = !{ptr @__param_str_iManufacturer, !1, !"__param_str_iManufacturer", i1 false, i1 false}
!52 = !{ptr @__param_str_iProduct, !1, !"__param_str_iProduct", i1 false, i1 false}
!53 = !{ptr @__param_str_iSerialNum, !20, !"__param_str_iSerialNum", i1 false, i1 false}
!54 = !{ptr @__param_str_iPNPstring, !25, !"__param_str_iPNPstring", i1 false, i1 false}
!55 = !{ptr @__param_str_qlen, !30, !"__param_str_qlen", i1 false, i1 false}
!56 = !{ptr @qlen, !57, !"qlen", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 51, i32 17}
!58 = !{ptr @printer_driver, !59, !"printer_driver", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 213, i32 36}
!60 = !{ptr @shortname, !61, !"shortname", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 23, i32 19}
!62 = !{ptr @device_desc, !63, !"device_desc", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 67, i32 37}
!64 = !{ptr @dev_strings, !65, !"dev_strings", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 103, i32 35}
!66 = !{ptr @stringtab_dev, !67, !"stringtab_dev", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 98, i32 34}
!68 = !{ptr @.str, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 92, i32 36}
!70 = !{ptr @strings, !71, !"strings", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 91, i32 27}
!72 = !{ptr @product_desc, !73, !"product_desc", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 85, i32 16}
!74 = !{ptr @serial_num, !75, !"serial_num", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 86, i32 16}
!76 = !{ptr @.str.1, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 144, i32 41}
!78 = !{ptr @fi_printer, !79, !"fi_printer", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 57, i32 38}
!80 = !{ptr @.str.2, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 88, i32 2}
!82 = distinct !{null, !83, !"pnp_string", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 87, i32 17}
!84 = !{ptr @otg_desc, !85, !"otg_desc", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 79, i32 44}
!86 = !{ptr @printer_cfg_driver, !87, !"printer_cfg_driver", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 108, i32 33}
!88 = !{ptr @f_printer, !89, !"f_printer", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/legacy/printer.c", i32 58, i32 29}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
