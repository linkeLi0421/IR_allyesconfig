; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/g_ffs.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/g_ffs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.usb_composite_overwrite = type { i16, i16, i16, ptr, ptr, ptr }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gfs_configuration = type { %struct.usb_configuration, ptr, i32 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.f_fs_opts = type { %struct.usb_function_instance, ptr, i32, i8 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ffs_dev = type { ptr, ptr, %struct.list_head, [41 x i8], i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.f_gether_opts = type { %struct.usb_function_instance, ptr, i8, %struct.mutex, i32 }

@__param_str_qmult = internal constant [12 x i8] c"g_ffs.qmult\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@qmult = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_qmult = internal constant %struct.kernel_param { ptr @__param_str_qmult, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @qmult } }, section "__param", align 4
@__UNIQUE_ID_qmulttype337 = internal constant [26 x i8] c"g_ffs.parmtype=qmult:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qmult338 = internal constant [61 x i8] c"g_ffs.parm=qmult:queue length multiplier at high/super speed\00", section ".modinfo", align 1
@__param_str_dev_addr = internal constant [15 x i8] c"g_ffs.dev_addr\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@dev_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_dev_addr = internal constant %struct.kernel_param { ptr @__param_str_dev_addr, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @dev_addr } }, section "__param", align 4
@__UNIQUE_ID_dev_addrtype339 = internal constant [30 x i8] c"g_ffs.parmtype=dev_addr:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_dev_addr340 = internal constant [44 x i8] c"g_ffs.parm=dev_addr:Device Ethernet Address\00", section ".modinfo", align 1
@__param_str_host_addr = internal constant [16 x i8] c"g_ffs.host_addr\00", align 1
@host_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_host_addr = internal constant %struct.kernel_param { ptr @__param_str_host_addr, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @host_addr } }, section "__param", align 4
@__UNIQUE_ID_host_addrtype341 = internal constant [31 x i8] c"g_ffs.parmtype=host_addr:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_host_addr342 = internal constant [43 x i8] c"g_ffs.parm=host_addr:Host Ethernet Address\00", section ".modinfo", align 1
@__UNIQUE_ID_description343 = internal constant [42 x i8] c"g_ffs.description=USB Function Filesystem\00", section ".modinfo", align 1
@__UNIQUE_ID_author344 = internal constant [31 x i8] c"g_ffs.author=Michal Nazarewicz\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [43 x i8] c"g_ffs.file=drivers/usb/gadget/legacy/g_ffs\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [18 x i8] c"g_ffs.license=GPL\00", section ".modinfo", align 1
@__param_str_idVendor = internal constant [15 x i8] c"g_ffs.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype347 = internal constant [31 x i8] c"g_ffs.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor348 = internal constant [34 x i8] c"g_ffs.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [16 x i8] c"g_ffs.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype349 = internal constant [32 x i8] c"g_ffs.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct350 = internal constant [36 x i8] c"g_ffs.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [16 x i8] c"g_ffs.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype351 = internal constant [32 x i8] c"g_ffs.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice352 = internal constant [46 x i8] c"g_ffs.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [20 x i8] c"g_ffs.iSerialNumber\00", align 1
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype353 = internal constant [35 x i8] c"g_ffs.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber354 = internal constant [45 x i8] c"g_ffs.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [20 x i8] c"g_ffs.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype355 = internal constant [35 x i8] c"g_ffs.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer356 = internal constant [49 x i8] c"g_ffs.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [15 x i8] c"g_ffs.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype357 = internal constant [30 x i8] c"g_ffs.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct358 = internal constant [39 x i8] c"g_ffs.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__param_str_bDeviceClass = internal constant [19 x i8] c"g_ffs.bDeviceClass\00", align 1
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@gfs_dev_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 0, i8 0, i8 0, i8 0, i16 27421, i16 1281, i16 0, i8 0, i8 0, i8 0, i8 0 }, [46 x i8] zeroinitializer }, align 32
@__param_bDeviceClass = internal constant %struct.kernel_param { ptr @__param_str_bDeviceClass, ptr null, ptr @param_ops_byte, i16 420, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @gfs_dev_desc, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bDeviceClasstype359 = internal constant [33 x i8] c"g_ffs.parmtype=bDeviceClass:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_bDeviceClass360 = internal constant [41 x i8] c"g_ffs.parm=bDeviceClass:USB Device class\00", section ".modinfo", align 1
@__param_str_bDeviceSubClass = internal constant [22 x i8] c"g_ffs.bDeviceSubClass\00", align 1
@__param_bDeviceSubClass = internal constant %struct.kernel_param { ptr @__param_str_bDeviceSubClass, ptr null, ptr @param_ops_byte, i16 420, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @gfs_dev_desc, i64 5) } }, section "__param", align 4
@__UNIQUE_ID_bDeviceSubClasstype361 = internal constant [36 x i8] c"g_ffs.parmtype=bDeviceSubClass:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_bDeviceSubClass362 = internal constant [47 x i8] c"g_ffs.parm=bDeviceSubClass:USB Device subclass\00", section ".modinfo", align 1
@__param_str_bDeviceProtocol = internal constant [22 x i8] c"g_ffs.bDeviceProtocol\00", align 1
@__param_bDeviceProtocol = internal constant %struct.kernel_param { ptr @__param_str_bDeviceProtocol, ptr null, ptr @param_ops_byte, i16 420, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @gfs_dev_desc, i64 6) } }, section "__param", align 4
@__UNIQUE_ID_bDeviceProtocoltype363 = internal constant [36 x i8] c"g_ffs.parmtype=bDeviceProtocol:byte\00", section ".modinfo", align 1
@__UNIQUE_ID_bDeviceProtocol364 = internal constant [47 x i8] c"g_ffs.parm=bDeviceProtocol:USB Device protocol\00", section ".modinfo", align 1
@__param_str_functions = internal constant [16 x i8] c"g_ffs.functions\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_functions = internal constant %struct.kparam_array { i32 10, i32 4, ptr @func_num, ptr @param_ops_charp, ptr @func_names }, align 4
@__param_functions = internal constant %struct.kernel_param { ptr @__param_str_functions, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_functions } }, section "__param", align 4
@__UNIQUE_ID_functionstype365 = internal constant [40 x i8] c"g_ffs.parmtype=functions:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_functions366 = internal constant [40 x i8] c"g_ffs.parm=functions:USB Functions list\00", section ".modinfo", align 1
@__initcall__kmod_g_ffs__368_239_gfs_init6 = internal global ptr @gfs_init, section ".initcall6.init", align 4
@gfs_exit.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 61, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"g_ffs\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gfs_exit\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/gadget/legacy/g_ffs.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"g_ffs: %s()\0A\00", [19 x i8] zeroinitializer }, align 32
@gfs_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@gfs_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @.str, ptr @gfs_dev_desc, ptr @gfs_dev_strings, i32 5, i8 0, ptr @gfs_bind, ptr @gfs_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@f_ffs = internal global { [3 x ptr], [20 x i8] } zeroinitializer, align 32
@func_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fi_ffs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_gfs_exit = internal global ptr @gfs_exit, section ".exitcall.exit", align 4
@func_names = internal global { [10 x ptr], [56 x i8] } zeroinitializer, align 32
@gfs_init.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 0, i8 45, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gfs_init\00", [23 x i8] zeroinitializer }, align 32
@gfs_single_func = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ffs\00", [28 x i8] zeroinitializer }, align 32
@missing_funcs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gfs_dev_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral, ptr null], [24 x i8] zeroinitializer }, align 32
@gfs_strings = internal global { [7 x %struct.usb_string], [40 x i8] } { [7 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.7 }, %struct.usb_string { i8 0, ptr @.str.8 }, %struct.usb_string { i8 0, ptr @.str.7 }, %struct.usb_string { i8 0, ptr @.str.9 }, %struct.usb_string { i8 0, ptr @.str.10 }, %struct.usb_string { i8 0, ptr @.str.11 }, %struct.usb_string zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @gfs_strings }, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"USB Function Filesystem\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FunctionFS + RNDIS\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FunctionFS + ECM\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FunctionFS\00", [21 x i8] zeroinitializer }, align 32
@gfs_bind.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.3, i8 0, i8 79, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gfs_bind\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ecm\00", [28 x i8] zeroinitializer }, align 32
@fi_ecm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"geth\00", [27 x i8] zeroinitializer }, align 32
@fi_geth = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rndis\00", [26 x i8] zeroinitializer }, align 32
@fi_rndis = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gfs_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016g_ffs: using host ethernet address: %s\00", [55 x i8] zeroinitializer }, align 32
@gfs_bind._entry_ptr = internal global ptr @gfs_bind._entry, section ".printk_index", align 4
@gfs_bind._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016g_ffs: using self ethernet address: %s\00", [55 x i8] zeroinitializer }, align 32
@gfs_bind._entry_ptr.19 = internal global ptr @gfs_bind._entry.17, section ".printk_index", align 4
@gfs_otg_desc = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@gfs_configurations = internal global { [3 x %struct.gfs_configuration], [76 x i8] } { [3 x %struct.gfs_configuration] [%struct.gfs_configuration { %struct.usb_configuration zeroinitializer, ptr @bind_rndis_config, i32 0 }, %struct.gfs_configuration { %struct.usb_configuration zeroinitializer, ptr @eth_bind_config, i32 0 }, %struct.gfs_configuration zeroinitializer], [76 x i8] zeroinitializer }, align 32
@f_rndis = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_ecm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_geth = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gfs_unbind.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.3, i8 0, i8 112, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gfs_unbind\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"qmult\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"dev_addr\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"host_addr\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 31, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 62, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"gfs_dev_desc\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 64, i32 37 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 245, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"gfs_registered\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"gfs_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 148, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"f_ffs\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 161, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"func_num\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 76, i32 21 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"fi_ffs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 160, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"func_names\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 75, i32 14 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 183, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"gfs_single_func\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 208, i32 41 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"missing_funcs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 157, i32 21 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"gfs_dev_strings\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 106, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"gfs_strings\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 90, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 91, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 92, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 95, i32 9 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 98, i32 9 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 101, i32 9 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 319, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 327, i32 38 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"fi_ecm\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 35, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 335, i32 39 }
@___asan_gen_.111 = private unnamed_addr constant [8 x i8] c"fi_geth\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 37, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 346, i32 40 }
@___asan_gen_.117 = private unnamed_addr constant [9 x i8] c"fi_rndis\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 42, i32 38 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 361, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 363, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [13 x i8] c"gfs_otg_desc\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 87, i32 44 }
@___asan_gen_.135 = private unnamed_addr constant [19 x i8] c"gfs_configurations\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 120, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant [8 x i8] c"f_rndis\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 43, i32 29 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"f_ecm\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 36, i32 29 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"f_geth\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 38, i32 29 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [37 x i8] c"../drivers/usb/gadget/legacy/g_ffs.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 448, i32 2 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_author344, ptr @__UNIQUE_ID_bDeviceClass360, ptr @__UNIQUE_ID_bDeviceClasstype359, ptr @__UNIQUE_ID_bDeviceProtocol364, ptr @__UNIQUE_ID_bDeviceProtocoltype363, ptr @__UNIQUE_ID_bDeviceSubClass362, ptr @__UNIQUE_ID_bDeviceSubClasstype361, ptr @__UNIQUE_ID_bcdDevice352, ptr @__UNIQUE_ID_bcdDevicetype351, ptr @__UNIQUE_ID_description343, ptr @__UNIQUE_ID_dev_addr340, ptr @__UNIQUE_ID_dev_addrtype339, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_functions366, ptr @__UNIQUE_ID_functionstype365, ptr @__UNIQUE_ID_host_addr342, ptr @__UNIQUE_ID_host_addrtype341, ptr @__UNIQUE_ID_iManufacturer356, ptr @__UNIQUE_ID_iManufacturertype355, ptr @__UNIQUE_ID_iProduct358, ptr @__UNIQUE_ID_iProducttype357, ptr @__UNIQUE_ID_iSerialNumber354, ptr @__UNIQUE_ID_iSerialNumbertype353, ptr @__UNIQUE_ID_idProduct350, ptr @__UNIQUE_ID_idProducttype349, ptr @__UNIQUE_ID_idVendor348, ptr @__UNIQUE_ID_idVendortype347, ptr @__UNIQUE_ID_license346, ptr @__UNIQUE_ID_qmult338, ptr @__UNIQUE_ID_qmulttype337, ptr @__exitcall_gfs_exit, ptr @__initcall__kmod_g_ffs__368_239_gfs_init6, ptr @__param_bDeviceClass, ptr @__param_bDeviceProtocol, ptr @__param_bDeviceSubClass, ptr @__param_bcdDevice, ptr @__param_dev_addr, ptr @__param_functions, ptr @__param_host_addr, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @__param_qmult, ptr @gfs_bind._entry, ptr @gfs_bind._entry.17, ptr @gfs_bind._entry_ptr, ptr @gfs_bind._entry_ptr.19, ptr @gfs_exit, ptr @qmult, ptr @dev_addr, ptr @host_addr, ptr @coverwrite, ptr @gfs_dev_desc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gfs_registered, ptr @gfs_driver, ptr @f_ffs, ptr @func_num, ptr @fi_ffs, ptr @func_names, ptr @.str.5, ptr @gfs_single_func, ptr @.str.6, ptr @missing_funcs, ptr @gfs_dev_strings, ptr @gfs_strings, ptr @.compoundliteral, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @fi_ecm, ptr @.str.14, ptr @fi_geth, ptr @.str.15, ptr @fi_rndis, ptr @.str.16, ptr @.str.18, ptr @gfs_otg_desc, ptr @gfs_configurations, ptr @f_rndis, ptr @f_ecm, ptr @f_geth, ptr @.str.20], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmult to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs_dev_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ffs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @func_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_ffs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @func_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs_single_func to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @missing_funcs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs_dev_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs_strings to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_ecm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_geth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_rndis to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs_bind._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs_otg_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs_configurations to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_rndis to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ecm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_geth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gfs_init.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gfs_init, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gfs_init.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr @func_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then4, label %do.end.if.end5_crit_edge

do.end.if.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @gfs_single_func, align 1
  store i32 1, ptr @func_num, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end.if.end5_crit_edge
  %1 = load i32, ptr @func_num, align 4
  %mul = mul i32 %1, 3
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 4) #6
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !168

kcalloc.exit.thread:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  store ptr null, ptr @f_ffs, align 4
  br label %no_func

if.end7.i.i:                                      ; preds = %if.end5
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #9
  store ptr %call8.i.i, ptr @f_ffs, align 4
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.no_func_crit_edge, label %for.cond.preheader

if.end7.i.i.no_func_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %no_func

for.cond.preheader:                               ; preds = %if.end7.i.i
  %5 = load i32, ptr @func_num, align 4
  %6 = load ptr, ptr @f_ffs, align 4
  %add.ptr = getelementptr ptr, ptr %6, i32 %5
  store ptr %add.ptr, ptr getelementptr inbounds ([3 x ptr], ptr @f_ffs, i32 0, i32 1), align 4
  %mul11.1 = shl i32 %5, 1
  %add.ptr.1 = getelementptr ptr, ptr %6, i32 %mul11.1
  store ptr %add.ptr.1, ptr getelementptr inbounds ([3 x ptr], ptr @f_ffs, i32 0, i32 2), align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #6
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kcalloc.exit104.thread, label %if.end7.i.i102, !prof !168

kcalloc.exit104.thread:                           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  store ptr null, ptr @fi_ffs, align 4
  br label %no_func

if.end7.i.i102:                                   ; preds = %for.cond.preheader
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i101 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #9
  store ptr %call8.i.i101, ptr @fi_ffs, align 4
  %tobool13.not = icmp eq ptr %call8.i.i101, null
  br i1 %tobool13.not, label %if.end7.i.i102.no_func_crit_edge, label %for.cond16.preheader

if.end7.i.i102.no_func_crit_edge:                 ; preds = %if.end7.i.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %no_func

for.cond16.preheader:                             ; preds = %if.end7.i.i102
  %10 = load i32, ptr @func_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp17116.not = icmp eq i32 %10, 0
  br i1 %cmp17116.not, label %for.cond16.preheader.for.end45_crit_edge, label %for.cond16.preheader.for.body18_crit_edge

for.cond16.preheader.for.body18_crit_edge:        ; preds = %for.cond16.preheader
  br label %for.body18

for.cond16.preheader.for.end45_crit_edge:         ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end45

for.body18:                                       ; preds = %if.end38.for.body18_crit_edge, %for.cond16.preheader.for.body18_crit_edge
  %i.1117 = phi i32 [ %inc44, %if.end38.for.body18_crit_edge ], [ 0, %for.cond16.preheader.for.body18_crit_edge ]
  %call19 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.6) #6
  %11 = load ptr, ptr @fi_ffs, align 4
  %arrayidx20 = getelementptr ptr, ptr %11, i32 %i.1117
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call19, ptr %arrayidx20, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end26

if.then23:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call19 to i32
  %dec = add i32 %i.1117, -1
  br label %no_dev

if.end26:                                         ; preds = %for.body18
  %.b71 = load i1, ptr @gfs_single_func, align 1
  %dev = getelementptr inbounds %struct.f_fs_opts, ptr %call19, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br i1 %.b71, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 @ffs_single_dev(ptr noundef %15) #6
  br label %if.end35

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx33 = getelementptr [10 x ptr], ptr @func_names, i32 0, i32 %i.1117
  %16 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx33, align 4
  %call34 = tail call i32 @ffs_name_dev(ptr noundef %15, ptr noundef %17) #6
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then30
  %ret.0 = phi i32 [ %call31, %if.then30 ], [ %call34, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool36.not = icmp eq i32 %ret.0, 0
  br i1 %tobool36.not, label %if.end38, label %if.end35.no_dev_crit_edge

if.end35.no_dev_crit_edge:                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %no_dev

if.end38:                                         ; preds = %if.end35
  %dev39 = getelementptr inbounds %struct.f_fs_opts, ptr %call19, i32 0, i32 1
  %18 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev39, align 4
  %ffs_ready_callback = getelementptr inbounds %struct.ffs_dev, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %ffs_ready_callback to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @functionfs_ready_callback, ptr %ffs_ready_callback, align 4
  %21 = load ptr, ptr %dev39, align 4
  %ffs_closed_callback = getelementptr inbounds %struct.ffs_dev, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %ffs_closed_callback to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @functionfs_closed_callback, ptr %ffs_closed_callback, align 4
  %23 = load ptr, ptr %dev39, align 4
  %ffs_acquire_dev_callback = getelementptr inbounds %struct.ffs_dev, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %ffs_acquire_dev_callback to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @functionfs_acquire_dev, ptr %ffs_acquire_dev_callback, align 4
  %25 = load ptr, ptr %dev39, align 4
  %ffs_release_dev_callback = getelementptr inbounds %struct.ffs_dev, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %ffs_release_dev_callback to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @functionfs_release_dev, ptr %ffs_release_dev_callback, align 4
  %no_configfs = getelementptr inbounds %struct.f_fs_opts, ptr %call19, i32 0, i32 3
  %27 = ptrtoint ptr %no_configfs to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %no_configfs, align 4
  %inc44 = add nuw i32 %i.1117, 1
  %28 = load i32, ptr @func_num, align 4
  %cmp17 = icmp ult i32 %inc44, %28
  br i1 %cmp17, label %if.end38.for.body18_crit_edge, label %if.end38.for.end45_crit_edge

if.end38.for.end45_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end45

if.end38.for.body18_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18

for.end45:                                        ; preds = %if.end38.for.end45_crit_edge, %for.cond16.preheader.for.end45_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond16.preheader.for.end45_crit_edge ], [ %28, %if.end38.for.end45_crit_edge ]
  store i32 %.lcssa, ptr @missing_funcs, align 4
  br label %cleanup

no_dev:                                           ; preds = %if.end35.no_dev_crit_edge, %if.then23
  %i.2 = phi i32 [ %dec, %if.then23 ], [ %i.1117, %if.end35.no_dev_crit_edge ]
  %ret.1 = phi i32 [ %13, %if.then23 ], [ %ret.0, %if.end35.no_dev_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.2)
  %cmp46118 = icmp sgt i32 %i.2, -1
  br i1 %cmp46118, label %no_dev.while.body_crit_edge, label %no_dev.while.end_crit_edge

no_dev.while.end_crit_edge:                       ; preds = %no_dev
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

no_dev.while.body_crit_edge:                      ; preds = %no_dev
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %no_dev.while.body_crit_edge
  %i.3119 = phi i32 [ %dec47, %while.body.while.body_crit_edge ], [ %i.2, %no_dev.while.body_crit_edge ]
  %29 = load ptr, ptr @fi_ffs, align 4
  %dec47 = add nsw i32 %i.3119, -1
  %arrayidx48 = getelementptr ptr, ptr %29, i32 %i.3119
  %30 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx48, align 4
  tail call void @usb_put_function_instance(ptr noundef %31) #6
  %cmp46.not = icmp eq i32 %i.3119, 0
  br i1 %cmp46.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %no_dev.while.end_crit_edge
  %32 = load ptr, ptr @fi_ffs, align 4
  tail call void @kfree(ptr noundef %32) #6
  br label %no_func

no_func:                                          ; preds = %while.end, %if.end7.i.i102.no_func_crit_edge, %kcalloc.exit104.thread, %if.end7.i.i.no_func_crit_edge, %kcalloc.exit.thread
  %ret.2 = phi i32 [ %ret.1, %while.end ], [ -12, %if.end7.i.i.no_func_crit_edge ], [ -12, %if.end7.i.i102.no_func_crit_edge ], [ -12, %kcalloc.exit.thread ], [ -12, %kcalloc.exit104.thread ]
  %33 = load ptr, ptr @f_ffs, align 4
  tail call void @kfree(ptr noundef %33) #6
  br label %cleanup

cleanup:                                          ; preds = %no_func, %for.end45
  %retval.0 = phi i32 [ %ret.2, %no_func ], [ 0, %for.end45 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gfs_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gfs_exit.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gfs_exit, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gfs_exit.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %.b9 = load i1, ptr @gfs_registered, align 1
  br i1 %.b9, label %if.then5, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_composite_unregister(ptr noundef nonnull @gfs_driver) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  store i1 false, ptr @gfs_registered, align 1
  %0 = load ptr, ptr @f_ffs, align 4
  tail call void @kfree(ptr noundef %0) #6
  %1 = load i32, ptr @func_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.not = icmp eq i32 %1, 0
  br i1 %cmp11.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %2 = load ptr, ptr @fi_ffs, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 %i.012
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_put_function_instance(ptr noundef %4) #6
  %inc = add nuw i32 %i.012, 1
  %5 = load i32, ptr @func_num, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %6 = load ptr, ptr @fi_ffs, align 4
  tail call void @kfree(ptr noundef %6) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ffs_single_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ffs_name_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @functionfs_ready_callback(ptr nocapture noundef readnone %ffs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @missing_funcs, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @missing_funcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %.b9 = load i1, ptr @gfs_registered, align 1
  br i1 %.b9, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  store i1 true, ptr @gfs_registered, align 1
  %call = tail call i32 @usb_composite_probe(ptr noundef nonnull @gfs_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then6, label %if.end3.cleanup_crit_edge, !prof !168

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load i32, ptr @missing_funcs, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @missing_funcs, align 4
  store i1 false, ptr @gfs_registered, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %call, %if.then6 ], [ %call, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @functionfs_closed_callback(ptr nocapture noundef readnone %ffs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @missing_funcs, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @missing_funcs, align 4
  %.b1 = load i1, ptr @gfs_registered, align 1
  br i1 %.b1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_composite_unregister(ptr noundef nonnull @gfs_driver) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  store i1 false, ptr @gfs_registered, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @functionfs_acquire_dev(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @try_module_get(ptr noundef null) #6
  %spec.select = select i1 %call, ptr null, ptr inttoptr (i32 -2 to ptr)
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @functionfs_release_dev(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @module_put(ptr noundef null) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs_bind(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gfs_bind.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gfs_bind, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gfs_bind.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr @missing_funcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool4.not = icmp eq i32 %0, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.cleanup125_crit_edge

do.end.cleanup125_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup125

if.end6:                                          ; preds = %do.end
  %1 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cdev, align 4
  %quirk_altset_not_supp.i.i = getelementptr inbounds %struct.usb_gadget, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %quirk_altset_not_supp.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i.i = load i32, ptr %quirk_altset_not_supp.i.i, align 4
  %4 = and i32 %bf.load.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.not.i, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %call9 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.13) #6
  store ptr %call9, ptr @fi_ecm, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call9 to i32
  br label %cleanup125

cleanup:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %net15 = getelementptr inbounds %struct.f_ecm_opts, ptr %call9, i32 0, i32 1
  br label %if.end28

if.else:                                          ; preds = %if.end6
  %call16 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.14) #6
  store ptr %call16, ptr @fi_geth, align 4
  %cmp.i162 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %cleanup25.thread, label %cleanup25

cleanup25.thread:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call16 to i32
  br label %cleanup125

cleanup25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %net24 = getelementptr inbounds %struct.f_gether_opts, ptr %call16, i32 0, i32 1
  br label %if.end28

if.end28:                                         ; preds = %cleanup25, %cleanup
  %net.2.in = phi ptr [ %net15, %cleanup ], [ %net24, %cleanup25 ]
  %7 = ptrtoint ptr %net.2.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %net.2 = load ptr, ptr %net.2.in, align 4
  %call29 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.15) #6
  store ptr %call29, ptr @fi_rndis, align 4
  %cmp.i163 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call29 to i32
  br label %error

if.end33:                                         ; preds = %if.end28
  %9 = load i32, ptr @qmult, align 4
  tail call void @gether_set_qmult(ptr noundef %net.2, i32 noundef %9) #6
  %10 = load ptr, ptr @host_addr, align 4
  %call34 = tail call i32 @gether_set_host_addr(ptr noundef %net.2, ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.end39, label %if.end33.if.end42_crit_edge

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %11 = load ptr, ptr @host_addr, align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %11) #10
  br label %if.end42

if.end42:                                         ; preds = %do.end39, %if.end33.if.end42_crit_edge
  %12 = load ptr, ptr @dev_addr, align 4
  %call43 = tail call i32 @gether_set_dev_addr(ptr noundef %net.2, ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.end48, label %if.end42.if.end51_crit_edge

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %13 = load ptr, ptr @dev_addr, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %13) #10
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %if.end42.if.end51_crit_edge
  %14 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cdev, align 4
  tail call void @gether_set_gadget(ptr noundef %net.2, ptr noundef %15) #6
  %call53 = tail call i32 @gether_register_netdev(ptr noundef %net.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.error_rndis_crit_edge

if.end51.error_rndis_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_rndis

if.end56:                                         ; preds = %if.end51
  %16 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cdev, align 4
  %quirk_altset_not_supp.i.i164 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %quirk_altset_not_supp.i.i164 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i.i165 = load i32, ptr %quirk_altset_not_supp.i.i164, align 4
  %19 = and i32 %bf.load.i.i165, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.not.i166 = icmp eq i32 %19, 0
  br i1 %tobool.not.not.i166, label %if.then59, label %if.else64

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %20 = load ptr, ptr @fi_ecm, align 4
  %bound = getelementptr inbounds %struct.f_ecm_opts, ptr %20, i32 0, i32 2
  br label %if.end70

if.else64:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %21 = load ptr, ptr @fi_geth, align 4
  %bound69 = getelementptr inbounds %struct.f_gether_opts, ptr %21, i32 0, i32 2
  br label %if.end70

if.end70:                                         ; preds = %if.else64, %if.then59
  %bound69.sink = phi ptr [ %bound69, %if.else64 ], [ %bound, %if.then59 ]
  %22 = ptrtoint ptr %bound69.sink to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %bound69.sink, align 4
  %23 = load ptr, ptr @fi_rndis, align 4
  tail call void @rndis_borrow_net(ptr noundef %23, ptr noundef %net.2) #6
  %call71 = tail call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @gfs_strings) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp = icmp slt i32 %call71, 0
  br i1 %cmp, label %if.end70.error_rndis_crit_edge, label %if.end79, !prof !168

if.end70.error_rndis_crit_edge:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_rndis

if.end79:                                         ; preds = %if.end70
  %24 = load i8, ptr getelementptr inbounds ([7 x %struct.usb_string], ptr @gfs_strings, i32 0, i32 1), align 4
  store i8 %24, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @gfs_dev_desc, i32 0, i32 11), align 1
  %25 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cdev, align 4
  %is_otg.i = getelementptr inbounds %struct.usb_gadget, ptr %26, i32 0, i32 17
  %27 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i = load i32, ptr %is_otg.i, align 4
  %28 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool82.not = icmp eq i32 %28, 0
  br i1 %tobool82.not, label %if.end79.if.end95_crit_edge, label %land.lhs.true

if.end79.if.end95_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

land.lhs.true:                                    ; preds = %if.end79
  %29 = load ptr, ptr @gfs_otg_desc, align 4
  %tobool83.not = icmp eq ptr %29, null
  br i1 %tobool83.not, label %if.then84, label %land.lhs.true.if.end95_crit_edge

land.lhs.true.if.end95_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then84:                                        ; preds = %land.lhs.true
  %call86 = tail call ptr @usb_otg_descriptor_alloc(ptr noundef %26) #6
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.then84.error_rndis_crit_edge, label %cleanup92.thread

if.then84.error_rndis_crit_edge:                  ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_rndis

cleanup92.thread:                                 ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cdev, align 4
  %call91 = tail call i32 @usb_otg_descriptor_init(ptr noundef %31, ptr noundef nonnull %call86) #6
  store ptr %call86, ptr @gfs_otg_desc, align 4
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @gfs_otg_desc, i32 0, i32 1), align 4
  br label %if.end95

if.end95:                                         ; preds = %cleanup92.thread, %land.lhs.true.if.end95_crit_edge, %if.end79.if.end95_crit_edge
  %32 = load ptr, ptr getelementptr inbounds ([7 x %struct.usb_string], ptr @gfs_strings, i32 0, i32 3, i32 1), align 4
  store ptr %32, ptr @gfs_configurations, align 4
  %33 = load i8, ptr getelementptr inbounds ([7 x %struct.usb_string], ptr @gfs_strings, i32 0, i32 3), align 4
  store i8 %33, ptr getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 0, i32 0, i32 6), align 1
  store i8 1, ptr getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 0, i32 0, i32 5), align 4
  store i8 64, ptr getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 0, i32 0, i32 7), align 2
  store i32 0, ptr getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 0, i32 2), align 4
  %call105 = tail call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @gfs_configurations, ptr noundef nonnull @gfs_do_config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %if.end95.error_unbind_crit_edge, label %for.cond.1

if.end95.error_unbind_crit_edge:                  ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_unbind

for.cond.1:                                       ; preds = %if.end95
  %34 = load ptr, ptr getelementptr inbounds ([7 x %struct.usb_string], ptr @gfs_strings, i32 0, i32 4, i32 1), align 4
  store ptr %34, ptr getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 1), align 4
  %35 = load i8, ptr getelementptr inbounds ([7 x %struct.usb_string], ptr @gfs_strings, i32 0, i32 4), align 4
  store i8 %35, ptr getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 1, i32 0, i32 6), align 1
  store i8 2, ptr getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 1, i32 0, i32 5), align 4
  store i8 64, ptr getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 1, i32 0, i32 7), align 2
  store i32 1, ptr getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 1, i32 2), align 4
  %call105.1 = tail call i32 @usb_add_config(ptr noundef %cdev, ptr noundef getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 1), ptr noundef nonnull @gfs_do_config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.1)
  %cmp106.1 = icmp slt i32 %call105.1, 0
  br i1 %cmp106.1, label %for.cond.1.error_unbind_crit_edge, label %for.cond.2

for.cond.1.error_unbind_crit_edge:                ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_unbind

for.cond.2:                                       ; preds = %for.cond.1
  %36 = load ptr, ptr getelementptr inbounds ([7 x %struct.usb_string], ptr @gfs_strings, i32 0, i32 5, i32 1), align 4
  store ptr %36, ptr getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 2), align 4
  %37 = load i8, ptr getelementptr inbounds ([7 x %struct.usb_string], ptr @gfs_strings, i32 0, i32 5), align 4
  store i8 %37, ptr getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 2, i32 0, i32 6), align 1
  store i8 3, ptr getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 2, i32 0, i32 5), align 4
  store i8 64, ptr getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 2, i32 0, i32 7), align 2
  store i32 2, ptr getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 2, i32 2), align 4
  %call105.2 = tail call i32 @usb_add_config(ptr noundef %cdev, ptr noundef getelementptr inbounds ([3 x %struct.gfs_configuration], ptr @gfs_configurations, i32 0, i32 2), ptr noundef nonnull @gfs_do_config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.2)
  %cmp106.2 = icmp slt i32 %call105.2, 0
  br i1 %cmp106.2, label %for.cond.2.error_unbind_crit_edge, label %for.end

for.cond.2.error_unbind_crit_edge:                ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_unbind

for.end:                                          ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #6
  br label %cleanup125

error_unbind:                                     ; preds = %for.cond.2.error_unbind_crit_edge, %for.cond.1.error_unbind_crit_edge, %if.end95.error_unbind_crit_edge
  %call105.lcssa = phi i32 [ %call105, %if.end95.error_unbind_crit_edge ], [ %call105.1, %for.cond.1.error_unbind_crit_edge ], [ %call105.2, %for.cond.2.error_unbind_crit_edge ]
  %38 = load ptr, ptr @gfs_otg_desc, align 4
  tail call void @kfree(ptr noundef %38) #6
  store ptr null, ptr @gfs_otg_desc, align 4
  br label %error_rndis

error_rndis:                                      ; preds = %error_unbind, %if.then84.error_rndis_crit_edge, %if.end70.error_rndis_crit_edge, %if.end51.error_rndis_crit_edge
  %ret.0 = phi i32 [ %call53, %if.end51.error_rndis_crit_edge ], [ %call71, %if.end70.error_rndis_crit_edge ], [ %call105.lcssa, %error_unbind ], [ %call71, %if.then84.error_rndis_crit_edge ]
  %39 = load ptr, ptr @fi_rndis, align 4
  tail call void @usb_put_function_instance(ptr noundef %39) #6
  br label %error

error:                                            ; preds = %error_rndis, %if.then31
  %ret.1 = phi i32 [ %8, %if.then31 ], [ %ret.0, %error_rndis ]
  %40 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cdev, align 4
  %quirk_altset_not_supp.i.i167 = getelementptr inbounds %struct.usb_gadget, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %quirk_altset_not_supp.i.i167 to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load.i.i168 = load i32, ptr %quirk_altset_not_supp.i.i167, align 4
  %43 = and i32 %bf.load.i.i168, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.not.i169 = icmp eq i32 %43, 0
  br i1 %tobool.not.not.i169, label %if.then122, label %if.else123

if.then122:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  %44 = load ptr, ptr @fi_ecm, align 4
  tail call void @usb_put_function_instance(ptr noundef %44) #6
  br label %cleanup125

if.else123:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  %45 = load ptr, ptr @fi_geth, align 4
  tail call void @usb_put_function_instance(ptr noundef %45) #6
  br label %cleanup125

cleanup125:                                       ; preds = %if.else123, %if.then122, %for.end, %cleanup25.thread, %cleanup.thread, %do.end.cleanup125_crit_edge
  %retval.3 = phi i32 [ 0, %for.end ], [ -19, %do.end.cleanup125_crit_edge ], [ %ret.1, %if.else123 ], [ %ret.1, %if.then122 ], [ %5, %cleanup.thread ], [ %6, %cleanup25.thread ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs_unbind(ptr nocapture noundef readonly %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gfs_unbind.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gfs_unbind, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gfs_unbind.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr @f_rndis, align 4
  tail call void @usb_put_function(ptr noundef %0) #6
  %1 = load ptr, ptr @fi_rndis, align 4
  tail call void @usb_put_function_instance(ptr noundef %1) #6
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev, align 4
  %quirk_altset_not_supp.i.i = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %quirk_altset_not_supp.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i.i = load i32, ptr %quirk_altset_not_supp.i.i, align 4
  %5 = and i32 %bf.load.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not.i = icmp eq i32 %5, 0
  %f_ecm.val = load ptr, ptr @f_ecm, align 4
  %f_geth.val = load ptr, ptr @f_geth, align 4
  %6 = select i1 %tobool.not.not.i, ptr %f_ecm.val, ptr %f_geth.val
  tail call void @usb_put_function(ptr noundef %6) #6
  %fi_ecm.val = load ptr, ptr @fi_ecm, align 4
  %fi_geth.val = load ptr, ptr @fi_geth, align 4
  %7 = select i1 %tobool.not.not.i, ptr %fi_ecm.val, ptr %fi_geth.val
  tail call void @usb_put_function_instance(ptr noundef %7) #6
  %8 = load i32, ptr @func_num, align 4
  %mul10 = mul i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul10)
  %cmp11.not = icmp eq i32 %mul10, 0
  br i1 %cmp11.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %9 = load ptr, ptr @f_ffs, align 4
  %add.ptr = getelementptr ptr, ptr %9, i32 %i.012
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  tail call void @usb_put_function(ptr noundef %11) #6
  %inc = add nuw i32 %i.012, 1
  %12 = load i32, ptr @func_num, align 4
  %mul = mul i32 %12, 3
  %cmp = icmp ult i32 %inc, %mul
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %13 = load ptr, ptr @gfs_otg_desc, align 4
  tail call void @kfree(ptr noundef %13) #6
  store ptr null, ptr @gfs_otg_desc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_qmult(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_host_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_dev_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_gadget(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_borrow_net(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_ids_tab(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_descriptor_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_otg_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs_do_config(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @missing_funcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %1 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cdev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %is_otg.i = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %is_otg.i, align 4
  %6 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %descriptors = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 2
  %7 = ptrtoint ptr %descriptors to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @gfs_otg_desc, ptr %descriptors, align 4
  %bmAttributes = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 7
  %8 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmAttributes, align 2
  %10 = or i8 %9, 32
  store i8 %10, ptr %bmAttributes, align 2
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %eth = getelementptr inbounds %struct.gfs_configuration, ptr %c, i32 0, i32 1
  %11 = ptrtoint ptr %eth to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eth, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end4.if.end14_crit_edge, label %if.then6

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then6:                                         ; preds = %if.end4
  %call8 = tail call i32 %12(ptr noundef %c) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then6.cleanup_crit_edge, label %if.then6.if.end14_crit_edge, !prof !168

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.then6.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  %13 = load i32, ptr @func_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp15104.not = icmp eq i32 %13, 0
  br i1 %cmp15104.not, label %if.end14.for.end_crit_edge, label %for.body.lr.ph

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end14
  %num = getelementptr inbounds %struct.gfs_configuration, ptr %c, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = load ptr, ptr @fi_ffs, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %i.0105
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call17 = tail call ptr @usb_get_function(ptr noundef %16) #6
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num, align 4
  %arrayidx18 = getelementptr [3 x ptr], ptr @f_ffs, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr ptr, ptr %20, i32 %i.0105
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call17, ptr %arrayidx19, align 4
  %22 = load i32, ptr %num, align 4
  %arrayidx21 = getelementptr [3 x ptr], ptr @f_ffs, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx21, align 4
  %arrayidx22 = getelementptr ptr, ptr %24, i32 %i.0105
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx22, align 4
  %cmp.i = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end29

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %26 to i32
  br label %error

if.end29:                                         ; preds = %for.body
  %call33 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %for.inc

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num, align 4
  %arrayidx38 = getelementptr [3 x ptr], ptr @f_ffs, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx38, align 4
  %arrayidx39 = getelementptr ptr, ptr %31, i32 %i.0105
  %32 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx39, align 4
  tail call void @usb_put_function(ptr noundef %33) #6
  br label %error

for.inc:                                          ; preds = %if.end29
  %inc = add nuw i32 %i.0105, 1
  %34 = load i32, ptr @func_num, align 4
  %cmp15 = icmp ult i32 %inc, %34
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end14.for.end_crit_edge
  %next_interface_id = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 12
  %35 = ptrtoint ptr %next_interface_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %next_interface_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %36)
  %cmp42 = icmp ult i8 %36, 16
  br i1 %cmp42, label %if.then44, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv41 = zext i8 %36 to i32
  %arrayidx46 = getelementptr %struct.usb_configuration, ptr %c, i32 0, i32 14, i32 %conv41
  %37 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx46, align 4
  br label %cleanup

error:                                            ; preds = %if.then36, %if.then24
  %ret.0 = phi i32 [ %27, %if.then24 ], [ %call33, %if.then36 ]
  %dec106 = add i32 %i.0105, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec106)
  %cmp48107 = icmp sgt i32 %dec106, -1
  br i1 %cmp48107, label %error.while.body_crit_edge, label %error.cleanup_crit_edge

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

error.while.body_crit_edge:                       ; preds = %error
  br label %while.body

while.body:                                       ; preds = %if.end58.while.body_crit_edge, %error.while.body_crit_edge
  %dec108 = phi i32 [ %dec, %if.end58.while.body_crit_edge ], [ %dec106, %error.while.body_crit_edge ]
  %38 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num, align 4
  %arrayidx51 = getelementptr [3 x ptr], ptr @f_ffs, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx51, align 4
  %arrayidx52 = getelementptr ptr, ptr %41, i32 %dec108
  %42 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx52, align 4
  %cmp.i96 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %while.body.if.end58_crit_edge, label %if.then54

while.body.if.end58_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then54:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_remove_function(ptr noundef %c, ptr noundef %43) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %while.body.if.end58_crit_edge
  %44 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num, align 4
  %arrayidx60 = getelementptr [3 x ptr], ptr @f_ffs, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx60, align 4
  %arrayidx61 = getelementptr ptr, ptr %47, i32 %dec108
  %48 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx61, align 4
  tail call void @usb_put_function(ptr noundef %49) #6
  %dec = add i32 %dec108, -1
  %cmp48 = icmp sgt i32 %dec, -1
  br i1 %cmp48, label %if.end58.while.body_crit_edge, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58.while.body_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %if.end58.cleanup_crit_edge, %error.cleanup_crit_edge, %if.then44, %for.end.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call8, %if.then6.cleanup_crit_edge ], [ 0, %if.then44 ], [ 0, %for.end.cleanup_crit_edge ], [ %ret.0, %error.cleanup_crit_edge ], [ %ret.0, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_overwrite_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bind_rndis_config(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fi_rndis, align 4
  %call = tail call ptr @usb_get_function(ptr noundef %0) #6
  store ptr %call, ptr @f_rndis, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = load ptr, ptr @f_rndis, align 4
  tail call void @usb_put_function(ptr noundef %2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call3, %if.then4 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eth_bind_config(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %quirk_altset_not_supp.i.i = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %quirk_altset_not_supp.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i.i = load i32, ptr %quirk_altset_not_supp.i.i, align 4
  %5 = and i32 %bf.load.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.not.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr @fi_ecm, align 4
  %call1 = tail call ptr @usb_get_function(ptr noundef %6) #6
  store ptr %call1, ptr @f_ecm, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call5 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = load ptr, ptr @f_ecm, align 4
  tail call void @usb_put_function(ptr noundef %8) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr @fi_geth, align 4
  %call8 = tail call ptr @usb_get_function(ptr noundef %9) #6
  store ptr %call8, ptr @f_geth, align 4
  %cmp.i22 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.else
  %call13 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %11 = load ptr, ptr @f_geth, align 4
  tail call void @usb_put_function(ptr noundef %11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12.cleanup_crit_edge, %if.then10, %if.then6, %if.end.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ %7, %if.then3 ], [ %10, %if.then10 ], [ %call5, %if.then6 ], [ %call5, %if.end.cleanup_crit_edge ], [ %call13, %if.then15 ], [ %call13, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !41, !43, !44, !46, !48, !49, !51, !53, !54, !56, !58, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !72, !74, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !89, !90, !91, !92, !93, !95, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !125, !127, !129, !131, !132, !133, !135, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__param_qmult, !1, !"__param_qmult", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_qmulttype337, !1, !"__UNIQUE_ID_qmulttype337", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_qmult338, !1, !"__UNIQUE_ID_qmult338", i1 false, i1 false}
!4 = !{ptr @__param_dev_addr, !1, !"__param_dev_addr", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_dev_addrtype339, !1, !"__UNIQUE_ID_dev_addrtype339", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_dev_addr340, !1, !"__UNIQUE_ID_dev_addr340", i1 false, i1 false}
!7 = !{ptr @__param_host_addr, !1, !"__param_host_addr", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_host_addrtype341, !1, !"__UNIQUE_ID_host_addrtype341", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_host_addr342, !1, !"__UNIQUE_ID_host_addr342", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description343, !11, !"__UNIQUE_ID_description343", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 53, i32 1}
!12 = !{ptr @__UNIQUE_ID_author344, !13, !"__UNIQUE_ID_author344", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 54, i32 1}
!14 = !{ptr @__UNIQUE_ID_file345, !15, !"__UNIQUE_ID_file345", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 55, i32 1}
!16 = !{ptr @__UNIQUE_ID_license346, !15, !"__UNIQUE_ID_license346", i1 false, i1 false}
!17 = !{ptr @__param_idVendor, !18, !"__param_idVendor", i1 false, i1 false}
!18 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 62, i32 1}
!19 = !{ptr @__UNIQUE_ID_idVendortype347, !18, !"__UNIQUE_ID_idVendortype347", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_idVendor348, !18, !"__UNIQUE_ID_idVendor348", i1 false, i1 false}
!21 = !{ptr @__param_idProduct, !18, !"__param_idProduct", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_idProducttype349, !18, !"__UNIQUE_ID_idProducttype349", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_idProduct350, !18, !"__UNIQUE_ID_idProduct350", i1 false, i1 false}
!24 = !{ptr @__param_bcdDevice, !18, !"__param_bcdDevice", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_bcdDevicetype351, !18, !"__UNIQUE_ID_bcdDevicetype351", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_bcdDevice352, !18, !"__UNIQUE_ID_bcdDevice352", i1 false, i1 false}
!27 = !{ptr @__param_iSerialNumber, !18, !"__param_iSerialNumber", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_iSerialNumbertype353, !18, !"__UNIQUE_ID_iSerialNumbertype353", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_iSerialNumber354, !18, !"__UNIQUE_ID_iSerialNumber354", i1 false, i1 false}
!30 = !{ptr @__param_iManufacturer, !18, !"__param_iManufacturer", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_iManufacturertype355, !18, !"__UNIQUE_ID_iManufacturertype355", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_iManufacturer356, !18, !"__UNIQUE_ID_iManufacturer356", i1 false, i1 false}
!33 = !{ptr @__param_iProduct, !18, !"__param_iProduct", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_iProducttype357, !18, !"__UNIQUE_ID_iProducttype357", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_iProduct358, !18, !"__UNIQUE_ID_iProduct358", i1 false, i1 false}
!36 = !{ptr @__param_bDeviceClass, !37, !"__param_bDeviceClass", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 78, i32 1}
!38 = !{ptr @__UNIQUE_ID_bDeviceClasstype359, !37, !"__UNIQUE_ID_bDeviceClasstype359", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_bDeviceClass360, !40, !"__UNIQUE_ID_bDeviceClass360", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 79, i32 1}
!41 = !{ptr @__param_bDeviceSubClass, !42, !"__param_bDeviceSubClass", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 80, i32 1}
!43 = !{ptr @__UNIQUE_ID_bDeviceSubClasstype361, !42, !"__UNIQUE_ID_bDeviceSubClasstype361", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_bDeviceSubClass362, !45, !"__UNIQUE_ID_bDeviceSubClass362", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 81, i32 1}
!46 = !{ptr @__param_bDeviceProtocol, !47, !"__param_bDeviceProtocol", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 82, i32 1}
!48 = !{ptr @__UNIQUE_ID_bDeviceProtocoltype363, !47, !"__UNIQUE_ID_bDeviceProtocoltype363", i1 false, i1 false}
!49 = !{ptr @__UNIQUE_ID_bDeviceProtocol364, !50, !"__UNIQUE_ID_bDeviceProtocol364", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 83, i32 1}
!51 = !{ptr @__param_functions, !52, !"__param_functions", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 84, i32 1}
!53 = !{ptr @__UNIQUE_ID_functionstype365, !52, !"__UNIQUE_ID_functionstype365", i1 false, i1 false}
!54 = !{ptr @__UNIQUE_ID_functions366, !55, !"__UNIQUE_ID_functions366", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 85, i32 1}
!56 = !{ptr @__initcall__kmod_g_ffs__368_239_gfs_init6, !57, !"__initcall__kmod_g_ffs__368_239_gfs_init6", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 239, i32 1}
!58 = !{ptr @.str, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 245, i32 2}
!60 = !{ptr @.str.1, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.2, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.3, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @gfs_exit.__UNIQUE_ID_ddebug369, !59, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!64 = !{ptr @.str.4, !59, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @__exitcall_gfs_exit, !66, !"__exitcall_gfs_exit", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 258, i32 1}
!67 = !{ptr @dev_addr, !1, !"dev_addr", i1 false, i1 false}
!68 = !{ptr @host_addr, !1, !"host_addr", i1 false, i1 false}
!69 = !{ptr @coverwrite, !18, !"coverwrite", i1 false, i1 false}
!70 = !{ptr @func_num, !71, !"func_num", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 76, i32 21}
!72 = distinct !{null, !73, !"gfs_registered", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 158, i32 13}
!74 = !{ptr @fi_ffs, !75, !"fi_ffs", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 160, i32 39}
!76 = !{ptr @__param_str_qmult, !1, !"__param_str_qmult", i1 false, i1 false}
!77 = !{ptr @qmult, !1, !"qmult", i1 false, i1 false}
!78 = !{ptr @__param_str_dev_addr, !1, !"__param_str_dev_addr", i1 false, i1 false}
!79 = !{ptr @__param_str_host_addr, !1, !"__param_str_host_addr", i1 false, i1 false}
!80 = !{ptr @__param_str_idVendor, !18, !"__param_str_idVendor", i1 false, i1 false}
!81 = !{ptr @__param_str_idProduct, !18, !"__param_str_idProduct", i1 false, i1 false}
!82 = !{ptr @__param_str_bcdDevice, !18, !"__param_str_bcdDevice", i1 false, i1 false}
!83 = !{ptr @__param_str_iSerialNumber, !18, !"__param_str_iSerialNumber", i1 false, i1 false}
!84 = !{ptr @__param_str_iManufacturer, !18, !"__param_str_iManufacturer", i1 false, i1 false}
!85 = !{ptr @__param_str_iProduct, !18, !"__param_str_iProduct", i1 false, i1 false}
!86 = !{ptr @__param_str_bDeviceClass, !37, !"__param_str_bDeviceClass", i1 false, i1 false}
!87 = !{ptr @gfs_dev_desc, !88, !"gfs_dev_desc", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 64, i32 37}
!89 = !{ptr @__param_str_bDeviceSubClass, !42, !"__param_str_bDeviceSubClass", i1 false, i1 false}
!90 = !{ptr @__param_str_bDeviceProtocol, !47, !"__param_str_bDeviceProtocol", i1 false, i1 false}
!91 = !{ptr @__param_str_functions, !52, !"__param_str_functions", i1 false, i1 false}
!92 = !{ptr @__param_arr_functions, !52, !"__param_arr_functions", i1 false, i1 false}
!93 = !{ptr @func_names, !94, !"func_names", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 75, i32 14}
!95 = !{ptr @.str.5, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 183, i32 2}
!97 = !{ptr @gfs_init.__UNIQUE_ID_ddebug367, !96, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!98 = !{ptr @.str.6, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 208, i32 41}
!100 = distinct !{null, !101, !"gfs_single_func", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 159, i32 13}
!102 = !{ptr @missing_funcs, !103, !"missing_funcs", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 157, i32 21}
!104 = !{ptr @gfs_driver, !105, !"gfs_driver", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 148, i32 36}
!106 = !{ptr @gfs_dev_strings, !107, !"gfs_dev_strings", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 106, i32 35}
!108 = !{ptr @.str.7, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 91, i32 36}
!110 = !{ptr @.str.8, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 92, i32 31}
!112 = !{ptr @.str.9, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 95, i32 9}
!114 = !{ptr @.str.10, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 98, i32 9}
!116 = !{ptr @.str.11, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 101, i32 9}
!118 = !{ptr @gfs_strings, !119, !"gfs_strings", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 90, i32 26}
!120 = !{ptr @.str.12, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 319, i32 2}
!122 = !{ptr @gfs_bind.__UNIQUE_ID_ddebug370, !121, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!123 = !{ptr @.str.13, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 327, i32 38}
!125 = !{ptr @.str.14, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 335, i32 39}
!127 = !{ptr @.str.15, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 346, i32 40}
!129 = !{ptr @.str.16, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 361, i32 3}
!131 = !{ptr @gfs_bind._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @gfs_bind._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.18, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 363, i32 3}
!135 = !{ptr @gfs_bind._entry.17, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @gfs_bind._entry_ptr.19, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @fi_ecm, !138, !"fi_ecm", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 35, i32 38}
!139 = !{ptr @fi_geth, !140, !"fi_geth", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 37, i32 38}
!141 = !{ptr @fi_rndis, !142, !"fi_rndis", i1 false, i1 false}
!142 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 42, i32 38}
!143 = !{ptr @gfs_otg_desc, !144, !"gfs_otg_desc", i1 false, i1 false}
!144 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 87, i32 44}
!145 = !{ptr @gfs_configurations, !146, !"gfs_configurations", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 120, i32 33}
!147 = !{ptr @f_rndis, !148, !"f_rndis", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 43, i32 29}
!149 = !{ptr @f_ecm, !150, !"f_ecm", i1 false, i1 false}
!150 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 36, i32 29}
!151 = !{ptr @f_geth, !152, !"f_geth", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 38, i32 29}
!153 = !{ptr @.str.20, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 448, i32 2}
!155 = !{ptr @gfs_unbind.__UNIQUE_ID_ddebug371, !154, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!156 = !{ptr @f_ffs, !157, !"f_ffs", i1 false, i1 false}
!157 = !{!"../drivers/usb/gadget/legacy/g_ffs.c", i32 161, i32 30}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i64 2148964786, i64 2148964791, i64 2148964804, i64 2148964848, i64 2148964882, i64 2148964903}
!168 = !{!"branch_weights", i32 1, i32 2000}
