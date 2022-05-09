; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/dt9812.c_pt.bc'
source_filename = "../drivers/comedi/drivers/dt9812.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.dt9812_private = type { %struct.mutex, %struct.anon.71, %struct.anon.71, i16 }
%struct.anon.71 = type { i8, i32 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.dt9812_usb_cmd = type { i32, %union.anon.72 }
%union.anon.72 = type { %struct.dt9812_flash_data, [24 x i8] }
%struct.dt9812_flash_data = type { i16, i16 }
%struct.dt9812_write_multi = type { i8, [13 x %struct.dt9812_write_byte] }
%struct.dt9812_write_byte = type { i8, i8 }

@__initcall__kmod_dt9812__243_923_dt9812_driver_init6 = internal global ptr @dt9812_driver_init, section ".initcall6.init", align 4
@dt9812_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @dt9812_detach, ptr @dt9812_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dt9812_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @dt9812_usb_probe, ptr @comedi_usb_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dt9812_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_dt9812_driver_exit = internal global ptr @dt9812_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author244 = internal constant [63 x i8] c"dt9812.author=Anders Blomdell <anders.blomdell@control.lth.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [40 x i8] c"dt9812.description=Comedi DT9812 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [42 x i8] c"dt9812.file=drivers/comedi/drivers/dt9812\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [19 x i8] c"dt9812.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt9812\00", [25 x i8] zeroinitializer }, align 32
@dt9812_auto_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&devpriv->mut\00", [18 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar2_5 = external dso_local constant %struct.comedi_lrange, align 4
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@dt9812_find_endpoints._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 694, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Wrong number of endpoints\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dt9812_find_endpoints\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/comedi/drivers/dt9812.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dt9812_find_endpoints._entry_ptr = internal global ptr @dt9812_find_endpoints._entry, section ".printk_index", align 4
@dt9812_find_endpoints._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 728, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Endpoint has wrong direction\0A\00", [34 x i8] zeroinitializer }, align 32
@dt9812_find_endpoints._entry_ptr.9 = internal global ptr @dt9812_find_endpoints._entry.7, section ".printk_index", align 4
@dt9812_reset_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 762, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to reset configuration\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dt9812_reset_device\00", [44 x i8] zeroinitializer }, align 32
@dt9812_reset_device._entry_ptr = internal global ptr @dt9812_reset_device._entry, section ".printk_index", align 4
@dt9812_reset_device._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 769, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read vendor id\0A\00", [38 x i8] zeroinitializer }, align 32
@dt9812_reset_device._entry_ptr.14 = internal global ptr @dt9812_reset_device._entry.12, section ".printk_index", align 4
@dt9812_reset_device._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.4, i32 776, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read product id\0A\00", [37 x i8] zeroinitializer }, align 32
@dt9812_reset_device._entry_ptr.17 = internal global ptr @dt9812_reset_device._entry.15, section ".printk_index", align 4
@dt9812_reset_device._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.4, i32 783, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read device id\0A\00", [38 x i8] zeroinitializer }, align 32
@dt9812_reset_device._entry_ptr.20 = internal global ptr @dt9812_reset_device._entry.18, section ".printk_index", align 4
@dt9812_reset_device._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.4, i32 790, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read serial number\0A\00", [34 x i8] zeroinitializer }, align 32
@dt9812_reset_device._entry_ptr.23 = internal global ptr @dt9812_reset_device._entry.21, section ".printk_index", align 4
@dt9812_reset_device._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.11, ptr @.str.4, i32 797, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"USB DT9812 (%4.4x.%4.4x.%4.4x) #0x%8.8x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dt9812_reset_device._entry_ptr.27 = internal global ptr @dt9812_reset_device._entry.24, section ".printk_index", align 4
@dt9812_reset_device._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.11, ptr @.str.4, i32 801, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unsupported device!\0A\00", [43 x i8] zeroinitializer }, align 32
@dt9812_reset_device._entry_ptr.30 = internal global ptr @dt9812_reset_device._entry.28, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.dt9812_analog_in.reg = private unnamed_addr constant [3 x i8] c"\E8\BF\BE", align 1
@dt9812_usb_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2151, i16 -26606, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"dt9812_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 898, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"dt9812_usb_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 917, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 899, i32 17 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 822, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 694, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 727, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 761, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 769, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 776, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 783, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 790, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 796, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 801, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"dt9812_usb_table\00", align 1
@___asan_gen_.121 = private constant [35 x i8] c"../drivers/comedi/drivers/dt9812.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 911, i32 35 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_dt9812_driver_exit, ptr @__initcall__kmod_dt9812__243_923_dt9812_driver_init6, ptr @dt9812_driver_exit, ptr @dt9812_find_endpoints._entry, ptr @dt9812_find_endpoints._entry.7, ptr @dt9812_find_endpoints._entry_ptr, ptr @dt9812_find_endpoints._entry_ptr.9, ptr @dt9812_reset_device._entry, ptr @dt9812_reset_device._entry.12, ptr @dt9812_reset_device._entry.15, ptr @dt9812_reset_device._entry.18, ptr @dt9812_reset_device._entry.21, ptr @dt9812_reset_device._entry.24, ptr @dt9812_reset_device._entry.28, ptr @dt9812_reset_device._entry_ptr, ptr @dt9812_reset_device._entry_ptr.14, ptr @dt9812_reset_device._entry_ptr.17, ptr @dt9812_reset_device._entry_ptr.20, ptr @dt9812_reset_device._entry_ptr.23, ptr @dt9812_reset_device._entry_ptr.27, ptr @dt9812_reset_device._entry_ptr.30, ptr @dt9812_driver, ptr @dt9812_usb_driver, ptr @.str, ptr @dt9812_auto_attach.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @dt9812_usb_table], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt9812_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt9812_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt9812_auto_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt9812_find_endpoints._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt9812_find_endpoints._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt9812_reset_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt9812_reset_device._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt9812_reset_device._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt9812_reset_device._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt9812_reset_device._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt9812_reset_device._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt9812_reset_device._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt9812_usb_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dt9812_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_usb_driver_register(ptr noundef nonnull @dt9812_driver, ptr noundef nonnull @dt9812_usb_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dt9812_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_usb_driver_unregister(ptr noundef nonnull @dt9812_driver, ptr noundef nonnull @dt9812_usb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_usb_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_usb_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dt9812_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #7
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_destroy(ptr noundef nonnull %1) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt9812_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  %tmp8.i = alloca i8, align 1
  %tmp16.i = alloca i16, align 2
  %tmp32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #7
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 112) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call1, ptr noundef nonnull @.str.1, ptr noundef nonnull @dt9812_auto_attach.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %call.i = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #7
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur_altsetting.i, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp.not.i = icmp eq i8 %4, 5
  br i1 %cmp.not.i, label %for.body.lr.ph.i, label %do.body.dt9812_find_endpoints.exit_crit_edge

do.body.dt9812_find_endpoints.exit_crit_edge:     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt9812_find_endpoints.exit

for.body.lr.ph.i:                                 ; preds = %do.body
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %2, i32 0, i32 3
  %cmd_rd.i = getelementptr inbounds %struct.dt9812_private, ptr %6, i32 0, i32 2
  %size16.i = getelementptr inbounds %struct.dt9812_private, ptr %6, i32 0, i32 2, i32 1
  %cmd_wr.i = getelementptr inbounds %struct.dt9812_private, ptr %6, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.dt9812_private, ptr %6, i32 0, i32 1, i32 1
  br label %for.body.i

for.cond.i:                                       ; preds = %sw.epilog.i
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %7 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bNumEndpoints.i, align 4
  %conv4.i = zext i8 %8 to i32
  %cmp5.i = icmp ult i32 %inc.i, %conv4.i
  br i1 %cmp5.i, label %for.cond.i.for.body.i_crit_edge, label %if.end5

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endpoint.i, align 4
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %10, i32 %i.057.i
  %11 = zext i32 %i.057.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.057.i, label %for.body.i.dt9812_find_endpoints.exit_crit_edge [
    i32 0, label %for.body.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb8.i
    i32 2, label %sw.bb11.i
    i32 3, label %sw.bb17.i
    i32 4, label %for.body.i.sw.epilog.i_crit_edge117
  ]

for.body.i.sw.epilog.i_crit_edge117:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

for.body.i.dt9812_find_endpoints.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt9812_find_endpoints.exit

sw.bb8.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %12 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bEndpointAddress.i, align 1
  %14 = ptrtoint ptr %cmd_wr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %cmd_wr.i, align 4
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 4
  %15 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %17 = and i16 %16, -249
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #7
  %and.i.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and.i.i, ptr %size.i, align 4
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %bEndpointAddress12.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %20 = ptrtoint ptr %bEndpointAddress12.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bEndpointAddress12.i, align 1
  %22 = ptrtoint ptr %cmd_rd.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %cmd_rd.i, align 4
  %wMaxPacketSize.i49.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 4
  %23 = ptrtoint ptr %wMaxPacketSize.i49.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %wMaxPacketSize.i49.i, align 1
  %25 = and i16 %24, -249
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #7
  %and.i50.i = zext i16 %26 to i32
  %27 = ptrtoint ptr %size16.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and.i50.i, ptr %size16.i, align 4
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb17.i, %sw.bb11.i, %sw.bb8.i, %for.body.i.sw.epilog.i_crit_edge, %for.body.i.sw.epilog.i_crit_edge117
  %dir.0.i = phi i32 [ 0, %sw.bb17.i ], [ 128, %sw.bb11.i ], [ 0, %sw.bb8.i ], [ 128, %for.body.i.sw.epilog.i_crit_edge ], [ 128, %for.body.i.sw.epilog.i_crit_edge117 ]
  %bEndpointAddress19.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %28 = ptrtoint ptr %bEndpointAddress19.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bEndpointAddress19.i, align 1
  %30 = and i8 %29, -128
  %and.i = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dir.0.i, i32 %and.i)
  %cmp21.not.i = icmp eq i32 %dir.0.i, %and.i
  br i1 %cmp21.not.i, label %for.cond.i, label %sw.epilog.i.dt9812_find_endpoints.exit_crit_edge

sw.epilog.i.dt9812_find_endpoints.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt9812_find_endpoints.exit

dt9812_find_endpoints.exit:                       ; preds = %sw.epilog.i.dt9812_find_endpoints.exit_crit_edge, %for.body.i.dt9812_find_endpoints.exit_crit_edge, %do.body.dt9812_find_endpoints.exit_crit_edge
  %.str.8.sink.i = phi ptr [ @.str.2, %do.body.dt9812_find_endpoints.exit_crit_edge ], [ @.str.8, %sw.epilog.i.dt9812_find_endpoints.exit_crit_edge ], [ @.str.8, %for.body.i.dt9812_find_endpoints.exit_crit_edge ]
  %class_dev27.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %31 = ptrtoint ptr %class_dev27.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %class_dev27.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull %.str.8.sink.i) #10
  br label %cleanup

if.end5:                                          ; preds = %for.cond.i
  %call.i108 = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #7
  %33 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp8.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp16.i) #7
  %35 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %tmp16.i, align 2, !annotation !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp32.i) #7
  %36 = ptrtoint ptr %tmp32.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %tmp32.i, align 4, !annotation !72
  %call1.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %tmp8.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end5.if.end9.i_crit_edge, label %if.then.i

if.end5.if.end9.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

if.then.i:                                        ; preds = %if.end5
  %call2.i = tail call i32 @usb_reset_configuration(ptr noundef %call.i108) #7
  %call3.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %tmp8.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then.i.if.end9.i_crit_edge, label %for.cond.i110

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.cond.i110:                                    ; preds = %if.then.i
  %call3.1.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %tmp8.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1.i)
  %cmp4.1.i = icmp eq i32 %call3.1.i, 0
  br i1 %cmp4.1.i, label %for.cond.i110.if.end9.i_crit_edge, label %for.cond.1.i

for.cond.i110.if.end9.i_crit_edge:                ; preds = %for.cond.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.cond.1.i:                                     ; preds = %for.cond.i110
  %call3.2.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %tmp8.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2.i)
  %cmp4.2.i = icmp eq i32 %call3.2.i, 0
  br i1 %cmp4.2.i, label %for.cond.1.i.if.end9.i_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end9.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call3.3.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %tmp8.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3.i)
  %cmp4.3.i = icmp eq i32 %call3.3.i, 0
  br i1 %cmp4.3.i, label %for.cond.2.i.if.end9.i_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end9.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call3.4.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %tmp8.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4.i)
  %cmp4.4.i = icmp eq i32 %call3.4.i, 0
  br i1 %cmp4.4.i, label %for.cond.3.i.if.end9.i_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end9.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %call3.5.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %tmp8.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.5.i)
  %cmp4.5.i = icmp eq i32 %call3.5.i, 0
  br i1 %cmp4.5.i, label %for.cond.4.i.if.end9.i_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end9.i_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %call3.6.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %tmp8.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.6.i)
  %cmp4.6.i = icmp eq i32 %call3.6.i, 0
  br i1 %cmp4.6.i, label %for.cond.5.i.if.end9.i_crit_edge, label %for.cond.6.i

for.cond.5.i.if.end9.i_crit_edge:                 ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %call3.7.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %tmp8.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.7.i)
  %cmp4.7.i = icmp eq i32 %call3.7.i, 0
  br i1 %cmp4.7.i, label %for.cond.6.i.if.end9.i_crit_edge, label %for.cond.7.i

for.cond.6.i.if.end9.i_crit_edge:                 ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %call3.8.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %tmp8.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.8.i)
  %cmp4.8.i = icmp eq i32 %call3.8.i, 0
  br i1 %cmp4.8.i, label %for.cond.7.i.if.end9.i_crit_edge, label %for.cond.8.i

for.cond.7.i.if.end9.i_crit_edge:                 ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %call3.9.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %tmp8.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.9.i)
  %cmp4.9.i = icmp eq i32 %call3.9.i, 0
  br i1 %cmp4.9.i, label %for.cond.8.i.if.end9.i_crit_edge, label %for.cond.9.i

for.cond.8.i.if.end9.i_crit_edge:                 ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

for.cond.9.i:                                     ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  br label %dt9812_reset_device.exit

if.end9.i:                                        ; preds = %for.cond.8.i.if.end9.i_crit_edge, %for.cond.7.i.if.end9.i_crit_edge, %for.cond.6.i.if.end9.i_crit_edge, %for.cond.5.i.if.end9.i_crit_edge, %for.cond.4.i.if.end9.i_crit_edge, %for.cond.3.i.if.end9.i_crit_edge, %for.cond.2.i.if.end9.i_crit_edge, %for.cond.1.i.if.end9.i_crit_edge, %for.cond.i110.if.end9.i_crit_edge, %if.then.i.if.end9.i_crit_edge, %if.end5.if.end9.i_crit_edge
  %call10.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %tmp16.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end17.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev16.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  br label %dt9812_reset_device.exit

if.end17.i:                                       ; preds = %if.end9.i
  %37 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tmp16.i, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #7
  %call18.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 3, ptr noundef nonnull %tmp16.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end25.i, label %do.end23.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev24.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  br label %dt9812_reset_device.exit

if.end25.i:                                       ; preds = %if.end17.i
  %40 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tmp16.i, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #7
  %call26.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 5, ptr noundef nonnull %tmp16.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end33.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev32.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  br label %dt9812_reset_device.exit

if.end33.i:                                       ; preds = %if.end25.i
  %43 = ptrtoint ptr %tmp16.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %tmp16.i, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #7
  %device.i = getelementptr inbounds %struct.dt9812_private, ptr %34, i32 0, i32 3
  %46 = ptrtoint ptr %device.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %device.i, align 4
  %call34.i = call fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef 7, ptr noundef nonnull %tmp32.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end41.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev40.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  br label %dt9812_reset_device.exit

if.end41.i:                                       ; preds = %if.end33.i
  %47 = ptrtoint ptr %tmp32.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tmp32.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  %class_dev45.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %50 = ptrtoint ptr %class_dev45.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %class_dev45.i, align 4
  %conv.i = zext i16 %39 to i32
  %conv46.i = zext i16 %42 to i32
  %52 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %device.i, align 4
  %conv48.i = zext i16 %53 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.25, i32 noundef %conv.i, i32 noundef %conv46.i, i32 noundef %conv48.i, i32 noundef %49) #10
  %54 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %device.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %55)
  %switch.i = icmp ult i16 %55, 2
  br i1 %switch.i, label %if.end9, label %if.end41.i.dt9812_reset_device.exit_crit_edge

if.end41.i.dt9812_reset_device.exit_crit_edge:    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt9812_reset_device.exit

dt9812_reset_device.exit:                         ; preds = %if.end41.i.dt9812_reset_device.exit_crit_edge, %do.end39.i, %do.end31.i, %do.end23.i, %do.end15.i, %for.cond.9.i
  %class_dev45.sink.i = phi ptr [ %class_dev40.i, %do.end39.i ], [ %class_dev32.i, %do.end31.i ], [ %class_dev24.i, %do.end23.i ], [ %class_dev16.i, %do.end15.i ], [ %class_dev.i, %for.cond.9.i ], [ %class_dev45.i, %if.end41.i.dt9812_reset_device.exit_crit_edge ]
  %.str.29.sink.i = phi ptr [ @.str.22, %do.end39.i ], [ @.str.19, %do.end31.i ], [ @.str.16, %do.end23.i ], [ @.str.13, %do.end15.i ], [ @.str.10, %for.cond.9.i ], [ @.str.29, %if.end41.i.dt9812_reset_device.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call34.i, %do.end39.i ], [ %call26.i, %do.end31.i ], [ %call18.i, %do.end23.i ], [ %call10.i, %do.end15.i ], [ %call3.9.i, %for.cond.9.i ], [ -22, %if.end41.i.dt9812_reset_device.exit_crit_edge ]
  %56 = ptrtoint ptr %class_dev45.sink.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %class_dev45.sink.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull %.str.29.sink.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp32.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp16.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8.i) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end41.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp32.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp16.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp8.i) #7
  %device = getelementptr inbounds %struct.dt9812_private, ptr %call1, i32 0, i32 3
  %58 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %59)
  %cmp = icmp eq i16 %59, 1
  %call11 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %60 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 4
  %63 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 65536, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 3
  %64 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 8, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 13
  %65 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 15
  %66 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %61, i32 0, i32 20
  %67 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @dt9812_di_insn_bits, ptr %insn_bits, align 4
  %68 = load ptr, ptr %subdevices, align 4
  %type17 = getelementptr %struct.comedi_subdevice, ptr %68, i32 1, i32 2
  %69 = ptrtoint ptr %type17 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 4, ptr %type17, align 4
  %subdev_flags18 = getelementptr %struct.comedi_subdevice, ptr %68, i32 1, i32 4
  %70 = ptrtoint ptr %subdev_flags18 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 131072, ptr %subdev_flags18, align 4
  %n_chan19 = getelementptr %struct.comedi_subdevice, ptr %68, i32 1, i32 3
  %71 = ptrtoint ptr %n_chan19 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 8, ptr %n_chan19, align 4
  %maxdata20 = getelementptr %struct.comedi_subdevice, ptr %68, i32 1, i32 13
  %72 = ptrtoint ptr %maxdata20 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %maxdata20, align 4
  %range_table21 = getelementptr %struct.comedi_subdevice, ptr %68, i32 1, i32 15
  %73 = ptrtoint ptr %range_table21 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @range_unipolar5, ptr %range_table21, align 4
  %insn_bits22 = getelementptr %struct.comedi_subdevice, ptr %68, i32 1, i32 20
  %74 = ptrtoint ptr %insn_bits22 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @dt9812_do_insn_bits, ptr %insn_bits22, align 4
  %75 = load ptr, ptr %subdevices, align 4
  %type25 = getelementptr %struct.comedi_subdevice, ptr %75, i32 2, i32 2
  %76 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %type25, align 4
  %subdev_flags26 = getelementptr %struct.comedi_subdevice, ptr %75, i32 2, i32 4
  %77 = ptrtoint ptr %subdev_flags26 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1114112, ptr %subdev_flags26, align 4
  %n_chan27 = getelementptr %struct.comedi_subdevice, ptr %75, i32 2, i32 3
  %78 = ptrtoint ptr %n_chan27 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 8, ptr %n_chan27, align 4
  %maxdata28 = getelementptr %struct.comedi_subdevice, ptr %75, i32 2, i32 13
  %79 = ptrtoint ptr %maxdata28 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 4095, ptr %maxdata28, align 4
  %cond = select i1 %cmp, ptr @range_unipolar2_5, ptr @range_bipolar10
  %range_table31 = getelementptr %struct.comedi_subdevice, ptr %75, i32 2, i32 15
  %80 = ptrtoint ptr %range_table31 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %cond, ptr %range_table31, align 4
  %insn_read = getelementptr %struct.comedi_subdevice, ptr %75, i32 2, i32 18
  %81 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @dt9812_ai_insn_read, ptr %insn_read, align 4
  %82 = load ptr, ptr %subdevices, align 4
  %arrayidx33 = getelementptr %struct.comedi_subdevice, ptr %82, i32 3
  %type34 = getelementptr %struct.comedi_subdevice, ptr %82, i32 3, i32 2
  %83 = ptrtoint ptr %type34 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %type34, align 4
  %subdev_flags35 = getelementptr %struct.comedi_subdevice, ptr %82, i32 3, i32 4
  %84 = ptrtoint ptr %subdev_flags35 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 131072, ptr %subdev_flags35, align 4
  %n_chan36 = getelementptr %struct.comedi_subdevice, ptr %82, i32 3, i32 3
  %85 = ptrtoint ptr %n_chan36 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %n_chan36, align 4
  %maxdata37 = getelementptr %struct.comedi_subdevice, ptr %82, i32 3, i32 13
  %86 = ptrtoint ptr %maxdata37 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 4095, ptr %maxdata37, align 4
  %range_table41 = getelementptr %struct.comedi_subdevice, ptr %82, i32 3, i32 15
  %87 = ptrtoint ptr %range_table41 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %cond, ptr %range_table41, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %82, i32 3, i32 19
  %88 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @dt9812_ao_insn_write, ptr %insn_write, align 4
  %insn_read42 = getelementptr %struct.comedi_subdevice, ptr %82, i32 3, i32 18
  %89 = ptrtoint ptr %insn_read42 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @dt9812_ao_insn_read, ptr %insn_read42, align 4
  %call43 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %for.cond.preheader, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end14
  %90 = ptrtoint ptr %n_chan36 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %n_chan36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp48115 = icmp sgt i32 %91, 0
  br i1 %cmp48115, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cond52 = select i1 %cmp, i32 0, i32 2048
  %readback = getelementptr %struct.comedi_subdevice, ptr %82, i32 3, i32 32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0116 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %92 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %readback, align 4
  %arrayidx53 = getelementptr i32, ptr %93, i32 %i.0116
  %94 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %cond52, ptr %arrayidx53, align 4
  %inc = add nuw nsw i32 %i.0116, 1
  %95 = ptrtoint ptr %n_chan36 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %n_chan36, align 4
  %cmp48 = icmp slt i32 %inc, %96
  br i1 %cmp48, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %dt9812_reset_device.exit, %dt9812_find_endpoints.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -19, %dt9812_find_endpoints.exit ], [ %retval.0.ph.i, %dt9812_reset_device.exit ], [ %call11, %if.end9.cleanup_crit_edge ], [ %call43, %if.end14.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_usb_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt9812_di_insn_bits(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %reg.i = alloca [2 x i8], align 2
  %value.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #7
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -20336, ptr %reg.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #7
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %value.i, align 1, !annotation !72
  %4 = getelementptr inbounds [2 x i8], ptr %value.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !72
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %call.i = call fastcc i32 @dt9812_read_multiple_registers(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull %reg.i, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %dt9812_digital_in.exit

dt9812_digital_in.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %1) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %value.i, align 1
  %8 = and i8 %7, 127
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %4, align 1
  %11 = shl i8 %10, 4
  %12 = and i8 %11, -128
  %or10.i = or i8 %12, %8
  tail call void @mutex_unlock(ptr noundef %1) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #7
  %conv = zext i8 %or10.i to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dt9812_digital_in.exit
  %retval.0 = phi i32 [ %15, %if.end ], [ %call.i, %dt9812_digital_in.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt9812_do_insn_bits(ptr noundef %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  %count.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #7
  %call.i.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #7
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i.i) #7
  %6 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %count.i.i, align 4, !annotation !72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 32) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.dt9812_digital_out.exit_crit_edge, label %if.end.i.i

if.then.dt9812_digital_out.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt9812_digital_out.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %1 to i8
  %8 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 83886080, ptr %call7.i.i.i.i, align 8
  %u.i.i = getelementptr inbounds %struct.dt9812_usb_cmd, ptr %call7.i.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %u.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.dt9812_write_multi, ptr %u.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %write.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -96, ptr %write.i.i, align 1
  %value12.i.i = getelementptr inbounds %struct.dt9812_usb_cmd, ptr %call7.i.i.i.i, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %value12.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %value12.i.i, align 2
  %cmd_wr.i.i = getelementptr inbounds %struct.dt9812_private, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %cmd_wr.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cmd_wr.i.i, align 4
  %conv13.i.i = zext i8 %13 to i32
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i.i, align 8
  %shl.i.i.i = shl i32 %15, 8
  %shl1.i.i.i = shl nuw nsw i32 %conv13.i.i, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or.i.i = or i32 %or.i.i.i, -1073741824
  %call15.i.i = call i32 @usb_bulk_msg(ptr noundef %call.i.i, i32 noundef %or.i.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 32, ptr noundef nonnull %count.i.i, i32 noundef 1000) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  br label %dt9812_digital_out.exit

dt9812_digital_out.exit:                          ; preds = %if.end.i.i, %if.then.dt9812_digital_out.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i.i) #7
  call void @mutex_unlock(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %dt9812_digital_out.exit, %entry.if.end_crit_edge
  %state2 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %16 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state2, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt9812_ai_insn_read(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %count.i.i = alloca i32, align 4
  %reg.i = alloca [3 x i8], align 1
  %val.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp18.not = icmp eq i32 %1, 0
  br i1 %cmp18.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = getelementptr inbounds [3 x i8], ptr %val.i, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %val.i, i32 0, i32 2
  %channel.tr.i.i = trunc i32 %3 to i8
  %conv2.i.i = shl i8 %channel.tr.i.i, 5
  %conv5.i.i = and i8 %channel.tr.i.i, 7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %val.019 = phi i16 [ 0, %for.body.lr.ph ], [ %val.1.ph, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %reg.i) #7
  %8 = call ptr @memcpy(ptr %reg.i, ptr @__const.dt9812_analog_in.reg, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val.i) #7
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %val.i, align 1, !annotation !72
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %4, align 1, !annotation !72
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %5, align 1, !annotation !72
  call void @mutex_lock_nested(ptr noundef %7, i32 noundef 0) #7
  %12 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private.i, align 4
  %device.i.i = getelementptr inbounds %struct.dt9812_private, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device.i.i, align 4
  %call.i.i = call ptr @comedi_to_usb_dev(ptr noundef %dev) #7
  %16 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i.i) #7
  %18 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %count.i.i, align 4, !annotation !72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 32) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %dt9812_rmw_multiple_registers.exit.thread.i, label %dt9812_rmw_multiple_registers.exit.i

dt9812_rmw_multiple_registers.exit.thread.i:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i.i) #7
  br label %dt9812_analog_in.exit

dt9812_rmw_multiple_registers.exit.i:             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.i = icmp eq i16 %15, 0
  %conv5.sink.i.i = select i1 %cmp.i.i, i8 %conv2.i.i, i8 %conv5.i.i
  %.sink.i.i = select i1 %cmp.i.i, i8 -32, i8 -1
  %rmw.sroa.9.0.i = select i1 %cmp.i.i, i8 -112, i8 -69
  %spec.select.i.i = zext i1 %cmp.i.i to i8
  %20 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 117440512, ptr %call7.i.i.i.i, align 8
  %u.i.i = getelementptr inbounds %struct.dt9812_usb_cmd, ptr %call7.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %u.i.i, align 4
  %uglygep.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 5
  %22 = ptrtoint ptr %uglygep.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -68, ptr %uglygep.i.i, align 1
  %rmw.sroa.5.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 6
  %23 = ptrtoint ptr %rmw.sroa.5.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 7, ptr %rmw.sroa.5.0.uglygep.i.sroa_idx.i, align 2
  %rmw.sroa.7.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 7
  %24 = ptrtoint ptr %rmw.sroa.7.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %spec.select.i.i, ptr %rmw.sroa.7.0.uglygep.i.sroa_idx.i, align 1
  %rmw.sroa.9.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 8
  %25 = ptrtoint ptr %rmw.sroa.9.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %rmw.sroa.9.0.i, ptr %rmw.sroa.9.0.uglygep.i.sroa_idx.i, align 8
  %rmw.sroa.12.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 9
  %26 = ptrtoint ptr %rmw.sroa.12.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink.i.i, ptr %rmw.sroa.12.0.uglygep.i.sroa_idx.i, align 1
  %rmw.sroa.14.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 10
  %27 = ptrtoint ptr %rmw.sroa.14.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv5.sink.i.i, ptr %rmw.sroa.14.0.uglygep.i.sroa_idx.i, align 2
  %rmw.sroa.16.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 11
  %28 = ptrtoint ptr %rmw.sroa.16.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -24, ptr %rmw.sroa.16.0.uglygep.i.sroa_idx.i, align 1
  %rmw.sroa.18.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 12
  %29 = ptrtoint ptr %rmw.sroa.18.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %rmw.sroa.18.0.uglygep.i.sroa_idx.i, align 4
  %rmw.sroa.20.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 13
  %30 = ptrtoint ptr %rmw.sroa.20.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -112, ptr %rmw.sroa.20.0.uglygep.i.sroa_idx.i, align 1
  %cmd_wr.i.i = getelementptr inbounds %struct.dt9812_private, ptr %17, i32 0, i32 1
  %31 = ptrtoint ptr %cmd_wr.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cmd_wr.i.i, align 4
  %conv8.i.i = zext i8 %32 to i32
  %33 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call.i.i, align 8
  %shl.i.i.i = shl i32 %34, 8
  %shl1.i.i.i = shl nuw nsw i32 %conv8.i.i, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or.i.i = or i32 %or.i.i.i, -1073741824
  %call10.i.i = call i32 @usb_bulk_msg(ptr noundef %call.i.i, i32 noundef %or.i.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 32, ptr noundef nonnull %count.i.i, i32 noundef 1000) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool.not.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dt9812_rmw_multiple_registers.exit.i.dt9812_analog_in.exit_crit_edge

dt9812_rmw_multiple_registers.exit.i.dt9812_analog_in.exit_crit_edge: ; preds = %dt9812_rmw_multiple_registers.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt9812_analog_in.exit

if.end.i:                                         ; preds = %dt9812_rmw_multiple_registers.exit.i
  %call7.i = call fastcc i32 @dt9812_read_multiple_registers(ptr noundef %dev, i32 noundef 3, ptr noundef nonnull %reg.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i.dt9812_analog_in.exit_crit_edge

if.end.i.dt9812_analog_in.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dt9812_analog_in.exit

if.end10.i:                                       ; preds = %if.end.i
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %val.i, align 1
  %37 = and i8 %36, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %37)
  %cmp.i = icmp eq i8 %37, 32
  br i1 %cmp.i, label %if.then13.i, label %if.end10.i.if.end_crit_edge

if.end10.i.if.end_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then13.i:                                      ; preds = %if.end10.i
  %device.i = getelementptr inbounds %struct.dt9812_private, ptr %7, i32 0, i32 3
  %38 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %device.i, align 4
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %39, label %if.then13.i.if.end_crit_edge [
    i16 0, label %sw.bb.i
    i16 1, label %sw.bb20.i
  ]

if.then13.i.if.end_crit_edge:                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb.i:                                          ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %4, align 1
  %conv16.i = zext i8 %42 to i16
  %shl.i = shl nuw i16 %conv16.i, 8
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %5, align 1
  %conv18.i = zext i8 %44 to i16
  %or.i = or i16 %shl.i, %conv18.i
  %add.i = add i16 %or.i, 2048
  br label %if.end

sw.bb20.i:                                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %4, align 1
  %conv22.i = zext i8 %46 to i16
  %shl23.i = shl nuw i16 %conv22.i, 8
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %5, align 1
  %conv25.i = zext i8 %48 to i16
  %or26.i = or i16 %shl23.i, %conv25.i
  br label %if.end

dt9812_analog_in.exit:                            ; preds = %if.end.i.dt9812_analog_in.exit_crit_edge, %dt9812_rmw_multiple_registers.exit.i.dt9812_analog_in.exit_crit_edge, %dt9812_rmw_multiple_registers.exit.thread.i
  %ret.0.i = phi i32 [ -12, %dt9812_rmw_multiple_registers.exit.thread.i ], [ %call7.i, %if.end.i.dt9812_analog_in.exit_crit_edge ], [ %call10.i.i, %dt9812_rmw_multiple_registers.exit.i.dt9812_analog_in.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %7) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %reg.i) #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb20.i, %sw.bb.i, %if.then13.i.if.end_crit_edge, %if.end10.i.if.end_crit_edge
  %val.1.ph = phi i16 [ %val.019, %if.end10.i.if.end_crit_edge ], [ %add.i, %sw.bb.i ], [ %or26.i, %sw.bb20.i ], [ %val.019, %if.then13.i.if.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %7) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %reg.i) #7
  %conv = zext i16 %val.1.ph to i32
  %arrayidx = getelementptr i32, ptr %data, i32 %i.020
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.020, 1
  %50 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %51
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %dt9812_analog_in.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %dt9812_analog_in.exit ], [ 0, %entry.cleanup_crit_edge ], [ %51, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt9812_ao_insn_write(ptr noundef %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %count.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not = icmp eq i32 %3, 0
  br i1 %cmp18.not, label %entry.cleanup4_crit_edge, label %for.body.lr.ph

entry.cleanup4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup4

for.body.lr.ph:                                   ; preds = %entry
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %trunc = trunc i32 %1 to i16
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.019
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 4
  call void @mutex_lock_nested(ptr noundef %7, i32 noundef 0) #7
  %8 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %trunc, label %for.body.sw.epilog.i_crit_edge [
    i16 0, label %sw.bb.i
    i16 1, label %sw.bb19.i
  ]

for.body.sw.epilog.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv7.i = trunc i32 %5 to i8
  %9 = lshr i32 %5, 8
  %10 = trunc i32 %9 to i8
  %conv16.i = and i8 %10, 15
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv32.i = trunc i32 %5 to i8
  %11 = lshr i32 %5, 8
  %12 = trunc i32 %11 to i8
  %conv42.i = and i8 %12, 15
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb19.i, %sw.bb.i, %for.body.sw.epilog.i_crit_edge
  %rmw.sroa.27.0.i = phi i8 [ -1, %for.body.sw.epilog.i_crit_edge ], [ %conv42.i, %sw.bb19.i ], [ %conv16.i, %sw.bb.i ]
  %rmw.sroa.21.0.i = phi i8 [ -1, %for.body.sw.epilog.i_crit_edge ], [ -42, %sw.bb19.i ], [ -45, %sw.bb.i ]
  %rmw.sroa.18.0.i = phi i8 [ -1, %for.body.sw.epilog.i_crit_edge ], [ %conv32.i, %sw.bb19.i ], [ %conv7.i, %sw.bb.i ]
  %rmw.sroa.12.0.i = phi i8 [ -1, %for.body.sw.epilog.i_crit_edge ], [ -43, %sw.bb19.i ], [ -46, %sw.bb.i ]
  %rmw.sroa.9.0.i = phi i8 [ -1, %for.body.sw.epilog.i_crit_edge ], [ -128, %sw.bb19.i ], [ -128, %sw.bb.i ]
  %rmw.sroa.0.0.i = phi i8 [ -1, %for.body.sw.epilog.i_crit_edge ], [ -41, %sw.bb19.i ], [ -44, %sw.bb.i ]
  %call.i.i = call ptr @comedi_to_usb_dev(ptr noundef %dev) #7
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i.i) #7
  %15 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %count.i.i, align 4, !annotation !72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 32) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %dt9812_analog_out.exit.thread, label %dt9812_analog_out.exit

dt9812_analog_out.exit.thread:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i.i) #7
  call void @mutex_unlock(ptr noundef %7) #7
  br label %cleanup4

dt9812_analog_out.exit:                           ; preds = %sw.epilog.i
  %17 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 117440512, ptr %call7.i.i.i.i, align 8
  %u.i.i = getelementptr inbounds %struct.dt9812_usb_cmd, ptr %call7.i.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %u.i.i, align 4
  %uglygep.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 5
  %19 = ptrtoint ptr %uglygep.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %rmw.sroa.0.0.i, ptr %uglygep.i.i, align 1
  %rmw.sroa.6.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 6
  %20 = ptrtoint ptr %rmw.sroa.6.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %rmw.sroa.6.0.uglygep.i.sroa_idx.i, align 2
  %rmw.sroa.9.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 7
  %21 = ptrtoint ptr %rmw.sroa.9.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %rmw.sroa.9.0.i, ptr %rmw.sroa.9.0.uglygep.i.sroa_idx.i, align 1
  %rmw.sroa.12.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 8
  %22 = ptrtoint ptr %rmw.sroa.12.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %rmw.sroa.12.0.i, ptr %rmw.sroa.12.0.uglygep.i.sroa_idx.i, align 8
  %rmw.sroa.15.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 9
  %23 = ptrtoint ptr %rmw.sroa.15.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %rmw.sroa.15.0.uglygep.i.sroa_idx.i, align 1
  %rmw.sroa.18.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 10
  %24 = ptrtoint ptr %rmw.sroa.18.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %rmw.sroa.18.0.i, ptr %rmw.sroa.18.0.uglygep.i.sroa_idx.i, align 2
  %rmw.sroa.21.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 11
  %25 = ptrtoint ptr %rmw.sroa.21.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %rmw.sroa.21.0.i, ptr %rmw.sroa.21.0.uglygep.i.sroa_idx.i, align 1
  %rmw.sroa.24.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 12
  %26 = ptrtoint ptr %rmw.sroa.24.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %rmw.sroa.24.0.uglygep.i.sroa_idx.i, align 4
  %rmw.sroa.27.0.uglygep.i.sroa_idx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 13
  %27 = ptrtoint ptr %rmw.sroa.27.0.uglygep.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %rmw.sroa.27.0.i, ptr %rmw.sroa.27.0.uglygep.i.sroa_idx.i, align 1
  %cmd_wr.i.i = getelementptr inbounds %struct.dt9812_private, ptr %14, i32 0, i32 1
  %28 = ptrtoint ptr %cmd_wr.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cmd_wr.i.i, align 4
  %conv8.i.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call.i.i, align 8
  %shl.i.i.i = shl i32 %31, 8
  %shl1.i.i.i = shl nuw nsw i32 %conv8.i.i, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or.i.i = or i32 %or.i.i.i, -1073741824
  %call10.i.i = call i32 @usb_bulk_msg(ptr noundef %call.i.i, i32 noundef %or.i.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 32, ptr noundef nonnull %count.i.i, i32 noundef 1000) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i.i) #7
  call void @mutex_unlock(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool.not = icmp eq i32 %call10.i.i, 0
  br i1 %tobool.not, label %for.inc, label %dt9812_analog_out.exit.cleanup4_crit_edge

dt9812_analog_out.exit.cleanup4_crit_edge:        ; preds = %dt9812_analog_out.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup4

for.inc:                                          ; preds = %dt9812_analog_out.exit
  %32 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %readback, align 4
  %arrayidx1 = getelementptr i32, ptr %33, i32 %and
  %34 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %5, ptr %arrayidx1, align 4
  %inc = add nuw i32 %i.019, 1
  %35 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup4_crit_edge

for.inc.cleanup4_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup4

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup4:                                         ; preds = %for.inc.cleanup4_crit_edge, %dt9812_analog_out.exit.cleanup4_crit_edge, %dt9812_analog_out.exit.thread, %entry.cleanup4_crit_edge
  %retval.2 = phi i32 [ -12, %dt9812_analog_out.exit.thread ], [ 0, %entry.cleanup4_crit_edge ], [ %36, %for.inc.cleanup4_crit_edge ], [ %call10.i.i, %dt9812_analog_out.exit.cleanup4_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt9812_ao_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %call = tail call i32 @comedi_readback_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #7
  tail call void @mutex_unlock(ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_usb_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dt9812_read_info(ptr noundef %dev, i32 noundef %offset, ptr nocapture noundef writeonly %buf, i32 noundef %buf_size) unnamed_addr #2 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #7
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %count, align 4, !annotation !72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %call7.i.i, align 8
  %5 = trunc i32 %offset to i16
  %conv = add i16 %5, -1025
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %u = getelementptr inbounds %struct.dt9812_usb_cmd, ptr %call7.i.i, i32 0, i32 1
  %address = getelementptr inbounds %struct.dt9812_usb_cmd, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %address to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %address, align 2
  %conv3 = trunc i32 %buf_size to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv3)
  %9 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %u, align 4
  %cmd_wr = getelementptr inbounds %struct.dt9812_private, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %cmd_wr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cmd_wr, align 4
  %conv5 = zext i8 %11 to i32
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call, align 8
  %shl.i = shl i32 %13, 8
  %shl1.i = shl nuw nsw i32 %conv5, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %call7 = call i32 @usb_bulk_msg(ptr noundef %call, i32 noundef %or, ptr noundef nonnull %call7.i.i, i32 noundef 32, ptr noundef nonnull %count, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %if.end
  %cmd_rd = getelementptr inbounds %struct.dt9812_private, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %cmd_rd to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cmd_rd, align 4
  %conv12 = zext i8 %15 to i32
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call, align 8
  %shl.i50 = shl i32 %17, 8
  %shl1.i51 = shl nuw nsw i32 %conv12, 15
  %or.i52 = or i32 %shl1.i51, %shl.i50
  %or15 = or i32 %or.i52, -1073741696
  %call16 = call i32 @usb_bulk_msg(ptr noundef %call, i32 noundef %or15, ptr noundef nonnull %call7.i.i, i32 noundef %buf_size, ptr noundef nonnull %count, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then18:                                        ; preds = %if.end10
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %buf_size)
  %cmp19 = icmp eq i32 %19, %buf_size
  br i1 %cmp19, label %if.then21, label %if.then18.out_crit_edge

if.then18.out_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %20 = call ptr @memcpy(ptr %buf, ptr %call7.i.i, i32 %buf_size)
  br label %out

out:                                              ; preds = %if.then21, %if.then18.out_crit_edge, %if.end10.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end.out_crit_edge ], [ %call16, %if.end10.out_crit_edge ], [ 0, %if.then21 ], [ -121, %if.then18.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_configuration(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dt9812_read_multiple_registers(ptr noundef %dev, i32 noundef %reg_count, ptr nocapture noundef readonly %address, ptr nocapture noundef writeonly %value) unnamed_addr #2 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #7
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #7
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %count, align 4, !annotation !72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 67108864, ptr %call7.i.i, align 8
  %conv = trunc i32 %reg_count to i8
  %u = getelementptr inbounds %struct.dt9812_usb_cmd, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_count)
  %cmp462 = icmp sgt i32 %reg_count, 0
  br i1 %cmp462, label %for.body.preheader, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 5
  %6 = call ptr @memcpy(ptr %uglygep, ptr %address, i32 %reg_count)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %if.end.for.end_crit_edge
  %cmd_wr = getelementptr inbounds %struct.dt9812_private, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %cmd_wr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cmd_wr, align 4
  %conv9 = zext i8 %8 to i32
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call, align 8
  %shl.i = shl i32 %10, 8
  %shl1.i = shl nuw nsw i32 %conv9, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %call11 = call i32 @usb_bulk_msg(ptr noundef %call, i32 noundef %or, ptr noundef nonnull %call7.i.i, i32 noundef 32, ptr noundef nonnull %count, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end14:                                         ; preds = %for.end
  %cmd_rd = getelementptr inbounds %struct.dt9812_private, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %cmd_rd to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cmd_rd, align 4
  %conv16 = zext i8 %12 to i32
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call, align 8
  %shl.i59 = shl i32 %14, 8
  %shl1.i60 = shl nuw nsw i32 %conv16, 15
  %or.i61 = or i32 %shl1.i60, %shl.i59
  %or19 = or i32 %or.i61, -1073741696
  %call20 = call i32 @usb_bulk_msg(ptr noundef %call, i32 noundef %or19, ptr noundef nonnull %call7.i.i, i32 noundef %reg_count, ptr noundef nonnull %count, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then22:                                        ; preds = %if.end14
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %reg_count)
  %cmp23 = icmp eq i32 %16, %reg_count
  br i1 %cmp23, label %if.then25, label %if.then22.out_crit_edge

if.then22.out_crit_edge:                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %17 = call ptr @memcpy(ptr %value, ptr %call7.i.i, i32 %reg_count)
  br label %out

out:                                              ; preds = %if.then25, %if.then22.out_crit_edge, %if.end14.out_crit_edge, %for.end.out_crit_edge
  %ret.0 = phi i32 [ %call11, %for.end.out_crit_edge ], [ %call20, %if.end14.out_crit_edge ], [ 0, %if.then25 ], [ -121, %if.then22.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_readback_insn_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt9812_usb_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %call = tail call i32 @comedi_usb_auto_config(ptr noundef %intf, ptr noundef nonnull @dt9812_driver, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_usb_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_usb_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_dt9812__243_923_dt9812_driver_init6, !1, !"__initcall__kmod_dt9812__243_923_dt9812_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/dt9812.c", i32 923, i32 1}
!2 = !{ptr @__exitcall_dt9812_driver_exit, !1, !"__exitcall_dt9812_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author244, !4, !"__UNIQUE_ID_author244", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/dt9812.c", i32 925, i32 1}
!5 = !{ptr @__UNIQUE_ID_description245, !6, !"__UNIQUE_ID_description245", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/dt9812.c", i32 926, i32 1}
!7 = !{ptr @__UNIQUE_ID_file246, !8, !"__UNIQUE_ID_file246", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/dt9812.c", i32 927, i32 1}
!9 = !{ptr @__UNIQUE_ID_license247, !8, !"__UNIQUE_ID_license247", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/dt9812.c", i32 899, i32 17}
!12 = !{ptr @dt9812_driver, !13, !"dt9812_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/dt9812.c", i32 898, i32 29}
!14 = !{ptr @dt9812_auto_attach.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/dt9812.c", i32 822, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/comedi/drivers/dt9812.c", i32 694, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dt9812_find_endpoints._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @dt9812_find_endpoints._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/comedi/drivers/dt9812.c", i32 727, i32 4}
!27 = !{ptr @dt9812_find_endpoints._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @dt9812_find_endpoints._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/comedi/drivers/dt9812.c", i32 761, i32 4}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dt9812_reset_device._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @dt9812_reset_device._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/dt9812.c", i32 769, i32 3}
!36 = !{ptr @dt9812_reset_device._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dt9812_reset_device._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/dt9812.c", i32 776, i32 3}
!40 = !{ptr @dt9812_reset_device._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @dt9812_reset_device._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/dt9812.c", i32 783, i32 3}
!44 = !{ptr @dt9812_reset_device._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dt9812_reset_device._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/dt9812.c", i32 790, i32 3}
!48 = !{ptr @dt9812_reset_device._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dt9812_reset_device._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/comedi/drivers/dt9812.c", i32 796, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @dt9812_reset_device._entry.24, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @dt9812_reset_device._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/comedi/drivers/dt9812.c", i32 801, i32 3}
!57 = !{ptr @dt9812_reset_device._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @dt9812_reset_device._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @dt9812_usb_driver, !60, !"dt9812_usb_driver", i1 false, i1 false}
!60 = !{!"../drivers/comedi/drivers/dt9812.c", i32 917, i32 26}
!61 = !{ptr @dt9812_usb_table, !62, !"dt9812_usb_table", i1 false, i1 false}
!62 = !{!"../drivers/comedi/drivers/dt9812.c", i32 911, i32 35}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"auto-init"}
