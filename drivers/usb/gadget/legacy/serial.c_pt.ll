; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/serial.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/serial.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.usb_composite_overwrite = type { i16, i16, i16, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_string = type { i8, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@__param_str_idVendor = internal constant [18 x i8] c"g_serial.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype228 = internal constant [34 x i8] c"g_serial.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor229 = internal constant [37 x i8] c"g_serial.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [19 x i8] c"g_serial.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype230 = internal constant [35 x i8] c"g_serial.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct231 = internal constant [39 x i8] c"g_serial.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [19 x i8] c"g_serial.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype232 = internal constant [35 x i8] c"g_serial.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice233 = internal constant [49 x i8] c"g_serial.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [23 x i8] c"g_serial.iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype234 = internal constant [38 x i8] c"g_serial.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber235 = internal constant [48 x i8] c"g_serial.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [23 x i8] c"g_serial.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype236 = internal constant [38 x i8] c"g_serial.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer237 = internal constant [52 x i8] c"g_serial.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [18 x i8] c"g_serial.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype238 = internal constant [33 x i8] c"g_serial.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct239 = internal constant [42 x i8] c"g_serial.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [40 x i8] c"g_serial.description=Gadget Serial v2.4\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [28 x i8] c"g_serial.author=Al Borchers\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [31 x i8] c"g_serial.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [49 x i8] c"g_serial.file=drivers/usb/gadget/legacy/g_serial\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [21 x i8] c"g_serial.license=GPL\00", section ".modinfo", align 1
@__param_str_use_acm = internal constant [17 x i8] c"g_serial.use_acm\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_acm = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_acm = internal constant %struct.kernel_param { ptr @__param_str_use_acm, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @use_acm } }, section "__param", align 4
@__UNIQUE_ID_use_acmtype245 = internal constant [31 x i8] c"g_serial.parmtype=use_acm:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_acm246 = internal constant [47 x i8] c"g_serial.parm=use_acm:Use CDC ACM, default=yes\00", section ".modinfo", align 1
@__param_str_use_obex = internal constant [18 x i8] c"g_serial.use_obex\00", align 1
@use_obex = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_use_obex = internal constant %struct.kernel_param { ptr @__param_str_use_obex, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @use_obex } }, section "__param", align 4
@__UNIQUE_ID_use_obextype247 = internal constant [32 x i8] c"g_serial.parmtype=use_obex:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_obex248 = internal constant [48 x i8] c"g_serial.parm=use_obex:Use CDC OBEX, default=no\00", section ".modinfo", align 1
@__param_str_n_ports = internal constant [17 x i8] c"g_serial.n_ports\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@n_ports = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_n_ports = internal constant %struct.kernel_param { ptr @__param_str_n_ports, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @n_ports } }, section "__param", align 4
@__UNIQUE_ID_n_portstype249 = internal constant [31 x i8] c"g_serial.parmtype=n_ports:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_n_ports250 = internal constant [59 x i8] c"g_serial.parm=n_ports:number of ports to create, default=1\00", section ".modinfo", align 1
@__param_str_enable = internal constant [16 x i8] c"g_serial.enable\00", align 1
@enable_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @enable_set, ptr @param_get_bool, ptr null }, [16 x i8] zeroinitializer }, align 32
@enable = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @enable_ops, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @enable } }, section "__param", align 4
@__initcall__kmod_g_serial__251_317_init6 = internal global ptr @init, section ".initcall6.init", align 4
@gserial_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @.str.5, ptr @device_desc, ptr @dev_strings, i32 5, i8 0, ptr @gs_bind, ptr @gs_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cleanup = internal global ptr @cleanup, section ".exitcall.exit", align 4
@serial_config_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CDC ACM config\00", [17 x i8] zeroinitializer }, align 32
@device_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 0, i8 0, i8 0, i8 0, i16 9477, i16 0, i16 36, i8 0, i8 0, i8 0, i8 1 }, [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CDC OBEX config\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Generic Serial config\00", [42 x i8] zeroinitializer }, align 32
@strings_dev = internal global { [5 x %struct.usb_string], [56 x i8] } { [5 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.3 }, %struct.usb_string { i8 0, ptr @.str.4 }, %struct.usb_string { i8 0, ptr @.str.3 }, %struct.usb_string zeroinitializer, %struct.usb_string zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Gadget Serial v2.4\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"g_serial\00", [23 x i8] zeroinitializer }, align 32
@dev_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stringtab_dev, ptr null], [24 x i8] zeroinitializer }, align 32
@stringtab_dev = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_dev }, [24 x i8] zeroinitializer }, align 32
@otg_desc = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acm\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"obex\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gser\00", [27 x i8] zeroinitializer }, align 32
@gs_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 239, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gs_bind\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/gadget/legacy/serial.c\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gs_bind._entry_ptr = internal global ptr @gs_bind._entry, section ".printk_index", align 4
@fi_serial = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@f_serial = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 28, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [8 x i8] c"use_acm\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 88, i32 13 }
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"use_obex\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 92, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant [8 x i8] c"n_ports\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 96, i32 17 }
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"enable_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 123, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 100, i32 13 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"gserial_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 264, i32 36 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"serial_config_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 132, i32 33 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 292, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"device_desc\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 62, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 298, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 304, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"strings_dev\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 44, i32 26 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 45, i32 36 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 46, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 265, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"dev_strings\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 57, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"stringtab_dev\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 52, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [9 x i8] c"otg_desc\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 78, i32 44 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 226, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 230, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 233, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 239, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"fi_serial\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 139, i32 38 }
@___asan_gen_.101 = private unnamed_addr constant [9 x i8] c"f_serial\00", align 1
@___asan_gen_.102 = private constant [38 x i8] c"../drivers/usb/gadget/legacy/serial.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 140, i32 29 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_bcdDevice233, ptr @__UNIQUE_ID_bcdDevicetype232, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_iManufacturer237, ptr @__UNIQUE_ID_iManufacturertype236, ptr @__UNIQUE_ID_iProduct239, ptr @__UNIQUE_ID_iProducttype238, ptr @__UNIQUE_ID_iSerialNumber235, ptr @__UNIQUE_ID_iSerialNumbertype234, ptr @__UNIQUE_ID_idProduct231, ptr @__UNIQUE_ID_idProducttype230, ptr @__UNIQUE_ID_idVendor229, ptr @__UNIQUE_ID_idVendortype228, ptr @__UNIQUE_ID_license244, ptr @__UNIQUE_ID_n_ports250, ptr @__UNIQUE_ID_n_portstype249, ptr @__UNIQUE_ID_use_acm246, ptr @__UNIQUE_ID_use_acmtype245, ptr @__UNIQUE_ID_use_obex248, ptr @__UNIQUE_ID_use_obextype247, ptr @__exitcall_cleanup, ptr @__initcall__kmod_g_serial__251_317_init6, ptr @__param_bcdDevice, ptr @__param_enable, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @__param_n_ports, ptr @__param_use_acm, ptr @__param_use_obex, ptr @cleanup, ptr @gs_bind._entry, ptr @gs_bind._entry_ptr, ptr @coverwrite, ptr @use_acm, ptr @use_obex, ptr @n_ports, ptr @enable_ops, ptr @enable, ptr @gserial_driver, ptr @serial_config_driver, ptr @.str, ptr @device_desc, ptr @.str.1, ptr @.str.2, ptr @strings_dev, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dev_strings, ptr @stringtab_dev, ptr @otg_desc, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @fi_serial, ptr @f_serial], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_acm to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_obex to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_ports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gserial_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_config_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_dev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stringtab_dev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gs_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_serial to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_serial to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @use_acm, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = load i8, ptr @use_obex, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  %.str.2..str.1 = select i1 %tobool1.not, ptr @.str.2, ptr @.str.1
  %. = select i1 %tobool1.not, i8 1, i8 3
  %.10 = select i1 %tobool1.not, i8 -1, i8 2
  %.11 = select i1 %tobool1.not, i16 -22876, i16 -22108
  br label %if.end4

if.end4:                                          ; preds = %if.else, %entry.if.end4_crit_edge
  %.str.1.sink = phi ptr [ @.str, %entry.if.end4_crit_edge ], [ %.str.2..str.1, %if.else ]
  %.sink9 = phi i8 [ 2, %entry.if.end4_crit_edge ], [ %., %if.else ]
  %.sink8 = phi i8 [ 2, %entry.if.end4_crit_edge ], [ %.10, %if.else ]
  %.sink = phi i16 [ -22620, %entry.if.end4_crit_edge ], [ %.11, %if.else ]
  store ptr %.str.1.sink, ptr @serial_config_driver, align 4
  store i8 %.sink9, ptr getelementptr inbounds (%struct.usb_configuration, ptr @serial_config_driver, i32 0, i32 5), align 4
  store i8 %.sink8, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 3), align 1
  store i16 %.sink, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 8), align 1
  store ptr %.str.1.sink, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @strings_dev, i32 0, i32 3, i32 1), align 4
  %2 = load i8, ptr @enable, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool5.not = icmp eq i8 %2, 0
  br i1 %tobool5.not, label %if.end4.return_crit_edge, label %if.end7

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @usb_composite_probe(ptr noundef nonnull @gserial_driver) #5
  br label %return

return:                                           ; preds = %if.end7, %if.end4.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end7 ], [ 0, %if.end4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load i8, ptr @enable, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_composite_unregister(ptr noundef nonnull @gserial_driver) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_set(ptr noundef %s, ptr nocapture noundef readnone %kp) #2 align 64 {
entry:
  %do_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %do_enable) #5
  %0 = ptrtoint ptr %do_enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %do_enable, align 1, !annotation !124
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtobool(ptr noundef nonnull %s, ptr noundef nonnull %do_enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i8, ptr @enable, align 1, !range !123
  %2 = ptrtoint ptr %do_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %do_enable, align 1, !range !123
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp eq i8 %1, %3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr @serial_config_driver, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end7.if.then11_crit_edge, label %if.end.i

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end3.i, label %switch_gserial_enable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @usb_composite_unregister(ptr noundef nonnull @gserial_driver) #5
  br label %if.then11

switch_gserial_enable.exit:                       ; preds = %if.end.i
  %call.i19 = call i32 @usb_composite_probe(ptr noundef nonnull @gserial_driver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool10.not = icmp eq i32 %call.i19, 0
  br i1 %tobool10.not, label %switch_gserial_enable.exit.if.then11_crit_edge, label %switch_gserial_enable.exit.cleanup_crit_edge

switch_gserial_enable.exit.cleanup_crit_edge:     ; preds = %switch_gserial_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch_gserial_enable.exit.if.then11_crit_edge:   ; preds = %switch_gserial_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

if.then11:                                        ; preds = %switch_gserial_enable.exit.if.then11_crit_edge, %if.end3.i, %if.end7.if.then11_crit_edge
  %5 = ptrtoint ptr %do_enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %do_enable, align 1, !range !123
  store i8 %6, ptr @enable, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %switch_gserial_enable.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %if.then11 ], [ %call.i19, %switch_gserial_enable.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %do_enable) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_bool(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_bind(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @strings_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup33_crit_edge, label %if.end

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup33

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @strings_dev, align 4
  store i8 %0, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 10), align 1
  %1 = load i8, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @strings_dev, i32 0, i32 1), align 4
  store i8 %1, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 11), align 1
  %2 = load i8, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @strings_dev, i32 0, i32 3), align 4
  store i8 %2, ptr getelementptr inbounds (%struct.usb_configuration, ptr @serial_config_driver, i32 0, i32 6), align 1
  %3 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cdev, align 4
  %is_otg.i = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %is_otg.i, align 4
  %6 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %if.then3

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr @otg_desc, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.then5, label %if.then3.if.end13_crit_edge

if.then3.if.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then5:                                         ; preds = %if.then3
  %call7 = tail call ptr @usb_otg_descriptor_alloc(ptr noundef %4) #5
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then5.cleanup33_crit_edge, label %cleanup.thread

if.then5.cleanup33_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup33

cleanup.thread:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdev, align 4
  %call12 = tail call i32 @usb_otg_descriptor_init(ptr noundef %9, ptr noundef nonnull %call7) #5
  store ptr %call7, ptr @otg_desc, align 4
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @otg_desc, i32 0, i32 1), align 4
  br label %if.end13

if.end13:                                         ; preds = %cleanup.thread, %if.then3.if.end13_crit_edge
  store ptr @otg_desc, ptr getelementptr inbounds (%struct.usb_configuration, ptr @serial_config_driver, i32 0, i32 2), align 4
  %10 = load i8, ptr getelementptr inbounds (%struct.usb_configuration, ptr @serial_config_driver, i32 0, i32 7), align 2
  %11 = or i8 %10, 32
  store i8 %11, ptr getelementptr inbounds (%struct.usb_configuration, ptr @serial_config_driver, i32 0, i32 7), align 2
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %if.end.if.end16_crit_edge
  %12 = load i8, ptr @use_acm, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool17.not = icmp eq i8 %12, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call fastcc i32 @serial_register_ports(ptr noundef %cdev, ptr noundef nonnull @.str.6)
  %13 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cdev, align 4
  tail call void @usb_ep_autoconfig_reset(ptr noundef %14) #5
  br label %if.end27

if.else:                                          ; preds = %if.end16
  %15 = load i8, ptr @use_obex, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool21.not = icmp eq i8 %15, 0
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call fastcc i32 @serial_register_ports(ptr noundef %cdev, ptr noundef nonnull @.str.7)
  br label %if.end27

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call fastcc i32 @serial_register_ports(ptr noundef %cdev, ptr noundef nonnull @.str.8)
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.then22, %if.then18
  %status.1 = phi i32 [ %call19, %if.then18 ], [ %call23, %if.then22 ], [ %call25, %if.else24 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %cmp28 = icmp slt i32 %status.1, 0
  br i1 %cmp28, label %fail1, label %if.end31

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #5
  %16 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cdev, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4) #8
  br label %cleanup33

fail1:                                            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %18 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %18) #5
  store ptr null, ptr @otg_desc, align 4
  br label %cleanup33

cleanup33:                                        ; preds = %fail1, %if.end31, %if.then5.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ %call, %entry.cleanup33_crit_edge ], [ %status.1, %fail1 ], [ -12, %if.then5.cleanup33_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gs_unbind(ptr nocapture noundef readnone %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp5.not = icmp eq i32 %0, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr @f_serial, i32 0, i32 %i.06
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_put_function(ptr noundef %2) #5
  %arrayidx1 = getelementptr [8 x ptr], ptr @fi_serial, i32 0, i32 %i.06
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1, align 4
  tail call void @usb_put_function_instance(ptr noundef %4) #5
  %inc = add nuw i32 %i.06, 1
  %5 = load i32, ptr @n_ports, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %6 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %6) #5
  store ptr null, ptr @otg_desc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_ids_tab(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_descriptor_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_otg_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @serial_register_ports(ptr noundef %cdev, ptr noundef %f_name) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_add_config_only(ptr noundef %cdev, ptr noundef nonnull @serial_config_driver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %0 = load i32, ptr @n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp16.not = icmp eq i32 %0, 0
  br i1 %cmp16.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call1 = tail call ptr @usb_get_function_instance(ptr noundef %f_name) #5
  %arrayidx = getelementptr [8 x ptr], ptr @fi_serial, i32 0, i32 %i.017
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call1 to i32
  br label %fail

if.end7:                                          ; preds = %for.body
  %call9 = tail call ptr @usb_get_function(ptr noundef %call1) #5
  %arrayidx10 = getelementptr [8 x ptr], ptr @f_serial, i32 0, i32 %i.017
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %arrayidx10, align 4
  %cmp.i1 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call9 to i32
  br label %err_get_func

if.end16:                                         ; preds = %if.end7
  %call18 = tail call i32 @usb_add_function(ptr noundef nonnull @serial_config_driver, ptr noundef %call9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.inc, label %err_add_func

for.inc:                                          ; preds = %if.end16
  %inc = add nuw i32 %i.017, 1
  %5 = load i32, ptr @n_ports, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

err_add_func:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx10, align 4
  tail call void @usb_put_function(ptr noundef %7) #5
  br label %err_get_func

err_get_func:                                     ; preds = %err_add_func, %if.then13
  %ret.0 = phi i32 [ %4, %if.then13 ], [ %call18, %err_add_func ]
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_put_function_instance(ptr noundef %9) #5
  br label %fail

fail:                                             ; preds = %err_get_func, %if.then4
  %ret.1 = phi i32 [ %2, %if.then4 ], [ %ret.0, %err_get_func ]
  %i.118 = add i32 %i.017, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.118)
  %cmp2419 = icmp sgt i32 %i.118, -1
  br i1 %cmp2419, label %fail.while.body_crit_edge, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fail.while.body_crit_edge:                        ; preds = %fail
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %fail.while.body_crit_edge
  %i.120 = phi i32 [ %i.1, %while.body.while.body_crit_edge ], [ %i.118, %fail.while.body_crit_edge ]
  %arrayidx25 = getelementptr [8 x ptr], ptr @f_serial, i32 0, i32 %i.120
  %10 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx25, align 4
  tail call void @usb_remove_function(ptr noundef nonnull @serial_config_driver, ptr noundef %11) #5
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx25, align 4
  tail call void @usb_put_function(ptr noundef %13) #5
  %arrayidx27 = getelementptr [8 x ptr], ptr @fi_serial, i32 0, i32 %i.120
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx27, align 4
  tail call void @usb_put_function_instance(ptr noundef %15) #5
  %i.1 = add nsw i32 %i.120, -1
  %cmp24 = icmp sgt i32 %i.120, 0
  br i1 %cmp24, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %fail.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %ret.1, %fail.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %ret.1, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_autoconfig_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_overwrite_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config_only(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !23, !25, !27, !28, !30, !31, !33, !35, !36, !38, !40, !41, !43, !45, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !59, !60, !62, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !105, !106, !107, !108, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__param_idVendor, !1, !"__param_idVendor", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 28, i32 1}
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
!20 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 83, i32 1}
!21 = !{ptr @__UNIQUE_ID_author241, !22, !"__UNIQUE_ID_author241", i1 false, i1 false}
!22 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 84, i32 1}
!23 = !{ptr @__UNIQUE_ID_author242, !24, !"__UNIQUE_ID_author242", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 85, i32 1}
!25 = !{ptr @__UNIQUE_ID_file243, !26, !"__UNIQUE_ID_file243", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 86, i32 1}
!27 = !{ptr @__UNIQUE_ID_license244, !26, !"__UNIQUE_ID_license244", i1 false, i1 false}
!28 = !{ptr @__param_use_acm, !29, !"__param_use_acm", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 89, i32 1}
!30 = !{ptr @__UNIQUE_ID_use_acmtype245, !29, !"__UNIQUE_ID_use_acmtype245", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_use_acm246, !32, !"__UNIQUE_ID_use_acm246", i1 false, i1 false}
!32 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 90, i32 1}
!33 = !{ptr @__param_use_obex, !34, !"__param_use_obex", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 93, i32 1}
!35 = !{ptr @__UNIQUE_ID_use_obextype247, !34, !"__UNIQUE_ID_use_obextype247", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_use_obex248, !37, !"__UNIQUE_ID_use_obex248", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 94, i32 1}
!38 = !{ptr @__param_n_ports, !39, !"__param_n_ports", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 97, i32 1}
!40 = !{ptr @__UNIQUE_ID_n_portstype249, !39, !"__UNIQUE_ID_n_portstype249", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_n_ports250, !42, !"__UNIQUE_ID_n_ports250", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 98, i32 1}
!43 = !{ptr @__param_enable, !44, !"__param_enable", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 128, i32 1}
!45 = !{ptr @__initcall__kmod_g_serial__251_317_init6, !46, !"__initcall__kmod_g_serial__251_317_init6", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 317, i32 1}
!47 = !{ptr @__exitcall_cleanup, !48, !"__exitcall_cleanup", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 324, i32 1}
!49 = !{ptr @coverwrite, !1, !"coverwrite", i1 false, i1 false}
!50 = !{ptr @__param_str_idVendor, !1, !"__param_str_idVendor", i1 false, i1 false}
!51 = !{ptr @__param_str_idProduct, !1, !"__param_str_idProduct", i1 false, i1 false}
!52 = !{ptr @__param_str_bcdDevice, !1, !"__param_str_bcdDevice", i1 false, i1 false}
!53 = !{ptr @__param_str_iSerialNumber, !1, !"__param_str_iSerialNumber", i1 false, i1 false}
!54 = !{ptr @__param_str_iManufacturer, !1, !"__param_str_iManufacturer", i1 false, i1 false}
!55 = !{ptr @__param_str_iProduct, !1, !"__param_str_iProduct", i1 false, i1 false}
!56 = !{ptr @__param_str_use_acm, !29, !"__param_str_use_acm", i1 false, i1 false}
!57 = !{ptr @use_acm, !58, !"use_acm", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 88, i32 13}
!59 = !{ptr @__param_str_use_obex, !34, !"__param_str_use_obex", i1 false, i1 false}
!60 = !{ptr @use_obex, !61, !"use_obex", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 92, i32 13}
!62 = !{ptr @__param_str_n_ports, !39, !"__param_str_n_ports", i1 false, i1 false}
!63 = !{ptr @n_ports, !64, !"n_ports", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 96, i32 17}
!65 = !{ptr @__param_str_enable, !44, !"__param_str_enable", i1 false, i1 false}
!66 = !{ptr @enable_ops, !67, !"enable_ops", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 123, i32 38}
!68 = !{ptr @serial_config_driver, !69, !"serial_config_driver", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 132, i32 33}
!70 = !{ptr @enable, !71, !"enable", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 100, i32 13}
!72 = !{ptr @.str, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 292, i32 32}
!74 = !{ptr @.str.1, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 298, i32 32}
!76 = !{ptr @.str.2, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 304, i32 32}
!78 = !{ptr @device_desc, !79, !"device_desc", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 62, i32 37}
!80 = !{ptr @.str.3, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 45, i32 36}
!82 = !{ptr @.str.4, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 46, i32 31}
!84 = !{ptr @strings_dev, !85, !"strings_dev", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 44, i32 26}
!86 = !{ptr @.str.5, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 265, i32 11}
!88 = !{ptr @gserial_driver, !89, !"gserial_driver", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 264, i32 36}
!90 = !{ptr @dev_strings, !91, !"dev_strings", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 57, i32 35}
!92 = !{ptr @stringtab_dev, !93, !"stringtab_dev", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 52, i32 34}
!94 = !{ptr @.str.6, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 226, i32 5}
!96 = !{ptr @.str.7, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 230, i32 5}
!98 = !{ptr @.str.8, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 233, i32 5}
!100 = !{ptr @.str.9, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 239, i32 2}
!102 = !{ptr @.str.10, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.11, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.12, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.13, !101, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @gs_bind._entry, !101, !"_entry", i1 false, i1 false}
!107 = !{ptr @gs_bind._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @otg_desc, !109, !"otg_desc", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 78, i32 44}
!110 = !{ptr @fi_serial, !111, !"fi_serial", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 139, i32 38}
!112 = !{ptr @f_serial, !113, !"f_serial", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/legacy/serial.c", i32 140, i32 29}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i8 0, i8 2}
!124 = !{!"auto-init"}
