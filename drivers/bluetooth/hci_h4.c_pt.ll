; ModuleID = '/llk/IR_all_yes/drivers/bluetooth/hci_h4.c_pt.bc'
source_filename = "../drivers/bluetooth/hci_h4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+h4_recv_buf\22, \22a\22\09"
module asm "\09.weak\09__crc_h4_recv_buf\09\09\09\09"
module asm "\09.long\09__crc_h4_recv_buf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_h4_recv_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22h4_recv_buf\22\09\09\09\09\09"
module asm "__kstrtabns_h4_recv_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.hci_uart_proto = type { i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.h4_recv_pkt = type { i8, i8, i8, i8, i16, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.hci_uart = type { ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, ptr, %struct.percpu_rw_semaphore, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
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
%struct.h4_struct = type { ptr, %struct.sk_buff_head }

@h4p = internal constant { %struct.hci_uart_proto, [44 x i8] } { %struct.hci_uart_proto { i32 0, ptr @.str, i32 0, i32 0, i32 0, ptr @h4_open, ptr @h4_close, ptr @h4_flush, ptr null, ptr null, ptr @h4_recv, ptr @h4_enqueue, ptr @h4_dequeue }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_h4_recv_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_h4_recv_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_h4_recv_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @h4_recv_buf to i32), ptr @__kstrtab_h4_recv_buf, ptr @__kstrtabns_h4_recv_buf }, section "___ksymtab_gpl+h4_recv_buf", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"H4\00", [29 x i8] zeroinitializer }, align 32
@h4_open.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hci_uart\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"h4_open\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/bluetooth/hci_h4.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hu %p\0A\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@h4_close.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.4, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"h4_close\00", [23 x i8] zeroinitializer }, align 32
@h4_flush.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.3, ptr @.str.4, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"h4_flush\00", [23 x i8] zeroinitializer }, align 32
@h4_recv_pkts = internal constant { [4 x %struct.h4_recv_pkt], [48 x i8] } { [4 x %struct.h4_recv_pkt] [%struct.h4_recv_pkt { i8 2, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 3, i8 3, i8 2, i8 1, i16 255, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 4, i8 2, i8 1, i8 1, i16 260, ptr @hci_recv_frame }, %struct.h4_recv_pkt { i8 5, i8 4, i8 2, i8 2, i16 1028, ptr @hci_recv_frame }], [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Frame reassembly failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@h4_enqueue.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"h4_enqueue\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hu %p skb %p\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.11 = private unnamed_addr constant [4 x i8] c"h4p\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 133, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 135, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 45, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 1984, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 74, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 62, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"h4_recv_pkts\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 100, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 119, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [30 x i8] c"../drivers/bluetooth/hci_h4.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 91, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_h4_recv_buf, ptr @h4_deinit, ptr @h4p, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @skb_queue_head_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @h4_recv_pkts, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h4p to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h4_recv_pkts to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @h4_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hci_uart_register_proto(ptr noundef nonnull @h4p) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_register_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @h4_deinit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @hci_uart_unregister_proto(ptr noundef nonnull @h4p) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_uart_unregister_proto(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @h4_recv_buf(ptr noundef %hdev, ptr noundef %skb, ptr nocapture noundef readonly %buffer, i32 noundef %count, ptr nocapture noundef readonly %pkts, i32 noundef %pkts_count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %skb, inttoptr (i32 -4096 to ptr)
  %skb.addr.0 = select i1 %cmp.i, ptr null, ptr %skb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool6.not329 = icmp eq i32 %count, 0
  br i1 %tobool6.not329, label %entry.cleanup183_crit_edge, label %for.cond.preheader.lr.ph

entry.cleanup183_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup183

for.cond.preheader.lr.ph:                         ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 204, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %alignment1 = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %alignment1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alignment1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool.not, i8 1, i8 %3
  %padding = getelementptr inbounds %struct.hci_uart, ptr %1, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pkts_count)
  %cmp18323 = icmp sgt i32 %pkts_count, 0
  %conv163 = zext i8 %spec.select to i32
  %rem172.rhs.trunc = zext i8 %spec.select to i16
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %cleanup179.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %skb.addr.1332 = phi ptr [ %skb.addr.0, %for.cond.preheader.lr.ph ], [ %skb.addr.7, %cleanup179.for.cond.preheader_crit_edge ]
  %buffer.addr.0331 = phi ptr [ %buffer, %for.cond.preheader.lr.ph ], [ %add.ptr62, %cleanup179.for.cond.preheader_crit_edge ]
  %count.addr.0330 = phi i32 [ %count, %for.cond.preheader.lr.ph ], [ %sub61, %cleanup179.for.cond.preheader_crit_edge ]
  %4 = ptrtoint ptr %padding to i32
  call void @__asan_load1_noabort(i32 %4)
  %padding.promoted = load i8, ptr %padding, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %padding.promoted)
  %tobool8.not314 = icmp ne i8 %padding.promoted, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0330)
  %cmp315 = icmp sgt i32 %count.addr.0330, 0
  %or.cond316 = select i1 %tobool8.not314, i1 %cmp315, i1 false
  br i1 %or.cond316, label %for.end, label %for.cond.preheader.if.end14_crit_edge

for.cond.preheader.if.end14_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.end:                                          ; preds = %for.cond.preheader
  %5 = add nsw i32 %count.addr.0330, -1
  %6 = add i8 %padding.promoted, -1
  %7 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %8 = icmp eq i8 %6, 0
  %umin = call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %9 = select i1 %8, i32 0, i32 %umin
  %uglygep = getelementptr i8, ptr %buffer.addr.0331, i32 1
  %uglygep348 = getelementptr i8, ptr %uglygep, i32 %9
  %10 = trunc i32 %9 to i8
  %11 = sub nsw i32 %5, %9
  %12 = sub i8 %6, %10
  %13 = ptrtoint ptr %padding to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %padding, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %for.end.cleanup183_crit_edge, label %for.end.if.end14_crit_edge

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

for.end.cleanup183_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup183

if.end14:                                         ; preds = %for.end.if.end14_crit_edge, %for.cond.preheader.if.end14_crit_edge
  %buffer.addr.1.lcssa354 = phi ptr [ %uglygep348, %for.end.if.end14_crit_edge ], [ %buffer.addr.0331, %for.cond.preheader.if.end14_crit_edge ]
  %count.addr.1.lcssa353 = phi i32 [ %11, %for.end.if.end14_crit_edge ], [ %count.addr.0330, %for.cond.preheader.if.end14_crit_edge ]
  %tobool15.not = icmp eq ptr %skb.addr.1332, null
  br i1 %tobool15.not, label %for.cond17.preheader, label %if.end14.if.end47_crit_edge

if.end14.if.end47_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

for.cond17.preheader:                             ; preds = %if.end14
  br i1 %cmp18323, label %for.body20.lr.ph, label %for.cond17.preheader.cleanup183_crit_edge

for.cond17.preheader.cleanup183_crit_edge:        ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup183

for.body20.lr.ph:                                 ; preds = %for.cond17.preheader
  %14 = ptrtoint ptr %buffer.addr.1.lcssa354 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buffer.addr.1.lcssa354, align 1
  br label %for.body20

for.body20:                                       ; preds = %for.inc41.for.body20_crit_edge, %for.body20.lr.ph
  %i.0324 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc, %for.inc41.for.body20_crit_edge ]
  %arrayidx22 = getelementptr %struct.h4_recv_pkt, ptr %pkts, i32 %i.0324
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp24.not = icmp eq i8 %15, %17
  br i1 %cmp24.not, label %if.end27, label %for.inc41

if.end27:                                         ; preds = %for.body20
  %maxlen = getelementptr %struct.h4_recv_pkt, ptr %pkts, i32 %i.0324, i32 4
  %18 = ptrtoint ptr %maxlen to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %maxlen, align 4
  %conv29 = zext i16 %19 to i32
  %add.i = add nuw nsw i32 %conv29, 8
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end27.cleanup183_crit_edge, label %if.end46

if.end27.cleanup183_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup183

for.inc41:                                        ; preds = %for.body20
  %inc = add nuw nsw i32 %i.0324, 1
  %exitcond.not = icmp eq i32 %inc, %pkts_count
  br i1 %exitcond.not, label %for.inc41.cleanup183_crit_edge, label %for.inc41.for.body20_crit_edge

for.inc41.for.body20_crit_edge:                   ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20

for.inc41.cleanup183_crit_edge:                   ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup183

if.end46:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %23, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx22, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %cb, align 8
  %hlen = getelementptr %struct.h4_recv_pkt, ptr %pkts, i32 %i.0324, i32 1
  %27 = ptrtoint ptr %hlen to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hlen, align 1
  %conv38 = zext i8 %28 to i16
  %expect = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %expect to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv38, ptr %expect, align 2
  %sub = add i32 %count.addr.1.lcssa353, -1
  %add.ptr = getelementptr i8, ptr %buffer.addr.1.lcssa354, i32 1
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end14.if.end47_crit_edge
  %count.addr.2 = phi i32 [ %count.addr.1.lcssa353, %if.end14.if.end47_crit_edge ], [ %sub, %if.end46 ]
  %buffer.addr.2 = phi ptr [ %buffer.addr.1.lcssa354, %if.end14.if.end47_crit_edge ], [ %add.ptr, %if.end46 ]
  %skb.addr.3 = phi ptr [ %skb.addr.1332, %if.end14.if.end47_crit_edge ], [ %call.i.i, %if.end46 ]
  %cb48 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 3
  %expect50 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %expect50 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %expect50, align 2
  %conv51 = zext i16 %31 to i32
  %len52 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 6
  %32 = ptrtoint ptr %len52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len52, align 4
  %sub53 = sub i32 %conv51, %33
  %34 = tail call i32 @llvm.umin.i32(i32 %sub53, i32 %count.addr.2)
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %skb.addr.3, i32 noundef %34) #5
  %35 = call ptr @memcpy(ptr %call.i, ptr %buffer.addr.2, i32 %34)
  %sub61 = sub i32 %count.addr.2, %34
  %add.ptr62 = getelementptr i8, ptr %buffer.addr.2, i32 %34
  %36 = ptrtoint ptr %len52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len52, align 4
  %38 = ptrtoint ptr %expect50 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %expect50, align 2
  %conv67 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv67)
  %cmp68 = icmp ult i32 %37, %conv67
  br i1 %cmp68, label %if.end47.cleanup179_crit_edge, label %for.cond72.preheader

if.end47.cleanup179_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup179

for.cond72.preheader:                             ; preds = %if.end47
  br i1 %cmp18323, label %for.body75.lr.ph, label %for.cond72.preheader.cleanup183.sink.split_crit_edge

for.cond72.preheader.cleanup183.sink.split_crit_edge: ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup183.sink.split

for.body75.lr.ph:                                 ; preds = %for.cond72.preheader
  %40 = ptrtoint ptr %cb48 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %cb48, align 8
  br label %for.body75

for.body75:                                       ; preds = %for.inc87.for.body75_crit_edge, %for.body75.lr.ph
  %i.1326 = phi i32 [ 0, %for.body75.lr.ph ], [ %inc88, %for.inc87.for.body75_crit_edge ]
  %arrayidx80 = getelementptr %struct.h4_recv_pkt, ptr %pkts, i32 %i.1326
  %42 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx80, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp83 = icmp eq i8 %41, %43
  br i1 %cmp83, label %if.end94, label %for.inc87

for.inc87:                                        ; preds = %for.body75
  %inc88 = add nuw nsw i32 %i.1326, 1
  %exitcond349.not = icmp eq i32 %inc88, %pkts_count
  br i1 %exitcond349.not, label %for.inc87.cleanup183.sink.split_crit_edge, label %for.inc87.for.body75_crit_edge

for.inc87.for.body75_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body75

for.inc87.cleanup183.sink.split_crit_edge:        ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup183.sink.split

if.end94:                                         ; preds = %for.body75
  %hlen97 = getelementptr %struct.h4_recv_pkt, ptr %pkts, i32 %i.1326, i32 1
  %44 = ptrtoint ptr %hlen97 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hlen97, align 1
  %conv98 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv98)
  %cmp99 = icmp eq i32 %37, %conv98
  br i1 %cmp99, label %if.then101, label %if.end94.cleanup179.sink.split_crit_edge

if.end94.cleanup179.sink.split_crit_edge:         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup179.sink.split

if.then101:                                       ; preds = %if.end94
  %lsize = getelementptr %struct.h4_recv_pkt, ptr %pkts, i32 %i.1326, i32 3
  %46 = ptrtoint ptr %lsize to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %lsize, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i8 %47, label %if.then101.cleanup183.sink.split_crit_edge [
    i8 0, label %if.then101.if.then144_crit_edge
    i8 1, label %sw.bb104
    i8 2, label %sw.bb121
  ]

if.then101.if.then144_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then144

if.then101.cleanup183.sink.split_crit_edge:       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup183.sink.split

sw.bb104:                                         ; preds = %if.then101
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 19
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %loff = getelementptr %struct.h4_recv_pkt, ptr %pkts, i32 %i.1326, i32 2
  %51 = ptrtoint ptr %loff to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %loff, align 2
  %idxprom = zext i8 %52 to i32
  %arrayidx106 = getelementptr i8, ptr %50, i32 %idxprom
  %53 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %54 to i16
  %conv108 = zext i8 %54 to i32
  %conv113 = add i16 %39, %conv107
  %55 = ptrtoint ptr %expect50 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv113, ptr %expect50, align 2
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 7
  %56 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.i.not.i = icmp eq i32 %57, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %sw.bb104.skb_tailroom.exit_crit_edge

sw.bb104.skb_tailroom.exit_crit_edge:             ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #7
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 17
  %58 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 16
  %60 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %59 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %61 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %sw.bb104.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %sw.bb104.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv108)
  %cmp116 = icmp slt i32 %cond.i, %conv108
  br i1 %cmp116, label %skb_tailroom.exit.cleanup183.sink.split_crit_edge, label %skb_tailroom.exit.sw.epilog_crit_edge

skb_tailroom.exit.sw.epilog_crit_edge:            ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

skb_tailroom.exit.cleanup183.sink.split_crit_edge: ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup183.sink.split

sw.bb121:                                         ; preds = %if.then101
  %data122 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 19
  %62 = ptrtoint ptr %data122 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data122, align 4
  %loff124 = getelementptr %struct.h4_recv_pkt, ptr %pkts, i32 %i.1326, i32 2
  %64 = ptrtoint ptr %loff124 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %loff124, align 2
  %conv125 = zext i8 %65 to i32
  %add.ptr126 = getelementptr i8, ptr %63, i32 %conv125
  %66 = ptrtoint ptr %add.ptr126 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %add.ptr126, align 1
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #5
  %conv128 = zext i16 %68 to i32
  %add133 = add i16 %68, %39
  %69 = ptrtoint ptr %expect50 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %add133, ptr %expect50, align 2
  %data_len.i.i275 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 7
  %70 = ptrtoint ptr %data_len.i.i275 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data_len.i.i275, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.i.not.i276 = icmp eq i32 %71, 0
  br i1 %tobool.i.not.i276, label %cond.false.i282, label %sw.bb121.skb_tailroom.exit284_crit_edge

sw.bb121.skb_tailroom.exit284_crit_edge:          ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_tailroom.exit284

cond.false.i282:                                  ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #7
  %end.i277 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 17
  %72 = ptrtoint ptr %end.i277 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %end.i277, align 4
  %tail.i278 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.3, i32 0, i32 16
  %74 = ptrtoint ptr %tail.i278 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tail.i278, align 8
  %sub.ptr.lhs.cast.i279 = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast.i280 = ptrtoint ptr %75 to i32
  %sub.ptr.sub.i281 = sub i32 %sub.ptr.lhs.cast.i279, %sub.ptr.rhs.cast.i280
  br label %skb_tailroom.exit284

skb_tailroom.exit284:                             ; preds = %cond.false.i282, %sw.bb121.skb_tailroom.exit284_crit_edge
  %cond.i283 = phi i32 [ %sub.ptr.sub.i281, %cond.false.i282 ], [ 0, %sw.bb121.skb_tailroom.exit284_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i283, i32 %conv128)
  %cmp137 = icmp slt i32 %cond.i283, %conv128
  br i1 %cmp137, label %skb_tailroom.exit284.cleanup183.sink.split_crit_edge, label %skb_tailroom.exit284.sw.epilog_crit_edge

skb_tailroom.exit284.sw.epilog_crit_edge:         ; preds = %skb_tailroom.exit284
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

skb_tailroom.exit284.cleanup183.sink.split_crit_edge: ; preds = %skb_tailroom.exit284
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup183.sink.split

sw.epilog:                                        ; preds = %skb_tailroom.exit284.sw.epilog_crit_edge, %skb_tailroom.exit.sw.epilog_crit_edge
  %dlen.0 = phi i16 [ %68, %skb_tailroom.exit284.sw.epilog_crit_edge ], [ %conv107, %skb_tailroom.exit.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dlen.0)
  %tobool143.not = icmp eq i16 %dlen.0, 0
  br i1 %tobool143.not, label %sw.epilog.if.then144_crit_edge, label %sw.epilog.cleanup179_crit_edge

sw.epilog.cleanup179_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup179

sw.epilog.if.then144_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then144

if.then144:                                       ; preds = %sw.epilog.if.then144_crit_edge, %if.then101.if.then144_crit_edge
  %76 = ptrtoint ptr %len52 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len52, align 4
  br label %cleanup179.sink.split

cleanup179.sink.split:                            ; preds = %if.then144, %if.end94.cleanup179.sink.split_crit_edge
  %.sink = phi i32 [ %77, %if.then144 ], [ %37, %if.end94.cleanup179.sink.split_crit_edge ]
  %add162 = add i32 %.sink, 1
  %rem164 = urem i32 %add162, %conv163
  %sub170 = sub nsw i32 %conv163, %rem164
  %rem172.lhs.trunc = trunc i32 %sub170 to i16
  %rem172304 = srem i16 %rem172.lhs.trunc, %rem172.rhs.trunc
  %conv173 = trunc i16 %rem172304 to i8
  %78 = ptrtoint ptr %padding to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv173, ptr %padding, align 1
  %recv176 = getelementptr %struct.h4_recv_pkt, ptr %pkts, i32 %i.1326, i32 5
  %79 = ptrtoint ptr %recv176 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %recv176, align 4
  %call177 = tail call i32 %80(ptr noundef %hdev, ptr noundef %skb.addr.3) #5
  br label %cleanup179

cleanup179:                                       ; preds = %cleanup179.sink.split, %sw.epilog.cleanup179_crit_edge, %if.end47.cleanup179_crit_edge
  %skb.addr.7 = phi ptr [ %skb.addr.3, %if.end47.cleanup179_crit_edge ], [ %skb.addr.3, %sw.epilog.cleanup179_crit_edge ], [ null, %cleanup179.sink.split ]
  %tobool6.not = icmp eq i32 %sub61, 0
  br i1 %tobool6.not, label %cleanup179.cleanup183_crit_edge, label %cleanup179.for.cond.preheader_crit_edge

cleanup179.for.cond.preheader_crit_edge:          ; preds = %cleanup179
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

cleanup179.cleanup183_crit_edge:                  ; preds = %cleanup179
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup183

cleanup183.sink.split:                            ; preds = %skb_tailroom.exit284.cleanup183.sink.split_crit_edge, %skb_tailroom.exit.cleanup183.sink.split_crit_edge, %if.then101.cleanup183.sink.split_crit_edge, %for.inc87.cleanup183.sink.split_crit_edge, %for.cond72.preheader.cleanup183.sink.split_crit_edge
  %retval.4.ph = phi ptr [ inttoptr (i32 -84 to ptr), %for.inc87.cleanup183.sink.split_crit_edge ], [ inttoptr (i32 -84 to ptr), %for.cond72.preheader.cleanup183.sink.split_crit_edge ], [ inttoptr (i32 -90 to ptr), %skb_tailroom.exit.cleanup183.sink.split_crit_edge ], [ inttoptr (i32 -90 to ptr), %skb_tailroom.exit284.cleanup183.sink.split_crit_edge ], [ inttoptr (i32 -84 to ptr), %if.then101.cleanup183.sink.split_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.3, i32 noundef 0) #5
  br label %cleanup183

cleanup183:                                       ; preds = %cleanup183.sink.split, %cleanup179.cleanup183_crit_edge, %for.inc41.cleanup183_crit_edge, %if.end27.cleanup183_crit_edge, %for.cond17.preheader.cleanup183_crit_edge, %for.end.cleanup183_crit_edge, %entry.cleanup183_crit_edge
  %retval.4 = phi ptr [ %skb.addr.0, %entry.cleanup183_crit_edge ], [ %retval.4.ph, %cleanup183.sink.split ], [ inttoptr (i32 -84 to ptr), %for.inc41.cleanup183_crit_edge ], [ inttoptr (i32 -84 to ptr), %for.cond17.preheader.cleanup183_crit_edge ], [ %skb.addr.7, %cleanup179.cleanup183_crit_edge ], [ %skb.addr.1332, %for.end.cleanup183_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end27.cleanup183_crit_edge ]
  ret ptr %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h4_open(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h4_open.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h4_open, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h4_open.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.4, ptr noundef %hu) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #8
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %txq = getelementptr inbounds %struct.h4_struct, ptr %call7.i.i, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.h4_struct, ptr %call7.i.i, i32 0, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %1 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %txq, ptr %txq, align 4
  %prev.i.i = getelementptr inbounds %struct.h4_struct, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %txq, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.h4_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
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
define internal i32 @h4_close(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h4_close.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h4_close, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h4_close.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.4, ptr noundef %hu) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %txq = getelementptr inbounds %struct.h4_struct, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %txq) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %priv, align 4
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h4_flush(ptr noundef %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h4_flush.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h4_flush, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h4_flush.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.4, ptr noundef %hu) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %txq = getelementptr inbounds %struct.h4_struct, ptr %1, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %txq) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h4_recv(ptr noundef %hu, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 2
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call1 = tail call ptr @h4_recv_buf(ptr noundef %6, ptr noundef %8, ptr noundef %data, i32 noundef %count, ptr noundef nonnull @h4_recv_pkts, i32 noundef 4)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call1 to i32
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %name = getelementptr inbounds %struct.hci_dev, ptr %12, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %10) #5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then5 ], [ -49, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @h4_enqueue(ptr noundef %hu, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @h4_enqueue.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@h4_enqueue, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @h4_enqueue.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.10, ptr noundef %hu, ptr noundef %skb) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #5
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cb, align 8
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %call3, align 1
  %txq = getelementptr inbounds %struct.h4_struct, ptr %1, i32 0, i32 1
  tail call void @skb_queue_tail(ptr noundef %txq, ptr noundef %skb) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @h4_dequeue(ptr nocapture noundef readonly %hu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hci_uart, ptr %hu, i32 0, i32 9
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %txq = getelementptr inbounds %struct.h4_struct, ptr %1, i32 0, i32 1
  %call = tail call ptr @skb_dequeue(ptr noundef %txq) #5
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_recv_frame(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !25, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__ksymtab_h4_recv_buf, !1, !"__ksymtab_h4_recv_buf", i1 false, i1 false}
!1 = !{!"../drivers/bluetooth/hci_h4.c", i32 274, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/bluetooth/hci_h4.c", i32 135, i32 11}
!4 = !{ptr @h4p, !5, !"h4p", i1 false, i1 false}
!5 = !{!"../drivers/bluetooth/hci_h4.c", i32 133, i32 36}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/bluetooth/hci_h4.c", i32 45, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @h4_open.__UNIQUE_ID_ddebug479, !7, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!12 = !{ptr @skb_queue_head_init.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/bluetooth/hci_h4.c", i32 74, i32 2}
!17 = !{ptr @h4_close.__UNIQUE_ID_ddebug481, !16, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/bluetooth/hci_h4.c", i32 62, i32 2}
!20 = !{ptr @h4_flush.__UNIQUE_ID_ddebug480, !19, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/bluetooth/hci_h4.c", i32 119, i32 3}
!23 = !{ptr @h4_recv_pkts, !24, !"h4_recv_pkts", i1 false, i1 false}
!24 = !{!"../drivers/bluetooth/hci_h4.c", i32 100, i32 33}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/bluetooth/hci_h4.c", i32 91, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @h4_enqueue.__UNIQUE_ID_ddebug482, !26, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148957036, i64 2148957041, i64 2148957054, i64 2148957098, i64 2148957132, i64 2148957153}
