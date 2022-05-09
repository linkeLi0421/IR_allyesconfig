; ModuleID = '/llk/IR_all_yes/drivers/usb/core/devices.c_pt.bc'
source_filename = "../drivers/usb/core/devices.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.class_info = type { i32, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@usbfs_devices_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_seek_end_llseek, ptr @usb_device_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@usb_bus_idr_lock = external dso_local global %struct.mutex, align 4
@usb_bus_idr = external dso_local global %struct.idr, align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.5\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"12\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"480\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5000\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"10000\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"??\00", [29 x i8] zeroinitializer }, align 32
@format_topo = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\0AT:  Bus=%2.2d Lev=%2.2d Prnt=%2.2d Port=%2.2d Cnt=%2.2d Dev#=%3d Spd=%-4s MxCh=%2d\0A\00", [43 x i8] zeroinitializer }, align 32
@format_bandwidth = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"B:  Alloc=%3d/%3d us (%2d%%), #Int=%3d, #Iso=%3d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(truncated)\0A\00", [19 x i8] zeroinitializer }, align 32
@format_device1 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"D:  Ver=%2x.%02x Cls=%02x(%-5s) Sub=%02x Prot=%02x MxPS=%2d #Cfgs=%3d\0A\00", [57 x i8] zeroinitializer }, align 32
@format_device2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"P:  Vendor=%04x ProdID=%04x Rev=%2x.%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@clas_info = internal constant { [22 x %struct.class_info], [48 x i8] } { [22 x %struct.class_info] [%struct.class_info { i32 0, ptr @.str.7 }, %struct.class_info { i32 1, ptr @.str.8 }, %struct.class_info { i32 2, ptr @.str.9 }, %struct.class_info { i32 3, ptr @.str.10 }, %struct.class_info { i32 5, ptr @.str.11 }, %struct.class_info { i32 6, ptr @.str.12 }, %struct.class_info { i32 7, ptr @.str.13 }, %struct.class_info { i32 8, ptr @.str.14 }, %struct.class_info { i32 9, ptr @.str.15 }, %struct.class_info { i32 10, ptr @.str.16 }, %struct.class_info { i32 11, ptr @.str.17 }, %struct.class_info { i32 13, ptr @.str.18 }, %struct.class_info { i32 14, ptr @.str.19 }, %struct.class_info { i32 15, ptr @.str.20 }, %struct.class_info { i32 16, ptr @.str.21 }, %struct.class_info { i32 17, ptr @.str.22 }, %struct.class_info { i32 18, ptr @.str.23 }, %struct.class_info { i32 224, ptr @.str.24 }, %struct.class_info { i32 239, ptr @.str.25 }, %struct.class_info { i32 254, ptr @.str.26 }, %struct.class_info { i32 255, ptr @.str.27 }, %struct.class_info { i32 -1, ptr @.str.28 }], [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c">ifc\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"comm.\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HID\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PID\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"still\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"print\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stor.\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hub\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"scard\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"c-sec\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"video\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"perhc\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"av\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blbrd\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bridg\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wlcon\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"misc\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"app.\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vend.\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"unk.\00", [27 x i8] zeroinitializer }, align 32
@format_string_manufacturer = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"S:  Manufacturer=%.100s\0A\00", [39 x i8] zeroinitializer }, align 32
@format_string_product = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"S:  Product=%.100s\0A\00", [44 x i8] zeroinitializer }, align 32
@format_string_serialnumber = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"S:  SerialNumber=%.100s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(null Cfg. desc.)\0A\00", [45 x i8] zeroinitializer }, align 32
@format_config = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"C:%c #Ifs=%2d Cfg#=%2d Atr=%02x MxPwr=%3dmA\0A\00", [51 x i8] zeroinitializer }, align 32
@format_iad = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"A:  FirstIf#=%2d IfCount=%2d Cls=%02x(%-5s) Sub=%02x Prot=%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@format_iface = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"I:%c If#=%2d Alt=%2d #EPs=%2d Cls=%02x(%-5s) Sub=%02x Prot=%02x Driver=%s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Isoc\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Bulk\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Int.\00", [27 x i8] zeroinitializer }, align 32
@format_endpt = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"E:  Ad=%02x(%c) Atr=%02x(%-4s) MxPS=%4d Ivl=%d%cs\0A\00", [45 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.usb_device_dump = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.2, ptr @.str.3, ptr @.str.4], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"usbfs_devices_fops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 590, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 470, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 473, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 476, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 478, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 480, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 482, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [12 x i8] c"format_topo\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 53, i32 19 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"format_bandwidth\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 71, i32 19 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 521, i32 33 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"format_device1\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 75, i32 19 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"format_device2\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 79, i32 19 }
@___asan_gen_.75 = private unnamed_addr constant [10 x i8] c"clas_info\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 104, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 106, i32 28 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 107, i32 21 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 108, i32 20 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 109, i32 20 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 110, i32 24 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 111, i32 27 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 112, i32 23 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 113, i32 27 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 114, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 115, i32 24 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 116, i32 21 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 117, i32 27 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 118, i32 21 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 119, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 120, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 121, i32 25 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 122, i32 32 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 123, i32 34 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 124, i32 20 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 125, i32 24 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 126, i32 27 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 127, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant [27 x i8] c"format_string_manufacturer\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 57, i32 19 }
@___asan_gen_.147 = private unnamed_addr constant [22 x i8] c"format_string_product\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 61, i32 19 }
@___asan_gen_.150 = private unnamed_addr constant [27 x i8] c"format_string_serialnumber\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 66, i32 19 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 292, i32 33 }
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"format_config\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 83, i32 19 }
@___asan_gen_.159 = private unnamed_addr constant [11 x i8] c"format_iad\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 87, i32 19 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 197, i32 28 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 206, i32 7 }
@___asan_gen_.168 = private unnamed_addr constant [13 x i8] c"format_iface\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 91, i32 19 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 159, i32 10 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 163, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 166, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 169, i32 10 }
@___asan_gen_.183 = private unnamed_addr constant [13 x i8] c"format_endpt\00", align 1
@___asan_gen_.184 = private constant [30 x i8] c"../drivers/usb/core/devices.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 95, i32 19 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 230, i32 6 }
@___asan_gen_.190 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 214, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 174, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [29 x i8] c"switch.table.usb_device_dump\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @usbfs_devices_fops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @format_topo, ptr @format_bandwidth, ptr @.str.6, ptr @format_device1, ptr @format_device2, ptr @clas_info, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @format_string_manufacturer, ptr @format_string_product, ptr @format_string_serialnumber, ptr @.str.29, ptr @format_config, ptr @format_iad, ptr @.str.30, ptr @.str.31, ptr @format_iface, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @format_endpt, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @switch.table.usb_device_dump], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbfs_devices_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_topo to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_bandwidth to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_device1 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_device2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clas_info to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_string_manufacturer to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_string_product to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_string_serialnumber to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_config to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_iad to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_iface to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @format_endpt to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.usb_device_dump to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_seek_end_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_device_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %nbytes, ptr nocapture noundef %ppos) #1 align 64 {
entry:
  %buf.addr = alloca ptr, align 4
  %nbytes.addr = alloca i32, align 4
  %skip_bytes = alloca i64, align 8
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %buf.addr, align 4
  %1 = ptrtoint ptr %nbytes.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %nbytes, ptr %nbytes.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %skip_bytes) #5
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  %4 = ptrtoint ptr %skip_bytes to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %skip_bytes, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %cmp1 = icmp eq i32 %nbytes, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @usb_bus_idr_lock, i32 noundef 0) #5
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %id, align 4
  %call31 = call ptr @idr_get_next(ptr noundef nonnull @usb_bus_idr, ptr noundef nonnull %id) #5
  %cmp4.not32 = icmp eq ptr %call31, null
  br i1 %cmp4.not32, label %if.end3.cleanup.sink.split_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %call34 = phi ptr [ %call, %for.inc.for.body_crit_edge ], [ %call31, %if.end3.for.body_crit_edge ]
  %total_written.033 = phi i32 [ %total_written.1, %for.inc.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %rh_registered = getelementptr inbounds %struct.usb_hcd, ptr %call34, i32 0, i32 14
  %6 = ptrtoint ptr %rh_registered to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %rh_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %root_hub = getelementptr inbounds %struct.usb_bus, ptr %call34, i32 0, i32 11
  %7 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %root_hub, align 4
  %mutex.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %9 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root_hub, align 4
  %call9 = call fastcc i32 @usb_device_dump(ptr noundef nonnull %buf.addr, ptr noundef nonnull %nbytes.addr, ptr noundef nonnull %skip_bytes, ptr noundef %ppos, ptr noundef %10, ptr noundef nonnull %call34, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %11 = ptrtoint ptr %root_hub to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %root_hub, align 4
  %mutex.i29 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15, i32 10
  call void @mutex_unlock(ptr noundef %mutex.i29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp12 = icmp slt i32 %call9, 0
  br i1 %cmp12, label %if.end7.cleanup.sink.split_crit_edge, label %if.end14

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %call9, %total_written.033
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %for.body.for.inc_crit_edge
  %total_written.1 = phi i32 [ %add, %if.end14 ], [ %total_written.033, %for.body.for.inc_crit_edge ]
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %add15 = add i32 %14, 1
  store i32 %add15, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef nonnull @usb_bus_idr, ptr noundef nonnull %id) #5
  %cmp4.not = icmp eq ptr %call, null
  br i1 %cmp4.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge, %if.end3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end3.cleanup.sink.split_crit_edge ], [ %call9, %if.end7.cleanup.sink.split_crit_edge ], [ %total_written.1, %for.inc.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @usb_bus_idr_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %skip_bytes) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_device_dump(ptr nocapture noundef %buffer, ptr nocapture noundef %nbytes, ptr nocapture noundef %skip_bytes, ptr nocapture noundef %file_offset, ptr noundef %usbdev, ptr nocapture noundef readonly %bus, i32 noundef %level, i32 noundef %index, i32 noundef %count) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %level)
  %cmp1 = icmp sgt i32 %level, 6
  %or.cond166 = or i1 %cmp1, %cmp
  br i1 %or.cond166, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call = tail call i32 @__get_free_pages(i32 noundef 3072, i32 noundef 1) #5
  %2 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %parent = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 11
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %if.end5.if.end12_crit_edge, label %land.lhs.true

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp8.not = icmp eq i32 %6, -1
  %spec.select = select i1 %cmp8.not, i32 0, i32 %6
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end5.if.end12_crit_edge
  %parent_devnum.0 = phi i32 [ 0, %if.end5.if.end12_crit_edge ], [ %spec.select, %land.lhs.true ]
  %speed13 = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 4
  %7 = ptrtoint ptr %speed13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %8)
  %9 = icmp ult i32 %8, 7
  br i1 %9, label %switch.lookup, label %if.end12.sw.epilog_crit_edge

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.usb_device_dump, i32 0, i32 %8
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end12.sw.epilog_crit_edge
  %speed.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.5, %if.end12.sw.epilog_crit_edge ]
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %bus, i32 0, i32 2
  %11 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %busnum, align 4
  %13 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usbdev, align 8
  %maxchild = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 35
  %15 = ptrtoint ptr %maxchild to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %maxchild, align 4
  %call19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @format_topo, i32 noundef %12, i32 noundef %level, i32 noundef %parent_devnum.0, i32 noundef %index, i32 noundef %count, i32 noundef %14, ptr noundef nonnull %speed.0, i32 noundef %16)
  %add.ptr = getelementptr i8, ptr %2, i32 %call19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp20 = icmp eq i32 %level, 0
  br i1 %cmp20, label %if.then21, label %sw.epilog.if.end32_crit_edge

sw.epilog.if.end32_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then21:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %speed13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %speed13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp23 = icmp eq i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp25 = icmp ugt i32 %18, 4
  %or.cond = or i1 %cmp23, %cmp25
  %max.0 = select i1 %or.cond, i32 800, i32 900
  %bandwidth_allocated = getelementptr inbounds %struct.usb_bus, ptr %bus, i32 0, i32 13
  %19 = ptrtoint ptr %bandwidth_allocated to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bandwidth_allocated, align 4
  %mul = mul i32 %20, 100
  %div164 = lshr exact i32 %max.0, 1
  %add = add i32 %div164, %mul
  %div29 = sdiv i32 %add, %max.0
  %bandwidth_int_reqs = getelementptr inbounds %struct.usb_bus, ptr %bus, i32 0, i32 14
  %21 = ptrtoint ptr %bandwidth_int_reqs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bandwidth_int_reqs, align 4
  %bandwidth_isoc_reqs = getelementptr inbounds %struct.usb_bus, ptr %bus, i32 0, i32 15
  %23 = ptrtoint ptr %bandwidth_isoc_reqs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bandwidth_isoc_reqs, align 4
  %call30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @format_bandwidth, i32 noundef %20, i32 noundef %max.0, i32 noundef %div29, i32 noundef %22, i32 noundef %24)
  %add.ptr31 = getelementptr i8, ptr %add.ptr, i32 %call30
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %sw.epilog.if.end32_crit_edge
  %data_end.0 = phi ptr [ %add.ptr31, %if.then21 ], [ %add.ptr, %sw.epilog.if.end32_crit_edge ]
  %add.ptr34 = getelementptr i8, ptr %2, i32 7936
  %cmp.i = icmp ugt ptr %data_end.0, %add.ptr34
  br i1 %cmp.i, label %if.end32.usb_dump_desc.exit_crit_edge, label %if.end.i.i167

if.end32.usb_dump_desc.exit_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_desc.exit

if.end.i.i167:                                    ; preds = %if.end32
  %bcdDevice2.i.i = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 16, i32 9
  %25 = ptrtoint ptr %bcdDevice2.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %bcdDevice2.i.i, align 1
  %bcdUSB1.i.i = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 16, i32 2
  %27 = ptrtoint ptr %bcdUSB1.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %bcdUSB1.i.i, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #5
  %bDeviceClass.i.i = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 16, i32 3
  %30 = ptrtoint ptr %bDeviceClass.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bDeviceClass.i.i, align 1
  %conv4.i.i = zext i8 %31 to i32
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i.i167
  %ix.0.i.i.i = phi i32 [ 0, %if.end.i.i167 ], [ %inc.i.i.i, %for.cond.i.i.i.for.cond.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [22 x %struct.class_info], ptr @clas_info, i32 0, i32 %ix.0.i.i.i
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.not.i.i.i = icmp eq i32 %33, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv4.i.i)
  %cmp4.i.i.i = icmp eq i32 %33, %conv4.i.i
  %or.cond.i.i.i = or i1 %cmp.not.i.i.i, %cmp4.i.i.i
  %inc.i.i.i = add nuw nsw i32 %ix.0.i.i.i, 1
  br i1 %or.cond.i.i.i, label %class_decode.exit.i.i, label %for.cond.i.i.i.for.cond.i.i.i_crit_edge

for.cond.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i.i

class_decode.exit.i.i:                            ; preds = %for.cond.i.i.i
  %conv.i.i = zext i16 %29 to i32
  %34 = lshr i32 %conv.i.i, 8
  %and.i.i = and i32 %conv.i.i, 255
  %class_name.i.i.i = getelementptr [22 x %struct.class_info], ptr @clas_info, i32 0, i32 %ix.0.i.i.i, i32 1
  %35 = ptrtoint ptr %class_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %class_name.i.i.i, align 4
  %bDeviceSubClass.i.i = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 16, i32 4
  %37 = ptrtoint ptr %bDeviceSubClass.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bDeviceSubClass.i.i, align 1
  %conv7.i.i = zext i8 %38 to i32
  %bDeviceProtocol.i.i = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 16, i32 5
  %39 = ptrtoint ptr %bDeviceProtocol.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bDeviceProtocol.i.i, align 1
  %conv8.i.i = zext i8 %40 to i32
  %bMaxPacketSize0.i.i = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 16, i32 6
  %41 = ptrtoint ptr %bMaxPacketSize0.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bMaxPacketSize0.i.i, align 1
  %conv9.i.i = zext i8 %42 to i32
  %bNumConfigurations.i.i = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 16, i32 13
  %43 = ptrtoint ptr %bNumConfigurations.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bNumConfigurations.i.i, align 1
  %conv10.i.i = zext i8 %44 to i32
  %call11.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data_end.0, ptr noundef nonnull @format_device1, i32 noundef %34, i32 noundef %and.i.i, i32 noundef %conv4.i.i, ptr noundef %36, i32 noundef %conv7.i.i, i32 noundef %conv8.i.i, i32 noundef %conv9.i.i, i32 noundef %conv10.i.i) #5
  %add.ptr.i.i = getelementptr i8, ptr %data_end.0, i32 %call11.i.i
  %cmp12.i.i = icmp ugt ptr %add.ptr.i.i, %add.ptr34
  br i1 %cmp12.i.i, label %class_decode.exit.i.i.usb_dump_device_descriptor.exit.i_crit_edge, label %if.end15.i.i

class_decode.exit.i.i.usb_dump_device_descriptor.exit.i_crit_edge: ; preds = %class_decode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_device_descriptor.exit.i

if.end15.i.i:                                     ; preds = %class_decode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = tail call i16 @llvm.bswap.i16(i16 %26) #5
  %idVendor.i.i = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 16, i32 7
  %46 = ptrtoint ptr %idVendor.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %idVendor.i.i, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #5
  %conv16.i.i = zext i16 %48 to i32
  %idProduct.i.i = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 16, i32 8
  %49 = ptrtoint ptr %idProduct.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %idProduct.i.i, align 1
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #5
  %conv17.i.i = zext i16 %51 to i32
  %conv18.i.i = zext i16 %45 to i32
  %52 = lshr i32 %conv18.i.i, 8
  %and21.i.i = and i32 %conv18.i.i, 255
  %call22.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i.i, ptr noundef nonnull @format_device2, i32 noundef %conv16.i.i, i32 noundef %conv17.i.i, i32 noundef %52, i32 noundef %and21.i.i) #5
  %add.ptr23.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %call22.i.i
  br label %usb_dump_device_descriptor.exit.i

usb_dump_device_descriptor.exit.i:                ; preds = %if.end15.i.i, %class_decode.exit.i.i.usb_dump_device_descriptor.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr23.i.i, %if.end15.i.i ], [ %add.ptr.i.i, %class_decode.exit.i.i.usb_dump_device_descriptor.exit.i_crit_edge ]
  %cmp1.i = icmp ugt ptr %retval.0.i.i, %add.ptr34
  br i1 %cmp1.i, label %usb_dump_device_descriptor.exit.i.usb_dump_desc.exit_crit_edge, label %if.end.i41.i

usb_dump_device_descriptor.exit.i.usb_dump_desc.exit_crit_edge: ; preds = %usb_dump_device_descriptor.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_desc.exit

if.end.i41.i:                                     ; preds = %usb_dump_device_descriptor.exit.i
  %manufacturer.i.i = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 32
  %53 = ptrtoint ptr %manufacturer.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %manufacturer.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %if.end.i41.i.if.end3.i.i_crit_edge, label %if.then1.i.i

if.end.i41.i.if.end3.i.i_crit_edge:               ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i.i

if.then1.i.i:                                     ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i168 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %retval.0.i.i, ptr noundef nonnull @format_string_manufacturer, ptr noundef nonnull %54) #5
  %add.ptr.i42.i = getelementptr i8, ptr %retval.0.i.i, i32 %call.i.i168
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then1.i.i, %if.end.i41.i.if.end3.i.i_crit_edge
  %start.addr.0.i.i = phi ptr [ %add.ptr.i42.i, %if.then1.i.i ], [ %retval.0.i.i, %if.end.i41.i.if.end3.i.i_crit_edge ]
  %cmp4.i.i = icmp ugt ptr %start.addr.0.i.i, %add.ptr34
  br i1 %cmp4.i.i, label %if.end3.i.i.usb_dump_device_strings.exit.i_crit_edge, label %if.end6.i.i

if.end3.i.i.usb_dump_device_strings.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_device_strings.exit.i

if.end6.i.i:                                      ; preds = %if.end3.i.i
  %product.i.i = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 31
  %55 = ptrtoint ptr %product.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %product.i.i, align 8
  %tobool7.not.i.i = icmp eq ptr %56, null
  br i1 %tobool7.not.i.i, label %if.end6.i.i.if.end12.i.i_crit_edge, label %if.then8.i.i

if.end6.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %start.addr.0.i.i, ptr noundef nonnull @format_string_product, ptr noundef nonnull %56) #5
  %add.ptr11.i.i = getelementptr i8, ptr %start.addr.0.i.i, i32 %call10.i.i
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then8.i.i, %if.end6.i.i.if.end12.i.i_crit_edge
  %start.addr.1.i.i = phi ptr [ %add.ptr11.i.i, %if.then8.i.i ], [ %start.addr.0.i.i, %if.end6.i.i.if.end12.i.i_crit_edge ]
  %cmp13.i.i = icmp ugt ptr %start.addr.1.i.i, %add.ptr34
  br i1 %cmp13.i.i, label %if.end12.i.i.usb_dump_device_strings.exit.i_crit_edge, label %if.end15.i43.i

if.end12.i.i.usb_dump_device_strings.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_device_strings.exit.i

if.end15.i43.i:                                   ; preds = %if.end12.i.i
  %serial.i.i = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 33
  %57 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %serial.i.i, align 8
  %tobool16.not.i.i = icmp eq ptr %58, null
  br i1 %tobool16.not.i.i, label %if.end15.i43.i.usb_dump_device_strings.exit.i_crit_edge, label %if.then17.i.i

if.end15.i43.i.usb_dump_device_strings.exit.i_crit_edge: ; preds = %if.end15.i43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_device_strings.exit.i

if.then17.i.i:                                    ; preds = %if.end15.i43.i
  call void @__sanitizer_cov_trace_pc() #7
  %call19.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %start.addr.1.i.i, ptr noundef nonnull @format_string_serialnumber, ptr noundef nonnull %58) #5
  %add.ptr20.i.i = getelementptr i8, ptr %start.addr.1.i.i, i32 %call19.i.i
  br label %usb_dump_device_strings.exit.i

usb_dump_device_strings.exit.i:                   ; preds = %if.then17.i.i, %if.end15.i43.i.usb_dump_device_strings.exit.i_crit_edge, %if.end12.i.i.usb_dump_device_strings.exit.i_crit_edge, %if.end3.i.i.usb_dump_device_strings.exit.i_crit_edge
  %retval.0.i44.i = phi ptr [ %start.addr.0.i.i, %if.end3.i.i.usb_dump_device_strings.exit.i_crit_edge ], [ %start.addr.1.i.i, %if.end12.i.i.usb_dump_device_strings.exit.i_crit_edge ], [ %add.ptr20.i.i, %if.then17.i.i ], [ %start.addr.1.i.i, %if.end15.i43.i.usb_dump_device_strings.exit.i_crit_edge ]
  %59 = ptrtoint ptr %bNumConfigurations.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bNumConfigurations.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp660.i = icmp eq i8 %60, 0
  %cmp861.i = icmp ugt ptr %retval.0.i44.i, %add.ptr34
  %or.cond62.i = select i1 %cmp660.i, i1 true, i1 %cmp861.i
  br i1 %or.cond62.i, label %usb_dump_device_strings.exit.i.usb_dump_desc.exit_crit_edge, label %if.end.i47.lr.ph.i

usb_dump_device_strings.exit.i.usb_dump_desc.exit_crit_edge: ; preds = %usb_dump_device_strings.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_desc.exit

if.end.i47.lr.ph.i:                               ; preds = %usb_dump_device_strings.exit.i
  %config.i = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 19
  %actconfig.i = getelementptr inbounds %struct.usb_device, ptr %usbdev, i32 0, i32 20
  br label %if.end.i47.i

if.end.i47.i:                                     ; preds = %usb_dump_config.exit.i.if.end.i47.i_crit_edge, %if.end.i47.lr.ph.i
  %i.064.i = phi i32 [ 0, %if.end.i47.lr.ph.i ], [ %inc.i, %usb_dump_config.exit.i.if.end.i47.i_crit_edge ]
  %start.addr.063.i = phi ptr [ %retval.0.i44.i, %if.end.i47.lr.ph.i ], [ %retval.0.i54.i, %usb_dump_config.exit.i.if.end.i47.i_crit_edge ]
  %61 = ptrtoint ptr %speed13 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %speed13, align 4
  %63 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %config.i, align 8
  %add.ptr.i = getelementptr %struct.usb_host_config, ptr %64, i32 %i.064.i
  %tobool.not.i46.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i46.i, label %if.then1.i49.i, label %usb_dump_config_descriptor.exit.i.i

if.then1.i49.i:                                   ; preds = %if.end.i47.i
  call void @__sanitizer_cov_trace_pc() #7
  %65 = call ptr @memcpy(ptr %start.addr.063.i, ptr @.str.29, i32 19)
  %add.ptr.i48.i = getelementptr i8, ptr %start.addr.063.i, i32 18
  br label %usb_dump_config.exit.i

usb_dump_config_descriptor.exit.i.i:              ; preds = %if.end.i47.i
  %66 = ptrtoint ptr %actconfig.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %actconfig.i, align 4
  %cmp14.not.i = icmp eq ptr %add.ptr.i, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %62)
  %cmp1.i.i.i = icmp sgt i32 %62, 4
  %..i.i.i = select i1 %cmp1.i.i.i, i32 8, i32 2
  %cond.i.i.i = select i1 %cmp14.not.i, i32 42, i32 32
  %bNumInterfaces.i.i.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %add.ptr.i, i32 0, i32 3
  %68 = ptrtoint ptr %bNumInterfaces.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bNumInterfaces.i.i.i, align 1
  %conv.i.i.i = zext i8 %69 to i32
  %bConfigurationValue.i.i.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %add.ptr.i, i32 0, i32 4
  %70 = ptrtoint ptr %bConfigurationValue.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bConfigurationValue.i.i.i, align 1
  %conv4.i.i.i = zext i8 %71 to i32
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %add.ptr.i, i32 0, i32 6
  %72 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bmAttributes.i.i.i, align 1
  %conv5.i.i.i = zext i8 %73 to i32
  %bMaxPower.i.i.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %add.ptr.i, i32 0, i32 7
  %74 = ptrtoint ptr %bMaxPower.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bMaxPower.i.i.i, align 1
  %conv6.i.i.i = zext i8 %75 to i32
  %mul7.i.i.i = mul nuw nsw i32 %..i.i.i, %conv6.i.i.i
  %call.i.i.i169 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %start.addr.063.i, ptr noundef nonnull @format_config, i32 noundef %cond.i.i.i, i32 noundef %conv.i.i.i, i32 noundef %conv4.i.i.i, i32 noundef %conv5.i.i.i, i32 noundef %mul7.i.i.i) #5
  %add.ptr.i.i.i = getelementptr i8, ptr %start.addr.063.i, i32 %call.i.i.i169
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %usb_dump_iad_descriptor.exit.i.i.for.body.i.i_crit_edge, %usb_dump_config_descriptor.exit.i.i
  %i.083.i.i = phi i32 [ 0, %usb_dump_config_descriptor.exit.i.i ], [ %inc.i.i, %usb_dump_iad_descriptor.exit.i.i.for.body.i.i_crit_edge ]
  %start.addr.082.i.i = phi ptr [ %add.ptr.i.i.i, %usb_dump_config_descriptor.exit.i.i ], [ %retval.0.i73.i.i, %usb_dump_iad_descriptor.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.usb_host_config, ptr %64, i32 %i.064.i, i32 2, i32 %i.083.i.i
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp5.i.i = icmp eq ptr %77, null
  br i1 %cmp5.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %if.end7.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

if.end7.i.i:                                      ; preds = %for.body.i.i
  %cmp.i67.i.i = icmp ugt ptr %start.addr.082.i.i, %add.ptr34
  br i1 %cmp.i67.i.i, label %if.end7.i.i.usb_dump_iad_descriptor.exit.i.i_crit_edge, label %if.end.i68.i.i

if.end7.i.i.usb_dump_iad_descriptor.exit.i.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_iad_descriptor.exit.i.i

if.end.i68.i.i:                                   ; preds = %if.end7.i.i
  %bFirstInterface.i.i.i = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %bFirstInterface.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bFirstInterface.i.i.i, align 1
  %bInterfaceCount.i.i.i = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %77, i32 0, i32 3
  %80 = ptrtoint ptr %bInterfaceCount.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bInterfaceCount.i.i.i, align 1
  %bFunctionClass.i.i.i = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %77, i32 0, i32 4
  %82 = ptrtoint ptr %bFunctionClass.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bFunctionClass.i.i.i, align 1
  %conv2.i.i.i = zext i8 %83 to i32
  br label %for.cond.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge, %if.end.i68.i.i
  %ix.0.i.i.i.i = phi i32 [ 0, %if.end.i68.i.i ], [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr [22 x %struct.class_info], ptr @clas_info, i32 0, i32 %ix.0.i.i.i.i
  %84 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %cmp.not.i.i.i.i = icmp eq i32 %85, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %conv2.i.i.i)
  %cmp4.i.i.i.i = icmp eq i32 %85, %conv2.i.i.i
  %or.cond.i.i.i.i = or i1 %cmp.not.i.i.i.i, %cmp4.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %ix.0.i.i.i.i, 1
  br i1 %or.cond.i.i.i.i, label %class_decode.exit.i.i.i, label %for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.cond.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i.i.i

class_decode.exit.i.i.i:                          ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i69.i.i = zext i8 %79 to i32
  %conv1.i.i.i = zext i8 %81 to i32
  %class_name.i.i.i.i = getelementptr [22 x %struct.class_info], ptr @clas_info, i32 0, i32 %ix.0.i.i.i.i, i32 1
  %86 = ptrtoint ptr %class_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %class_name.i.i.i.i, align 4
  %bFunctionSubClass.i.i.i = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %77, i32 0, i32 5
  %88 = ptrtoint ptr %bFunctionSubClass.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bFunctionSubClass.i.i.i, align 1
  %conv5.i70.i.i = zext i8 %89 to i32
  %bFunctionProtocol.i.i.i = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %77, i32 0, i32 6
  %90 = ptrtoint ptr %bFunctionProtocol.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bFunctionProtocol.i.i.i, align 1
  %conv6.i71.i.i = zext i8 %91 to i32
  %call7.i.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %start.addr.082.i.i, ptr noundef nonnull @format_iad, i32 noundef %conv.i69.i.i, i32 noundef %conv1.i.i.i, i32 noundef %conv2.i.i.i, ptr noundef %87, i32 noundef %conv5.i70.i.i, i32 noundef %conv6.i71.i.i) #5
  %add.ptr.i72.i.i = getelementptr i8, ptr %start.addr.082.i.i, i32 %call7.i.i.i
  br label %usb_dump_iad_descriptor.exit.i.i

usb_dump_iad_descriptor.exit.i.i:                 ; preds = %class_decode.exit.i.i.i, %if.end7.i.i.usb_dump_iad_descriptor.exit.i.i_crit_edge
  %retval.0.i73.i.i = phi ptr [ %add.ptr.i72.i.i, %class_decode.exit.i.i.i ], [ %start.addr.082.i.i, %if.end7.i.i.usb_dump_iad_descriptor.exit.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.083.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %usb_dump_iad_descriptor.exit.i.i.for.end.i.i_crit_edge, label %usb_dump_iad_descriptor.exit.i.i.for.body.i.i_crit_edge

usb_dump_iad_descriptor.exit.i.i.for.body.i.i_crit_edge: ; preds = %usb_dump_iad_descriptor.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

usb_dump_iad_descriptor.exit.i.i.for.end.i.i_crit_edge: ; preds = %usb_dump_iad_descriptor.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %usb_dump_iad_descriptor.exit.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %start.addr.0.lcssa.i.i = phi ptr [ %start.addr.082.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %retval.0.i73.i.i, %usb_dump_iad_descriptor.exit.i.i.for.end.i.i_crit_edge ]
  %92 = ptrtoint ptr %bNumInterfaces.i.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bNumInterfaces.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp1389.not.i.i = icmp eq i8 %93, 0
  br i1 %cmp1389.not.i.i, label %for.end.i.i.usb_dump_config.exit.i_crit_edge, label %for.body15.lr.ph.i.i

for.end.i.i.usb_dump_config.exit.i_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_config.exit.i

for.body15.lr.ph.i.i:                             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cmp1.i.i.i.i = icmp eq i32 %62, 3
  br label %for.body15.i.i

for.body15.i.i:                                   ; preds = %for.inc31.i.i.for.body15.i.i_crit_edge, %for.body15.lr.ph.i.i
  %i.191.i.i = phi i32 [ 0, %for.body15.lr.ph.i.i ], [ %inc32.i.i, %for.inc31.i.i.for.body15.i.i_crit_edge ]
  %start.addr.190.i.i = phi ptr [ %start.addr.0.lcssa.i.i, %for.body15.lr.ph.i.i ], [ %start.addr.2.lcssa.i.i, %for.inc31.i.i.for.body15.i.i_crit_edge ]
  %arrayidx16.i.i = getelementptr %struct.usb_host_config, ptr %64, i32 %i.064.i, i32 4, i32 %i.191.i.i
  %94 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx16.i.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp2084.not.i.i = icmp eq i32 %97, 0
  br i1 %cmp2084.not.i.i, label %for.body15.i.i.for.inc31.i.i_crit_edge, label %for.body22.lr.ph.i.i

for.body15.i.i.for.inc31.i.i_crit_edge:           ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc31.i.i

for.body22.lr.ph.i.i:                             ; preds = %for.body15.i.i
  %arrayidx18.i.i = getelementptr %struct.usb_host_config, ptr %64, i32 %i.064.i, i32 3, i32 %i.191.i.i
  %98 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx18.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %99, null
  %driver.i.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %99, i32 0, i32 7, i32 6
  %cur_altsetting.i.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %99, i32 0, i32 1
  br label %for.body22.i.i

for.body22.i.i:                                   ; preds = %usb_dump_interface.exit.i.i.for.body22.i.i_crit_edge, %for.body22.lr.ph.i.i
  %j.086.i.i = phi i32 [ 0, %for.body22.lr.ph.i.i ], [ %inc29.i.i, %usb_dump_interface.exit.i.i.for.body22.i.i_crit_edge ]
  %start.addr.285.i.i = phi ptr [ %start.addr.190.i.i, %for.body22.lr.ph.i.i ], [ %start.addr.0.lcssa.i.i.i, %usb_dump_interface.exit.i.i.for.body22.i.i_crit_edge ]
  %cmp23.i.i = icmp ugt ptr %start.addr.285.i.i, %add.ptr34
  br i1 %cmp23.i.i, label %for.body22.i.i.usb_dump_config.exit.i_crit_edge, label %if.end.i.i.i.i

for.body22.i.i.usb_dump_config.exit.i_crit_edge:  ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_config.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body22.i.i
  %arrayidx.i.i74.i.i = getelementptr %struct.usb_interface_cache, ptr %95, i32 0, i32 2, i32 %j.086.i.i
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge, label %if.then2.i.i.i.i

if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i.i.i

if.then2.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %100 = ptrtoint ptr %driver.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %driver.i.i.i.i, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %101, null
  br i1 %tobool3.not.i.i.i.i, label %if.then2.i.i.i.i.cond.end.i.i.i.i_crit_edge, label %cond.true.i.i.i.i

if.then2.i.i.i.i.cond.end.i.i.i.i_crit_edge:      ; preds = %if.then2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %if.then2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  br label %cond.end.i.i.i.i

cond.end.i.i.i.i:                                 ; preds = %cond.true.i.i.i.i, %if.then2.i.i.i.i.cond.end.i.i.i.i_crit_edge
  %cond.i.i.i.i = phi ptr [ %103, %cond.true.i.i.i.i ], [ @.str.31, %if.then2.i.i.i.i.cond.end.i.i.i.i_crit_edge ]
  %104 = ptrtoint ptr %cur_altsetting.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur_altsetting.i.i.i.i, align 4
  %cmp7.not.i.i.i.i = icmp eq ptr %arrayidx.i.i74.i.i, %105
  %phi.sel.i.i.i.i = select i1 %cmp7.not.i.i.i.i, i32 42, i32 32
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %cond.end.i.i.i.i, %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge
  %driver_name.0.i.i.i.i = phi ptr [ %cond.i.i.i.i, %cond.end.i.i.i.i ], [ @.str.30, %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge ]
  %active.0.i.i.i.i = phi i32 [ %phi.sel.i.i.i.i, %cond.end.i.i.i.i ], [ 32, %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge ]
  %bInterfaceNumber.i.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i74.i.i, i32 0, i32 2
  %106 = ptrtoint ptr %bInterfaceNumber.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bInterfaceNumber.i.i.i.i, align 1
  %bAlternateSetting.i.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i74.i.i, i32 0, i32 3
  %108 = ptrtoint ptr %bAlternateSetting.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %bAlternateSetting.i.i.i.i, align 1
  %bNumEndpoints.i.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i74.i.i, i32 0, i32 4
  %110 = ptrtoint ptr %bNumEndpoints.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %bNumEndpoints.i.i.i.i, align 1
  %bInterfaceClass.i.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i74.i.i, i32 0, i32 5
  %112 = ptrtoint ptr %bInterfaceClass.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bInterfaceClass.i.i.i.i, align 1
  %conv14.i.i.i.i = zext i8 %113 to i32
  br label %for.cond.i.i.i.i.i

for.cond.i.i.i.i.i:                               ; preds = %for.cond.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge, %if.end8.i.i.i.i
  %ix.0.i.i.i.i.i = phi i32 [ 0, %if.end8.i.i.i.i ], [ %inc.i.i.i.i.i, %for.cond.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i.i = getelementptr [22 x %struct.class_info], ptr @clas_info, i32 0, i32 %ix.0.i.i.i.i.i
  %114 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %cmp.not.i.i.i.i.i = icmp eq i32 %115, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %conv14.i.i.i.i)
  %cmp4.i.i.i.i.i = icmp eq i32 %115, %conv14.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %cmp.not.i.i.i.i.i, %cmp4.i.i.i.i.i
  %inc.i.i.i.i.i = add nuw nsw i32 %ix.0.i.i.i.i.i, 1
  br i1 %or.cond.i.i.i.i.i, label %usb_dump_interface_descriptor.exit.i.i.i, label %for.cond.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge

for.cond.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge:  ; preds = %for.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i.i.i.i

usb_dump_interface_descriptor.exit.i.i.i:         ; preds = %for.cond.i.i.i.i.i
  %conv11.i.i.i.i = zext i8 %107 to i32
  %conv12.i.i.i.i = zext i8 %109 to i32
  %conv13.i.i.i.i = zext i8 %111 to i32
  %class_name.i.i.i.i.i = getelementptr [22 x %struct.class_info], ptr @clas_info, i32 0, i32 %ix.0.i.i.i.i.i, i32 1
  %116 = ptrtoint ptr %class_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %class_name.i.i.i.i.i, align 4
  %bInterfaceSubClass.i.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i74.i.i, i32 0, i32 6
  %118 = ptrtoint ptr %bInterfaceSubClass.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %bInterfaceSubClass.i.i.i.i, align 1
  %conv17.i.i.i.i = zext i8 %119 to i32
  %bInterfaceProtocol.i.i.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx.i.i74.i.i, i32 0, i32 7
  %120 = ptrtoint ptr %bInterfaceProtocol.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %bInterfaceProtocol.i.i.i.i, align 1
  %conv18.i.i.i.i = zext i8 %121 to i32
  %call19.i.i.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %start.addr.285.i.i, ptr noundef nonnull @format_iface, i32 noundef %active.0.i.i.i.i, i32 noundef %conv11.i.i.i.i, i32 noundef %conv12.i.i.i.i, i32 noundef %conv13.i.i.i.i, i32 noundef %conv14.i.i.i.i, ptr noundef %117, i32 noundef %conv17.i.i.i.i, i32 noundef %conv18.i.i.i.i, ptr noundef %driver_name.0.i.i.i.i) #5
  %add.ptr.i.i.i.i = getelementptr i8, ptr %start.addr.285.i.i, i32 %call19.i.i.i.i
  %bNumEndpoints.i.i.i = getelementptr %struct.usb_interface_cache, ptr %95, i32 0, i32 2, i32 %j.086.i.i, i32 0, i32 4
  %122 = ptrtoint ptr %bNumEndpoints.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %bNumEndpoints.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp29.i.i.i = icmp eq i8 %123, 0
  %cmp330.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i, %add.ptr34
  %or.cond31.i.i.i = or i1 %cmp29.i.i.i, %cmp330.i.i.i
  br i1 %or.cond31.i.i.i, label %usb_dump_interface_descriptor.exit.i.i.i.usb_dump_interface.exit.i.i_crit_edge, label %if.end.i22.lr.ph.i.i.i

usb_dump_interface_descriptor.exit.i.i.i.usb_dump_interface.exit.i.i_crit_edge: ; preds = %usb_dump_interface_descriptor.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_interface.exit.i.i

if.end.i22.lr.ph.i.i.i:                           ; preds = %usb_dump_interface_descriptor.exit.i.i.i
  %endpoint.i.i.i = getelementptr %struct.usb_interface_cache, ptr %95, i32 0, i32 2, i32 %j.086.i.i, i32 3
  br label %if.end.i22.i.i.i

if.end.i22.i.i.i:                                 ; preds = %usb_dump_endpoint_descriptor.exit.i.i.i.if.end.i22.i.i.i_crit_edge, %if.end.i22.lr.ph.i.i.i
  %i.033.i.i.i = phi i32 [ 0, %if.end.i22.lr.ph.i.i.i ], [ %inc.i.i50.i, %usb_dump_endpoint_descriptor.exit.i.i.i.if.end.i22.i.i.i_crit_edge ]
  %start.addr.032.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.end.i22.lr.ph.i.i.i ], [ %add.ptr.i25.i.i.i, %usb_dump_endpoint_descriptor.exit.i.i.i.if.end.i22.i.i.i_crit_edge ]
  %124 = ptrtoint ptr %endpoint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %endpoint.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr %struct.usb_host_endpoint, ptr %125, i32 %i.033.i.i.i
  %bEndpointAddress.i.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx5.i.i.i, i32 0, i32 2
  %126 = ptrtoint ptr %bEndpointAddress.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %bEndpointAddress.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %127)
  %tobool.not.i21.i.i.i = icmp sgt i8 %127, -1
  %conv.i.i.i.i = select i1 %tobool.not.i21.i.i.i, i8 79, i8 73
  br i1 %cmp1.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i22.i.i.i.if.end5.i.i.i.i_crit_edge

if.end.i22.i.i.i.if.end5.i.i.i.i_crit_edge:       ; preds = %if.end.i22.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i22.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %wMaxPacketSize.i.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx5.i.i.i, i32 0, i32 4
  %128 = ptrtoint ptr %wMaxPacketSize.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %128, i32 2)
  %129 = load i16, ptr %wMaxPacketSize.i.i.i.i.i, align 1
  %130 = lshr i16 %129, 3
  %131 = and i16 %130, 3
  %narrow.i.i.i.i.i = add nuw nsw i16 %131, 1
  %add.i.i.i.i.i = zext i16 %narrow.i.i.i.i.i to i32
  br label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then3.i.i.i.i, %if.end.i22.i.i.i.if.end5.i.i.i.i_crit_edge
  %bandwidth.0.i.i.i.i = phi i32 [ %add.i.i.i.i.i, %if.then3.i.i.i.i ], [ 1, %if.end.i22.i.i.i.if.end5.i.i.i.i_crit_edge ]
  %bmAttributes.i.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx5.i.i.i, i32 0, i32 3
  %132 = ptrtoint ptr %bmAttributes.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %bmAttributes.i.i.i.i.i, align 1
  %134 = and i8 %133, 3
  %and.i.i.i.i.i = zext i8 %134 to i32
  %135 = zext i32 %and.i.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i.i.i.i, label %if.end5.unreachabledefault.i.i.i.i [
    i32 0, label %if.end5.i.i.i.i.usb_dump_endpoint_descriptor.exit.i.i.i_crit_edge
    i32 1, label %sw.bb7.i.i.i.i
    i32 2, label %sw.bb8.i.i.i.i
    i32 3, label %sw.bb9.i.i.i.i
  ]

if.end5.i.i.i.i.usb_dump_endpoint_descriptor.exit.i.i.i_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_endpoint_descriptor.exit.i.i.i

sw.bb7.i.i.i.i:                                   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_endpoint_descriptor.exit.i.i.i

sw.bb8.i.i.i.i:                                   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_endpoint_descriptor.exit.i.i.i

sw.bb9.i.i.i.i:                                   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_endpoint_descriptor.exit.i.i.i

if.end5.unreachabledefault.i.i.i.i:               ; preds = %if.end5.i.i.i.i
  unreachable

usb_dump_endpoint_descriptor.exit.i.i.i:          ; preds = %sw.bb9.i.i.i.i, %sw.bb8.i.i.i.i, %sw.bb7.i.i.i.i, %if.end5.i.i.i.i.usb_dump_endpoint_descriptor.exit.i.i.i_crit_edge
  %dir.0.i.i.i.i = phi i8 [ %conv.i.i.i.i, %sw.bb9.i.i.i.i ], [ %conv.i.i.i.i, %sw.bb8.i.i.i.i ], [ %conv.i.i.i.i, %sw.bb7.i.i.i.i ], [ 66, %if.end5.i.i.i.i.usb_dump_endpoint_descriptor.exit.i.i.i_crit_edge ]
  %type.0.i.i.i.i = phi ptr [ @.str.35, %sw.bb9.i.i.i.i ], [ @.str.34, %sw.bb8.i.i.i.i ], [ @.str.33, %sw.bb7.i.i.i.i ], [ @.str.32, %if.end5.i.i.i.i.usb_dump_endpoint_descriptor.exit.i.i.i_crit_edge ]
  %call10.i.i.i.i = tail call i32 @usb_decode_interval(ptr noundef %arrayidx5.i.i.i, i32 noundef %62) #5
  %call10.i.i.i.i.frozen = freeze i32 %call10.i.i.i.i
  %div.i.i.i.i = udiv i32 %call10.i.i.i.i.frozen, 1000
  %136 = mul i32 %div.i.i.i.i, 1000
  %rem.i.i.i.i.decomposed = sub i32 %call10.i.i.i.i.frozen, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i.i.decomposed)
  %tobool11.not.i.i.i.i = icmp eq i32 %rem.i.i.i.i.decomposed, 0
  %unit.0.i.i.i.i = select i1 %tobool11.not.i.i.i.i, i32 109, i32 117
  %interval.0.i.i.i.i = select i1 %tobool11.not.i.i.i.i, i32 %div.i.i.i.i, i32 %call10.i.i.i.i
  %137 = ptrtoint ptr %bEndpointAddress.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %bEndpointAddress.i.i.i.i.i, align 1
  %conv14.i23.i.i.i = zext i8 %138 to i32
  %conv15.i.i.i.i = zext i8 %dir.0.i.i.i.i to i32
  %139 = ptrtoint ptr %bmAttributes.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %bmAttributes.i.i.i.i.i, align 1
  %conv16.i.i.i.i = zext i8 %140 to i32
  %wMaxPacketSize.i38.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx5.i.i.i, i32 0, i32 4
  %141 = ptrtoint ptr %wMaxPacketSize.i38.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 2)
  %142 = load i16, ptr %wMaxPacketSize.i38.i.i.i.i, align 1
  %143 = and i16 %142, -249
  %144 = tail call i16 @llvm.bswap.i16(i16 %143) #5
  %and.i39.i.i.i.i = zext i16 %144 to i32
  %mul.i.i.i.i = mul nuw nsw i32 %bandwidth.0.i.i.i.i, %and.i39.i.i.i.i
  %call19.i24.i.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %start.addr.032.i.i.i, ptr noundef nonnull @format_endpt, i32 noundef %conv14.i23.i.i.i, i32 noundef %conv15.i.i.i.i, i32 noundef %conv16.i.i.i.i, ptr noundef nonnull %type.0.i.i.i.i, i32 noundef %mul.i.i.i.i, i32 noundef %interval.0.i.i.i.i, i32 noundef %unit.0.i.i.i.i) #5
  %add.ptr.i25.i.i.i = getelementptr i8, ptr %start.addr.032.i.i.i, i32 %call19.i24.i.i.i
  %inc.i.i50.i = add nuw nsw i32 %i.033.i.i.i, 1
  %145 = ptrtoint ptr %bNumEndpoints.i.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %bNumEndpoints.i.i.i, align 4
  %conv.i75.i.i = zext i8 %146 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i50.i, i32 %conv.i75.i.i)
  %cmp.i76.i.i = icmp uge i32 %inc.i.i50.i, %conv.i75.i.i
  %cmp3.i.i.i = icmp ugt ptr %add.ptr.i25.i.i.i, %add.ptr34
  %or.cond.i.i51.i = select i1 %cmp.i76.i.i, i1 true, i1 %cmp3.i.i.i
  br i1 %or.cond.i.i51.i, label %usb_dump_endpoint_descriptor.exit.i.i.i.usb_dump_interface.exit.i.i_crit_edge, label %usb_dump_endpoint_descriptor.exit.i.i.i.if.end.i22.i.i.i_crit_edge

usb_dump_endpoint_descriptor.exit.i.i.i.if.end.i22.i.i.i_crit_edge: ; preds = %usb_dump_endpoint_descriptor.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i22.i.i.i

usb_dump_endpoint_descriptor.exit.i.i.i.usb_dump_interface.exit.i.i_crit_edge: ; preds = %usb_dump_endpoint_descriptor.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_interface.exit.i.i

usb_dump_interface.exit.i.i:                      ; preds = %usb_dump_endpoint_descriptor.exit.i.i.i.usb_dump_interface.exit.i.i_crit_edge, %usb_dump_interface_descriptor.exit.i.i.i.usb_dump_interface.exit.i.i_crit_edge
  %start.addr.0.lcssa.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %usb_dump_interface_descriptor.exit.i.i.i.usb_dump_interface.exit.i.i_crit_edge ], [ %add.ptr.i25.i.i.i, %usb_dump_endpoint_descriptor.exit.i.i.i.usb_dump_interface.exit.i.i_crit_edge ]
  %inc29.i.i = add nuw i32 %j.086.i.i, 1
  %147 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %95, align 4
  %cmp20.i.i = icmp ult i32 %inc29.i.i, %148
  br i1 %cmp20.i.i, label %usb_dump_interface.exit.i.i.for.body22.i.i_crit_edge, label %usb_dump_interface.exit.i.i.for.inc31.i.i_crit_edge

usb_dump_interface.exit.i.i.for.inc31.i.i_crit_edge: ; preds = %usb_dump_interface.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc31.i.i

usb_dump_interface.exit.i.i.for.body22.i.i_crit_edge: ; preds = %usb_dump_interface.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22.i.i

for.inc31.i.i:                                    ; preds = %usb_dump_interface.exit.i.i.for.inc31.i.i_crit_edge, %for.body15.i.i.for.inc31.i.i_crit_edge
  %start.addr.2.lcssa.i.i = phi ptr [ %start.addr.190.i.i, %for.body15.i.i.for.inc31.i.i_crit_edge ], [ %start.addr.0.lcssa.i.i.i, %usb_dump_interface.exit.i.i.for.inc31.i.i_crit_edge ]
  %inc32.i.i = add nuw nsw i32 %i.191.i.i, 1
  %149 = ptrtoint ptr %bNumInterfaces.i.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %bNumInterfaces.i.i.i, align 4
  %conv.i52.i = zext i8 %150 to i32
  %cmp13.i53.i = icmp ult i32 %inc32.i.i, %conv.i52.i
  br i1 %cmp13.i53.i, label %for.inc31.i.i.for.body15.i.i_crit_edge, label %for.inc31.i.i.usb_dump_config.exit.i_crit_edge

for.inc31.i.i.usb_dump_config.exit.i_crit_edge:   ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_config.exit.i

for.inc31.i.i.for.body15.i.i_crit_edge:           ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15.i.i

usb_dump_config.exit.i:                           ; preds = %for.inc31.i.i.usb_dump_config.exit.i_crit_edge, %for.body22.i.i.usb_dump_config.exit.i_crit_edge, %for.end.i.i.usb_dump_config.exit.i_crit_edge, %if.then1.i49.i
  %retval.0.i54.i = phi ptr [ %add.ptr.i48.i, %if.then1.i49.i ], [ %start.addr.0.lcssa.i.i, %for.end.i.i.usb_dump_config.exit.i_crit_edge ], [ %start.addr.285.i.i, %for.body22.i.i.usb_dump_config.exit.i_crit_edge ], [ %start.addr.2.lcssa.i.i, %for.inc31.i.i.usb_dump_config.exit.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %151 = ptrtoint ptr %bNumConfigurations.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %bNumConfigurations.i.i, align 1
  %conv.i = zext i8 %152 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp6.i = icmp uge i32 %inc.i, %conv.i
  %cmp8.i = icmp ugt ptr %retval.0.i54.i, %add.ptr34
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %cmp8.i
  br i1 %or.cond.i, label %usb_dump_config.exit.i.usb_dump_desc.exit_crit_edge, label %usb_dump_config.exit.i.if.end.i47.i_crit_edge

usb_dump_config.exit.i.if.end.i47.i_crit_edge:    ; preds = %usb_dump_config.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i47.i

usb_dump_config.exit.i.usb_dump_desc.exit_crit_edge: ; preds = %usb_dump_config.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_dump_desc.exit

usb_dump_desc.exit:                               ; preds = %usb_dump_config.exit.i.usb_dump_desc.exit_crit_edge, %usb_dump_device_strings.exit.i.usb_dump_desc.exit_crit_edge, %usb_dump_device_descriptor.exit.i.usb_dump_desc.exit_crit_edge, %if.end32.usb_dump_desc.exit_crit_edge
  %retval.0.i = phi ptr [ %data_end.0, %if.end32.usb_dump_desc.exit_crit_edge ], [ %retval.0.i.i, %usb_dump_device_descriptor.exit.i.usb_dump_desc.exit_crit_edge ], [ %retval.0.i44.i, %usb_dump_device_strings.exit.i.usb_dump_desc.exit_crit_edge ], [ %retval.0.i54.i, %usb_dump_config.exit.i.usb_dump_desc.exit_crit_edge ]
  %cmp38 = icmp ugt ptr %retval.0.i, %add.ptr34
  br i1 %cmp38, label %if.then39, label %usb_dump_desc.exit.if.end42_crit_edge

usb_dump_desc.exit.if.end42_crit_edge:            ; preds = %usb_dump_desc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then39:                                        ; preds = %usb_dump_desc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %153 = call ptr @memcpy(ptr %retval.0.i, ptr @.str.6, i32 13)
  %add.ptr41 = getelementptr i8, ptr %retval.0.i, i32 12
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %usb_dump_desc.exit.if.end42_crit_edge
  %data_end.1 = phi ptr [ %add.ptr41, %if.then39 ], [ %retval.0.i, %usb_dump_desc.exit.if.end42_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %data_end.1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %call
  %conv = zext i32 %sub.ptr.sub to i64
  %154 = ptrtoint ptr %skip_bytes to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %skip_bytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %155, i64 %conv)
  %cmp43 = icmp slt i64 %155, %conv
  br i1 %cmp43, label %if.then45, label %if.else62

if.then45:                                        ; preds = %if.end42
  %156 = trunc i64 %155 to i32
  %conv47 = sub i32 %sub.ptr.sub, %156
  %157 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %nbytes, align 4
  %159 = tail call i32 @llvm.umin.i32(i32 %conv47, i32 %158)
  %160 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %buffer, align 4
  %add.ptr52 = getelementptr i8, ptr %2, i32 %156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp9.i.i = icmp slt i32 %159, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then45
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.then55_crit_edge, label %if.then27.i.i, !prof !114

land.rhs16.i.i.if.then55_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 230, i32 noundef 9, ptr noundef null) #5
  br label %if.then55

if.then.i.i.i:                                    ; preds = %if.then45
  tail call void @__check_object_size(ptr noundef %add.ptr52, i32 noundef %159, i1 noundef zeroext true) #5
  tail call void @__might_fault(ptr noundef nonnull @.str.38, i32 noundef 174) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %162 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %161, i32 %159, i32 -1226833920) #8, !srcloc !115
  %asmresult.i.i = extractvalue { i32, i32 } %162, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr52, i32 noundef %159) #5
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %161, ptr noundef %add.ptr52, i32 noundef %159) #5
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %159, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %159, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool54.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool54.not, label %if.end56, label %copy_to_user.exit.if.then55_crit_edge

copy_to_user.exit.if.then55_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then55

if.then55:                                        ; preds = %copy_to_user.exit.if.then55_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.then55_crit_edge
  tail call void @free_pages(i32 noundef %call, i32 noundef 1) #5
  br label %cleanup

if.end56:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  %163 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %nbytes, align 4
  %sub57 = sub i32 %164, %159
  store i32 %sub57, ptr %nbytes, align 4
  %conv58 = zext i32 %159 to i64
  %165 = ptrtoint ptr %file_offset to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %file_offset, align 8
  %add59 = add i64 %166, %conv58
  store i64 %add59, ptr %file_offset, align 8
  %167 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %buffer, align 4
  %add.ptr61 = getelementptr i8, ptr %168, i32 %159
  store ptr %add.ptr61, ptr %buffer, align 4
  br label %if.end65

if.else62:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %sub64 = sub i64 %155, %conv
  br label %if.end65

if.end65:                                         ; preds = %if.else62, %if.end56
  %storemerge = phi i64 [ %sub64, %if.else62 ], [ 0, %if.end56 ]
  %total_written.0 = phi i32 [ 0, %if.else62 ], [ %159, %if.end56 ]
  %169 = ptrtoint ptr %skip_bytes to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %storemerge, ptr %skip_bytes, align 8
  tail call void @free_pages(i32 noundef %call, i32 noundef 1) #5
  %call66 = tail call ptr @usb_hub_find_child(ptr noundef %usbdev, i32 noundef 1) #5
  %170 = ptrtoint ptr %maxchild to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %maxchild, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %171)
  %cmp68.not176 = icmp slt i32 %171, 1
  br i1 %cmp68.not176, label %if.end65.cleanup_crit_edge, label %for.body.lr.ph

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end65
  %add73 = add i32 %level, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %childdev.0181 = phi ptr [ %call66, %for.body.lr.ph ], [ %call84, %for.inc.for.body_crit_edge ]
  %total_written.1180 = phi i32 [ %total_written.0, %for.body.lr.ph ], [ %total_written.2, %for.inc.for.body_crit_edge ]
  %cnt.0179 = phi i32 [ 0, %for.body.lr.ph ], [ %cnt.1, %for.inc.for.body_crit_edge ]
  %chix.0177 = phi i32 [ 1, %for.body.lr.ph ], [ %inc83, %for.inc.for.body_crit_edge ]
  %tobool70.not = icmp eq ptr %childdev.0181, null
  br i1 %tobool70.not, label %for.body.for.inc_crit_edge, label %if.else72

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else72:                                        ; preds = %for.body
  %mutex.i = getelementptr inbounds %struct.usb_device, ptr %childdev.0181, i32 0, i32 15, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %sub74 = add i32 %chix.0177, -1
  %inc = add i32 %cnt.0179, 1
  %call75 = tail call fastcc i32 @usb_device_dump(ptr noundef %buffer, ptr noundef %nbytes, ptr noundef %skip_bytes, ptr noundef %file_offset, ptr noundef nonnull %childdev.0181, ptr noundef %bus, i32 noundef %add73, i32 noundef %sub74, i32 noundef %inc)
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %call75)
  %cmp77 = icmp eq i32 %call75, -14
  br i1 %cmp77, label %if.else72.cleanup_crit_edge, label %if.end80

if.else72.cleanup_crit_edge:                      ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end80:                                         ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #7
  %add81 = add i32 %call75, %total_written.1180
  br label %for.inc

for.inc:                                          ; preds = %if.end80, %for.body.for.inc_crit_edge
  %cnt.1 = phi i32 [ %inc, %if.end80 ], [ %cnt.0179, %for.body.for.inc_crit_edge ]
  %total_written.2 = phi i32 [ %add81, %if.end80 ], [ %total_written.1180, %for.body.for.inc_crit_edge ]
  %inc83 = add i32 %chix.0177, 1
  %call84 = tail call ptr @usb_hub_find_child(ptr noundef %usbdev, i32 noundef %inc83) #5
  %172 = ptrtoint ptr %maxchild to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %maxchild, align 4
  %cmp68.not = icmp sgt i32 %inc83, %173
  br i1 %cmp68.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else72.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.then55, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then55 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %total_written.0, %if.end65.cleanup_crit_edge ], [ %total_written.1180, %if.else72.cleanup_crit_edge ], [ %total_written.2, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_hub_find_child(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_decode_interval(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @usbfs_devices_fops, !1, !"usbfs_devices_fops", i1 false, i1 false}
!1 = !{!"../drivers/usb/core/devices.c", i32 590, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/core/devices.c", i32 470, i32 11}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/core/devices.c", i32 473, i32 11}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/core/devices.c", i32 476, i32 11}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/core/devices.c", i32 478, i32 11}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/core/devices.c", i32 480, i32 11}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/core/devices.c", i32 482, i32 11}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/core/devices.c", i32 521, i32 33}
!16 = !{ptr @format_topo, !17, !"format_topo", i1 false, i1 false}
!17 = !{!"../drivers/usb/core/devices.c", i32 53, i32 19}
!18 = !{ptr @format_bandwidth, !19, !"format_bandwidth", i1 false, i1 false}
!19 = !{!"../drivers/usb/core/devices.c", i32 71, i32 19}
!20 = !{ptr @format_device1, !21, !"format_device1", i1 false, i1 false}
!21 = !{!"../drivers/usb/core/devices.c", i32 75, i32 19}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/core/devices.c", i32 106, i32 28}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/core/devices.c", i32 107, i32 21}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/core/devices.c", i32 108, i32 20}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/core/devices.c", i32 109, i32 20}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/core/devices.c", i32 110, i32 24}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/core/devices.c", i32 111, i32 27}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/core/devices.c", i32 112, i32 23}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/core/devices.c", i32 113, i32 27}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/core/devices.c", i32 114, i32 20}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/core/devices.c", i32 115, i32 24}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/core/devices.c", i32 116, i32 21}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/core/devices.c", i32 117, i32 27}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/core/devices.c", i32 118, i32 21}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/core/devices.c", i32 119, i32 34}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/core/devices.c", i32 120, i32 27}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/core/devices.c", i32 121, i32 25}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/core/devices.c", i32 122, i32 32}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/core/devices.c", i32 123, i32 34}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/core/devices.c", i32 124, i32 20}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/core/devices.c", i32 125, i32 24}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/core/devices.c", i32 126, i32 27}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/core/devices.c", i32 127, i32 10}
!66 = !{ptr @clas_info, !67, !"clas_info", i1 false, i1 false}
!67 = !{!"../drivers/usb/core/devices.c", i32 104, i32 32}
!68 = !{ptr @format_device2, !69, !"format_device2", i1 false, i1 false}
!69 = !{!"../drivers/usb/core/devices.c", i32 79, i32 19}
!70 = !{ptr @format_string_manufacturer, !71, !"format_string_manufacturer", i1 false, i1 false}
!71 = !{!"../drivers/usb/core/devices.c", i32 57, i32 19}
!72 = !{ptr @format_string_product, !73, !"format_string_product", i1 false, i1 false}
!73 = !{!"../drivers/usb/core/devices.c", i32 61, i32 19}
!74 = !{ptr @format_string_serialnumber, !75, !"format_string_serialnumber", i1 false, i1 false}
!75 = !{!"../drivers/usb/core/devices.c", i32 66, i32 19}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/core/devices.c", i32 292, i32 33}
!78 = !{ptr @format_config, !79, !"format_config", i1 false, i1 false}
!79 = !{!"../drivers/usb/core/devices.c", i32 83, i32 19}
!80 = !{ptr @format_iad, !81, !"format_iad", i1 false, i1 false}
!81 = !{!"../drivers/usb/core/devices.c", i32 87, i32 19}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/core/devices.c", i32 197, i32 28}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/core/devices.c", i32 206, i32 7}
!86 = !{ptr @format_iface, !87, !"format_iface", i1 false, i1 false}
!87 = !{!"../drivers/usb/core/devices.c", i32 91, i32 19}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/core/devices.c", i32 159, i32 10}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/core/devices.c", i32 163, i32 10}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/core/devices.c", i32 166, i32 10}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/core/devices.c", i32 169, i32 10}
!96 = !{ptr @format_endpt, !97, !"format_endpt", i1 false, i1 false}
!97 = !{!"../drivers/usb/core/devices.c", i32 95, i32 19}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!100 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{!"branch_weights", i32 2000, i32 1}
!115 = !{i64 2152180001, i64 2152180026}
