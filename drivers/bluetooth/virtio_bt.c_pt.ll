; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/virtio_bt.c_pt.bc'
source_filename = "../drivers/bluetooth/virtio_bt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_bluetooth = type { ptr, [2 x ptr], %struct.work_struct, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }

@__initcall__kmod_virtio_bt__478_402_virtbt_driver_init6 = internal global ptr @virtbt_driver_init, section ".initcall6.init", align 4
@virtbt_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @virtbt_table, ptr @virtbt_features, i32 3, ptr null, i32 0, ptr null, ptr @virtbt_probe, ptr null, ptr @virtbt_remove, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_virtbt_driver_exit = internal global ptr @virtbt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author479 = internal constant [55 x i8] c"virtio_bt.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description480 = internal constant [62 x i8] c"virtio_bt.description=Generic Bluetooth VIRTIO driver ver 0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_version481 = internal constant [22 x i8] c"virtio_bt.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"virtio_bt\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file482 = internal constant [43 x i8] c"virtio_bt.file=drivers/bluetooth/virtio_bt\00", section ".modinfo", align 1
@__UNIQUE_ID_license483 = internal constant [22 x i8] c"virtio_bt.license=GPL\00", section ".modinfo", align 1
@virtbt_table = internal global { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 40, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@virtbt_features = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@__const.virtbt_probe.callbacks = private unnamed_addr constant [2 x ptr] [ptr @virtbt_tx_done, ptr @virtbt_rx_done], align 8
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@__const.virtbt_probe.names = private unnamed_addr constant [2 x ptr] [ptr @.str.3, ptr @.str.4], align 8
@virtbt_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(work_completion)(&vbt->rx)\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/bluetooth/virtio_bt.c\00", [34 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/linux/virtio_config.h\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: ROM version %u\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"virtbt_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 392, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 406, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"virtbt_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 379, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"virtbt_features\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 386, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 254, i32 20 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 255, i32 20 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 282, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 309, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [33 x i8] c"../include/linux/virtio_config.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 475, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 114, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 116, i32 24 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [33 x i8] c"../drivers/bluetooth/virtio_bt.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 171, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author479, ptr @__UNIQUE_ID_description480, ptr @__UNIQUE_ID_file482, ptr @__UNIQUE_ID_license483, ptr @__UNIQUE_ID_version481, ptr @__exitcall_virtbt_driver_exit, ptr @__initcall__kmod_virtio_bt__478_402_virtbt_driver_init6, ptr @__modver_attr, ptr @virtbt_driver_exit, ptr @virtbt_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @virtbt_table, ptr @virtbt_features, ptr @.str.3, ptr @.str.4, ptr @virtbt_probe.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtbt_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtbt_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtbt_features to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtbt_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtbt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtbt_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtbt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtbt_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtbt_probe(ptr noundef %vdev) #2 align 64 {
entry:
  %ret.i = alloca i8, align 1
  %callbacks = alloca [2 x ptr], align 8
  %names = alloca [2 x ptr], align 8
  %virtio_cread_v = alloca i16, align 2
  %virtio_cread_v55 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %callbacks) #7
  %0 = load i64, ptr @__const.virtbt_probe.callbacks, align 8
  %1 = ptrtoint ptr %callbacks to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %callbacks, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %names) #7
  %2 = load i64, ptr @__const.virtbt_probe.names, align 8
  %3 = ptrtoint ptr %names to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %names, align 8
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %4 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %5, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i) #7
  %6 = ptrtoint ptr %ret.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %ret.i, align 1, !annotation !48
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 475) #7
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 8
  %get.i = getelementptr inbounds %struct.virtio_config_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get.i, align 4
  call void %10(ptr noundef %vdev, i32 noundef 0, ptr noundef nonnull %ret.i, i32 noundef 1) #7
  %11 = ptrtoint ptr %ret.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ret.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %switch = icmp ult i8 %12, 2
  br i1 %switch, label %sw.epilog, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 60) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end4

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %sw.epilog
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %priv, align 8
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vdev, ptr %call7.i.i, align 8
  %rx = getelementptr inbounds %struct.virtio_bluetooth, ptr %call7.i.i, i32 0, i32 2
  call void @__init_work(ptr noundef %rx, i32 noundef 0) #7
  %16 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %rx, align 4
  %lockdep_map = getelementptr inbounds %struct.virtio_bluetooth, ptr %call7.i.i, i32 0, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @virtbt_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry9 = getelementptr inbounds %struct.virtio_bluetooth, ptr %call7.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry9, ptr %entry9, align 8
  %prev.i = getelementptr inbounds %struct.virtio_bluetooth, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.virtio_bluetooth, ptr %call7.i.i, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @virtbt_rx_work, ptr %func, align 8
  %vqs = getelementptr inbounds %struct.virtio_bluetooth, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config.i, align 8
  %find_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %find_vqs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %find_vqs.i, align 4
  %call.i = call i32 %23(ptr noundef %vdev, i32 noundef 2, ptr noundef %vqs, ptr noundef nonnull %callbacks, ptr noundef nonnull %names, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end16, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %call.i144 = call ptr @hci_alloc_dev_priv(i32 noundef 0) #7
  %tobool18.not = icmp eq ptr %call.i144, null
  br i1 %tobool18.not, label %if.end16.failed_crit_edge, label %if.end20

if.end16.failed_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end20:                                         ; preds = %if.end16
  %hdev21 = getelementptr inbounds %struct.virtio_bluetooth, ptr %call7.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %hdev21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i144, ptr %hdev21, align 8
  %bus = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 5
  %25 = ptrtoint ptr %bus to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 10, ptr %bus, align 2
  %dev_type = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 6
  %26 = ptrtoint ptr %dev_type to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %12, ptr %dev_type, align 1
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 204, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 232
  %28 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @virtbt_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 233
  %29 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @virtbt_close, ptr %close, align 4
  %flush = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 234
  %30 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @virtbt_flush, ptr %flush, align 8
  %send = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 237
  %31 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @virtbt_send_frame, ptr %send, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 0) #7
  %32 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %features.i.i, align 8
  %and.i.i146 = and i64 %33, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i146)
  %tobool13.i.i147.not = icmp eq i64 %and.i.i146, 0
  br i1 %tobool13.i.i147.not, label %if.end20.if.end51_crit_edge, label %if.then23

if.end20.if.end51_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then23:                                        ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v) #7
  %34 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %virtio_cread_v, align 2, !annotation !48
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 309) #7
  %35 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %config.i, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get, align 4
  call void %38(ptr noundef %vdev, i32 noundef 1, ptr noundef nonnull %virtio_cread_v, i32 noundef 2) #7
  %39 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %virtio_cread_v, align 2
  %41 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %features.i.i, align 8
  %and.i.i.i.i = and i64 %42, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %43 = call i16 @llvm.bswap.i16(i16 %40) #7
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i16 %40, i16 %43
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v) #7
  %44 = zext i16 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i16 %retval.0.i.i, label %if.then23.if.end51_crit_edge [
    i16 1, label %sw.bb36
    i16 2, label %sw.bb37
    i16 3, label %sw.bb44
  ]

if.then23.if.end51_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

sw.bb36:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %manufacturer = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 31
  %45 = ptrtoint ptr %manufacturer to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1521, ptr %manufacturer, align 2
  %setup = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 235
  %46 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @virtbt_setup_zephyr, ptr %setup, align 4
  %shutdown = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 236
  %47 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @virtbt_shutdown_generic, ptr %shutdown, align 8
  %set_bdaddr = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 242
  %48 = ptrtoint ptr %set_bdaddr to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @virtbt_set_bdaddr_zephyr, ptr %set_bdaddr, align 8
  br label %if.end51

sw.bb37:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %manufacturer38 = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 31
  %49 = ptrtoint ptr %manufacturer38 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 2, ptr %manufacturer38, align 2
  %setup39 = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 235
  %50 = ptrtoint ptr %setup39 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @virtbt_setup_intel, ptr %setup39, align 4
  %shutdown40 = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 236
  %51 = ptrtoint ptr %shutdown40 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @virtbt_shutdown_generic, ptr %shutdown40, align 8
  %set_bdaddr41 = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 242
  %52 = ptrtoint ptr %set_bdaddr41 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @virtbt_set_bdaddr_intel, ptr %set_bdaddr41, align 8
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 118
  call void @_set_bit(i32 noundef 9, ptr noundef %quirks) #7
  call void @_set_bit(i32 noundef 10, ptr noundef %quirks) #7
  call void @_set_bit(i32 noundef 13, ptr noundef %quirks) #7
  br label %if.end51

sw.bb44:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %manufacturer45 = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 31
  %53 = ptrtoint ptr %manufacturer45 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 93, ptr %manufacturer45, align 2
  %setup46 = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 235
  %54 = ptrtoint ptr %setup46 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @virtbt_setup_realtek, ptr %setup46, align 4
  %shutdown47 = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 236
  %55 = ptrtoint ptr %shutdown47 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @virtbt_shutdown_generic, ptr %shutdown47, align 8
  %quirks48 = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 118
  call void @_set_bit(i32 noundef 10, ptr noundef %quirks48) #7
  call void @_set_bit(i32 noundef 13, ptr noundef %quirks48) #7
  br label %if.end51

if.end51:                                         ; preds = %sw.bb44, %sw.bb37, %sw.bb36, %if.then23.if.end51_crit_edge, %if.end20.if.end51_crit_edge
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 1) #7
  %56 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %features.i.i, align 8
  %and.i.i149 = and i64 %57, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i149)
  %tobool13.i.i150.not = icmp eq i64 %and.i.i149, 0
  br i1 %tobool13.i.i150.not, label %if.end51.if.end72_crit_edge, label %if.then53

if.end51.if.end72_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v55) #7
  %58 = ptrtoint ptr %virtio_cread_v55 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -1, ptr %virtio_cread_v55, align 2, !annotation !48
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 343) #7
  %59 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %config.i, align 8
  %get68 = getelementptr inbounds %struct.virtio_config_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %get68 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %get68, align 4
  call void %62(ptr noundef %vdev, i32 noundef 3, ptr noundef nonnull %virtio_cread_v55, i32 noundef 2) #7
  %63 = ptrtoint ptr %virtio_cread_v55 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %virtio_cread_v55, align 2
  %65 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %features.i.i, align 8
  %and.i.i.i.i152 = and i64 %66, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i152)
  %tobool13.i.i.i.not.i153 = icmp eq i64 %and.i.i.i.i152, 0
  %67 = call i16 @llvm.bswap.i16(i16 %64) #7
  %retval.0.i.i154 = select i1 %tobool13.i.i.i.not.i153, i16 %64, i16 %67
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v55) #7
  %msft_opcode.i = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 227
  %68 = ptrtoint ptr %msft_opcode.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %retval.0.i.i154, ptr %msft_opcode.i, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then53, %if.end51.if.end72_crit_edge
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 2) #7
  %69 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %features.i.i, align 8
  %and.i.i156 = and i64 %70, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i156)
  %tobool13.i.i157.not = icmp eq i64 %and.i.i156, 0
  br i1 %tobool13.i.i157.not, label %if.end72.if.end75_crit_edge, label %if.then74

if.end72.if.end75_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %aosp_capable.i = getelementptr inbounds %struct.hci_dev, ptr %call.i144, i32 0, i32 230
  %71 = ptrtoint ptr %aosp_capable.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %aosp_capable.i, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end72.if.end75_crit_edge
  %call76 = call i32 @hci_register_dev(ptr noundef nonnull %call.i144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  call void @hci_free_dev(ptr noundef nonnull %call.i144) #7
  br label %failed

failed:                                           ; preds = %if.then79, %if.end16.failed_crit_edge
  %err.0 = phi i32 [ -16, %if.then79 ], [ -12, %if.end16.failed_crit_edge ]
  %72 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %config.i, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %del_vqs, align 4
  call void %75(ptr noundef %vdev) #7
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end75.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %failed ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ], [ 0, %if.end75.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %names) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %callbacks) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtbt_remove(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hdev1 = getelementptr inbounds %struct.virtio_bluetooth, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev1, align 4
  tail call void @hci_unregister_dev(ptr noundef %3) #7
  tail call void @virtio_reset_device(ptr noundef %vdev) #7
  tail call void @hci_free_dev(ptr noundef %3) #7
  %4 = ptrtoint ptr %hdev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %hdev1, align 4
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %del_vqs, align 4
  tail call void %8(ptr noundef %vdev) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtbt_tx_done(ptr noundef %vq) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !48
  %call1 = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len) #7
  %tobool.not2 = icmp eq ptr %call1, null
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call3 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call1, %entry.while.body_crit_edge ]
  call void @kfree_skb_reason(ptr noundef nonnull %call3, i32 noundef 0) #7
  %call = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtbt_rx_done(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %rx = getelementptr inbounds %struct.virtio_bluetooth, ptr %3, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %rx) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtbt_rx_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  %sg.i = alloca [1 x %struct.scatterlist], align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !48
  %arrayidx = getelementptr i8, ptr %work, i32 -4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = call ptr @virtqueue_get_buf(ptr noundef %2, ptr noundef nonnull %len) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %len1, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %call.i = call ptr @skb_pull(ptr noundef nonnull %call, i32 noundef 1) #7
  %.off.i = add i8 %9, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 4
  br i1 %switch.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %cb.i, align 8
  %hdev.i = getelementptr i8, ptr %work, i32 44
  %11 = ptrtoint ptr %hdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev.i, align 4
  %call2.i = call i32 @hci_recv_frame(ptr noundef %12, ptr noundef nonnull %call) #7
  br label %virtbt_rx_handle.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #7
  br label %virtbt_rx_handle.exit

virtbt_rx_handle.exit:                            ; preds = %sw.default.i, %sw.bb.i
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #7
  %15 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  %call.i.i = call ptr @__alloc_skb(i32 noundef 1000, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %virtbt_rx_handle.exit.virtbt_add_inbuf.exit.thread_crit_edge, label %if.end.i

virtbt_rx_handle.exit.virtbt_add_inbuf.exit.thread_crit_edge: ; preds = %virtbt_rx_handle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtbt_add_inbuf.exit.thread

if.end.i:                                         ; preds = %virtbt_rx_handle.exit
  %data.i15 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i15, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %17, i32 noundef 1000) #7
  %call2.i16 = call i32 @virtqueue_add_inbuf(ptr noundef %14, ptr noundef nonnull %sg.i, i32 noundef 1, ptr noundef nonnull %call.i.i, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i16)
  %cmp.i = icmp slt i32 %call2.i16, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end4

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #7
  br label %virtbt_add_inbuf.exit.thread

virtbt_add_inbuf.exit.thread:                     ; preds = %if.then3.i, %virtbt_rx_handle.exit.virtbt_add_inbuf.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #7
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call7 = call zeroext i1 @virtqueue_kick(ptr noundef %19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %virtbt_add_inbuf.exit.thread, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtbt_open(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  %sg.i = alloca [1 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.virtio_bluetooth, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #7
  %4 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 1000, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.virtbt_add_inbuf.exit.thread_crit_edge, label %if.end.i

entry.virtbt_add_inbuf.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %virtbt_add_inbuf.exit.thread

if.end.i:                                         ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %6, i32 noundef 1000) #7
  %call2.i = call i32 @virtqueue_add_inbuf(ptr noundef %3, ptr noundef nonnull %sg.i, i32 noundef 1, ptr noundef nonnull %call.i.i, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #7
  br label %virtbt_add_inbuf.exit.thread

virtbt_add_inbuf.exit.thread:                     ; preds = %if.then3.i, %entry.virtbt_add_inbuf.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #7
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call2 = call zeroext i1 @virtqueue_kick(ptr noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %virtbt_add_inbuf.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %virtbt_add_inbuf.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtbt_close(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rx = getelementptr inbounds %struct.virtio_bluetooth, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %rx) #7
  %arrayidx = getelementptr %struct.virtio_bluetooth, ptr %1, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call26 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %3) #7
  %tobool.not7 = icmp eq ptr %call26, null
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call28 = phi ptr [ %call2, %while.body.while.body_crit_edge ], [ %call26, %entry.while.body_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call28, i32 noundef 0) #7
  %call2 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %3) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %arrayidx.1 = getelementptr %struct.virtio_bluetooth, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %call26.1 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %5) #7
  %tobool.not7.1 = icmp eq ptr %call26.1, null
  br i1 %tobool.not7.1, label %while.end.while.end.1_crit_edge, label %while.end.while.body.1_crit_edge

while.end.while.body.1_crit_edge:                 ; preds = %while.end
  br label %while.body.1

while.end.while.end.1_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.1

while.body.1:                                     ; preds = %while.body.1.while.body.1_crit_edge, %while.end.while.body.1_crit_edge
  %call28.1 = phi ptr [ %call2.1, %while.body.1.while.body.1_crit_edge ], [ %call26.1, %while.end.while.body.1_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call28.1, i32 noundef 0) #7
  %call2.1 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %5) #7
  %tobool.not.1 = icmp eq ptr %call2.1, null
  br i1 %tobool.not.1, label %while.body.1.while.end.1_crit_edge, label %while.body.1.while.body.1_crit_edge

while.body.1.while.body.1_crit_edge:              ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.1

while.body.1.while.end.1_crit_edge:               ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.1

while.end.1:                                      ; preds = %while.body.1.while.end.1_crit_edge, %while.end.while.end.1_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @virtbt_flush(ptr nocapture noundef readnone %hdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtbt_send_frame(ptr nocapture noundef readonly %hdev, ptr noundef %skb) #2 align 64 {
entry:
  %sg = alloca [1 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #7
  %2 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #7
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %3 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cb, align 8
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %call1, align 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %7, i32 noundef %9) #7
  %vqs = getelementptr inbounds %struct.virtio_bluetooth, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vqs, align 4
  %call4 = call i32 @virtqueue_add_outbuf(ptr noundef %11, ptr noundef nonnull %sg, i32 noundef 1, ptr noundef %skb, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vqs, align 4
  %call7 = call zeroext i1 @virtqueue_kick(ptr noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #7
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtbt_setup_zephyr(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -1016, i32 noundef 0, ptr noundef null, i32 noundef 1000) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 1
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.8, ptr noundef %name, ptr noundef %add.ptr) #7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 1
  tail call void (ptr, ptr, ...) @hci_set_fw_info(ptr noundef %hdev, ptr noundef nonnull @.str.9, ptr noundef %add.ptr5) #7
  tail call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtbt_shutdown_generic(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext 3075, i32 noundef 0, ptr noundef null, i32 noundef 1000) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtbt_set_bdaddr_zephyr(ptr noundef %hdev, ptr noundef %bdaddr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -1018, i32 noundef 6, ptr noundef %bdaddr, i32 noundef 1000) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtbt_setup_intel(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -1019, i32 noundef 0, ptr noundef null, i32 noundef 200) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtbt_set_bdaddr_intel(ptr noundef %hdev, ptr noundef %bdaddr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -975, i32 noundef 6, ptr noundef %bdaddr, i32 noundef 1000) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtbt_setup_realtek(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext -915, i32 noundef 0, ptr noundef null, i32 noundef 1000) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %4 to i32
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %conv) #7
  tail call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_inbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_detach_unused_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_outbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_set_fw_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_virtio_bt__478_402_virtbt_driver_init6, !1, !"__initcall__kmod_virtio_bt__478_402_virtbt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/virtio_bt.c", i32 402, i32 1}
!2 = !{ptr @__exitcall_virtbt_driver_exit, !1, !"__exitcall_virtbt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author479, !4, !"__UNIQUE_ID_author479", i1 false, i1 false}
!4 = !{!"../drivers/bluetooth/virtio_bt.c", i32 404, i32 1}
!5 = !{ptr @__UNIQUE_ID_description480, !6, !"__UNIQUE_ID_description480", i1 false, i1 false}
!6 = !{!"../drivers/bluetooth/virtio_bt.c", i32 405, i32 1}
!7 = !{ptr @__UNIQUE_ID_version481, !8, !"__UNIQUE_ID_version481", i1 false, i1 false}
!8 = !{!"../drivers/bluetooth/virtio_bt.c", i32 406, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file482, !14, !"__UNIQUE_ID_file482", i1 false, i1 false}
!14 = !{!"../drivers/bluetooth/virtio_bt.c", i32 407, i32 1}
!15 = !{ptr @__UNIQUE_ID_license483, !14, !"__UNIQUE_ID_license483", i1 false, i1 false}
!16 = !{ptr @virtbt_driver, !17, !"virtbt_driver", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/virtio_bt.c", i32 392, i32 29}
!18 = !{ptr @virtbt_table, !19, !"virtbt_table", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/virtio_bt.c", i32 379, i32 32}
!20 = !{ptr @virtbt_features, !21, !"virtbt_features", i1 false, i1 false}
!21 = !{!"../drivers/bluetooth/virtio_bt.c", i32 386, i32 27}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bluetooth/virtio_bt.c", i32 254, i32 20}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bluetooth/virtio_bt.c", i32 255, i32 20}
!26 = !{ptr @virtbt_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/bluetooth/virtio_bt.c", i32 282, i32 2}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bluetooth/virtio_bt.c", i32 309, i32 3}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/virtio_config.h", i32 475, i32 2}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bluetooth/virtio_bt.c", i32 114, i32 2}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/bluetooth/virtio_bt.c", i32 116, i32 24}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/bluetooth/virtio_bt.c", i32 171, i32 2}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
