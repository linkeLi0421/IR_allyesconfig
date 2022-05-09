; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/ncm.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/ncm.c"
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
%struct.f_ncm_opts = type { %struct.usb_function_instance, ptr, i8, ptr, %struct.usb_os_desc, [16 x i8], %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.usb_os_desc = type { ptr, %struct.list_head, i32, i32, ptr, %struct.config_group, ptr }
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

@__param_str_idVendor = internal constant [15 x i8] c"g_ncm.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype337 = internal constant [31 x i8] c"g_ncm.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor338 = internal constant [34 x i8] c"g_ncm.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [16 x i8] c"g_ncm.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype339 = internal constant [32 x i8] c"g_ncm.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct340 = internal constant [36 x i8] c"g_ncm.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [16 x i8] c"g_ncm.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype341 = internal constant [32 x i8] c"g_ncm.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice342 = internal constant [46 x i8] c"g_ncm.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [20 x i8] c"g_ncm.iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype343 = internal constant [35 x i8] c"g_ncm.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber344 = internal constant [45 x i8] c"g_ncm.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [20 x i8] c"g_ncm.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype345 = internal constant [35 x i8] c"g_ncm.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer346 = internal constant [49 x i8] c"g_ncm.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [15 x i8] c"g_ncm.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype347 = internal constant [30 x i8] c"g_ncm.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct348 = internal constant [39 x i8] c"g_ncm.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__param_str_qmult = internal constant [12 x i8] c"g_ncm.qmult\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@qmult = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_qmult = internal constant %struct.kernel_param { ptr @__param_str_qmult, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @qmult } }, section "__param", align 4
@__UNIQUE_ID_qmulttype349 = internal constant [26 x i8] c"g_ncm.parmtype=qmult:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qmult350 = internal constant [61 x i8] c"g_ncm.parm=qmult:queue length multiplier at high/super speed\00", section ".modinfo", align 1
@__param_str_dev_addr = internal constant [15 x i8] c"g_ncm.dev_addr\00", align 1
@dev_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_dev_addr = internal constant %struct.kernel_param { ptr @__param_str_dev_addr, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @dev_addr } }, section "__param", align 4
@__UNIQUE_ID_dev_addrtype351 = internal constant [30 x i8] c"g_ncm.parmtype=dev_addr:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_dev_addr352 = internal constant [44 x i8] c"g_ncm.parm=dev_addr:Device Ethernet Address\00", section ".modinfo", align 1
@__param_str_host_addr = internal constant [16 x i8] c"g_ncm.host_addr\00", align 1
@host_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_host_addr = internal constant %struct.kernel_param { ptr @__param_str_host_addr, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @host_addr } }, section "__param", align 4
@__UNIQUE_ID_host_addrtype353 = internal constant [31 x i8] c"g_ncm.parmtype=host_addr:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_host_addr354 = internal constant [43 x i8] c"g_ncm.parm=host_addr:Host Ethernet Address\00", section ".modinfo", align 1
@__initcall__kmod_g_ncm__355_207_ncm_driver_init6 = internal global ptr @ncm_driver_init, section ".initcall6.init", align 4
@ncm_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @.str, ptr @device_desc, ptr @dev_strings, i32 5, i8 0, ptr @gncm_bind, ptr @gncm_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ncm_driver_exit = internal global ptr @ncm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description356 = internal constant [29 x i8] c"g_ncm.description=NCM Gadget\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [29 x i8] c"g_ncm.author=Yauheni Kaliuta\00", section ".modinfo", align 1
@__UNIQUE_ID_file358 = internal constant [43 x i8] c"g_ncm.file=drivers/usb/gadget/legacy/g_ncm\00", section ".modinfo", align 1
@__UNIQUE_ID_license359 = internal constant [18 x i8] c"g_ncm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"g_ncm\00", [26 x i8] zeroinitializer }, align 32
@device_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 2, i8 0, i8 0, i8 0, i16 9477, i16 -24156, i16 0, i8 0, i8 0, i8 0, i8 1 }, [46 x i8] zeroinitializer }, align 32
@dev_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stringtab_dev, ptr null], [24 x i8] zeroinitializer }, align 32
@stringtab_dev = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_dev }, [24 x i8] zeroinitializer }, align 32
@strings_dev = internal global { [4 x %struct.usb_string], [32 x i8] } { [4 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NCM Gadget\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ncm\00", [28 x i8] zeroinitializer }, align 32
@f_ncm_inst = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gncm_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016using host ethernet address: %s\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gncm_bind\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/gadget/legacy/ncm.c\00", [32 x i8] zeroinitializer }, align 32
@gncm_bind._entry_ptr = internal global ptr @gncm_bind._entry, section ".printk_index", align 4
@gncm_bind._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016using self ethernet address: %s\00", [62 x i8] zeroinitializer }, align 32
@gncm_bind._entry_ptr.9 = internal global ptr @gncm_bind._entry.7, section ".printk_index", align 4
@otg_desc = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@ncm_config_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr @.str.15, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@gncm_bind._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 174, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gncm_bind._entry_ptr.14 = internal global ptr @gncm_bind._entry.10, section ".printk_index", align 4
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CDC Ethernet (NCM)\00", [45 x i8] zeroinitializer }, align 32
@f_ncm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.16 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 40, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"qmult\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"dev_addr\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"host_addr\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 42, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"ncm_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 198, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 199, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"device_desc\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 44, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"dev_strings\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 83, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"stringtab_dev\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 78, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"strings_dev\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 71, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 72, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 73, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 133, i32 41 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"f_ncm_inst\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 88, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 141, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 143, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [9 x i8] c"otg_desc\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 68, i32 44 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"ncm_config_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 117, i32 33 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 174, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 119, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"f_ncm\00", align 1
@___asan_gen_.98 = private constant [35 x i8] c"../drivers/usb/gadget/legacy/ncm.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 89, i32 29 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_bcdDevice342, ptr @__UNIQUE_ID_bcdDevicetype341, ptr @__UNIQUE_ID_description356, ptr @__UNIQUE_ID_dev_addr352, ptr @__UNIQUE_ID_dev_addrtype351, ptr @__UNIQUE_ID_file358, ptr @__UNIQUE_ID_host_addr354, ptr @__UNIQUE_ID_host_addrtype353, ptr @__UNIQUE_ID_iManufacturer346, ptr @__UNIQUE_ID_iManufacturertype345, ptr @__UNIQUE_ID_iProduct348, ptr @__UNIQUE_ID_iProducttype347, ptr @__UNIQUE_ID_iSerialNumber344, ptr @__UNIQUE_ID_iSerialNumbertype343, ptr @__UNIQUE_ID_idProduct340, ptr @__UNIQUE_ID_idProducttype339, ptr @__UNIQUE_ID_idVendor338, ptr @__UNIQUE_ID_idVendortype337, ptr @__UNIQUE_ID_license359, ptr @__UNIQUE_ID_qmult350, ptr @__UNIQUE_ID_qmulttype349, ptr @__exitcall_ncm_driver_exit, ptr @__initcall__kmod_g_ncm__355_207_ncm_driver_init6, ptr @__param_bcdDevice, ptr @__param_dev_addr, ptr @__param_host_addr, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @__param_qmult, ptr @gncm_bind._entry, ptr @gncm_bind._entry.10, ptr @gncm_bind._entry.7, ptr @gncm_bind._entry_ptr, ptr @gncm_bind._entry_ptr.14, ptr @gncm_bind._entry_ptr.9, ptr @ncm_driver_exit, ptr @coverwrite, ptr @qmult, ptr @dev_addr, ptr @host_addr, ptr @ncm_driver, ptr @.str, ptr @device_desc, ptr @dev_strings, ptr @stringtab_dev, ptr @strings_dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @f_ncm_inst, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @otg_desc, ptr @ncm_config_driver, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @f_ncm], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmult to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stringtab_dev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_dev to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ncm_inst to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gncm_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gncm_bind._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_config_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gncm_bind._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ncm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ncm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_composite_probe(ptr noundef nonnull @ncm_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ncm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_composite_unregister(ptr noundef nonnull @ncm_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gncm_bind(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %call = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.3) #4
  store ptr %call, ptr @f_ncm_inst, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call to i32
  br label %cleanup40

if.end:                                           ; preds = %entry
  %net = getelementptr inbounds %struct.f_ncm_opts, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %5 = load i32, ptr @qmult, align 4
  tail call void @gether_set_qmult(ptr noundef %4, i32 noundef %5) #4
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  %8 = load ptr, ptr @host_addr, align 4
  %call5 = tail call i32 @gether_set_host_addr(ptr noundef %7, ptr noundef %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.end, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = load ptr, ptr @host_addr, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %9) #7
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end.if.end9_crit_edge
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  %12 = load ptr, ptr @dev_addr, align 4
  %call11 = tail call i32 @gether_set_dev_addr(ptr noundef %11, ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end16, label %if.end9.if.end19_crit_edge

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %13 = load ptr, ptr @dev_addr, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %13) #7
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.end9.if.end19_crit_edge
  %call20 = tail call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @strings_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.end19.fail_crit_edge, label %if.end22

if.end19.fail_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end22:                                         ; preds = %if.end19
  %14 = load i8, ptr @strings_dev, align 4
  store i8 %14, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 10), align 1
  %15 = load i8, ptr getelementptr inbounds ([4 x %struct.usb_string], ptr @strings_dev, i32 0, i32 1), align 4
  store i8 %15, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 11), align 1
  %is_otg.i = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i = load i32, ptr %is_otg.i, align 4
  %17 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool24.not = icmp eq i32 %17, 0
  br i1 %tobool24.not, label %if.end22.if.end32_crit_edge, label %land.lhs.true

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end22
  %18 = load ptr, ptr @otg_desc, align 4
  %tobool25.not = icmp eq ptr %18, null
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then26:                                        ; preds = %land.lhs.true
  %call27 = tail call ptr @usb_otg_descriptor_alloc(ptr noundef %1) #4
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then26.fail_crit_edge, label %cleanup.thread

if.then26.fail_crit_edge:                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

cleanup.thread:                                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %call31 = tail call i32 @usb_otg_descriptor_init(ptr noundef %1, ptr noundef nonnull %call27) #4
  store ptr %call27, ptr @otg_desc, align 4
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @otg_desc, i32 0, i32 1), align 4
  br label %if.end32

if.end32:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end32_crit_edge, %if.end22.if.end32_crit_edge
  %call33 = tail call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @ncm_config_driver, ptr noundef nonnull @ncm_do_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %fail1, label %if.end36

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2) #7
  br label %cleanup40

fail1:                                            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %19 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %19) #4
  store ptr null, ptr @otg_desc, align 4
  br label %fail

fail:                                             ; preds = %fail1, %if.then26.fail_crit_edge, %if.end19.fail_crit_edge
  %status.1 = phi i32 [ %call20, %if.end19.fail_crit_edge ], [ %call33, %fail1 ], [ -12, %if.then26.fail_crit_edge ]
  %20 = load ptr, ptr @f_ncm_inst, align 4
  tail call void @usb_put_function_instance(ptr noundef %20) #4
  br label %cleanup40

cleanup40:                                        ; preds = %fail, %if.end36, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %status.1, %fail ], [ 0, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gncm_unbind(ptr nocapture noundef readnone %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @f_ncm, align 4
  %tobool.not.i = icmp eq ptr %0, null
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_put_function(ptr noundef nonnull %0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @f_ncm_inst, align 4
  %tobool.not.i4 = icmp eq ptr %1, null
  %cmp.i5 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i6 = or i1 %tobool.not.i4, %cmp.i5
  br i1 %spec.select.i6, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_put_function_instance(ptr noundef nonnull %1) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %2 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %2) #4
  store ptr null, ptr @otg_desc, align 4
  ret i32 0
}

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
define internal i32 @ncm_do_config(ptr noundef %c) #2 align 64 {
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
  %10 = load ptr, ptr @f_ncm_inst, align 4
  %call2 = tail call ptr @usb_get_function(ptr noundef %10) #4
  store ptr %call2, ptr @f_ncm, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %12 = load ptr, ptr @f_ncm, align 4
  tail call void @usb_put_function(ptr noundef %12) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %11, %if.then4 ], [ %call7, %if.then9 ], [ 0, %if.end6.cleanup_crit_edge ]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !86, !88, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__param_idVendor, !1, !"__param_idVendor", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 40, i32 1}
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
!20 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 42, i32 1}
!21 = !{ptr @__UNIQUE_ID_qmulttype349, !20, !"__UNIQUE_ID_qmulttype349", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_qmult350, !20, !"__UNIQUE_ID_qmult350", i1 false, i1 false}
!23 = !{ptr @__param_dev_addr, !20, !"__param_dev_addr", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_dev_addrtype351, !20, !"__UNIQUE_ID_dev_addrtype351", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_dev_addr352, !20, !"__UNIQUE_ID_dev_addr352", i1 false, i1 false}
!26 = !{ptr @__param_host_addr, !20, !"__param_host_addr", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_host_addrtype353, !20, !"__UNIQUE_ID_host_addrtype353", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_host_addr354, !20, !"__UNIQUE_ID_host_addr354", i1 false, i1 false}
!29 = !{ptr @__initcall__kmod_g_ncm__355_207_ncm_driver_init6, !30, !"__initcall__kmod_g_ncm__355_207_ncm_driver_init6", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 207, i32 1}
!31 = !{ptr @__exitcall_ncm_driver_exit, !30, !"__exitcall_ncm_driver_exit", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_description356, !33, !"__UNIQUE_ID_description356", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 209, i32 1}
!34 = !{ptr @__UNIQUE_ID_author357, !35, !"__UNIQUE_ID_author357", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 210, i32 1}
!36 = !{ptr @__UNIQUE_ID_file358, !37, !"__UNIQUE_ID_file358", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 211, i32 1}
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
!53 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 199, i32 11}
!54 = !{ptr @ncm_driver, !55, !"ncm_driver", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 198, i32 36}
!56 = !{ptr @device_desc, !57, !"device_desc", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 44, i32 37}
!58 = !{ptr @dev_strings, !59, !"dev_strings", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 83, i32 35}
!60 = !{ptr @stringtab_dev, !61, !"stringtab_dev", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 78, i32 34}
!62 = !{ptr @.str.1, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 72, i32 36}
!64 = !{ptr @.str.2, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 73, i32 31}
!66 = !{ptr @strings_dev, !67, !"strings_dev", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 71, i32 26}
!68 = !{ptr @.str.3, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 133, i32 41}
!70 = !{ptr @.str.4, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 141, i32 3}
!72 = !{ptr @.str.5, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.6, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @gncm_bind._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @gncm_bind._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.8, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 143, i32 3}
!78 = !{ptr @gncm_bind._entry.7, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @gncm_bind._entry_ptr.9, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.11, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 174, i32 2}
!82 = !{ptr @.str.12, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.13, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @gncm_bind._entry.10, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @gncm_bind._entry_ptr.14, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @f_ncm_inst, !87, !"f_ncm_inst", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 88, i32 38}
!88 = !{ptr @otg_desc, !89, !"otg_desc", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 68, i32 44}
!90 = !{ptr @.str.15, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 119, i32 13}
!92 = !{ptr @ncm_config_driver, !93, !"ncm_config_driver", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 117, i32 33}
!94 = !{ptr @f_ncm, !95, !"f_ncm", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/legacy/ncm.c", i32 89, i32 29}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
