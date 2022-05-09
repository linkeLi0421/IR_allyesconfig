; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/acm_ms.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/acm_ms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.usb_composite_overwrite = type { i16, i16, i16, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.fsg_module_parameters = type { [16 x ptr], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i32, i8 }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@__param_str_idVendor = internal constant [18 x i8] c"g_acm_ms.idVendor\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@coverwrite = internal global { %struct.usb_composite_overwrite, [44 x i8] } zeroinitializer, align 32
@__param_idVendor = internal constant %struct.kernel_param { ptr @__param_str_idVendor, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @coverwrite } }, section "__param", align 4
@__UNIQUE_ID_idVendortype228 = internal constant [34 x i8] c"g_acm_ms.parmtype=idVendor:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idVendor229 = internal constant [37 x i8] c"g_acm_ms.parm=idVendor:USB Vendor ID\00", section ".modinfo", align 1
@__param_str_idProduct = internal constant [19 x i8] c"g_acm_ms.idProduct\00", align 1
@__param_idProduct = internal constant %struct.kernel_param { ptr @__param_str_idProduct, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 2) } }, section "__param", align 4
@__UNIQUE_ID_idProducttype230 = internal constant [35 x i8] c"g_acm_ms.parmtype=idProduct:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_idProduct231 = internal constant [39 x i8] c"g_acm_ms.parm=idProduct:USB Product ID\00", section ".modinfo", align 1
@__param_str_bcdDevice = internal constant [19 x i8] c"g_acm_ms.bcdDevice\00", align 1
@__param_bcdDevice = internal constant %struct.kernel_param { ptr @__param_str_bcdDevice, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_bcdDevicetype232 = internal constant [35 x i8] c"g_acm_ms.parmtype=bcdDevice:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_bcdDevice233 = internal constant [49 x i8] c"g_acm_ms.parm=bcdDevice:USB Device version (BCD)\00", section ".modinfo", align 1
@__param_str_iSerialNumber = internal constant [23 x i8] c"g_acm_ms.iSerialNumber\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_iSerialNumber = internal constant %struct.kernel_param { ptr @__param_str_iSerialNumber, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_iSerialNumbertype234 = internal constant [38 x i8] c"g_acm_ms.parmtype=iSerialNumber:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iSerialNumber235 = internal constant [48 x i8] c"g_acm_ms.parm=iSerialNumber:SerialNumber string\00", section ".modinfo", align 1
@__param_str_iManufacturer = internal constant [23 x i8] c"g_acm_ms.iManufacturer\00", align 1
@__param_iManufacturer = internal constant %struct.kernel_param { ptr @__param_str_iManufacturer, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_iManufacturertype236 = internal constant [38 x i8] c"g_acm_ms.parmtype=iManufacturer:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iManufacturer237 = internal constant [52 x i8] c"g_acm_ms.parm=iManufacturer:USB Manufacturer string\00", section ".modinfo", align 1
@__param_str_iProduct = internal constant [18 x i8] c"g_acm_ms.iProduct\00", align 1
@__param_iProduct = internal constant %struct.kernel_param { ptr @__param_str_iProduct, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @coverwrite, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_iProducttype238 = internal constant [33 x i8] c"g_acm_ms.parmtype=iProduct:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_iProduct239 = internal constant [42 x i8] c"g_acm_ms.parm=iProduct:USB Product string\00", section ".modinfo", align 1
@__param_str_file = internal constant [14 x i8] c"g_acm_ms.file\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_file = internal constant %struct.kparam_array { i32 16, i32 4, ptr getelementptr (i8, ptr @fsg_mod_data, i64 128), ptr @param_ops_charp, ptr @fsg_mod_data }, align 4
@__param_file = internal constant %struct.kernel_param { ptr @__param_str_file, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_file } }, section "__param", align 4
@__UNIQUE_ID_filetype240 = internal constant [38 x i8] c"g_acm_ms.parmtype=file:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [53 x i8] c"g_acm_ms.parm=file:names of backing files or devices\00", section ".modinfo", align 1
@__param_str_ro = internal constant [12 x i8] c"g_acm_ms.ro\00", align 1
@__param_arr_ro = internal constant %struct.kparam_array { i32 16, i32 1, ptr getelementptr (i8, ptr @fsg_mod_data, i64 132), ptr @param_ops_bool, ptr getelementptr (i8, ptr @fsg_mod_data, i64 64) }, align 4
@__param_ro = internal constant %struct.kernel_param { ptr @__param_str_ro, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_ro } }, section "__param", align 4
@__UNIQUE_ID_rotype242 = internal constant [35 x i8] c"g_acm_ms.parmtype=ro:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ro243 = internal constant [41 x i8] c"g_acm_ms.parm=ro:true to force read-only\00", section ".modinfo", align 1
@__param_str_removable = internal constant [19 x i8] c"g_acm_ms.removable\00", align 1
@__param_arr_removable = internal constant %struct.kparam_array { i32 16, i32 1, ptr getelementptr (i8, ptr @fsg_mod_data, i64 136), ptr @param_ops_bool, ptr getelementptr (i8, ptr @fsg_mod_data, i64 80) }, align 4
@__param_removable = internal constant %struct.kernel_param { ptr @__param_str_removable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_removable } }, section "__param", align 4
@__UNIQUE_ID_removabletype244 = internal constant [42 x i8] c"g_acm_ms.parmtype=removable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_removable245 = internal constant [57 x i8] c"g_acm_ms.parm=removable:true to simulate removable media\00", section ".modinfo", align 1
@__param_str_cdrom = internal constant [15 x i8] c"g_acm_ms.cdrom\00", align 1
@__param_arr_cdrom = internal constant %struct.kparam_array { i32 16, i32 1, ptr getelementptr (i8, ptr @fsg_mod_data, i64 140), ptr @param_ops_bool, ptr getelementptr (i8, ptr @fsg_mod_data, i64 96) }, align 4
@__param_cdrom = internal constant %struct.kernel_param { ptr @__param_str_cdrom, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_cdrom } }, section "__param", align 4
@__UNIQUE_ID_cdromtype246 = internal constant [38 x i8] c"g_acm_ms.parmtype=cdrom:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_cdrom247 = internal constant [60 x i8] c"g_acm_ms.parm=cdrom:true to simulate CD-ROM instead of disk\00", section ".modinfo", align 1
@__param_str_nofua = internal constant [15 x i8] c"g_acm_ms.nofua\00", align 1
@__param_arr_nofua = internal constant %struct.kparam_array { i32 16, i32 1, ptr getelementptr (i8, ptr @fsg_mod_data, i64 144), ptr @param_ops_bool, ptr getelementptr (i8, ptr @fsg_mod_data, i64 112) }, align 4
@__param_nofua = internal constant %struct.kernel_param { ptr @__param_str_nofua, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_nofua } }, section "__param", align 4
@__UNIQUE_ID_nofuatype248 = internal constant [38 x i8] c"g_acm_ms.parmtype=nofua:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nofua249 = internal constant [61 x i8] c"g_acm_ms.parm=nofua:true to ignore SCSI WRITE(10,12) FUA bit\00", section ".modinfo", align 1
@__param_str_luns = internal constant [14 x i8] c"g_acm_ms.luns\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@fsg_mod_data = internal global { %struct.fsg_module_parameters, [36 x i8] } { %struct.fsg_module_parameters { [16 x ptr] zeroinitializer, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, [16 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 1 }, [36 x i8] zeroinitializer }, align 32
@__param_luns = internal constant %struct.kernel_param { ptr @__param_str_luns, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @fsg_mod_data, i64 148) } }, section "__param", align 4
@__UNIQUE_ID_lunstype250 = internal constant [28 x i8] c"g_acm_ms.parmtype=luns:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_luns251 = internal constant [34 x i8] c"g_acm_ms.parm=luns:number of LUNs\00", section ".modinfo", align 1
@__param_str_stall = internal constant [15 x i8] c"g_acm_ms.stall\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_stall = internal constant %struct.kernel_param { ptr @__param_str_stall, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr getelementptr (i8, ptr @fsg_mod_data, i64 152) } }, section "__param", align 4
@__UNIQUE_ID_stalltype252 = internal constant [29 x i8] c"g_acm_ms.parmtype=stall:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_stall253 = internal constant [49 x i8] c"g_acm_ms.parm=stall:false to prevent bulk stalls\00", section ".modinfo", align 1
@__param_str_num_buffers = internal constant [21 x i8] c"g_acm_ms.num_buffers\00", align 1
@fsg_num_buffers = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_num_buffers = internal constant %struct.kernel_param { ptr @__param_str_num_buffers, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fsg_num_buffers } }, section "__param", align 4
@__UNIQUE_ID_num_bufferstype254 = internal constant [35 x i8] c"g_acm_ms.parmtype=num_buffers:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_num_buffers255 = internal constant [53 x i8] c"g_acm_ms.parm=num_buffers:Number of pipeline buffers\00", section ".modinfo", align 1
@__initcall__kmod_g_acm_ms__256_258_acm_ms_driver_init6 = internal global ptr @acm_ms_driver_init, section ".initcall6.init", align 4
@acm_ms_driver = internal global { %struct.usb_composite_driver, [56 x i8] } { %struct.usb_composite_driver { ptr @.str, ptr @device_desc, ptr @dev_strings, i32 5, i8 0, ptr @acm_ms_bind, ptr @acm_ms_unbind, ptr null, ptr null, ptr null, %struct.usb_gadget_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_acm_ms_driver_exit = internal global ptr @acm_ms_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description257 = internal constant [49 x i8] c"g_acm_ms.description=Composite Gadget (ACM + MS)\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [63 x i8] c"g_acm_ms.author=Klaus Schwarzkopf <schwarzkopf@sensortherm.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file259 = internal constant [49 x i8] c"g_acm_ms.file=drivers/usb/gadget/legacy/g_acm_ms\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [24 x i8] c"g_acm_ms.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"g_acm_ms\00", [23 x i8] zeroinitializer }, align 32
@device_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 0, i8 -17, i8 2, i8 1, i8 0, i16 27421, i16 1537, i16 0, i8 0, i8 0, i8 0, i8 0 }, [46 x i8] zeroinitializer }, align 32
@dev_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stringtab_dev, ptr null], [24 x i8] zeroinitializer }, align 32
@stringtab_dev = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_dev }, [24 x i8] zeroinitializer }, align 32
@strings_dev = internal global { [4 x %struct.usb_string], [32 x i8] } { [4 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string { i8 0, ptr @.str.1 }, %struct.usb_string zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Composite Gadget (ACM + MS)\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acm\00", [28 x i8] zeroinitializer }, align 32
@f_acm_inst = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mass_storage\00", [19 x i8] zeroinitializer }, align 32
@fi_msg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@otg_desc = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@acm_ms_config_driver = internal global { %struct.usb_configuration, [44 x i8] } { %struct.usb_configuration { ptr @.str.2, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 64, i16 0, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i8 0, i8 0, [16 x ptr] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@acm_ms_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 219, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s, version: 2011/10/10\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"acm_ms_bind\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/gadget/legacy/acm_ms.c\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@acm_ms_bind._entry_ptr = internal global ptr @acm_ms_bind._entry, section ".printk_index", align 4
@f_acm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@f_msg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"coverwrite\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 33, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"fsg_mod_data\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 79, i32 37 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"fsg_num_buffers\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 82, i32 21 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"acm_ms_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 249, i32 36 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 250, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"device_desc\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 35, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"dev_strings\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 72, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"stringtab_dev\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 67, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"strings_dev\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 60, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 61, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 62, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 159, i32 41 }
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"f_acm_inst\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 98, i32 38 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 163, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"fi_msg\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 100, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant [9 x i8] c"otg_desc\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 57, i32 44 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"acm_ms_config_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 143, i32 33 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 218, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"f_acm\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 97, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"f_msg\00", align 1
@___asan_gen_.83 = private constant [38 x i8] c"../drivers/usb/gadget/legacy/acm_ms.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 101, i32 29 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_bcdDevice233, ptr @__UNIQUE_ID_bcdDevicetype232, ptr @__UNIQUE_ID_cdrom247, ptr @__UNIQUE_ID_cdromtype246, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_filetype240, ptr @__UNIQUE_ID_iManufacturer237, ptr @__UNIQUE_ID_iManufacturertype236, ptr @__UNIQUE_ID_iProduct239, ptr @__UNIQUE_ID_iProducttype238, ptr @__UNIQUE_ID_iSerialNumber235, ptr @__UNIQUE_ID_iSerialNumbertype234, ptr @__UNIQUE_ID_idProduct231, ptr @__UNIQUE_ID_idProducttype230, ptr @__UNIQUE_ID_idVendor229, ptr @__UNIQUE_ID_idVendortype228, ptr @__UNIQUE_ID_license260, ptr @__UNIQUE_ID_luns251, ptr @__UNIQUE_ID_lunstype250, ptr @__UNIQUE_ID_nofua249, ptr @__UNIQUE_ID_nofuatype248, ptr @__UNIQUE_ID_num_buffers255, ptr @__UNIQUE_ID_num_bufferstype254, ptr @__UNIQUE_ID_removable245, ptr @__UNIQUE_ID_removabletype244, ptr @__UNIQUE_ID_ro243, ptr @__UNIQUE_ID_rotype242, ptr @__UNIQUE_ID_stall253, ptr @__UNIQUE_ID_stalltype252, ptr @__exitcall_acm_ms_driver_exit, ptr @__initcall__kmod_g_acm_ms__256_258_acm_ms_driver_init6, ptr @__param_bcdDevice, ptr @__param_cdrom, ptr @__param_file, ptr @__param_iManufacturer, ptr @__param_iProduct, ptr @__param_iSerialNumber, ptr @__param_idProduct, ptr @__param_idVendor, ptr @__param_luns, ptr @__param_nofua, ptr @__param_num_buffers, ptr @__param_removable, ptr @__param_ro, ptr @__param_stall, ptr @acm_ms_bind._entry, ptr @acm_ms_bind._entry_ptr, ptr @acm_ms_driver_exit, ptr @coverwrite, ptr @fsg_mod_data, ptr @fsg_num_buffers, ptr @acm_ms_driver, ptr @.str, ptr @device_desc, ptr @dev_strings, ptr @stringtab_dev, ptr @strings_dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @f_acm_inst, ptr @.str.4, ptr @fi_msg, ptr @otg_desc, ptr @acm_ms_config_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @f_acm, ptr @f_msg], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coverwrite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsg_mod_data to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsg_num_buffers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_ms_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stringtab_dev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_dev to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_acm_inst to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fi_msg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_ms_config_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_ms_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_acm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_msg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_ms_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_composite_probe(ptr noundef nonnull @acm_ms_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @acm_ms_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_composite_unregister(ptr noundef nonnull @acm_ms_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_composite_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_ms_bind(ptr noundef %cdev) #2 align 64 {
entry:
  %config = alloca %struct.fsg_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  call void @llvm.lifetime.start.p0(i64 668, ptr nonnull %config) #5
  %2 = call ptr @memset(ptr %config, i32 255, i32 668)
  %call = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.3) #5
  store ptr %call, ptr @f_acm_inst, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call to i32
  br label %cleanup45

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @usb_get_function_instance(ptr noundef nonnull @.str.4) #5
  store ptr %call4, ptr @fi_msg, align 4
  %cmp.i70 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call4 to i32
  br label %fail_get_msg

if.end8:                                          ; preds = %if.end
  %5 = load i32, ptr @fsg_num_buffers, align 4
  call void @fsg_config_from_params(ptr noundef nonnull %config, ptr noundef nonnull @fsg_mod_data, i32 noundef %5) #5
  %6 = load ptr, ptr @fi_msg, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 -4
  %no_configfs = getelementptr i8, ptr %6, i32 196
  %7 = ptrtoint ptr %no_configfs to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %no_configfs, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %10 = load i32, ptr @fsg_num_buffers, align 4
  %call10 = call i32 @fsg_common_set_num_buffers(ptr noundef %9, i32 noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end12, label %if.end8.fail_crit_edge

if.end8.fail_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end12:                                         ; preds = %if.end8
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  %can_stall = getelementptr inbounds %struct.fsg_config, ptr %config, i32 0, i32 6
  %13 = ptrtoint ptr %can_stall to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %can_stall, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14 = icmp ne i8 %14, 0
  %call15 = call i32 @fsg_common_set_cdev(ptr noundef %12, ptr noundef %cdev, i1 noundef zeroext %tobool14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.fail_set_cdev_crit_edge

if.end12.fail_set_cdev_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_set_cdev

if.end18:                                         ; preds = %if.end12
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  call void @fsg_common_set_sysfs(ptr noundef %16, i1 noundef zeroext true) #5
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  %call21 = call i32 @fsg_common_create_luns(ptr noundef %18, ptr noundef nonnull %config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.fail_set_cdev_crit_edge

if.end18.fail_set_cdev_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_set_cdev

if.end24:                                         ; preds = %if.end18
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  %vendor_name = getelementptr inbounds %struct.fsg_config, ptr %config, i32 0, i32 4
  %21 = ptrtoint ptr %vendor_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vendor_name, align 4
  %product_name = getelementptr inbounds %struct.fsg_config, ptr %config, i32 0, i32 5
  %23 = ptrtoint ptr %product_name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %product_name, align 4
  call void @fsg_common_set_inquiry_string(ptr noundef %20, ptr noundef %22, ptr noundef %24) #5
  %call26 = call i32 @usb_string_ids_tab(ptr noundef %cdev, ptr noundef nonnull @strings_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %if.end24.fail_string_ids_crit_edge, label %if.end28

if.end24.fail_string_ids_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_string_ids

if.end28:                                         ; preds = %if.end24
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
  %tobool30.not = icmp eq i32 %28, 0
  br i1 %tobool30.not, label %if.end28.if.end38_crit_edge, label %land.lhs.true

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end28
  %29 = load ptr, ptr @otg_desc, align 4
  %tobool31.not = icmp eq ptr %29, null
  br i1 %tobool31.not, label %if.then32, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then32:                                        ; preds = %land.lhs.true
  %call33 = call ptr @usb_otg_descriptor_alloc(ptr noundef %1) #5
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then32.fail_string_ids_crit_edge, label %cleanup.thread

if.then32.fail_string_ids_crit_edge:              ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_string_ids

cleanup.thread:                                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = call i32 @usb_otg_descriptor_init(ptr noundef %1, ptr noundef nonnull %call33) #5
  store ptr %call33, ptr @otg_desc, align 4
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @otg_desc, i32 0, i32 1), align 4
  br label %if.end38

if.end38:                                         ; preds = %cleanup.thread, %land.lhs.true.if.end38_crit_edge, %if.end28.if.end38_crit_edge
  %call39 = call i32 @usb_add_config(ptr noundef %cdev, ptr noundef nonnull @acm_ms_config_driver, ptr noundef nonnull @acm_ms_do_config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %fail_otg_desc, label %if.end42

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  call void @usb_composite_overwrite_options(ptr noundef %cdev, ptr noundef nonnull @coverwrite) #5
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #8
  br label %cleanup45

fail_otg_desc:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %30 = load ptr, ptr @otg_desc, align 4
  call void @kfree(ptr noundef %30) #5
  store ptr null, ptr @otg_desc, align 4
  br label %fail_string_ids

fail_string_ids:                                  ; preds = %fail_otg_desc, %if.then32.fail_string_ids_crit_edge, %if.end24.fail_string_ids_crit_edge
  %status.1 = phi i32 [ %call26, %if.end24.fail_string_ids_crit_edge ], [ %call39, %fail_otg_desc ], [ -12, %if.then32.fail_string_ids_crit_edge ]
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  call void @fsg_common_remove_luns(ptr noundef %32) #5
  br label %fail_set_cdev

fail_set_cdev:                                    ; preds = %fail_string_ids, %if.end18.fail_set_cdev_crit_edge, %if.end12.fail_set_cdev_crit_edge
  %status.2 = phi i32 [ %call15, %if.end12.fail_set_cdev_crit_edge ], [ %call21, %if.end18.fail_set_cdev_crit_edge ], [ %status.1, %fail_string_ids ]
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  call void @fsg_common_free_buffers(ptr noundef %34) #5
  br label %fail

fail:                                             ; preds = %fail_set_cdev, %if.end8.fail_crit_edge
  %status.3 = phi i32 [ %call10, %if.end8.fail_crit_edge ], [ %status.2, %fail_set_cdev ]
  %35 = load ptr, ptr @fi_msg, align 4
  call void @usb_put_function_instance(ptr noundef %35) #5
  br label %fail_get_msg

fail_get_msg:                                     ; preds = %fail, %if.then6
  %status.4 = phi i32 [ %4, %if.then6 ], [ %status.3, %fail ]
  %36 = load ptr, ptr @f_acm_inst, align 4
  call void @usb_put_function_instance(ptr noundef %36) #5
  br label %cleanup45

cleanup45:                                        ; preds = %fail_get_msg, %if.end42, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %status.4, %fail_get_msg ], [ 0, %if.end42 ]
  call void @llvm.lifetime.end.p0(i64 668, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_ms_unbind(ptr nocapture noundef readnone %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @f_msg, align 4
  tail call void @usb_put_function(ptr noundef %0) #5
  %1 = load ptr, ptr @fi_msg, align 4
  tail call void @usb_put_function_instance(ptr noundef %1) #5
  %2 = load ptr, ptr @f_acm, align 4
  tail call void @usb_put_function(ptr noundef %2) #5
  %3 = load ptr, ptr @f_acm_inst, align 4
  tail call void @usb_put_function_instance(ptr noundef %3) #5
  %4 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %4) #5
  store ptr null, ptr @otg_desc, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_ms_do_config(ptr noundef %c) #2 align 64 {
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
  %10 = load ptr, ptr @f_acm_inst, align 4
  %call2 = tail call ptr @usb_get_function(ptr noundef %10) #5
  store ptr %call2, ptr @f_acm, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = load ptr, ptr @fi_msg, align 4
  %call7 = tail call ptr @usb_get_function(ptr noundef %12) #5
  store ptr %call7, ptr @f_msg, align 4
  %cmp.i27 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i27, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call7 to i32
  br label %put_acm

if.end11:                                         ; preds = %if.end6
  %14 = load ptr, ptr @f_acm, align 4
  %call12 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.put_msg_crit_edge, label %if.end15

if.end11.put_msg_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_msg

if.end15:                                         ; preds = %if.end11
  %15 = load ptr, ptr @f_msg, align 4
  %call16 = tail call i32 @usb_add_function(ptr noundef %c, ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %remove_acm

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

remove_acm:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %16 = load ptr, ptr @f_acm, align 4
  tail call void @usb_remove_function(ptr noundef %c, ptr noundef %16) #5
  br label %put_msg

put_msg:                                          ; preds = %remove_acm, %if.end11.put_msg_crit_edge
  %status.0 = phi i32 [ %call12, %if.end11.put_msg_crit_edge ], [ %call16, %remove_acm ]
  %17 = load ptr, ptr @f_msg, align 4
  tail call void @usb_put_function(ptr noundef %17) #5
  br label %put_acm

put_acm:                                          ; preds = %put_msg, %if.then9
  %status.1 = phi i32 [ %13, %if.then9 ], [ %status.0, %put_msg ]
  %18 = load ptr, ptr @f_acm, align 4
  tail call void @usb_put_function(ptr noundef %18) #5
  br label %cleanup

cleanup:                                          ; preds = %put_acm, %if.end15.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %11, %if.then4 ], [ %status.1, %put_acm ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
declare dso_local ptr @usb_get_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_function(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function(ptr noundef) local_unnamed_addr #1

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !49, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !103, !104, !105, !106, !108, !110, !112, !114, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__param_idVendor, !1, !"__param_idVendor", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 33, i32 1}
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
!19 = !{ptr @__param_file, !20, !"__param_file", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 94, i32 1}
!21 = !{ptr @__UNIQUE_ID_filetype240, !20, !"__UNIQUE_ID_filetype240", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_file241, !20, !"__UNIQUE_ID_file241", i1 false, i1 false}
!23 = !{ptr @__param_ro, !20, !"__param_ro", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_rotype242, !20, !"__UNIQUE_ID_rotype242", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_ro243, !20, !"__UNIQUE_ID_ro243", i1 false, i1 false}
!26 = !{ptr @__param_removable, !20, !"__param_removable", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_removabletype244, !20, !"__UNIQUE_ID_removabletype244", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_removable245, !20, !"__UNIQUE_ID_removable245", i1 false, i1 false}
!29 = !{ptr @__param_cdrom, !20, !"__param_cdrom", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_cdromtype246, !20, !"__UNIQUE_ID_cdromtype246", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_cdrom247, !20, !"__UNIQUE_ID_cdrom247", i1 false, i1 false}
!32 = !{ptr @__param_nofua, !20, !"__param_nofua", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_nofuatype248, !20, !"__UNIQUE_ID_nofuatype248", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_nofua249, !20, !"__UNIQUE_ID_nofua249", i1 false, i1 false}
!35 = !{ptr @__param_luns, !20, !"__param_luns", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_lunstype250, !20, !"__UNIQUE_ID_lunstype250", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_luns251, !20, !"__UNIQUE_ID_luns251", i1 false, i1 false}
!38 = !{ptr @__param_stall, !20, !"__param_stall", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_stalltype252, !20, !"__UNIQUE_ID_stalltype252", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_stall253, !20, !"__UNIQUE_ID_stall253", i1 false, i1 false}
!41 = !{ptr @__param_num_buffers, !20, !"__param_num_buffers", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_num_bufferstype254, !20, !"__UNIQUE_ID_num_bufferstype254", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_num_buffers255, !20, !"__UNIQUE_ID_num_buffers255", i1 false, i1 false}
!44 = !{ptr @__initcall__kmod_g_acm_ms__256_258_acm_ms_driver_init6, !45, !"__initcall__kmod_g_acm_ms__256_258_acm_ms_driver_init6", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 258, i32 1}
!46 = !{ptr @__exitcall_acm_ms_driver_exit, !45, !"__exitcall_acm_ms_driver_exit", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_description257, !48, !"__UNIQUE_ID_description257", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 260, i32 1}
!49 = !{ptr @__UNIQUE_ID_author258, !50, !"__UNIQUE_ID_author258", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 261, i32 1}
!51 = !{ptr @__UNIQUE_ID_file259, !52, !"__UNIQUE_ID_file259", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 262, i32 1}
!53 = !{ptr @__UNIQUE_ID_license260, !52, !"__UNIQUE_ID_license260", i1 false, i1 false}
!54 = !{ptr @coverwrite, !1, !"coverwrite", i1 false, i1 false}
!55 = !{ptr @__param_str_idVendor, !1, !"__param_str_idVendor", i1 false, i1 false}
!56 = !{ptr @__param_str_idProduct, !1, !"__param_str_idProduct", i1 false, i1 false}
!57 = !{ptr @__param_str_bcdDevice, !1, !"__param_str_bcdDevice", i1 false, i1 false}
!58 = !{ptr @__param_str_iSerialNumber, !1, !"__param_str_iSerialNumber", i1 false, i1 false}
!59 = !{ptr @__param_str_iManufacturer, !1, !"__param_str_iManufacturer", i1 false, i1 false}
!60 = !{ptr @__param_str_iProduct, !1, !"__param_str_iProduct", i1 false, i1 false}
!61 = !{ptr @__param_str_file, !20, !"__param_str_file", i1 false, i1 false}
!62 = !{ptr @__param_arr_file, !20, !"__param_arr_file", i1 false, i1 false}
!63 = !{ptr @__param_str_ro, !20, !"__param_str_ro", i1 false, i1 false}
!64 = !{ptr @__param_arr_ro, !20, !"__param_arr_ro", i1 false, i1 false}
!65 = !{ptr @__param_str_removable, !20, !"__param_str_removable", i1 false, i1 false}
!66 = !{ptr @__param_arr_removable, !20, !"__param_arr_removable", i1 false, i1 false}
!67 = !{ptr @__param_str_cdrom, !20, !"__param_str_cdrom", i1 false, i1 false}
!68 = !{ptr @__param_arr_cdrom, !20, !"__param_arr_cdrom", i1 false, i1 false}
!69 = !{ptr @__param_str_nofua, !20, !"__param_str_nofua", i1 false, i1 false}
!70 = !{ptr @__param_arr_nofua, !20, !"__param_arr_nofua", i1 false, i1 false}
!71 = !{ptr @__param_str_luns, !20, !"__param_str_luns", i1 false, i1 false}
!72 = !{ptr @fsg_mod_data, !73, !"fsg_mod_data", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 79, i32 37}
!74 = !{ptr @__param_str_stall, !20, !"__param_str_stall", i1 false, i1 false}
!75 = !{ptr @__param_str_num_buffers, !20, !"__param_str_num_buffers", i1 false, i1 false}
!76 = !{ptr @fsg_num_buffers, !77, !"fsg_num_buffers", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 82, i32 21}
!78 = !{ptr @.str, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 250, i32 11}
!80 = !{ptr @acm_ms_driver, !81, !"acm_ms_driver", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 249, i32 36}
!82 = !{ptr @device_desc, !83, !"device_desc", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 35, i32 37}
!84 = !{ptr @dev_strings, !85, !"dev_strings", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 72, i32 35}
!86 = !{ptr @stringtab_dev, !87, !"stringtab_dev", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 67, i32 34}
!88 = !{ptr @.str.1, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 61, i32 36}
!90 = !{ptr @.str.2, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 62, i32 31}
!92 = !{ptr @strings_dev, !93, !"strings_dev", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 60, i32 26}
!94 = !{ptr @.str.3, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 159, i32 41}
!96 = !{ptr @.str.4, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 163, i32 37}
!98 = !{ptr @.str.5, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 218, i32 2}
!100 = !{ptr @.str.6, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.7, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.8, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.9, !99, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @acm_ms_bind._entry, !99, !"_entry", i1 false, i1 false}
!105 = !{ptr @acm_ms_bind._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @f_acm_inst, !107, !"f_acm_inst", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 98, i32 38}
!108 = !{ptr @fi_msg, !109, !"fi_msg", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 100, i32 38}
!110 = !{ptr @otg_desc, !111, !"otg_desc", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 57, i32 44}
!112 = !{ptr @acm_ms_config_driver, !113, !"acm_ms_config_driver", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 143, i32 33}
!114 = !{ptr @f_acm, !115, !"f_acm", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 97, i32 29}
!116 = !{ptr @f_msg, !117, !"f_msg", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/legacy/acm_ms.c", i32 101, i32 29}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
