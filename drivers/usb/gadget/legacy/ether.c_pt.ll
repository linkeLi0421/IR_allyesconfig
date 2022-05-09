; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/ether.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/ether.c"
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
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.f_eem_opts = type { %struct.usb_function_instance, ptr, i8, %struct.mutex, i32 }
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
%struct.f_ecm_opts = type { %struct.usb_function_instance, ptr, i8, %struct.mutex, i32 }
%struct.f_gether_opts = type { %struct.usb_function_instance, ptr, i8, %struct.mutex, i32 }

@__param_str_idVendor = internal constant [17 x i8] c"g_ether.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype337 = internal constant [33 x i8] c"g_ether.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor338 = internal constant [36 x i8] c"g_ether.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [18 x i8] c"g_ether.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype339 = internal constant [34 x i8] c"g_ether.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct340 = internal constant [38 x i8] c"g_ether.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [18 x i8] c"g_ether.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype341 = internal constant [34 x i8] c"g_ether.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice342 = internal constant [48 x i8] c"g_ether.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [22 x i8] c"g_ether.iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype343 = internal constant [37 x i8] c"g_ether.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber344 = internal constant [47 x i8] c"g_ether.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [22 x i8] c"g_ether.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype345 = internal constant [37 x i8] c"g_ether.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer346 = internal constant [51 x i8] c"g_ether.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [17 x i8] c"g_ether.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype347 = internal constant [32 x i8] c"g_ether.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct348 = internal constant [41 x i8] c"g_ether.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__param_str_qmult = internal constant [14 x i8] c"g_ether.qmult\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@qmult = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_qmult = internal constant %struct.kernel_param { ptr @__param_str_qmult, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @qmult } }, section "__param", align 4
@__UNIQUE_ID_qmulttype349 = internal constant [28 x i8] c"g_ether.parmtype=qmult:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qmult350 = internal constant [63 x i8] c"g_ether.parm=qmult:queue length multiplier at high/super speed\00", section ".modinfo", align 1
@__param_str_dev_addr = internal constant [17 x i8] c"g_ether.dev_addr\00", align 1
@dev_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_dev_addr = internal constant %struct.kernel_param { ptr @__param_str_dev_addr, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @dev_addr } }, section "__param", align 4
@__UNIQUE_ID_dev_addrtype351 = internal constant [32 x i8] c"g_ether.parmtype=dev_addr:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_dev_addr352 = internal constant [46 x i8] c"g_ether.parm=dev_addr:Device Ethernet Address\00", section ".modinfo", align 1
@__param_str_host_addr = internal constant [18 x i8] c"g_ether.host_addr\00", align 1
@host_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_host_addr = internal constant %struct.kernel_param { ptr @__param_str_host_addr, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @host_addr } }, section "__param", align 4
@__UNIQUE_ID_host_addrtype353 = internal constant [33 x i8] c"g_ether.parmtype=host_addr:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_host_addr354 = internal constant [45 x i8] c"g_ether.parm=host_addr:Host Ethernet Address\00", section ".modinfo", align 1
@__param_str_use_eem = internal constant [16 x i8] c"g_ether.use_eem\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_eem = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_eem = internal constant %struct.kernel_param { ptr @__param_str_use_eem, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @use_eem } }, section "__param", align 4
@__UNIQUE_ID_use_eemtype355 = internal constant [30 x i8] c"g_ether.parmtype=use_eem:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_eem356 = internal constant [38 x i8] c"g_ether.parm=use_eem:use CDC EEM mode\00", section ".modinfo", align 1
@__initcall__kmod_g_ether__357_480_eth_driver_init6 = internal global ptr @eth_driver_init, section ".initcall6.init", align 4
@eth_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @.str, ptr @device_desc, ptr @dev_strings, i32 5, i8 0, ptr @eth_bind, ptr @eth_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_eth_driver_exit = internal global ptr @eth_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description358 = internal constant [42 x i8] c"g_ether.description=RNDIS/Ethernet Gadget\00", section ".modinfo", align 1
@__UNIQUE_ID_author359 = internal constant [48 x i8] c"g_ether.author=David Brownell, Benedikt Spanger\00", section ".modinfo", align 1
@__UNIQUE_ID_file360 = internal constant [47 x i8] c"g_ether.file=drivers/usb/gadget/legacy/g_ether\00", section ".modinfo", align 1
@__UNIQUE_ID_license361 = internal constant [20 x i8] c"g_ether.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"g_ether\00", [24 x i8] zeroinitializer }, align 32
@device_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 2, i8 0, i8 0, i8 0, i16 9477, i16 -24156, i16 0, i8 0, i8 0, i8 0, i8 1 }, [46 x i8] zeroinitializer }, align 32
@dev_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stringtab_dev, ptr null], [24 x i8] zeroinitializer }, align 32
@stringtab_dev = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_dev }, [24 x i8] zeroinitializer }, align 32
@strings_dev = internal global { [4 x %struct.usb_string], [32 x i8] } { [4 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RNDIS/Ethernet Gadget\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eem\00", [28 x i8] zeroinitializer }, align 32
@fi_eem = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CDC Ethernet (EEM)\00", [45 x i8] zeroinitializer }, align 32
@eth_config_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ecm\00", [28 x i8] zeroinitializer }, align 32
@fi_ecm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CDC Ethernet (ECM)\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"geth\00", [27 x i8] zeroinitializer }, align 32
@fi_geth = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CDC Subset/SAFE\00", [16 x i8] zeroinitializer }, align 32
@eth_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016using host ethernet address: %s\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eth_bind\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/gadget/legacy/ether.c\00", [62 x i8] zeroinitializer }, align 32
@eth_bind._entry_ptr = internal global ptr @eth_bind._entry, section ".printk_index", align 4
@eth_bind._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.11, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016using self ethernet address: %s\00", [62 x i8] zeroinitializer }, align 32
@eth_bind._entry_ptr.14 = internal global ptr @eth_bind._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rndis\00", [26 x i8] zeroinitializer }, align 32
@fi_rndis = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@otg_desc = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@rndis_config_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr @.str.22, ptr null, ptr null, ptr null, ptr null, i8 2, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@eth_bind._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.11, i32 429, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s, version: Memorial Day 2008\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@eth_bind._entry_ptr.20 = internal global ptr @eth_bind._entry.16, section ".printk_index", align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Ethernet Gadget\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RNDIS\00", [26 x i8] zeroinitializer }, align 32
@f_rndis = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_eem = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_ecm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_geth = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 104, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"qmult\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [9 x i8] c"dev_addr\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"host_addr\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 106, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [8 x i8] c"use_eem\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 240, i32 13 }
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"eth_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 471, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 472, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"device_desc\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 146, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"dev_strings\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 184, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"stringtab_dev\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 179, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"strings_dev\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 172, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 173, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 174, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 316, i32 38 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"fi_eem\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 192, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 324, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"eth_config_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 295, i32 33 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 330, i32 38 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"fi_ecm\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 189, i32 38 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 338, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 342, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant [8 x i8] c"fi_geth\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 195, i32 38 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 351, i32 29 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 361, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 363, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 379, i32 40 }
@___asan_gen_.113 = private unnamed_addr constant [9 x i8] c"fi_rndis\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 198, i32 38 }
@___asan_gen_.116 = private unnamed_addr constant [9 x i8] c"otg_desc\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 170, i32 44 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"rndis_config_driver\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 230, i32 33 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 428, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 231, i32 13 }
@___asan_gen_.140 = private unnamed_addr constant [8 x i8] c"f_rndis\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 199, i32 29 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"f_eem\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 193, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant [6 x i8] c"f_ecm\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 190, i32 29 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"f_geth\00", align 1
@___asan_gen_.150 = private constant [37 x i8] c"../drivers/usb/gadget/legacy/ether.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 196, i32 29 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author359, ptr @__UNIQUE_ID_bcdDevice342, ptr @__UNIQUE_ID_bcdDevicetype341, ptr @__UNIQUE_ID_description358, ptr @__UNIQUE_ID_dev_addr352, ptr @__UNIQUE_ID_dev_addrtype351, ptr @__UNIQUE_ID_file360, ptr @__UNIQUE_ID_host_addr354, ptr @__UNIQUE_ID_host_addrtype353, ptr @__UNIQUE_ID_iManufacturer346, ptr @__UNIQUE_ID_iManufacturertype345, ptr @__UNIQUE_ID_iProduct348, ptr @__UNIQUE_ID_iProducttype347, ptr @__UNIQUE_ID_iSerialNumber344, ptr @__UNIQUE_ID_iSerialNumbertype343, ptr @__UNIQUE_ID_idProduct340, ptr @__UNIQUE_ID_idProducttype339, ptr @__UNIQUE_ID_idVendor338, ptr @__UNIQUE_ID_idVendortype337, ptr @__UNIQUE_ID_license361, ptr @__UNIQUE_ID_qmult350, ptr @__UNIQUE_ID_qmulttype349, ptr @__UNIQUE_ID_use_eem356, ptr @__UNIQUE_ID_use_eemtype355, ptr @__exitcall_eth_driver_exit, ptr @__initcall__kmod_g_ether__357_480_eth_driver_init6, ptr @__param_bcdDevice, ptr @__param_dev_addr, ptr @__param_host_addr, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @__param_qmult, ptr @__param_use_eem, ptr @eth_bind._entry, ptr @eth_bind._entry.12, ptr @eth_bind._entry.16, ptr @eth_bind._entry_ptr, ptr @eth_bind._entry_ptr.14, ptr @eth_bind._entry_ptr.20, ptr @eth_driver_exit, ptr @coverwrite, ptr @qmult, ptr @dev_addr, ptr @host_addr, ptr @use_eem, ptr @eth_driver, ptr @.str, ptr @device_desc, ptr @dev_strings, ptr @stringtab_dev, ptr @strings_dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @fi_eem, ptr @.str.4, ptr @eth_config_driver, ptr @.str.5, ptr @fi_ecm, ptr @.str.6, ptr @.str.7, ptr @fi_geth, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @fi_rndis, ptr @otg_desc, ptr @rndis_config_driver, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @f_rndis, ptr @f_eem, ptr @f_ecm, ptr @f_geth], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmult to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_eem to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stringtab_dev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_dev to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_eem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth_config_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_ecm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_geth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth_bind._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_rndis to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_config_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth_bind._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_rndis to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_eem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ecm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_geth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @eth_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_composite_probe(ptr noundef nonnull @eth_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @eth_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_composite_unregister(ptr noundef nonnull @eth_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eth_bind(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %2 = load i8, ptr @use_eem, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.3) #4
  store ptr %call, ptr @fi_eem, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call to i32
  br label %cleanup108

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %net5 = getelementptr inbounds %struct.f_eem_opts, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %net5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net5, align 4
  store ptr @.str.4, ptr @eth_config_driver, align 4
  store i16 27421, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 7), align 1
  store i16 513, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 8), align 1
  br label %if.end31

if.else:                                          ; preds = %entry
  %quirk_altset_not_supp.i.i = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %quirk_altset_not_supp.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i.i = load i32, ptr %quirk_altset_not_supp.i.i, align 4
  %7 = and i32 %bf.load.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.not.i, label %if.then7, label %if.else17

if.then7:                                         ; preds = %if.else
  %call8 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.5) #4
  store ptr %call8, ptr @fi_ecm, align 4
  %cmp.i139 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %call8 to i32
  br label %cleanup108

if.end12:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %net16 = getelementptr inbounds %struct.f_ecm_opts, ptr %call8, i32 0, i32 1
  %9 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net16, align 4
  store ptr @.str.6, ptr @eth_config_driver, align 4
  br label %if.end31

if.else17:                                        ; preds = %if.else
  %call18 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.7) #4
  store ptr %call18, ptr @fi_geth, align 4
  %cmp.i140 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %call18 to i32
  br label %cleanup108

if.end22:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #6
  %net26 = getelementptr inbounds %struct.f_gether_opts, ptr %call18, i32 0, i32 1
  %12 = ptrtoint ptr %net26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net26, align 4
  store ptr @.str.8, ptr @eth_config_driver, align 4
  store i16 -24828, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 7), align 1
  store i16 23120, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 8), align 1
  br label %if.end31

if.end31:                                         ; preds = %if.end22, %if.end12, %if.end
  %net.0 = phi ptr [ %5, %if.end ], [ %10, %if.end12 ], [ %13, %if.end22 ]
  %geth_opts.0 = phi ptr [ null, %if.end ], [ null, %if.end12 ], [ %call18, %if.end22 ]
  %ecm_opts.0 = phi ptr [ null, %if.end ], [ %call8, %if.end12 ], [ null, %if.end22 ]
  %eem_opts.0 = phi ptr [ %call, %if.end ], [ null, %if.end12 ], [ null, %if.end22 ]
  %14 = load i32, ptr @qmult, align 4
  tail call void @gether_set_qmult(ptr noundef %net.0, i32 noundef %14) #4
  %15 = load ptr, ptr @host_addr, align 4
  %call32 = tail call i32 @gether_set_host_addr(ptr noundef %net.0, ptr noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.end, label %if.end31.if.end37_crit_edge

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %16 = load ptr, ptr @host_addr, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %16) #7
  br label %if.end37

if.end37:                                         ; preds = %do.end, %if.end31.if.end37_crit_edge
  %17 = load ptr, ptr @dev_addr, align 4
  %call38 = tail call i32 @gether_set_dev_addr(ptr noundef %net.0, ptr noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.end43, label %if.end37.if.end46_crit_edge

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %18 = load ptr, ptr @dev_addr, align 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %18) #7
  br label %if.end46

if.end46:                                         ; preds = %do.end43, %if.end37.if.end46_crit_edge
  %19 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cdev, align 4
  tail call void @gether_set_gadget(ptr noundef %net.0, ptr noundef %20) #4
  %call50 = tail call i32 @gether_register_netdev(ptr noundef %net.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end46.fail_crit_edge

if.end46.fail_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end53:                                         ; preds = %if.end46
  %21 = load i8, ptr @use_eem, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool54.not = icmp eq i8 %21, 0
  br i1 %tobool54.not, label %if.else56, label %if.then55

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  %bound = getelementptr inbounds %struct.f_eem_opts, ptr %eem_opts.0, i32 0, i32 2
  br label %if.end63

if.else56:                                        ; preds = %if.end53
  %quirk_altset_not_supp.i.i141 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %quirk_altset_not_supp.i.i141 to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load.i.i142 = load i32, ptr %quirk_altset_not_supp.i.i141, align 4
  %23 = and i32 %bf.load.i.i142, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.not.i143 = icmp eq i32 %23, 0
  br i1 %tobool.not.not.i143, label %if.then58, label %if.else60

if.then58:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #6
  %bound59 = getelementptr inbounds %struct.f_ecm_opts, ptr %ecm_opts.0, i32 0, i32 2
  br label %if.end63

if.else60:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #6
  %bound61 = getelementptr inbounds %struct.f_gether_opts, ptr %geth_opts.0, i32 0, i32 2
  br label %if.end63

if.end63:                                         ; preds = %if.else60, %if.then58, %if.then55
  %bound59.sink = phi ptr [ %bound59, %if.then58 ], [ %bound61, %if.else60 ], [ %bound, %if.then55 ]
  %24 = ptrtoint ptr %bound59.sink to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %bound59.sink, align 4
  %call64 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.15) #4
  store ptr %call64, ptr @fi_rndis, align 4
  %cmp.i144 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %call64 to i32
  br label %fail

if.end68:                                         ; preds = %if.end63
  tail call void @rndis_borrow_net(ptr noundef %call64, ptr noundef %net.0) #4
  store i16 9477, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 7), align 1
  store i16 -23900, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 8), align 1
  store i8 2, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 13), align 1
  %call70 = tail call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @strings_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp = icmp slt i32 %call70, 0
  br i1 %cmp, label %if.end68.fail1_crit_edge, label %if.end72

if.end68.fail1_crit_edge:                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail1

if.end72:                                         ; preds = %if.end68
  %26 = load i8, ptr @strings_dev, align 4
  store i8 %26, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 10), align 1
  %27 = load i8, ptr getelementptr inbounds ([4 x %struct.usb_string], ptr @strings_dev, i32 0, i32 1), align 4
  store i8 %27, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 11), align 1
  %is_otg.i = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 17
  %28 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load.i = load i32, ptr %is_otg.i, align 4
  %29 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool74.not = icmp eq i32 %29, 0
  br i1 %tobool74.not, label %if.end72.if.end82_crit_edge, label %land.lhs.true

if.end72.if.end82_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

land.lhs.true:                                    ; preds = %if.end72
  %30 = load ptr, ptr @otg_desc, align 4
  %tobool75.not = icmp eq ptr %30, null
  br i1 %tobool75.not, label %if.then76, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

if.then76:                                        ; preds = %land.lhs.true
  %call77 = tail call ptr @usb_otg_descriptor_alloc(ptr noundef %1) #4
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %if.then76.fail1_crit_edge, label %cleanup.thread

if.then76.fail1_crit_edge:                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail1

cleanup.thread:                                   ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  %call81 = tail call i32 @usb_otg_descriptor_init(ptr noundef %1, ptr noundef nonnull %call77) #4
  store ptr %call77, ptr @otg_desc, align 4
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @otg_desc, i32 0, i32 1), align 4
  br label %if.end82

if.end82:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end82_crit_edge, %if.end72.if.end82_crit_edge
  %call85 = tail call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @rndis_config_driver, ptr noundef nonnull @rndis_do_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.end82.fail2_crit_edge, label %if.end89

if.end82.fail2_crit_edge:                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail2

if.end89:                                         ; preds = %if.end82
  %call90 = tail call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @eth_config_driver, ptr noundef nonnull @eth_do_config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end89.fail2_crit_edge, label %if.end93

if.end89.fail2_crit_edge:                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail2

if.end93:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.21) #7
  br label %cleanup108

fail2:                                            ; preds = %if.end89.fail2_crit_edge, %if.end82.fail2_crit_edge
  %status.1 = phi i32 [ %call85, %if.end82.fail2_crit_edge ], [ %call90, %if.end89.fail2_crit_edge ]
  %31 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %31) #4
  store ptr null, ptr @otg_desc, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %if.then76.fail1_crit_edge, %if.end68.fail1_crit_edge
  %status.2 = phi i32 [ %call70, %if.end68.fail1_crit_edge ], [ %status.1, %fail2 ], [ -12, %if.then76.fail1_crit_edge ]
  %32 = load ptr, ptr @fi_rndis, align 4
  tail call void @usb_put_function_instance(ptr noundef %32) #4
  br label %fail

fail:                                             ; preds = %fail1, %if.then66, %if.end46.fail_crit_edge
  %status.3 = phi i32 [ %call50, %if.end46.fail_crit_edge ], [ %25, %if.then66 ], [ %status.2, %fail1 ]
  %33 = load i8, ptr @use_eem, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool100.not = icmp eq i8 %33, 0
  br i1 %tobool100.not, label %if.else102, label %if.then101

if.then101:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #6
  %34 = load ptr, ptr @fi_eem, align 4
  tail call void @usb_put_function_instance(ptr noundef %34) #4
  br label %cleanup108

if.else102:                                       ; preds = %fail
  %quirk_altset_not_supp.i.i145 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 17
  %35 = ptrtoint ptr %quirk_altset_not_supp.i.i145 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load.i.i146 = load i32, ptr %quirk_altset_not_supp.i.i145, align 4
  %36 = and i32 %bf.load.i.i146, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.not.i147 = icmp eq i32 %36, 0
  br i1 %tobool.not.not.i147, label %if.then104, label %if.else105

if.then104:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #6
  %37 = load ptr, ptr @fi_ecm, align 4
  tail call void @usb_put_function_instance(ptr noundef %37) #4
  br label %cleanup108

if.else105:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #6
  %38 = load ptr, ptr @fi_geth, align 4
  tail call void @usb_put_function_instance(ptr noundef %38) #4
  br label %cleanup108

cleanup108:                                       ; preds = %if.else105, %if.then104, %if.then101, %if.end93, %if.then20, %if.then10, %if.then3
  %retval.0 = phi i32 [ %3, %if.then3 ], [ 0, %if.end93 ], [ %8, %if.then10 ], [ %11, %if.then20 ], [ %status.3, %if.then104 ], [ %status.3, %if.else105 ], [ %status.3, %if.then101 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eth_unbind(ptr nocapture noundef readonly %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @f_rndis, align 4
  tail call void @usb_put_function(ptr noundef %0) #4
  %1 = load ptr, ptr @fi_rndis, align 4
  tail call void @usb_put_function_instance(ptr noundef %1) #4
  %2 = load i8, ptr @use_eem, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cdev, align 4
  %quirk_altset_not_supp.i.i = getelementptr inbounds %struct.usb_gadget, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %quirk_altset_not_supp.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i.i = load i32, ptr %quirk_altset_not_supp.i.i, align 4
  %6 = and i32 %bf.load.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.not.i = icmp eq i32 %6, 0
  %f_ecm.f_geth = select i1 %tobool.not.not.i, ptr @f_ecm, ptr @f_geth
  %fi_ecm.fi_geth = select i1 %tobool.not.not.i, ptr @fi_ecm, ptr @fi_geth
  br label %if.end6

if.end6:                                          ; preds = %if.else, %entry.if.end6_crit_edge
  %f_ecm.sink = phi ptr [ @f_eem, %entry.if.end6_crit_edge ], [ %f_ecm.f_geth, %if.else ]
  %fi_ecm.sink = phi ptr [ @fi_eem, %entry.if.end6_crit_edge ], [ %fi_ecm.fi_geth, %if.else ]
  %7 = ptrtoint ptr %f_ecm.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_ecm.sink, align 4
  tail call void @usb_put_function(ptr noundef %8) #4
  %9 = ptrtoint ptr %fi_ecm.sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fi_ecm.sink, align 4
  tail call void @usb_put_function_instance(ptr noundef %10) #4
  %11 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %11) #4
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
define internal i32 @rndis_do_config(ptr noundef %c) #2 align 64 {
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
  %10 = load ptr, ptr @fi_rndis, align 4
  %call2 = tail call ptr @usb_get_function(ptr noundef %10) #4
  store ptr %call2, ptr @f_rndis, align 4
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
  %12 = load ptr, ptr @f_rndis, align 4
  tail call void @usb_put_function(ptr noundef %12) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %11, %if.then4 ], [ %call7, %if.then9 ], [ %call7, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eth_do_config(ptr noundef %c) #2 align 64 {
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
  %10 = load i8, ptr @use_eem, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %11 = load ptr, ptr @fi_eem, align 4
  %call4 = tail call ptr @usb_get_function(ptr noundef %11) #4
  store ptr %call4, ptr @f_eem, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  %call9 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %13 = load ptr, ptr @f_eem, align 4
  tail call void @usb_put_function(ptr noundef %13) #4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %quirk_altset_not_supp.i.i = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %quirk_altset_not_supp.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i.i = load i32, ptr %quirk_altset_not_supp.i.i, align 4
  %17 = and i32 %bf.load.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.not.i, label %if.then16, label %if.else27

if.then16:                                        ; preds = %if.else
  %18 = load ptr, ptr @fi_ecm, align 4
  %call17 = tail call ptr @usb_get_function(ptr noundef %18) #4
  store ptr %call17, ptr @f_ecm, align 4
  %cmp.i49 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.then16
  %call22 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %20 = load ptr, ptr @f_ecm, align 4
  tail call void @usb_put_function(ptr noundef %20) #4
  br label %cleanup

if.else27:                                        ; preds = %if.else
  %21 = load ptr, ptr @fi_geth, align 4
  %call28 = tail call ptr @usb_get_function(ptr noundef %21) #4
  store ptr %call28, ptr @f_geth, align 4
  %cmp.i50 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.else27
  %call33 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  %23 = load ptr, ptr @f_geth, align 4
  tail call void @usb_put_function(ptr noundef %23) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end32.cleanup_crit_edge, %if.then30, %if.then25, %if.end21.cleanup_crit_edge, %if.then19, %if.then11, %if.end8.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ %12, %if.then6 ], [ %19, %if.then19 ], [ %22, %if.then30 ], [ %call9, %if.then11 ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call22, %if.then25 ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call33, %if.then36 ], [ %call33, %if.end32.cleanup_crit_edge ]
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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !36, !37, !39, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !105, !106, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__param_idVendor, !1, !"__param_idVendor", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 104, i32 1}
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
!20 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 106, i32 1}
!21 = !{ptr @__UNIQUE_ID_qmulttype349, !20, !"__UNIQUE_ID_qmulttype349", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_qmult350, !20, !"__UNIQUE_ID_qmult350", i1 false, i1 false}
!23 = !{ptr @__param_dev_addr, !20, !"__param_dev_addr", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_dev_addrtype351, !20, !"__UNIQUE_ID_dev_addrtype351", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_dev_addr352, !20, !"__UNIQUE_ID_dev_addr352", i1 false, i1 false}
!26 = !{ptr @__param_host_addr, !20, !"__param_host_addr", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_host_addrtype353, !20, !"__UNIQUE_ID_host_addrtype353", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_host_addr354, !20, !"__UNIQUE_ID_host_addr354", i1 false, i1 false}
!29 = !{ptr @__param_use_eem, !30, !"__param_use_eem", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 244, i32 1}
!31 = !{ptr @__UNIQUE_ID_use_eemtype355, !30, !"__UNIQUE_ID_use_eemtype355", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_use_eem356, !33, !"__UNIQUE_ID_use_eem356", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 245, i32 1}
!34 = !{ptr @__initcall__kmod_g_ether__357_480_eth_driver_init6, !35, !"__initcall__kmod_g_ether__357_480_eth_driver_init6", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 480, i32 1}
!36 = !{ptr @__exitcall_eth_driver_exit, !35, !"__exitcall_eth_driver_exit", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_description358, !38, !"__UNIQUE_ID_description358", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 482, i32 1}
!39 = !{ptr @__UNIQUE_ID_author359, !40, !"__UNIQUE_ID_author359", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 483, i32 1}
!41 = !{ptr @__UNIQUE_ID_file360, !42, !"__UNIQUE_ID_file360", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 484, i32 1}
!43 = !{ptr @__UNIQUE_ID_license361, !42, !"__UNIQUE_ID_license361", i1 false, i1 false}
!44 = !{ptr @coverwrite, !1, !"coverwrite", i1 false, i1 false}
!45 = !{ptr @dev_addr, !20, !"dev_addr", i1 false, i1 false}
!46 = !{ptr @host_addr, !20, !"host_addr", i1 false, i1 false}
!47 = !{ptr @__param_str_idVendor, !1, !"__param_str_idVendor", i1 false, i1 false}
!48 = !{ptr @__param_str_idProduct, !1, !"__param_str_idProduct", i1 false, i1 false}
!49 = !{ptr @__param_str_bcdDevice, !1, !"__param_str_bcdDevice", i1 false, i1 false}
!50 = !{ptr @__param_str_iSerialNumber, !1, !"__param_str_iSerialNumber", i1 false, i1 false}
!51 = !{ptr @__param_str_iManufacturer, !1, !"__param_str_iManufacturer", i1 false, i1 false}
!52 = !{ptr @__param_str_iProduct, !1, !"__param_str_iProduct", i1 false, i1 false}
!53 = !{ptr @__param_str_qmult, !20, !"__param_str_qmult", i1 false, i1 false}
!54 = !{ptr @qmult, !20, !"qmult", i1 false, i1 false}
!55 = !{ptr @__param_str_dev_addr, !20, !"__param_str_dev_addr", i1 false, i1 false}
!56 = !{ptr @__param_str_host_addr, !20, !"__param_str_host_addr", i1 false, i1 false}
!57 = !{ptr @__param_str_use_eem, !30, !"__param_str_use_eem", i1 false, i1 false}
!58 = !{ptr @use_eem, !59, !"use_eem", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 240, i32 13}
!60 = !{ptr @.str, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 472, i32 11}
!62 = !{ptr @eth_driver, !63, !"eth_driver", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 471, i32 36}
!64 = !{ptr @device_desc, !65, !"device_desc", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 146, i32 37}
!66 = !{ptr @dev_strings, !67, !"dev_strings", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 184, i32 35}
!68 = !{ptr @stringtab_dev, !69, !"stringtab_dev", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 179, i32 34}
!70 = !{ptr @.str.1, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 173, i32 36}
!72 = !{ptr @.str.2, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 174, i32 31}
!74 = !{ptr @strings_dev, !75, !"strings_dev", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 172, i32 26}
!76 = !{ptr @.str.3, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 316, i32 38}
!78 = !{ptr @.str.4, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 324, i32 29}
!80 = !{ptr @.str.5, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 330, i32 38}
!82 = !{ptr @.str.6, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 338, i32 29}
!84 = !{ptr @.str.7, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 342, i32 39}
!86 = !{ptr @.str.8, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 351, i32 29}
!88 = !{ptr @.str.9, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 361, i32 3}
!90 = !{ptr @.str.10, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.11, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @eth_bind._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @eth_bind._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.13, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 363, i32 3}
!96 = !{ptr @eth_bind._entry.12, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @eth_bind._entry_ptr.14, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.15, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 379, i32 40}
!100 = !{ptr @.str.17, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 428, i32 2}
!102 = !{ptr @.str.18, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.19, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @eth_bind._entry.16, !101, !"_entry", i1 false, i1 false}
!105 = !{ptr @eth_bind._entry_ptr.20, !101, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.21, !101, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @fi_eem, !108, !"fi_eem", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 192, i32 38}
!109 = !{ptr @eth_config_driver, !110, !"eth_config_driver", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 295, i32 33}
!111 = !{ptr @fi_ecm, !112, !"fi_ecm", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 189, i32 38}
!113 = !{ptr @fi_geth, !114, !"fi_geth", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 195, i32 38}
!115 = !{ptr @fi_rndis, !116, !"fi_rndis", i1 false, i1 false}
!116 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 198, i32 38}
!117 = !{ptr @otg_desc, !118, !"otg_desc", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 170, i32 44}
!119 = !{ptr @.str.22, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 231, i32 13}
!121 = !{ptr @rndis_config_driver, !122, !"rndis_config_driver", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 230, i32 33}
!123 = !{ptr @f_rndis, !124, !"f_rndis", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 199, i32 29}
!125 = !{ptr @f_eem, !126, !"f_eem", i1 false, i1 false}
!126 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 193, i32 29}
!127 = !{ptr @f_ecm, !128, !"f_ecm", i1 false, i1 false}
!128 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 190, i32 29}
!129 = !{ptr @f_geth, !130, !"f_geth", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/legacy/ether.c", i32 196, i32 29}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{i8 0, i8 2}
