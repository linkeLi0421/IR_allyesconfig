; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/btsdio.c_pt.bc'
source_filename = "../drivers/bluetooth/btsdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.atomic_t = type { i32 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.sdio_func_tuple = type { ptr, i8, i8, [0 x i8] }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btsdio_data = type { ptr, ptr, %struct.work_struct, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
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

@__initcall__kmod_btsdio__499_376_btsdio_driver_init6 = internal global ptr @btsdio_driver_init, section ".initcall6.init", align 4
@btsdio_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str.1, ptr @btsdio_table, ptr @btsdio_probe, ptr @btsdio_remove, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_btsdio_driver_exit = internal global ptr @btsdio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author500 = internal constant [52 x i8] c"btsdio.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description501 = internal constant [57 x i8] c"btsdio.description=Generic Bluetooth SDIO driver ver 0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_version502 = internal constant [19 x i8] c"btsdio.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"btsdio\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file503 = internal constant [37 x i8] c"btsdio.file=drivers/bluetooth/btsdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license504 = internal constant [19 x i8] c"btsdio.license=GPL\00", section ".modinfo", align 1
@btsdio_table = internal constant { [4 x %struct.sdio_device_id], [48 x i8] } { [4 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 2, i16 -1, i16 -1, i32 0 }, %struct.sdio_device_id { i8 3, i16 -1, i16 -1, i32 0 }, %struct.sdio_device_id { i8 9, i16 -1, i16 -1, i32 0 }, %struct.sdio_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@btsdio_probe.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"btsdio_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/bluetooth/btsdio.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"func %p id %p class 0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@btsdio_probe.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"code 0x%x size %d\0A\00", [45 x i8] zeroinitializer }, align 32
@btsdio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&data->work)\00", [33 x i8] zeroinitializer }, align 32
@btsdio_work.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"btsdio_work\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@btsdio_tx_packet.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.4, ptr @.str.9, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"btsdio_tx_packet\00", [47 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@btsdio_open.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.4, ptr @.str.9, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"btsdio_open\00", [20 x i8] zeroinitializer }, align 32
@btsdio_interrupt.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.4, ptr @.str.9, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"btsdio_interrupt\00", [47 x i8] zeroinitializer }, align 32
@btsdio_rx_packet.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.4, ptr @.str.9, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"btsdio_rx_packet\00", [47 x i8] zeroinitializer }, align 32
@btsdio_close.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.4, ptr @.str.9, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"btsdio_close\00", [19 x i8] zeroinitializer }, align 32
@btsdio_flush.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.4, ptr @.str.9, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"btsdio_flush\00", [19 x i8] zeroinitializer }, align 32
@btsdio_send_frame.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.4, ptr @.str.9, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"btsdio_send_frame\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@btsdio_remove.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"btsdio_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"func %p\0A\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 17221, i64 17238, i64 43341, i64 43430, i64 43455]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"btsdio_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 369, i32 27 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 380, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"btsdio_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 28, i32 36 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 283, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 286, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 311, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 97, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 68, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1984, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 191, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 173, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 119, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 220, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 238, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 249, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [30 x i8] c"../drivers/bluetooth/btsdio.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 355, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author500, ptr @__UNIQUE_ID_description501, ptr @__UNIQUE_ID_file503, ptr @__UNIQUE_ID_license504, ptr @__UNIQUE_ID_version502, ptr @__exitcall_btsdio_driver_exit, ptr @__initcall__kmod_btsdio__499_376_btsdio_driver_init6, ptr @__modver_attr, ptr @btsdio_driver_exit, ptr @btsdio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @btsdio_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @btsdio_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @skb_queue_head_init.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btsdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btsdio_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btsdio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @btsdio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @btsdio_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @btsdio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sdio_unregister_driver(ptr noundef nonnull @btsdio_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btsdio_probe(ptr noundef %func, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tuples = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 16
  %0 = ptrtoint ptr %tuples to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuples, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btsdio_probe.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btsdio_probe, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %class = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 4
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %class, align 8
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btsdio_probe.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.5, ptr noundef %func, ptr noundef %id, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not123 = icmp eq ptr %1, null
  br i1 %tobool3.not123, label %do.end.while.end_crit_edge, label %do.end.do.body4_crit_edge

do.end.do.body4_crit_edge:                        ; preds = %do.end
  br label %do.body4

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.body4:                                         ; preds = %do.end21.do.body4_crit_edge, %do.end.do.body4_crit_edge
  %tuple.0124 = phi ptr [ %9, %do.end21.do.body4_crit_edge ], [ %1, %do.end.do.body4_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btsdio_probe.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btsdio_probe, %if.then16)) #4
          to label %do.end21 [label %if.then16], !srcloc !72

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  %code = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0124, i32 0, i32 1
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %code, align 4
  %conv17 = zext i8 %5 to i32
  %size = getelementptr inbounds %struct.sdio_func_tuple, ptr %tuple.0124, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %size, align 1
  %conv18 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btsdio_probe.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.6, i32 noundef %conv17, i32 noundef %conv18) #4
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %do.body4
  %8 = ptrtoint ptr %tuple.0124 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tuple.0124, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %do.end21.while.end_crit_edge, label %do.end21.do.body4_crit_edge

do.end21.do.body4_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body4

do.end21.while.end_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %do.end21.while.end_crit_edge, %do.end.while.end_crit_edge
  %vendor = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 5
  %10 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %11)
  %cmp = icmp eq i16 %11, 720
  br i1 %cmp, label %land.lhs.true, label %while.end.if.end28_crit_edge

while.end.if.end28_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

land.lhs.true:                                    ; preds = %while.end
  %12 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps.i, align 32
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool25.not.not = icmp eq i32 %18, 0
  br i1 %tobool25.not.not, label %land.lhs.true.if.end28_crit_edge, label %if.then26

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then26:                                        ; preds = %land.lhs.true
  %device = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 6
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device, align 4
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i16 %20, label %if.then26.if.end28_crit_edge [
    i16 -22195, label %if.then26.cleanup_crit_edge
    i16 -22106, label %if.then26.cleanup_crit_edge126
    i16 17221, label %if.then26.cleanup_crit_edge127
    i16 -22081, label %if.then26.cleanup_crit_edge128
    i16 17238, label %if.then26.cleanup_crit_edge129
  ]

if.then26.cleanup_crit_edge129:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then26.cleanup_crit_edge128:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then26.cleanup_crit_edge127:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then26.cleanup_crit_edge126:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then26.if.end28_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.end28:                                         ; preds = %if.then26.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %while.end.if.end28_crit_edge
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #4
  %tobool30.not = icmp eq ptr %call.i, null
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %func33 = getelementptr inbounds %struct.btsdio_data, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %func33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %func, ptr %func33, align 4
  %work = getelementptr inbounds %struct.btsdio_data, ptr %call.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #4
  %23 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.btsdio_data, ptr %call.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @btsdio_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry39 = getelementptr inbounds %struct.btsdio_data, ptr %call.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %entry39 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry39, ptr %entry39, align 4
  %prev.i = getelementptr inbounds %struct.btsdio_data, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry39, ptr %prev.i, align 4
  %func41 = getelementptr inbounds %struct.btsdio_data, ptr %call.i, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %func41 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @btsdio_work, ptr %func41, align 4
  %txq = getelementptr inbounds %struct.btsdio_data, ptr %call.i, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.btsdio_data, ptr %call.i, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #4
  %27 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %txq, ptr %txq, align 4
  %prev.i.i = getelementptr inbounds %struct.btsdio_data, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %txq, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.btsdio_data, ptr %call.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %qlen.i.i, align 4
  %call.i120 = tail call ptr @hci_alloc_dev_priv(i32 noundef 0) #4
  %tobool45.not = icmp eq ptr %call.i120, null
  br i1 %tobool45.not, label %if.end32.cleanup_crit_edge, label %if.end47

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end47:                                         ; preds = %if.end32
  %bus = getelementptr inbounds %struct.hci_dev, ptr %call.i120, i32 0, i32 5
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 6, ptr %bus, align 2
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %call.i120, i32 0, i32 204, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %33)
  %cmp50 = icmp eq i8 %33, 9
  %spec.select = zext i1 %cmp50 to i8
  %34 = getelementptr inbounds %struct.hci_dev, ptr %call.i120, i32 0, i32 6
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %spec.select, ptr %34, align 1
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i120, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.hci_dev, ptr %call.i120, i32 0, i32 204, i32 1
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev, ptr %parent, align 8
  %open = getelementptr inbounds %struct.hci_dev, ptr %call.i120, i32 0, i32 232
  %38 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @btsdio_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.hci_dev, ptr %call.i120, i32 0, i32 233
  %39 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @btsdio_close, ptr %close, align 4
  %flush = getelementptr inbounds %struct.hci_dev, ptr %call.i120, i32 0, i32 234
  %40 = ptrtoint ptr %flush to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @btsdio_flush, ptr %flush, align 8
  %send = getelementptr inbounds %struct.hci_dev, ptr %call.i120, i32 0, i32 237
  %41 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @btsdio_send_frame, ptr %send, align 4
  %42 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 260, i16 %43)
  %cmp60 = icmp eq i16 %43, 260
  br i1 %cmp60, label %land.lhs.true62, label %if.end47.if.end68_crit_edge

if.end47.if.end68_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

land.lhs.true62:                                  ; preds = %if.end47
  %device63 = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 6
  %44 = ptrtoint ptr %device63 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %device63, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 197, i16 %45)
  %cmp65 = icmp eq i16 %45, 197
  br i1 %cmp65, label %if.then67, label %land.lhs.true62.if.end68_crit_edge

land.lhs.true62.if.end68_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

if.then67:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %call.i120, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 0, ptr noundef %quirks) #4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %land.lhs.true62.if.end68_crit_edge, %if.end47.if.end68_crit_edge
  %call69 = tail call i32 @hci_register_dev(ptr noundef nonnull %call.i120) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hci_free_dev(ptr noundef nonnull %call.i120) #4
  br label %cleanup

if.end73:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %46 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.then72, %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.then26.cleanup_crit_edge126, %if.then26.cleanup_crit_edge127, %if.then26.cleanup_crit_edge128, %if.then26.cleanup_crit_edge129
  %retval.0 = phi i32 [ %call69, %if.then72 ], [ 0, %if.end73 ], [ -19, %if.then26.cleanup_crit_edge ], [ -19, %if.then26.cleanup_crit_edge126 ], [ -19, %if.then26.cleanup_crit_edge127 ], [ -19, %if.then26.cleanup_crit_edge128 ], [ -19, %if.then26.cleanup_crit_edge129 ], [ -12, %if.end28.cleanup_crit_edge ], [ -12, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btsdio_remove(ptr noundef %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btsdio_remove.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btsdio_remove, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btsdio_remove.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.19, ptr noundef %func) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i, align 4
  tail call void @hci_unregister_dev(ptr noundef %3) #4
  tail call void @hci_free_dev(ptr noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btsdio_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btsdio_work.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btsdio_work, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btsdio_work.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.9, ptr noundef %name) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %func = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #4
  %txq = getelementptr i8, ptr %work, i32 44
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.end
  %call4 = tail call ptr @skb_dequeue(ptr noundef %txq) #4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.cond
  %call6 = tail call fastcc i32 @btsdio_tx_packet(ptr noundef %add.ptr, ptr noundef nonnull %call4)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %err_tx = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 199, i32 1
  %6 = ptrtoint ptr %err_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %err_tx, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %err_tx, align 4
  tail call void @skb_queue_head(ptr noundef %txq, ptr noundef nonnull %call4) #4
  br label %while.end

while.end:                                        ; preds = %if.then7, %while.cond.while.end_crit_edge
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func, align 4
  tail call void @sdio_release_host(ptr noundef %9) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btsdio_open(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btsdio_open.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btsdio_open, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btsdio_open.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.9, ptr noundef %name) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %func = getelementptr inbounds %struct.btsdio_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #4
  %4 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func, align 4
  %call5 = tail call i32 @sdio_enable_func(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end.release_crit_edge, label %if.end7

do.end.release_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %release

if.end7:                                          ; preds = %do.end
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 4
  %call9 = tail call i32 @sdio_claim_irq(ptr noundef %7, ptr noundef nonnull @btsdio_interrupt) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func, align 4
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call i32 @sdio_disable_func(ptr noundef %9) #4
  br label %release

if.end14:                                         ; preds = %if.end7
  %class = getelementptr inbounds %struct.sdio_func, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp16 = icmp eq i8 %11, 3
  br i1 %cmp16, label %if.then18, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sdio_writeb(ptr noundef %9, i8 noundef zeroext 0, i32 noundef 32, ptr noundef null) #4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14.if.end20_crit_edge
  %12 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func, align 4
  tail call void @sdio_writeb(ptr noundef %13, i8 noundef zeroext 1, i32 noundef 20, ptr noundef null) #4
  br label %release

release:                                          ; preds = %if.end20, %if.then11, %do.end.release_crit_edge
  %err.0 = phi i32 [ %call5, %do.end.release_crit_edge ], [ %call9, %if.then11 ], [ %call9, %if.end20 ]
  %14 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %func, align 4
  tail call void @sdio_release_host(ptr noundef %15) #4
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btsdio_close(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btsdio_close.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btsdio_close, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btsdio_close.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.9, ptr noundef %name) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %func = getelementptr inbounds %struct.btsdio_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #4
  %4 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func, align 4
  tail call void @sdio_writeb(ptr noundef %5, i8 noundef zeroext 0, i32 noundef 20, ptr noundef null) #4
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 4
  %call6 = tail call i32 @sdio_release_irq(ptr noundef %7) #4
  %8 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %func, align 4
  %call8 = tail call i32 @sdio_disable_func(ptr noundef %9) #4
  %10 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %func, align 4
  tail call void @sdio_release_host(ptr noundef %11) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btsdio_flush(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btsdio_flush.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btsdio_flush, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btsdio_flush.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.9, ptr noundef %name) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %txq = getelementptr inbounds %struct.btsdio_data, ptr %1, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %txq) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @btsdio_send_frame(ptr noundef %hdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btsdio_send_frame.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btsdio_send_frame, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btsdio_send_frame.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.9, ptr noundef %name) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %3, label %do.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb5
    i8 3, label %sw.bb8
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %cmd_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 2
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %acl_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %sco_tx = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 199, i32 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb5, %sw.bb
  %sco_tx.sink19 = phi ptr [ %sco_tx, %sw.bb8 ], [ %acl_tx, %sw.bb5 ], [ %cmd_tx, %sw.bb ]
  %5 = ptrtoint ptr %sco_tx.sink19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sco_tx.sink19, align 8
  %inc10 = add i32 %6, 1
  store i32 %inc10, ptr %sco_tx.sink19, align 8
  %txq = getelementptr inbounds %struct.btsdio_data, ptr %1, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #4
  %work = getelementptr inbounds %struct.btsdio_data, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -84, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btsdio_tx_packet(ptr nocapture noundef readonly %data, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btsdio_tx_packet.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btsdio_tx_packet, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btsdio_tx_packet.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.9, ptr noundef %name) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %conv = trunc i32 %3 to i8
  %data4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data4, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %5, align 1
  %7 = load i32, ptr %len, align 4
  %and6 = lshr i32 %7, 8
  %conv7 = trunc i32 %and6 to i8
  %8 = load ptr, ptr %data4, align 4
  %arrayidx9 = getelementptr i8, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv7, ptr %arrayidx9, align 1
  %10 = load i32, ptr %len, align 4
  %and11 = lshr i32 %10, 16
  %conv13 = trunc i32 %and11 to i8
  %11 = load ptr, ptr %data4, align 4
  %arrayidx15 = getelementptr i8, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13, ptr %arrayidx15, align 1
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %13 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cb, align 8
  %15 = load ptr, ptr %data4, align 4
  %arrayidx18 = getelementptr i8, ptr %15, i32 3
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %14, ptr %arrayidx18, align 1
  %func = getelementptr inbounds %struct.btsdio_data, ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %func, align 4
  %19 = load ptr, ptr %data4, align 4
  %20 = load i32, ptr %len, align 4
  %call21 = tail call i32 @sdio_writesb(ptr noundef %18, i32 noundef 0, ptr noundef %19, i32 noundef %20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.then23, label %if.end26

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call24 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #4
  %21 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %func, align 4
  tail call void @sdio_writeb(ptr noundef %22, i8 noundef zeroext 1, i32 noundef 17, ptr noundef null) #4
  br label %cleanup

if.end26:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %byte_tx = getelementptr inbounds %struct.hci_dev, ptr %26, i32 0, i32 199, i32 9
  %27 = ptrtoint ptr %byte_tx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %byte_tx, align 4
  %add = add i32 %28, %24
  store i32 %add, ptr %byte_tx, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then23
  %retval.0 = phi i32 [ %call21, %if.then23 ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_writesb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btsdio_interrupt(ptr noundef %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btsdio_interrupt.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btsdio_interrupt, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btsdio_interrupt.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.9, ptr noundef %name) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call zeroext i8 @sdio_readb(ptr noundef %func, i32 noundef 19, ptr noundef null) #4
  %4 = and i8 %call4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %do.end.if.end13_crit_edge, label %if.then6

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then6:                                         ; preds = %do.end
  tail call void @sdio_writeb(ptr noundef %func, i8 noundef zeroext 1, i32 noundef 19, ptr noundef null) #4
  %call7 = tail call fastcc i32 @btsdio_rx_packet(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then9, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %stat = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 199
  %7 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %stat, align 8
  %func11 = getelementptr inbounds %struct.btsdio_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %func11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func11, align 4
  tail call void @sdio_writeb(ptr noundef %10, i8 noundef zeroext 1, i32 noundef 16, ptr noundef null) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then6.if.end13_crit_edge, %do.end.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btsdio_rx_packet(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  %hdr = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr) #4
  %0 = getelementptr inbounds [4 x i8], ptr %hdr, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %hdr, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %hdr, i32 0, i32 3
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %hdr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @btsdio_rx_packet.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@btsdio_rx_packet, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @btsdio_rx_packet.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.9, ptr noundef %name) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %func = getelementptr inbounds %struct.btsdio_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func, align 4
  %call4 = call i32 @sdio_readsb(ptr noundef %7, ptr noundef nonnull %hdr, i32 noundef 0, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %8 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hdr, align 4
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 1
  %conv8 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv8, 8
  %or = or i32 %shl, %conv
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 2
  %conv10 = zext i8 %13 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %or12 = or i32 %or, %shl11
  %14 = add nsw i32 %or12, -65544
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65540, i32 %14)
  %15 = icmp ult i32 %14, -65540
  br i1 %15, label %if.end6.cleanup_crit_edge, label %if.end18

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %add.i = add nuw nsw i32 %or12, 4
  %call.i.i = call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %sub = add nsw i32 %or12, -4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %19, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call24 = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub) #4
  %20 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %func, align 4
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %call28 = call i32 @sdio_readsb(ptr noundef %21, ptr noundef %23, i32 noundef 0, i32 noundef %sub) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #4
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %byte_rx = getelementptr inbounds %struct.hci_dev, ptr %25, i32 0, i32 199, i32 8
  %26 = ptrtoint ptr %byte_rx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %byte_rx, align 8
  %add = add i32 %27, %or12
  store i32 %add, ptr %byte_rx, align 8
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %2, align 1
  %.off = add i8 %29, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off)
  %switch = icmp ult i8 %.off, 4
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end32
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %cb, align 8
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %call39 = call i32 @hci_recv_frame(ptr noundef %32, ptr noundef nonnull %call.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %sw.bb.cleanup_crit_edge, label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %func, align 4
  call void @sdio_writeb(ptr noundef %34, i8 noundef zeroext 0, i32 noundef 16, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %sw.bb.cleanup_crit_edge, %if.then31, %if.end18.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.then31 ], [ -22, %sw.default ], [ 0, %sw.epilog ], [ %call4, %do.end.cleanup_crit_edge ], [ -84, %if.end6.cleanup_crit_edge ], [ %call39, %sw.bb.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !27, !28, !30, !31, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_btsdio__499_376_btsdio_driver_init6, !1, !"__initcall__kmod_btsdio__499_376_btsdio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/btsdio.c", i32 376, i32 1}
!2 = !{ptr @__exitcall_btsdio_driver_exit, !1, !"__exitcall_btsdio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author500, !4, !"__UNIQUE_ID_author500", i1 false, i1 false}
!4 = !{!"../drivers/bluetooth/btsdio.c", i32 378, i32 1}
!5 = !{ptr @__UNIQUE_ID_description501, !6, !"__UNIQUE_ID_description501", i1 false, i1 false}
!6 = !{!"../drivers/bluetooth/btsdio.c", i32 379, i32 1}
!7 = !{ptr @__UNIQUE_ID_version502, !8, !"__UNIQUE_ID_version502", i1 false, i1 false}
!8 = !{!"../drivers/bluetooth/btsdio.c", i32 380, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file503, !14, !"__UNIQUE_ID_file503", i1 false, i1 false}
!14 = !{!"../drivers/bluetooth/btsdio.c", i32 381, i32 1}
!15 = !{ptr @__UNIQUE_ID_license504, !14, !"__UNIQUE_ID_license504", i1 false, i1 false}
!16 = !{ptr @btsdio_driver, !17, !"btsdio_driver", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/btsdio.c", i32 369, i32 27}
!18 = !{ptr @btsdio_table, !19, !"btsdio_table", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/btsdio.c", i32 28, i32 36}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/bluetooth/btsdio.c", i32 283, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @btsdio_probe.__UNIQUE_ID_ddebug496, !21, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/bluetooth/btsdio.c", i32 286, i32 3}
!27 = !{ptr @btsdio_probe.__UNIQUE_ID_ddebug497, !26, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!28 = !{ptr @btsdio_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/bluetooth/btsdio.c", i32 311, i32 2}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bluetooth/btsdio.c", i32 97, i32 2}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @btsdio_work.__UNIQUE_ID_ddebug489, !32, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/bluetooth/btsdio.c", i32 68, i32 2}
!37 = !{ptr @btsdio_tx_packet.__UNIQUE_ID_ddebug488, !36, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!38 = !{ptr @skb_queue_head_init.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/bluetooth/btsdio.c", i32 191, i32 2}
!43 = !{ptr @btsdio_open.__UNIQUE_ID_ddebug492, !42, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bluetooth/btsdio.c", i32 173, i32 2}
!46 = !{ptr @btsdio_interrupt.__UNIQUE_ID_ddebug491, !45, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/bluetooth/btsdio.c", i32 119, i32 2}
!49 = !{ptr @btsdio_rx_packet.__UNIQUE_ID_ddebug490, !48, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/bluetooth/btsdio.c", i32 220, i32 2}
!52 = !{ptr @btsdio_close.__UNIQUE_ID_ddebug493, !51, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/bluetooth/btsdio.c", i32 238, i32 2}
!55 = !{ptr @btsdio_flush.__UNIQUE_ID_ddebug494, !54, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bluetooth/btsdio.c", i32 249, i32 2}
!58 = !{ptr @btsdio_send_frame.__UNIQUE_ID_ddebug495, !57, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/bluetooth/btsdio.c", i32 355, i32 2}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @btsdio_remove.__UNIQUE_ID_ddebug498, !60, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2148697585, i64 2148697590, i64 2148697603, i64 2148697647, i64 2148697681, i64 2148697702}
