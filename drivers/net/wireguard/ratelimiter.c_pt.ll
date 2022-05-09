; ModuleID = '/llk/IR_all_yes/drivers/net/wireguard/ratelimiter.c_pt.bc'
source_filename = "../drivers/net/wireguard/ratelimiter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hsiphash_key_t = type { [2 x i32] }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.hlist_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ratelimiter_entry = type { i64, i64, i64, ptr, %struct.spinlock, %struct.hlist_node, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@table_v4 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@key = internal global { %struct.hsiphash_key_t, [24 x i8] } zeroinitializer, align 32
@table_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@table_v6 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@wg_ratelimiter_allow.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireguard/ratelimiter.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@total_entries = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@max_entries = internal global { i32, [28 x i8] } zeroinitializer, align 32
@entry_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@wg_ratelimiter_allow.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&entry->lock\00", [19 x i8] zeroinitializer }, align 32
@table_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@init_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_lock, i64 52), ptr getelementptr (i8, ptr @init_lock, i64 52) }, ptr @init_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@init_refcnt = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ratelimiter_entry\00", [46 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@gc_work = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @gc_work, i64 4), ptr getelementptr (i8, ptr @gc_work, i64 4) }, ptr @wg_ratelimiter_gc_entries, %struct.lockdep_map { ptr @gc_work, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2621440, %struct.lockdep_map { ptr @.str.17, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@wg_ratelimiter_selftest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016wireguard: ratelimiter self-tests: pass\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wg_ratelimiter_selftest\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireguard/selftest/ratelimiter.c\00", [51 x i8] zeroinitializer }, align 32
@wg_ratelimiter_selftest._entry_ptr = internal global ptr @wg_ratelimiter_selftest._entry, section ".printk_index", align 4
@wg_ratelimiter_selftest._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013wireguard: ratelimiter self-test %d: FAIL\0A\00", [51 x i8] zeroinitializer }, align 32
@wg_ratelimiter_selftest._entry_ptr.9 = internal global ptr @wg_ratelimiter_selftest._entry.7, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\22ratelimiter_table_lock\22\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"init_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_lock\00", [22 x i8] zeroinitializer }, align 32
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(gc_work).work\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireguard/ratelimiter.c:20\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.18 = private unnamed_addr constant [9 x i8] c"table_v4\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 21, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 13, i32 23 }
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"table_size\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 18, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"table_v6\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 23, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 111, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"total_entries\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 17, i32 17 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"max_entries\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 18, i32 21 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"entry_cache\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 12, i32 27 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 145, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [11 x i8] c"table_lock\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 14, i32 19 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"init_lock\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"init_refcnt\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 16, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 164, i32 16 }
@___asan_gen_.63 = private unnamed_addr constant [8 x i8] c"gc_work\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 220, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireguard/selftest/ratelimiter.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 222, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 695, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 723, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 14, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 15, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [39 x i8] c"../drivers/net/wireguard/ratelimiter.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 20, i32 8 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @wg_ratelimiter_selftest._entry, ptr @wg_ratelimiter_selftest._entry.7, ptr @wg_ratelimiter_selftest._entry_ptr, ptr @wg_ratelimiter_selftest._entry_ptr.9, ptr @table_v4, ptr @key, ptr @table_size, ptr @table_v6, ptr @.str, ptr @.str.1, ptr @total_entries, ptr @max_entries, ptr @entry_cache, ptr @wg_ratelimiter_allow.__key, ptr @.str.2, ptr @table_lock, ptr @init_lock, ptr @init_refcnt, ptr @.str.3, ptr @gc_work, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_v4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_v6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @total_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_entries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @entry_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_ratelimiter_allow.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_refcnt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gc_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_ratelimiter_selftest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_ratelimiter_selftest._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wg_ratelimiter_allow(ptr nocapture noundef readonly %skb, ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %net to i32
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %1 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %protocol, align 8
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %entry.cleanup_crit_edge [
    i16 2048, label %if.then
    i16 -31011, label %if.then10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saddr, align 4
  %conv3 = zext i32 %9 to i64
  %10 = load ptr, ptr @table_v4, align 4
  %call5 = tail call i32 @hsiphash_2u32(i32 noundef %0, i32 noundef %9, ptr noundef nonnull @key) #8
  br label %if.end20

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i150 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i150 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i150, align 8
  %network_header.i.i151 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i151 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i151, align 4
  %conv.i.i152 = zext i16 %14 to i32
  %add.ptr.i.i153 = getelementptr i8, ptr %12, i32 %conv.i.i152
  %saddr12 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i153, i32 0, i32 5
  %15 = ptrtoint ptr %saddr12 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %ip.0.copyload = load i64, ptr %saddr12, align 4
  %16 = load ptr, ptr @table_v6, align 4
  %shr = lshr i64 %ip.0.copyload, 32
  %conv13 = trunc i64 %shr to i32
  %conv14 = trunc i64 %ip.0.copyload to i32
  %call15 = tail call i32 @hsiphash_3u32(i32 noundef %0, i32 noundef %conv13, i32 noundef %conv14, ptr noundef nonnull @key) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then10, %if.then
  %call15.sink = phi i32 [ %call15, %if.then10 ], [ %call5, %if.then ]
  %.sink = phi ptr [ %16, %if.then10 ], [ %10, %if.then ]
  %ip.0 = phi i64 [ %ip.0.copyload, %if.then10 ], [ %conv3, %if.then ]
  %17 = load i32, ptr @table_size, align 4
  %sub16 = add i32 %17, -1
  %and17 = and i32 %sub16, %call15.sink
  %arrayidx18 = getelementptr %struct.hlist_head, ptr %.sink, i32 %and17
  %18 = tail call i32 @llvm.read_register.i32(metadata !54) #8
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !64
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end20.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end20.rcu_read_lock.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end20
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end20.rcu_read_lock.exit_crit_edge
  %call21 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call22 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true24

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true24:                                  ; preds = %land.lhs.true
  %.b147 = load i1, ptr @wg_ratelimiter_allow.__warned, align 1
  br i1 %.b147, label %land.lhs.true24.do.end_crit_edge, label %if.then26

land.lhs.true24.do.end_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wg_ratelimiter_allow.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 111, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then26, %land.lhs.true24.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx18, align 4
  %tobool33.not = icmp eq ptr %23, null
  %add.ptr = getelementptr i8, ptr %23, i32 -72
  %tobool35.not181185 = icmp eq ptr %add.ptr, null
  %tobool35.not181 = or i1 %tobool33.not, %tobool35.not181185
  br i1 %tobool35.not181, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %entry1.0182 = phi ptr [ %add.ptr79, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %net36 = getelementptr inbounds %struct.ratelimiter_entry, ptr %entry1.0182, i32 0, i32 3
  %24 = ptrtoint ptr %net36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net36, align 8
  %cmp37 = icmp eq ptr %25, %net
  br i1 %cmp37, label %land.lhs.true39, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true39:                                  ; preds = %for.body
  %ip40 = getelementptr inbounds %struct.ratelimiter_entry, ptr %entry1.0182, i32 0, i32 2
  %26 = ptrtoint ptr %ip40 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ip40, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %ip.0)
  %cmp41 = icmp eq i64 %27, %ip.0
  br i1 %cmp41, label %if.then43, label %land.lhs.true39.for.inc_crit_edge

land.lhs.true39.for.inc_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then43:                                        ; preds = %land.lhs.true39
  %lock = getelementptr inbounds %struct.ratelimiter_entry, ptr %entry1.0182, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %call.i.i154 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  %tokens45 = getelementptr inbounds %struct.ratelimiter_entry, ptr %entry1.0182, i32 0, i32 1
  %28 = ptrtoint ptr %tokens45 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tokens45, align 8
  %add = add i64 %29, %call.i.i154
  %30 = ptrtoint ptr %entry1.0182 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %entry1.0182, align 8
  %sub46 = sub i64 %add, %31
  %32 = tail call i64 @llvm.umin.i64(i64 %sub46, i64 250000000)
  %33 = ptrtoint ptr %entry1.0182 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %call.i.i154, ptr %entry1.0182, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 49999999, i64 %32)
  %cmp55 = icmp ugt i64 %32, 49999999
  %sub60 = add nsw i64 %32, -50000000
  %cond63 = select i1 %cmp55, i64 %sub60, i64 %32
  %34 = ptrtoint ptr %tokens45 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %cond63, ptr %tokens45, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %call.i155 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i155, label %if.then43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i158

if.then43.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i158:                               ; preds = %if.then43
  %call1.i156 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i156)
  %tobool.not.i157 = icmp eq i32 %call1.i156, 0
  br i1 %tobool.not.i157, label %land.lhs.true.i158.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i160

land.lhs.true.i158.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i160:                              ; preds = %land.lhs.true.i158
  %.b4.i159 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i159, label %land.lhs.true2.i160.rcu_read_unlock.exit_crit_edge, label %if.then.i161

land.lhs.true2.i160.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i161:                                     ; preds = %land.lhs.true2.i160
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i161, %land.lhs.true2.i160.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i158.rcu_read_unlock.exit_crit_edge, %if.then43.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !65
  %35 = tail call i32 @llvm.read_register.i32(metadata !54) #8
  %and.i.i.i.i.i162 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i162 to ptr
  %preempt_count.i.i.i.i163 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i163, align 4
  %sub.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i163, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true39.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %hash = getelementptr inbounds %struct.ratelimiter_entry, ptr %entry1.0182, i32 0, i32 5
  %39 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %hash, align 8
  %tobool75.not = icmp eq ptr %40, null
  %add.ptr79 = getelementptr i8, ptr %40, i32 -72
  %tobool35.not188 = icmp eq ptr %add.ptr79, null
  %tobool35.not = or i1 %tobool75.not, %tobool35.not188
  br i1 %tobool35.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i164 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i164, label %for.end.rcu_read_unlock.exit174_crit_edge, label %land.lhs.true.i167

for.end.rcu_read_unlock.exit174_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit174

land.lhs.true.i167:                               ; preds = %for.end
  %call1.i165 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i165)
  %tobool.not.i166 = icmp eq i32 %call1.i165, 0
  br i1 %tobool.not.i166, label %land.lhs.true.i167.rcu_read_unlock.exit174_crit_edge, label %land.lhs.true2.i169

land.lhs.true.i167.rcu_read_unlock.exit174_crit_edge: ; preds = %land.lhs.true.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit174

land.lhs.true2.i169:                              ; preds = %land.lhs.true.i167
  %.b4.i168 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i168, label %land.lhs.true2.i169.rcu_read_unlock.exit174_crit_edge, label %if.then.i170

land.lhs.true2.i169.rcu_read_unlock.exit174_crit_edge: ; preds = %land.lhs.true2.i169
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit174

if.then.i170:                                     ; preds = %land.lhs.true2.i169
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_unlock.exit174

rcu_read_unlock.exit174:                          ; preds = %if.then.i170, %land.lhs.true2.i169.rcu_read_unlock.exit174_crit_edge, %land.lhs.true.i167.rcu_read_unlock.exit174_crit_edge, %for.end.rcu_read_unlock.exit174_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !65
  %41 = tail call i32 @llvm.read_register.i32(metadata !54) #8
  %and.i.i.i.i.i171 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i171 to ptr
  %preempt_count.i.i.i.i172 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i172, align 4
  %sub.i.i.i173 = add i32 %44, -1
  store volatile i32 %sub.i.i.i173, ptr %preempt_count.i.i.i.i172, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @total_entries, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr nonnull @total_entries, i32 1, i32 3, i32 1) #8
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @total_entries, ptr nonnull @total_entries, i32 1, ptr nonnull elementtype(i32) @total_entries) #8, !srcloc !67
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !68
  %46 = load i32, ptr @max_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %46)
  %cmp84 = icmp ugt i32 %asmresult.i.i.i.i, %46
  br i1 %cmp84, label %rcu_read_unlock.exit174.err_oom_crit_edge, label %if.end87

rcu_read_unlock.exit174.err_oom_crit_edge:        ; preds = %rcu_read_unlock.exit174
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_oom

if.end87:                                         ; preds = %rcu_read_unlock.exit174
  %47 = load ptr, ptr @entry_cache, align 4
  %call88 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %47, i32 noundef 3264) #8
  %tobool89.not = icmp eq ptr %call88, null
  br i1 %tobool89.not, label %if.end87.err_oom_crit_edge, label %if.end94, !prof !69

if.end87.err_oom_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_oom

if.end94:                                         ; preds = %if.end87
  %net95 = getelementptr inbounds %struct.ratelimiter_entry, ptr %call88, i32 0, i32 3
  %48 = ptrtoint ptr %net95 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %net, ptr %net95, align 8
  %ip96 = getelementptr inbounds %struct.ratelimiter_entry, ptr %call88, i32 0, i32 2
  %49 = ptrtoint ptr %ip96 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %ip.0, ptr %ip96, align 8
  %hash97 = getelementptr inbounds %struct.ratelimiter_entry, ptr %call88, i32 0, i32 5
  %50 = ptrtoint ptr %hash97 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %hash97, align 8
  %pprev.i = getelementptr inbounds %struct.ratelimiter_entry, ptr %call88, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %pprev.i, align 4
  %lock99 = getelementptr inbounds %struct.ratelimiter_entry, ptr %call88, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock99, ptr noundef nonnull @.str.2, ptr noundef nonnull @wg_ratelimiter_allow.__key, i16 noundef signext 3) #8
  %call.i.i175 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  %52 = ptrtoint ptr %call88 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %call.i.i175, ptr %call88, align 8
  %tokens105 = getelementptr inbounds %struct.ratelimiter_entry, ptr %call88, i32 0, i32 1
  %53 = ptrtoint ptr %tokens105 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 200000000, ptr %tokens105, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @table_lock) #8
  %54 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx18, align 4
  %56 = ptrtoint ptr %hash97 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %hash97, align 8
  %57 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %arrayidx18, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !70
  %58 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %hash97, ptr %arrayidx18, align 4
  %tobool.not.i177 = icmp eq ptr %55, null
  br i1 %tobool.not.i177, label %if.end94.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.end94.hlist_add_head_rcu.exit_crit_edge:       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %55, i32 0, i32 1
  %59 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %hash97, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.end94.hlist_add_head_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @table_lock) #8
  br label %cleanup

err_oom:                                          ; preds = %if.end87.err_oom_crit_edge, %rcu_read_unlock.exit174.err_oom_crit_edge
  %call.i.i149 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @total_entries, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @total_entries, i32 1, i32 3, i32 1) #8
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @total_entries, ptr nonnull @total_entries, i32 1, ptr nonnull elementtype(i32) @total_entries) #8, !srcloc !71
  br label %cleanup

cleanup:                                          ; preds = %err_oom, %hlist_add_head_rcu.exit, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp55, %rcu_read_unlock.exit ], [ false, %err_oom ], [ true, %hlist_add_head_rcu.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsiphash_2u32(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hsiphash_3u32(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_ratelimiter_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @init_lock, i32 noundef 0) #8
  %0 = load i64, ptr @init_refcnt, align 8
  %inc = add i64 %0, 1
  store i64 %inc, ptr @init_refcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 88, i32 noundef 8, i32 noundef 0, ptr noundef null) #8
  store ptr %call, ptr @entry_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.err_crit_edge, label %if.end2

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end2:                                          ; preds = %if.end
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %1 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %1)
  %cmp4 = icmp ugt i32 %1, 262144
  br i1 %cmp4, label %if.end2.cond.end11_crit_edge, label %cond.false

if.end2.cond.end11_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i37 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %2 = load volatile i32, ptr @_totalram_pages, align 4
  %3 = lshr i32 %2, 4
  %div35 = and i32 %3, 65535
  %sub.i = add nsw i32 %div35, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i.i.i = icmp eq i32 %sub.i, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #8, !range !72
  %sub.i.i.i = sub nuw nsw i32 32, %4
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %5 = tail call i32 @llvm.umax.i32(i32 %sub.i.i.op.i, i32 16)
  %6 = select i1 %tobool.not.i.i.i, i32 16, i32 %5
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false, %if.end2.cond.end11_crit_edge
  %cond12 = phi i32 [ %6, %cond.false ], [ 8192, %if.end2.cond.end11_crit_edge ]
  store i32 %cond12, ptr @table_size, align 4
  %mul = shl i32 %cond12, 3
  store i32 %mul, ptr @max_entries, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cond12, i32 4) #8
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !69

kvcalloc.exit.thread:                             ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr @table_v4, align 4
  br label %err_kmemcache

kvcalloc.exit:                                    ; preds = %cond.end11
  %9 = extractvalue { i32, i1 } %7, 0
  %call.i.i.i38 = tail call noalias ptr @kvmalloc_node(i32 noundef %9, i32 noundef 3520, i32 noundef -1) #11
  store ptr %call.i.i.i38, ptr @table_v4, align 4
  %tobool14.not = icmp eq ptr %call.i.i.i38, null
  br i1 %tobool14.not, label %kvcalloc.exit.err_kmemcache_crit_edge, label %if.end19, !prof !69

kvcalloc.exit.err_kmemcache_crit_edge:            ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kmemcache

if.end19:                                         ; preds = %kvcalloc.exit
  %10 = load i32, ptr @table_size, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4) #8
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %kvcalloc.exit42.thread, label %kvcalloc.exit42, !prof !69

kvcalloc.exit42.thread:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr @table_v6, align 4
  br label %if.then30

kvcalloc.exit42:                                  ; preds = %if.end19
  %13 = extractvalue { i32, i1 } %11, 0
  %call.i.i.i39 = tail call noalias ptr @kvmalloc_node(i32 noundef %13, i32 noundef 3520, i32 noundef -1) #11
  store ptr %call.i.i.i39, ptr @table_v6, align 4
  %tobool21.not = icmp eq ptr %call.i.i.i39, null
  br i1 %tobool21.not, label %kvcalloc.exit42.if.then30_crit_edge, label %if.end31, !prof !69

kvcalloc.exit42.if.then30_crit_edge:              ; preds = %kvcalloc.exit42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.then30:                                        ; preds = %kvcalloc.exit42.if.then30_crit_edge, %kvcalloc.exit42.thread
  %14 = load ptr, ptr @table_v4, align 4
  tail call void @kvfree(ptr noundef %14) #8
  br label %err_kmemcache

if.end31:                                         ; preds = %kvcalloc.exit42
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %15 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef nonnull @gc_work, i32 noundef 100) #8
  tail call void @get_random_bytes(ptr noundef nonnull @key, i32 noundef 8) #8
  br label %return

err_kmemcache:                                    ; preds = %if.then30, %kvcalloc.exit.err_kmemcache_crit_edge, %kvcalloc.exit.thread
  %16 = load ptr, ptr @entry_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %16) #8
  br label %err

err:                                              ; preds = %err_kmemcache, %if.end.err_crit_edge
  %17 = load i64, ptr @init_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, ptr @init_refcnt, align 8
  br label %return

return:                                           ; preds = %err, %if.end31, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %err ], [ 0, %entry.return_crit_edge ], [ 0, %if.end31 ]
  tail call void @mutex_unlock(ptr noundef nonnull @init_lock) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_ratelimiter_uninit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @init_lock, i32 noundef 0) #8
  %0 = load i64, ptr @init_refcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %dec = add i64 %0, -1
  store i64 %dec, ptr @init_refcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec)
  %tobool1.not = icmp eq i64 %dec, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef nonnull @gc_work) #8
  tail call void @wg_ratelimiter_gc_entries(ptr noundef null)
  tail call void @rcu_barrier() #8
  %1 = load ptr, ptr @table_v4, align 4
  tail call void @kvfree(ptr noundef %1) #8
  %2 = load ptr, ptr @table_v6, align 4
  tail call void @kvfree(ptr noundef %2) #8
  %3 = load ptr, ptr @entry_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #8
  br label %out

out:                                              ; preds = %if.end, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @init_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wg_ratelimiter_gc_entries(ptr noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  %0 = load i32, ptr @table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp137.not = icmp eq i32 %0, 0
  br i1 %cmp137.not, label %entry.for.end83_crit_edge, label %for.body.lr.ph

entry.for.end83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end83

for.body.lr.ph:                                   ; preds = %entry
  %tobool8.not = icmp eq ptr %work, null
  br label %for.body

for.body:                                         ; preds = %for.inc82.for.body_crit_edge, %for.body.lr.ph
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc82.for.body_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @table_lock) #8
  %1 = load ptr, ptr @table_v4, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %1, i32 %i.0138
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -72
  %tobool4.not133139 = icmp eq ptr %add.ptr, null
  %tobool4.not133 = or i1 %tobool.not, %tobool4.not133139
  br i1 %tobool4.not133, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %entry1.0134 = phi ptr [ %add.ptr19, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %hash = getelementptr inbounds %struct.ratelimiter_entry, ptr %entry1.0134, i32 0, i32 5
  %4 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hash, align 8
  br i1 %tobool8.not, label %land.rhs.if.then_crit_edge, label %lor.lhs.false, !prof !69

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %land.rhs
  %6 = ptrtoint ptr %entry1.0134 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %entry1.0134, align 8
  %sub = sub i64 %call.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000000, i64 %sub)
  %cmp12 = icmp ugt i64 %sub, 1000000000
  br i1 %cmp12, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.rhs.if.then_crit_edge
  %pprev2.i.i.i = getelementptr inbounds %struct.ratelimiter_entry, ptr %entry1.0134, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev2.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %5, ptr %9, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.then.entry_uninit.exit_crit_edge, label %do.body13.i.i.i

if.then.entry_uninit.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %entry_uninit.exit

do.body13.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %pprev14.i.i.i, align 4
  br label %entry_uninit.exit

entry_uninit.exit:                                ; preds = %do.body13.i.i.i, %if.then.entry_uninit.exit_crit_edge
  %12 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.ratelimiter_entry, ptr %entry1.0134, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @entry_free) #8
  br label %for.inc

for.inc:                                          ; preds = %entry_uninit.exit, %lor.lhs.false.for.inc_crit_edge
  %tobool15.not = icmp eq ptr %5, null
  %add.ptr19 = getelementptr i8, ptr %5, i32 -72
  %tobool4.not141 = icmp eq ptr %add.ptr19, null
  %tobool4.not = or i1 %tobool15.not, %tobool4.not141
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %13 = load ptr, ptr @table_v6, align 4
  %arrayidx24 = getelementptr %struct.hlist_head, ptr %13, i32 %i.0138
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx24, align 4
  %tobool27.not = icmp eq ptr %15, null
  %add.ptr31 = getelementptr i8, ptr %15, i32 -72
  %tobool36.not135140 = icmp eq ptr %add.ptr31, null
  %tobool36.not135 = or i1 %tobool27.not, %tobool36.not135140
  br i1 %tobool36.not135, label %for.end.for.end70_crit_edge, label %for.end.land.rhs37_crit_edge

for.end.land.rhs37_crit_edge:                     ; preds = %for.end
  br label %land.rhs37

for.end.for.end70_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end70

land.rhs37:                                       ; preds = %for.inc59.land.rhs37_crit_edge, %for.end.land.rhs37_crit_edge
  %entry1.1136 = phi ptr [ %add.ptr66, %for.inc59.land.rhs37_crit_edge ], [ %add.ptr31, %for.end.land.rhs37_crit_edge ]
  %hash38 = getelementptr inbounds %struct.ratelimiter_entry, ptr %entry1.1136, i32 0, i32 5
  %16 = ptrtoint ptr %hash38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hash38, align 8
  br i1 %tobool8.not, label %land.rhs37.if.then57_crit_edge, label %lor.lhs.false53, !prof !69

land.rhs37.if.then57_crit_edge:                   ; preds = %land.rhs37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

lor.lhs.false53:                                  ; preds = %land.rhs37
  %18 = ptrtoint ptr %entry1.1136 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %entry1.1136, align 8
  %sub55 = sub i64 %call.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000000, i64 %sub55)
  %cmp56 = icmp ugt i64 %sub55, 1000000000
  br i1 %cmp56, label %lor.lhs.false53.if.then57_crit_edge, label %lor.lhs.false53.for.inc59_crit_edge

lor.lhs.false53.for.inc59_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc59

lor.lhs.false53.if.then57_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false53.if.then57_crit_edge, %land.rhs37.if.then57_crit_edge
  %pprev2.i.i.i120 = getelementptr inbounds %struct.ratelimiter_entry, ptr %entry1.1136, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %pprev2.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pprev2.i.i.i120, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %17, ptr %21, align 4
  %tobool.not.i.i.i121 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i121, label %if.then57.entry_uninit.exit125_crit_edge, label %do.body13.i.i.i123

if.then57.entry_uninit.exit125_crit_edge:         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %entry_uninit.exit125

do.body13.i.i.i123:                               ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i122 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %pprev14.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %pprev14.i.i.i122, align 4
  br label %entry_uninit.exit125

entry_uninit.exit125:                             ; preds = %do.body13.i.i.i123, %if.then57.entry_uninit.exit125_crit_edge
  %24 = ptrtoint ptr %pprev2.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i120, align 4
  %rcu.i124 = getelementptr inbounds %struct.ratelimiter_entry, ptr %entry1.1136, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu.i124, ptr noundef nonnull @entry_free) #8
  br label %for.inc59

for.inc59:                                        ; preds = %entry_uninit.exit125, %lor.lhs.false53.for.inc59_crit_edge
  %tobool62.not = icmp eq ptr %17, null
  %add.ptr66 = getelementptr i8, ptr %17, i32 -72
  %tobool36.not142 = icmp eq ptr %add.ptr66, null
  %tobool36.not = or i1 %tobool62.not, %tobool36.not142
  br i1 %tobool36.not, label %for.inc59.for.end70_crit_edge, label %for.inc59.land.rhs37_crit_edge

for.inc59.land.rhs37_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs37

for.inc59.for.end70_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end70

for.end70:                                        ; preds = %for.inc59.for.end70_crit_edge, %for.end.for.end70_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @table_lock) #8
  br i1 %tobool8.not, label %for.end70.for.inc82_crit_edge, label %if.then78, !prof !69

for.end70.for.inc82_crit_edge:                    ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc82

if.then78:                                        ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  br label %for.inc82

for.inc82:                                        ; preds = %if.then78, %for.end70.for.inc82_crit_edge
  %inc = add nuw i32 %i.0138, 1
  %25 = load i32, ptr @table_size, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.inc82.for.body_crit_edge, label %for.inc82.for.end83_crit_edge

for.inc82.for.end83_crit_edge:                    ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end83

for.inc82.for.body_crit_edge:                     ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end83:                                        ; preds = %for.inc82.for.end83_crit_edge, %entry.for.end83_crit_edge
  %tobool84.not = icmp eq ptr %work, null
  br i1 %tobool84.not, label %for.end83.if.end93_crit_edge, label %if.then91, !prof !69

for.end83.if.end93_crit_edge:                     ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then91:                                        ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %26 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i126 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef nonnull @gc_work, i32 noundef 100) #8
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %for.end83.if.end93_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @wg_ratelimiter_selftest() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_coarse_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @entry_free(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @entry_cache, align 4
  %add.ptr = getelementptr i8, ptr %rcu, i32 -80
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef %add.ptr) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @total_entries, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @total_entries, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @total_entries, ptr nonnull @total_entries, i32 1, ptr nonnull elementtype(i32) @total_entries) #8, !srcloc !71
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !39, !40, !42, !44, !46, !48, !49, !50, !52, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 111, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @wg_ratelimiter_allow.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 145, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 164, i32 16}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireguard/selftest/ratelimiter.c", i32 220, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @wg_ratelimiter_selftest._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @wg_ratelimiter_selftest._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireguard/selftest/ratelimiter.c", i32 222, i32 3}
!17 = !{ptr @wg_ratelimiter_selftest._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @wg_ratelimiter_selftest._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @entry_cache, !20, !"entry_cache", i1 false, i1 false}
!20 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 12, i32 27}
!21 = !{ptr @key, !22, !"key", i1 false, i1 false}
!22 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 13, i32 23}
!23 = !{ptr @init_refcnt, !24, !"init_refcnt", i1 false, i1 false}
!24 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 16, i32 12}
!25 = !{ptr @max_entries, !26, !"max_entries", i1 false, i1 false}
!26 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 18, i32 21}
!27 = !{ptr @table_size, !28, !"table_size", i1 false, i1 false}
!28 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 18, i32 34}
!29 = !{ptr @table_v4, !30, !"table_v4", i1 false, i1 false}
!30 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 21, i32 27}
!31 = !{ptr @table_v6, !32, !"table_v6", i1 false, i1 false}
!32 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 23, i32 27}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @total_entries, !41, !"total_entries", i1 false, i1 false}
!41 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 17, i32 17}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 14, i32 32}
!44 = !{ptr @table_lock, !45, !"table_lock", i1 false, i1 false}
!45 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 14, i32 19}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 15, i32 8}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @init_lock, !47, !"init_lock", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireguard/ratelimiter.c", i32 20, i32 8}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @gc_work, !51, !"gc_work", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2149649884}
!65 = !{i64 2149650150}
!66 = !{i64 2148438658}
!67 = !{i64 2148353967, i64 2148353999, i64 2148354028, i64 2148354062, i64 2148354093, i64 2148354116}
!68 = !{i64 2148438887}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 2149751495}
!71 = !{i64 2148355712, i64 2148355738, i64 2148355767, i64 2148355801, i64 2148355832, i64 2148355855}
!72 = !{i32 0, i32 33}
