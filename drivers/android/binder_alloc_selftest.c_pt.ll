; ModuleID = '/llk/IR_all_yes/drivers/android/binder_alloc_selftest.c_pt.bc'
source_filename = "../drivers/android/binder_alloc_selftest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.binder_alloc = type { %struct.mutex, ptr, ptr, ptr, %struct.list_head, %struct.rb_root, %struct.rb_root, i32, ptr, i32, i32, i32, i32, i8 }
%struct.rb_root = type { ptr }
%struct.binder_lru_page = type { %struct.list_head, ptr, ptr }
%struct.binder_buffer = type { %struct.list_head, %struct.rb_node, i32, ptr, ptr, i32, i32, i32, ptr, i32 }
%struct.rb_node = type { i32, ptr, ptr }

@binder_selftest_run = internal global { i1, [31 x i8] } zeroinitializer, align 32
@binder_selftest_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @binder_selftest_lock, i64 52), ptr getelementptr (i8, ptr @binder_selftest_lock, i64 52) }, ptr @binder_selftest_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@binder_selftest_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016binder_alloc_selftest: STARTED\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"binder_selftest_alloc\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/android/binder_alloc_selftest.c\00", [56 x i8] zeroinitializer }, align 32
@binder_selftest_alloc._entry_ptr = internal global ptr @binder_selftest_alloc._entry, section ".printk_index", align 4
@binder_selftest_failures = internal global { i32, [28 x i8] } zeroinitializer, align 32
@binder_selftest_alloc._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016binder_alloc_selftest: %d tests FAILED\0A\00", [54 x i8] zeroinitializer }, align 32
@binder_selftest_alloc._entry_ptr.5 = internal global ptr @binder_selftest_alloc._entry.3, section ".printk_index", align 4
@binder_selftest_alloc._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016binder_alloc_selftest: PASSED\0A\00", [63 x i8] zeroinitializer }, align 32
@binder_selftest_alloc._entry_ptr.8 = internal global ptr @binder_selftest_alloc._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"binder_selftest_lock.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"binder_selftest_lock\00", [43 x i8] zeroinitializer }, align 32
@binder_alloc_lru = external dso_local global %struct.list_lru, align 4
@binder_selftest_alloc_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013binder_alloc_selftest: lru list should be empty but is not\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"binder_selftest_alloc_free\00", [37 x i8] zeroinitializer }, align 32
@binder_selftest_alloc_free._entry_ptr = internal global ptr @binder_selftest_alloc_free._entry, section ".printk_index", align 4
@check_buffer_pages_allocated._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013binder_alloc_selftest: expect alloc but is %s at page index %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"check_buffer_pages_allocated\00", [35 x i8] zeroinitializer }, align 32
@check_buffer_pages_allocated._entry_ptr = internal global ptr @check_buffer_pages_allocated._entry, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lru\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"free\00", [27 x i8] zeroinitializer }, align 32
@pr_err_size_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013binder_alloc_selftest: alloc sizes: \00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pr_err_size_seq\00", [16 x i8] zeroinitializer }, align 32
@pr_err_size_seq._entry_ptr = internal global ptr @pr_err_size_seq._entry, section ".printk_index", align 4
@pr_err_size_seq._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c[%zu]\00", [24 x i8] zeroinitializer }, align 32
@pr_err_size_seq._entry_ptr.21 = internal global ptr @pr_err_size_seq._entry.19, section ".printk_index", align 4
@pr_err_size_seq._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@pr_err_size_seq._entry_ptr.24 = internal global ptr @pr_err_size_seq._entry.22, section ".printk_index", align 4
@pr_err_size_seq._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013binder_alloc_selftest: free seq: \00", [60 x i8] zeroinitializer }, align 32
@pr_err_size_seq._entry_ptr.27 = internal global ptr @pr_err_size_seq._entry.25, section ".printk_index", align 4
@pr_err_size_seq._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c[%d]\00", [25 x i8] zeroinitializer }, align 32
@pr_err_size_seq._entry_ptr.30 = internal global ptr @pr_err_size_seq._entry.28, section ".printk_index", align 4
@pr_err_size_seq._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pr_err_size_seq._entry_ptr.32 = internal global ptr @pr_err_size_seq._entry.31, section ".printk_index", align 4
@binder_selftest_free_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013binder_alloc_selftest: expect lru but is %s at page index %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"binder_selftest_free_buf\00", [39 x i8] zeroinitializer }, align 32
@binder_selftest_free_buf._entry_ptr = internal global ptr @binder_selftest_free_buf._entry, section ".printk_index", align 4
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"alloc\00", [26 x i8] zeroinitializer }, align 32
@binder_selftest_free_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013binder_alloc_selftest: expect free but is %s at page index %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"binder_selftest_free_page\00", [38 x i8] zeroinitializer }, align 32
@binder_selftest_free_page._entry_ptr = internal global ptr @binder_selftest_free_page._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c"binder_selftest_run\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"binder_selftest_lock\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 292, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [25 x i8] c"binder_selftest_failures\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 19, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 296, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 298, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 20, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 187, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 106, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 82, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 84, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 85, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 86, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 88, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 89, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 149, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [43 x i8] c"../drivers/android/binder_alloc_selftest.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 168, i32 4 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @binder_selftest_alloc._entry, ptr @binder_selftest_alloc._entry.3, ptr @binder_selftest_alloc._entry.6, ptr @binder_selftest_alloc._entry_ptr, ptr @binder_selftest_alloc._entry_ptr.5, ptr @binder_selftest_alloc._entry_ptr.8, ptr @binder_selftest_alloc_free._entry, ptr @binder_selftest_alloc_free._entry_ptr, ptr @binder_selftest_free_buf._entry, ptr @binder_selftest_free_buf._entry_ptr, ptr @binder_selftest_free_page._entry, ptr @binder_selftest_free_page._entry_ptr, ptr @check_buffer_pages_allocated._entry, ptr @check_buffer_pages_allocated._entry_ptr, ptr @pr_err_size_seq._entry, ptr @pr_err_size_seq._entry.19, ptr @pr_err_size_seq._entry.22, ptr @pr_err_size_seq._entry.25, ptr @pr_err_size_seq._entry.28, ptr @pr_err_size_seq._entry.31, ptr @pr_err_size_seq._entry_ptr, ptr @pr_err_size_seq._entry_ptr.21, ptr @pr_err_size_seq._entry_ptr.24, ptr @pr_err_size_seq._entry_ptr.27, ptr @pr_err_size_seq._entry_ptr.30, ptr @pr_err_size_seq._entry_ptr.32, ptr @binder_selftest_run, ptr @binder_selftest_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @binder_selftest_failures, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_selftest_run to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_selftest_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_selftest_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_selftest_failures to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_selftest_alloc._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_selftest_alloc._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_selftest_alloc_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_buffer_pages_allocated._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pr_err_size_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pr_err_size_seq._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pr_err_size_seq._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pr_err_size_seq._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pr_err_size_seq._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pr_err_size_seq._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_selftest_free_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_selftest_free_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @binder_selftest_alloc(ptr noundef %alloc) local_unnamed_addr #0 align 64 {
entry:
  %end_offset = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %end_offset) #4
  %0 = call ptr @memset(ptr %end_offset, i32 255, i32 20)
  %.b18 = load i1, ptr @binder_selftest_run, align 1
  br i1 %.b18, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @binder_selftest_lock, i32 noundef 0) #4
  %.b = load i1, ptr @binder_selftest_run, align 1
  br i1 %.b, label %if.end.done_crit_edge, label %lor.lhs.false

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

lor.lhs.false:                                    ; preds = %if.end
  %vma = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 1
  %1 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vma, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %lor.lhs.false.done_crit_edge, label %do.end

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

do.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  call fastcc void @binder_selftest_alloc_offset(ptr noundef %alloc, ptr noundef nonnull %end_offset, i32 noundef 0)
  store i1 true, ptr @binder_selftest_run, align 1
  %3 = load i32, ptr @binder_selftest_failures, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %do.end8, label %do.end13

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %3) #7
  br label %done

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %done

done:                                             ; preds = %do.end13, %do.end8, %lor.lhs.false.done_crit_edge, %if.end.done_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @binder_selftest_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %end_offset) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @binder_selftest_alloc_offset(ptr noundef %alloc, ptr nocapture noundef %end_offset, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  %seq.i = alloca [5 x i32], align 4
  %front_sizes.i = alloca [5 x i32], align 4
  %back_sizes.i = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %index, label %cond.false [
    i32 5, label %if.then
    i32 0, label %entry.cond.end_crit_edge
  ]

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %seq.i) #4
  %1 = call ptr @memset(ptr %seq.i, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %front_sizes.i) #4
  %2 = getelementptr inbounds [5 x i32], ptr %front_sizes.i, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i32], ptr %front_sizes.i, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i32], ptr %front_sizes.i, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i32], ptr %front_sizes.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %back_sizes.i) #4
  %6 = getelementptr inbounds [5 x i32], ptr %back_sizes.i, i32 0, i32 1
  %7 = getelementptr inbounds [5 x i32], ptr %back_sizes.i, i32 0, i32 2
  %8 = getelementptr inbounds [5 x i32], ptr %back_sizes.i, i32 0, i32 3
  %9 = getelementptr inbounds [5 x i32], ptr %back_sizes.i, i32 0, i32 4
  %10 = ptrtoint ptr %end_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end_offset, align 4
  %12 = ptrtoint ptr %front_sizes.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %front_sizes.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %9, align 4
  %arrayidx.1.i = getelementptr i32, ptr %end_offset, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1.i, align 4
  %sub.1.i = sub i32 %15, %11
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.1.i, ptr %2, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.1.i, ptr %8, align 4
  %arrayidx.2.i = getelementptr i32, ptr %end_offset, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2.i, align 4
  %sub.2.i = sub i32 %19, %15
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.2.i, ptr %3, align 4
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.2.i, ptr %7, align 4
  %arrayidx.3.i = getelementptr i32, ptr %end_offset, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.3.i, align 4
  %sub.3.i = sub i32 %23, %19
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.3.i, ptr %4, align 4
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.3.i, ptr %6, align 4
  %arrayidx.4.i = getelementptr i32, ptr %end_offset, i32 4
  %26 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.4.i, align 4
  %sub.4.i = sub i32 %27, %23
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.4.i, ptr %5, align 4
  %buffer_size.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  %29 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buffer_size.i, align 4
  %add.i = sub i32 %30, %23
  %31 = ptrtoint ptr %back_sizes.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %back_sizes.i, align 4
  call fastcc void @binder_selftest_free_seq(ptr noundef %alloc, ptr noundef nonnull %front_sizes.i, ptr noundef nonnull %seq.i, i32 noundef 0, i32 noundef %27) #4
  %32 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buffer_size.i, align 4
  call fastcc void @binder_selftest_free_seq(ptr noundef %alloc, ptr noundef nonnull %back_sizes.i, ptr noundef nonnull %seq.i, i32 noundef 0, i32 noundef %33) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %back_sizes.i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %front_sizes.i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %seq.i) #4
  br label %cleanup

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add i32 %index, -1
  %arrayidx = getelementptr i32, ptr %end_offset, i32 %sub
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  %phi.bo = add i32 %35, 512
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo, %cond.false ], [ 512, %entry.cond.end_crit_edge ]
  %arrayidx6 = getelementptr i32, ptr %end_offset, i32 %index
  %add7 = add i32 %index, 1
  %36 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond, ptr %arrayidx6, align 4
  tail call fastcc void @binder_selftest_alloc_offset(ptr noundef %alloc, ptr noundef %end_offset, i32 noundef %add7)
  %add.1 = add i32 %cond, 4095
  %and.1 = and i32 %add.1, -4096
  %37 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.1, ptr %arrayidx6, align 4
  tail call fastcc void @binder_selftest_alloc_offset(ptr noundef %alloc, ptr noundef %end_offset, i32 noundef %add7)
  %add4.2 = or i32 %and.1, 512
  %38 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add4.2, ptr %arrayidx6, align 4
  tail call fastcc void @binder_selftest_alloc_offset(ptr noundef %alloc, ptr noundef %end_offset, i32 noundef %add7)
  %add.3 = add i32 %and.1, 4607
  %and.3 = and i32 %add.3, -4096
  %39 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and.3, ptr %arrayidx6, align 4
  tail call fastcc void @binder_selftest_alloc_offset(ptr noundef %alloc, ptr noundef %end_offset, i32 noundef %add7)
  %add4.4 = or i32 %and.3, 512
  %40 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add4.4, ptr %arrayidx6, align 4
  tail call fastcc void @binder_selftest_alloc_offset(ptr noundef %alloc, ptr noundef %end_offset, i32 noundef %add7)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @binder_selftest_free_seq(ptr noundef %alloc, ptr nocapture noundef readonly %sizes, ptr nocapture noundef %seq, i32 noundef %index, i32 noundef %end) unnamed_addr #0 align 64 {
entry:
  %nr_to_walk.addr.i.i.i = alloca i32, align 4
  %buffers.i = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %index)
  %cmp = icmp eq i32 %index, 5
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp4.i = icmp sgt i32 %index, 0
  %arrayidx = getelementptr i32, ptr %seq, i32 %index
  %add = add i32 %index, 1
  br i1 %cmp4.i, label %for.body.i.preheader, label %for.cond.preheader.if.end3_crit_edge

for.cond.preheader.if.end3_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buffers.i) #4
  %0 = call ptr @memset(ptr %buffers.i, i32 255, i32 20)
  call fastcc void @binder_selftest_alloc_buf(ptr noundef %alloc, ptr noundef nonnull %buffers.i, ptr noundef %sizes, ptr noundef %seq) #4
  call fastcc void @binder_selftest_free_buf(ptr noundef %alloc, ptr noundef nonnull %buffers.i, ptr noundef %sizes, ptr noundef %seq, i32 noundef %end) #4
  call fastcc void @binder_selftest_alloc_buf(ptr noundef %alloc, ptr noundef nonnull %buffers.i, ptr noundef %sizes, ptr noundef %seq) #4
  %call.i.i = tail call i32 @list_lru_count_node(ptr noundef nonnull @binder_alloc_lru, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %do.end.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.if.end.i_crit_edge
  call fastcc void @binder_selftest_free_buf(ptr noundef %alloc, ptr noundef nonnull %buffers.i, ptr noundef %sizes, ptr noundef %seq, i32 noundef %end) #4
  %call.i17.i.i = tail call i32 @list_lru_count_node(ptr noundef nonnull @binder_alloc_lru, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i)
  %tobool.not18.i.i = icmp eq i32 %call.i17.i.i, 0
  br i1 %tobool.not18.i.i, label %if.end.i.for.cond.preheader.i.i_crit_edge, label %if.end.i.while.body.i.i_crit_edge

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

if.end.i.for.cond.preheader.i.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %while.body.i.i.for.cond.preheader.i.i_crit_edge, %if.end.i.for.cond.preheader.i.i_crit_edge
  %buffer_size.i.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  %1 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %buffer_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %2)
  %cmp21.not.i.i = icmp ult i32 %2, 4096
  br i1 %cmp21.not.i.i, label %for.cond.preheader.i.i.binder_selftest_alloc_free.exit_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.binder_selftest_alloc_free.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %binder_selftest_alloc_free.exit

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %pages.i.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 8
  br label %for.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %call.i19.i.i = phi i32 [ %call.i.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call.i17.i.i, %if.end.i.while.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_to_walk.addr.i.i.i) #4
  %3 = ptrtoint ptr %nr_to_walk.addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i19.i.i, ptr %nr_to_walk.addr.i.i.i, align 4
  %call.i16.i.i = call i32 @list_lru_walk_node(ptr noundef nonnull @binder_alloc_lru, i32 noundef 0, ptr noundef nonnull @binder_alloc_free_page, ptr noundef null, ptr noundef nonnull %nr_to_walk.addr.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_to_walk.addr.i.i.i) #4
  %call.i.i.i = call i32 @list_lru_count_node(ptr noundef nonnull @binder_alloc_lru, i32 noundef 0) #4
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.for.cond.preheader.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

while.body.i.i.for.cond.preheader.i.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.022.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc8.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages.i.i, align 4
  %page_ptr.i.i = getelementptr %struct.binder_lru_page, ptr %5, i32 %i.022.i.i, i32 1
  %6 = ptrtoint ptr %page_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page_ptr.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %do.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i.i = getelementptr %struct.binder_lru_page, ptr %5, i32 %i.022.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %9, %arrayidx.i.i
  %cond.i.i = select i1 %cmp.i.not.i.i, ptr @.str.35, ptr @.str.15
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull %cond.i.i, i32 noundef %i.022.i.i) #7
  %10 = load i32, ptr @binder_selftest_failures, align 4
  %inc.i.i = add i32 %10, 1
  store i32 %inc.i.i, ptr @binder_selftest_failures, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc8.i.i = add nuw nsw i32 %i.022.i.i, 1
  %11 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buffer_size.i.i, align 4
  %div15.i.i = lshr i32 %12, 12
  %cmp.i.i = icmp ult i32 %inc8.i.i, %div15.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.binder_selftest_alloc_free.exit_crit_edge

for.inc.i.i.binder_selftest_alloc_free.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %binder_selftest_alloc_free.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

binder_selftest_alloc_free.exit:                  ; preds = %for.inc.i.i.binder_selftest_alloc_free.exit_crit_edge, %for.cond.preheader.i.i.binder_selftest_alloc_free.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buffers.i) #4
  br label %cleanup

for.body.i.preheader:                             ; preds = %for.cond.preheader
  %13 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1.i17 = icmp eq i32 %14, 0
  br i1 %cmp1.i17, label %for.body.i.preheader.for.cond.i.1.preheader_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.for.cond.i.1.preheader_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.1.preheader

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.05.i18 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.05.i18, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %index)
  %exitcond.not.i = icmp eq i32 %inc.i, %index
  br i1 %exitcond.not.i, label %for.cond.i.is_dup.exit_crit_edge, label %for.body.i

for.cond.i.is_dup.exit_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_dup.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i32, ptr %seq, i32 %inc.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq i32 %16, 0
  br i1 %cmp1.i, label %for.body.i.is_dup.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

for.body.i.is_dup.exit_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_dup.exit

is_dup.exit:                                      ; preds = %for.body.i.is_dup.exit_crit_edge, %for.cond.i.is_dup.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %index)
  %cmp.i.le = icmp slt i32 %inc.i, %index
  br i1 %cmp.i.le, label %is_dup.exit.for.inc_crit_edge, label %is_dup.exit.if.end3_crit_edge

is_dup.exit.if.end3_crit_edge:                    ; preds = %is_dup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

is_dup.exit.for.inc_crit_edge:                    ; preds = %is_dup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end3:                                          ; preds = %is_dup.exit.if.end3_crit_edge, %for.cond.preheader.if.end3_crit_edge
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx, align 4
  tail call fastcc void @binder_selftest_free_seq(ptr noundef %alloc, ptr noundef %sizes, ptr noundef %seq, i32 noundef %add, i32 noundef %end)
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %is_dup.exit.for.inc_crit_edge
  br i1 %cmp4.i, label %for.body.i.preheader.1, label %for.inc.if.end3.1_crit_edge

for.inc.if.end3.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.1

for.body.i.preheader.1:                           ; preds = %for.inc
  %18 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp1.i17.1 = icmp eq i32 %.pr, 1
  br i1 %cmp1.i17.1, label %for.body.i.preheader.1.for.cond.i.2.preheader_crit_edge, label %for.body.i.preheader.1.for.cond.i.1.preheader_crit_edge

for.body.i.preheader.1.for.cond.i.1.preheader_crit_edge: ; preds = %for.body.i.preheader.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.1.preheader

for.body.i.preheader.1.for.cond.i.2.preheader_crit_edge: ; preds = %for.body.i.preheader.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.2.preheader

for.cond.i.1.preheader:                           ; preds = %for.body.i.preheader.1.for.cond.i.1.preheader_crit_edge, %for.body.i.preheader.for.cond.i.1.preheader_crit_edge
  br label %for.cond.i.1

for.cond.i.1:                                     ; preds = %for.body.i.1.for.cond.i.1_crit_edge, %for.cond.i.1.preheader
  %i.05.i18.1 = phi i32 [ %inc.i.1, %for.body.i.1.for.cond.i.1_crit_edge ], [ 0, %for.cond.i.1.preheader ]
  %inc.i.1 = add nuw nsw i32 %i.05.i18.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.1, i32 %index)
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, %index
  br i1 %exitcond.not.i.1, label %for.cond.i.1.is_dup.exit.1_crit_edge, label %for.body.i.1

for.cond.i.1.is_dup.exit.1_crit_edge:             ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_dup.exit.1

for.body.i.1:                                     ; preds = %for.cond.i.1
  %arrayidx.i.1 = getelementptr i32, ptr %seq, i32 %inc.i.1
  %19 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.1, align 4
  %cmp1.i.1 = icmp eq i32 %20, 1
  br i1 %cmp1.i.1, label %for.body.i.1.is_dup.exit.1_crit_edge, label %for.body.i.1.for.cond.i.1_crit_edge

for.body.i.1.for.cond.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.1

for.body.i.1.is_dup.exit.1_crit_edge:             ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_dup.exit.1

is_dup.exit.1:                                    ; preds = %for.body.i.1.is_dup.exit.1_crit_edge, %for.cond.i.1.is_dup.exit.1_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.1, i32 %index)
  %cmp.i.1.le = icmp slt i32 %inc.i.1, %index
  br i1 %cmp.i.1.le, label %is_dup.exit.1.for.inc.1_crit_edge, label %is_dup.exit.1.if.end3.1_crit_edge

is_dup.exit.1.if.end3.1_crit_edge:                ; preds = %is_dup.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.1

is_dup.exit.1.for.inc.1_crit_edge:                ; preds = %is_dup.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.end3.1:                                        ; preds = %is_dup.exit.1.if.end3.1_crit_edge, %for.inc.if.end3.1_crit_edge
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx, align 4
  tail call fastcc void @binder_selftest_free_seq(ptr noundef %alloc, ptr noundef %sizes, ptr noundef %seq, i32 noundef %add, i32 noundef %end)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end3.1, %is_dup.exit.1.for.inc.1_crit_edge
  br i1 %cmp4.i, label %for.body.i.preheader.2, label %for.inc.1.if.end3.2_crit_edge

for.inc.1.if.end3.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.2

for.body.i.preheader.2:                           ; preds = %for.inc.1
  %22 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr27 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr27)
  %cmp1.i17.2 = icmp eq i32 %.pr27, 2
  br i1 %cmp1.i17.2, label %for.body.i.preheader.2.for.cond.i.3.preheader_crit_edge, label %for.body.i.preheader.2.for.cond.i.2.preheader_crit_edge

for.body.i.preheader.2.for.cond.i.2.preheader_crit_edge: ; preds = %for.body.i.preheader.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.2.preheader

for.body.i.preheader.2.for.cond.i.3.preheader_crit_edge: ; preds = %for.body.i.preheader.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.3.preheader

for.cond.i.2.preheader:                           ; preds = %for.body.i.preheader.2.for.cond.i.2.preheader_crit_edge, %for.body.i.preheader.1.for.cond.i.2.preheader_crit_edge
  br label %for.cond.i.2

for.cond.i.2:                                     ; preds = %for.body.i.2.for.cond.i.2_crit_edge, %for.cond.i.2.preheader
  %i.05.i18.2 = phi i32 [ %inc.i.2, %for.body.i.2.for.cond.i.2_crit_edge ], [ 0, %for.cond.i.2.preheader ]
  %inc.i.2 = add nuw nsw i32 %i.05.i18.2, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.2, i32 %index)
  %exitcond.not.i.2 = icmp eq i32 %inc.i.2, %index
  br i1 %exitcond.not.i.2, label %for.cond.i.2.is_dup.exit.2_crit_edge, label %for.body.i.2

for.cond.i.2.is_dup.exit.2_crit_edge:             ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_dup.exit.2

for.body.i.2:                                     ; preds = %for.cond.i.2
  %arrayidx.i.2 = getelementptr i32, ptr %seq, i32 %inc.i.2
  %23 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.2, align 4
  %cmp1.i.2 = icmp eq i32 %24, 2
  br i1 %cmp1.i.2, label %for.body.i.2.is_dup.exit.2_crit_edge, label %for.body.i.2.for.cond.i.2_crit_edge

for.body.i.2.for.cond.i.2_crit_edge:              ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.2

for.body.i.2.is_dup.exit.2_crit_edge:             ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_dup.exit.2

is_dup.exit.2:                                    ; preds = %for.body.i.2.is_dup.exit.2_crit_edge, %for.cond.i.2.is_dup.exit.2_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.2, i32 %index)
  %cmp.i.2.le = icmp slt i32 %inc.i.2, %index
  br i1 %cmp.i.2.le, label %is_dup.exit.2.for.inc.2_crit_edge, label %is_dup.exit.2.if.end3.2_crit_edge

is_dup.exit.2.if.end3.2_crit_edge:                ; preds = %is_dup.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.2

is_dup.exit.2.for.inc.2_crit_edge:                ; preds = %is_dup.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.end3.2:                                        ; preds = %is_dup.exit.2.if.end3.2_crit_edge, %for.inc.1.if.end3.2_crit_edge
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %arrayidx, align 4
  tail call fastcc void @binder_selftest_free_seq(ptr noundef %alloc, ptr noundef %sizes, ptr noundef %seq, i32 noundef %add, i32 noundef %end)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end3.2, %is_dup.exit.2.for.inc.2_crit_edge
  br i1 %cmp4.i, label %for.body.i.preheader.3, label %for.inc.2.if.end3.3_crit_edge

for.inc.2.if.end3.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.3

for.body.i.preheader.3:                           ; preds = %for.inc.2
  %26 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr30 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr30)
  %cmp1.i17.3 = icmp eq i32 %.pr30, 3
  br i1 %cmp1.i17.3, label %for.body.i.preheader.3.for.cond.i.4.preheader_crit_edge, label %for.body.i.preheader.3.for.cond.i.3.preheader_crit_edge

for.body.i.preheader.3.for.cond.i.3.preheader_crit_edge: ; preds = %for.body.i.preheader.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.3.preheader

for.body.i.preheader.3.for.cond.i.4.preheader_crit_edge: ; preds = %for.body.i.preheader.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.4.preheader

for.cond.i.3.preheader:                           ; preds = %for.body.i.preheader.3.for.cond.i.3.preheader_crit_edge, %for.body.i.preheader.2.for.cond.i.3.preheader_crit_edge
  br label %for.cond.i.3

for.cond.i.3:                                     ; preds = %for.body.i.3.for.cond.i.3_crit_edge, %for.cond.i.3.preheader
  %i.05.i18.3 = phi i32 [ %inc.i.3, %for.body.i.3.for.cond.i.3_crit_edge ], [ 0, %for.cond.i.3.preheader ]
  %inc.i.3 = add nuw nsw i32 %i.05.i18.3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.3, i32 %index)
  %exitcond.not.i.3 = icmp eq i32 %inc.i.3, %index
  br i1 %exitcond.not.i.3, label %for.cond.i.3.is_dup.exit.3_crit_edge, label %for.body.i.3

for.cond.i.3.is_dup.exit.3_crit_edge:             ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_dup.exit.3

for.body.i.3:                                     ; preds = %for.cond.i.3
  %arrayidx.i.3 = getelementptr i32, ptr %seq, i32 %inc.i.3
  %27 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.3, align 4
  %cmp1.i.3 = icmp eq i32 %28, 3
  br i1 %cmp1.i.3, label %for.body.i.3.is_dup.exit.3_crit_edge, label %for.body.i.3.for.cond.i.3_crit_edge

for.body.i.3.for.cond.i.3_crit_edge:              ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.3

for.body.i.3.is_dup.exit.3_crit_edge:             ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_dup.exit.3

is_dup.exit.3:                                    ; preds = %for.body.i.3.is_dup.exit.3_crit_edge, %for.cond.i.3.is_dup.exit.3_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.3, i32 %index)
  %cmp.i.3.le = icmp slt i32 %inc.i.3, %index
  br i1 %cmp.i.3.le, label %is_dup.exit.3.for.inc.3_crit_edge, label %is_dup.exit.3.if.end3.3_crit_edge

is_dup.exit.3.if.end3.3_crit_edge:                ; preds = %is_dup.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.3

is_dup.exit.3.for.inc.3_crit_edge:                ; preds = %is_dup.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.end3.3:                                        ; preds = %is_dup.exit.3.if.end3.3_crit_edge, %for.inc.2.if.end3.3_crit_edge
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %arrayidx, align 4
  tail call fastcc void @binder_selftest_free_seq(ptr noundef %alloc, ptr noundef %sizes, ptr noundef %seq, i32 noundef %add, i32 noundef %end)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end3.3, %is_dup.exit.3.for.inc.3_crit_edge
  br i1 %cmp4.i, label %for.body.i.preheader.4, label %for.inc.3.if.end3.4_crit_edge

for.inc.3.if.end3.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.4

for.body.i.preheader.4:                           ; preds = %for.inc.3
  %30 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr33 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr33)
  %cmp1.i17.4 = icmp eq i32 %.pr33, 4
  br i1 %cmp1.i17.4, label %for.body.i.preheader.4.cleanup_crit_edge, label %for.body.i.preheader.4.for.cond.i.4.preheader_crit_edge

for.body.i.preheader.4.for.cond.i.4.preheader_crit_edge: ; preds = %for.body.i.preheader.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.4.preheader

for.body.i.preheader.4.cleanup_crit_edge:         ; preds = %for.body.i.preheader.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.i.4.preheader:                           ; preds = %for.body.i.preheader.4.for.cond.i.4.preheader_crit_edge, %for.body.i.preheader.3.for.cond.i.4.preheader_crit_edge
  br label %for.cond.i.4

for.cond.i.4:                                     ; preds = %for.body.i.4.for.cond.i.4_crit_edge, %for.cond.i.4.preheader
  %i.05.i18.4 = phi i32 [ %inc.i.4, %for.body.i.4.for.cond.i.4_crit_edge ], [ 0, %for.cond.i.4.preheader ]
  %inc.i.4 = add nuw nsw i32 %i.05.i18.4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.4, i32 %index)
  %exitcond.not.i.4 = icmp eq i32 %inc.i.4, %index
  br i1 %exitcond.not.i.4, label %for.cond.i.4.is_dup.exit.4_crit_edge, label %for.body.i.4

for.cond.i.4.is_dup.exit.4_crit_edge:             ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_dup.exit.4

for.body.i.4:                                     ; preds = %for.cond.i.4
  %arrayidx.i.4 = getelementptr i32, ptr %seq, i32 %inc.i.4
  %31 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.4, align 4
  %cmp1.i.4 = icmp eq i32 %32, 4
  br i1 %cmp1.i.4, label %for.body.i.4.is_dup.exit.4_crit_edge, label %for.body.i.4.for.cond.i.4_crit_edge

for.body.i.4.for.cond.i.4_crit_edge:              ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.4

for.body.i.4.is_dup.exit.4_crit_edge:             ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_dup.exit.4

is_dup.exit.4:                                    ; preds = %for.body.i.4.is_dup.exit.4_crit_edge, %for.cond.i.4.is_dup.exit.4_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.4, i32 %index)
  %cmp.i.4.le = icmp slt i32 %inc.i.4, %index
  br i1 %cmp.i.4.le, label %is_dup.exit.4.cleanup_crit_edge, label %is_dup.exit.4.if.end3.4_crit_edge

is_dup.exit.4.if.end3.4_crit_edge:                ; preds = %is_dup.exit.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.4

is_dup.exit.4.cleanup_crit_edge:                  ; preds = %is_dup.exit.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3.4:                                        ; preds = %is_dup.exit.4.if.end3.4_crit_edge, %for.inc.3.if.end3.4_crit_edge
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %arrayidx, align 4
  tail call fastcc void @binder_selftest_free_seq(ptr noundef %alloc, ptr noundef %sizes, ptr noundef %seq, i32 noundef %add, i32 noundef %end)
  br label %cleanup

cleanup:                                          ; preds = %if.end3.4, %is_dup.exit.4.cleanup_crit_edge, %for.body.i.preheader.4.cleanup_crit_edge, %binder_selftest_alloc_free.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @binder_selftest_alloc_buf(ptr noundef %alloc, ptr nocapture noundef %buffers, ptr nocapture noundef readonly %sizes, ptr nocapture noundef readonly %seq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer3.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %pages.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.022 = phi i32 [ 0, %entry ], [ %inc7, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sizes, i32 %i.022
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call ptr @binder_alloc_new_buf(ptr noundef %alloc, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %arrayidx1 = getelementptr ptr, ptr %buffers, i32 %i.022
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %arrayidx1, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %user_data.i = getelementptr inbounds %struct.binder_buffer, ptr %call, i32 0, i32 8
  %5 = ptrtoint ptr %user_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %user_data.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %add.i = add i32 %4, 4095
  %add1.i = add i32 %add.i, %7
  %and.i = and i32 %add1.i, -4096
  %8 = inttoptr i32 %and.i to ptr
  %cmp26.i = icmp ult ptr %6, %8
  br i1 %cmp26.i, label %for.body.lr.ph.i, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer3.i, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %11 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr i8, ptr %page_addr.027.i, i32 4096
  %cmp.i19 = icmp ult ptr %add.ptr.i, %8
  br i1 %cmp.i19, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.inc_crit_edge

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %page_addr.027.i = phi ptr [ %6, %for.body.lr.ph.i ], [ %add.ptr.i, %for.cond.i.for.body.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %page_addr.027.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %div23.i = lshr i32 %sub.ptr.sub.i, 12
  %page_ptr.i = getelementptr %struct.binder_lru_page, ptr %12, i32 %div23.i, i32 1
  %13 = ptrtoint ptr %page_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %page_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %for.body.i.check_buffer_pages_allocated.exit_crit_edge, label %lor.lhs.false.i

for.body.i.check_buffer_pages_allocated.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %check_buffer_pages_allocated.exit

lor.lhs.false.i:                                  ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.binder_lru_page, ptr %12, i32 %div23.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %arrayidx.i
  br i1 %cmp.i.not.i, label %for.cond.i, label %lor.lhs.false.i.check_buffer_pages_allocated.exit_crit_edge

lor.lhs.false.i.check_buffer_pages_allocated.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %check_buffer_pages_allocated.exit

check_buffer_pages_allocated.exit:                ; preds = %lor.lhs.false.i.check_buffer_pages_allocated.exit_crit_edge, %for.body.i.check_buffer_pages_allocated.exit_crit_edge
  %cond.i = phi ptr [ @.str.16, %for.body.i.check_buffer_pages_allocated.exit_crit_edge ], [ @.str.15, %lor.lhs.false.i.check_buffer_pages_allocated.exit_crit_edge ]
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %cond.i, i32 noundef %div23.i) #7
  br label %if.then

if.then:                                          ; preds = %check_buffer_pages_allocated.exit, %for.body.if.then_crit_edge
  tail call fastcc void @pr_err_size_seq(ptr noundef %sizes, ptr noundef %seq)
  %17 = load i32, ptr @binder_selftest_failures, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr @binder_selftest_failures, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.cond.i.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %inc7 = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc7, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @binder_selftest_free_buf(ptr noundef %alloc, ptr nocapture noundef readonly %buffers, ptr nocapture noundef readonly %sizes, ptr nocapture noundef readonly %seq, i32 noundef %end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seq, align 4
  %arrayidx1 = getelementptr ptr, ptr %buffers, i32 %1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  tail call void @binder_alloc_free_buf(ptr noundef %alloc, ptr noundef %3) #4
  %arrayidx.1 = getelementptr i32, ptr %seq, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr ptr, ptr %buffers, i32 %5
  %6 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1.1, align 4
  tail call void @binder_alloc_free_buf(ptr noundef %alloc, ptr noundef %7) #4
  %arrayidx.2 = getelementptr i32, ptr %seq, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  %arrayidx1.2 = getelementptr ptr, ptr %buffers, i32 %9
  %10 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.2, align 4
  tail call void @binder_alloc_free_buf(ptr noundef %alloc, ptr noundef %11) #4
  %arrayidx.3 = getelementptr i32, ptr %seq, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3, align 4
  %arrayidx1.3 = getelementptr ptr, ptr %buffers, i32 %13
  %14 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.3, align 4
  tail call void @binder_alloc_free_buf(ptr noundef %alloc, ptr noundef %15) #4
  %arrayidx.4 = getelementptr i32, ptr %seq, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.4, align 4
  %arrayidx1.4 = getelementptr ptr, ptr %buffers, i32 %17
  %18 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx1.4, align 4
  tail call void @binder_alloc_free_buf(ptr noundef %alloc, ptr noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %end)
  %cmp326.not = icmp ult i32 %end, 4096
  br i1 %cmp326.not, label %entry.for.end13_crit_edge, label %for.body4.lr.ph

entry.for.end13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end13

for.body4.lr.ph:                                  ; preds = %entry
  %div24 = lshr i32 %end, 12
  %pages = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 8
  br label %for.body4

for.body4:                                        ; preds = %for.inc11.for.body4_crit_edge, %for.body4.lr.ph
  %i.127 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc12, %for.inc11.for.body4_crit_edge ]
  %20 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pages, align 4
  %arrayidx5 = getelementptr %struct.binder_lru_page, ptr %21, i32 %i.127
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx5, align 4
  %cmp.i.not = icmp eq ptr %23, %arrayidx5
  br i1 %cmp.i.not, label %if.then, label %for.body4.for.inc11_crit_edge

for.body4.for.inc11_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc11

if.then:                                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @pr_err_size_seq(ptr noundef %sizes, ptr noundef %seq)
  %24 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pages, align 4
  %page_ptr = getelementptr %struct.binder_lru_page, ptr %25, i32 %i.127, i32 1
  %26 = ptrtoint ptr %page_ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %page_ptr, align 4
  %tobool8.not = icmp eq ptr %27, null
  %cond = select i1 %tobool8.not, ptr @.str.16, ptr @.str.35
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %cond, i32 noundef %i.127) #7
  %28 = load i32, ptr @binder_selftest_failures, align 4
  %inc10 = add i32 %28, 1
  store i32 %inc10, ptr @binder_selftest_failures, align 4
  br label %for.inc11

for.inc11:                                        ; preds = %if.then, %for.body4.for.inc11_crit_edge
  %inc12 = add nuw nsw i32 %i.127, 1
  %exitcond.not = icmp eq i32 %inc12, %div24
  br i1 %exitcond.not, label %for.inc11.for.end13_crit_edge, label %for.inc11.for.body4_crit_edge

for.inc11.for.body4_crit_edge:                    ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body4

for.inc11.for.end13_crit_edge:                    ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end13

for.end13:                                        ; preds = %for.inc11.for.end13_crit_edge, %entry.for.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @binder_alloc_new_buf(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pr_err_size_seq(ptr nocapture noundef readonly %sizes, ptr nocapture noundef readonly %seq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #7
  %0 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sizes, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %1) #7
  %arrayidx.1 = getelementptr i32, ptr %sizes, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1, align 4
  %call5.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %3) #7
  %arrayidx.2 = getelementptr i32, ptr %sizes, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2, align 4
  %call5.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %5) #7
  %arrayidx.3 = getelementptr i32, ptr %sizes, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.3, align 4
  %call5.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %7) #7
  %arrayidx.4 = getelementptr i32, ptr %sizes, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.4, align 4
  %call5.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %9) #7
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #7
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #7
  %10 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seq, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %11) #7
  %arrayidx23.1 = getelementptr i32, ptr %seq, i32 1
  %12 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx23.1, align 4
  %call24.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %13) #7
  %arrayidx23.2 = getelementptr i32, ptr %seq, i32 2
  %14 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx23.2, align 4
  %call24.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %15) #7
  %arrayidx23.3 = getelementptr i32, ptr %seq, i32 3
  %16 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx23.3, align 4
  %call24.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %17) #7
  %arrayidx23.4 = getelementptr i32, ptr %seq, i32 4
  %18 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx23.4, align 4
  %call24.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %19) #7
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @binder_alloc_free_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_node(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @binder_alloc_free_page(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_node(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/android/binder_alloc_selftest.c", i32 292, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @binder_selftest_alloc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @binder_selftest_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/android/binder_alloc_selftest.c", i32 296, i32 3}
!8 = !{ptr @binder_selftest_alloc._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @binder_selftest_alloc._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/android/binder_alloc_selftest.c", i32 298, i32 3}
!12 = !{ptr @binder_selftest_alloc._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @binder_selftest_alloc._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @binder_selftest_failures, !15, !"binder_selftest_failures", i1 false, i1 false}
!15 = !{!"../drivers/android/binder_alloc_selftest.c", i32 19, i32 12}
!16 = distinct !{null, !17, !"binder_selftest_run", i1 false, i1 false}
!17 = !{!"../drivers/android/binder_alloc_selftest.c", i32 18, i32 13}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/android/binder_alloc_selftest.c", i32 20, i32 8}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @binder_selftest_lock, !19, !"binder_selftest_lock", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/android/binder_alloc_selftest.c", i32 187, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @binder_selftest_alloc_free._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @binder_selftest_alloc_free._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/android/binder_alloc_selftest.c", i32 106, i32 4}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @check_buffer_pages_allocated._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @check_buffer_pages_allocated._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/android/binder_alloc_selftest.c", i32 82, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pr_err_size_seq._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @pr_err_size_seq._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/android/binder_alloc_selftest.c", i32 84, i32 3}
!41 = !{ptr @pr_err_size_seq._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @pr_err_size_seq._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/android/binder_alloc_selftest.c", i32 85, i32 2}
!45 = !{ptr @pr_err_size_seq._entry.22, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @pr_err_size_seq._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/android/binder_alloc_selftest.c", i32 86, i32 2}
!49 = !{ptr @pr_err_size_seq._entry.25, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pr_err_size_seq._entry_ptr.27, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/android/binder_alloc_selftest.c", i32 88, i32 3}
!53 = !{ptr @pr_err_size_seq._entry.28, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pr_err_size_seq._entry_ptr.30, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @pr_err_size_seq._entry.31, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/android/binder_alloc_selftest.c", i32 89, i32 2}
!57 = !{ptr @pr_err_size_seq._entry_ptr.32, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/android/binder_alloc_selftest.c", i32 149, i32 4}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @binder_selftest_free_buf._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @binder_selftest_free_buf._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/android/binder_alloc_selftest.c", i32 168, i32 4}
!66 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @binder_selftest_free_page._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @binder_selftest_free_page._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
