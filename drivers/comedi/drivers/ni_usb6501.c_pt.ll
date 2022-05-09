; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ni_usb6501.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ni_usb6501.c"
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
%struct.ni6501_private = type { ptr, ptr, %struct.mutex, ptr, ptr }
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
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_ni_usb6501__239_607_ni6501_driver_init6 = internal global ptr @ni6501_driver_init, section ".initcall6.init", align 4
@ni6501_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @ni6501_detach, ptr @ni6501_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ni6501_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ni6501_usb_probe, ptr @comedi_usb_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ni6501_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ni6501_driver_exit = internal global ptr @ni6501_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [30 x i8] c"ni_usb6501.author=Luca Ellero\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [71 x i8] c"ni_usb6501.description=Comedi driver for National Instruments USB-6501\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [50 x i8] c"ni_usb6501.file=drivers/comedi/drivers/ni_usb6501\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [23 x i8] c"ni_usb6501.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ni6501\00", [25 x i8] zeroinitializer }, align 32
@ni6501_auto_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&devpriv->mut\00", [18 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@ni6501_find_endpoints._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 484, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Wrong number of endpoints\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ni6501_find_endpoints\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/comedi/drivers/ni_usb6501.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ni6501_find_endpoints._entry_ptr = internal global ptr @ni6501_find_endpoints._entry, section ".printk_index", align 4
@READ_PORT_REQUEST = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\01\00\10\00\0C\01\0E\02\10\00\00\00\03\00\00", [16 x i8] zeroinitializer }, align 32
@WRITE_PORT_REQUEST = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\00\01\00\14\00\10\01\0F\02\10\00\00\00\03\00\00\03\00\00\00", [44 x i8] zeroinitializer }, align 32
@SET_PORT_DIR_REQUEST = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00\01\00\18\00\14\01\12\02\10\00\00\00\05\00\00\00\00\05\00\00\00\00\00", [40 x i8] zeroinitializer }, align 32
@READ_PORT_RESPONSE = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\01\00\10\00\0C\01\00\00\00\00\02\00\03\00\00", [16 x i8] zeroinitializer }, align 32
@GENERIC_RESPONSE = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\01\00\0C\00\08\01\00\00\00\00\02", [20 x i8] zeroinitializer }, align 32
@START_COUNTER_REQUEST = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\01\00\0C\00\08\01\09\02 \00\00", [20 x i8] zeroinitializer }, align 32
@STOP_COUNTER_REQUEST = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\01\00\0C\00\08\01\0C\02 \00\00", [20 x i8] zeroinitializer }, align 32
@READ_COUNTER_REQUEST = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\01\00\0C\00\08\01\0E\02 \00\00", [20 x i8] zeroinitializer }, align 32
@WRITE_COUNTER_REQUEST = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\01\00\10\00\0C\01\0F\02 \00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@READ_COUNTER_RESPONSE = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\01\00\10\00\0C\01\00\00\00\00\02\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@ni6501_usb_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 14627, i16 29066, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 31, i64 32, i64 34]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"ni6501_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 582, i32 29 }
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"ni6501_usb_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 601, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 584, i32 17 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 528, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 484, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"READ_PORT_REQUEST\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 95, i32 17 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"WRITE_PORT_REQUEST\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 100, i32 17 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"SET_PORT_DIR_REQUEST\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 106, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"READ_PORT_RESPONSE\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 136, i32 17 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"GENERIC_RESPONSE\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 132, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"START_COUNTER_REQUEST\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 114, i32 17 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"STOP_COUNTER_REQUEST\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 118, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"READ_COUNTER_REQUEST\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 122, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"WRITE_COUNTER_REQUEST\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 126, i32 17 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"READ_COUNTER_RESPONSE\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 141, i32 17 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"ni6501_usb_table\00", align 1
@___asan_gen_.73 = private constant [39 x i8] c"../drivers/comedi/drivers/ni_usb6501.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 595, i32 35 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_ni6501_driver_exit, ptr @__initcall__kmod_ni_usb6501__239_607_ni6501_driver_init6, ptr @ni6501_driver_exit, ptr @ni6501_find_endpoints._entry, ptr @ni6501_find_endpoints._entry_ptr, ptr @ni6501_driver, ptr @ni6501_usb_driver, ptr @.str, ptr @ni6501_auto_attach.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @READ_PORT_REQUEST, ptr @WRITE_PORT_REQUEST, ptr @SET_PORT_DIR_REQUEST, ptr @READ_PORT_RESPONSE, ptr @GENERIC_RESPONSE, ptr @START_COUNTER_REQUEST, ptr @STOP_COUNTER_REQUEST, ptr @READ_COUNTER_REQUEST, ptr @WRITE_COUNTER_REQUEST, ptr @READ_COUNTER_RESPONSE, ptr @ni6501_usb_table], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni6501_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni6501_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni6501_auto_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni6501_find_endpoints._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @READ_PORT_REQUEST to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WRITE_PORT_REQUEST to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SET_PORT_DIR_REQUEST to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @READ_PORT_RESPONSE to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @GENERIC_RESPONSE to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @START_COUNTER_REQUEST to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @STOP_COUNTER_REQUEST to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @READ_COUNTER_REQUEST to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @WRITE_COUNTER_REQUEST to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @READ_COUNTER_RESPONSE to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni6501_usb_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ni6501_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_usb_driver_register(ptr noundef nonnull @ni6501_driver, ptr noundef nonnull @ni6501_usb_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ni6501_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @comedi_usb_driver_unregister(ptr noundef nonnull @ni6501_driver, ptr noundef nonnull @ni6501_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_usb_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_usb_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ni6501_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #8
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mut = getelementptr inbounds %struct.ni6501_private, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %mut) #8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %usb_rx_buf = getelementptr inbounds %struct.ni6501_private, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %usb_rx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_rx_buf, align 4
  tail call void @kfree(ptr noundef %4) #8
  %usb_tx_buf = getelementptr inbounds %struct.ni6501_private, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_tx_buf, align 4
  tail call void @kfree(ptr noundef %6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni6501_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #8
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 108) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %mut = getelementptr inbounds %struct.ni6501_private, ptr %call1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mut, ptr noundef nonnull @.str.1, ptr noundef nonnull @ni6501_auto_attach.__key) #8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %call.i = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #8
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private.i, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.not.i = icmp eq i8 %6, 2
  br i1 %cmp.not.i, label %for.body.lr.ph.i, label %do.end.i

for.body.lr.ph.i:                                 ; preds = %do.body
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %4, i32 0, i32 3
  %ep_tx.i = getelementptr inbounds %struct.ni6501_private, ptr %2, i32 0, i32 1
  br label %for.body.i

do.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2) #11
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.071.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %endpoint.i, align 4
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %10, i32 %i.071.i
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 3
  %11 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bmAttributes.i.i.i, align 1
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.i.not.i.i = icmp eq i8 %13, 2
  br i1 %cmp.i.not.i.i, label %usb_endpoint_is_bulk_in.exit.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

usb_endpoint_is_bulk_in.exit.i:                   ; preds = %for.body.i
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %14 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool.not.i = icmp sgt i8 %15, -1
  br i1 %tobool.not.i, label %if.then17.i, label %if.then9.i

if.then9.i:                                       ; preds = %usb_endpoint_is_bulk_in.exit.i
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %2, align 4
  %tobool10.not.i = icmp eq ptr %17, null
  br i1 %tobool10.not.i, label %if.then9.i.for.inc.sink.split.i_crit_edge, label %if.then9.i.for.inc.i_crit_edge

if.then9.i.for.inc.i_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then9.i.for.inc.sink.split.i_crit_edge:        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.i

if.then17.i:                                      ; preds = %usb_endpoint_is_bulk_in.exit.i
  %18 = ptrtoint ptr %ep_tx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ep_tx.i, align 4
  %tobool18.not.i = icmp eq ptr %19, null
  br i1 %tobool18.not.i, label %if.then17.i.for.inc.sink.split.i_crit_edge, label %if.then17.i.for.inc.i_crit_edge

if.then17.i.for.inc.i_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then17.i.for.inc.sink.split.i_crit_edge:       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.then17.i.for.inc.sink.split.i_crit_edge, %if.then9.i.for.inc.sink.split.i_crit_edge
  %ep_tx.sink.i = phi ptr [ %2, %if.then9.i.for.inc.sink.split.i_crit_edge ], [ %ep_tx.i, %if.then17.i.for.inc.sink.split.i_crit_edge ]
  %20 = ptrtoint ptr %ep_tx.sink.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.i, ptr %ep_tx.sink.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.then17.i.for.inc.i_crit_edge, %if.then9.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.071.i, 1
  %21 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bNumEndpoints.i, align 4
  %conv4.i = zext i8 %22 to i32
  %cmp5.i = icmp ult i32 %inc.i, %conv4.i
  br i1 %cmp5.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %2, align 4
  %tobool24.not.i = icmp eq ptr %24, null
  br i1 %tobool24.not.i, label %for.end.i.cleanup_crit_edge, label %lor.lhs.false.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %for.end.i
  %25 = ptrtoint ptr %ep_tx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ep_tx.i, align 4
  %tobool26.not.i = icmp eq ptr %26, null
  br i1 %tobool26.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end28.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28.i:                                       ; preds = %lor.lhs.false.i
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %29 = and i16 %28, -249
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %30)
  %cmp31.i = icmp ult i16 %30, 16
  br i1 %cmp31.i, label %if.end28.i.cleanup_crit_edge, label %if.end34.i

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34.i:                                       ; preds = %if.end28.i
  %wMaxPacketSize.i65.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %26, i32 0, i32 4
  %31 = ptrtoint ptr %wMaxPacketSize.i65.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %wMaxPacketSize.i65.i, align 1
  %33 = and i16 %32, -249
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %34)
  %cmp37.i = icmp ult i16 %34, 24
  br i1 %cmp37.i, label %if.end34.i.cleanup_crit_edge, label %if.end5

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end34.i
  %35 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %private.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %wMaxPacketSize.i.i51 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %wMaxPacketSize.i.i51 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %wMaxPacketSize.i.i51, align 1
  %41 = and i16 %40, -249
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #8
  %and.i.i = zext i16 %42 to i32
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i.i, i32 noundef 3520) #12
  %usb_rx_buf.i = getelementptr inbounds %struct.ni6501_private, ptr %36, i32 0, i32 3
  %43 = ptrtoint ptr %usb_rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9.i.i.i, ptr %usb_rx_buf.i, align 4
  %tobool.not.i52 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i52, label %if.end5.cleanup_crit_edge, label %if.end8.i.i34.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i34.i:                                  ; preds = %if.end5
  %ep_tx.i53 = getelementptr inbounds %struct.ni6501_private, ptr %36, i32 0, i32 1
  %44 = ptrtoint ptr %ep_tx.i53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ep_tx.i53, align 4
  %wMaxPacketSize.i16.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %wMaxPacketSize.i16.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %wMaxPacketSize.i16.i, align 1
  %48 = and i16 %47, -249
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #8
  %and.i17.i = zext i16 %49 to i32
  %call9.i.i33.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i17.i, i32 noundef 3520) #12
  %usb_tx_buf.i = getelementptr inbounds %struct.ni6501_private, ptr %36, i32 0, i32 4
  %50 = ptrtoint ptr %usb_tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call9.i.i33.i, ptr %usb_tx_buf.i, align 4
  %tobool6.not.i = icmp eq ptr %call9.i.i33.i, null
  br i1 %tobool6.not.i, label %if.end8.i.i34.i.cleanup_crit_edge, label %if.end9

if.end8.i.i34.i.cleanup_crit_edge:                ; preds = %if.end8.i.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end8.i.i34.i
  %call10 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %51 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 5, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 4
  %54 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 196608, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 3
  %55 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 24, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 13
  %56 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 15
  %57 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 20
  %58 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @ni6501_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 21
  %59 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @ni6501_dio_insn_config, ptr %insn_config, align 4
  %60 = load ptr, ptr %subdevices, align 4
  %type16 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 2
  %61 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 6, ptr %type16, align 4
  %subdev_flags17 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 4
  %62 = ptrtoint ptr %subdev_flags17 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 268632064, ptr %subdev_flags17, align 4
  %n_chan18 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 3
  %63 = ptrtoint ptr %n_chan18 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %n_chan18, align 4
  %maxdata19 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 13
  %64 = ptrtoint ptr %maxdata19 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %maxdata19, align 4
  %insn_read = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 18
  %65 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @ni6501_cnt_insn_read, ptr %insn_read, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 19
  %66 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @ni6501_cnt_insn_write, ptr %insn_write, align 4
  %insn_config20 = getelementptr %struct.comedi_subdevice, ptr %60, i32 1, i32 21
  %67 = ptrtoint ptr %insn_config20 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @ni6501_cnt_insn_config, ptr %insn_config20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.end8.i.i34.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end34.i.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ -19, %do.end.i ], [ -19, %lor.lhs.false.i.cleanup_crit_edge ], [ -19, %for.end.i.cleanup_crit_edge ], [ -19, %if.end28.i.cleanup_crit_edge ], [ -19, %if.end34.i.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -12, %if.end8.i.i34.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_usb_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni6501_dio_insn_bits(ptr noundef %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  %bitmap = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bitmap) #8
  %0 = ptrtoint ptr %bitmap to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %bitmap, align 1, !annotation !58
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #8
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %and = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %conv6 = trunc i32 %2 to i8
  %3 = ptrtoint ptr %bitmap to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv6, ptr %bitmap, align 1
  %call8 = call fastcc i32 @ni6501_port_command(ptr noundef %dev, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %bitmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then.for.inc_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %and.1 = and i32 %call, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %shr.1 = lshr i32 %5, 8
  %conv6.1 = trunc i32 %shr.1 to i8
  %6 = ptrtoint ptr %bitmap to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv6.1, ptr %bitmap, align 1
  %call8.1 = call fastcc i32 @ni6501_port_command(ptr noundef %dev, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %bitmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %if.then.1.for.inc.1_crit_edge, label %if.then.1.cleanup_crit_edge

if.then.1.cleanup_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %call, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %shr.2 = lshr i32 %8, 16
  %conv6.2 = trunc i32 %shr.2 to i8
  %9 = ptrtoint ptr %bitmap to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6.2, ptr %bitmap, align 1
  %call8.2 = call fastcc i32 @ni6501_port_command(ptr noundef %dev, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %bitmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %tobool9.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool9.not.2, label %if.then.2.for.inc.2_crit_edge, label %if.then.2.cleanup_crit_edge

if.then.2.cleanup_crit_edge:                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx, align 4
  %call18 = call fastcc i32 @ni6501_port_command(ptr noundef %dev, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %bitmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %for.inc.2
  %11 = ptrtoint ptr %bitmap to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bitmap, align 1
  %conv22 = zext i8 %12 to i32
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %or = or i32 %14, %conv22
  store i32 %or, ptr %arrayidx, align 4
  %call18.1 = call fastcc i32 @ni6501_port_command(ptr noundef %dev, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %bitmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1)
  %tobool19.not.1 = icmp eq i32 %call18.1, 0
  br i1 %tobool19.not.1, label %if.end21.1, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21.1:                                       ; preds = %if.end21
  %15 = ptrtoint ptr %bitmap to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bitmap, align 1
  %conv22.1 = zext i8 %16 to i32
  %shl25.1 = shl nuw nsw i32 %conv22.1, 8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %or.1 = or i32 %shl25.1, %18
  store i32 %or.1, ptr %arrayidx, align 4
  %call18.2 = call fastcc i32 @ni6501_port_command(ptr noundef %dev, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %bitmap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.2)
  %tobool19.not.2 = icmp eq i32 %call18.2, 0
  br i1 %tobool19.not.2, label %if.end21.2, label %if.end21.1.cleanup_crit_edge

if.end21.1.cleanup_crit_edge:                     ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21.2:                                       ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %bitmap to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bitmap, align 1
  %conv22.2 = zext i8 %20 to i32
  %shl25.2 = shl nuw nsw i32 %conv22.2, 16
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %or.2 = or i32 %shl25.2, %22
  store i32 %or.2, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %23 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21.2, %if.end21.1.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %if.then.2.cleanup_crit_edge, %if.then.1.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %24, %if.end21.2 ], [ %call18, %for.inc.2.cleanup_crit_edge ], [ %call18.1, %if.end21.cleanup_crit_edge ], [ %call18.2, %if.end21.1.cleanup_crit_edge ], [ %call8, %if.then.cleanup_crit_edge ], [ %call8.1, %if.then.1.cleanup_crit_edge ], [ %call8.2, %if.then.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bitmap) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni6501_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %0 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_bits, align 4
  %call1 = tail call fastcc i32 @ni6501_port_command(ptr noundef %dev, i32 noundef 2, i32 noundef %1, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni6501_cnt_insn_read(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !58
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp8.not = icmp eq i32 %2, 0
  br i1 %cmp8.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = call fastcc i32 @ni6501_counter_command(ptr noundef %dev, i32 noundef 5, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 %i.09
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.09, 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %7, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni6501_cnt_insn_write(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %sub = add i32 %1, -1
  %arrayidx = getelementptr i32, ptr %data, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %val, align 4
  %call = call fastcc i32 @ni6501_counter_command(ptr noundef %dev, i32 noundef 6, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup6_crit_edge

if.then.cleanup6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup6

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  br label %cleanup6

cleanup6:                                         ; preds = %if.end4, %if.then.cleanup6_crit_edge
  %retval.1 = phi i32 [ %6, %if.end4 ], [ %call, %if.then.cleanup6_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni6501_cnt_insn_config(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 31, label %sw.bb
    i32 32, label %sw.bb1
    i32 34, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @ni6501_counter_command(ptr noundef %dev, i32 noundef 3, ptr noundef null)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @ni6501_counter_command(ptr noundef %dev, i32 noundef 4, ptr noundef null)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @ni6501_counter_command(ptr noundef %dev, i32 noundef 4, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = call fastcc i32 @ni6501_counter_command(ptr noundef %dev, i32 noundef 6, ptr noundef nonnull %val)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb1, %sw.bb
  %ret.0 = phi i32 [ %call5, %if.end ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool6.not = icmp eq i32 %ret.0, 0
  br i1 %tobool6.not, label %cond.false, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %sw.epilog.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %5, %cond.false ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ %call4, %sw.bb3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni6501_port_command(ptr noundef %dev, i32 noundef %command, i32 noundef %val, ptr noundef %bitmap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #8
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %usb_tx_buf = getelementptr inbounds %struct.ni6501_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_tx_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %command)
  %cmp.not = icmp ne i32 %command, 2
  %tobool.not = icmp eq ptr %bitmap, null
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mut = getelementptr inbounds %struct.ni6501_private, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #8
  %4 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %command, label %if.end.end_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb6
  ]

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memcpy(ptr %3, ptr @READ_PORT_REQUEST, i32 16)
  %conv = trunc i32 %val to i8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = call ptr @memcpy(ptr %3, ptr @WRITE_PORT_REQUEST, i32 20)
  %conv3 = trunc i32 %val to i8
  %arrayidx4 = getelementptr i8, ptr %3, i32 14
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %arrayidx4, align 1
  %8 = ptrtoint ptr %bitmap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bitmap, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = call ptr @memcpy(ptr %3, ptr @SET_PORT_DIR_REQUEST, i32 24)
  %conv8 = trunc i32 %val to i8
  %arrayidx9 = getelementptr i8, ptr %3, i32 14
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv8, ptr %arrayidx9, align 1
  %shr = lshr i32 %val, 8
  %conv11 = trunc i32 %shr to i8
  %arrayidx12 = getelementptr i8, ptr %3, i32 15
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv11, ptr %arrayidx12, align 1
  %shr13 = lshr i32 %val, 16
  %conv15 = trunc i32 %shr13 to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb1, %sw.bb
  %.sink = phi i32 [ 16, %sw.bb6 ], [ 17, %sw.bb1 ], [ 14, %sw.bb ]
  %conv15.sink = phi i8 [ %conv15, %sw.bb6 ], [ %9, %sw.bb1 ], [ %conv, %sw.bb ]
  %request_size.0 = phi i32 [ 24, %sw.bb6 ], [ 20, %sw.bb1 ], [ 16, %sw.bb ]
  %response_size.0 = phi i32 [ 12, %sw.bb6 ], [ 12, %sw.bb1 ], [ 16, %sw.bb ]
  %arrayidx16 = getelementptr i8, ptr %3, i32 %.sink
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv15.sink, ptr %arrayidx16, align 1
  %ep_tx = getelementptr inbounds %struct.ni6501_private, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %ep_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep_tx, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress, align 1
  %conv17 = zext i8 %17 to i32
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call, align 8
  %shl.i = shl i32 %19, 8
  %shl1.i = shl nuw nsw i32 %conv17, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %20 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_tx_buf, align 4
  %call20 = tail call i32 @usb_bulk_msg(ptr noundef %call, i32 noundef %or, ptr noundef %21, i32 noundef %request_size.0, ptr noundef null, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %sw.epilog.end_crit_edge

sw.epilog.end_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end23:                                         ; preds = %sw.epilog
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %bEndpointAddress24 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %bEndpointAddress24 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bEndpointAddress24, align 1
  %conv25 = zext i8 %25 to i32
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call, align 8
  %shl.i94 = shl i32 %27, 8
  %shl1.i95 = shl nuw nsw i32 %conv25, 15
  %or.i96 = or i32 %shl1.i95, %shl.i94
  %or28 = or i32 %or.i96, -1073741696
  %usb_rx_buf = getelementptr inbounds %struct.ni6501_private, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %usb_rx_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_rx_buf, align 4
  %call29 = tail call i32 @usb_bulk_msg(ptr noundef %call, i32 noundef %or28, ptr noundef %29, i32 noundef %response_size.0, ptr noundef null, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end23.end_crit_edge

if.end23.end_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end32:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cmp33 = icmp eq i32 %command, 0
  %30 = ptrtoint ptr %usb_rx_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_rx_buf, align 4
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx37 = getelementptr i8, ptr %31, i32 14
  %32 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx37, align 1
  %34 = ptrtoint ptr %bitmap to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %bitmap, align 1
  %35 = ptrtoint ptr %usb_rx_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb_rx_buf, align 4
  %arrayidx39 = getelementptr i8, ptr %36, i32 14
  %37 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx39, align 1
  %38 = load ptr, ptr %usb_rx_buf, align 4
  %bcmp92 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %38, ptr noundef nonnull dereferenceable(16) @READ_PORT_RESPONSE, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp92)
  %tobool42.not = icmp eq i32 %bcmp92, 0
  %spec.select = select i1 %tobool42.not, i32 0, i32 -22
  br label %end

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(12) %31, ptr noundef nonnull dereferenceable(12) @GENERIC_RESPONSE, i32 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool47.not = icmp eq i32 %bcmp, 0
  %spec.select93 = select i1 %tobool47.not, i32 0, i32 -22
  br label %end

end:                                              ; preds = %if.else, %if.then35, %if.end23.end_crit_edge, %sw.epilog.end_crit_edge, %if.end.end_crit_edge
  %ret.0 = phi i32 [ %call20, %sw.epilog.end_crit_edge ], [ %call29, %if.end23.end_crit_edge ], [ -22, %if.end.end_crit_edge ], [ %spec.select, %if.then35 ], [ %spec.select93, %if.else ]
  tail call void @mutex_unlock(ptr noundef %mut) #8
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_usb_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni6501_counter_command(ptr noundef %dev, i32 noundef %command, ptr noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #8
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %usb_tx_buf = getelementptr inbounds %struct.ni6501_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_tx_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %command)
  %cmp = icmp eq i32 %command, 5
  %4 = add i32 %command, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp ult i32 %4, 2
  %tobool.not = icmp eq ptr %val, null
  %or.cond78 = and i1 %5, %tobool.not
  br i1 %or.cond78, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mut = getelementptr inbounds %struct.ni6501_private, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mut, i32 noundef 0) #8
  %6 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %command, label %if.end.end_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb4
  ]

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call ptr @memcpy(ptr %3, ptr @START_COUNTER_REQUEST, i32 12)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call ptr @memcpy(ptr %3, ptr @STOP_COUNTER_REQUEST, i32 12)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @memcpy(ptr %3, ptr @READ_COUNTER_REQUEST, i32 12)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = call ptr @memcpy(ptr %3, ptr @WRITE_COUNTER_REQUEST, i32 16)
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %request_size.0 = phi i32 [ 16, %sw.bb4 ], [ 12, %sw.bb3 ], [ 12, %sw.bb2 ], [ 12, %sw.bb ]
  %response_size.0 = phi i32 [ 12, %sw.bb4 ], [ 16, %sw.bb3 ], [ 12, %sw.bb2 ], [ 12, %sw.bb ]
  %ep_tx = getelementptr inbounds %struct.ni6501_private, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %ep_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ep_tx, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call, align 8
  %shl.i = shl i32 %19, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %20 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_tx_buf, align 4
  %call7 = tail call i32 @usb_bulk_msg(ptr noundef %call, i32 noundef %or, ptr noundef %21, i32 noundef %request_size.0, ptr noundef null, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %sw.epilog.end_crit_edge

sw.epilog.end_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end10:                                         ; preds = %sw.epilog
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %bEndpointAddress11 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %bEndpointAddress11 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bEndpointAddress11, align 1
  %conv12 = zext i8 %25 to i32
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call, align 8
  %shl.i80 = shl i32 %27, 8
  %shl1.i81 = shl nuw nsw i32 %conv12, 15
  %or.i82 = or i32 %shl1.i81, %shl.i80
  %or15 = or i32 %or.i82, -1073741696
  %usb_rx_buf = getelementptr inbounds %struct.ni6501_private, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %usb_rx_buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %usb_rx_buf, align 4
  %call16 = tail call i32 @usb_bulk_msg(ptr noundef %call, i32 noundef %or15, ptr noundef %29, i32 noundef %response_size.0, ptr noundef null, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end10.end_crit_edge

if.end10.end_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end19:                                         ; preds = %if.end10
  %30 = ptrtoint ptr %usb_rx_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_rx_buf, align 4
  br i1 %cmp, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx24 = getelementptr i8, ptr %31, i32 12
  %32 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx24, align 4
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %val, align 4
  %35 = ptrtoint ptr %usb_rx_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb_rx_buf, align 4
  %arrayidx28 = getelementptr i8, ptr %36, i32 12
  %37 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx28, align 1
  %38 = load ptr, ptr %usb_rx_buf, align 4
  %arrayidx28.1 = getelementptr i8, ptr %38, i32 13
  %39 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx28.1, align 1
  %40 = load ptr, ptr %usb_rx_buf, align 4
  %arrayidx28.2 = getelementptr i8, ptr %40, i32 14
  %41 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx28.2, align 1
  %42 = load ptr, ptr %usb_rx_buf, align 4
  %arrayidx28.3 = getelementptr i8, ptr %42, i32 15
  %43 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx28.3, align 1
  %44 = load ptr, ptr %usb_rx_buf, align 4
  %bcmp77 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %44, ptr noundef nonnull dereferenceable(16) @READ_COUNTER_RESPONSE, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp77)
  %tobool31.not = icmp eq i32 %bcmp77, 0
  %spec.select = select i1 %tobool31.not, i32 0, i32 -22
  br label %end

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(12) %31, ptr noundef nonnull dereferenceable(12) @GENERIC_RESPONSE, i32 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool36.not = icmp eq i32 %bcmp, 0
  %spec.select79 = select i1 %tobool36.not, i32 0, i32 -22
  br label %end

end:                                              ; preds = %if.else, %if.then22, %if.end10.end_crit_edge, %sw.epilog.end_crit_edge, %if.end.end_crit_edge
  %ret.1 = phi i32 [ %call7, %sw.epilog.end_crit_edge ], [ %call16, %if.end10.end_crit_edge ], [ %spec.select, %if.then22 ], [ -22, %if.end.end_crit_edge ], [ %spec.select79, %if.else ]
  tail call void @mutex_unlock(ptr noundef %mut) #8
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni6501_usb_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %call = tail call i32 @comedi_usb_auto_config(ptr noundef %intf, ptr noundef nonnull @ni6501_driver, i32 noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_usb_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_usb_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_ni_usb6501__239_607_ni6501_driver_init6, !1, !"__initcall__kmod_ni_usb6501__239_607_ni6501_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 607, i32 1}
!2 = !{ptr @__exitcall_ni6501_driver_exit, !1, !"__exitcall_ni6501_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author240, !4, !"__UNIQUE_ID_author240", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 609, i32 1}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 610, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 611, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 584, i32 17}
!12 = !{ptr @ni6501_driver, !13, !"ni6501_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 582, i32 29}
!14 = !{ptr @ni6501_auto_attach.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 528, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 484, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ni6501_find_endpoints._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ni6501_find_endpoints._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @READ_PORT_REQUEST, !26, !"READ_PORT_REQUEST", i1 false, i1 false}
!26 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 95, i32 17}
!27 = !{ptr @WRITE_PORT_REQUEST, !28, !"WRITE_PORT_REQUEST", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 100, i32 17}
!29 = !{ptr @SET_PORT_DIR_REQUEST, !30, !"SET_PORT_DIR_REQUEST", i1 false, i1 false}
!30 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 106, i32 17}
!31 = !{ptr @READ_PORT_RESPONSE, !32, !"READ_PORT_RESPONSE", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 136, i32 17}
!33 = !{ptr @GENERIC_RESPONSE, !34, !"GENERIC_RESPONSE", i1 false, i1 false}
!34 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 132, i32 17}
!35 = !{ptr @START_COUNTER_REQUEST, !36, !"START_COUNTER_REQUEST", i1 false, i1 false}
!36 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 114, i32 17}
!37 = !{ptr @STOP_COUNTER_REQUEST, !38, !"STOP_COUNTER_REQUEST", i1 false, i1 false}
!38 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 118, i32 17}
!39 = !{ptr @READ_COUNTER_REQUEST, !40, !"READ_COUNTER_REQUEST", i1 false, i1 false}
!40 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 122, i32 17}
!41 = !{ptr @WRITE_COUNTER_REQUEST, !42, !"WRITE_COUNTER_REQUEST", i1 false, i1 false}
!42 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 126, i32 17}
!43 = !{ptr @READ_COUNTER_RESPONSE, !44, !"READ_COUNTER_RESPONSE", i1 false, i1 false}
!44 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 141, i32 17}
!45 = !{ptr @ni6501_usb_driver, !46, !"ni6501_usb_driver", i1 false, i1 false}
!46 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 601, i32 26}
!47 = !{ptr @ni6501_usb_table, !48, !"ni6501_usb_table", i1 false, i1 false}
!48 = !{!"../drivers/comedi/drivers/ni_usb6501.c", i32 595, i32 35}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
