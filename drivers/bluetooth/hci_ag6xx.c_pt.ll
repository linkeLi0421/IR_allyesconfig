; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/hci_ag6xx.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_ag6xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.h4_recv_pkt = type { i8, i8, i8, i8, i16, ptr }
%struct.ag6xx_data = type { ptr, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hci_uart = type { ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, ptr, %struct.percpu_rw_semaphore, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.intel_version = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.firmware = type { i32, ptr, ptr }
%struct.pbn_entry = type { i32, i32, [0 x i8] }
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

@ag6xx_proto = internal constant { %struct.hci_uart_proto, [44 x i8] } { %struct.hci_uart_proto { i32 9, ptr @.str, i32 2, i32 0, i32 0, ptr @ag6xx_open, ptr @ag6xx_close, ptr @ag6xx_flush, ptr @ag6xx_setup, ptr null, ptr @ag6xx_recv, ptr @ag6xx_enqueue, ptr @ag6xx_dequeue }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AG6XX\00", [26 x i8] zeroinitializer }, align 32
@ag6xx_open.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hci_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ag6xx_open\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/bluetooth/hci_ag6xx.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hu %p\0A\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@ag6xx_close.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.4, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ag6xx_close\00", [20 x i8] zeroinitializer }, align 32
@ag6xx_flush.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.4, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ag6xx_flush\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Unsupported Intel hardware platform: 0x%X\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Unsupported Intel hardware variant: 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"intel/ibt-hw-%x.%x.bddata\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Failed to open Intel bddata file: %s (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Applying bddata (%s)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Applying bddata failed (%ld)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Device is already patched. patch num: %02x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"intel/ibt-hw-%x.%x.%x-fw-%x.%x.%x.%x.%x.pbn\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Failed to open Intel patch file: %s(%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Patching firmware file (%s)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Patching complete\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Invalid patch len (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Patching %td/%zu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Patching failed\0A\00", [43 x i8] zeroinitializer }, align 32
@ag6xx_recv_pkts = internal constant { [3 x %struct.h4_recv_pkt], [60 x i8] } { [3 x %struct.h4_recv_pkt] [%struct.h4_recv_pkt { i8 2, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 3, i8 3, i8 2, i8 1, i16 255, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 4, i8 2, i8 1, i8 1, i16 260, ptr @hci_recv_frame }], [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Frame reassembly failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"ag6xx_proto\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 300, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 302, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 37, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1984, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 53, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 67, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 179, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 188, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 193, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 198, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 203, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 208, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 221, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 228, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 235, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 241, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 258, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 267, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 271, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 276, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"ag6xx_recv_pkts\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 95, i32 33 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [33 x i8] c"../drivers/bluetooth/hci_ag6xx.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 113, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @ag6xx_deinit, ptr @ag6xx_proto, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @skb_queue_head_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ag6xx_recv_pkts, ptr @.str.22], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ag6xx_proto to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ag6xx_recv_pkts to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ag6xx_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hci_uart_register_proto(ptr noundef nonnull @ag6xx_proto) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ag6xx_deinit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @hci_uart_unregister_proto(ptr noundef nonnull @ag6xx_proto) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ag6xx_open(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ag6xx_open.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ag6xx_open, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !60

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ag6xx_open.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.4, ptr noundef %hu) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #10
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %txq = getelementptr inbounds %struct.ag6xx_data, ptr %call7.i.i, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.ag6xx_data, ptr %call7.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %1 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %txq, ptr %txq, align 4
  %prev.i.i = getelementptr inbounds %struct.ag6xx_data, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %txq, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.ag6xx_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ag6xx_close(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ag6xx_close.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ag6xx_close, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !60

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ag6xx_close.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.4, ptr noundef %hu) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %txq = getelementptr inbounds %struct.ag6xx_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %txq) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  tail call void @kfree(ptr noundef %1) #7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %priv, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ag6xx_flush(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ag6xx_flush.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ag6xx_flush, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !60

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ag6xx_flush.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.4, ptr noundef %hu) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %txq = getelementptr inbounds %struct.ag6xx_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %txq) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ag6xx_setup(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  %cmd_param.i = alloca [253 x i8], align 4
  %ver = alloca %struct.intel_version, align 1
  %fw = alloca ptr, align 4
  %fwname = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %ver) #7
  %2 = getelementptr inbounds %struct.intel_version, ptr %ver, i32 0, i32 1
  %3 = getelementptr inbounds %struct.intel_version, ptr %ver, i32 0, i32 2
  %4 = getelementptr inbounds %struct.intel_version, ptr %ver, i32 0, i32 3
  %5 = getelementptr inbounds %struct.intel_version, ptr %ver, i32 0, i32 4
  %6 = getelementptr inbounds %struct.intel_version, ptr %ver, i32 0, i32 5
  %7 = getelementptr inbounds %struct.intel_version, ptr %ver, i32 0, i32 6
  %8 = getelementptr inbounds %struct.intel_version, ptr %ver, i32 0, i32 7
  %9 = getelementptr inbounds %struct.intel_version, ptr %ver, i32 0, i32 8
  %10 = getelementptr inbounds %struct.intel_version, ptr %ver, i32 0, i32 9
  %11 = call ptr @memset(ptr %ver, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fwname) #7
  %13 = call ptr @memset(ptr %fwname, i32 255, i32 64)
  %set_diag = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 241
  %14 = ptrtoint ptr %set_diag to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @btintel_set_diag, ptr %set_diag, align 4
  %15 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdev1, align 4
  %set_bdaddr = getelementptr inbounds %struct.hci_dev, ptr %16, i32 0, i32 242
  %17 = ptrtoint ptr %set_bdaddr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @btintel_set_bdaddr, ptr %set_bdaddr, align 8
  %call = tail call i32 @btintel_enter_mfg(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup134_crit_edge

entry.cleanup134_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup134

if.end:                                           ; preds = %entry
  %call4 = call i32 @btintel_read_version(ptr noundef %1, ptr noundef nonnull %ver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup134_crit_edge

if.end.cleanup134_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup134

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @btintel_version_info(ptr noundef %1, ptr noundef nonnull %ver) #7
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %19)
  %cmp.not = icmp eq i8 %19, 55
  br i1 %cmp.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %19 to i32
  %name = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %conv) #7
  br label %cleanup134

if.end13:                                         ; preds = %if.end7
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %21)
  %cmp15.not = icmp eq i8 %21, 10
  br i1 %cmp15.not, label %if.end22, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %conv14 = zext i8 %21 to i32
  %name18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9, ptr noundef %name18, i32 noundef %conv14) #7
  br label %cleanup134

if.end22:                                         ; preds = %if.end13
  %call28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fwname, i32 noundef 64, ptr noundef nonnull @.str.10, i32 noundef 55, i32 noundef 10)
  %dev = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 204
  %call30 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %fwname, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  %name34 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  br i1 %cmp31, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %name34, ptr noundef nonnull %fwname, i32 noundef %call30) #7
  br label %patch

if.end37:                                         ; preds = %if.end22
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.12, ptr noundef %name34, ptr noundef nonnull %fwname) #7
  %22 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %call42 = call ptr @__hci_cmd_sync_ev(ptr noundef %1, i16 noundef zeroext -977, i32 noundef %25, ptr noundef %27, i8 noundef zeroext 15, i32 noundef 200) #7
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then44, label %if.end49

if.then44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %call42 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.13, ptr noundef %name34, i32 noundef %28) #7
  %29 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %30) #7
  br label %cleanup134

if.end49:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef %call42, i32 noundef 0) #7
  %31 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %32) #7
  br label %patch

patch:                                            ; preds = %if.end49, %if.then33
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool50.not = icmp eq i8 %34, 0
  br i1 %tobool50.not, label %if.end56, label %if.then51

if.then51:                                        ; preds = %patch
  call void @__sanitizer_cov_trace_pc() #9
  %name52 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %conv55 = zext i8 %34 to i32
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.14, ptr noundef %name52, i32 noundef %conv55) #7
  br label %complete

if.end56:                                         ; preds = %patch
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %2, align 1
  %conv59 = zext i8 %36 to i32
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %3, align 1
  %conv61 = zext i8 %38 to i32
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %4, align 1
  %conv62 = zext i8 %40 to i32
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %5, align 1
  %conv63 = zext i8 %42 to i32
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %6, align 1
  %conv64 = zext i8 %44 to i32
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %7, align 1
  %conv65 = zext i8 %46 to i32
  %47 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %8, align 1
  %conv66 = zext i8 %48 to i32
  %49 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %9, align 1
  %conv67 = zext i8 %50 to i32
  %call68 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fwname, i32 noundef 64, ptr noundef nonnull @.str.15, i32 noundef %conv59, i32 noundef %conv61, i32 noundef %conv62, i32 noundef %conv63, i32 noundef %conv64, i32 noundef %conv65, i32 noundef %conv66, i32 noundef %conv67)
  %call71 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %fwname, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.end78

if.then74:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %name75 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16, ptr noundef %name75, ptr noundef nonnull %fwname, i32 noundef %call71) #7
  br label %complete

if.end78:                                         ; preds = %if.end56
  %51 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw, align 4
  %data79 = getelementptr inbounds %struct.firmware, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %data79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data79, align 4
  %name80 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.17, ptr noundef %name80, ptr noundef nonnull %fwname) #7
  %55 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fw, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %data84203 = getelementptr inbounds %struct.firmware, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %data84203 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data84203, align 4
  %sub.ptr.lhs.cast204 = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast205 = ptrtoint ptr %60 to i32
  %sub.ptr.sub206 = sub i32 %sub.ptr.lhs.cast204, %sub.ptr.rhs.cast205
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %sub.ptr.sub206)
  %cmp85207 = icmp ugt i32 %58, %sub.ptr.sub206
  br i1 %cmp85207, label %while.body.lr.ph, label %if.end78.while.end_crit_edge

if.end78.while.end_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end78
  %arrayidx.i = getelementptr inbounds [253 x i8], ptr %cmd_param.i, i32 0, i32 4
  %arrayidx2.i = getelementptr inbounds [253 x i8], ptr %cmd_param.i, i32 0, i32 5
  %add.ptr.i = getelementptr inbounds i8, ptr %cmd_param.i, i32 6
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %sub.ptr.sub209 = phi i32 [ %sub.ptr.sub206, %while.body.lr.ph ], [ %sub.ptr.sub, %cleanup.while.body_crit_edge ]
  %61 = phi ptr [ %60, %while.body.lr.ph ], [ %81, %cleanup.while.body_crit_edge ]
  %62 = phi i32 [ %58, %while.body.lr.ph ], [ %79, %cleanup.while.body_crit_edge ]
  %fw_ptr.0208 = phi ptr [ %54, %while.body.lr.ph ], [ %add.ptr100, %cleanup.while.body_crit_edge ]
  %63 = ptrtoint ptr %fw_ptr.0208 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %fw_ptr.0208, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp88 = icmp eq i32 %64, -1
  br i1 %cmp88, label %if.then90, label %if.end93

if.then90:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.18, ptr noundef %name80) #7
  br label %while.end

if.end93:                                         ; preds = %while.body
  %plen95 = getelementptr inbounds %struct.pbn_entry, ptr %fw_ptr.0208, i32 0, i32 1
  %65 = ptrtoint ptr %plen95 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %plen95, align 1
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %add.ptr = getelementptr i8, ptr %61, i32 %62
  %data98 = getelementptr inbounds %struct.pbn_entry, ptr %fw_ptr.0208, i32 0, i32 2
  %add.ptr100 = getelementptr i8, ptr %data98, i32 %67
  %cmp101.not = icmp ugt ptr %add.ptr, %add.ptr100
  br i1 %cmp101.not, label %if.end106, label %if.then103

if.then103:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.19, ptr noundef %name80, i32 noundef %67) #7
  br label %while.end

if.end106:                                        ; preds = %if.end93
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.20, ptr noundef %name80, i32 noundef %sub.ptr.sub209, i32 noundef %62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.not35.i = icmp eq i32 %66, 0
  br i1 %cmp.not35.i, label %if.end106.cleanup_crit_edge, label %while.body.lr.ph.i

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.end106
  %68 = call i32 @llvm.bswap.i32(i32 %64)
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %data.addr.038.i = phi ptr [ %data98, %while.body.lr.ph.i ], [ %add.ptr12.i, %cleanup.i.while.body.i_crit_edge ]
  %plen.addr.037.i = phi i32 [ %67, %while.body.lr.ph.i ], [ %sub.i, %cleanup.i.while.body.i_crit_edge ]
  %addr.addr.036.i = phi i32 [ %68, %while.body.lr.ph.i ], [ %add14.i, %cleanup.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 253, ptr nonnull %cmd_param.i) #7
  %69 = call ptr @memset(ptr %arrayidx.i, i32 255, i32 249)
  %70 = call i32 @llvm.umin.i32(i32 %plen.addr.037.i, i32 247) #7
  %conv.i = trunc i32 %70 to i8
  %71 = call i32 @llvm.bswap.i32(i32 %addr.addr.036.i) #7
  %72 = ptrtoint ptr %cmd_param.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %cmd_param.i, align 4
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx.i, align 4
  %74 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv.i, ptr %arrayidx2.i, align 1
  %75 = call ptr @memcpy(ptr %add.ptr.i, ptr %data.addr.038.i, i32 %70)
  %add.i = add nuw nsw i32 %70, 6
  %call7.i = call ptr @__hci_cmd_sync(ptr noundef %1, i16 noundef zeroext -882, i32 noundef %add.i, ptr noundef nonnull %cmd_param.i, i32 noundef 1000) #7
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %intel_mem_write.exit, label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i
  call void @kfree_skb_reason(ptr noundef %call7.i, i32 noundef 0) #7
  %sub.i = sub i32 %plen.addr.037.i, %70
  %add.ptr12.i = getelementptr i8, ptr %data.addr.038.i, i32 %70
  %add14.i = add i32 %70, %addr.addr.036.i
  call void @llvm.lifetime.end.p0(i64 253, ptr nonnull %cmd_param.i) #7
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

intel_mem_write.exit:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 253, ptr nonnull %cmd_param.i) #7
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.21, ptr noundef %name80) #7
  br label %while.end

cleanup:                                          ; preds = %cleanup.i.cleanup_crit_edge, %if.end106.cleanup_crit_edge
  %76 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fw, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %data84 = getelementptr inbounds %struct.firmware, ptr %77, i32 0, i32 1
  %80 = ptrtoint ptr %data84 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data84, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr100 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %81 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp85 = icmp ugt i32 %79, %sub.ptr.sub
  br i1 %cmp85, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %intel_mem_write.exit, %if.then103, %if.then90, %if.end78.while.end_crit_edge
  %patched.2.off0 = phi i1 [ false, %intel_mem_write.exit ], [ false, %if.then103 ], [ true, %if.then90 ], [ false, %if.end78.while.end_crit_edge ], [ false, %cleanup.while.end_crit_edge ]
  %82 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %83) #7
  br label %complete

complete:                                         ; preds = %while.end, %if.then74, %if.then51
  %patched.3.off0 = phi i1 [ true, %if.then51 ], [ false, %if.then74 ], [ %patched.2.off0, %while.end ]
  %call128 = call i32 @btintel_exit_mfg(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext %patched.3.off0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %complete.cleanup134_crit_edge

complete.cleanup134_crit_edge:                    ; preds = %complete
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup134

if.end131:                                        ; preds = %complete
  call void @__sanitizer_cov_trace_pc() #9
  %call132 = call i32 @btintel_set_event_mask_mfg(ptr noundef %1, i1 noundef zeroext false) #7
  %call133 = call i32 @btintel_check_bdaddr(ptr noundef %1) #7
  br label %cleanup134

cleanup134:                                       ; preds = %if.end131, %complete.cleanup134_crit_edge, %if.then44, %if.then17, %if.then10, %if.end.cleanup134_crit_edge, %entry.cleanup134_crit_edge
  %retval.0 = phi i32 [ -22, %if.then10 ], [ -22, %if.then17 ], [ 0, %if.end131 ], [ %28, %if.then44 ], [ %call, %entry.cleanup134_crit_edge ], [ %call4, %if.end.cleanup134_crit_edge ], [ %call128, %complete.cleanup134_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fwname) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %ver) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ag6xx_recv(ptr noundef %hu, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %flags = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call1 = tail call ptr @h4_recv_buf(ptr noundef %6, ptr noundef %8, ptr noundef %data, i32 noundef %count, ptr noundef nonnull @ag6xx_recv_pkts, i32 noundef 3) #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call1 to i32
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.22, ptr noundef %name, i32 noundef %10) #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then5 ], [ -49, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ag6xx_enqueue(ptr nocapture noundef readonly %hu, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %txq = getelementptr inbounds %struct.ag6xx_data, ptr %1, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ag6xx_dequeue(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %txq = getelementptr inbounds %struct.ag6xx_data, ptr %1, i32 0, i32 1
  %call = tail call ptr @skb_dequeue(ptr noundef %txq) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 1) #7
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %call1, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_set_diag(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_set_bdaddr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_enter_mfg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_read_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_version_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync_ev(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_exit_mfg(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_set_event_mask_mfg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btintel_check_bdaddr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @h4_recv_buf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 302, i32 11}
!2 = !{ptr @ag6xx_proto, !3, !"ag6xx_proto", i1 false, i1 false}
!3 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 300, i32 36}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 37, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ag6xx_open.__UNIQUE_ID_ddebug475, !5, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!10 = !{ptr @skb_queue_head_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 53, i32 2}
!15 = !{ptr @ag6xx_close.__UNIQUE_ID_ddebug476, !14, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 67, i32 2}
!18 = !{ptr @ag6xx_flush.__UNIQUE_ID_ddebug477, !17, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 179, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 188, i32 3}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 193, i32 35}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 198, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 203, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 208, i32 3}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 221, i32 3}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 228, i32 4}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 235, i32 3}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 241, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 258, i32 4}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 267, i32 4}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 271, i32 3}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 276, i32 4}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 113, i32 3}
!49 = !{ptr @ag6xx_recv_pkts, !50, !"ag6xx_recv_pkts", i1 false, i1 false}
!50 = !{!"../drivers/bluetooth/hci_ag6xx.c", i32 95, i32 33}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2148696836, i64 2148696841, i64 2148696854, i64 2148696898, i64 2148696932, i64 2148696953}
!61 = !{!"auto-init"}
