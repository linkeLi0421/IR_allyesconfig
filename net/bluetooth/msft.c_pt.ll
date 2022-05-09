; ModuleID = '/llk/IR_all_yes/net/bluetooth/msft.c_pt.bc'
source_filename = "../net/bluetooth/msft.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.1, i32, %struct.spinlock }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.msft_cp_le_cancel_monitor_advertisement = type { i8, i8 }
%struct.msft_data = type { i64, i8, ptr, %struct.list_head, i16, i16, i8, i8, i8 }
%struct.adv_monitor = type { %struct.list_head, %struct.adv_rssi_thresholds, i16, i32 }
%struct.adv_rssi_thresholds = type { i8, i8, i16, i16, i8 }
%struct.sk_buff = type { %union.anon.2, %union.anon.105, %union.anon.106, [48 x i8], %union.anon.107, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.109, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { i64 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, ptr }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.111, i32, i32, i32, i16, i16, %union.anon.113, i32, %union.anon.114, %union.anon.115, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.111 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
%union.anon.115 = type { i16 }
%struct.adv_pattern = type { %struct.list_head, i8, i8, i8, [31 x i8] }
%struct.msft_cp_le_monitor_advertisement = type { i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.msft_le_monitor_advertisement_pattern = type { i8, i8, i8, [0 x i8] }
%struct.msft_cp_le_set_advertisement_filter_enable = type { i8, i8 }
%struct.hci_request = type { ptr, %struct.sk_buff_head, i32 }
%struct.msft_cp_read_supported_features = type { i8 }
%struct.msft_rp_read_supported_features = type <{ i8, i8, i64, i8, [0 x i8] }>
%struct.msft_monitor_advertisement_handle_data = type { i8, i16, %struct.list_head }
%struct.msft_rp_le_monitor_advertisement = type { i8, i8, i8 }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: MSFT extension not registered\0A\00", [61 x i8] zeroinitializer }, align 32
@msft_do_open.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -128, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bluetooth\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msft_do_open\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/bluetooth/msft.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Initialize MSFT extension\0A\00", [33 x i8] zeroinitializer }, align 32
@msft_do_close.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msft_do_close\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Cleanup of MSFT extension\0A\00", [33 x i8] zeroinitializer }, align 32
@msft_register.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msft_register\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Register MSFT extension\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Failed to register MSFT extension\0A\00", [57 x i8] zeroinitializer }, align 32
@msft_unregister.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msft_unregister\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Unregister MSFT extension\0A\00", [33 x i8] zeroinitializer }, align 32
@msft_vendor_evt.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msft_vendor_evt\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: MSFT vendor event %u\0A\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: msft add advmon: monitor %u is not found!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Failed to read MSFT supported features (%ld)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: MSFT supported features length mismatch\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: MSFT filter_enable is already %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 12]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 508, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 512, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 545, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 566, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 570, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 585, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 623, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 220, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 123, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 129, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [24 x i8] c"../net/bluetooth/msft.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 661, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @msft_monitor_supported(ptr nocapture noundef readonly %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_data.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %0 = ptrtoint ptr %msft_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msft_data.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.msft_get_features.exit_crit_edge, label %cond.true.i

entry.msft_get_features.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %msft_get_features.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %phi.bo = and i64 %3, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %phi.bo)
  %phi.cmp = icmp ne i64 %phi.bo, 0
  br label %msft_get_features.exit

msft_get_features.exit:                           ; preds = %cond.true.i, %entry.msft_get_features.exit_crit_edge
  %cond.i = phi i1 [ %phi.cmp, %cond.true.i ], [ false, %entry.msft_get_features.exit_crit_edge ]
  ret i1 %cond.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @msft_get_features(ptr nocapture noundef readonly %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %0 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msft_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i64 [ %3, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i64 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msft_suspend_sync(ptr noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  %cp.i = alloca %struct.msft_cp_le_cancel_monitor_advertisement, align 1
  %handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %0 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msft_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #9
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %handle, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %msft_monitor_supported.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

msft_monitor_supported.exit:                      ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %1, align 8
  %phi.bo.i = and i64 %4, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %phi.bo.i)
  %phi.cmp.i.not = icmp eq i64 %phi.bo.i, 0
  br i1 %phi.cmp.i.not, label %msft_monitor_supported.exit.cleanup_crit_edge, label %if.end

msft_monitor_supported.exit.cleanup_crit_edge:    ; preds = %msft_monitor_supported.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %msft_monitor_supported.exit
  %suspending = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %suspending to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %suspending, align 1
  %adv_monitors_idr = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 218
  %call117 = call ptr @idr_get_next(ptr noundef %adv_monitors_idr, ptr noundef nonnull %handle) #9
  %tobool2.not18 = icmp eq ptr %call117, null
  br i1 %tobool2.not18, label %if.end.while.end_crit_edge, label %if.end4.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end4.lr.ph:                                    ; preds = %if.end
  %6 = getelementptr inbounds %struct.msft_cp_le_cancel_monitor_advertisement, ptr %cp.i, i32 0, i32 1
  %msft_opcode.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 227
  br label %if.end4

if.end4:                                          ; preds = %msft_remove_monitor_sync.exit.if.end4_crit_edge, %if.end4.lr.ph
  %call119 = phi ptr [ %call117, %if.end4.lr.ph ], [ %call1, %msft_remove_monitor_sync.exit.if.end4_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cp.i) #9
  %handle.i = getelementptr inbounds %struct.adv_monitor, ptr %call119, i32 0, i32 2
  %7 = ptrtoint ptr %handle.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %handle.i, align 4
  %9 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msft_data, align 8
  %handle_map.i.i = getelementptr inbounds %struct.msft_data, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %handle_map.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn28.i.i = load ptr, ptr %handle_map.i.i, align 4
  %cmp.not30.i.i = icmp eq ptr %.pn28.i.i, %handle_map.i.i
  br i1 %cmp.not30.i.i, label %if.end4.msft_remove_monitor_sync.exit_crit_edge, label %if.end4.for.body.i.i_crit_edge

if.end4.for.body.i.i_crit_edge:                   ; preds = %if.end4
  br label %for.body.i.i

if.end4.msft_remove_monitor_sync.exit_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %msft_remove_monitor_sync.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end4.for.body.i.i_crit_edge
  %.pn31.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn28.i.i, %if.end4.for.body.i.i_crit_edge ]
  %mgmt_handle.i.i = getelementptr i8, ptr %.pn31.i.i, i32 -2
  %12 = ptrtoint ptr %mgmt_handle.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mgmt_handle.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %8)
  %cmp4.i.i = icmp eq i16 %13, %8
  br i1 %cmp4.i.i, label %msft_find_handle_data.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %14 = ptrtoint ptr %.pn31.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i.i = load ptr, ptr %.pn31.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %handle_map.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.msft_remove_monitor_sync.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.msft_remove_monitor_sync.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msft_remove_monitor_sync.exit

msft_find_handle_data.exit.i:                     ; preds = %for.body.i.i
  %entry1.032.i.le.i = getelementptr i8, ptr %.pn31.i.i, i32 -4
  %tobool.not.i = icmp eq ptr %entry1.032.i.le.i, null
  br i1 %tobool.not.i, label %msft_find_handle_data.exit.i.msft_remove_monitor_sync.exit_crit_edge, label %if.end.i

msft_find_handle_data.exit.i.msft_remove_monitor_sync.exit_crit_edge: ; preds = %msft_find_handle_data.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msft_remove_monitor_sync.exit

if.end.i:                                         ; preds = %msft_find_handle_data.exit.i
  %15 = ptrtoint ptr %cp.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %cp.i, align 1
  %16 = ptrtoint ptr %entry1.032.i.le.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %entry1.032.i.le.i, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %6, align 1
  %19 = ptrtoint ptr %msft_opcode.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %msft_opcode.i, align 4
  %call3.i = call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext %20, i32 noundef 2, ptr noundef nonnull %cp.i, i32 noundef 200) #9
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.msft_remove_monitor_sync.exit_crit_edge, label %if.end7.i

if.end.i.msft_remove_monitor_sync.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msft_remove_monitor_sync.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %call8.i = call ptr @skb_pull(ptr noundef %call3.i, i32 noundef 1) #9
  %25 = ptrtoint ptr %msft_opcode.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %msft_opcode.i, align 4
  call void @msft_le_cancel_monitor_advertisement_cb(ptr noundef %hdev, i8 noundef zeroext %24, i16 noundef zeroext %26, ptr noundef %call3.i) #9
  br label %msft_remove_monitor_sync.exit

msft_remove_monitor_sync.exit:                    ; preds = %if.end7.i, %if.end.i.msft_remove_monitor_sync.exit_crit_edge, %msft_find_handle_data.exit.i.msft_remove_monitor_sync.exit_crit_edge, %for.inc.i.i.msft_remove_monitor_sync.exit_crit_edge, %if.end4.msft_remove_monitor_sync.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cp.i) #9
  %27 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %handle, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %handle, align 4
  %call1 = call ptr @idr_get_next(ptr noundef %adv_monitors_idr, ptr noundef nonnull %handle) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %msft_remove_monitor_sync.exit.while.end_crit_edge, label %msft_remove_monitor_sync.exit.if.end4_crit_edge

msft_remove_monitor_sync.exit.if.end4_crit_edge:  ; preds = %msft_remove_monitor_sync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

msft_remove_monitor_sync.exit.while.end_crit_edge: ; preds = %msft_remove_monitor_sync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %msft_remove_monitor_sync.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %29 = ptrtoint ptr %suspending to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %suspending, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %msft_monitor_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msft_resume_sync(ptr noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  %handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %0 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msft_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #9
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %handle, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %msft_monitor_supported.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

msft_monitor_supported.exit:                      ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %1, align 8
  %phi.bo.i = and i64 %4, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %phi.bo.i)
  %phi.cmp.i.not = icmp eq i64 %phi.bo.i, 0
  br i1 %phi.cmp.i.not, label %msft_monitor_supported.exit.cleanup_crit_edge, label %if.end

msft_monitor_supported.exit.cleanup_crit_edge:    ; preds = %msft_monitor_supported.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %msft_monitor_supported.exit
  %resuming = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %resuming to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %resuming, align 4
  %adv_monitors_idr = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 218
  %call115 = call ptr @idr_get_next(ptr noundef %adv_monitors_idr, ptr noundef nonnull %handle) #9
  %tobool2.not16 = icmp eq ptr %call115, null
  br i1 %tobool2.not16, label %if.end.while.end_crit_edge, label %if.end4.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end4.lr.ph:                                    ; preds = %if.end
  %msft_opcode.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 227
  br label %if.end4

if.end4:                                          ; preds = %msft_add_monitor_sync.exit.if.end4_crit_edge, %if.end4.lr.ph
  %call117 = phi ptr [ %call115, %if.end4.lr.ph ], [ %call1, %msft_add_monitor_sync.exit.if.end4_crit_edge ]
  %high_threshold.i.i.i = getelementptr inbounds %struct.adv_monitor, ptr %call117, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %high_threshold.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %high_threshold.i.i.i, align 1
  %8 = add i8 %7, -21
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %8)
  %9 = icmp ult i8 %8, 108
  br i1 %9, label %if.end4.msft_add_monitor_sync.exit_crit_edge, label %lor.lhs.false6.i.i.i

if.end4.msft_add_monitor_sync.exit_crit_edge:     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %msft_add_monitor_sync.exit

lor.lhs.false6.i.i.i:                             ; preds = %if.end4
  %rssi.i.i.i = getelementptr inbounds %struct.adv_monitor, ptr %call117, i32 0, i32 1
  %10 = ptrtoint ptr %rssi.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rssi.i.i.i, align 2
  %12 = add i8 %11, -21
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %12)
  %13 = icmp ult i8 %12, 108
  br i1 %13, label %lor.lhs.false6.i.i.i.msft_add_monitor_sync.exit_crit_edge, label %if.end.i.i1.i

lor.lhs.false6.i.i.i.msft_add_monitor_sync.exit_crit_edge: ; preds = %lor.lhs.false6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msft_add_monitor_sync.exit

if.end.i.i1.i:                                    ; preds = %lor.lhs.false6.i.i.i
  %high_threshold_timeout.i.i.i = getelementptr inbounds %struct.adv_monitor, ptr %call117, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %high_threshold_timeout.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %high_threshold_timeout.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp16.not.i.i.i = icmp eq i16 %15, 0
  br i1 %cmp16.not.i.i.i, label %msft_monitor_pattern_valid.exit.i, label %if.end.i.i1.i.msft_add_monitor_sync.exit_crit_edge

if.end.i.i1.i.msft_add_monitor_sync.exit_crit_edge: ; preds = %if.end.i.i1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msft_add_monitor_sync.exit

msft_monitor_pattern_valid.exit.i:                ; preds = %if.end.i.i1.i
  %low_threshold_timeout.i.i.i = getelementptr inbounds %struct.adv_monitor, ptr %call117, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %low_threshold_timeout.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %low_threshold_timeout.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 61, i16 %17)
  %cmp21.i.i2.i = icmp ult i16 %17, 61
  br i1 %cmp21.i.i2.i, label %for.cond.preheader.i, label %msft_monitor_pattern_valid.exit.i.msft_add_monitor_sync.exit_crit_edge

msft_monitor_pattern_valid.exit.i.msft_add_monitor_sync.exit_crit_edge: ; preds = %msft_monitor_pattern_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msft_add_monitor_sync.exit

for.cond.preheader.i:                             ; preds = %msft_monitor_pattern_valid.exit.i
  %18 = ptrtoint ptr %call117 to i32
  call void @__asan_load4_noabort(i32 %18)
  %entry1.08.i = load ptr, ptr %call117, align 4
  %cmp.not9.i = icmp eq ptr %entry1.08.i, %call117
  br i1 %cmp.not9.i, label %for.cond.preheader.i.if.end8.i.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end8.i.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %entry1.012.i = phi ptr [ %entry1.0.i, %for.body.i.for.body.i_crit_edge ], [ %entry1.08.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %total_size.011.i = phi i32 [ %add3.i, %for.body.i.for.body.i_crit_edge ], [ 7, %for.cond.preheader.i.for.body.i_crit_edge ]
  %pattern_count.010.i = phi i8 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %inc.i = add i8 %pattern_count.010.i, 1
  %length.i = getelementptr inbounds %struct.adv_pattern, ptr %entry1.012.i, i32 0, i32 3
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %length.i, align 2
  %conv.i = zext i8 %20 to i32
  %add.i = add i32 %total_size.011.i, 3
  %add3.i = add i32 %add.i, %conv.i
  %21 = ptrtoint ptr %entry1.012.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %entry1.0.i = load ptr, ptr %entry1.012.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %call117
  br i1 %cmp.not.i, label %for.body.i.if.end8.i.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end8.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.body.i.if.end8.i.i_crit_edge, %for.cond.preheader.i.if.end8.i.i_crit_edge
  %pattern_count.0.lcssa.i = phi i8 [ 0, %for.cond.preheader.i.if.end8.i.i_crit_edge ], [ %inc.i, %for.body.i.if.end8.i.i_crit_edge ]
  %total_size.0.lcssa.i = phi i32 [ 7, %for.cond.preheader.i.if.end8.i.i_crit_edge ], [ %add3.i, %for.body.i.if.end8.i.i_crit_edge ]
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %total_size.0.lcssa.i, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.msft_add_monitor_sync.exit_crit_edge, label %if.end11.i

if.end8.i.i.msft_add_monitor_sync.exit_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msft_add_monitor_sync.exit

if.end11.i:                                       ; preds = %if.end8.i.i
  %22 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %call9.i.i, align 128
  %23 = ptrtoint ptr %high_threshold.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %high_threshold.i.i.i, align 1
  %rssi_high.i = getelementptr inbounds %struct.msft_cp_le_monitor_advertisement, ptr %call9.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %rssi_high.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %rssi_high.i, align 1
  %26 = ptrtoint ptr %rssi.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rssi.i.i.i, align 4
  %rssi_low.i = getelementptr inbounds %struct.msft_cp_le_monitor_advertisement, ptr %call9.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %rssi_low.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %rssi_low.i, align 2
  %29 = ptrtoint ptr %low_threshold_timeout.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %low_threshold_timeout.i.i.i, align 2
  %conv14.i = trunc i16 %30 to i8
  %rssi_low_interval.i = getelementptr inbounds %struct.msft_cp_le_monitor_advertisement, ptr %call9.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %rssi_low_interval.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv14.i, ptr %rssi_low_interval.i, align 1
  %sampling_period.i = getelementptr inbounds %struct.adv_monitor, ptr %call117, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %sampling_period.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sampling_period.i, align 2
  %rssi_sampling_period.i = getelementptr inbounds %struct.msft_cp_le_monitor_advertisement, ptr %call9.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %rssi_sampling_period.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %rssi_sampling_period.i, align 4
  %cond_type.i = getelementptr inbounds %struct.msft_cp_le_monitor_advertisement, ptr %call9.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %cond_type.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %cond_type.i, align 1
  %data.i = getelementptr inbounds %struct.msft_cp_le_monitor_advertisement, ptr %call9.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %pattern_count.0.lcssa.i, ptr %data.i, align 2
  %37 = ptrtoint ptr %call117 to i32
  call void @__asan_load4_noabort(i32 %37)
  %entry1.114.i = load ptr, ptr %call117, align 4
  %cmp24.not15.i = icmp eq ptr %entry1.114.i, %call117
  br i1 %cmp24.not15.i, label %if.end11.i.for.end52.i_crit_edge, label %for.body27.lr.ph.i

if.end11.i.for.end52.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end52.i

for.body27.lr.ph.i:                               ; preds = %if.end11.i
  %data28.i = getelementptr inbounds %struct.msft_cp_le_monitor_advertisement, ptr %call9.i.i, i32 1, i32 1
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.body27.i.for.body27.i_crit_edge, %for.body27.lr.ph.i
  %entry1.117.i = phi ptr [ %entry1.114.i, %for.body27.lr.ph.i ], [ %entry1.1.i, %for.body27.i.for.body27.i_crit_edge ]
  %offset.016.i = phi i32 [ 0, %for.body27.lr.ph.i ], [ %add45.i, %for.body27.i.for.body27.i_crit_edge ]
  %add.ptr30.i = getelementptr i8, ptr %data28.i, i32 %offset.016.i
  %length31.i = getelementptr inbounds %struct.adv_pattern, ptr %entry1.117.i, i32 0, i32 3
  %38 = ptrtoint ptr %length31.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %length31.i, align 2
  %add33.i = add i8 %39, 2
  %40 = ptrtoint ptr %add.ptr30.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %add33.i, ptr %add.ptr30.i, align 1
  %ad_type.i = getelementptr inbounds %struct.adv_pattern, ptr %entry1.117.i, i32 0, i32 1
  %41 = ptrtoint ptr %ad_type.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ad_type.i, align 4
  %data_type.i = getelementptr inbounds %struct.msft_le_monitor_advertisement_pattern, ptr %add.ptr30.i, i32 0, i32 1
  %43 = ptrtoint ptr %data_type.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %data_type.i, align 1
  %offset36.i = getelementptr inbounds %struct.adv_pattern, ptr %entry1.117.i, i32 0, i32 2
  %44 = ptrtoint ptr %offset36.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %offset36.i, align 1
  %start_byte.i = getelementptr inbounds %struct.msft_le_monitor_advertisement_pattern, ptr %add.ptr30.i, i32 0, i32 2
  %46 = ptrtoint ptr %start_byte.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %start_byte.i, align 1
  %pattern37.i = getelementptr inbounds %struct.msft_le_monitor_advertisement_pattern, ptr %add.ptr30.i, i32 0, i32 3
  %value.i = getelementptr inbounds %struct.adv_pattern, ptr %entry1.117.i, i32 0, i32 4
  %47 = load i8, ptr %length31.i, align 2
  %conv41.i = zext i8 %47 to i32
  %48 = call ptr @memcpy(ptr %pattern37.i, ptr %value.i, i32 %conv41.i)
  %49 = load i8, ptr %length31.i, align 2
  %conv43.i = zext i8 %49 to i32
  %add44.i = add i32 %offset.016.i, 3
  %add45.i = add i32 %add44.i, %conv43.i
  %50 = ptrtoint ptr %entry1.117.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %entry1.1.i = load ptr, ptr %entry1.117.i, align 4
  %cmp24.not.i = icmp eq ptr %entry1.1.i, %call117
  br i1 %cmp24.not.i, label %for.body27.i.for.end52.i_crit_edge, label %for.body27.i.for.body27.i_crit_edge

for.body27.i.for.body27.i_crit_edge:              ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body27.i

for.body27.i.for.end52.i_crit_edge:               ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end52.i

for.end52.i:                                      ; preds = %for.body27.i.for.end52.i_crit_edge, %if.end11.i.for.end52.i_crit_edge
  %51 = ptrtoint ptr %msft_opcode.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %msft_opcode.i, align 4
  %call54.i = call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext %52, i32 noundef %total_size.0.lcssa.i, ptr noundef nonnull %call9.i.i, i32 noundef 200) #9
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  %cmp.i3.i = icmp ugt ptr %call54.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i3.i, label %for.end52.i.msft_add_monitor_sync.exit_crit_edge, label %if.end58.i

for.end52.i.msft_add_monitor_sync.exit_crit_edge: ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msft_add_monitor_sync.exit

if.end58.i:                                       ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %data59.i = getelementptr inbounds %struct.sk_buff, ptr %call54.i, i32 0, i32 19
  %53 = ptrtoint ptr %data59.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data59.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %call60.i = call ptr @skb_pull(ptr noundef %call54.i, i32 noundef 1) #9
  %57 = ptrtoint ptr %msft_opcode.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %msft_opcode.i, align 4
  call void @msft_le_monitor_advertisement_cb(ptr noundef %hdev, i8 noundef zeroext %56, i16 noundef zeroext %58, ptr noundef %call54.i) #9
  br label %msft_add_monitor_sync.exit

msft_add_monitor_sync.exit:                       ; preds = %if.end58.i, %for.end52.i.msft_add_monitor_sync.exit_crit_edge, %if.end8.i.i.msft_add_monitor_sync.exit_crit_edge, %msft_monitor_pattern_valid.exit.i.msft_add_monitor_sync.exit_crit_edge, %if.end.i.i1.i.msft_add_monitor_sync.exit_crit_edge, %lor.lhs.false6.i.i.i.msft_add_monitor_sync.exit_crit_edge, %if.end4.msft_add_monitor_sync.exit_crit_edge
  %59 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %handle, align 4
  %inc = add i32 %60, 1
  store i32 %inc, ptr %handle, align 4
  %call1 = call ptr @idr_get_next(ptr noundef %adv_monitors_idr, ptr noundef nonnull %handle) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %msft_add_monitor_sync.exit.while.end_crit_edge, label %msft_add_monitor_sync.exit.if.end4_crit_edge

msft_add_monitor_sync.exit.if.end4_crit_edge:     ; preds = %msft_add_monitor_sync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

msft_add_monitor_sync.exit.while.end_crit_edge:   ; preds = %msft_add_monitor_sync.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %msft_add_monitor_sync.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %61 = ptrtoint ptr %resuming to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %resuming, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %msft_monitor_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msft_do_open(ptr noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  %handle.addr.i = alloca i32, align 4
  %cp.i.i = alloca %struct.msft_cp_le_set_advertisement_filter_enable, align 1
  %req.i = alloca %struct.hci_request, align 4
  %cp.i = alloca %struct.msft_cp_read_supported_features, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %0 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msft_data, align 8
  %msft_opcode = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 227
  %2 = ptrtoint ptr %msft_opcode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %msft_opcode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then2, label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %name) #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msft_do_open.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msft_do_open, %if.then7)) #9
          to label %do.end [label %if.then7], !srcloc !45

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name8 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @msft_do_open.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.4, ptr noundef %name8) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %evt_prefix = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %evt_prefix to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %evt_prefix, align 4
  tail call void @kfree(ptr noundef %5) #9
  %6 = ptrtoint ptr %evt_prefix to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %evt_prefix, align 4
  %evt_prefix_len = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %evt_prefix_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %evt_prefix_len, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cp.i) #9
  %9 = ptrtoint ptr %cp.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %cp.i, align 1
  %10 = ptrtoint ptr %msft_opcode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %msft_opcode, align 4
  %call1.i = call ptr @__hci_cmd_sync(ptr noundef %hdev, i16 noundef zeroext %11, i32 noundef 1, ptr noundef nonnull %cp.i, i32 noundef 200) #9
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %12 = ptrtoint ptr %call1.i to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.15, ptr noundef %name.i, i32 noundef %12) #9
  br label %if.then13

if.end.i:                                         ; preds = %do.end
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 6
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %14)
  %cmp.i = icmp ult i32 %14, 11
  br i1 %cmp.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %name5.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16, ptr noundef %name5.i) #9
  br label %failed.i

if.end7.i:                                        ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %sub_opcode8.i = getelementptr inbounds %struct.msft_rp_read_supported_features, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %sub_opcode8.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sub_opcode8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp9.not.i = icmp eq i8 %18, 0
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end7.i.failed.i_crit_edge

if.end7.i.failed.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

if.end12.i:                                       ; preds = %if.end7.i
  %evt_prefix_len.i = getelementptr inbounds %struct.msft_rp_read_supported_features, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %evt_prefix_len.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %evt_prefix_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp14.not.i = icmp eq i8 %20, 0
  br i1 %cmp14.not.i, label %if.end12.i.if.end25.i_crit_edge, label %if.then16.i

if.end12.i.if.end25.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then16.i:                                      ; preds = %if.end12.i
  %conv13.i = zext i8 %20 to i32
  %evt_prefix.i = getelementptr inbounds %struct.msft_rp_read_supported_features, ptr %16, i32 0, i32 4
  %call20.i = call ptr @kmemdup(ptr noundef %evt_prefix.i, i32 noundef %conv13.i, i32 noundef 3264) #9
  %21 = ptrtoint ptr %evt_prefix to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call20.i, ptr %evt_prefix, align 4
  %tobool.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool.not.i, label %if.then16.i.failed.i_crit_edge, label %if.then16.i.if.end25.i_crit_edge

if.then16.i.if.end25.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

if.then16.i.failed.i_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed.i

if.end25.i:                                       ; preds = %if.then16.i.if.end25.i_crit_edge, %if.end12.i.if.end25.i_crit_edge
  %22 = ptrtoint ptr %evt_prefix_len.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %evt_prefix_len.i, align 1
  %24 = ptrtoint ptr %evt_prefix_len to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %evt_prefix_len, align 8
  %features.i = getelementptr inbounds %struct.msft_rp_read_supported_features, ptr %16, i32 0, i32 2
  %25 = ptrtoint ptr %features.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %features.i, align 1
  %27 = call i64 @llvm.bswap.i64(i64 %26) #9
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %1, align 8
  %and.i = and i64 %27, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool30.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool30.not.i, label %if.end25.i.if.end15_crit_edge, label %if.then31.i

if.end25.i.if.end15_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then31.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  %msft_curve_validity.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 229
  %29 = ptrtoint ptr %msft_curve_validity.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %msft_curve_validity.i, align 4
  br label %if.end15

failed.i:                                         ; preds = %if.then16.i.failed.i_crit_edge, %if.end7.i.failed.i_crit_edge, %if.then4.i
  call void @kfree_skb_reason(ptr noundef %call1.i, i32 noundef 0) #9
  br label %if.then13

if.then13:                                        ; preds = %failed.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cp.i) #9
  %30 = ptrtoint ptr %msft_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %msft_data, align 8
  call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

if.end15:                                         ; preds = %if.then31.i, %if.end25.i.if.end15_crit_edge
  call void @kfree_skb_reason(ptr noundef %call1.i, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cp.i) #9
  %31 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %msft_data, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end15.cleanup_crit_edge, label %msft_monitor_supported.exit

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

msft_monitor_supported.exit:                      ; preds = %if.end15
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %32, align 8
  %phi.bo.i = and i64 %34, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %phi.bo.i)
  %phi.cmp.i.not = icmp eq i64 %phi.bo.i, 0
  br i1 %phi.cmp.i.not, label %msft_monitor_supported.exit.cleanup_crit_edge, label %if.then17

msft_monitor_supported.exit.cleanup_crit_edge:    ; preds = %msft_monitor_supported.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %msft_monitor_supported.exit
  %resuming = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %resuming to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %resuming, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req.i) #9
  %36 = call ptr @memset(ptr %req.i, i32 255, i32 64)
  %37 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %msft_data, align 8
  %tobool.not.i36 = icmp eq ptr %38, null
  br i1 %tobool.not.i36, label %if.then17.msft_set_filter_enable.exit_crit_edge, label %if.end.i37

if.then17.msft_set_filter_enable.exit_crit_edge:  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %msft_set_filter_enable.exit

if.end.i37:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  call void @hci_req_init(ptr noundef nonnull %req.i, ptr noundef %hdev) #9
  %39 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %req.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cp.i.i) #9
  %41 = getelementptr inbounds %struct.msft_cp_le_set_advertisement_filter_enable, ptr %cp.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %cp.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 5, ptr %cp.i.i, align 1
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %41, align 1
  %msft_opcode.i.i = getelementptr inbounds %struct.hci_dev, ptr %40, i32 0, i32 227
  %44 = ptrtoint ptr %msft_opcode.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %msft_opcode.i.i, align 4
  call void @hci_req_add(ptr noundef nonnull %req.i, i16 noundef zeroext %45, i32 noundef 2, ptr noundef nonnull %cp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cp.i.i) #9
  %call.i = call i32 @hci_req_run_skb(ptr noundef nonnull %req.i, ptr noundef nonnull @msft_le_set_advertisement_filter_enable_cb) #9
  br label %msft_set_filter_enable.exit

msft_set_filter_enable.exit:                      ; preds = %if.end.i37, %if.then17.msft_set_filter_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle.addr.i)
  %46 = ptrtoint ptr %handle.addr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %handle.addr.i, align 4
  %47 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %msft_data, align 8
  %adv_monitors_idr.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 218
  %call3.i = call ptr @idr_get_next(ptr noundef %adv_monitors_idr.i, ptr noundef nonnull %handle.addr.i) #9
  %tobool.not4.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not4.i, label %msft_set_filter_enable.exit.if.then.i41_crit_edge, label %if.end.lr.ph.i

msft_set_filter_enable.exit.if.then.i41_crit_edge: ; preds = %msft_set_filter_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i41

if.end.lr.ph.i:                                   ; preds = %msft_set_filter_enable.exit
  %pending_add_handle.i = getelementptr inbounds %struct.msft_data, ptr %48, i32 0, i32 4
  br label %if.end.i42

if.then.i41:                                      ; preds = %if.end5.i.if.then.i41_crit_edge, %msft_set_filter_enable.exit.if.then.i41_crit_edge
  %resuming.i = getelementptr inbounds %struct.msft_data, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %resuming.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %resuming.i, align 4
  %call1.i40 = call i32 @hci_update_passive_scan(ptr noundef %hdev) #9
  br label %reregister_monitor.exit

if.end.i42:                                       ; preds = %if.end5.i.if.end.i42_crit_edge, %if.end.lr.ph.i
  %call5.i = phi ptr [ %call3.i, %if.end.lr.ph.i ], [ %call.i43, %if.end5.i.if.end.i42_crit_edge ]
  %50 = ptrtoint ptr %handle.addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %handle.addr.i, align 4
  %conv.i = trunc i32 %51 to i16
  %52 = ptrtoint ptr %pending_add_handle.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i, ptr %pending_add_handle.i, align 8
  %call2.i = call fastcc i32 @__msft_add_monitor_pattern(ptr noundef %hdev, ptr noundef nonnull %call5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i42.reregister_monitor.exit_crit_edge, label %if.end5.i

if.end.i42.reregister_monitor.exit_crit_edge:     ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %reregister_monitor.exit

if.end5.i:                                        ; preds = %if.end.i42
  call void @hci_free_adv_monitor(ptr noundef %hdev, ptr noundef nonnull %call5.i) #9
  %53 = ptrtoint ptr %handle.addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %handle.addr.i, align 4
  %inc.i = add i32 %54, 1
  store i32 %inc.i, ptr %handle.addr.i, align 4
  %call.i43 = call ptr @idr_get_next(ptr noundef %adv_monitors_idr.i, ptr noundef nonnull %handle.addr.i) #9
  %tobool.not.i44 = icmp eq ptr %call.i43, null
  br i1 %tobool.not.i44, label %if.end5.i.if.then.i41_crit_edge, label %if.end5.i.if.end.i42_crit_edge

if.end5.i.if.end.i42_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i42

if.end5.i.if.then.i41_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i41

reregister_monitor.exit:                          ; preds = %if.end.i42.reregister_monitor.exit_crit_edge, %if.then.i41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %reregister_monitor.exit, %msft_monitor_supported.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then13, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msft_set_filter_enable(ptr noundef %hdev, i1 noundef zeroext %enable) local_unnamed_addr #1 align 64 {
entry:
  %cp.i = alloca %struct.msft_cp_le_set_advertisement_filter_enable, align 1
  %req = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #9
  %0 = call ptr @memset(ptr %req, i32 255, i32 64)
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %1 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %msft_data, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @hci_req_init(ptr noundef nonnull %req, ptr noundef %hdev) #9
  %frombool.i = zext i1 %enable to i8
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cp.i) #9
  %5 = getelementptr inbounds %struct.msft_cp_le_set_advertisement_filter_enable, ptr %cp.i, i32 0, i32 1
  %6 = ptrtoint ptr %cp.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %cp.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool.i, ptr %5, align 1
  %msft_opcode.i = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 227
  %8 = ptrtoint ptr %msft_opcode.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %msft_opcode.i, align 4
  call void @hci_req_add(ptr noundef nonnull %req, i16 noundef zeroext %9, i32 noundef 2, ptr noundef nonnull %cp.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cp.i) #9
  %call = call i32 @hci_req_run_skb(ptr noundef nonnull %req, ptr noundef nonnull @msft_le_set_advertisement_filter_enable_cb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msft_do_close(ptr noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %0 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msft_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msft_do_close.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msft_do_close, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !45

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @msft_do_close.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.6, ptr noundef %name) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %handle_map = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %handle_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle_map, align 8
  %cmp.not47 = icmp eq ptr %3, %handle_map
  br i1 %cmp.not47, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %adv_monitors_idr = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 218
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in48 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn51, %list_del.exit.for.body_crit_edge ]
  %handle_data.050 = getelementptr i8, ptr %.pn.in48, i32 -4
  %4 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn51 = load ptr, ptr %.pn.in48, align 4
  %mgmt_handle = getelementptr i8, ptr %.pn.in48, i32 -2
  %5 = ptrtoint ptr %mgmt_handle to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mgmt_handle, align 2
  %conv = zext i16 %6 to i32
  %call16 = tail call ptr @idr_find(ptr noundef %adv_monitors_idr, i32 noundef %conv) #9
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %for.body.if.end22_crit_edge, label %land.lhs.true

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true:                                    ; preds = %for.body
  %state = getelementptr inbounds %struct.adv_monitor, ptr %call16, i32 0, i32 3
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp18 = icmp eq i32 %8, 2
  br i1 %cmp18, label %if.then20, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %state, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true.if.end22_crit_edge, %for.body.if.end22_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in48) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end22.list_del.exit_crit_edge

if.end22.list_del.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in48, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end22.list_del.exit_crit_edge
  %16 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in48, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %handle_data.050) #9
  %cmp.not = icmp eq ptr %.pn51, %handle_map
  br i1 %cmp.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msft_register(ptr noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msft_register.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msft_register, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !45

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @msft_register.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.8, ptr noundef %name) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #13
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end8

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %name6 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9, ptr noundef %name6) #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %handle_map = getelementptr inbounds %struct.msft_data, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %handle_map to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %handle_map, ptr %handle_map, align 8
  %prev.i = getelementptr inbounds %struct.msft_data, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %handle_map, ptr %prev.i, align 4
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %3 = ptrtoint ptr %msft_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %msft_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msft_unregister(ptr noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %0 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msft_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msft_unregister.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msft_unregister, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !45

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @msft_unregister.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.11, ptr noundef %name) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %2 = ptrtoint ptr %msft_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %msft_data, align 8
  %evt_prefix = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %evt_prefix to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %evt_prefix, align 4
  tail call void @kfree(ptr noundef %4) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msft_vendor_evt(ptr noundef %hdev, ptr nocapture noundef readnone %data, ptr noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %0 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msft_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %evt_prefix_len = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %evt_prefix_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %evt_prefix_len, align 8
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end.if.end18_crit_edge, label %if.then2

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then2:                                         ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp5 = icmp ult i32 %5, %conv
  br i1 %cmp5, label %if.then2.cleanup_crit_edge, label %if.end8

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.then2
  %data9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data9, align 4
  %evt_prefix = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %evt_prefix to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %evt_prefix, align 4
  %bcmp = tail call i32 @bcmp(ptr %7, ptr %9, i32 %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool12.not = icmp eq i32 %bcmp, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv) #9
  br label %if.end18

if.end18:                                         ; preds = %if.end14, %if.end.if.end18_crit_edge
  %len19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20 = icmp eq i32 %11, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %data24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data24, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %call25 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msft_vendor_evt.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msft_vendor_evt, %if.then30)) #9
          to label %cleanup [label %if.then30], !srcloc !45

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv31 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @msft_vendor_evt.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %conv31) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end23, %if.end18.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msft_add_monitor_pattern(ptr noundef %hdev, ptr noundef %monitor) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %0 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msft_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %resuming = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %resuming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %resuming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %suspending = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %suspending to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %suspending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @__msft_add_monitor_pattern(ptr noundef %hdev, ptr noundef %monitor)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ -95, %entry.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__msft_add_monitor_pattern(ptr noundef %hdev, ptr noundef readonly %monitor) unnamed_addr #1 align 64 {
entry:
  %req = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req) #9
  %0 = call ptr @memset(ptr %req, i32 255, i32 64)
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %1 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %msft_data, align 8
  %high_threshold.i.i = getelementptr inbounds %struct.adv_monitor, ptr %monitor, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %high_threshold.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %high_threshold.i.i, align 1
  %5 = add i8 %4, -21
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %5)
  %6 = icmp ult i8 %5, 108
  br i1 %6, label %entry.cleanup_crit_edge, label %lor.lhs.false6.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false6.i.i:                               ; preds = %entry
  %rssi.i.i = getelementptr inbounds %struct.adv_monitor, ptr %monitor, i32 0, i32 1
  %7 = ptrtoint ptr %rssi.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rssi.i.i, align 2
  %9 = add i8 %8, -21
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %9)
  %10 = icmp ult i8 %9, 108
  br i1 %10, label %lor.lhs.false6.i.i.cleanup_crit_edge, label %if.end.i.i105

lor.lhs.false6.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i105:                                    ; preds = %lor.lhs.false6.i.i
  %high_threshold_timeout.i.i = getelementptr inbounds %struct.adv_monitor, ptr %monitor, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %high_threshold_timeout.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %high_threshold_timeout.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp16.not.i.i = icmp eq i16 %12, 0
  br i1 %cmp16.not.i.i, label %msft_monitor_pattern_valid.exit, label %if.end.i.i105.cleanup_crit_edge

if.end.i.i105.cleanup_crit_edge:                  ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

msft_monitor_pattern_valid.exit:                  ; preds = %if.end.i.i105
  %low_threshold_timeout.i.i = getelementptr inbounds %struct.adv_monitor, ptr %monitor, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %low_threshold_timeout.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %low_threshold_timeout.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 61, i16 %14)
  %cmp21.i.i106 = icmp ult i16 %14, 61
  br i1 %cmp21.i.i106, label %for.cond.preheader, label %msft_monitor_pattern_valid.exit.cleanup_crit_edge

msft_monitor_pattern_valid.exit.cleanup_crit_edge: ; preds = %msft_monitor_pattern_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %msft_monitor_pattern_valid.exit
  %15 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %15)
  %entry1.0111 = load ptr, ptr %monitor, align 4
  %cmp.not112 = icmp eq ptr %entry1.0111, %monitor
  br i1 %cmp.not112, label %for.cond.preheader.if.end8.i_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end8.i_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %entry1.0115 = phi ptr [ %entry1.0, %for.body.for.body_crit_edge ], [ %entry1.0111, %for.cond.preheader.for.body_crit_edge ]
  %total_size.0114 = phi i32 [ %add3, %for.body.for.body_crit_edge ], [ 7, %for.cond.preheader.for.body_crit_edge ]
  %pattern_count.0113 = phi i8 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %inc = add i8 %pattern_count.0113, 1
  %length = getelementptr inbounds %struct.adv_pattern, ptr %entry1.0115, i32 0, i32 3
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %length, align 2
  %conv = zext i8 %17 to i32
  %add = add i32 %total_size.0114, 3
  %add3 = add i32 %add, %conv
  %18 = ptrtoint ptr %entry1.0115 to i32
  call void @__asan_load4_noabort(i32 %18)
  %entry1.0 = load ptr, ptr %entry1.0115, align 4
  %cmp.not = icmp eq ptr %entry1.0, %monitor
  br i1 %cmp.not, label %for.body.if.end8.i_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end8.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %for.body.if.end8.i_crit_edge, %for.cond.preheader.if.end8.i_crit_edge
  %pattern_count.0.lcssa = phi i8 [ 0, %for.cond.preheader.if.end8.i_crit_edge ], [ %inc, %for.body.if.end8.i_crit_edge ]
  %total_size.0.lcssa = phi i32 [ 7, %for.cond.preheader.if.end8.i_crit_edge ], [ %add3, %for.body.if.end8.i_crit_edge ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %total_size.0.lcssa, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end11

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8.i
  %19 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %call9.i, align 128
  %20 = ptrtoint ptr %high_threshold.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %high_threshold.i.i, align 1
  %rssi_high = getelementptr inbounds %struct.msft_cp_le_monitor_advertisement, ptr %call9.i, i32 0, i32 1
  %22 = ptrtoint ptr %rssi_high to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %rssi_high, align 1
  %23 = ptrtoint ptr %rssi.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rssi.i.i, align 4
  %rssi_low = getelementptr inbounds %struct.msft_cp_le_monitor_advertisement, ptr %call9.i, i32 0, i32 2
  %25 = ptrtoint ptr %rssi_low to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %rssi_low, align 2
  %26 = ptrtoint ptr %low_threshold_timeout.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %low_threshold_timeout.i.i, align 2
  %conv14 = trunc i16 %27 to i8
  %rssi_low_interval = getelementptr inbounds %struct.msft_cp_le_monitor_advertisement, ptr %call9.i, i32 0, i32 3
  %28 = ptrtoint ptr %rssi_low_interval to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv14, ptr %rssi_low_interval, align 1
  %sampling_period = getelementptr inbounds %struct.adv_monitor, ptr %monitor, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %sampling_period to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sampling_period, align 2
  %rssi_sampling_period = getelementptr inbounds %struct.msft_cp_le_monitor_advertisement, ptr %call9.i, i32 0, i32 4
  %31 = ptrtoint ptr %rssi_sampling_period to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %rssi_sampling_period, align 4
  %cond_type = getelementptr inbounds %struct.msft_cp_le_monitor_advertisement, ptr %call9.i, i32 0, i32 5
  %32 = ptrtoint ptr %cond_type to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %cond_type, align 1
  %data = getelementptr inbounds %struct.msft_cp_le_monitor_advertisement, ptr %call9.i, i32 0, i32 6
  %33 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %pattern_count.0.lcssa, ptr %data, align 2
  %34 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %34)
  %entry1.1117 = load ptr, ptr %monitor, align 4
  %cmp24.not118 = icmp eq ptr %entry1.1117, %monitor
  br i1 %cmp24.not118, label %if.end11.for.end52_crit_edge, label %for.body27.lr.ph

if.end11.for.end52_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end52

for.body27.lr.ph:                                 ; preds = %if.end11
  %data28 = getelementptr inbounds %struct.msft_cp_le_monitor_advertisement, ptr %call9.i, i32 1, i32 1
  br label %for.body27

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.body27.lr.ph
  %entry1.1120 = phi ptr [ %entry1.1117, %for.body27.lr.ph ], [ %entry1.1, %for.body27.for.body27_crit_edge ]
  %offset.0119 = phi i32 [ 0, %for.body27.lr.ph ], [ %add45, %for.body27.for.body27_crit_edge ]
  %add.ptr30 = getelementptr i8, ptr %data28, i32 %offset.0119
  %length31 = getelementptr inbounds %struct.adv_pattern, ptr %entry1.1120, i32 0, i32 3
  %35 = ptrtoint ptr %length31 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %length31, align 2
  %add33 = add i8 %36, 2
  %37 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %add33, ptr %add.ptr30, align 1
  %ad_type = getelementptr inbounds %struct.adv_pattern, ptr %entry1.1120, i32 0, i32 1
  %38 = ptrtoint ptr %ad_type to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ad_type, align 4
  %data_type = getelementptr inbounds %struct.msft_le_monitor_advertisement_pattern, ptr %add.ptr30, i32 0, i32 1
  %40 = ptrtoint ptr %data_type to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %data_type, align 1
  %offset36 = getelementptr inbounds %struct.adv_pattern, ptr %entry1.1120, i32 0, i32 2
  %41 = ptrtoint ptr %offset36 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %offset36, align 1
  %start_byte = getelementptr inbounds %struct.msft_le_monitor_advertisement_pattern, ptr %add.ptr30, i32 0, i32 2
  %43 = ptrtoint ptr %start_byte to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %start_byte, align 1
  %pattern37 = getelementptr inbounds %struct.msft_le_monitor_advertisement_pattern, ptr %add.ptr30, i32 0, i32 3
  %value = getelementptr inbounds %struct.adv_pattern, ptr %entry1.1120, i32 0, i32 4
  %44 = load i8, ptr %length31, align 2
  %conv41 = zext i8 %44 to i32
  %45 = call ptr @memcpy(ptr %pattern37, ptr %value, i32 %conv41)
  %46 = load i8, ptr %length31, align 2
  %conv43 = zext i8 %46 to i32
  %add44 = add i32 %offset.0119, 3
  %add45 = add i32 %add44, %conv43
  %47 = ptrtoint ptr %entry1.1120 to i32
  call void @__asan_load4_noabort(i32 %47)
  %entry1.1 = load ptr, ptr %entry1.1120, align 4
  %cmp24.not = icmp eq ptr %entry1.1, %monitor
  br i1 %cmp24.not, label %for.body27.for.end52_crit_edge, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body27

for.body27.for.end52_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end52

for.end52:                                        ; preds = %for.body27.for.end52_crit_edge, %if.end11.for.end52_crit_edge
  call void @hci_req_init(ptr noundef nonnull %req, ptr noundef %hdev) #9
  %msft_opcode = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 227
  %48 = ptrtoint ptr %msft_opcode to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %msft_opcode, align 4
  call void @hci_req_add(ptr noundef nonnull %req, i16 noundef zeroext %49, i32 noundef %total_size.0.lcssa, ptr noundef nonnull %call9.i) #9
  %call53 = call i32 @hci_req_run_skb(ptr noundef nonnull %req, ptr noundef nonnull @msft_le_monitor_advertisement_cb) #9
  call void @kfree(ptr noundef nonnull %call9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then55, label %for.end52.cleanup_crit_edge

for.end52.cleanup_crit_edge:                      ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then55:                                        ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #11
  %handle = getelementptr inbounds %struct.adv_monitor, ptr %monitor, i32 0, i32 2
  %50 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %handle, align 4
  %pending_add_handle = getelementptr inbounds %struct.msft_data, ptr %2, i32 0, i32 4
  %52 = ptrtoint ptr %pending_add_handle to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %pending_add_handle, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %for.end52.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %msft_monitor_pattern_valid.exit.cleanup_crit_edge, %if.end.i.i105.cleanup_crit_edge, %lor.lhs.false6.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %msft_monitor_pattern_valid.exit.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ 0, %if.then55 ], [ %call53, %for.end52.cleanup_crit_edge ], [ -22, %lor.lhs.false6.i.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.i105.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msft_remove_monitor(ptr noundef %hdev, ptr nocapture noundef readonly %monitor, i16 noundef zeroext %handle) local_unnamed_addr #1 align 64 {
entry:
  %cp.i = alloca %struct.msft_cp_le_cancel_monitor_advertisement, align 1
  %req.i = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %0 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msft_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %resuming = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %resuming to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %resuming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %suspending = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %suspending to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %suspending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cp.i) #9
  %6 = getelementptr inbounds %struct.msft_cp_le_cancel_monitor_advertisement, ptr %cp.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %req.i) #9
  %7 = call ptr @memset(ptr %req.i, i32 255, i32 64)
  %handle1.i = getelementptr inbounds %struct.adv_monitor, ptr %monitor, i32 0, i32 2
  %8 = ptrtoint ptr %handle1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %handle1.i, align 4
  %handle_map.i.i = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %handle_map.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn28.i.i = load ptr, ptr %handle_map.i.i, align 4
  %cmp.not30.i.i = icmp eq ptr %.pn28.i.i, %handle_map.i.i
  br i1 %cmp.not30.i.i, label %if.end5.__msft_remove_monitor.exit_crit_edge, label %if.end5.for.body.i.i_crit_edge

if.end5.for.body.i.i_crit_edge:                   ; preds = %if.end5
  br label %for.body.i.i

if.end5.__msft_remove_monitor.exit_crit_edge:     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %__msft_remove_monitor.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end5.for.body.i.i_crit_edge
  %.pn31.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn28.i.i, %if.end5.for.body.i.i_crit_edge ]
  %mgmt_handle.i.i = getelementptr i8, ptr %.pn31.i.i, i32 -2
  %11 = ptrtoint ptr %mgmt_handle.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mgmt_handle.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %9)
  %cmp4.i.i = icmp eq i16 %12, %9
  br i1 %cmp4.i.i, label %msft_find_handle_data.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %13 = ptrtoint ptr %.pn31.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i.i = load ptr, ptr %.pn31.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %handle_map.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.__msft_remove_monitor.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.__msft_remove_monitor.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__msft_remove_monitor.exit

msft_find_handle_data.exit.i:                     ; preds = %for.body.i.i
  %entry1.032.i.le.i = getelementptr i8, ptr %.pn31.i.i, i32 -4
  %tobool.not.i = icmp eq ptr %entry1.032.i.le.i, null
  br i1 %tobool.not.i, label %msft_find_handle_data.exit.i.__msft_remove_monitor.exit_crit_edge, label %if.end.i

msft_find_handle_data.exit.i.__msft_remove_monitor.exit_crit_edge: ; preds = %msft_find_handle_data.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__msft_remove_monitor.exit

if.end.i:                                         ; preds = %msft_find_handle_data.exit.i
  %14 = ptrtoint ptr %cp.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %cp.i, align 1
  %15 = ptrtoint ptr %entry1.032.i.le.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %entry1.032.i.le.i, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %6, align 1
  call void @hci_req_init(ptr noundef nonnull %req.i, ptr noundef %hdev) #9
  %msft_opcode.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 227
  %18 = ptrtoint ptr %msft_opcode.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %msft_opcode.i, align 4
  call void @hci_req_add(ptr noundef nonnull %req.i, i16 noundef zeroext %19, i32 noundef 2, ptr noundef nonnull %cp.i) #9
  %call3.i = call i32 @hci_req_run_skb(ptr noundef nonnull %req.i, ptr noundef nonnull @msft_le_cancel_monitor_advertisement_cb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.__msft_remove_monitor.exit_crit_edge

if.end.i.__msft_remove_monitor.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__msft_remove_monitor.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pending_remove_handle.i = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %pending_remove_handle.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %handle, ptr %pending_remove_handle.i, align 2
  br label %__msft_remove_monitor.exit

__msft_remove_monitor.exit:                       ; preds = %if.then5.i, %if.end.i.__msft_remove_monitor.exit_crit_edge, %msft_find_handle_data.exit.i.__msft_remove_monitor.exit_crit_edge, %for.inc.i.i.__msft_remove_monitor.exit_crit_edge, %if.end5.__msft_remove_monitor.exit_crit_edge
  %retval.0.i = phi i32 [ -2, %msft_find_handle_data.exit.i.__msft_remove_monitor.exit_crit_edge ], [ 0, %if.then5.i ], [ %call3.i, %if.end.i.__msft_remove_monitor.exit_crit_edge ], [ -2, %if.end5.__msft_remove_monitor.exit_crit_edge ], [ -2, %for.inc.i.i.__msft_remove_monitor.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %req.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cp.i) #9
  br label %cleanup

cleanup:                                          ; preds = %__msft_remove_monitor.exit, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__msft_remove_monitor.exit ], [ -95, %entry.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msft_req_add_set_filter_enable(ptr noundef %req, i1 noundef zeroext %enable) local_unnamed_addr #1 align 64 {
entry:
  %cp = alloca %struct.msft_cp_le_set_advertisement_filter_enable, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cp) #9
  %2 = getelementptr inbounds %struct.msft_cp_le_set_advertisement_filter_enable, ptr %cp, i32 0, i32 1
  %3 = ptrtoint ptr %cp to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %cp, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %2, align 1
  %msft_opcode = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 227
  %5 = ptrtoint ptr %msft_opcode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %msft_opcode, align 4
  call void @hci_req_add(ptr noundef %req, i16 noundef zeroext %6, i32 noundef 2, ptr noundef nonnull %cp) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_req_add(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_req_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_req_run_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msft_le_set_advertisement_filter_enable_cb(ptr noundef %hdev, i8 noundef zeroext %status, i16 noundef zeroext %opcode, ptr nocapture noundef readonly %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %0 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msft_data, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i8 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %status, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.if.end7_crit_edge
    i8 12, label %if.end.if.end7_crit_edge27
  ]

if.end.if.end7_crit_edge27:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge27
  %lock = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %msft_opcode = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 227
  %5 = ptrtoint ptr %msft_opcode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %msft_opcode, align 4
  %call = tail call ptr @hci_sent_cmd_data(ptr noundef %hdev, i16 noundef zeroext %6) #9
  %enable = getelementptr inbounds %struct.msft_cp_le_set_advertisement_filter_enable, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enable, align 1
  %filter_enabled = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %filter_enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %filter_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %status)
  %cmp9 = icmp eq i8 %status, 12
  br i1 %cmp9, label %if.then11, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %10 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %cond = select i1 %tobool.not, ptr @.str.19, ptr @.str.18
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.17, ptr noundef %name, ptr noundef nonnull %cond) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end7.if.end14_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @msft_curve_validity(ptr nocapture noundef readonly %hdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_curve_validity = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 229
  %0 = ptrtoint ptr %msft_curve_validity to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msft_curve_validity, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msft_le_cancel_monitor_advertisement_cb(ptr noundef %hdev, i8 noundef zeroext %status, i16 noundef zeroext %opcode, ptr nocapture noundef readonly %skb) #1 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %0 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msft_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #9
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %err, align 4, !annotation !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool.not = icmp eq i8 %status, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp ult i32 %4, 2
  br i1 %cmp, label %if.end.done_crit_edge, label %if.end2

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end2:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %msft_opcode = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 227
  %5 = ptrtoint ptr %msft_opcode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %msft_opcode, align 4
  %call = tail call ptr @hci_sent_cmd_data(ptr noundef %hdev, i16 noundef zeroext %6) #9
  %handle = getelementptr inbounds %struct.msft_cp_le_cancel_monitor_advertisement, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %handle, align 1
  %9 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msft_data, align 8
  %handle_map.i = getelementptr inbounds %struct.msft_data, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %handle_map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn28.i = load ptr, ptr %handle_map.i, align 4
  %cmp.not30.i = icmp eq ptr %.pn28.i, %handle_map.i
  br i1 %cmp.not30.i, label %if.end2.if.end19_crit_edge, label %if.end2.for.body.i_crit_edge

if.end2.for.body.i_crit_edge:                     ; preds = %if.end2
  br label %for.body.i

if.end2.if.end19_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end2.for.body.i_crit_edge
  %.pn31.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn28.i, %if.end2.for.body.i_crit_edge ]
  %entry1.032.i = getelementptr i8, ptr %.pn31.i, i32 -4
  %12 = ptrtoint ptr %entry1.032.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %entry1.032.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %8)
  %cmp10.i = icmp eq i8 %13, %8
  br i1 %cmp10.i, label %msft_find_handle_data.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %14 = ptrtoint ptr %.pn31.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn31.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %handle_map.i
  br i1 %cmp.not.i, label %for.inc.i.if.end19_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end19_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

msft_find_handle_data.exit:                       ; preds = %for.body.i
  %entry1.032.i.le = getelementptr i8, ptr %.pn31.i, i32 -4
  %tobool4.not = icmp eq ptr %entry1.032.i.le, null
  br i1 %tobool4.not, label %msft_find_handle_data.exit.if.end19_crit_edge, label %if.then5

msft_find_handle_data.exit.if.end19_crit_edge:    ; preds = %msft_find_handle_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then5:                                         ; preds = %msft_find_handle_data.exit
  %adv_monitors_idr = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 218
  %mgmt_handle = getelementptr i8, ptr %.pn31.i, i32 -2
  %15 = ptrtoint ptr %mgmt_handle to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mgmt_handle, align 2
  %conv6 = zext i16 %16 to i32
  %call7 = tail call ptr @idr_find(ptr noundef %adv_monitors_idr, i32 noundef %conv6) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then5.if.end18_crit_edge, label %land.lhs.true

if.then5.if.end18_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then5
  %state = getelementptr inbounds %struct.adv_monitor, ptr %call7, i32 0, i32 3
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp9 = icmp eq i32 %18, 2
  br i1 %cmp9, label %if.then11, label %land.lhs.true.land.lhs.true15_crit_edge

land.lhs.true.land.lhs.true15_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true15

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %state, align 4
  br label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.then11, %land.lhs.true.land.lhs.true15_crit_edge
  %suspending = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %suspending to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %suspending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool16.not = icmp eq i8 %21, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true15.if.end18_crit_edge

land.lhs.true15.if.end18_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hci_free_adv_monitor(ptr noundef %hdev, ptr noundef nonnull %call7) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true15.if.end18_crit_edge, %if.then5.if.end18_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn31.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.list_del.exit_crit_edge

if.end18.list_del.exit_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn31.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %.pn31.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn31.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end18.list_del.exit_crit_edge
  %28 = ptrtoint ptr %.pn31.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn31.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn31.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %entry1.032.i.le) #9
  br label %if.end19

if.end19:                                         ; preds = %list_del.exit, %msft_find_handle_data.exit.if.end19_crit_edge, %for.inc.i.if.end19_crit_edge, %if.end2.if.end19_crit_edge
  %pending_remove_handle = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %pending_remove_handle to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pending_remove_handle, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp21 = icmp eq i16 %31, 0
  br i1 %cmp21, label %if.then23, label %if.end19.if.end32_crit_edge

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then23:                                        ; preds = %if.end19
  %call24 = call zeroext i1 @hci_remove_all_adv_monitor(ptr noundef %hdev, ptr noundef nonnull %err) #9
  br i1 %call24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end28:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool29.not = icmp eq i32 %33, 0
  %spec.select = select i1 %tobool29.not, i8 0, i8 31
  br label %if.end32

if.end32:                                         ; preds = %if.end28, %if.end19.if.end32_crit_edge
  %status.addr.0 = phi i8 [ 0, %if.end19.if.end32_crit_edge ], [ %spec.select, %if.end28 ]
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %done

done:                                             ; preds = %if.end32, %if.end.done_crit_edge, %entry.done_crit_edge
  %status.addr.1 = phi i8 [ %status, %entry.done_crit_edge ], [ %status.addr.0, %if.end32 ], [ 31, %if.end.done_crit_edge ]
  %suspending34 = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %suspending34 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %suspending34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool35.not = icmp eq i8 %35, 0
  br i1 %tobool35.not, label %if.then36, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = call i32 @hci_remove_adv_monitor_complete(ptr noundef %hdev, i8 noundef zeroext %status.addr.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %done.cleanup_crit_edge, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_sent_cmd_data(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_adv_monitor(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_remove_all_adv_monitor(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_remove_adv_monitor_complete(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msft_le_monitor_advertisement_cb(ptr noundef %hdev, i8 noundef zeroext %status, i16 noundef zeroext %opcode, ptr nocapture noundef readonly %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msft_data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 228
  %0 = ptrtoint ptr %msft_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msft_data, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %adv_monitors_idr = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 218
  %pending_add_handle = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pending_add_handle to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pending_add_handle, align 8
  %conv = zext i16 %3 to i32
  %call = tail call ptr @idr_find(ptr noundef %adv_monitors_idr, i32 noundef %conv) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %4 = ptrtoint ptr %pending_add_handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pending_add_handle, align 8
  %conv2 = zext i16 %5 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.14, ptr noundef %name, i32 noundef %conv2) #9
  br label %if.end19

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool3.not = icmp eq i8 %status, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.if.then18_crit_edge

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp ult i32 %9, 3
  br i1 %cmp, label %if.end5.if.then18_crit_edge, label %if.end8

if.end5.if.then18_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.end8:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 12) #13
  %tobool10.not = icmp eq ptr %call7.i, null
  br i1 %tobool10.not, label %if.end8.if.then18_crit_edge, label %if.end12

if.end8.if.then18_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.end12:                                         ; preds = %if.end8
  %handle = getelementptr inbounds %struct.adv_monitor, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %handle, align 4
  %mgmt_handle = getelementptr inbounds %struct.msft_monitor_advertisement_handle_data, ptr %call7.i, i32 0, i32 1
  %13 = ptrtoint ptr %mgmt_handle to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %mgmt_handle, align 2
  %handle13 = getelementptr inbounds %struct.msft_rp_le_monitor_advertisement, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %handle13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %handle13, align 1
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %call7.i, align 8
  %list = getelementptr inbounds %struct.msft_monitor_advertisement_handle_data, ptr %call7.i, i32 0, i32 2
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.msft_monitor_advertisement_handle_data, ptr %call7.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list, ptr %prev.i, align 8
  %handle_map = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %handle_map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handle_map, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %handle_map, ptr noundef %20) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_add.exit_crit_edge

if.end12.list_add.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %prev1.i.i, align 4
  %22 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %list, align 4
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %handle_map, ptr %prev.i, align 8
  %24 = ptrtoint ptr %handle_map to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list, ptr %handle_map, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end12.list_add.exit_crit_edge
  %state = getelementptr inbounds %struct.adv_monitor, ptr %call, i32 0, i32 3
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %state, align 4
  br label %if.end19

if.then18:                                        ; preds = %if.end8.if.then18_crit_edge, %if.end5.if.then18_crit_edge, %if.end.if.then18_crit_edge
  %status.addr.0 = phi i8 [ %status, %if.end.if.then18_crit_edge ], [ 31, %if.end5.if.then18_crit_edge ], [ 31, %if.end8.if.then18_crit_edge ]
  tail call void @hci_free_adv_monitor(ptr noundef %hdev, ptr noundef nonnull %call) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %list_add.exit, %if.then
  %status.addr.048 = phi i8 [ %status.addr.0, %if.then18 ], [ 31, %if.then ], [ 0, %list_add.exit ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %resuming = getelementptr inbounds %struct.msft_data, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %resuming to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %resuming, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool21.not = icmp eq i8 %27, 0
  br i1 %tobool21.not, label %if.then22, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 @hci_add_adv_patterns_monitor_complete(ptr noundef %hdev, i8 noundef zeroext %status.addr.048) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_add_adv_patterns_monitor_complete(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_passive_scan(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_warn(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/msft.c", i32 508, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/bluetooth/msft.c", i32 512, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @msft_do_open.__UNIQUE_ID_ddebug475, !3, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/bluetooth/msft.c", i32 545, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @msft_do_close.__UNIQUE_ID_ddebug476, !9, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/bluetooth/msft.c", i32 566, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @msft_register.__UNIQUE_ID_ddebug477, !13, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/bluetooth/msft.c", i32 570, i32 3}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/bluetooth/msft.c", i32 585, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @msft_unregister.__UNIQUE_ID_ddebug478, !19, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/bluetooth/msft.c", i32 623, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @msft_vendor_evt.__UNIQUE_ID_ddebug479, !23, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/bluetooth/msft.c", i32 220, i32 3}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/bluetooth/msft.c", i32 123, i32 3}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/bluetooth/msft.c", i32 129, i32 3}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/bluetooth/msft.c", i32 661, i32 3}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2148798586, i64 2148798591, i64 2148798604, i64 2148798648, i64 2148798682, i64 2148798703}
!46 = !{i8 0, i8 2}
!47 = !{!"auto-init"}
