; ModuleID = '/llk/IR_all_yes/fs/jbd2/revoke.c_pt.bc'
source_filename = "../fs/jbd2/revoke.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, %struct.lockdep_map, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.jbd2_revoke_table_s = type { i32, i32, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.jbd2_journal_handle = type { %union.anon.79, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.79 = type { ptr }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.jbd2_revoke_record_s = type { %struct.list_head, i32, i64 }
%struct.journal_superblock_s = type { %struct.journal_header_s, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i8, [3 x i8], i32, [41 x i32], i32, [768 x i8] }
%struct.journal_header_s = type { i32, i32, i32 }
%struct.jbd2_journal_revoke_header_s = type { %struct.journal_header_s, i32 }

@jbd2_revoke_record_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@jbd2_revoke_table_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jbd2_revoke_record_s\00", [43 x i8] zeroinitializer }, align 32
@jbd2_journal_init_revoke_record_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\010JBD2: failed to create revoke_record cache\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"jbd2_journal_init_revoke_record_cache\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/jbd2/revoke.c\00", [47 x i8] zeroinitializer }, align 32
@jbd2_journal_init_revoke_record_cache._entry_ptr = internal global ptr @jbd2_journal_init_revoke_record_cache._entry, section ".printk_index", align 4
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jbd2_revoke_table_s\00", [44 x i8] zeroinitializer }, align 32
@jbd2_journal_init_revoke_table_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\010JBD2: failed to create revoke_table cache\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"jbd2_journal_init_revoke_table_cache\00", [59 x i8] zeroinitializer }, align 32
@jbd2_journal_init_revoke_table_cache._entry_ptr = internal global ptr @jbd2_journal_init_revoke_table_cache._entry, section ".printk_index", align 4
@jbd2_journal_init_revoke.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&journal->j_revoke_lock\00", [40 x i8] zeroinitializer }, align 32
@jbd2_journal_revoke.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jbd2_journal_revoke._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013JBD2 unexpected failure: %s: %s;\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"jbd2_journal_revoke\00", [44 x i8] zeroinitializer }, align 32
@jbd2_journal_revoke._entry_ptr = internal global ptr @jbd2_journal_revoke._entry, section ".printk_index", align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"!buffer_revoked(bh)\00", [44 x i8] zeroinitializer }, align 32
@jbd2_journal_revoke._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.3, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013inconsistent data on disk\0A\00", [35 x i8] zeroinitializer }, align 32
@jbd2_journal_revoke._entry_ptr.13 = internal global ptr @jbd2_journal_revoke._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"insert revoke for block %llu, bh_in=%p\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.jbd2_journal_cancel_revoke = private unnamed_addr constant [27 x i8] c"jbd2_journal_cancel_revoke\00", align 1
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"journal_head %p, cancelling revoke\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cancelled existing revoke on blocknr %llu\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.jbd2_journal_write_revoke_records = private unnamed_addr constant [34 x i8] c"jbd2_journal_write_revoke_records\00", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Wrote %d revoke records\0A\00", [39 x i8] zeroinitializer }, align 32
@jbd2_journal_has_csum_v2or3.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/jbd2.h\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [25 x i8] c"jbd2_revoke_record_cache\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 95, i32 27 }
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"jbd2_revoke_table_cache\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 96, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 196, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 200, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 209, i32 28 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 212, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 278, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 383, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 401, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 431, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 447, i32 4 }
@___asan_gen_.86 = private constant [20 x i8] c"../fs/jbd2/revoke.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 563, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"../include/linux/jbd2.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 1734, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @jbd2_journal_init_revoke_record_cache._entry, ptr @jbd2_journal_init_revoke_record_cache._entry_ptr, ptr @jbd2_journal_init_revoke_table_cache._entry, ptr @jbd2_journal_init_revoke_table_cache._entry_ptr, ptr @jbd2_journal_revoke._entry, ptr @jbd2_journal_revoke._entry.11, ptr @jbd2_journal_revoke._entry_ptr, ptr @jbd2_journal_revoke._entry_ptr.13, ptr @jbd2_revoke_record_cache, ptr @jbd2_revoke_table_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @jbd2_journal_init_revoke.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_revoke_record_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_revoke_table_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_journal_init_revoke_record_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_journal_init_revoke_table_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_journal_init_revoke.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_journal_revoke._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jbd2_journal_revoke._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_destroy_revoke_record_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @jbd2_revoke_record_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  store ptr null, ptr @jbd2_revoke_record_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_destroy_revoke_table_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @jbd2_revoke_table_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #8
  store ptr null, ptr @jbd2_revoke_table_cache, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_init_revoke_record_cache() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @jbd2_revoke_record_cache, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end8, label %do.body5, !prof !55

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 195, 0\0A.popsection", ""() #8, !srcloc !56
  unreachable

do.end8:                                          ; preds = %entry
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 8, i32 noundef 139264, ptr noundef null) #8
  store ptr %call, ptr @jbd2_revoke_record_cache, align 4
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %do.end12, label %do.end8.return_crit_edge

do.end8.return_crit_edge:                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end12:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %return

return:                                           ; preds = %do.end12, %do.end8.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end12 ], [ 0, %do.end8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_init_revoke_table_cache() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @jbd2_revoke_table_cache, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end8, label %do.body5, !prof !55

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #8, !srcloc !57
  unreachable

do.end8:                                          ; preds = %entry
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 12, i32 noundef 4, i32 noundef 131072, ptr noundef null) #8
  store ptr %call, ptr @jbd2_revoke_table_cache, align 4
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %do.end12, label %do.end8.return_crit_edge

do.end8.return_crit_edge:                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end12:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %return

return:                                           ; preds = %do.end12, %do.end8.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end12 ], [ 0, %do.end8.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_init_revoke(ptr noundef %journal, i32 noundef %hash_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %j_revoke_table = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 53
  %0 = ptrtoint ptr %j_revoke_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_revoke_table, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %do.body7, label %do.body3, !prof !55

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 265, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.body7:                                         ; preds = %entry
  %2 = tail call i32 @llvm.ctpop.i32(i32 %hash_size) #8, !range !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %do.end22, label %do.body17, !prof !60

do.body17:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 266, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

do.end22:                                         ; preds = %do.body7
  %call23 = tail call fastcc ptr @jbd2_journal_init_revoke_table(i32 noundef %hash_size)
  %4 = ptrtoint ptr %j_revoke_table to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call23, ptr %j_revoke_table, align 4
  %tobool28.not = icmp eq ptr %call23, null
  br i1 %tobool28.not, label %do.end22.return_crit_edge, label %if.end30

do.end22.return_crit_edge:                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end30:                                         ; preds = %do.end22
  %call31 = tail call fastcc ptr @jbd2_journal_init_revoke_table(i32 noundef %hash_size)
  %arrayidx33 = getelementptr %struct.journal_s, ptr %journal, i32 0, i32 53, i32 1
  %5 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call31, ptr %arrayidx33, align 4
  %tobool36.not = icmp eq ptr %call31, null
  br i1 %tobool36.not, label %fail1, label %if.end38

if.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 52
  %6 = ptrtoint ptr %j_revoke to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call31, ptr %j_revoke, align 8
  %j_revoke_lock = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 51
  tail call void @__raw_spin_lock_init(ptr noundef %j_revoke_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @jbd2_journal_init_revoke.__key, i16 noundef signext 3) #8
  br label %return

fail1:                                            ; preds = %if.end30
  %7 = ptrtoint ptr %j_revoke_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %j_revoke_table, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp16.i = icmp sgt i32 %10, 0
  br i1 %cmp16.i, label %for.body.lr.ph.i, label %fail1.jbd2_journal_destroy_revoke_table.exit_crit_edge

fail1.jbd2_journal_destroy_revoke_table.exit_crit_edge: ; preds = %fail1
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_destroy_revoke_table.exit

for.body.lr.ph.i:                                 ; preds = %fail1
  %hash_table.i = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %hash_table.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hash_table.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.cond.i.jbd2_journal_destroy_revoke_table.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.jbd2_journal_destroy_revoke_table.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_destroy_revoke_table.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.list_head, ptr %12, i32 %i.017.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %14, %arrayidx.i
  br i1 %cmp.i.not.i, label %for.cond.i, label %do.body4.i, !prof !55

do.body4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 255, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

jbd2_journal_destroy_revoke_table.exit:           ; preds = %for.cond.i.jbd2_journal_destroy_revoke_table.exit_crit_edge, %fail1.jbd2_journal_destroy_revoke_table.exit_crit_edge
  %hash_table10.i = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %8, i32 0, i32 2
  %15 = ptrtoint ptr %hash_table10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hash_table10.i, align 4
  tail call void @kfree(ptr noundef %16) #8
  %17 = load ptr, ptr @jbd2_revoke_table_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef %8) #8
  %18 = ptrtoint ptr %j_revoke_table to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %j_revoke_table, align 4
  br label %return

return:                                           ; preds = %jbd2_journal_destroy_revoke_table.exit, %if.end38, %do.end22.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ -12, %do.end22.return_crit_edge ], [ -12, %jbd2_journal_destroy_revoke_table.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @jbd2_journal_init_revoke_table(i32 noundef %hash_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @jbd2_revoke_table_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %while.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %hash_size)
  %cmp.not27 = icmp ult i32 %hash_size, 2
  br i1 %cmp.not27, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %tmp.029 = phi i32 [ %shr, %while.body.while.body_crit_edge ], [ %hash_size, %while.cond.preheader.while.body_crit_edge ]
  %shift.028 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %shr = ashr i32 %tmp.029, 1
  %inc = add i32 %shift.028, 1
  %cmp.not = icmp ult i32 %tmp.029, 4
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %shift.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %hash_size, ptr %call, align 8
  %hash_shift = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %hash_shift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shift.0.lcssa, ptr %hash_shift, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %hash_size, i32 8) #8
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !63

kmalloc_array.exit.thread:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %hash_table25 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %hash_table25 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %hash_table25, align 8
  br label %if.then5

if.end7.i:                                        ; preds = %while.end
  %6 = extractvalue { i32, i1 } %3, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3264) #12
  %hash_table = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %hash_table to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i, ptr %hash_table, align 8
  %tobool4.not = icmp eq ptr %call8.i, null
  br i1 %tobool4.not, label %if.end7.i.if.then5_crit_edge, label %for.cond.preheader

if.end7.i.if.then5_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

for.cond.preheader:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hash_size)
  %cmp730.not = icmp eq i32 %hash_size, 0
  br i1 %cmp730.not, label %for.cond.preheader.out_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then5:                                         ; preds = %if.end7.i.if.then5_crit_edge, %kmalloc_array.exit.thread
  %8 = load ptr, ptr @jbd2_revoke_table_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %8, ptr noundef nonnull %call) #8
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %tmp.131 = phi i32 [ %inc9, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %9 = ptrtoint ptr %hash_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hash_table, align 8
  %arrayidx = getelementptr %struct.list_head, ptr %10, i32 %tmp.131
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.list_head, ptr %10, i32 %tmp.131, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %prev.i, align 4
  %inc9 = add nuw nsw i32 %tmp.131, 1
  %exitcond.not = icmp eq i32 %inc9, %hash_size
  br i1 %exitcond.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %if.then5, %for.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %table.0 = phi ptr [ null, %if.then5 ], [ null, %entry.out_crit_edge ], [ %call, %for.cond.preheader.out_crit_edge ], [ %call, %for.body.out_crit_edge ]
  ret ptr %table.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_destroy_revoke(ptr nocapture noundef %journal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 52
  %0 = ptrtoint ptr %j_revoke to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %j_revoke, align 8
  %j_revoke_table = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 53
  %1 = ptrtoint ptr %j_revoke_table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %j_revoke_table, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp16.i = icmp sgt i32 %4, 0
  br i1 %cmp16.i, label %for.body.lr.ph.i, label %if.then.jbd2_journal_destroy_revoke_table.exit_crit_edge

if.then.jbd2_journal_destroy_revoke_table.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_destroy_revoke_table.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %hash_table.i = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %hash_table.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hash_table.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %for.cond.i.jbd2_journal_destroy_revoke_table.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.jbd2_journal_destroy_revoke_table.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_destroy_revoke_table.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.list_head, ptr %6, i32 %i.017.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %arrayidx.i
  br i1 %cmp.i.not.i, label %for.cond.i, label %do.body4.i, !prof !55

do.body4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 255, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

jbd2_journal_destroy_revoke_table.exit:           ; preds = %for.cond.i.jbd2_journal_destroy_revoke_table.exit_crit_edge, %if.then.jbd2_journal_destroy_revoke_table.exit_crit_edge
  %hash_table10.i = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %hash_table10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hash_table10.i, align 4
  tail call void @kfree(ptr noundef %10) #8
  %11 = load ptr, ptr @jbd2_revoke_table_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef nonnull %2) #8
  br label %if.end

if.end:                                           ; preds = %jbd2_journal_destroy_revoke_table.exit, %entry.if.end_crit_edge
  %arrayidx4 = getelementptr %struct.journal_s, ptr %journal, i32 0, i32 53, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp16.i15 = icmp sgt i32 %15, 0
  br i1 %cmp16.i15, label %for.body.lr.ph.i17, label %if.then6.jbd2_journal_destroy_revoke_table.exit27_crit_edge

if.then6.jbd2_journal_destroy_revoke_table.exit27_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_destroy_revoke_table.exit27

for.body.lr.ph.i17:                               ; preds = %if.then6
  %hash_table.i16 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %hash_table.i16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hash_table.i16, align 4
  br label %for.body.i24

for.cond.i20:                                     ; preds = %for.body.i24
  %inc.i18 = add nuw nsw i32 %i.017.i21, 1
  %exitcond.not.i19 = icmp eq i32 %inc.i18, %15
  br i1 %exitcond.not.i19, label %for.cond.i20.jbd2_journal_destroy_revoke_table.exit27_crit_edge, label %for.cond.i20.for.body.i24_crit_edge

for.cond.i20.for.body.i24_crit_edge:              ; preds = %for.cond.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i24

for.cond.i20.jbd2_journal_destroy_revoke_table.exit27_crit_edge: ; preds = %for.cond.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_destroy_revoke_table.exit27

for.body.i24:                                     ; preds = %for.cond.i20.for.body.i24_crit_edge, %for.body.lr.ph.i17
  %i.017.i21 = phi i32 [ 0, %for.body.lr.ph.i17 ], [ %inc.i18, %for.cond.i20.for.body.i24_crit_edge ]
  %arrayidx.i22 = getelementptr %struct.list_head, ptr %17, i32 %i.017.i21
  %18 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx.i22, align 4
  %cmp.i.not.i23 = icmp eq ptr %19, %arrayidx.i22
  br i1 %cmp.i.not.i23, label %for.cond.i20, label %do.body4.i25, !prof !55

do.body4.i25:                                     ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 255, 0\0A.popsection", ""() #8, !srcloc !62
  unreachable

jbd2_journal_destroy_revoke_table.exit27:         ; preds = %for.cond.i20.jbd2_journal_destroy_revoke_table.exit27_crit_edge, %if.then6.jbd2_journal_destroy_revoke_table.exit27_crit_edge
  %hash_table10.i26 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %hash_table10.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hash_table10.i26, align 4
  tail call void @kfree(ptr noundef %21) #8
  %22 = load ptr, ptr @jbd2_revoke_table_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %22, ptr noundef nonnull %13) #8
  br label %if.end9

if.end9:                                          ; preds = %jbd2_journal_destroy_revoke_table.exit27, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_revoke(ptr noundef %handle, i64 noundef %blocknr, ptr noundef %bh_in) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 334) #8
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call i32 @jbd2_journal_set_features(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %do.body10, label %if.end18

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 340, 0\0A.popsection", ""() #8, !srcloc !64
  unreachable

if.end18:                                         ; preds = %entry
  %j_fs_dev = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %j_fs_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %j_fs_dev, align 8
  %tobool19.not = icmp eq ptr %bh_in, null
  %j_blocksize = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 33
  %6 = ptrtoint ptr %j_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %j_blocksize, align 8
  %call21 = tail call ptr @__find_get_block(ptr noundef %5, i64 noundef %blocknr, i32 noundef %7) #8
  br i1 %tobool19.not, label %if.end18.if.end53_crit_edge, label %if.else

if.end18.if.end53_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.else:                                          ; preds = %if.end18
  %tobool30.not = icmp eq ptr %call21, null
  br i1 %tobool30.not, label %if.else.if.end53_crit_edge, label %if.then31

if.else.if.end53_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then31:                                        ; preds = %if.else
  %cmp.not = icmp eq ptr %call21, %bh_in
  br i1 %cmp.not, label %if.then31.if.end51_crit_edge, label %land.lhs.true

if.then31.if.end51_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true:                                    ; preds = %if.then31
  %8 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %call21, align 4
  %10 = and i32 %9, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool33.not = icmp eq i32 %10, 0
  br i1 %tobool33.not, label %land.lhs.true.if.end51_crit_edge, label %do.body35

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.body35:                                        ; preds = %land.lhs.true
  %11 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %call21, align 4
  %13 = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool37.not = icmp eq i32 %13, 0
  br i1 %tobool37.not, label %do.body42, label %do.body35.if.end51_crit_edge, !prof !63

do.body35.if.end51_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.body42:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 368, 0\0A.popsection", ""() #8, !srcloc !65
  unreachable

if.end51:                                         ; preds = %do.body35.if.end51_crit_edge, %land.lhs.true.if.end51_crit_edge, %if.then31.if.end51_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !66
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call21, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !67
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.else.if.end53_crit_edge, %if.end18.if.end53_crit_edge
  %bh.0 = phi ptr [ %bh_in, %if.end51 ], [ %bh_in, %if.else.if.end53_crit_edge ], [ %call21, %if.end18.if.end53_crit_edge ]
  %h_revoke_credits = getelementptr inbounds %struct.jbd2_journal_handle, ptr %handle, i32 0, i32 3
  %15 = ptrtoint ptr %h_revoke_credits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %h_revoke_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp54 = icmp slt i32 %16, 1
  br i1 %cmp54, label %land.rhs, label %if.end107

land.rhs:                                         ; preds = %if.end53
  %.b188 = load i1, ptr @jbd2_journal_revoke.__already_done, align 1
  br i1 %.b188, label %land.rhs.if.then103_crit_edge, label %if.then69, !prof !55

land.rhs.if.then103_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then103

if.then69:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @jbd2_journal_revoke.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 374, i32 noundef 9, ptr noundef null) #8
  br label %if.then103

if.then103:                                       ; preds = %if.then69, %land.rhs.if.then103_crit_edge
  %tobool19.not.not = xor i1 %tobool19.not, true
  %tobool.not.i196 = icmp eq ptr %bh.0, null
  %or.cond = select i1 %tobool19.not.not, i1 true, i1 %tobool.not.i196
  br i1 %or.cond, label %if.then103.cleanup_crit_edge, label %if.then.i197

if.then103.cleanup_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i197:                                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %bh.0) #8
  br label %cleanup

if.end107:                                        ; preds = %if.end53
  %tobool108.not = icmp eq ptr %bh.0, null
  br i1 %tobool108.not, label %if.end107.if.end145_crit_edge, label %if.then109

if.end107.if.end145_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then109:                                       ; preds = %if.end107
  %17 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %bh.0, align 4
  %19 = and i32 %18, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool111.not = icmp eq i32 %19, 0
  br i1 %tobool111.not, label %if.end133, label %do.end118

do.end118:                                        ; preds = %if.then109
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #11
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br i1 %tobool19.not, label %brelse.exit200, label %do.end118.cleanup_crit_edge

do.end118.cleanup_crit_edge:                      ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

brelse.exit200:                                   ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %bh.0) #8
  br label %cleanup

if.end133:                                        ; preds = %if.then109
  %20 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %bh.0, align 4
  %22 = and i32 %21, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end133.set_buffer_revoked.exit_crit_edge

if.end133.set_buffer_revoked.exit_crit_edge:      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_revoked.exit

if.then.i:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 19, ptr noundef nonnull %bh.0) #8
  br label %set_buffer_revoked.exit

set_buffer_revoked.exit:                          ; preds = %if.then.i, %if.end133.set_buffer_revoked.exit_crit_edge
  %23 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %bh.0, align 4
  %25 = and i32 %24, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i194 = icmp eq i32 %25, 0
  br i1 %tobool.not.i194, label %if.then.i195, label %set_buffer_revoked.exit.set_buffer_revokevalid.exit_crit_edge

set_buffer_revoked.exit.set_buffer_revokevalid.exit_crit_edge: ; preds = %set_buffer_revoked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_revokevalid.exit

if.then.i195:                                     ; preds = %set_buffer_revoked.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 20, ptr noundef nonnull %bh.0) #8
  br label %set_buffer_revokevalid.exit

set_buffer_revokevalid.exit:                      ; preds = %if.then.i195, %set_buffer_revoked.exit.set_buffer_revokevalid.exit_crit_edge
  br i1 %tobool19.not, label %do.end143, label %do.end138

do.end138:                                        ; preds = %set_buffer_revokevalid.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call139 = tail call i32 @jbd2_journal_forget(ptr noundef %handle, ptr noundef nonnull %bh_in) #8
  br label %if.end145

do.end143:                                        ; preds = %set_buffer_revokevalid.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %bh.0) #8
  br label %if.end145

if.end145:                                        ; preds = %do.end143, %do.end138, %if.end107.if.end145_crit_edge
  %26 = ptrtoint ptr %h_revoke_credits to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %h_revoke_credits, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %h_revoke_credits, align 4
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, i32 noundef 401, ptr noundef nonnull @.str.14, i64 noundef %blocknr, ptr noundef %bh_in) #8
  %28 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle, align 4
  %t_tid = getelementptr inbounds %struct.transaction_s, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %t_tid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %t_tid, align 4
  %32 = load ptr, ptr @jbd2_revoke_record_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %32, i32 noundef 35904) #8
  %tobool.not.i201 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i201, label %if.end145.cleanup_crit_edge, label %if.end.i

if.end145.cleanup_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end145
  %sequence.i = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %sequence.i, align 8
  %blocknr1.i = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %blocknr1.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %blocknr, ptr %blocknr1.i, align 8
  %j_revoke.i = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 52
  %35 = ptrtoint ptr %j_revoke.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %j_revoke.i, align 8
  %hash_table.i = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %hash_table.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hash_table.i, align 4
  %hash_shift.i.i = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hash_shift.i.i, align 4
  %conv.i.i.i = trunc i64 %blocknr to i32
  %shr.i.i.i = lshr i64 %blocknr, 32
  %conv1.i.i.i = trunc i64 %shr.i.i.i to i32
  %mul.i.i.i.i = mul i32 %conv1.i.i.i, 1640531527
  %xor.i.i.i = xor i32 %mul.i.i.i.i, %conv.i.i.i
  %mul.i.i.i.i.i = mul i32 %xor.i.i.i, 1640531527
  %sub.i.i.i.i = sub i32 32, %40
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, %sub.i.i.i.i
  %arrayidx.i = getelementptr %struct.list_head, ptr %38, i32 %shr.i.i.i.i
  %j_revoke_lock.i = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 51
  tail call void @_raw_spin_lock(ptr noundef %j_revoke_lock.i) #8
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i.i202 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %arrayidx.i, ptr noundef %42) #8
  br i1 %call.i.i.i202, label %if.end.i.i.i, label %if.end.i.list_add.exit.i_crit_edge

if.end.i.list_add.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %prev1.i.i.i, align 4
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %call.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx.i, ptr %prev3.i.i.i, align 4
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call.i, ptr %arrayidx.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %j_revoke_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit.i, %if.end145.cleanup_crit_edge, %brelse.exit200, %do.end118.cleanup_crit_edge, %if.then.i197, %if.then103.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then103.cleanup_crit_edge ], [ -5, %brelse.exit200 ], [ -5, %do.end118.cleanup_crit_edge ], [ -5, %if.then.i197 ], [ 0, %list_add.exit.i ], [ -12, %if.end145.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_set_features(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__find_get_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_forget(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jbd2_debug(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_cancel_revoke(ptr nocapture noundef readonly %handle, ptr noundef %jh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %jh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jh, align 4
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.jbd2_journal_cancel_revoke, i32 noundef 431, ptr noundef nonnull @.str.15, ptr noundef %jh) #8
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 20, ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %5) #8
  br label %if.then4

if.end:                                           ; preds = %entry
  %call.i56 = tail call i32 @_test_and_clear_bit(i32 noundef 19, ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %phi.cmp = icmp eq i32 %call.i56, 0
  br i1 %phi.cmp, label %if.end.if.end11_crit_edge, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %if.end.thread
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %b_blocknr, align 8
  %j_revoke.i = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 52
  %8 = ptrtoint ptr %j_revoke.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %j_revoke.i, align 8
  %hash_table.i = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %hash_table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash_table.i, align 4
  %hash_shift.i.i = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hash_shift.i.i, align 4
  %conv.i.i.i = trunc i64 %7 to i32
  %shr.i.i.i = lshr i64 %7, 32
  %conv1.i.i.i = trunc i64 %shr.i.i.i to i32
  %mul.i.i.i.i = mul i32 %conv1.i.i.i, 1640531527
  %xor.i.i.i = xor i32 %mul.i.i.i.i, %conv.i.i.i
  %mul.i.i.i.i.i = mul i32 %xor.i.i.i, 1640531527
  %sub.i.i.i.i = sub i32 32, %13
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, %sub.i.i.i.i
  %arrayidx.i = getelementptr %struct.list_head, ptr %11, i32 %shr.i.i.i.i
  %j_revoke_lock.i = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 51
  tail call void @_raw_spin_lock(ptr noundef %j_revoke_lock.i) #8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then4
  %record.0.in.i = phi ptr [ %arrayidx.i, %if.then4 ], [ %record.0.i, %while.body.i.while.cond.i_crit_edge ]
  %14 = ptrtoint ptr %record.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %record.0.i = load ptr, ptr %record.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %record.0.i, %arrayidx.i
  br i1 %cmp.not.i, label %find_revoke_record.exit.thread, label %while.body.i

find_revoke_record.exit.thread:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %j_revoke_lock.i) #8
  br label %if.end11

while.body.i:                                     ; preds = %while.cond.i
  %blocknr1.i = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %record.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %blocknr1.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %blocknr1.i, align 8
  %cmp2.i = icmp eq i64 %16, %7
  br i1 %cmp2.i, label %find_revoke_record.exit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

find_revoke_record.exit:                          ; preds = %while.body.i
  tail call void @_raw_spin_unlock(ptr noundef %j_revoke_lock.i) #8
  %tobool6.not = icmp eq ptr %record.0.i, null
  br i1 %tobool6.not, label %find_revoke_record.exit.if.end11_crit_edge, label %if.then7

find_revoke_record.exit.if.end11_crit_edge:       ; preds = %find_revoke_record.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %find_revoke_record.exit
  %17 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %b_blocknr, align 8
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.jbd2_journal_cancel_revoke, i32 noundef 448, ptr noundef nonnull @.str.16, i64 noundef %18) #8
  tail call void @_raw_spin_lock(ptr noundef %j_revoke_lock.i) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %record.0.i) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then7.list_del.exit_crit_edge

if.then7.list_del.exit_crit_edge:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %record.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %record.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %record.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then7.list_del.exit_crit_edge
  %25 = ptrtoint ptr %record.0.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %record.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %record.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %j_revoke_lock.i) #8
  %27 = load ptr, ptr @jbd2_revoke_record_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %27, ptr noundef nonnull %record.0.i) #8
  br label %if.end11

if.end11:                                         ; preds = %list_del.exit, %find_revoke_record.exit.if.end11_crit_edge, %find_revoke_record.exit.thread, %if.end.if.end11_crit_edge
  %need_cancel.081 = phi i1 [ false, %list_del.exit ], [ false, %find_revoke_record.exit.if.end11_crit_edge ], [ true, %if.end.if.end11_crit_edge ], [ false, %find_revoke_record.exit.thread ]
  %did_revoke.0 = phi i32 [ 1, %list_del.exit ], [ 0, %find_revoke_record.exit.if.end11_crit_edge ], [ 0, %if.end.if.end11_crit_edge ], [ 0, %find_revoke_record.exit.thread ]
  %b_blocknr12 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 3
  %28 = ptrtoint ptr %b_blocknr12 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %b_blocknr12, align 8
  %j_revoke.i57 = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 52
  %30 = ptrtoint ptr %j_revoke.i57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %j_revoke.i57, align 8
  %hash_table.i58 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %hash_table.i58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hash_table.i58, align 4
  %hash_shift.i.i59 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %hash_shift.i.i59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hash_shift.i.i59, align 4
  %conv.i.i.i60 = trunc i64 %29 to i32
  %shr.i.i.i61 = lshr i64 %29, 32
  %conv1.i.i.i62 = trunc i64 %shr.i.i.i61 to i32
  %mul.i.i.i.i63 = mul i32 %conv1.i.i.i62, 1640531527
  %xor.i.i.i64 = xor i32 %mul.i.i.i.i63, %conv.i.i.i60
  %mul.i.i.i.i.i65 = mul i32 %xor.i.i.i64, 1640531527
  %sub.i.i.i.i66 = sub i32 32, %35
  %shr.i.i.i.i67 = lshr i32 %mul.i.i.i.i.i65, %sub.i.i.i.i66
  %arrayidx.i68 = getelementptr %struct.list_head, ptr %33, i32 %shr.i.i.i.i67
  %j_revoke_lock.i69 = getelementptr inbounds %struct.journal_s, ptr %3, i32 0, i32 51
  tail call void @_raw_spin_lock(ptr noundef %j_revoke_lock.i69) #8
  br label %while.cond.i73

while.cond.i73:                                   ; preds = %while.body.i76.while.cond.i73_crit_edge, %if.end11
  %record.0.in.i70 = phi ptr [ %arrayidx.i68, %if.end11 ], [ %record.0.i71, %while.body.i76.while.cond.i73_crit_edge ]
  %36 = ptrtoint ptr %record.0.in.i70 to i32
  call void @__asan_load4_noabort(i32 %36)
  %record.0.i71 = load ptr, ptr %record.0.in.i70, align 4
  %cmp.not.i72 = icmp eq ptr %record.0.i71, %arrayidx.i68
  br i1 %cmp.not.i72, label %find_revoke_record.exit78.thread, label %while.body.i76

find_revoke_record.exit78.thread:                 ; preds = %while.cond.i73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %j_revoke_lock.i69) #8
  br label %do.end24

while.body.i76:                                   ; preds = %while.cond.i73
  %blocknr1.i74 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %record.0.i71, i32 0, i32 2
  %37 = ptrtoint ptr %blocknr1.i74 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %blocknr1.i74, align 8
  %cmp2.i75 = icmp eq i64 %38, %29
  br i1 %cmp2.i75, label %find_revoke_record.exit78, label %while.body.i76.while.cond.i73_crit_edge

while.body.i76.while.cond.i73_crit_edge:          ; preds = %while.body.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i73

find_revoke_record.exit78:                        ; preds = %while.body.i76
  tail call void @_raw_spin_unlock(ptr noundef %j_revoke_lock.i69) #8
  %cmp.not = icmp eq ptr %record.0.i71, null
  br i1 %cmp.not, label %find_revoke_record.exit78.do.end24_crit_edge, label %do.body18, !prof !55

find_revoke_record.exit78.do.end24_crit_edge:     ; preds = %find_revoke_record.exit78
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

do.body18:                                        ; preds = %find_revoke_record.exit78
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/revoke.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 460, 0\0A.popsection", ""() #8, !srcloc !68
  unreachable

do.end24:                                         ; preds = %find_revoke_record.exit78.do.end24_crit_edge, %find_revoke_record.exit78.thread
  br i1 %need_cancel.081, label %do.end24.if.end35_crit_edge, label %if.then26

do.end24.if.end35_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then26:                                        ; preds = %do.end24
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 6
  %39 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_bdev, align 8
  %41 = ptrtoint ptr %b_blocknr12 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %b_blocknr12, align 8
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 4
  %43 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %b_size, align 8
  %call28 = tail call ptr @__find_get_block(ptr noundef %40, i64 noundef %42, i32 noundef %44) #8
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.then26.if.end35_crit_edge, label %if.then30

if.then26.if.end35_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then30:                                        ; preds = %if.then26
  %cmp31.not = icmp eq ptr %call28, %5
  br i1 %cmp31.not, label %if.then30.if.end33_crit_edge, label %if.then32

if.then30.if.end33_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 19, ptr noundef nonnull %call28) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then30.if.end33_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call28) #8
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %if.then26.if.end35_crit_edge, %do.end24.if.end35_crit_edge
  ret i32 %did_revoke.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_clear_buffer_revoked_flags(ptr nocapture noundef readonly %journal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 52
  %0 = ptrtoint ptr %j_revoke to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_revoke, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21 = icmp sgt i32 %3, 0
  br i1 %cmp21, label %for.body.lr.ph, label %entry.for.end7_crit_edge

entry.for.end7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end7

for.body.lr.ph:                                   ; preds = %entry
  %hash_table = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %1, i32 0, i32 2
  %j_fs_dev = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 36
  %j_blocksize = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 33
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %hash_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hash_table, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %5, i32 %i.022
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %list_entry.018 = load ptr, ptr %arrayidx, align 4
  %cmp.i.not19 = icmp eq ptr %list_entry.018, %arrayidx
  br i1 %cmp.i.not19, label %for.body.for.end_crit_edge, label %for.body.for.body2_crit_edge

for.body.for.body2_crit_edge:                     ; preds = %for.body
  br label %for.body2

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body2:                                        ; preds = %if.end.for.body2_crit_edge, %for.body.for.body2_crit_edge
  %list_entry.020 = phi ptr [ %list_entry.0, %if.end.for.body2_crit_edge ], [ %list_entry.018, %for.body.for.body2_crit_edge ]
  %7 = ptrtoint ptr %j_fs_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %j_fs_dev, align 8
  %blocknr = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %list_entry.020, i32 0, i32 2
  %9 = ptrtoint ptr %blocknr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %blocknr, align 8
  %11 = ptrtoint ptr %j_blocksize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %j_blocksize, align 8
  %call3 = tail call ptr @__find_get_block(ptr noundef %8, i64 noundef %10, i32 noundef %12) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %for.body2.if.end_crit_edge, label %if.then

for.body2.if.end_crit_edge:                       ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 19, ptr noundef nonnull %call3) #8
  tail call void @__brelse(ptr noundef nonnull %call3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body2.if.end_crit_edge
  %13 = ptrtoint ptr %list_entry.020 to i32
  call void @__asan_load4_noabort(i32 %13)
  %list_entry.0 = load ptr, ptr %list_entry.020, align 4
  %cmp.i.not = icmp eq ptr %list_entry.0, %arrayidx
  br i1 %cmp.i.not, label %if.end.for.end_crit_edge, label %if.end.for.body2_crit_edge

if.end.for.body2_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body2

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw nsw i32 %i.022, 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end7_crit_edge

for.end.for.end7_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end7

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end7:                                         ; preds = %for.end.for.end7_crit_edge, %entry.for.end7_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_switch_revoke_table(ptr nocapture noundef %journal) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 52
  %0 = ptrtoint ptr %j_revoke to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_revoke, align 8
  %j_revoke_table = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 53
  %2 = ptrtoint ptr %j_revoke_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_revoke_table, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2 = getelementptr %struct.journal_s, ptr %journal, i32 0, i32 53, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi ptr [ %5, %if.then ], [ %3, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %j_revoke to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %storemerge, ptr %j_revoke, align 8
  %7 = ptrtoint ptr %storemerge to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %storemerge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp820 = icmp sgt i32 %8, 0
  br i1 %cmp820, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %9 = phi ptr [ %15, %for.body.for.body_crit_edge ], [ %storemerge, %if.end.for.body_crit_edge ]
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %hash_table = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %hash_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash_table, align 4
  %arrayidx10 = getelementptr %struct.list_head, ptr %11, i32 %i.021
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %arrayidx10, ptr %arrayidx10, align 4
  %prev.i = getelementptr %struct.list_head, ptr %11, i32 %i.021, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx10, ptr %prev.i, align 4
  %inc = add nuw nsw i32 %i.021, 1
  %14 = ptrtoint ptr %j_revoke to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %j_revoke, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %cmp8 = icmp slt i32 %inc, %17
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_write_revoke_records(ptr noundef %transaction, ptr noundef %log_bufs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transaction, align 8
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %j_revoke to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %j_revoke, align 8
  %j_revoke_table = getelementptr inbounds %struct.journal_s, ptr %1, i32 0, i32 53
  %4 = ptrtoint ptr %j_revoke_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %j_revoke_table, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2 = getelementptr %struct.journal_s, ptr %1, i32 0, i32 53, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %7, %cond.true ], [ %5, %entry.cond.end_crit_edge ]
  %8 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp541 = icmp sgt i32 %9, 0
  br i1 %cmp541, label %for.body.lr.ph, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph:                                   ; preds = %cond.end
  %hash_table = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %cond, i32 0, i32 2
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %log_bufs, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %count.045 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1.lcssa, %for.inc.for.body_crit_edge ]
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc7, %for.inc.for.body_crit_edge ]
  %offset.043 = phi i32 [ 0, %for.body.lr.ph ], [ %offset.1.lcssa, %for.inc.for.body_crit_edge ]
  %descriptor.042 = phi ptr [ null, %for.body.lr.ph ], [ %descriptor.1.lcssa, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %hash_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash_table, align 4
  %arrayidx6 = getelementptr %struct.list_head, ptr %11, i32 %i.044
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx6, align 4
  %cmp.i.not33 = icmp eq ptr %13, %arrayidx6
  br i1 %cmp.i.not33, label %for.body.for.inc_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %for.body.while.body_crit_edge
  %14 = phi ptr [ %83, %list_del.exit.while.body_crit_edge ], [ %13, %for.body.while.body_crit_edge ]
  %count.138 = phi i32 [ %inc, %list_del.exit.while.body_crit_edge ], [ %count.045, %for.body.while.body_crit_edge ]
  %offset.136 = phi i32 [ %offset.2, %list_del.exit.while.body_crit_edge ], [ %offset.043, %for.body.while.body_crit_edge ]
  %descriptor.134 = phi ptr [ %descriptor.3, %list_del.exit.while.body_crit_edge ], [ %descriptor.042, %for.body.while.body_crit_edge ]
  %15 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transaction, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %and.i.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.write_one_revoke_record.exit_crit_edge

while.body.write_one_revoke_record.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_one_revoke_record.exit

if.end.i:                                         ; preds = %while.body
  %j_format_version.i.i.i.i = getelementptr inbounds %struct.journal_s, ptr %16, i32 0, i32 6
  %19 = ptrtoint ptr %j_format_version.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %j_format_version.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i.i.i.i = icmp sgt i32 %20, 1
  br i1 %cmp.i.i.i.i, label %jbd2_has_feature_csum2.exit.i.i.i, label %jbd2_journal_has_csum_v2or3.exit.thread.i

jbd2_journal_has_csum_v2or3.exit.thread.i:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %j_chksum_driver37.i65.i = getelementptr inbounds %struct.journal_s, ptr %16, i32 0, i32 70
  %21 = ptrtoint ptr %j_chksum_driver37.i65.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %j_chksum_driver37.i65.i, align 8
  %cmp38.i66.not.i = icmp eq ptr %22, null
  %spec.select69.i = select i1 %cmp38.i66.not.i, i32 0, i32 -4
  br label %jbd2_has_feature_64bit.exit.thread.i

jbd2_has_feature_csum2.exit.i.i.i:                ; preds = %if.end.i
  %j_superblock.i.i.i.i = getelementptr inbounds %struct.journal_s, ptr %16, i32 0, i32 5
  %23 = ptrtoint ptr %j_superblock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %j_superblock.i.i.i.i, align 4
  %s_feature_incompat.i.i.i.i = getelementptr inbounds %struct.journal_superblock_s, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %s_feature_incompat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_feature_incompat.i.i.i.i, align 4
  %27 = and i32 %26, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %.not.i.i = icmp eq i32 %27, 0
  br i1 %.not.i.i, label %jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, label %land.rhs.i.i

jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %jbd2_has_feature_csum2.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

land.rhs.i.i:                                     ; preds = %jbd2_has_feature_csum2.exit.i.i.i
  %j_chksum_driver.i.i = getelementptr inbounds %struct.journal_s, ptr %16, i32 0, i32 70
  %28 = ptrtoint ptr %j_chksum_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %j_chksum_driver.i.i, align 8
  %cmp.i.i = icmp eq ptr %29, null
  br i1 %cmp.i.i, label %land.rhs2.i.i, label %land.rhs.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge

land.rhs.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

land.rhs2.i.i:                                    ; preds = %land.rhs.i.i
  %.b43.i.i = load i1, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  br i1 %.b43.i.i, label %land.rhs2.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, label %if.then.i.i, !prof !55

land.rhs2.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge: ; preds = %land.rhs2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_journal_has_csum_v2or3.exit.i

if.then.i.i:                                      ; preds = %land.rhs2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @jbd2_journal_has_csum_v2or3.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1735, i32 noundef 9, ptr noundef null) #8
  br label %jbd2_journal_has_csum_v2or3.exit.i

jbd2_journal_has_csum_v2or3.exit.i:               ; preds = %if.then.i.i, %land.rhs2.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, %land.rhs.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge, %jbd2_has_feature_csum2.exit.i.i.i.jbd2_journal_has_csum_v2or3.exit.i_crit_edge
  %30 = ptrtoint ptr %j_format_version.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr.i = load i32, ptr %j_format_version.i.i.i.i, align 8
  %j_chksum_driver37.i.i = getelementptr inbounds %struct.journal_s, ptr %16, i32 0, i32 70
  %31 = ptrtoint ptr %j_chksum_driver37.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %j_chksum_driver37.i.i, align 8
  %cmp38.i.not.i = icmp eq ptr %32, null
  %spec.select.i = select i1 %cmp38.i.not.i, i32 0, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %cmp.i54.i = icmp sgt i32 %.pr.i, 1
  br i1 %cmp.i54.i, label %jbd2_has_feature_64bit.exit.i, label %jbd2_journal_has_csum_v2or3.exit.i.jbd2_has_feature_64bit.exit.thread.i_crit_edge

jbd2_journal_has_csum_v2or3.exit.i.jbd2_has_feature_64bit.exit.thread.i_crit_edge: ; preds = %jbd2_journal_has_csum_v2or3.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jbd2_has_feature_64bit.exit.thread.i

jbd2_has_feature_64bit.exit.i:                    ; preds = %jbd2_journal_has_csum_v2or3.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %j_superblock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %j_superblock.i.i.i.i, align 4
  %s_feature_incompat.i.i = getelementptr inbounds %struct.journal_superblock_s, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_feature_incompat.i.i, align 4
  %and.i55.i = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %cmp1.i.not.i = icmp eq i32 %and.i55.i, 0
  %spec.select76.i = select i1 %cmp1.i.not.i, i32 4, i32 8
  br label %jbd2_has_feature_64bit.exit.thread.i

jbd2_has_feature_64bit.exit.thread.i:             ; preds = %jbd2_has_feature_64bit.exit.i, %jbd2_journal_has_csum_v2or3.exit.i.jbd2_has_feature_64bit.exit.thread.i_crit_edge, %jbd2_journal_has_csum_v2or3.exit.thread.i
  %spec.select7173.i = phi i32 [ %spec.select69.i, %jbd2_journal_has_csum_v2or3.exit.thread.i ], [ %spec.select.i, %jbd2_journal_has_csum_v2or3.exit.i.jbd2_has_feature_64bit.exit.thread.i_crit_edge ], [ %spec.select.i, %jbd2_has_feature_64bit.exit.i ]
  %37 = phi i32 [ 4, %jbd2_journal_has_csum_v2or3.exit.thread.i ], [ 4, %jbd2_journal_has_csum_v2or3.exit.i.jbd2_has_feature_64bit.exit.thread.i_crit_edge ], [ %spec.select76.i, %jbd2_has_feature_64bit.exit.i ]
  %tobool8.not.i = icmp eq ptr %descriptor.134, null
  br i1 %tobool8.not.i, label %jbd2_has_feature_64bit.exit.thread.i.if.then14.i_crit_edge, label %if.then9.i

jbd2_has_feature_64bit.exit.thread.i.if.then14.i_crit_edge: ; preds = %jbd2_has_feature_64bit.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

if.then9.i:                                       ; preds = %jbd2_has_feature_64bit.exit.thread.i
  %add.i = add i32 %37, %offset.136
  %j_blocksize.i = getelementptr inbounds %struct.journal_s, ptr %16, i32 0, i32 33
  %38 = ptrtoint ptr %j_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %j_blocksize.i, align 8
  %sub.i = add i32 %39, %spec.select7173.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i)
  %cmp.i22 = icmp sgt i32 %add.i, %sub.i
  br i1 %cmp.i22, label %if.then10.i, label %if.then9.i.if.end19.i_crit_edge

if.then9.i.if.end19.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then10.i:                                      ; preds = %if.then9.i
  %40 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %16, align 8
  %and.i.i.i = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then10.i.if.then14.i_crit_edge

if.then10.i.if.then14.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i

if.end.i.i:                                       ; preds = %if.then10.i
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %descriptor.134, i32 0, i32 5
  %42 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_data.i.i, align 4
  %r_count.i.i = getelementptr inbounds %struct.jbd2_journal_revoke_header_s, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %r_count.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %offset.136, ptr %r_count.i.i, align 4
  tail call void @jbd2_descriptor_block_csum_set(ptr noundef %16, ptr noundef nonnull %descriptor.134) #8
  %45 = ptrtoint ptr %descriptor.134 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %descriptor.134, align 4
  %47 = and i32 %46, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.set_buffer_jwrite.exit.i.i_crit_edge

if.end.i.i.set_buffer_jwrite.exit.i.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_jwrite.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 17, ptr noundef nonnull %descriptor.134) #8
  br label %set_buffer_jwrite.exit.i.i

set_buffer_jwrite.exit.i.i:                       ; preds = %if.then.i.i.i, %if.end.i.i.set_buffer_jwrite.exit.i.i_crit_edge
  %48 = ptrtoint ptr %descriptor.134 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %descriptor.134, align 4
  %50 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i6.i.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i6.i.i, label %if.then.i7.i.i, label %set_buffer_jwrite.exit.i.i.set_buffer_dirty.exit.i.i_crit_edge

set_buffer_jwrite.exit.i.i.set_buffer_dirty.exit.i.i_crit_edge: ; preds = %set_buffer_jwrite.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_dirty.exit.i.i

if.then.i7.i.i:                                   ; preds = %set_buffer_jwrite.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull %descriptor.134) #8
  br label %set_buffer_dirty.exit.i.i

set_buffer_dirty.exit.i.i:                        ; preds = %if.then.i7.i.i, %set_buffer_jwrite.exit.i.i.set_buffer_dirty.exit.i.i_crit_edge
  tail call void @write_dirty_buffer(ptr noundef nonnull %descriptor.134, i32 noundef 2048) #8
  br label %if.then14.i

if.then14.i:                                      ; preds = %set_buffer_dirty.exit.i.i, %if.then10.i.if.then14.i_crit_edge, %jbd2_has_feature_64bit.exit.thread.i.if.then14.i_crit_edge
  %call15.i = tail call ptr @jbd2_journal_get_descriptor_buffer(ptr noundef %transaction, i32 noundef 5) #8
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.then14.i.write_one_revoke_record.exit_crit_edge, label %do.end.i

if.then14.i.write_one_revoke_record.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_one_revoke_record.exit

do.end.i:                                         ; preds = %if.then14.i
  %b_assoc_buffers.i.i = getelementptr inbounds %struct.buffer_head, ptr %call15.i, i32 0, i32 9
  %51 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %b_assoc_buffers.i.i, ptr noundef %52, ptr noundef %log_bufs) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.end.i.if.end19.i_crit_edge

do.end.i.if.end19.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.end.i.i.i.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %b_assoc_buffers.i.i, ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %b_assoc_buffers.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %log_bufs, ptr %b_assoc_buffers.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %call15.i, i32 0, i32 9, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %b_assoc_buffers.i.i, ptr %52, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end.i.i.i.i, %do.end.i.if.end19.i_crit_edge, %if.then9.i.if.end19.i_crit_edge
  %descriptor.2 = phi ptr [ %descriptor.134, %if.then9.i.if.end19.i_crit_edge ], [ %call15.i, %if.end.i.i.i.i ], [ %call15.i, %do.end.i.if.end19.i_crit_edge ]
  %offset.0.i = phi i32 [ %offset.136, %if.then9.i.if.end19.i_crit_edge ], [ 16, %if.end.i.i.i.i ], [ 16, %do.end.i.if.end19.i_crit_edge ]
  %57 = ptrtoint ptr %j_format_version.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %j_format_version.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp.i58.i = icmp sgt i32 %58, 1
  br i1 %cmp.i58.i, label %jbd2_has_feature_64bit.exit64.i, label %if.end19.i.if.else22.i_crit_edge

if.end19.i.if.else22.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else22.i

jbd2_has_feature_64bit.exit64.i:                  ; preds = %if.end19.i
  %j_superblock.i59.i = getelementptr inbounds %struct.journal_s, ptr %16, i32 0, i32 5
  %59 = ptrtoint ptr %j_superblock.i59.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %j_superblock.i59.i, align 4
  %s_feature_incompat.i60.i = getelementptr inbounds %struct.journal_superblock_s, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %s_feature_incompat.i60.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_feature_incompat.i60.i, align 4
  %and.i61.i = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i)
  %cmp1.i62.not.i = icmp eq i32 %and.i61.i, 0
  br i1 %cmp1.i62.not.i, label %jbd2_has_feature_64bit.exit64.i.if.else22.i_crit_edge, label %if.then21.i

jbd2_has_feature_64bit.exit64.i.if.else22.i_crit_edge: ; preds = %jbd2_has_feature_64bit.exit64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else22.i

if.then21.i:                                      ; preds = %jbd2_has_feature_64bit.exit64.i
  call void @__sanitizer_cov_trace_pc() #10
  %blocknr.i = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %14, i32 0, i32 2
  %63 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %blocknr.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %descriptor.2, i32 0, i32 5
  %65 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %66, i32 %offset.0.i
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %64, ptr %arrayidx.i, align 8
  br label %if.end26.i

if.else22.i:                                      ; preds = %jbd2_has_feature_64bit.exit64.i.if.else22.i_crit_edge, %if.end19.i.if.else22.i_crit_edge
  %blocknr23.i = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %14, i32 0, i32 2
  %68 = ptrtoint ptr %blocknr23.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %blocknr23.i, align 8
  %conv.i23 = trunc i64 %69 to i32
  %b_data24.i = getelementptr inbounds %struct.buffer_head, ptr %descriptor.2, i32 0, i32 5
  %70 = ptrtoint ptr %b_data24.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %b_data24.i, align 4
  %arrayidx25.i = getelementptr i8, ptr %71, i32 %offset.0.i
  %72 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv.i23, ptr %arrayidx25.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else22.i, %if.then21.i
  %add27.i = add i32 %offset.0.i, %37
  br label %write_one_revoke_record.exit

write_one_revoke_record.exit:                     ; preds = %if.end26.i, %if.then14.i.write_one_revoke_record.exit_crit_edge, %while.body.write_one_revoke_record.exit_crit_edge
  %descriptor.3 = phi ptr [ %descriptor.134, %if.then14.i.write_one_revoke_record.exit_crit_edge ], [ %descriptor.2, %if.end26.i ], [ %descriptor.134, %while.body.write_one_revoke_record.exit_crit_edge ]
  %offset.2 = phi i32 [ %offset.136, %if.then14.i.write_one_revoke_record.exit_crit_edge ], [ %add27.i, %if.end26.i ], [ %offset.136, %while.body.write_one_revoke_record.exit_crit_edge ]
  %inc = add i32 %count.138, 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #8
  br i1 %call.i.i, label %if.end.i.i24, label %write_one_revoke_record.exit.list_del.exit_crit_edge

write_one_revoke_record.exit.list_del.exit_crit_edge: ; preds = %write_one_revoke_record.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i24:                                     ; preds = %write_one_revoke_record.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i, align 4
  %75 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %14, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i24, %write_one_revoke_record.exit.list_del.exit_crit_edge
  %79 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %81 = load ptr, ptr @jbd2_revoke_record_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %81, ptr noundef %14) #8
  %82 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %arrayidx6, align 4
  %cmp.i.not = icmp eq ptr %83, %arrayidx6
  br i1 %cmp.i.not, label %list_del.exit.for.inc_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.for.inc_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %descriptor.1.lcssa = phi ptr [ %descriptor.042, %for.body.for.inc_crit_edge ], [ %descriptor.3, %list_del.exit.for.inc_crit_edge ]
  %offset.1.lcssa = phi i32 [ %offset.043, %for.body.for.inc_crit_edge ], [ %offset.2, %list_del.exit.for.inc_crit_edge ]
  %count.1.lcssa = phi i32 [ %count.045, %for.body.for.inc_crit_edge ], [ %inc, %list_del.exit.for.inc_crit_edge ]
  %inc7 = add nuw nsw i32 %i.044, 1
  %84 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cond, align 4
  %cmp5 = icmp slt i32 %inc7, %85
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool8.not = icmp eq ptr %descriptor.1.lcssa, null
  br i1 %tobool8.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.end
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %1, align 8
  %and.i.i25 = and i32 %87, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25)
  %tobool.not.i26 = icmp eq i32 %and.i.i25, 0
  br i1 %tobool.not.i26, label %if.end.i29, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i29:                                       ; preds = %if.then
  %b_data.i27 = getelementptr inbounds %struct.buffer_head, ptr %descriptor.1.lcssa, i32 0, i32 5
  %88 = ptrtoint ptr %b_data.i27 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %b_data.i27, align 4
  %r_count.i = getelementptr inbounds %struct.jbd2_journal_revoke_header_s, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %r_count.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %offset.1.lcssa, ptr %r_count.i, align 4
  tail call void @jbd2_descriptor_block_csum_set(ptr noundef %1, ptr noundef nonnull %descriptor.1.lcssa) #8
  %91 = ptrtoint ptr %descriptor.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %descriptor.1.lcssa, align 4
  %93 = and i32 %92, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i.i28 = icmp eq i32 %93, 0
  br i1 %tobool.not.i.i28, label %if.then.i.i30, label %if.end.i29.set_buffer_jwrite.exit.i_crit_edge

if.end.i29.set_buffer_jwrite.exit.i_crit_edge:    ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_jwrite.exit.i

if.then.i.i30:                                    ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 17, ptr noundef nonnull %descriptor.1.lcssa) #8
  br label %set_buffer_jwrite.exit.i

set_buffer_jwrite.exit.i:                         ; preds = %if.then.i.i30, %if.end.i29.set_buffer_jwrite.exit.i_crit_edge
  %94 = ptrtoint ptr %descriptor.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %descriptor.1.lcssa, align 4
  %96 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i6.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i6.i, label %if.then.i7.i, label %set_buffer_jwrite.exit.i.set_buffer_dirty.exit.i_crit_edge

set_buffer_jwrite.exit.i.set_buffer_dirty.exit.i_crit_edge: ; preds = %set_buffer_jwrite.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_dirty.exit.i

if.then.i7.i:                                     ; preds = %set_buffer_jwrite.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull %descriptor.1.lcssa) #8
  br label %set_buffer_dirty.exit.i

set_buffer_dirty.exit.i:                          ; preds = %if.then.i7.i, %set_buffer_jwrite.exit.i.set_buffer_dirty.exit.i_crit_edge
  tail call void @write_dirty_buffer(ptr noundef nonnull %descriptor.1.lcssa, i32 noundef 2048) #8
  br label %if.end

if.end:                                           ; preds = %set_buffer_dirty.exit.i, %if.then.if.end_crit_edge, %for.end.if.end_crit_edge, %cond.end.if.end_crit_edge
  %count.0.lcssa55 = phi i32 [ %count.1.lcssa, %set_buffer_dirty.exit.i ], [ %count.1.lcssa, %if.then.if.end_crit_edge ], [ %count.1.lcssa, %for.end.if.end_crit_edge ], [ 0, %cond.end.if.end_crit_edge ]
  tail call void (i32, ptr, ptr, i32, ptr, ...) @__jbd2_debug(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.jbd2_journal_write_revoke_records, i32 noundef 563, ptr noundef nonnull @.str.17, i32 noundef %count.0.lcssa55) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_set_revoke(ptr noundef %journal, i64 noundef %blocknr, i32 noundef %sequence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %j_revoke.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 52
  %0 = ptrtoint ptr %j_revoke.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_revoke.i, align 8
  %hash_table.i = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hash_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash_table.i, align 4
  %hash_shift.i.i = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hash_shift.i.i, align 4
  %conv.i.i.i = trunc i64 %blocknr to i32
  %shr.i.i.i = lshr i64 %blocknr, 32
  %conv1.i.i.i = trunc i64 %shr.i.i.i to i32
  %mul.i.i.i.i = mul i32 %conv1.i.i.i, 1640531527
  %xor.i.i.i = xor i32 %mul.i.i.i.i, %conv.i.i.i
  %mul.i.i.i.i.i = mul i32 %xor.i.i.i, 1640531527
  %sub.i.i.i.i = sub i32 32, %5
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, %sub.i.i.i.i
  %arrayidx.i = getelementptr %struct.list_head, ptr %3, i32 %shr.i.i.i.i
  %j_revoke_lock.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 51
  tail call void @_raw_spin_lock(ptr noundef %j_revoke_lock.i) #8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %record.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %record.0.i, %while.body.i.while.cond.i_crit_edge ]
  %6 = ptrtoint ptr %record.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %record.0.i = load ptr, ptr %record.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %record.0.i, %arrayidx.i
  br i1 %cmp.not.i, label %find_revoke_record.exit.thread, label %while.body.i

find_revoke_record.exit.thread:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %j_revoke_lock.i) #8
  br label %if.end6

while.body.i:                                     ; preds = %while.cond.i
  %blocknr1.i = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %record.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %blocknr1.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %blocknr1.i, align 8
  %cmp2.i = icmp eq i64 %8, %blocknr
  br i1 %cmp2.i, label %find_revoke_record.exit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

find_revoke_record.exit:                          ; preds = %while.body.i
  tail call void @_raw_spin_unlock(ptr noundef %j_revoke_lock.i) #8
  %tobool.not = icmp eq ptr %record.0.i, null
  br i1 %tobool.not, label %find_revoke_record.exit.if.end6_crit_edge, label %if.then

find_revoke_record.exit.if.end6_crit_edge:        ; preds = %find_revoke_record.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %find_revoke_record.exit
  %sequence1 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %record.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %sequence1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sequence1, align 8
  %sub.i = sub i32 %sequence, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 1
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %sequence1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sequence, ptr %sequence1, align 8
  br label %cleanup

if.end6:                                          ; preds = %find_revoke_record.exit.if.end6_crit_edge, %find_revoke_record.exit.thread
  %12 = load ptr, ptr @jbd2_revoke_record_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %12, i32 noundef 35904) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end6.cleanup_crit_edge, label %if.end.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  %sequence.i = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sequence, ptr %sequence.i, align 8
  %blocknr1.i14 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %blocknr1.i14 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %blocknr, ptr %blocknr1.i14, align 8
  %15 = ptrtoint ptr %j_revoke.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %j_revoke.i, align 8
  %hash_table.i16 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %hash_table.i16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hash_table.i16, align 4
  %hash_shift.i.i17 = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %hash_shift.i.i17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hash_shift.i.i17, align 4
  %sub.i.i.i.i24 = sub i32 32, %20
  %shr.i.i.i.i25 = lshr i32 %mul.i.i.i.i.i, %sub.i.i.i.i24
  %arrayidx.i26 = getelementptr %struct.list_head, ptr %18, i32 %shr.i.i.i.i25
  tail call void @_raw_spin_lock(ptr noundef %j_revoke_lock.i) #8
  %21 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i26, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %arrayidx.i26, ptr noundef %22) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add.exit.i_crit_edge

if.end.i.list_add.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %call.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx.i26, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call.i, ptr %arrayidx.i26, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %j_revoke_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit.i, %if.end6.cleanup_crit_edge, %if.then4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %list_add.exit.i ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_test_revoke(ptr noundef %journal, i64 noundef %blocknr, i32 noundef %sequence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %j_revoke.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 52
  %0 = ptrtoint ptr %j_revoke.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_revoke.i, align 8
  %hash_table.i = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hash_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash_table.i, align 4
  %hash_shift.i.i = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hash_shift.i.i, align 4
  %conv.i.i.i = trunc i64 %blocknr to i32
  %shr.i.i.i = lshr i64 %blocknr, 32
  %conv1.i.i.i = trunc i64 %shr.i.i.i to i32
  %mul.i.i.i.i = mul i32 %conv1.i.i.i, 1640531527
  %xor.i.i.i = xor i32 %mul.i.i.i.i, %conv.i.i.i
  %mul.i.i.i.i.i = mul i32 %xor.i.i.i, 1640531527
  %sub.i.i.i.i = sub i32 32, %5
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, %sub.i.i.i.i
  %arrayidx.i = getelementptr %struct.list_head, ptr %3, i32 %shr.i.i.i.i
  %j_revoke_lock.i = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 51
  tail call void @_raw_spin_lock(ptr noundef %j_revoke_lock.i) #8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %record.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %record.0.i, %while.body.i.while.cond.i_crit_edge ]
  %6 = ptrtoint ptr %record.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %record.0.i = load ptr, ptr %record.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %record.0.i, %arrayidx.i
  br i1 %cmp.not.i, label %find_revoke_record.exit.thread, label %while.body.i

find_revoke_record.exit.thread:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %j_revoke_lock.i) #8
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i
  %blocknr1.i = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %record.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %blocknr1.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %blocknr1.i, align 8
  %cmp2.i = icmp eq i64 %8, %blocknr
  br i1 %cmp2.i, label %find_revoke_record.exit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

find_revoke_record.exit:                          ; preds = %while.body.i
  tail call void @_raw_spin_unlock(ptr noundef %j_revoke_lock.i) #8
  %tobool.not = icmp eq ptr %record.0.i, null
  br i1 %tobool.not, label %find_revoke_record.exit.cleanup_crit_edge, label %if.end

find_revoke_record.exit.cleanup_crit_edge:        ; preds = %find_revoke_record.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %find_revoke_record.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sequence1 = getelementptr inbounds %struct.jbd2_revoke_record_s, ptr %record.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %sequence1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sequence1, align 8
  %sub.i = sub i32 %sequence, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 1
  %. = zext i1 %cmp.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %find_revoke_record.exit.cleanup_crit_edge, %find_revoke_record.exit.thread
  %retval.0 = phi i32 [ 0, %find_revoke_record.exit.cleanup_crit_edge ], [ %., %if.end ], [ 0, %find_revoke_record.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jbd2_journal_clear_revoke(ptr nocapture noundef readonly %journal) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %j_revoke = getelementptr inbounds %struct.journal_s, ptr %journal, i32 0, i32 52
  %0 = ptrtoint ptr %j_revoke to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_revoke, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp sgt i32 %3, 0
  br i1 %cmp7, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hash_table = getelementptr inbounds %struct.jbd2_revoke_table_s, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %hash_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hash_table, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %5, i32 %i.08
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not6 = icmp eq ptr %7, %arrayidx
  br i1 %cmp.i.not6, label %for.body.for.inc_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %for.body.while.body_crit_edge
  %8 = phi ptr [ %19, %list_del.exit.while.body_crit_edge ], [ %7, %for.body.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %17 = load ptr, ptr @jbd2_revoke_record_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef %8) #8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %19, %arrayidx
  br i1 %cmp.i.not, label %list_del.exit.for.inc_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.for.inc_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.08, 1
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2_journal_get_descriptor_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_descriptor_block_csum_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_dirty_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !20, !22, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !36, !38, !39, !41, !43, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jbd2/revoke.c", i32 196, i32 29}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/jbd2/revoke.c", i32 200, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @jbd2_journal_init_revoke_record_cache._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @jbd2_journal_init_revoke_record_cache._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/jbd2/revoke.c", i32 209, i32 28}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jbd2/revoke.c", i32 212, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @jbd2_journal_init_revoke_table_cache._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @jbd2_journal_init_revoke_table_cache._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @jbd2_journal_init_revoke.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../fs/jbd2/revoke.c", i32 278, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../fs/jbd2/revoke.c", i32 374, i32 6}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/jbd2/revoke.c", i32 383, i32 8}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @jbd2_journal_revoke._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @jbd2_journal_revoke._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @jbd2_journal_revoke._entry.11, !21, !"_entry", i1 false, i1 false}
!28 = !{ptr @jbd2_journal_revoke._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/jbd2/revoke.c", i32 401, i32 2}
!31 = !{ptr @__func__.jbd2_journal_cancel_revoke, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/jbd2/revoke.c", i32 431, i32 2}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/jbd2/revoke.c", i32 447, i32 4}
!36 = !{ptr @__func__.jbd2_journal_write_revoke_records, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/jbd2/revoke.c", i32 563, i32 2}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @jbd2_revoke_record_cache, !40, !"jbd2_revoke_record_cache", i1 false, i1 false}
!40 = !{!"../fs/jbd2/revoke.c", i32 95, i32 27}
!41 = !{ptr @jbd2_revoke_table_cache, !42, !"jbd2_revoke_table_cache", i1 false, i1 false}
!42 = !{!"../fs/jbd2/revoke.c", i32 96, i32 27}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/jbd2.h", i32 1734, i32 2}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2154567581, i64 2154568062, i64 2154567618, i64 2154567674, i64 2154567708, i64 2154567732, i64 2154567773, i64 2154567794, i64 2154567822, i64 2154567856}
!57 = !{i64 2154571439, i64 2154571920, i64 2154571476, i64 2154571532, i64 2154571566, i64 2154571590, i64 2154571631, i64 2154571652, i64 2154571680, i64 2154571714}
!58 = !{i64 2154577096, i64 2154577577, i64 2154577133, i64 2154577189, i64 2154577223, i64 2154577247, i64 2154577288, i64 2154577309, i64 2154577337, i64 2154577371}
!59 = !{i32 0, i32 33}
!60 = !{!"branch_weights", i32 -102759400, i32 4193255}
!61 = !{i64 2154578744, i64 2154579225, i64 2154578781, i64 2154578837, i64 2154578871, i64 2154578895, i64 2154578936, i64 2154578957, i64 2154578985, i64 2154579019}
!62 = !{i64 2154575385, i64 2154575866, i64 2154575422, i64 2154575478, i64 2154575512, i64 2154575536, i64 2154575577, i64 2154575598, i64 2154575626, i64 2154575660}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 2154584861, i64 2154585342, i64 2154584898, i64 2154584954, i64 2154584988, i64 2154585012, i64 2154585053, i64 2154585074, i64 2154585102, i64 2154585136}
!65 = !{i64 2154586548, i64 2154587029, i64 2154586585, i64 2154586641, i64 2154586675, i64 2154586699, i64 2154586740, i64 2154586761, i64 2154586789, i64 2154586823}
!66 = !{i64 2153867984}
!67 = !{i64 2148222501, i64 2148222527, i64 2148222556, i64 2148222590, i64 2148222621, i64 2148222644}
!68 = !{i64 2154593142, i64 2154593623, i64 2154593179, i64 2154593235, i64 2154593269, i64 2154593293, i64 2154593334, i64 2154593355, i64 2154593383, i64 2154593417}
