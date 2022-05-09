; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/multi.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/multi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.usb_composite_overwrite = type { i16, i16, i16, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.fsg_module_parameters = type { [16 x ptr], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i32, i8 }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_string = type { i8, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.fsg_config = type { i32, [16 x %struct.fsg_lun_config], ptr, ptr, ptr, ptr, i8, i32 }
%struct.fsg_lun_config = type { ptr, i8, i8, i8, i8, [29 x i8] }
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
%struct.f_rndis_opts = type { %struct.usb_function_instance, i32, ptr, ptr, i8, i8, ptr, %struct.usb_os_desc, [16 x i8], i8, i8, i8, %struct.mutex, i32 }
%struct.usb_os_desc = type { ptr, %struct.list_head, i32, i32, ptr, %struct.config_group, ptr }

@__UNIQUE_ID_description337 = internal constant [51 x i8] c"g_multi.description=Multifunction Composite Gadget\00", section ".modinfo", align 1
@__UNIQUE_ID_author338 = internal constant [33 x i8] c"g_multi.author=Michal Nazarewicz\00", section ".modinfo", align 1
@__UNIQUE_ID_file339 = internal constant [47 x i8] c"g_multi.file=drivers/usb/gadget/legacy/g_multi\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [20 x i8] c"g_multi.license=GPL\00", section ".modinfo", align 1
@__param_str_idVendor = internal constant [17 x i8] c"g_multi.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype341 = internal constant [33 x i8] c"g_multi.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor342 = internal constant [36 x i8] c"g_multi.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [18 x i8] c"g_multi.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype343 = internal constant [34 x i8] c"g_multi.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct344 = internal constant [38 x i8] c"g_multi.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [18 x i8] c"g_multi.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype345 = internal constant [34 x i8] c"g_multi.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice346 = internal constant [48 x i8] c"g_multi.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [22 x i8] c"g_multi.iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype347 = internal constant [37 x i8] c"g_multi.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber348 = internal constant [47 x i8] c"g_multi.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [22 x i8] c"g_multi.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype349 = internal constant [37 x i8] c"g_multi.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer350 = internal constant [51 x i8] c"g_multi.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [17 x i8] c"g_multi.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype351 = internal constant [32 x i8] c"g_multi.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct352 = internal constant [41 x i8] c"g_multi.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__param_str_qmult = internal constant [14 x i8] c"g_multi.qmult\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@qmult = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_qmult = internal constant %struct.kernel_param { ptr @__param_str_qmult, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @qmult } }, section "__param", align 4
@__UNIQUE_ID_qmulttype353 = internal constant [28 x i8] c"g_multi.parmtype=qmult:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_qmult354 = internal constant [63 x i8] c"g_multi.parm=qmult:queue length multiplier at high/super speed\00", section ".modinfo", align 1
@__param_str_dev_addr = internal constant [17 x i8] c"g_multi.dev_addr\00", align 1
@dev_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_dev_addr = internal constant %struct.kernel_param { ptr @__param_str_dev_addr, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @dev_addr } }, section "__param", align 4
@__UNIQUE_ID_dev_addrtype355 = internal constant [32 x i8] c"g_multi.parmtype=dev_addr:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_dev_addr356 = internal constant [46 x i8] c"g_multi.parm=dev_addr:Device Ethernet Address\00", section ".modinfo", align 1
@__param_str_host_addr = internal constant [18 x i8] c"g_multi.host_addr\00", align 1
@host_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_host_addr = internal constant %struct.kernel_param { ptr @__param_str_host_addr, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @host_addr } }, section "__param", align 4
@__UNIQUE_ID_host_addrtype357 = internal constant [33 x i8] c"g_multi.parmtype=host_addr:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_host_addr358 = internal constant [45 x i8] c"g_multi.parm=host_addr:Host Ethernet Address\00", section ".modinfo", align 1
@__param_str_file = internal constant [13 x i8] c"g_multi.file\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_file = internal constant %struct.kparam_array { i32 16, i32 4, ptr getelementptr (i8, ptr @fsg_mod_data, i64 128), ptr @param_ops_charp, ptr @fsg_mod_data }, align 4
@__param_file = internal constant %struct.kernel_param { ptr @__param_str_file, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_file } }, section "__param", align 4
@__UNIQUE_ID_filetype359 = internal constant [37 x i8] c"g_multi.parmtype=file:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_file360 = internal constant [52 x i8] c"g_multi.parm=file:names of backing files or devices\00", section ".modinfo", align 1
@__param_str_ro = internal constant [11 x i8] c"g_multi.ro\00", align 1
@__param_arr_ro = internal constant %struct.kparam_array { i32 16, i32 1, ptr getelementptr (i8, ptr @fsg_mod_data, i64 132), ptr @param_ops_bool, ptr getelementptr (i8, ptr @fsg_mod_data, i64 64) }, align 4
@__param_ro = internal constant %struct.kernel_param { ptr @__param_str_ro, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_ro } }, section "__param", align 4
@__UNIQUE_ID_rotype361 = internal constant [34 x i8] c"g_multi.parmtype=ro:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ro362 = internal constant [40 x i8] c"g_multi.parm=ro:true to force read-only\00", section ".modinfo", align 1
@__param_str_removable = internal constant [18 x i8] c"g_multi.removable\00", align 1
@__param_arr_removable = internal constant %struct.kparam_array { i32 16, i32 1, ptr getelementptr (i8, ptr @fsg_mod_data, i64 136), ptr @param_ops_bool, ptr getelementptr (i8, ptr @fsg_mod_data, i64 80) }, align 4
@__param_removable = internal constant %struct.kernel_param { ptr @__param_str_removable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_removable } }, section "__param", align 4
@__UNIQUE_ID_removabletype363 = internal constant [41 x i8] c"g_multi.parmtype=removable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_removable364 = internal constant [56 x i8] c"g_multi.parm=removable:true to simulate removable media\00", section ".modinfo", align 1
@__param_str_cdrom = internal constant [14 x i8] c"g_multi.cdrom\00", align 1
@__param_arr_cdrom = internal constant %struct.kparam_array { i32 16, i32 1, ptr getelementptr (i8, ptr @fsg_mod_data, i64 140), ptr @param_ops_bool, ptr getelementptr (i8, ptr @fsg_mod_data, i64 96) }, align 4
@__param_cdrom = internal constant %struct.kernel_param { ptr @__param_str_cdrom, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_cdrom } }, section "__param", align 4
@__UNIQUE_ID_cdromtype365 = internal constant [37 x i8] c"g_multi.parmtype=cdrom:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_cdrom366 = internal constant [59 x i8] c"g_multi.parm=cdrom:true to simulate CD-ROM instead of disk\00", section ".modinfo", align 1
@__param_str_nofua = internal constant [14 x i8] c"g_multi.nofua\00", align 1
@__param_arr_nofua = internal constant %struct.kparam_array { i32 16, i32 1, ptr getelementptr (i8, ptr @fsg_mod_data, i64 144), ptr @param_ops_bool, ptr getelementptr (i8, ptr @fsg_mod_data, i64 112) }, align 4
@__param_nofua = internal constant %struct.kernel_param { ptr @__param_str_nofua, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_nofua } }, section "__param", align 4
@__UNIQUE_ID_nofuatype367 = internal constant [37 x i8] c"g_multi.parmtype=nofua:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nofua368 = internal constant [60 x i8] c"g_multi.parm=nofua:true to ignore SCSI WRITE(10,12) FUA bit\00", section ".modinfo", align 1
@__param_str_luns = internal constant [13 x i8] c"g_multi.luns\00", align 1
@fsg_mod_data = internal global { %struct.fsg_module_parameters, [36 x i8] } { %struct.fsg_module_parameters { [16 x ptr] zeroinitializer, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 1 }, [36 x i8] zeroinitializer }, align 32
@__param_luns = internal constant %struct.kernel_param { ptr @__param_str_luns, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @fsg_mod_data, i64 148) } }, section "__param", align 4
@__UNIQUE_ID_lunstype369 = internal constant [27 x i8] c"g_multi.parmtype=luns:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_luns370 = internal constant [33 x i8] c"g_multi.parm=luns:number of LUNs\00", section ".modinfo", align 1
@__param_str_stall = internal constant [14 x i8] c"g_multi.stall\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_stall = internal constant %struct.kernel_param { ptr @__param_str_stall, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @fsg_mod_data, i64 152) } }, section "__param", align 4
@__UNIQUE_ID_stalltype371 = internal constant [28 x i8] c"g_multi.parmtype=stall:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_stall372 = internal constant [48 x i8] c"g_multi.parm=stall:false to prevent bulk stalls\00", section ".modinfo", align 1
@__param_str_num_buffers = internal constant [20 x i8] c"g_multi.num_buffers\00", align 1
@fsg_num_buffers = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_num_buffers = internal constant %struct.kernel_param { ptr @__param_str_num_buffers, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @fsg_num_buffers } }, section "__param", align 4
@__UNIQUE_ID_num_bufferstype373 = internal constant [34 x i8] c"g_multi.parmtype=num_buffers:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_buffers374 = internal constant [52 x i8] c"g_multi.parm=num_buffers:Number of pipeline buffers\00", section ".modinfo", align 1
@__initcall__kmod_g_multi__375_493_multi_driver_init6 = internal global ptr @multi_driver_init, section ".initcall6.init", align 4
@multi_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @.str, ptr @device_desc, ptr @dev_strings, i32 5, i8 -128, ptr @multi_bind, ptr @multi_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_multi_driver_exit = internal global ptr @multi_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"g_multi\00", [24 x i8] zeroinitializer }, align 32
@device_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 -17, i8 2, i8 1, i8 0, i16 27421, i16 1025, i16 0, i8 0, i8 0, i8 0, i8 0 }, [46 x i8] zeroinitializer }, align 32
@dev_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral, ptr null], [24 x i8] zeroinitializer }, align 32
@strings_dev = internal global { [6 x %struct.usb_string], [48 x i8] } { [6 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string { i8 0, ptr @.str.3 }, %struct.usb_string { i8 0, ptr @.str.4 }, %struct.usb_string zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_dev }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Multifunction Composite Gadget\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Multifunction with RNDIS\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Multifunction with CDC ECM\00", [37 x i8] zeroinitializer }, align 32
@multi_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 309, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"controller '%s' not usable\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"multi_bind\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/usb/gadget/legacy/multi.c\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@multi_bind._entry_ptr = internal global ptr @multi_bind._entry, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ecm\00", [28 x i8] zeroinitializer }, align 32
@fi_ecm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@multi_bind._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016using host ethernet address: %s\00", [62 x i8] zeroinitializer }, align 32
@multi_bind._entry_ptr.13 = internal global ptr @multi_bind._entry.11, section ".printk_index", align 4
@multi_bind._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016using self ethernet address: %s\00", [62 x i8] zeroinitializer }, align 32
@multi_bind._entry_ptr.16 = internal global ptr @multi_bind._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rndis\00", [26 x i8] zeroinitializer }, align 32
@fi_rndis = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@multi_bind._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@multi_bind._entry_ptr.19 = internal global ptr @multi_bind._entry.18, section ".printk_index", align 4
@multi_bind._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@multi_bind._entry_ptr.21 = internal global ptr @multi_bind._entry.20, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acm\00", [28 x i8] zeroinitializer }, align 32
@fi_acm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mass_storage\00", [19 x i8] zeroinitializer }, align 32
@fi_msg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@otg_desc = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@multi_bind._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.6, ptr @.str.7, i32 422, ptr @.str.26, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Multifunction Composite Gadget\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@multi_bind._entry_ptr.27 = internal global ptr @multi_bind._entry.24, section ".printk_index", align 4
@rndis_config_register.config = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@f_rndis = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_acm_rndis = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_msg_rndis = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cdc_config_register.config = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr null, ptr null, ptr null, ptr null, ptr null, i8 2, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@f_ecm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_acm_multi = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_msg_multi = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 41, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"qmult\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [9 x i8] c"dev_addr\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"host_addr\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 43, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"fsg_mod_data\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 106, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"fsg_num_buffers\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 109, i32 21 }
@___asan_gen_.46 = private unnamed_addr constant [13 x i8] c"multi_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 483, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 484, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"device_desc\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 62, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"dev_strings\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 93, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"strings_dev\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 84, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 85, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 86, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 88, i32 38 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 89, i32 38 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 308, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 314, i32 37 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"fi_ecm\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 211, i32 38 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 322, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 324, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 328, i32 39 }
@___asan_gen_.113 = private unnamed_addr constant [9 x i8] c"fi_rndis\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 129, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 338, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 340, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 360, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"fi_acm\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 123, i32 38 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 367, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"fi_msg\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 124, i32 38 }
@___asan_gen_.134 = private unnamed_addr constant [9 x i8] c"otg_desc\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 77, i32 44 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 422, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 187, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant [8 x i8] c"f_rndis\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 131, i32 29 }
@___asan_gen_.152 = private unnamed_addr constant [12 x i8] c"f_acm_rndis\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 130, i32 29 }
@___asan_gen_.155 = private unnamed_addr constant [12 x i8] c"f_msg_rndis\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 132, i32 29 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 270, i32 34 }
@___asan_gen_.161 = private unnamed_addr constant [6 x i8] c"f_ecm\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 213, i32 29 }
@___asan_gen_.164 = private unnamed_addr constant [12 x i8] c"f_acm_multi\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 212, i32 29 }
@___asan_gen_.167 = private unnamed_addr constant [12 x i8] c"f_msg_multi\00", align 1
@___asan_gen_.168 = private constant [37 x i8] c"../drivers/usb/gadget/legacy/multi.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 214, i32 29 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author338, ptr @__UNIQUE_ID_bcdDevice346, ptr @__UNIQUE_ID_bcdDevicetype345, ptr @__UNIQUE_ID_cdrom366, ptr @__UNIQUE_ID_cdromtype365, ptr @__UNIQUE_ID_description337, ptr @__UNIQUE_ID_dev_addr356, ptr @__UNIQUE_ID_dev_addrtype355, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_file360, ptr @__UNIQUE_ID_filetype359, ptr @__UNIQUE_ID_host_addr358, ptr @__UNIQUE_ID_host_addrtype357, ptr @__UNIQUE_ID_iManufacturer350, ptr @__UNIQUE_ID_iManufacturertype349, ptr @__UNIQUE_ID_iProduct352, ptr @__UNIQUE_ID_iProducttype351, ptr @__UNIQUE_ID_iSerialNumber348, ptr @__UNIQUE_ID_iSerialNumbertype347, ptr @__UNIQUE_ID_idProduct344, ptr @__UNIQUE_ID_idProducttype343, ptr @__UNIQUE_ID_idVendor342, ptr @__UNIQUE_ID_idVendortype341, ptr @__UNIQUE_ID_license340, ptr @__UNIQUE_ID_luns370, ptr @__UNIQUE_ID_lunstype369, ptr @__UNIQUE_ID_nofua368, ptr @__UNIQUE_ID_nofuatype367, ptr @__UNIQUE_ID_num_buffers374, ptr @__UNIQUE_ID_num_bufferstype373, ptr @__UNIQUE_ID_qmult354, ptr @__UNIQUE_ID_qmulttype353, ptr @__UNIQUE_ID_removable364, ptr @__UNIQUE_ID_removabletype363, ptr @__UNIQUE_ID_ro362, ptr @__UNIQUE_ID_rotype361, ptr @__UNIQUE_ID_stall372, ptr @__UNIQUE_ID_stalltype371, ptr @__exitcall_multi_driver_exit, ptr @__initcall__kmod_g_multi__375_493_multi_driver_init6, ptr @__param_bcdDevice, ptr @__param_cdrom, ptr @__param_dev_addr, ptr @__param_file, ptr @__param_host_addr, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @__param_luns, ptr @__param_nofua, ptr @__param_num_buffers, ptr @__param_qmult, ptr @__param_removable, ptr @__param_ro, ptr @__param_stall, ptr @multi_bind._entry, ptr @multi_bind._entry.11, ptr @multi_bind._entry.14, ptr @multi_bind._entry.18, ptr @multi_bind._entry.20, ptr @multi_bind._entry.24, ptr @multi_bind._entry_ptr, ptr @multi_bind._entry_ptr.13, ptr @multi_bind._entry_ptr.16, ptr @multi_bind._entry_ptr.19, ptr @multi_bind._entry_ptr.21, ptr @multi_bind._entry_ptr.27, ptr @multi_driver_exit, ptr @coverwrite, ptr @qmult, ptr @dev_addr, ptr @host_addr, ptr @fsg_mod_data, ptr @fsg_num_buffers, ptr @multi_driver, ptr @.str, ptr @device_desc, ptr @dev_strings, ptr @strings_dev, ptr @.compoundliteral, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @fi_ecm, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @fi_rndis, ptr @.str.22, ptr @fi_acm, ptr @.str.23, ptr @fi_msg, ptr @otg_desc, ptr @.str.25, ptr @.str.26, ptr @rndis_config_register.config, ptr @f_rndis, ptr @f_acm_rndis, ptr @f_msg_rndis, ptr @cdc_config_register.config, ptr @f_ecm, ptr @f_acm_multi, ptr @f_msg_multi], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmult to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsg_mod_data to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsg_num_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_dev to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_ecm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_bind._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_bind._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_rndis to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_bind._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_bind._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_acm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_msg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multi_bind._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_config_register.config to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_rndis to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_acm_rndis to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_msg_rndis to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdc_config_register.config to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ecm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_acm_multi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_msg_multi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @multi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_composite_probe(ptr noundef nonnull @multi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @multi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_composite_unregister(ptr noundef nonnull @multi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multi_bind(ptr noundef %cdev) #2 align 64 {
entry:
  %config = alloca %struct.fsg_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  call void @llvm.lifetime.start.p0(i64 668, ptr nonnull %config) #5
  %2 = call ptr @memset(ptr %config, i32 255, i32 668)
  %quirk_altset_not_supp.i.i = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %quirk_altset_not_supp.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i.i = load i32, ptr %quirk_altset_not_supp.i.i, align 4
  %4 = and i32 %bf.load.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.not.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  %name = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %6) #8
  br label %cleanup133

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.10) #5
  store ptr %call3, ptr @fi_ecm, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call3 to i32
  br label %cleanup133

if.end7:                                          ; preds = %if.end
  %net = getelementptr inbounds %struct.f_ecm_opts, ptr %call3, i32 0, i32 1
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %10 = load i32, ptr @qmult, align 4
  tail call void @gether_set_qmult(ptr noundef %9, i32 noundef %10) #5
  %11 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net, align 4
  %13 = load ptr, ptr @host_addr, align 4
  %call9 = tail call i32 @gether_set_host_addr(ptr noundef %12, ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %do.end13, label %if.end7.if.end16_crit_edge

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %14 = load ptr, ptr @host_addr, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %14) #8
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end7.if.end16_crit_edge
  %15 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net, align 4
  %17 = load ptr, ptr @dev_addr, align 4
  %call18 = tail call i32 @gether_set_dev_addr(ptr noundef %16, ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end23, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %18 = load ptr, ptr @dev_addr, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %18) #8
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.end16.if.end26_crit_edge
  %call27 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.17) #5
  store ptr %call27, ptr @fi_rndis, align 4
  %cmp.i175 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call27 to i32
  br label %fail

if.end31:                                         ; preds = %if.end26
  %net35 = getelementptr inbounds %struct.f_rndis_opts, ptr %call27, i32 0, i32 3
  %20 = ptrtoint ptr %net35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net35, align 4
  %22 = load i32, ptr @qmult, align 4
  tail call void @gether_set_qmult(ptr noundef %21, i32 noundef %22) #5
  %23 = ptrtoint ptr %net35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net35, align 4
  %25 = load ptr, ptr @host_addr, align 4
  %call37 = tail call i32 @gether_set_host_addr(ptr noundef %24, ptr noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.end42, label %if.end31.if.end45_crit_edge

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

do.end42:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %26 = load ptr, ptr @host_addr, align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %26) #8
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %if.end31.if.end45_crit_edge
  %27 = ptrtoint ptr %net35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net35, align 4
  %29 = load ptr, ptr @dev_addr, align 4
  %call47 = tail call i32 @gether_set_dev_addr(ptr noundef %28, ptr noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.end52, label %if.end45.if.end55_crit_edge

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %30 = load ptr, ptr @dev_addr, align 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %30) #8
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %if.end45.if.end55_crit_edge
  %31 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net, align 4
  %33 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cdev, align 4
  tail call void @gether_set_gadget(ptr noundef %32, ptr noundef %34) #5
  %35 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net, align 4
  %call59 = tail call i32 @gether_register_netdev(ptr noundef %36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end55.fail0_crit_edge

if.end55.fail0_crit_edge:                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail0

if.end62:                                         ; preds = %if.end55
  %37 = load ptr, ptr @fi_rndis, align 4
  %38 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net, align 4
  tail call void @rndis_borrow_net(ptr noundef %37, ptr noundef %39) #5
  %bound = getelementptr inbounds %struct.f_ecm_opts, ptr %call3, i32 0, i32 2
  %40 = ptrtoint ptr %bound to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %bound, align 4
  %call64 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.22) #5
  store ptr %call64, ptr @fi_acm, align 4
  %cmp.i176 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %call64 to i32
  br label %fail0

if.end68:                                         ; preds = %if.end62
  %call69 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.23) #5
  store ptr %call69, ptr @fi_msg, align 4
  %cmp.i177 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %call69 to i32
  br label %fail1

if.end73:                                         ; preds = %if.end68
  %43 = load i32, ptr @fsg_num_buffers, align 4
  call void @fsg_config_from_params(ptr noundef nonnull %config, ptr noundef nonnull @fsg_mod_data, i32 noundef %43) #5
  %44 = load ptr, ptr @fi_msg, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 -4
  %no_configfs = getelementptr i8, ptr %44, i32 196
  %45 = ptrtoint ptr %no_configfs to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %no_configfs, align 4
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 4
  %48 = load i32, ptr @fsg_num_buffers, align 4
  %call75 = call i32 @fsg_common_set_num_buffers(ptr noundef %47, i32 noundef %48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end73.fail2_crit_edge

if.end73.fail2_crit_edge:                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail2

if.end78:                                         ; preds = %if.end73
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 4
  %can_stall = getelementptr inbounds %struct.fsg_config, ptr %config, i32 0, i32 6
  %51 = ptrtoint ptr %can_stall to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %can_stall, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool80 = icmp ne i8 %52, 0
  %call81 = call i32 @fsg_common_set_cdev(ptr noundef %50, ptr noundef %cdev, i1 noundef zeroext %tobool80) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end78.fail_set_cdev_crit_edge

if.end78.fail_set_cdev_crit_edge:                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_set_cdev

if.end84:                                         ; preds = %if.end78
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 4
  call void @fsg_common_set_sysfs(ptr noundef %54, i1 noundef zeroext true) #5
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 4
  %call87 = call i32 @fsg_common_create_luns(ptr noundef %56, ptr noundef nonnull %config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end84.fail_set_cdev_crit_edge

if.end84.fail_set_cdev_crit_edge:                 ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_set_cdev

if.end90:                                         ; preds = %if.end84
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 4
  %vendor_name = getelementptr inbounds %struct.fsg_config, ptr %config, i32 0, i32 4
  %59 = ptrtoint ptr %vendor_name to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vendor_name, align 4
  %product_name = getelementptr inbounds %struct.fsg_config, ptr %config, i32 0, i32 5
  %61 = ptrtoint ptr %product_name to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %product_name, align 4
  call void @fsg_common_set_inquiry_string(ptr noundef %58, ptr noundef %60, ptr noundef %62) #5
  %call92 = call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @strings_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp = icmp slt i32 %call92, 0
  br i1 %cmp, label %if.end90.fail_string_ids_crit_edge, label %if.end96, !prof !182

if.end90.fail_string_ids_crit_edge:               ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_string_ids

if.end96:                                         ; preds = %if.end90
  %63 = load i8, ptr getelementptr inbounds ([6 x %struct.usb_string], ptr @strings_dev, i32 0, i32 1), align 4
  store i8 %63, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 11), align 1
  %64 = ptrtoint ptr %quirk_altset_not_supp.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %bf.load.i = load i32, ptr %quirk_altset_not_supp.i.i, align 4
  %65 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool98.not = icmp eq i32 %65, 0
  br i1 %tobool98.not, label %if.end96.if.end106_crit_edge, label %land.lhs.true

if.end96.if.end106_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

land.lhs.true:                                    ; preds = %if.end96
  %66 = load ptr, ptr @otg_desc, align 4
  %tobool99.not = icmp eq ptr %66, null
  br i1 %tobool99.not, label %if.then100, label %land.lhs.true.if.end106_crit_edge

land.lhs.true.if.end106_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

if.then100:                                       ; preds = %land.lhs.true
  %call101 = call ptr @usb_otg_descriptor_alloc(ptr noundef %1) #5
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %if.then100.fail_string_ids_crit_edge, label %cleanup.thread

if.then100.fail_string_ids_crit_edge:             ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_string_ids

cleanup.thread:                                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #7
  %call105 = call i32 @usb_otg_descriptor_init(ptr noundef %1, ptr noundef nonnull %call101) #5
  store ptr %call101, ptr @otg_desc, align 4
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @otg_desc, i32 0, i32 1), align 4
  br label %if.end106

if.end106:                                        ; preds = %cleanup.thread, %land.lhs.true.if.end106_crit_edge, %if.end96.if.end106_crit_edge
  %67 = load ptr, ptr getelementptr inbounds ([6 x %struct.usb_string], ptr @strings_dev, i32 0, i32 3, i32 1), align 4
  store ptr %67, ptr @rndis_config_register.config, align 4
  %68 = load i8, ptr getelementptr inbounds ([6 x %struct.usb_string], ptr @strings_dev, i32 0, i32 3), align 4
  store i8 %68, ptr getelementptr inbounds (%struct.usb_configuration, ptr @rndis_config_register.config, i32 0, i32 6), align 1
  %call.i = call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @rndis_config_register.config, ptr noundef nonnull @rndis_do_config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp108 = icmp slt i32 %call.i, 0
  br i1 %cmp108, label %if.end106.fail_otg_desc_crit_edge, label %if.end116, !prof !182

if.end106.fail_otg_desc_crit_edge:                ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_otg_desc

if.end116:                                        ; preds = %if.end106
  %69 = load ptr, ptr getelementptr inbounds ([6 x %struct.usb_string], ptr @strings_dev, i32 0, i32 4, i32 1), align 4
  store ptr %69, ptr @cdc_config_register.config, align 4
  %70 = load i8, ptr getelementptr inbounds ([6 x %struct.usb_string], ptr @strings_dev, i32 0, i32 4), align 4
  store i8 %70, ptr getelementptr inbounds (%struct.usb_configuration, ptr @cdc_config_register.config, i32 0, i32 6), align 1
  %call.i178 = call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @cdc_config_register.config, ptr noundef nonnull @cdc_do_config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %cmp118 = icmp slt i32 %call.i178, 0
  br i1 %cmp118, label %if.end116.fail_otg_desc_crit_edge, label %if.end126, !prof !182

if.end116.fail_otg_desc_crit_edge:                ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_otg_desc

if.end126:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #5
  %dev130 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev130, ptr noundef nonnull @.str.25) #8
  br label %cleanup133

fail_otg_desc:                                    ; preds = %if.end116.fail_otg_desc_crit_edge, %if.end106.fail_otg_desc_crit_edge
  %status.1 = phi i32 [ %call.i, %if.end106.fail_otg_desc_crit_edge ], [ %call.i178, %if.end116.fail_otg_desc_crit_edge ]
  %71 = load ptr, ptr @otg_desc, align 4
  call void @kfree(ptr noundef %71) #5
  store ptr null, ptr @otg_desc, align 4
  br label %fail_string_ids

fail_string_ids:                                  ; preds = %fail_otg_desc, %if.then100.fail_string_ids_crit_edge, %if.end90.fail_string_ids_crit_edge
  %status.2 = phi i32 [ %call92, %if.end90.fail_string_ids_crit_edge ], [ %status.1, %fail_otg_desc ], [ -12, %if.then100.fail_string_ids_crit_edge ]
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 4
  call void @fsg_common_remove_luns(ptr noundef %73) #5
  br label %fail_set_cdev

fail_set_cdev:                                    ; preds = %fail_string_ids, %if.end84.fail_set_cdev_crit_edge, %if.end78.fail_set_cdev_crit_edge
  %status.3 = phi i32 [ %call81, %if.end78.fail_set_cdev_crit_edge ], [ %call87, %if.end84.fail_set_cdev_crit_edge ], [ %status.2, %fail_string_ids ]
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 4
  call void @fsg_common_free_buffers(ptr noundef %75) #5
  br label %fail2

fail2:                                            ; preds = %fail_set_cdev, %if.end73.fail2_crit_edge
  %status.4 = phi i32 [ %call75, %if.end73.fail2_crit_edge ], [ %status.3, %fail_set_cdev ]
  %76 = load ptr, ptr @fi_msg, align 4
  call void @usb_put_function_instance(ptr noundef %76) #5
  br label %fail1

fail1:                                            ; preds = %fail2, %if.then71
  %status.5 = phi i32 [ %42, %if.then71 ], [ %status.4, %fail2 ]
  %77 = load ptr, ptr @fi_acm, align 4
  call void @usb_put_function_instance(ptr noundef %77) #5
  br label %fail0

fail0:                                            ; preds = %fail1, %if.then66, %if.end55.fail0_crit_edge
  %status.6 = phi i32 [ %call59, %if.end55.fail0_crit_edge ], [ %41, %if.then66 ], [ %status.5, %fail1 ]
  %78 = load ptr, ptr @fi_rndis, align 4
  call void @usb_put_function_instance(ptr noundef %78) #5
  br label %fail

fail:                                             ; preds = %fail0, %if.then29
  %status.7 = phi i32 [ %19, %if.then29 ], [ %status.6, %fail0 ]
  %79 = load ptr, ptr @fi_ecm, align 4
  call void @usb_put_function_instance(ptr noundef %79) #5
  br label %cleanup133

cleanup133:                                       ; preds = %fail, %if.end126, %if.then5, %do.end
  %retval.0 = phi i32 [ %7, %if.then5 ], [ %status.7, %fail ], [ 0, %if.end126 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 668, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @multi_unbind(ptr nocapture noundef readnone %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @f_msg_multi, align 4
  tail call void @usb_put_function(ptr noundef %0) #5
  %1 = load ptr, ptr @f_msg_rndis, align 4
  tail call void @usb_put_function(ptr noundef %1) #5
  %2 = load ptr, ptr @fi_msg, align 4
  tail call void @usb_put_function_instance(ptr noundef %2) #5
  %3 = load ptr, ptr @f_acm_multi, align 4
  tail call void @usb_put_function(ptr noundef %3) #5
  %4 = load ptr, ptr @f_acm_rndis, align 4
  tail call void @usb_put_function(ptr noundef %4) #5
  %5 = load ptr, ptr @fi_acm, align 4
  tail call void @usb_put_function_instance(ptr noundef %5) #5
  %6 = load ptr, ptr @f_rndis, align 4
  tail call void @usb_put_function(ptr noundef %6) #5
  %7 = load ptr, ptr @fi_rndis, align 4
  tail call void @usb_put_function_instance(ptr noundef %7) #5
  %8 = load ptr, ptr @f_ecm, align 4
  tail call void @usb_put_function(ptr noundef %8) #5
  %9 = load ptr, ptr @fi_ecm, align 4
  tail call void @usb_put_function_instance(ptr noundef %9) #5
  %10 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %10) #5
  store ptr null, ptr @otg_desc, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_qmult(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_host_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_dev_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_gadget(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_borrow_net(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @usb_string_ids_tab(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_descriptor_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_otg_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_overwrite_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsg_common_remove_luns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsg_common_free_buffers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_do_config(ptr noundef %c) #2 align 64 {
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

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
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = load ptr, ptr @fi_rndis, align 4
  %call2 = tail call ptr @usb_get_function(ptr noundef %10) #5
  store ptr %call2, ptr @f_rndis, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.err_func_rndis_crit_edge, label %if.end10

if.end6.err_func_rndis_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_func_rndis

if.end10:                                         ; preds = %if.end6
  %12 = load ptr, ptr @fi_acm, align 4
  %call11 = tail call ptr @usb_get_function(ptr noundef %12) #5
  store ptr %call11, ptr @f_acm_rndis, align 4
  %cmp.i39 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call11 to i32
  br label %err_func_acm

if.end15:                                         ; preds = %if.end10
  %call16 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_conf_crit_edge

if.end15.err_conf_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_conf

if.end19:                                         ; preds = %if.end15
  %14 = load ptr, ptr @fi_msg, align 4
  %call20 = tail call ptr @usb_get_function(ptr noundef %14) #5
  store ptr %call20, ptr @f_msg_rndis, align 4
  %cmp.i40 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call20 to i32
  br label %err_fsg

if.end24:                                         ; preds = %if.end19
  %call25 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %err_run

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_run:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %16 = load ptr, ptr @f_msg_rndis, align 4
  tail call void @usb_put_function(ptr noundef %16) #5
  br label %err_fsg

err_fsg:                                          ; preds = %err_run, %if.then22
  %ret.0 = phi i32 [ %15, %if.then22 ], [ %call25, %err_run ]
  %17 = load ptr, ptr @f_acm_rndis, align 4
  tail call void @usb_remove_function(ptr noundef %c, ptr noundef %17) #5
  br label %err_conf

err_conf:                                         ; preds = %err_fsg, %if.end15.err_conf_crit_edge
  %ret.1 = phi i32 [ %call16, %if.end15.err_conf_crit_edge ], [ %ret.0, %err_fsg ]
  %18 = load ptr, ptr @f_acm_rndis, align 4
  tail call void @usb_put_function(ptr noundef %18) #5
  br label %err_func_acm

err_func_acm:                                     ; preds = %err_conf, %if.then13
  %ret.2 = phi i32 [ %13, %if.then13 ], [ %ret.1, %err_conf ]
  %19 = load ptr, ptr @f_rndis, align 4
  tail call void @usb_remove_function(ptr noundef %c, ptr noundef %19) #5
  br label %err_func_rndis

err_func_rndis:                                   ; preds = %err_func_acm, %if.end6.err_func_rndis_crit_edge
  %ret.3 = phi i32 [ %call7, %if.end6.err_func_rndis_crit_edge ], [ %ret.2, %err_func_acm ]
  %20 = load ptr, ptr @f_rndis, align 4
  tail call void @usb_put_function(ptr noundef %20) #5
  br label %cleanup

cleanup:                                          ; preds = %err_func_rndis, %if.end24.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %11, %if.then4 ], [ %ret.3, %err_func_rndis ], [ 0, %if.end24.cleanup_crit_edge ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdc_do_config(ptr noundef %c) #2 align 64 {
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

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
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = load ptr, ptr @fi_ecm, align 4
  %call2 = tail call ptr @usb_get_function(ptr noundef %10) #5
  store ptr %call2, ptr @f_ecm, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.err_func_ecm_crit_edge, label %if.end10

if.end6.err_func_ecm_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_func_ecm

if.end10:                                         ; preds = %if.end6
  %12 = load ptr, ptr @fi_acm, align 4
  %call11 = tail call ptr @usb_get_function(ptr noundef %12) #5
  store ptr %call11, ptr @f_acm_multi, align 4
  %cmp.i39 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call11 to i32
  br label %err_func_acm

if.end15:                                         ; preds = %if.end10
  %call16 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_conf_crit_edge

if.end15.err_conf_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_conf

if.end19:                                         ; preds = %if.end15
  %14 = load ptr, ptr @fi_msg, align 4
  %call20 = tail call ptr @usb_get_function(ptr noundef %14) #5
  store ptr %call20, ptr @f_msg_multi, align 4
  %cmp.i40 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call20 to i32
  br label %err_fsg

if.end24:                                         ; preds = %if.end19
  %call25 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %call20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %err_run

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_run:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %16 = load ptr, ptr @f_msg_multi, align 4
  tail call void @usb_put_function(ptr noundef %16) #5
  br label %err_fsg

err_fsg:                                          ; preds = %err_run, %if.then22
  %ret.0 = phi i32 [ %15, %if.then22 ], [ %call25, %err_run ]
  %17 = load ptr, ptr @f_acm_multi, align 4
  tail call void @usb_remove_function(ptr noundef %c, ptr noundef %17) #5
  br label %err_conf

err_conf:                                         ; preds = %err_fsg, %if.end15.err_conf_crit_edge
  %ret.1 = phi i32 [ %call16, %if.end15.err_conf_crit_edge ], [ %ret.0, %err_fsg ]
  %18 = load ptr, ptr @f_acm_multi, align 4
  tail call void @usb_put_function(ptr noundef %18) #5
  br label %err_func_acm

err_func_acm:                                     ; preds = %err_conf, %if.then13
  %ret.2 = phi i32 [ %13, %if.then13 ], [ %ret.1, %err_conf ]
  %19 = load ptr, ptr @f_ecm, align 4
  tail call void @usb_remove_function(ptr noundef %c, ptr noundef %19) #5
  br label %err_func_ecm

err_func_ecm:                                     ; preds = %err_func_acm, %if.end6.err_func_ecm_crit_edge
  %ret.3 = phi i32 [ %call7, %if.end6.err_func_ecm_crit_edge ], [ %ret.2, %err_func_acm ]
  %20 = load ptr, ptr @f_ecm, align 4
  tail call void @usb_put_function(ptr noundef %20) #5
  br label %cleanup

cleanup:                                          ; preds = %err_func_ecm, %if.end24.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %11, %if.then4 ], [ %ret.3, %err_func_ecm ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !117, !118, !119, !120, !122, !124, !125, !126, !128, !129, !130, !132, !134, !135, !137, !138, !140, !142, !144, !145, !146, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__UNIQUE_ID_description337, !1, !"__UNIQUE_ID_description337", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_author338, !3, !"__UNIQUE_ID_author338", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 28, i32 1}
!4 = !{ptr @__UNIQUE_ID_file339, !5, !"__UNIQUE_ID_file339", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 29, i32 1}
!6 = !{ptr @__UNIQUE_ID_license340, !5, !"__UNIQUE_ID_license340", i1 false, i1 false}
!7 = !{ptr @__param_idVendor, !8, !"__param_idVendor", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 41, i32 1}
!9 = !{ptr @__UNIQUE_ID_idVendortype341, !8, !"__UNIQUE_ID_idVendortype341", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_idVendor342, !8, !"__UNIQUE_ID_idVendor342", i1 false, i1 false}
!11 = !{ptr @__param_idProduct, !8, !"__param_idProduct", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_idProducttype343, !8, !"__UNIQUE_ID_idProducttype343", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_idProduct344, !8, !"__UNIQUE_ID_idProduct344", i1 false, i1 false}
!14 = !{ptr @__param_bcdDevice, !8, !"__param_bcdDevice", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_bcdDevicetype345, !8, !"__UNIQUE_ID_bcdDevicetype345", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_bcdDevice346, !8, !"__UNIQUE_ID_bcdDevice346", i1 false, i1 false}
!17 = !{ptr @__param_iSerialNumber, !8, !"__param_iSerialNumber", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_iSerialNumbertype347, !8, !"__UNIQUE_ID_iSerialNumbertype347", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_iSerialNumber348, !8, !"__UNIQUE_ID_iSerialNumber348", i1 false, i1 false}
!20 = !{ptr @__param_iManufacturer, !8, !"__param_iManufacturer", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_iManufacturertype349, !8, !"__UNIQUE_ID_iManufacturertype349", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_iManufacturer350, !8, !"__UNIQUE_ID_iManufacturer350", i1 false, i1 false}
!23 = !{ptr @__param_iProduct, !8, !"__param_iProduct", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_iProducttype351, !8, !"__UNIQUE_ID_iProducttype351", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_iProduct352, !8, !"__UNIQUE_ID_iProduct352", i1 false, i1 false}
!26 = !{ptr @__param_qmult, !27, !"__param_qmult", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 43, i32 1}
!28 = !{ptr @__UNIQUE_ID_qmulttype353, !27, !"__UNIQUE_ID_qmulttype353", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_qmult354, !27, !"__UNIQUE_ID_qmult354", i1 false, i1 false}
!30 = !{ptr @__param_dev_addr, !27, !"__param_dev_addr", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_dev_addrtype355, !27, !"__UNIQUE_ID_dev_addrtype355", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_dev_addr356, !27, !"__UNIQUE_ID_dev_addr356", i1 false, i1 false}
!33 = !{ptr @__param_host_addr, !27, !"__param_host_addr", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_host_addrtype357, !27, !"__UNIQUE_ID_host_addrtype357", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_host_addr358, !27, !"__UNIQUE_ID_host_addr358", i1 false, i1 false}
!36 = !{ptr @__param_file, !37, !"__param_file", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 121, i32 1}
!38 = !{ptr @__UNIQUE_ID_filetype359, !37, !"__UNIQUE_ID_filetype359", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_file360, !37, !"__UNIQUE_ID_file360", i1 false, i1 false}
!40 = !{ptr @__param_ro, !37, !"__param_ro", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_rotype361, !37, !"__UNIQUE_ID_rotype361", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_ro362, !37, !"__UNIQUE_ID_ro362", i1 false, i1 false}
!43 = !{ptr @__param_removable, !37, !"__param_removable", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_removabletype363, !37, !"__UNIQUE_ID_removabletype363", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_removable364, !37, !"__UNIQUE_ID_removable364", i1 false, i1 false}
!46 = !{ptr @__param_cdrom, !37, !"__param_cdrom", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_cdromtype365, !37, !"__UNIQUE_ID_cdromtype365", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_cdrom366, !37, !"__UNIQUE_ID_cdrom366", i1 false, i1 false}
!49 = !{ptr @__param_nofua, !37, !"__param_nofua", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_nofuatype367, !37, !"__UNIQUE_ID_nofuatype367", i1 false, i1 false}
!51 = !{ptr @__UNIQUE_ID_nofua368, !37, !"__UNIQUE_ID_nofua368", i1 false, i1 false}
!52 = !{ptr @__param_luns, !37, !"__param_luns", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_lunstype369, !37, !"__UNIQUE_ID_lunstype369", i1 false, i1 false}
!54 = !{ptr @__UNIQUE_ID_luns370, !37, !"__UNIQUE_ID_luns370", i1 false, i1 false}
!55 = !{ptr @__param_stall, !37, !"__param_stall", i1 false, i1 false}
!56 = !{ptr @__UNIQUE_ID_stalltype371, !37, !"__UNIQUE_ID_stalltype371", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_stall372, !37, !"__UNIQUE_ID_stall372", i1 false, i1 false}
!58 = !{ptr @__param_num_buffers, !37, !"__param_num_buffers", i1 false, i1 false}
!59 = !{ptr @__UNIQUE_ID_num_bufferstype373, !37, !"__UNIQUE_ID_num_bufferstype373", i1 false, i1 false}
!60 = !{ptr @__UNIQUE_ID_num_buffers374, !37, !"__UNIQUE_ID_num_buffers374", i1 false, i1 false}
!61 = !{ptr @__initcall__kmod_g_multi__375_493_multi_driver_init6, !62, !"__initcall__kmod_g_multi__375_493_multi_driver_init6", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 493, i32 1}
!63 = !{ptr @__exitcall_multi_driver_exit, !62, !"__exitcall_multi_driver_exit", i1 false, i1 false}
!64 = !{ptr @coverwrite, !8, !"coverwrite", i1 false, i1 false}
!65 = !{ptr @dev_addr, !27, !"dev_addr", i1 false, i1 false}
!66 = !{ptr @host_addr, !27, !"host_addr", i1 false, i1 false}
!67 = !{ptr @__param_str_idVendor, !8, !"__param_str_idVendor", i1 false, i1 false}
!68 = !{ptr @__param_str_idProduct, !8, !"__param_str_idProduct", i1 false, i1 false}
!69 = !{ptr @__param_str_bcdDevice, !8, !"__param_str_bcdDevice", i1 false, i1 false}
!70 = !{ptr @__param_str_iSerialNumber, !8, !"__param_str_iSerialNumber", i1 false, i1 false}
!71 = !{ptr @__param_str_iManufacturer, !8, !"__param_str_iManufacturer", i1 false, i1 false}
!72 = !{ptr @__param_str_iProduct, !8, !"__param_str_iProduct", i1 false, i1 false}
!73 = !{ptr @__param_str_qmult, !27, !"__param_str_qmult", i1 false, i1 false}
!74 = !{ptr @qmult, !27, !"qmult", i1 false, i1 false}
!75 = !{ptr @__param_str_dev_addr, !27, !"__param_str_dev_addr", i1 false, i1 false}
!76 = !{ptr @__param_str_host_addr, !27, !"__param_str_host_addr", i1 false, i1 false}
!77 = !{ptr @__param_str_file, !37, !"__param_str_file", i1 false, i1 false}
!78 = !{ptr @__param_arr_file, !37, !"__param_arr_file", i1 false, i1 false}
!79 = !{ptr @__param_str_ro, !37, !"__param_str_ro", i1 false, i1 false}
!80 = !{ptr @__param_arr_ro, !37, !"__param_arr_ro", i1 false, i1 false}
!81 = !{ptr @__param_str_removable, !37, !"__param_str_removable", i1 false, i1 false}
!82 = !{ptr @__param_arr_removable, !37, !"__param_arr_removable", i1 false, i1 false}
!83 = !{ptr @__param_str_cdrom, !37, !"__param_str_cdrom", i1 false, i1 false}
!84 = !{ptr @__param_arr_cdrom, !37, !"__param_arr_cdrom", i1 false, i1 false}
!85 = !{ptr @__param_str_nofua, !37, !"__param_str_nofua", i1 false, i1 false}
!86 = !{ptr @__param_arr_nofua, !37, !"__param_arr_nofua", i1 false, i1 false}
!87 = !{ptr @__param_str_luns, !37, !"__param_str_luns", i1 false, i1 false}
!88 = !{ptr @fsg_mod_data, !89, !"fsg_mod_data", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 106, i32 37}
!90 = !{ptr @__param_str_stall, !37, !"__param_str_stall", i1 false, i1 false}
!91 = !{ptr @__param_str_num_buffers, !37, !"__param_str_num_buffers", i1 false, i1 false}
!92 = !{ptr @fsg_num_buffers, !93, !"fsg_num_buffers", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 109, i32 21}
!94 = !{ptr @.str, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 484, i32 11}
!96 = !{ptr @multi_driver, !97, !"multi_driver", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 483, i32 36}
!98 = !{ptr @device_desc, !99, !"device_desc", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 62, i32 37}
!100 = !{ptr @dev_strings, !101, !"dev_strings", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 93, i32 35}
!102 = !{ptr @.str.1, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 85, i32 36}
!104 = !{ptr @.str.2, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 86, i32 31}
!106 = !{ptr @.str.3, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 88, i32 38}
!108 = !{ptr @.str.4, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 89, i32 38}
!110 = !{ptr @strings_dev, !111, !"strings_dev", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 84, i32 26}
!112 = !{ptr @.str.5, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 308, i32 3}
!114 = !{ptr @.str.6, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.7, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.8, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.9, !113, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @multi_bind._entry, !113, !"_entry", i1 false, i1 false}
!119 = !{ptr @multi_bind._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.10, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 314, i32 37}
!122 = !{ptr @.str.12, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 322, i32 3}
!124 = !{ptr @multi_bind._entry.11, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @multi_bind._entry_ptr.13, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.15, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 324, i32 3}
!128 = !{ptr @multi_bind._entry.14, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @multi_bind._entry_ptr.16, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.17, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 328, i32 39}
!132 = !{ptr @multi_bind._entry.18, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 338, i32 3}
!134 = !{ptr @multi_bind._entry_ptr.19, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @multi_bind._entry.20, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 340, i32 3}
!137 = !{ptr @multi_bind._entry_ptr.21, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.22, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 360, i32 37}
!140 = !{ptr @.str.23, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 367, i32 37}
!142 = !{ptr @.str.25, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 422, i32 2}
!144 = !{ptr @.str.26, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @multi_bind._entry.24, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @multi_bind._entry_ptr.27, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @fi_ecm, !148, !"fi_ecm", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 211, i32 38}
!149 = !{ptr @fi_rndis, !150, !"fi_rndis", i1 false, i1 false}
!150 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 129, i32 38}
!151 = !{ptr @fi_acm, !152, !"fi_acm", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 123, i32 38}
!153 = !{ptr @fi_msg, !154, !"fi_msg", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 124, i32 38}
!155 = !{ptr @otg_desc, !156, !"otg_desc", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 77, i32 44}
!157 = !{ptr @rndis_config_register.config, !158, !"config", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 187, i32 34}
!159 = !{ptr @f_rndis, !160, !"f_rndis", i1 false, i1 false}
!160 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 131, i32 29}
!161 = !{ptr @f_acm_rndis, !162, !"f_acm_rndis", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 130, i32 29}
!163 = !{ptr @f_msg_rndis, !164, !"f_msg_rndis", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 132, i32 29}
!165 = !{ptr @cdc_config_register.config, !166, !"config", i1 false, i1 false}
!166 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 270, i32 34}
!167 = !{ptr @f_ecm, !168, !"f_ecm", i1 false, i1 false}
!168 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 213, i32 29}
!169 = !{ptr @f_acm_multi, !170, !"f_acm_multi", i1 false, i1 false}
!170 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 212, i32 29}
!171 = !{ptr @f_msg_multi, !172, !"f_msg_multi", i1 false, i1 false}
!172 = !{!"../drivers/usb/gadget/legacy/multi.c", i32 214, i32 29}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{!"branch_weights", i32 1, i32 2000}
