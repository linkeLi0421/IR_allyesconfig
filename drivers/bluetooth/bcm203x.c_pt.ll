; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/bcm203x.c_pt.bc'
source_filename = "../drivers/bluetooth/bcm203x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.bcm203x_data = type { ptr, i32, %struct.work_struct, %struct.atomic_t, ptr, ptr, ptr, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_bcm203x__473_260_bcm203x_driver_init6 = internal global ptr @bcm203x_driver_init, section ".initcall6.init", align 4
@bcm203x_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @bcm203x_probe, ptr @bcm203x_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm203x_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_bcm203x_driver_exit = internal global ptr @bcm203x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author474 = internal constant [53 x i8] c"bcm203x.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description475 = internal constant [63 x i8] c"bcm203x.description=Broadcom Blutonium firmware driver ver 1.2\00", section ".modinfo", align 1
@__UNIQUE_ID_version476 = internal constant [20 x i8] c"bcm203x.version=1.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bcm203x\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file477 = internal constant [39 x i8] c"bcm203x.file=drivers/bluetooth/bcm203x\00", section ".modinfo", align 1
@__UNIQUE_ID_license478 = internal constant [20 x i8] c"bcm203x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware479 = internal constant [32 x i8] c"bcm203x.firmware=BCM2033-MD.hex\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware480 = internal constant [32 x i8] c"bcm203x.firmware=BCM2033-FW.bin\00", section ".modinfo", align 1
@bcm203x_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2652, i16 8243, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@bcm203x_probe.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm203x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/bluetooth/bcm203x.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intf %p id %p\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BCM2033-MD.hex\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Mini driver request failed\0A\00", [36 x i8] zeroinitializer }, align 32
@bcm203x_probe.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"minidrv data %p size %zu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Can't allocate memory for mini driver\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BCM2033-FW.bin\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware request failed\0A\00", [39 x i8] zeroinitializer }, align 32
@bcm203x_probe.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.12, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"firmware data %p size %zu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Can't allocate memory for firmware image\0A\00", [54 x i8] zeroinitializer }, align 32
@bcm203x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&data->work)\00", [33 x i8] zeroinitializer }, align 32
@bcm203x_complete.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm203x_complete\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"udev %p urb %p\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"URB failed with status %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Can't submit URB\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Memory select failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware loading failed\0A\00", [39 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@bcm203x_disconnect.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm203x_disconnect\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"intf %p\0A\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"bcm203x_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 252, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 264, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"bcm203x_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 28, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 160, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 176, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 177, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 182, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 188, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 201, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 202, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 208, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 212, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 224, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 70, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 73, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 98, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 103, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 131, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [31 x i8] c"../drivers/bluetooth/bcm203x.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 238, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author474, ptr @__UNIQUE_ID_description475, ptr @__UNIQUE_ID_file477, ptr @__UNIQUE_ID_firmware479, ptr @__UNIQUE_ID_firmware480, ptr @__UNIQUE_ID_license478, ptr @__UNIQUE_ID_version476, ptr @__exitcall_bcm203x_driver_exit, ptr @__initcall__kmod_bcm203x__473_260_bcm203x_driver_init6, ptr @__modver_attr, ptr @bcm203x_driver_exit, ptr @bcm203x_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @bcm203x_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @bcm203x_probe.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm203x_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm203x_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm203x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm203x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @bcm203x_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm203x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @bcm203x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm203x_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  %firmware = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware) #7
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware, align 4, !annotation !77
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm203x_probe.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm203x_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm203x_probe.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.5, ptr noundef %intf, ptr noundef %id) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %3 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not = icmp eq i8 %6, 0
  br i1 %cmp.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #7
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %call.i, align 4
  %state = getelementptr inbounds %struct.bcm203x_data, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %state, align 4
  %call12 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %urb = getelementptr inbounds %struct.bcm203x_data, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %urb, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %call18 = call i32 @request_firmware(ptr noundef nonnull %firmware, ptr noundef nonnull @.str.6, ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %do.body24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.7) #7
  %10 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb, align 4
  call void @usb_free_urb(ptr noundef %11) #7
  br label %cleanup

do.body24:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm203x_probe.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm203x_probe, %if.then36)) #7
          to label %if.end8.i [label %if.then36], !srcloc !78

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %firmware, align 4
  %data37 = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %data37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data37, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm203x_probe.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.8, ptr noundef %15, i32 noundef %17) #7
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then36, %do.body24
  %18 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %firmware, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = call i32 @llvm.umax.i32(i32 %21, i32 4096)
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #10
  %buffer = getelementptr inbounds %struct.bcm203x_data, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i, ptr %buffer, align 4
  %tobool48.not = icmp eq ptr %call9.i, null
  br i1 %tobool48.not, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9) #7
  %24 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %25) #7
  %26 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %urb, align 4
  call void @usb_free_urb(ptr noundef %27) #7
  br label %cleanup

if.end51:                                         ; preds = %if.end8.i
  %28 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %firmware, align 4
  %data53 = getelementptr inbounds %struct.firmware, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %data53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data53, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 4
  %34 = call ptr @memcpy(ptr %call9.i, ptr %31, i32 %33)
  %35 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %urb, align 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %38, 8
  %or = or i32 %shl.i, -1073676288
  %39 = load i32, ptr %29, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %36, i32 0, i32 8
  %40 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %36, i32 0, i32 10
  %41 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %36, i32 0, i32 14
  %42 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %36, i32 0, i32 19
  %43 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %39, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %36, i32 0, i32 28
  %44 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @bcm203x_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %36, i32 0, i32 27
  %45 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %context4.i, align 4
  call void @release_firmware(ptr noundef %29) #7
  %call60 = call i32 @request_firmware(ptr noundef nonnull %firmware, ptr noundef nonnull @.str.10, ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %do.body67

if.then63:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11) #7
  %46 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %urb, align 4
  call void @usb_free_urb(ptr noundef %47) #7
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer, align 4
  call void @kfree(ptr noundef %49) #7
  br label %cleanup

do.body67:                                        ; preds = %if.end51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm203x_probe.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm203x_probe, %if.then79)) #7
          to label %do.end84 [label %if.then79], !srcloc !78

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %firmware, align 4
  %data80 = getelementptr inbounds %struct.firmware, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %data80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data80, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %51, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm203x_probe.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.12, ptr noundef %53, i32 noundef %55) #7
  br label %do.end84

do.end84:                                         ; preds = %if.then79, %do.body67
  %56 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %firmware, align 4
  %data85 = getelementptr inbounds %struct.firmware, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %data85 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data85, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %57, align 4
  %call87 = call ptr @kmemdup(ptr noundef %59, i32 noundef %61, i32 noundef 3264) #7
  %fw_data = getelementptr inbounds %struct.bcm203x_data, ptr %call.i, i32 0, i32 6
  %62 = ptrtoint ptr %fw_data to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call87, ptr %fw_data, align 4
  %tobool89.not = icmp eq ptr %call87, null
  br i1 %tobool89.not, label %if.then90, label %if.end93

if.then90:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.13) #7
  %63 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %64) #7
  %65 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %urb, align 4
  call void @usb_free_urb(ptr noundef %66) #7
  %67 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buffer, align 4
  call void @kfree(ptr noundef %68) #7
  br label %cleanup

if.end93:                                         ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %firmware, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %fw_size = getelementptr inbounds %struct.bcm203x_data, ptr %call.i, i32 0, i32 7
  %73 = ptrtoint ptr %fw_size to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %fw_size, align 4
  %fw_sent = getelementptr inbounds %struct.bcm203x_data, ptr %call.i, i32 0, i32 8
  %74 = ptrtoint ptr %fw_sent to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %fw_sent, align 4
  call void @release_firmware(ptr noundef %70) #7
  %work = getelementptr inbounds %struct.bcm203x_data, ptr %call.i, i32 0, i32 2
  call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %75 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.bcm203x_data, ptr %call.i, i32 0, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @bcm203x_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry100 = getelementptr inbounds %struct.bcm203x_data, ptr %call.i, i32 0, i32 2, i32 1
  %76 = ptrtoint ptr %entry100 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %entry100, ptr %entry100, align 4
  %prev.i = getelementptr inbounds %struct.bcm203x_data, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %77 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %entry100, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bcm203x_data, ptr %call.i, i32 0, i32 2, i32 2
  %78 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @bcm203x_work, ptr %func, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %79 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %80 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %80, ptr noundef %work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.then90, %if.then63, %if.then49, %if.then21, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then21 ], [ -5, %if.then63 ], [ 0, %if.end93 ], [ -12, %if.then90 ], [ -12, %if.then49 ], [ -19, %do.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm203x_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm203x_disconnect.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm203x_disconnect, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm203x_disconnect.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.23, ptr noundef %intf) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shutdown = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %shutdown, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %shutdown, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %shutdown, ptr %shutdown, i32 1, ptr elementtype(i32) %shutdown) #7, !srcloc !79
  %work = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 2
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #7
  %urb = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %4) #7
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %7) #7
  %fw_data = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw_data, align 4
  tail call void @kfree(ptr noundef %9) #7
  %buffer = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  tail call void @kfree(ptr noundef %11) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm203x_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm203x_complete.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm203x_complete, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcm203x_complete.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.16, ptr noundef %3, ptr noundef %urb) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17, i32 noundef %5) #7
  %state = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 4
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %state7 = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state7, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end6.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb12
    i32 4, label %sw.bb22
    i32 5, label %if.end6.sw.bb30_crit_edge
    i32 6, label %sw.bb55
  ]

if.end6.sw.bb30_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb30

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %buffer = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 35, ptr %11, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 8
  %shl.i = shl i32 %14, 8
  %or = or i32 %shl.i, -1073676288
  %15 = load ptr, ptr %buffer, align 4
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %3, ptr %dev, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %17 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %20 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bcm203x_complete, ptr %complete.i, align 4
  %21 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %context, align 4
  %22 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %state7, align 4
  %work = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %work) #7
  br label %cleanup

sw.bb12:                                          ; preds = %if.end6
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 8
  %shl.i116 = shl i32 %25, 8
  %or15 = or i32 %shl.i116, 1077969024
  %buffer16 = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %buffer16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer16, align 4
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %3, ptr %dev, align 4
  %pipe2.i119 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %29 = ptrtoint ptr %pipe2.i119 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or15, ptr %pipe2.i119, align 4
  %transfer_buffer3.i120 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %30 = ptrtoint ptr %transfer_buffer3.i120 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %transfer_buffer3.i120, align 4
  %transfer_buffer_length.i121 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %31 = ptrtoint ptr %transfer_buffer_length.i121 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 32, ptr %transfer_buffer_length.i121, align 4
  %complete.i122 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %32 = ptrtoint ptr %complete.i122 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @bcm203x_complete, ptr %complete.i122, align 4
  %33 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %1, ptr %context, align 4
  %34 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %34, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 23
  %36 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %start_frame.i, align 4
  %37 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %state7, align 4
  %urb18 = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %urb18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %urb18, align 4
  %call19 = tail call i32 @usb_submit_urb(ptr noundef %39, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.then20, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19) #7
  br label %cleanup

sw.bb22:                                          ; preds = %if.end6
  %buffer23 = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %buffer23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer23, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %43)
  %cmp24.not = icmp eq i8 %43, 35
  br i1 %cmp24.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20) #7
  %44 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %state7, align 4
  br label %cleanup

if.end28:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 5, ptr %state7, align 4
  br label %sw.bb30

sw.bb30:                                          ; preds = %if.end28, %if.end6.sw.bb30_crit_edge
  %fw_sent = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %fw_sent to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fw_sent, align 4
  %fw_size = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fw_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %47)
  %cmp31 = icmp eq i32 %49, %47
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %3, align 8
  %shl.i124 = shl i32 %51, 8
  %or36 = or i32 %shl.i124, 1077969024
  %buffer37 = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 5
  %52 = ptrtoint ptr %buffer37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer37, align 4
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %3, ptr %dev, align 4
  %pipe2.i127 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %55 = ptrtoint ptr %pipe2.i127 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or36, ptr %pipe2.i127, align 4
  %transfer_buffer3.i128 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %56 = ptrtoint ptr %transfer_buffer3.i128 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %transfer_buffer3.i128, align 4
  %transfer_buffer_length.i129 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %57 = ptrtoint ptr %transfer_buffer_length.i129 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 32, ptr %transfer_buffer_length.i129, align 4
  %complete.i130 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %58 = ptrtoint ptr %complete.i130 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @bcm203x_complete, ptr %complete.i130, align 4
  %59 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %1, ptr %context, align 4
  %60 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %60, align 4
  %start_frame.i132 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 23
  %62 = ptrtoint ptr %start_frame.i132 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %start_frame.i132, align 4
  %63 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 6, ptr %state7, align 4
  br label %if.end48

if.else:                                          ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %49, %47
  %64 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4096)
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %3, align 8
  %shl.i133 = shl i32 %66, 8
  %or45 = or i32 %shl.i133, -1073676288
  %fw_data = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 6
  %67 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fw_data, align 4
  %add.ptr = getelementptr i8, ptr %68, i32 %47
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %3, ptr %dev, align 4
  %pipe2.i136 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %70 = ptrtoint ptr %pipe2.i136 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or45, ptr %pipe2.i136, align 4
  %transfer_buffer3.i137 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %71 = ptrtoint ptr %transfer_buffer3.i137 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %add.ptr, ptr %transfer_buffer3.i137, align 4
  %transfer_buffer_length.i138 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %72 = ptrtoint ptr %transfer_buffer_length.i138 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %64, ptr %transfer_buffer_length.i138, align 4
  %complete.i139 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %73 = ptrtoint ptr %complete.i139 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @bcm203x_complete, ptr %complete.i139, align 4
  %74 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %1, ptr %context, align 4
  %75 = ptrtoint ptr %fw_sent to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fw_sent, align 4
  %add = add i32 %76, %64
  store i32 %add, ptr %fw_sent, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then33
  %urb49 = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 4
  %77 = ptrtoint ptr %urb49 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %urb49, align 4
  %call50 = tail call i32 @usb_submit_urb(ptr noundef %78, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19) #7
  br label %cleanup

sw.bb55:                                          ; preds = %if.end6
  %buffer56 = getelementptr inbounds %struct.bcm203x_data, ptr %1, i32 0, i32 5
  %79 = ptrtoint ptr %buffer56 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buffer56, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %82)
  %cmp59.not = icmp eq i8 %82, 46
  br i1 %cmp59.not, label %if.end63, label %if.then61

if.then61:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.21) #7
  %83 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %state7, align 4
  br label %cleanup

if.end63:                                         ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %state7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then61, %if.then53, %if.end48.cleanup_crit_edge, %if.then26, %if.then20, %sw.bb12.cleanup_crit_edge, %sw.bb, %if.end6.cleanup_crit_edge, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm203x_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shutdown = getelementptr i8, ptr %work, i32 44
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %shutdown, i32 noundef 4) #7
  %0 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %urb = getelementptr i8, ptr %work, i32 48
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  %call1 = tail call i32 @usb_submit_urb(ptr noundef %3, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !29, !31, !33, !34, !36, !38, !40, !42, !43, !45, !47, !48, !50, !51, !52, !54, !56, !58, !60, !62, !64, !65, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_bcm203x__473_260_bcm203x_driver_init6, !1, !"__initcall__kmod_bcm203x__473_260_bcm203x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/bcm203x.c", i32 260, i32 1}
!2 = !{ptr @__exitcall_bcm203x_driver_exit, !1, !"__exitcall_bcm203x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author474, !4, !"__UNIQUE_ID_author474", i1 false, i1 false}
!4 = !{!"../drivers/bluetooth/bcm203x.c", i32 262, i32 1}
!5 = !{ptr @__UNIQUE_ID_description475, !6, !"__UNIQUE_ID_description475", i1 false, i1 false}
!6 = !{!"../drivers/bluetooth/bcm203x.c", i32 263, i32 1}
!7 = !{ptr @__UNIQUE_ID_version476, !8, !"__UNIQUE_ID_version476", i1 false, i1 false}
!8 = !{!"../drivers/bluetooth/bcm203x.c", i32 264, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file477, !14, !"__UNIQUE_ID_file477", i1 false, i1 false}
!14 = !{!"../drivers/bluetooth/bcm203x.c", i32 265, i32 1}
!15 = !{ptr @__UNIQUE_ID_license478, !14, !"__UNIQUE_ID_license478", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_firmware479, !17, !"__UNIQUE_ID_firmware479", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/bcm203x.c", i32 266, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware480, !19, !"__UNIQUE_ID_firmware480", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/bcm203x.c", i32 267, i32 1}
!20 = !{ptr @bcm203x_driver, !21, !"bcm203x_driver", i1 false, i1 false}
!21 = !{!"../drivers/bluetooth/bcm203x.c", i32 252, i32 26}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bluetooth/bcm203x.c", i32 160, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @bcm203x_probe.__UNIQUE_ID_ddebug467, !23, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bluetooth/bcm203x.c", i32 176, i32 34}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bluetooth/bcm203x.c", i32 177, i32 3}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bluetooth/bcm203x.c", i32 182, i32 2}
!33 = !{ptr @bcm203x_probe.__UNIQUE_ID_ddebug468, !32, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bluetooth/bcm203x.c", i32 188, i32 3}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bluetooth/bcm203x.c", i32 201, i32 34}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/bluetooth/bcm203x.c", i32 202, i32 3}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/bluetooth/bcm203x.c", i32 208, i32 2}
!42 = !{ptr @bcm203x_probe.__UNIQUE_ID_ddebug471, !41, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bluetooth/bcm203x.c", i32 212, i32 3}
!45 = !{ptr @bcm203x_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/bluetooth/bcm203x.c", i32 224, i32 2}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bluetooth/bcm203x.c", i32 70, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @bcm203x_complete.__UNIQUE_ID_ddebug464, !49, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bluetooth/bcm203x.c", i32 73, i32 3}
!54 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bluetooth/bcm203x.c", i32 80, i32 24}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bluetooth/bcm203x.c", i32 98, i32 4}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bluetooth/bcm203x.c", i32 103, i32 4}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/bluetooth/bcm203x.c", i32 131, i32 4}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bluetooth/bcm203x.c", i32 238, i32 2}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @bcm203x_disconnect.__UNIQUE_ID_ddebug472, !63, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!66 = !{ptr @bcm203x_table, !67, !"bcm203x_table", i1 false, i1 false}
!67 = !{!"../drivers/bluetooth/bcm203x.c", i32 28, i32 35}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i64 2148957605, i64 2148957610, i64 2148957623, i64 2148957667, i64 2148957701, i64 2148957722}
!79 = !{i64 2148344228, i64 2148344254, i64 2148344283, i64 2148344317, i64 2148344348, i64 2148344371}
