; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/nokia.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/nokia.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.usb_composite_overwrite = type { i16, i16, i16, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fsg_config = type { i32, [16 x %struct.fsg_lun_config], ptr, ptr, ptr, ptr, i8, i32 }
%struct.fsg_lun_config = type { ptr, i8, i8, i8, i8, [29 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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

@__param_str_idVendor = internal constant [17 x i8] c"g_nokia.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype337 = internal constant [33 x i8] c"g_nokia.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor338 = internal constant [36 x i8] c"g_nokia.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [18 x i8] c"g_nokia.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype339 = internal constant [34 x i8] c"g_nokia.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct340 = internal constant [38 x i8] c"g_nokia.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [18 x i8] c"g_nokia.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype341 = internal constant [34 x i8] c"g_nokia.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice342 = internal constant [48 x i8] c"g_nokia.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [22 x i8] c"g_nokia.iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype343 = internal constant [37 x i8] c"g_nokia.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber344 = internal constant [47 x i8] c"g_nokia.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [22 x i8] c"g_nokia.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype345 = internal constant [37 x i8] c"g_nokia.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer346 = internal constant [51 x i8] c"g_nokia.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [17 x i8] c"g_nokia.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype347 = internal constant [32 x i8] c"g_nokia.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct348 = internal constant [41 x i8] c"g_nokia.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__param_str_qmult = internal constant [14 x i8] c"g_nokia.qmult\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@qmult = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_qmult = internal constant %struct.kernel_param { ptr @__param_str_qmult, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @qmult } }, section "__param", align 4
@__UNIQUE_ID_qmulttype349 = internal constant [28 x i8] c"g_nokia.parmtype=qmult:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qmult350 = internal constant [63 x i8] c"g_nokia.parm=qmult:queue length multiplier at high/super speed\00", section ".modinfo", align 1
@__param_str_dev_addr = internal constant [17 x i8] c"g_nokia.dev_addr\00", align 1
@dev_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_dev_addr = internal constant %struct.kernel_param { ptr @__param_str_dev_addr, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @dev_addr } }, section "__param", align 4
@__UNIQUE_ID_dev_addrtype351 = internal constant [32 x i8] c"g_nokia.parmtype=dev_addr:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_dev_addr352 = internal constant [46 x i8] c"g_nokia.parm=dev_addr:Device Ethernet Address\00", section ".modinfo", align 1
@__param_str_host_addr = internal constant [18 x i8] c"g_nokia.host_addr\00", align 1
@host_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_host_addr = internal constant %struct.kernel_param { ptr @__param_str_host_addr, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @host_addr } }, section "__param", align 4
@__UNIQUE_ID_host_addrtype353 = internal constant [33 x i8] c"g_nokia.parmtype=host_addr:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_host_addr354 = internal constant [45 x i8] c"g_nokia.parm=host_addr:Host Ethernet Address\00", section ".modinfo", align 1
@__param_str_file = internal constant [13 x i8] c"g_nokia.file\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_file = internal constant %struct.kparam_array { i32 16, i32 4, ptr getelementptr (i8, ptr @fsg_mod_data, i64 128), ptr @param_ops_charp, ptr @fsg_mod_data }, align 4
@__param_file = internal constant %struct.kernel_param { ptr @__param_str_file, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_file } }, section "__param", align 4
@__UNIQUE_ID_filetype355 = internal constant [37 x i8] c"g_nokia.parmtype=file:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [52 x i8] c"g_nokia.parm=file:names of backing files or devices\00", section ".modinfo", align 1
@__param_str_ro = internal constant [11 x i8] c"g_nokia.ro\00", align 1
@__param_arr_ro = internal constant %struct.kparam_array { i32 16, i32 1, ptr getelementptr (i8, ptr @fsg_mod_data, i64 132), ptr @param_ops_bool, ptr getelementptr (i8, ptr @fsg_mod_data, i64 64) }, align 4
@__param_ro = internal constant %struct.kernel_param { ptr @__param_str_ro, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_ro } }, section "__param", align 4
@__UNIQUE_ID_rotype357 = internal constant [34 x i8] c"g_nokia.parmtype=ro:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ro358 = internal constant [40 x i8] c"g_nokia.parm=ro:true to force read-only\00", section ".modinfo", align 1
@__param_str_removable = internal constant [18 x i8] c"g_nokia.removable\00", align 1
@__param_arr_removable = internal constant %struct.kparam_array { i32 16, i32 1, ptr getelementptr (i8, ptr @fsg_mod_data, i64 136), ptr @param_ops_bool, ptr getelementptr (i8, ptr @fsg_mod_data, i64 80) }, align 4
@__param_removable = internal constant %struct.kernel_param { ptr @__param_str_removable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_removable } }, section "__param", align 4
@__UNIQUE_ID_removabletype359 = internal constant [41 x i8] c"g_nokia.parmtype=removable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_removable360 = internal constant [56 x i8] c"g_nokia.parm=removable:true to simulate removable media\00", section ".modinfo", align 1
@__param_str_cdrom = internal constant [14 x i8] c"g_nokia.cdrom\00", align 1
@__param_arr_cdrom = internal constant %struct.kparam_array { i32 16, i32 1, ptr getelementptr (i8, ptr @fsg_mod_data, i64 140), ptr @param_ops_bool, ptr getelementptr (i8, ptr @fsg_mod_data, i64 96) }, align 4
@__param_cdrom = internal constant %struct.kernel_param { ptr @__param_str_cdrom, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_cdrom } }, section "__param", align 4
@__UNIQUE_ID_cdromtype361 = internal constant [37 x i8] c"g_nokia.parmtype=cdrom:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_cdrom362 = internal constant [59 x i8] c"g_nokia.parm=cdrom:true to simulate CD-ROM instead of disk\00", section ".modinfo", align 1
@__param_str_nofua = internal constant [14 x i8] c"g_nokia.nofua\00", align 1
@__param_arr_nofua = internal constant %struct.kparam_array { i32 16, i32 1, ptr getelementptr (i8, ptr @fsg_mod_data, i64 144), ptr @param_ops_bool, ptr getelementptr (i8, ptr @fsg_mod_data, i64 112) }, align 4
@__param_nofua = internal constant %struct.kernel_param { ptr @__param_str_nofua, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_nofua } }, section "__param", align 4
@__UNIQUE_ID_nofuatype363 = internal constant [37 x i8] c"g_nokia.parmtype=nofua:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nofua364 = internal constant [60 x i8] c"g_nokia.parm=nofua:true to ignore SCSI WRITE(10,12) FUA bit\00", section ".modinfo", align 1
@__param_str_luns = internal constant [13 x i8] c"g_nokia.luns\00", align 1
@__param_luns = internal constant %struct.kernel_param { ptr @__param_str_luns, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @fsg_mod_data, i64 148) } }, section "__param", align 4
@__UNIQUE_ID_lunstype365 = internal constant [27 x i8] c"g_nokia.parmtype=luns:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_luns366 = internal constant [33 x i8] c"g_nokia.parm=luns:number of LUNs\00", section ".modinfo", align 1
@__param_str_stall = internal constant [14 x i8] c"g_nokia.stall\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_stall = internal constant %struct.kernel_param { ptr @__param_str_stall, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @fsg_mod_data, i64 152) } }, section "__param", align 4
@__UNIQUE_ID_stalltype367 = internal constant [28 x i8] c"g_nokia.parmtype=stall:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_stall368 = internal constant [48 x i8] c"g_nokia.parm=stall:false to prevent bulk stalls\00", section ".modinfo", align 1
@__param_str_num_buffers = internal constant [20 x i8] c"g_nokia.num_buffers\00", align 1
@fsg_num_buffers = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_num_buffers = internal constant %struct.kernel_param { ptr @__param_str_num_buffers, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @fsg_num_buffers } }, section "__param", align 4
@__UNIQUE_ID_num_bufferstype369 = internal constant [34 x i8] c"g_nokia.parmtype=num_buffers:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_buffers370 = internal constant [52 x i8] c"g_nokia.parm=num_buffers:Number of pipeline buffers\00", section ".modinfo", align 1
@__UNIQUE_ID_description371 = internal constant [59 x i8] c"g_nokia.description=Nokia composite gadget driver for N900\00", section ".modinfo", align 1
@__UNIQUE_ID_author372 = internal constant [28 x i8] c"g_nokia.author=Felipe Balbi\00", section ".modinfo", align 1
@__UNIQUE_ID_file373 = internal constant [47 x i8] c"g_nokia.file=drivers/usb/gadget/legacy/g_nokia\00", section ".modinfo", align 1
@__UNIQUE_ID_license374 = internal constant [20 x i8] c"g_nokia.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_g_nokia__385_432_nokia_driver_init6 = internal global ptr @nokia_driver_init, section ".initcall6.init", align 4
@nokia_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @.str, ptr @device_desc, ptr @dev_strings, i32 3, i8 0, ptr @nokia_bind, ptr @nokia_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_nokia_driver_exit = internal global ptr @nokia_driver_exit, section ".exitcall.exit", align 4
@fsg_mod_data = internal global { { [16 x ptr], [16 x i8], <{ i8, i8, [14 x i8] }>, [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i32, i8 }, [36 x i8] } { { [16 x ptr], [16 x i8], <{ i8, i8, [14 x i8] }>, [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i32, i8 } { [16 x ptr] zeroinitializer, [16 x i8] zeroinitializer, <{ i8, i8, [14 x i8] }> <{ i8 1, i8 1, [14 x i8] zeroinitializer }>, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, i32 0, i32 0, i32 2, i32 0, i32 0, i32 2, i8 0 }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"g_nokia\00", [24 x i8] zeroinitializer }, align 32
@device_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 2, i8 0, i8 0, i8 0, i16 8452, i16 -14335, i16 4354, i8 0, i8 0, i8 0, i8 1 }, [46 x i8] zeroinitializer }, align 32
@dev_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stringtab_dev, ptr null], [24 x i8] zeroinitializer }, align 32
@stringtab_dev = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_dev }, [24 x i8] zeroinitializer }, align 32
@strings_dev = internal global { [5 x %struct.usb_string], [56 x i8] } { [5 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @manufacturer_nokia }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string { i8 0, ptr @.str.3 }, %struct.usb_string { i8 0, ptr @description_nokia }, %struct.usb_string zeroinitializer], [56 x i8] zeroinitializer }, align 32
@manufacturer_nokia = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"Nokia\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"N900 (PC-Suite Mode)\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@description_nokia = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PC-Suite Configuration\00", [41 x i8] zeroinitializer }, align 32
@nokia_config_500ma_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr @.str.19, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 -128, i16 500, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@nokia_config_100ma_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr @.str.20, ptr null, ptr null, ptr null, ptr null, i8 2, i8 0, i8 -64, i16 100, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phonet\00", [25 x i8] zeroinitializer }, align 32
@fi_phonet = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nokia_bind.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 72, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nokia_bind\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/gadget/legacy/nokia.c\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not find phonet function\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"obex\00", [27 x i8] zeroinitializer }, align 32
@fi_obex1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nokia_bind.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.9, i8 0, i8 73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not find obex function 1\0A\00", [32 x i8] zeroinitializer }, align 32
@fi_obex2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nokia_bind.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.10, i8 0, i8 74, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not find obex function 2\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acm\00", [28 x i8] zeroinitializer }, align 32
@fi_acm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ecm\00", [28 x i8] zeroinitializer }, align 32
@fi_ecm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mass_storage\00", [19 x i8] zeroinitializer }, align 32
@fi_msg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Nokia\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"N900\00", [27 x i8] zeroinitializer }, align 32
@nokia_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 355, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nokia_bind._entry_ptr = internal global ptr @nokia_bind._entry, section ".printk_index", align 4
@f_acm_cfg1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_obex1_cfg1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_obex2_cfg1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_phonet_cfg1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_ecm_cfg1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bus Powered\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Self Powered\00", [19 x i8] zeroinitializer }, align 32
@nokia_bind_config.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.6, ptr @.str.22, i8 0, i8 39, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nokia_bind_config\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not get phonet function\0A\00", [33 x i8] zeroinitializer }, align 32
@nokia_bind_config.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.6, ptr @.str.23, i8 0, i8 41, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not get obex function 0\0A\00", [33 x i8] zeroinitializer }, align 32
@nokia_bind_config.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.6, ptr @.str.24, i8 0, i8 42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not get obex function 1\0A\00", [33 x i8] zeroinitializer }, align 32
@nokia_bind_config.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.6, ptr @.str.25, i8 0, i8 48, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not add phonet function\0A\00", [33 x i8] zeroinitializer }, align 32
@nokia_bind_config.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.6, ptr @.str.26, i8 0, i8 50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not add obex function 0\0A\00", [33 x i8] zeroinitializer }, align 32
@nokia_bind_config.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.6, ptr @.str.27, i8 0, i8 51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not add obex function 1\0A\00", [33 x i8] zeroinitializer }, align 32
@nokia_bind_config.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.6, ptr @.str.28, i8 0, i8 54, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not bind ecm config %d\0A\00", [34 x i8] zeroinitializer }, align 32
@f_msg_cfg1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_acm_cfg2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_ecm_cfg2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_phonet_cfg2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_obex1_cfg2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_obex2_cfg2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_msg_cfg2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 30, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"qmult\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [9 x i8] c"dev_addr\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"host_addr\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 32, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"fsg_num_buffers\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 43, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"nokia_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 423, i32 36 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"fsg_mod_data\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 34, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 424, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"device_desc\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 85, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"dev_strings\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 80, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"stringtab_dev\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 75, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"strings_dev\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 67, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"manufacturer_nokia\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 64, i32 13 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 69, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 70, i32 30 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"description_nokia\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 65, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant [26 x i8] c"nokia_config_500ma_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 120, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant [26 x i8] c"nokia_config_100ma_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 128, i32 33 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 288, i32 40 }
@___asan_gen_.86 = private unnamed_addr constant [10 x i8] c"fi_phonet\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 140, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 290, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 292, i32 39 }
@___asan_gen_.101 = private unnamed_addr constant [9 x i8] c"fi_obex1\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 138, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 294, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [9 x i8] c"fi_obex2\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 139, i32 38 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 298, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 300, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"fi_acm\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 136, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 306, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"fi_ecm\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 137, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 312, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"fi_msg\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 141, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 320, i32 27 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 321, i32 28 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 355, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [11 x i8] c"f_acm_cfg1\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 106, i32 29 }
@___asan_gen_.152 = private unnamed_addr constant [13 x i8] c"f_obex1_cfg1\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 110, i32 29 }
@___asan_gen_.155 = private unnamed_addr constant [13 x i8] c"f_obex2_cfg1\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 111, i32 29 }
@___asan_gen_.158 = private unnamed_addr constant [14 x i8] c"f_phonet_cfg1\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 114, i32 29 }
@___asan_gen_.161 = private unnamed_addr constant [11 x i8] c"f_ecm_cfg1\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 108, i32 29 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 121, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 129, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 159, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 165, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 171, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 195, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 201, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 207, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 216, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [11 x i8] c"f_msg_cfg1\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 116, i32 29 }
@___asan_gen_.197 = private unnamed_addr constant [11 x i8] c"f_acm_cfg2\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 107, i32 29 }
@___asan_gen_.200 = private unnamed_addr constant [11 x i8] c"f_ecm_cfg2\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 109, i32 29 }
@___asan_gen_.203 = private unnamed_addr constant [14 x i8] c"f_phonet_cfg2\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 115, i32 29 }
@___asan_gen_.206 = private unnamed_addr constant [13 x i8] c"f_obex1_cfg2\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 112, i32 29 }
@___asan_gen_.209 = private unnamed_addr constant [13 x i8] c"f_obex2_cfg2\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 113, i32 29 }
@___asan_gen_.212 = private unnamed_addr constant [11 x i8] c"f_msg_cfg2\00", align 1
@___asan_gen_.213 = private constant [37 x i8] c"../drivers/usb/gadget/legacy/nokia.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 117, i32 29 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_author372, ptr @__UNIQUE_ID_bcdDevice342, ptr @__UNIQUE_ID_bcdDevicetype341, ptr @__UNIQUE_ID_cdrom362, ptr @__UNIQUE_ID_cdromtype361, ptr @__UNIQUE_ID_description371, ptr @__UNIQUE_ID_dev_addr352, ptr @__UNIQUE_ID_dev_addrtype351, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_file373, ptr @__UNIQUE_ID_filetype355, ptr @__UNIQUE_ID_host_addr354, ptr @__UNIQUE_ID_host_addrtype353, ptr @__UNIQUE_ID_iManufacturer346, ptr @__UNIQUE_ID_iManufacturertype345, ptr @__UNIQUE_ID_iProduct348, ptr @__UNIQUE_ID_iProducttype347, ptr @__UNIQUE_ID_iSerialNumber344, ptr @__UNIQUE_ID_iSerialNumbertype343, ptr @__UNIQUE_ID_idProduct340, ptr @__UNIQUE_ID_idProducttype339, ptr @__UNIQUE_ID_idVendor338, ptr @__UNIQUE_ID_idVendortype337, ptr @__UNIQUE_ID_license374, ptr @__UNIQUE_ID_luns366, ptr @__UNIQUE_ID_lunstype365, ptr @__UNIQUE_ID_nofua364, ptr @__UNIQUE_ID_nofuatype363, ptr @__UNIQUE_ID_num_buffers370, ptr @__UNIQUE_ID_num_bufferstype369, ptr @__UNIQUE_ID_qmult350, ptr @__UNIQUE_ID_qmulttype349, ptr @__UNIQUE_ID_removable360, ptr @__UNIQUE_ID_removabletype359, ptr @__UNIQUE_ID_ro358, ptr @__UNIQUE_ID_rotype357, ptr @__UNIQUE_ID_stall368, ptr @__UNIQUE_ID_stalltype367, ptr @__exitcall_nokia_driver_exit, ptr @__initcall__kmod_g_nokia__385_432_nokia_driver_init6, ptr @__param_bcdDevice, ptr @__param_cdrom, ptr @__param_dev_addr, ptr @__param_file, ptr @__param_host_addr, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @__param_luns, ptr @__param_nofua, ptr @__param_num_buffers, ptr @__param_qmult, ptr @__param_removable, ptr @__param_ro, ptr @__param_stall, ptr @nokia_bind._entry, ptr @nokia_bind._entry_ptr, ptr @nokia_driver_exit, ptr @coverwrite, ptr @qmult, ptr @dev_addr, ptr @host_addr, ptr @fsg_num_buffers, ptr @nokia_driver, ptr @fsg_mod_data, ptr @.str, ptr @device_desc, ptr @dev_strings, ptr @stringtab_dev, ptr @strings_dev, ptr @manufacturer_nokia, ptr @.str.2, ptr @.str.3, ptr @description_nokia, ptr @nokia_config_500ma_driver, ptr @nokia_config_100ma_driver, ptr @.str.4, ptr @fi_phonet, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @fi_obex1, ptr @.str.9, ptr @fi_obex2, ptr @.str.10, ptr @.str.11, ptr @fi_acm, ptr @.str.12, ptr @fi_ecm, ptr @.str.13, ptr @fi_msg, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @f_acm_cfg1, ptr @f_obex1_cfg1, ptr @f_obex2_cfg1, ptr @f_phonet_cfg1, ptr @f_ecm_cfg1, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @f_msg_cfg1, ptr @f_acm_cfg2, ptr @f_ecm_cfg2, ptr @f_phonet_cfg2, ptr @f_obex1_cfg2, ptr @f_obex2_cfg2, ptr @f_msg_cfg2], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmult to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsg_num_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsg_mod_data to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stringtab_dev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_dev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @manufacturer_nokia to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @description_nokia to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_config_500ma_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_config_100ma_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_phonet to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_obex1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_obex2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_acm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_ecm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_msg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nokia_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_acm_cfg1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_obex1_cfg1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_obex2_cfg1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_phonet_cfg1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ecm_cfg1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_msg_cfg1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_acm_cfg2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ecm_cfg2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_phonet_cfg2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_obex1_cfg2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_obex2_cfg2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_msg_cfg2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_composite_probe(ptr noundef nonnull @nokia_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nokia_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_composite_unregister(ptr noundef nonnull @nokia_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_bind(ptr noundef %cdev) #2 align 64 {
entry:
  %fsg_config = alloca %struct.fsg_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  call void @llvm.lifetime.start.p0(i64 668, ptr nonnull %fsg_config) #5
  %2 = call ptr @memset(ptr %fsg_config, i32 255, i32 668)
  %call = tail call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @strings_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8, ptr @strings_dev, align 4
  store i8 %3, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 10), align 1
  %4 = load i8, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @strings_dev, i32 0, i32 1), align 4
  store i8 %4, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 11), align 1
  %5 = load i8, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @strings_dev, i32 0, i32 3), align 4
  store i8 %5, ptr getelementptr inbounds (%struct.usb_configuration, ptr @nokia_config_500ma_driver, i32 0, i32 6), align 1
  store i8 %5, ptr getelementptr inbounds (%struct.usb_configuration, ptr @nokia_config_100ma_driver, i32 0, i32 6), align 1
  %quirk_altset_not_supp.i = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %quirk_altset_not_supp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %quirk_altset_not_supp.i, align 4
  %7 = and i32 %bf.load.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.not = icmp eq i32 %7, 0
  br i1 %tobool.not.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.4) #5
  store ptr %call7, ptr @fi_phonet, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_bind.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nokia_bind, %if.end17)) #5
          to label %if.then15 [label %if.end17], !srcloc !220

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nokia_bind.__UNIQUE_ID_ddebug382, ptr noundef nonnull @.str.7) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.body, %if.end6.if.end17_crit_edge
  %call18 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.8) #5
  store ptr %call18, ptr @fi_obex1, align 4
  %cmp.i160 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %do.body21, label %if.end17.if.end39_crit_edge

if.end17.if.end39_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

do.body21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_bind.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nokia_bind, %if.end39)) #5
          to label %if.then35 [label %if.end39], !srcloc !220

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nokia_bind.__UNIQUE_ID_ddebug383, ptr noundef nonnull @.str.9) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %do.body21, %if.end17.if.end39_crit_edge
  %call40 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.8) #5
  store ptr %call40, ptr @fi_obex2, align 4
  %cmp.i161 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %do.body43, label %if.end39.if.end61_crit_edge

if.end39.if.end61_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

do.body43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_bind.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nokia_bind, %if.end61)) #5
          to label %if.then57 [label %if.end61], !srcloc !220

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nokia_bind.__UNIQUE_ID_ddebug384, ptr noundef nonnull @.str.10) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %do.body43, %if.end39.if.end61_crit_edge
  %call62 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.11) #5
  store ptr %call62, ptr @fi_acm, align 4
  %cmp.i162 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call62 to i32
  br label %err_obex2_inst

if.end66:                                         ; preds = %if.end61
  %call67 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.12) #5
  store ptr %call67, ptr @fi_ecm, align 4
  %cmp.i163 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call67 to i32
  br label %err_acm_inst

if.end71:                                         ; preds = %if.end66
  %call72 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.13) #5
  store ptr %call72, ptr @fi_msg, align 4
  %cmp.i164 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %if.then74, label %if.end76

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call72 to i32
  br label %err_ecm_inst

if.end76:                                         ; preds = %if.end71
  %11 = load i32, ptr @fsg_num_buffers, align 4
  call void @fsg_config_from_params(ptr noundef nonnull %fsg_config, ptr noundef nonnull @fsg_mod_data, i32 noundef %11) #5
  %vendor_name = getelementptr inbounds %struct.fsg_config, ptr %fsg_config, i32 0, i32 4
  %12 = ptrtoint ptr %vendor_name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.14, ptr %vendor_name, align 4
  %product_name = getelementptr inbounds %struct.fsg_config, ptr %fsg_config, i32 0, i32 5
  %13 = ptrtoint ptr %product_name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.15, ptr %product_name, align 4
  %14 = load ptr, ptr @fi_msg, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 -4
  %no_configfs = getelementptr i8, ptr %14, i32 196
  %15 = ptrtoint ptr %no_configfs to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %no_configfs, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %18 = load i32, ptr @fsg_num_buffers, align 4
  %call78 = call i32 @fsg_common_set_num_buffers(ptr noundef %17, i32 noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end76.err_msg_inst_crit_edge

if.end76.err_msg_inst_crit_edge:                  ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_msg_inst

if.end81:                                         ; preds = %if.end76
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  %can_stall = getelementptr inbounds %struct.fsg_config, ptr %fsg_config, i32 0, i32 6
  %21 = ptrtoint ptr %can_stall to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %can_stall, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool83 = icmp ne i8 %22, 0
  %call84 = call i32 @fsg_common_set_cdev(ptr noundef %20, ptr noundef %cdev, i1 noundef zeroext %tobool83) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end81.err_msg_buf_crit_edge

if.end81.err_msg_buf_crit_edge:                   ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_msg_buf

if.end87:                                         ; preds = %if.end81
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  call void @fsg_common_set_sysfs(ptr noundef %24, i1 noundef zeroext true) #5
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  %call90 = call i32 @fsg_common_create_luns(ptr noundef %26, ptr noundef nonnull %fsg_config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end87.err_msg_buf_crit_edge

if.end87.err_msg_buf_crit_edge:                   ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_msg_buf

if.end93:                                         ; preds = %if.end87
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  %29 = ptrtoint ptr %vendor_name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vendor_name, align 4
  %31 = ptrtoint ptr %product_name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %product_name, align 4
  call void @fsg_common_set_inquiry_string(ptr noundef %28, ptr noundef %30, ptr noundef %32) #5
  %call97 = call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @nokia_config_500ma_driver, ptr noundef nonnull @nokia_bind_config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.end93.err_msg_luns_crit_edge, label %if.end101

if.end93.err_msg_luns_crit_edge:                  ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_msg_luns

if.end101:                                        ; preds = %if.end93
  %call102 = call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @nokia_config_100ma_driver, ptr noundef nonnull @nokia_bind_config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %err_put_cfg1, label %if.end106

if.end106:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #5
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2) #8
  br label %cleanup

err_put_cfg1:                                     ; preds = %if.end101
  %33 = load ptr, ptr @f_acm_cfg1, align 4
  call void @usb_put_function(ptr noundef %33) #5
  %34 = load ptr, ptr @f_obex1_cfg1, align 4
  %tobool.not.i = icmp eq ptr %34, null
  %cmp.i165 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i165
  br i1 %spec.select.i, label %err_put_cfg1.if.end112_crit_edge, label %if.then111

err_put_cfg1.if.end112_crit_edge:                 ; preds = %err_put_cfg1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.then111:                                       ; preds = %err_put_cfg1
  call void @__sanitizer_cov_trace_pc() #7
  call void @usb_put_function(ptr noundef nonnull %34) #5
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %err_put_cfg1.if.end112_crit_edge
  %35 = load ptr, ptr @f_obex2_cfg1, align 4
  %tobool.not.i166 = icmp eq ptr %35, null
  %cmp.i167 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  %spec.select.i168 = or i1 %tobool.not.i166, %cmp.i167
  br i1 %spec.select.i168, label %if.end112.if.end115_crit_edge, label %if.then114

if.end112.if.end115_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  call void @usb_put_function(ptr noundef nonnull %35) #5
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end112.if.end115_crit_edge
  %36 = load ptr, ptr @f_phonet_cfg1, align 4
  %tobool.not.i169 = icmp eq ptr %36, null
  %cmp.i170 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  %spec.select.i171 = or i1 %tobool.not.i169, %cmp.i170
  br i1 %spec.select.i171, label %if.end115.if.end118_crit_edge, label %if.then117

if.end115.if.end118_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

if.then117:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  call void @usb_put_function(ptr noundef nonnull %36) #5
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %if.end115.if.end118_crit_edge
  %37 = load ptr, ptr @f_ecm_cfg1, align 4
  call void @usb_put_function(ptr noundef %37) #5
  br label %err_msg_luns

err_msg_luns:                                     ; preds = %if.end118, %if.end93.err_msg_luns_crit_edge
  %status.0 = phi i32 [ %call97, %if.end93.err_msg_luns_crit_edge ], [ %call102, %if.end118 ]
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 4
  call void @fsg_common_remove_luns(ptr noundef %39) #5
  br label %err_msg_buf

err_msg_buf:                                      ; preds = %err_msg_luns, %if.end87.err_msg_buf_crit_edge, %if.end81.err_msg_buf_crit_edge
  %status.1 = phi i32 [ %call84, %if.end81.err_msg_buf_crit_edge ], [ %call90, %if.end87.err_msg_buf_crit_edge ], [ %status.0, %err_msg_luns ]
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 4
  call void @fsg_common_free_buffers(ptr noundef %41) #5
  br label %err_msg_inst

err_msg_inst:                                     ; preds = %err_msg_buf, %if.end76.err_msg_inst_crit_edge
  %status.2 = phi i32 [ %call78, %if.end76.err_msg_inst_crit_edge ], [ %status.1, %err_msg_buf ]
  %42 = load ptr, ptr @fi_msg, align 4
  call void @usb_put_function_instance(ptr noundef %42) #5
  br label %err_ecm_inst

err_ecm_inst:                                     ; preds = %err_msg_inst, %if.then74
  %status.3 = phi i32 [ %10, %if.then74 ], [ %status.2, %err_msg_inst ]
  %43 = load ptr, ptr @fi_ecm, align 4
  call void @usb_put_function_instance(ptr noundef %43) #5
  br label %err_acm_inst

err_acm_inst:                                     ; preds = %err_ecm_inst, %if.then69
  %status.4 = phi i32 [ %9, %if.then69 ], [ %status.3, %err_ecm_inst ]
  %44 = load ptr, ptr @fi_acm, align 4
  call void @usb_put_function_instance(ptr noundef %44) #5
  br label %err_obex2_inst

err_obex2_inst:                                   ; preds = %err_acm_inst, %if.then64
  %status.5 = phi i32 [ %8, %if.then64 ], [ %status.4, %err_acm_inst ]
  %45 = load ptr, ptr @fi_obex2, align 4
  %cmp.i172 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %err_obex2_inst.if.end123_crit_edge, label %if.then122

err_obex2_inst.if.end123_crit_edge:               ; preds = %err_obex2_inst
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end123

if.then122:                                       ; preds = %err_obex2_inst
  call void @__sanitizer_cov_trace_pc() #7
  call void @usb_put_function_instance(ptr noundef %45) #5
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %err_obex2_inst.if.end123_crit_edge
  %46 = load ptr, ptr @fi_obex1, align 4
  %cmp.i173 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.end123.if.end126_crit_edge, label %if.then125

if.end123.if.end126_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126

if.then125:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  call void @usb_put_function_instance(ptr noundef %46) #5
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.end123.if.end126_crit_edge
  %47 = load ptr, ptr @fi_phonet, align 4
  %cmp.i174 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %if.end126.cleanup_crit_edge, label %if.then128

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  call void @usb_put_function_instance(ptr noundef %47) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %if.end126.cleanup_crit_edge, %if.end106, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end106 ], [ %call, %entry.cleanup_crit_edge ], [ %status.5, %if.end126.cleanup_crit_edge ], [ %status.5, %if.then128 ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 668, ptr nonnull %fsg_config) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_unbind(ptr nocapture noundef readnone %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @f_obex1_cfg2, align 4
  %tobool.not.i = icmp eq ptr %0, null
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_put_function(ptr noundef nonnull %0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @f_obex2_cfg2, align 4
  %tobool.not.i25 = icmp eq ptr %1, null
  %cmp.i26 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i27 = or i1 %tobool.not.i25, %cmp.i26
  br i1 %spec.select.i27, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_put_function(ptr noundef nonnull %1) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %2 = load ptr, ptr @f_obex1_cfg1, align 4
  %tobool.not.i28 = icmp eq ptr %2, null
  %cmp.i29 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %spec.select.i30 = or i1 %tobool.not.i28, %cmp.i29
  br i1 %spec.select.i30, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_put_function(ptr noundef nonnull %2) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %3 = load ptr, ptr @f_obex2_cfg1, align 4
  %tobool.not.i31 = icmp eq ptr %3, null
  %cmp.i32 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i33 = or i1 %tobool.not.i31, %cmp.i32
  br i1 %spec.select.i33, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_put_function(ptr noundef nonnull %3) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %4 = load ptr, ptr @f_phonet_cfg1, align 4
  %tobool.not.i34 = icmp eq ptr %4, null
  %cmp.i35 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %spec.select.i36 = or i1 %tobool.not.i34, %cmp.i35
  br i1 %spec.select.i36, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_put_function(ptr noundef nonnull %4) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %5 = load ptr, ptr @f_phonet_cfg2, align 4
  %tobool.not.i37 = icmp eq ptr %5, null
  %cmp.i38 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i39 = or i1 %tobool.not.i37, %cmp.i38
  br i1 %spec.select.i39, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_put_function(ptr noundef nonnull %5) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %6 = load ptr, ptr @f_acm_cfg1, align 4
  tail call void @usb_put_function(ptr noundef %6) #5
  %7 = load ptr, ptr @f_acm_cfg2, align 4
  tail call void @usb_put_function(ptr noundef %7) #5
  %8 = load ptr, ptr @f_ecm_cfg1, align 4
  tail call void @usb_put_function(ptr noundef %8) #5
  %9 = load ptr, ptr @f_ecm_cfg2, align 4
  tail call void @usb_put_function(ptr noundef %9) #5
  %10 = load ptr, ptr @f_msg_cfg1, align 4
  tail call void @usb_put_function(ptr noundef %10) #5
  %11 = load ptr, ptr @f_msg_cfg2, align 4
  tail call void @usb_put_function(ptr noundef %11) #5
  %12 = load ptr, ptr @fi_msg, align 4
  tail call void @usb_put_function_instance(ptr noundef %12) #5
  %13 = load ptr, ptr @fi_ecm, align 4
  tail call void @usb_put_function_instance(ptr noundef %13) #5
  %14 = load ptr, ptr @fi_obex2, align 4
  %cmp.i40 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_put_function_instance(ptr noundef %14) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  %15 = load ptr, ptr @fi_obex1, align 4
  %cmp.i41 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_put_function_instance(ptr noundef %15) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  %16 = load ptr, ptr @fi_phonet, align 4
  %cmp.i42 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %if.end21.if.end24_crit_edge, label %if.then23

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_put_function_instance(ptr noundef %16) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21.if.end24_crit_edge
  %17 = load ptr, ptr @fi_acm, align 4
  tail call void @usb_put_function_instance(ptr noundef %17) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_ids_tab(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsg_config_from_params(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_common_set_num_buffers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_common_set_cdev(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsg_common_set_sysfs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsg_common_create_luns(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsg_common_set_inquiry_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nokia_bind_config(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fi_phonet, align 4
  %cmp.i = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @usb_get_function(ptr noundef %0) #5
  %cmp.i285 = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i285, label %do.body, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_bind_config.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nokia_bind_config, %if.end10)) #5
          to label %if.then8 [label %if.end10], !srcloc !220

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nokia_bind_config.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.22) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %f_phonet.0 = phi ptr [ null, %entry.if.end10_crit_edge ], [ %call1, %if.then8 ], [ %call1, %if.then.if.end10_crit_edge ], [ %call1, %do.body ]
  %1 = load ptr, ptr @fi_obex1, align 4
  %cmp.i286 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i286, label %if.end10.if.end35_crit_edge, label %if.then12

if.end10.if.end35_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then12:                                        ; preds = %if.end10
  %call13 = tail call ptr @usb_get_function(ptr noundef %1) #5
  %cmp.i287 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i287, label %do.body16, label %if.then12.if.end35_crit_edge

if.then12.if.end35_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.body16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_bind_config.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nokia_bind_config, %if.end35)) #5
          to label %if.then30 [label %if.end35], !srcloc !220

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nokia_bind_config.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.23) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %do.body16, %if.then12.if.end35_crit_edge, %if.end10.if.end35_crit_edge
  %f_obex1.0 = phi ptr [ null, %if.end10.if.end35_crit_edge ], [ %call13, %if.then30 ], [ %call13, %if.then12.if.end35_crit_edge ], [ %call13, %do.body16 ]
  %2 = load ptr, ptr @fi_obex2, align 4
  %cmp.i288 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i288, label %if.end35.if.end60_crit_edge, label %if.then37

if.end35.if.end60_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then37:                                        ; preds = %if.end35
  %call38 = tail call ptr @usb_get_function(ptr noundef %2) #5
  %cmp.i289 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i289, label %do.body41, label %if.then37.if.end60_crit_edge

if.then37.if.end60_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

do.body41:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_bind_config.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nokia_bind_config, %if.end60)) #5
          to label %if.then55 [label %if.end60], !srcloc !220

if.then55:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nokia_bind_config.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.24) #5
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %do.body41, %if.then37.if.end60_crit_edge, %if.end35.if.end60_crit_edge
  %f_obex2.0 = phi ptr [ null, %if.end35.if.end60_crit_edge ], [ %call38, %if.then55 ], [ %call38, %if.then37.if.end60_crit_edge ], [ %call38, %do.body41 ]
  %3 = load ptr, ptr @fi_acm, align 4
  %call61 = tail call ptr @usb_get_function(ptr noundef %3) #5
  %cmp.i290 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i290, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call61 to i32
  br label %err_get_acm

if.end65:                                         ; preds = %if.end60
  %5 = load ptr, ptr @fi_ecm, align 4
  %call66 = tail call ptr @usb_get_function(ptr noundef %5) #5
  %cmp.i291 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i291, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call66 to i32
  br label %err_get_ecm

if.end70:                                         ; preds = %if.end65
  %7 = load ptr, ptr @fi_msg, align 4
  %call71 = tail call ptr @usb_get_function(ptr noundef %7) #5
  %cmp.i292 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i292, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call71 to i32
  br label %err_get_msg

if.end75:                                         ; preds = %if.end70
  %tobool.not.i = icmp eq ptr %f_phonet.0, null
  %cmp.i293 = icmp ugt ptr %f_phonet.0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i293
  br i1 %spec.select.i, label %if.end75.if.end100_crit_edge, label %if.then77

if.end75.if.end100_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.then77:                                        ; preds = %if.end75
  %call78 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef nonnull %f_phonet.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then77.if.end100_crit_edge, label %do.body81

if.then77.if.end100_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

do.body81:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_bind_config.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nokia_bind_config, %if.end100)) #5
          to label %if.then95 [label %if.end100], !srcloc !220

if.then95:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nokia_bind_config.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.25) #5
  br label %if.end100

if.end100:                                        ; preds = %if.then95, %do.body81, %if.then77.if.end100_crit_edge, %if.end75.if.end100_crit_edge
  %tobool189.not = phi i1 [ true, %if.then77.if.end100_crit_edge ], [ false, %if.then95 ], [ false, %if.end75.if.end100_crit_edge ], [ false, %do.body81 ]
  %tobool.not.i294 = icmp eq ptr %f_obex1.0, null
  %cmp.i295 = icmp ugt ptr %f_obex1.0, inttoptr (i32 -4096 to ptr)
  %spec.select.i296 = or i1 %tobool.not.i294, %cmp.i295
  br i1 %spec.select.i296, label %if.end100.if.end125_crit_edge, label %if.then102

if.end100.if.end125_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

if.then102:                                       ; preds = %if.end100
  %call103 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef nonnull %f_obex1.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.then102.if.end125_crit_edge, label %do.body106

if.then102.if.end125_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

do.body106:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_bind_config.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nokia_bind_config, %if.end125)) #5
          to label %if.then120 [label %if.end125], !srcloc !220

if.then120:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nokia_bind_config.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.26) #5
  br label %if.end125

if.end125:                                        ; preds = %if.then120, %do.body106, %if.then102.if.end125_crit_edge, %if.end100.if.end125_crit_edge
  %tobool186.not = phi i1 [ true, %if.then102.if.end125_crit_edge ], [ false, %if.then120 ], [ false, %if.end100.if.end125_crit_edge ], [ false, %do.body106 ]
  %tobool.not.i297 = icmp eq ptr %f_obex2.0, null
  %cmp.i298 = icmp ugt ptr %f_obex2.0, inttoptr (i32 -4096 to ptr)
  %spec.select.i299 = or i1 %tobool.not.i297, %cmp.i298
  br i1 %spec.select.i299, label %if.end125.if.end150_crit_edge, label %if.then127

if.end125.if.end150_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end150

if.then127:                                       ; preds = %if.end125
  %call128 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef nonnull %f_obex2.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.then127.if.end150_crit_edge, label %do.body131

if.then127.if.end150_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end150

do.body131:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_bind_config.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nokia_bind_config, %if.end150)) #5
          to label %if.then145 [label %if.end150], !srcloc !220

if.then145:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nokia_bind_config.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.27) #5
  br label %if.end150

if.end150:                                        ; preds = %if.then145, %do.body131, %if.then127.if.end150_crit_edge, %if.end125.if.end150_crit_edge
  %tobool183.not = phi i1 [ true, %if.then127.if.end150_crit_edge ], [ false, %if.then145 ], [ false, %if.end125.if.end150_crit_edge ], [ false, %do.body131 ]
  %call151 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call61) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %if.end150.err_conf_crit_edge

if.end150.err_conf_crit_edge:                     ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_conf

if.end154:                                        ; preds = %if.end150
  %call155 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call66) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end176, label %do.body158

do.body158:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nokia_bind_config.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@nokia_bind_config, %err_ecm)) #5
          to label %if.then172 [label %err_ecm], !srcloc !220

if.then172:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nokia_bind_config.__UNIQUE_ID_ddebug381, ptr noundef nonnull @.str.28, i32 noundef %call155) #5
  br label %err_ecm

if.end176:                                        ; preds = %if.end154
  %call177 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call71) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end180, label %err_msg

if.end180:                                        ; preds = %if.end176
  %cmp = icmp eq ptr %c, @nokia_config_500ma_driver
  br i1 %cmp, label %if.then181, label %if.else

if.then181:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %call61, ptr @f_acm_cfg1, align 4
  store ptr %call66, ptr @f_ecm_cfg1, align 4
  store ptr %f_phonet.0, ptr @f_phonet_cfg1, align 4
  store ptr %f_obex1.0, ptr @f_obex1_cfg1, align 4
  store ptr %f_obex2.0, ptr @f_obex2_cfg1, align 4
  store ptr %call71, ptr @f_msg_cfg1, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %call61, ptr @f_acm_cfg2, align 4
  store ptr %call66, ptr @f_ecm_cfg2, align 4
  store ptr %f_phonet.0, ptr @f_phonet_cfg2, align 4
  store ptr %f_obex1.0, ptr @f_obex1_cfg2, align 4
  store ptr %f_obex2.0, ptr @f_obex2_cfg2, align 4
  store ptr %call71, ptr @f_msg_cfg2, align 4
  br label %cleanup

err_msg:                                          ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_remove_function(ptr noundef %c, ptr noundef %call66) #5
  br label %err_ecm

err_ecm:                                          ; preds = %err_msg, %if.then172, %do.body158
  %status.0 = phi i32 [ %call155, %if.then172 ], [ %call177, %err_msg ], [ %call155, %do.body158 ]
  tail call void @usb_remove_function(ptr noundef %c, ptr noundef %call61) #5
  br label %err_conf

err_conf:                                         ; preds = %err_ecm, %if.end150.err_conf_crit_edge
  %status.1 = phi i32 [ %call151, %if.end150.err_conf_crit_edge ], [ %status.0, %err_ecm ]
  br i1 %tobool183.not, label %if.then184, label %err_conf.if.end185_crit_edge

err_conf.if.end185_crit_edge:                     ; preds = %err_conf
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end185

if.then184:                                       ; preds = %err_conf
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_remove_function(ptr noundef %c, ptr noundef %f_obex2.0) #5
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %err_conf.if.end185_crit_edge
  br i1 %tobool186.not, label %if.then187, label %if.end185.if.end188_crit_edge

if.end185.if.end188_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end188

if.then187:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_remove_function(ptr noundef %c, ptr noundef %f_obex1.0) #5
  br label %if.end188

if.end188:                                        ; preds = %if.then187, %if.end185.if.end188_crit_edge
  br i1 %tobool189.not, label %if.then190, label %if.end188.if.end191_crit_edge

if.end188.if.end191_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end191

if.then190:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_remove_function(ptr noundef %c, ptr noundef %f_phonet.0) #5
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %if.end188.if.end191_crit_edge
  tail call void @usb_put_function(ptr noundef %call71) #5
  br label %err_get_msg

err_get_msg:                                      ; preds = %if.end191, %if.then73
  %status.2 = phi i32 [ %8, %if.then73 ], [ %status.1, %if.end191 ]
  tail call void @usb_put_function(ptr noundef %call66) #5
  br label %err_get_ecm

err_get_ecm:                                      ; preds = %err_get_msg, %if.then68
  %status.3 = phi i32 [ %6, %if.then68 ], [ %status.2, %err_get_msg ]
  tail call void @usb_put_function(ptr noundef %call61) #5
  br label %err_get_acm

err_get_acm:                                      ; preds = %err_get_ecm, %if.then63
  %status.4 = phi i32 [ %4, %if.then63 ], [ %status.3, %err_get_ecm ]
  %tobool.not.i300 = icmp eq ptr %f_obex2.0, null
  %cmp.i301 = icmp ugt ptr %f_obex2.0, inttoptr (i32 -4096 to ptr)
  %spec.select.i302 = or i1 %tobool.not.i300, %cmp.i301
  br i1 %spec.select.i302, label %err_get_acm.if.end194_crit_edge, label %if.then193

err_get_acm.if.end194_crit_edge:                  ; preds = %err_get_acm
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

if.then193:                                       ; preds = %err_get_acm
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_put_function(ptr noundef nonnull %f_obex2.0) #5
  br label %if.end194

if.end194:                                        ; preds = %if.then193, %err_get_acm.if.end194_crit_edge
  %tobool.not.i303 = icmp eq ptr %f_obex1.0, null
  %cmp.i304 = icmp ugt ptr %f_obex1.0, inttoptr (i32 -4096 to ptr)
  %spec.select.i305 = or i1 %tobool.not.i303, %cmp.i304
  br i1 %spec.select.i305, label %if.end194.if.end197_crit_edge, label %if.then196

if.end194.if.end197_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

if.then196:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_put_function(ptr noundef nonnull %f_obex1.0) #5
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %if.end194.if.end197_crit_edge
  %tobool.not.i306 = icmp eq ptr %f_phonet.0, null
  %cmp.i307 = icmp ugt ptr %f_phonet.0, inttoptr (i32 -4096 to ptr)
  %spec.select.i308 = or i1 %tobool.not.i306, %cmp.i307
  br i1 %spec.select.i308, label %if.end197.cleanup_crit_edge, label %if.then199

if.end197.cleanup_crit_edge:                      ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then199:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_put_function(ptr noundef nonnull %f_phonet.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then199, %if.end197.cleanup_crit_edge, %if.else, %if.then181
  %retval.0 = phi i32 [ 0, %if.else ], [ 0, %if.then181 ], [ %status.4, %if.then199 ], [ %status.4, %if.end197.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_overwrite_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsg_common_remove_luns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsg_common_free_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !56, !58, !60, !61, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !121, !123, !125, !126, !128, !129, !131, !133, !135, !137, !139, !141, !142, !143, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !{ptr @__param_idVendor, !1, !"__param_idVendor", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 30, i32 1}
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
!20 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 32, i32 1}
!21 = !{ptr @__UNIQUE_ID_qmulttype349, !20, !"__UNIQUE_ID_qmulttype349", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_qmult350, !20, !"__UNIQUE_ID_qmult350", i1 false, i1 false}
!23 = !{ptr @__param_dev_addr, !20, !"__param_dev_addr", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_dev_addrtype351, !20, !"__UNIQUE_ID_dev_addrtype351", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_dev_addr352, !20, !"__UNIQUE_ID_dev_addr352", i1 false, i1 false}
!26 = !{ptr @__param_host_addr, !20, !"__param_host_addr", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_host_addrtype353, !20, !"__UNIQUE_ID_host_addrtype353", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_host_addr354, !20, !"__UNIQUE_ID_host_addr354", i1 false, i1 false}
!29 = !{ptr @__param_file, !30, !"__param_file", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 55, i32 1}
!31 = !{ptr @__UNIQUE_ID_filetype355, !30, !"__UNIQUE_ID_filetype355", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_file356, !30, !"__UNIQUE_ID_file356", i1 false, i1 false}
!33 = !{ptr @__param_ro, !30, !"__param_ro", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_rotype357, !30, !"__UNIQUE_ID_rotype357", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_ro358, !30, !"__UNIQUE_ID_ro358", i1 false, i1 false}
!36 = !{ptr @__param_removable, !30, !"__param_removable", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_removabletype359, !30, !"__UNIQUE_ID_removabletype359", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_removable360, !30, !"__UNIQUE_ID_removable360", i1 false, i1 false}
!39 = !{ptr @__param_cdrom, !30, !"__param_cdrom", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_cdromtype361, !30, !"__UNIQUE_ID_cdromtype361", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_cdrom362, !30, !"__UNIQUE_ID_cdrom362", i1 false, i1 false}
!42 = !{ptr @__param_nofua, !30, !"__param_nofua", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_nofuatype363, !30, !"__UNIQUE_ID_nofuatype363", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_nofua364, !30, !"__UNIQUE_ID_nofua364", i1 false, i1 false}
!45 = !{ptr @__param_luns, !30, !"__param_luns", i1 false, i1 false}
!46 = !{ptr @__UNIQUE_ID_lunstype365, !30, !"__UNIQUE_ID_lunstype365", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_luns366, !30, !"__UNIQUE_ID_luns366", i1 false, i1 false}
!48 = !{ptr @__param_stall, !30, !"__param_stall", i1 false, i1 false}
!49 = !{ptr @__UNIQUE_ID_stalltype367, !30, !"__UNIQUE_ID_stalltype367", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_stall368, !30, !"__UNIQUE_ID_stall368", i1 false, i1 false}
!51 = !{ptr @__param_num_buffers, !30, !"__param_num_buffers", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_num_bufferstype369, !30, !"__UNIQUE_ID_num_bufferstype369", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_num_buffers370, !30, !"__UNIQUE_ID_num_buffers370", i1 false, i1 false}
!54 = !{ptr @__UNIQUE_ID_description371, !55, !"__UNIQUE_ID_description371", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 101, i32 1}
!56 = !{ptr @__UNIQUE_ID_author372, !57, !"__UNIQUE_ID_author372", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 102, i32 1}
!58 = !{ptr @__UNIQUE_ID_file373, !59, !"__UNIQUE_ID_file373", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 103, i32 1}
!60 = !{ptr @__UNIQUE_ID_license374, !59, !"__UNIQUE_ID_license374", i1 false, i1 false}
!61 = !{ptr @__initcall__kmod_g_nokia__385_432_nokia_driver_init6, !62, !"__initcall__kmod_g_nokia__385_432_nokia_driver_init6", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 432, i32 1}
!63 = !{ptr @__exitcall_nokia_driver_exit, !62, !"__exitcall_nokia_driver_exit", i1 false, i1 false}
!64 = !{ptr @coverwrite, !1, !"coverwrite", i1 false, i1 false}
!65 = !{ptr @dev_addr, !20, !"dev_addr", i1 false, i1 false}
!66 = !{ptr @host_addr, !20, !"host_addr", i1 false, i1 false}
!67 = !{ptr @__param_str_idVendor, !1, !"__param_str_idVendor", i1 false, i1 false}
!68 = !{ptr @__param_str_idProduct, !1, !"__param_str_idProduct", i1 false, i1 false}
!69 = !{ptr @__param_str_bcdDevice, !1, !"__param_str_bcdDevice", i1 false, i1 false}
!70 = !{ptr @__param_str_iSerialNumber, !1, !"__param_str_iSerialNumber", i1 false, i1 false}
!71 = !{ptr @__param_str_iManufacturer, !1, !"__param_str_iManufacturer", i1 false, i1 false}
!72 = !{ptr @__param_str_iProduct, !1, !"__param_str_iProduct", i1 false, i1 false}
!73 = !{ptr @__param_str_qmult, !20, !"__param_str_qmult", i1 false, i1 false}
!74 = !{ptr @qmult, !20, !"qmult", i1 false, i1 false}
!75 = !{ptr @__param_str_dev_addr, !20, !"__param_str_dev_addr", i1 false, i1 false}
!76 = !{ptr @__param_str_host_addr, !20, !"__param_str_host_addr", i1 false, i1 false}
!77 = !{ptr @__param_str_file, !30, !"__param_str_file", i1 false, i1 false}
!78 = !{ptr @__param_arr_file, !30, !"__param_arr_file", i1 false, i1 false}
!79 = !{ptr @__param_str_ro, !30, !"__param_str_ro", i1 false, i1 false}
!80 = !{ptr @__param_arr_ro, !30, !"__param_arr_ro", i1 false, i1 false}
!81 = !{ptr @__param_str_removable, !30, !"__param_str_removable", i1 false, i1 false}
!82 = !{ptr @__param_arr_removable, !30, !"__param_arr_removable", i1 false, i1 false}
!83 = !{ptr @__param_str_cdrom, !30, !"__param_str_cdrom", i1 false, i1 false}
!84 = !{ptr @__param_arr_cdrom, !30, !"__param_arr_cdrom", i1 false, i1 false}
!85 = !{ptr @__param_str_nofua, !30, !"__param_str_nofua", i1 false, i1 false}
!86 = !{ptr @__param_arr_nofua, !30, !"__param_arr_nofua", i1 false, i1 false}
!87 = !{ptr @__param_str_luns, !30, !"__param_str_luns", i1 false, i1 false}
!88 = !{ptr @fsg_mod_data, !89, !"fsg_mod_data", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 34, i32 37}
!90 = !{ptr @__param_str_stall, !30, !"__param_str_stall", i1 false, i1 false}
!91 = !{ptr @__param_str_num_buffers, !30, !"__param_str_num_buffers", i1 false, i1 false}
!92 = !{ptr @fsg_num_buffers, !93, !"fsg_num_buffers", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 43, i32 21}
!94 = !{ptr @.str, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 424, i32 11}
!96 = !{ptr @nokia_driver, !97, !"nokia_driver", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 423, i32 36}
!98 = !{ptr @device_desc, !99, !"device_desc", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 85, i32 37}
!100 = !{ptr @dev_strings, !101, !"dev_strings", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 80, i32 35}
!102 = !{ptr @stringtab_dev, !103, !"stringtab_dev", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 75, i32 34}
!104 = !{ptr @.str.2, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 69, i32 31}
!106 = !{ptr @.str.3, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 70, i32 30}
!108 = !{ptr @strings_dev, !109, !"strings_dev", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 67, i32 26}
!110 = !{ptr @manufacturer_nokia, !111, !"manufacturer_nokia", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 64, i32 13}
!112 = !{ptr @description_nokia, !113, !"description_nokia", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 65, i32 19}
!114 = !{ptr @.str.4, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 288, i32 40}
!116 = !{ptr @.str.5, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 290, i32 3}
!118 = !{ptr @.str.6, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.7, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @nokia_bind.__UNIQUE_ID_ddebug382, !117, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!121 = !{ptr @.str.8, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 292, i32 39}
!123 = !{ptr @.str.9, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 294, i32 3}
!125 = !{ptr @nokia_bind.__UNIQUE_ID_ddebug383, !124, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!126 = !{ptr @.str.10, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 298, i32 3}
!128 = !{ptr @nokia_bind.__UNIQUE_ID_ddebug384, !127, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!129 = !{ptr @.str.11, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 300, i32 37}
!131 = !{ptr @.str.12, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 306, i32 37}
!133 = !{ptr @.str.13, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 312, i32 37}
!135 = !{ptr @.str.14, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 320, i32 27}
!137 = !{ptr @.str.15, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 321, i32 28}
!139 = !{ptr @.str.16, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 355, i32 2}
!141 = !{ptr @.str.17, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.18, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @nokia_bind._entry, !140, !"_entry", i1 false, i1 false}
!144 = !{ptr @nokia_bind._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.19, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 121, i32 12}
!147 = !{ptr @nokia_config_500ma_driver, !148, !"nokia_config_500ma_driver", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 120, i32 33}
!149 = !{ptr @.str.20, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 129, i32 12}
!151 = !{ptr @nokia_config_100ma_driver, !152, !"nokia_config_100ma_driver", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 128, i32 33}
!153 = !{ptr @fi_phonet, !154, !"fi_phonet", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 140, i32 38}
!155 = !{ptr @fi_obex1, !156, !"fi_obex1", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 138, i32 38}
!157 = !{ptr @fi_obex2, !158, !"fi_obex2", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 139, i32 38}
!159 = !{ptr @fi_acm, !160, !"fi_acm", i1 false, i1 false}
!160 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 136, i32 38}
!161 = !{ptr @fi_ecm, !162, !"fi_ecm", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 137, i32 38}
!163 = !{ptr @fi_msg, !164, !"fi_msg", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 141, i32 38}
!165 = !{ptr @.str.21, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 159, i32 4}
!167 = !{ptr @.str.22, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @nokia_bind_config.__UNIQUE_ID_ddebug375, !166, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!169 = !{ptr @.str.23, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 165, i32 4}
!171 = !{ptr @nokia_bind_config.__UNIQUE_ID_ddebug376, !170, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!172 = !{ptr @.str.24, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 171, i32 4}
!174 = !{ptr @nokia_bind_config.__UNIQUE_ID_ddebug377, !173, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!175 = !{ptr @.str.25, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 195, i32 4}
!177 = !{ptr @nokia_bind_config.__UNIQUE_ID_ddebug378, !176, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!178 = !{ptr @.str.26, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 201, i32 4}
!180 = !{ptr @nokia_bind_config.__UNIQUE_ID_ddebug379, !179, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!181 = !{ptr @.str.27, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 207, i32 4}
!183 = !{ptr @nokia_bind_config.__UNIQUE_ID_ddebug380, !182, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!184 = !{ptr @.str.28, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 216, i32 3}
!186 = !{ptr @nokia_bind_config.__UNIQUE_ID_ddebug381, !185, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!187 = !{ptr @f_msg_cfg1, !188, !"f_msg_cfg1", i1 false, i1 false}
!188 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 116, i32 29}
!189 = !{ptr @f_acm_cfg2, !190, !"f_acm_cfg2", i1 false, i1 false}
!190 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 107, i32 29}
!191 = !{ptr @f_ecm_cfg2, !192, !"f_ecm_cfg2", i1 false, i1 false}
!192 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 109, i32 29}
!193 = !{ptr @f_phonet_cfg2, !194, !"f_phonet_cfg2", i1 false, i1 false}
!194 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 115, i32 29}
!195 = !{ptr @f_obex1_cfg2, !196, !"f_obex1_cfg2", i1 false, i1 false}
!196 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 112, i32 29}
!197 = !{ptr @f_obex2_cfg2, !198, !"f_obex2_cfg2", i1 false, i1 false}
!198 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 113, i32 29}
!199 = !{ptr @f_msg_cfg2, !200, !"f_msg_cfg2", i1 false, i1 false}
!200 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 117, i32 29}
!201 = !{ptr @f_acm_cfg1, !202, !"f_acm_cfg1", i1 false, i1 false}
!202 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 106, i32 29}
!203 = !{ptr @f_obex1_cfg1, !204, !"f_obex1_cfg1", i1 false, i1 false}
!204 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 110, i32 29}
!205 = !{ptr @f_obex2_cfg1, !206, !"f_obex2_cfg1", i1 false, i1 false}
!206 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 111, i32 29}
!207 = !{ptr @f_phonet_cfg1, !208, !"f_phonet_cfg1", i1 false, i1 false}
!208 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 114, i32 29}
!209 = !{ptr @f_ecm_cfg1, !210, !"f_ecm_cfg1", i1 false, i1 false}
!210 = !{!"../drivers/usb/gadget/legacy/nokia.c", i32 108, i32 29}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 1, !"min_enum_size", i32 4}
!213 = !{i32 8, !"branch-target-enforcement", i32 0}
!214 = !{i32 8, !"sign-return-address", i32 0}
!215 = !{i32 8, !"sign-return-address-all", i32 0}
!216 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!217 = !{i32 7, !"uwtable", i32 1}
!218 = !{i32 7, !"frame-pointer", i32 2}
!219 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!220 = !{i64 2148700805, i64 2148700810, i64 2148700823, i64 2148700867, i64 2148700901, i64 2148700922}
