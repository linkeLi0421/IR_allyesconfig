; ModuleID = '/llk/IR_all_yes/security/selinux/ss/sidtab.c_pt.bc'
source_filename = "../security/selinux/ss/sidtab.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sidtab = type { [4 x %union.sidtab_entry_inner], i32, ptr, i8, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, [27 x %struct.sidtab_isid_entry], [512 x %struct.hlist_head] }
%union.sidtab_entry_inner = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.sidtab_isid_entry = type { i32, %struct.sidtab_entry }
%struct.sidtab_entry = type { i32, i32, %struct.context, ptr, %struct.hlist_node }
%struct.context = type { i32, i32, i32, i32, %struct.mls_range, ptr }
%struct.mls_range = type { [2 x %struct.mls_level] }
%struct.mls_level = type { i32, %struct.ebitmap }
%struct.ebitmap = type { ptr, i32 }
%struct.hlist_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sidtab_convert_params = type { ptr, ptr, ptr }
%struct.sidtab_str_cache = type { %struct.callback_head, %struct.list_head, ptr, i32, [0 x i8] }
%struct.callback_head = type { ptr, ptr }

@sidtab_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&s->lock\00", [23 x i8] zeroinitializer }, align 32
@sidtab_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&s->cache_lock\00", [17 x i8] zeroinitializer }, align 32
@sidtab_hash_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"security/selinux/ss/sidtab.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"entries: %d\0Abuckets used: %d/%d\0Alongest chain: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@sidtab_context_to_sid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016SELinux:  Context %s is not valid (left unmapped).\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sidtab_context_to_sid\00", [42 x i8] zeroinitializer }, align 32
@sidtab_context_to_sid._entry_ptr = internal global ptr @sidtab_context_to_sid._entry, section ".printk_index", align 4
@sidtab_convert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016SELinux:  Converting %u SID table entries...\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sidtab_convert\00", [17 x i8] zeroinitializer }, align 32
@sidtab_convert._entry_ptr = internal global ptr @sidtab_convert._entry, section ".printk_index", align 4
@sidtab_sid2str_put.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@sidtab_sid2str_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@context_to_sid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 47, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 52, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 124, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 142, i32 36 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 342, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 453, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 565, i32 10 }
@___asan_gen_.58 = private constant [32 x i8] c"../security/selinux/ss/sidtab.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 609, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 695, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 723, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @sidtab_context_to_sid._entry, ptr @sidtab_context_to_sid._entry_ptr, ptr @sidtab_convert._entry, ptr @sidtab_convert._entry_ptr, ptr @sidtab_init.__key, ptr @.str, ptr @sidtab_init.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidtab_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidtab_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidtab_context_to_sid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidtab_convert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sidtab_init(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 3
  %3 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 5
  %5 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 6
  %6 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 7
  %7 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 8
  %8 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 9
  %9 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx.9, align 4
  %arrayidx.10 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 10
  %10 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx.10, align 4
  %arrayidx.11 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 11
  %11 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx.11, align 4
  %arrayidx.12 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 12
  %12 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx.12, align 4
  %arrayidx.13 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 13
  %13 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx.13, align 4
  %arrayidx.14 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 14
  %14 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx.14, align 4
  %arrayidx.15 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 15
  %15 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx.15, align 4
  %arrayidx.16 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 16
  %16 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx.16, align 4
  %arrayidx.17 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 17
  %17 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx.17, align 4
  %arrayidx.18 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 18
  %18 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx.18, align 4
  %arrayidx.19 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 19
  %19 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx.19, align 4
  %arrayidx.20 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 20
  %20 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx.20, align 4
  %arrayidx.21 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 21
  %21 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx.21, align 4
  %arrayidx.22 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 22
  %22 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx.22, align 4
  %arrayidx.23 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 23
  %23 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx.23, align 4
  %arrayidx.24 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 24
  %24 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx.24, align 4
  %arrayidx.25 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 25
  %25 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx.25, align 4
  %arrayidx.26 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 26
  %26 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx.26, align 4
  %context_to_sid = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 9
  %27 = call ptr @memset(ptr %context_to_sid, i32 0, i32 2048)
  %lock = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 4
  %28 = call ptr @memset(ptr %s, i32 0, i32 25)
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @sidtab_init.__key, i16 noundef signext 3) #10
  %cache_free_slots = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 5
  %29 = ptrtoint ptr %cache_free_slots to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 256, ptr %cache_free_slots, align 4
  %cache_lru_list = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 6
  %30 = ptrtoint ptr %cache_lru_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %cache_lru_list, ptr %cache_lru_list, align 4
  %prev.i = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cache_lru_list, ptr %prev.i, align 4
  %cache_lock = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %cache_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @sidtab_init.__key.1, i16 noundef signext 3) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sidtab_set_initial(ptr noundef %s, i32 noundef %sid, ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %sid, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -27, i32 %0)
  %1 = icmp ult i32 %0, -27
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %sid, -1
  %entry2 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1
  %context3 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 2
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %context, align 4
  %4 = ptrtoint ptr %context3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %context3, align 4
  %role.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 1
  %5 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %role.i, align 4
  %role2.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 2, i32 1
  %7 = ptrtoint ptr %role2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %role2.i, align 4
  %type.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 2
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type.i, align 4
  %type3.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 2, i32 2
  %10 = ptrtoint ptr %type3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %type3.i, align 4
  %str.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 5
  %11 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %str.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call noalias ptr @kstrdup(ptr noundef nonnull %12, i32 noundef 2592) #10
  %str5.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 2, i32 5
  %13 = ptrtoint ptr %str5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %str5.i, align 4
  %tobool7.not.i = icmp eq ptr %call.i, null
  br i1 %tobool7.not.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %len.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 3
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %str10.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 2, i32 5
  %16 = ptrtoint ptr %str10.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %str10.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.end.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %15, %if.end.i ]
  %len11.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 2, i32 3
  %17 = ptrtoint ptr %len11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink.i, ptr %len11.i, align 4
  %range.i.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4
  %18 = ptrtoint ptr %range.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %range.i.i, align 4
  %range1.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 2, i32 4
  %20 = ptrtoint ptr %range1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %range1.i.i, align 4
  %cat.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 2, i32 4, i32 0, i32 0, i32 1
  %cat11.i.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 1
  %call.i.i = tail call i32 @ebitmap_cpy(ptr noundef %cat.i.i, ptr noundef %cat11.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end12.i.if.then15.i_crit_edge

if.end12.i.if.then15.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i

if.end.i.i:                                       ; preds = %if.end12.i
  %arrayidx14.i.i = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx14.i.i, align 4
  %arrayidx18.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 2, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx18.i.i, align 4
  %cat23.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 2, i32 4, i32 0, i32 1, i32 1
  %cat27.i.i = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 1
  %call28.i.i = tail call i32 @ebitmap_cpy(ptr noundef %cat23.i.i, ptr noundef %cat27.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end5, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ebitmap_destroy(ptr noundef %cat.i.i) #10
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.then30.i.i, %if.end12.i.if.then15.i_crit_edge
  %rc.0.i.ph.i = phi i32 [ %call28.i.i, %if.then30.i.i ], [ %call.i.i, %if.end12.i.if.then15.i_crit_edge ]
  %str16.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 2, i32 5
  %24 = ptrtoint ptr %str16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %str16.i, align 4
  tail call void @kfree(ptr noundef %25) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub
  %cache = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 3
  %26 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %cache, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %arrayidx, align 4
  %call7 = tail call i32 @context_compute_hash(ptr noundef %context) #10
  %call8 = tail call fastcc i32 @context_to_sid(ptr noundef %s, ptr noundef %context, i32 noundef %call7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end5
  %28 = ptrtoint ptr %entry2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sid, ptr %entry2, align 4
  %hash14 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 1
  %29 = ptrtoint ptr %hash14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call7, ptr %hash14, align 4
  %list = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 4
  %mul.i.i = mul i32 %call7, 1640531527
  %shr.i = lshr i32 %mul.i.i, 23
  %arrayidx17 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 9, i32 %shr.i
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx17, align 4
  %32 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %31, ptr %list, align 4
  %tobool.not.i36 = icmp eq ptr %31, null
  br i1 %tobool.not.i36, label %if.then10.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then10.hlist_add_head.exit_crit_edge:          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then10.hlist_add_head.exit_crit_edge
  %34 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %list, ptr %arrayidx17, align 4
  %pprev34.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub, i32 1, i32 4, i32 1
  %35 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %arrayidx17, ptr %pprev34.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head.exit, %if.end5.cleanup_crit_edge, %if.then15.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %hlist_add_head.exit ], [ 0, %if.end5.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ], [ %rc.0.i.ph.i, %if.then15.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @context_compute_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @context_to_sid(ptr noundef %s, ptr noundef %context, i32 noundef %hash) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @context_to_sid.__warned, align 1
  br i1 %.b47, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @context_to_sid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 64, ptr noundef nonnull @.str.4) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %mul.i.i = mul i32 %hash, 1640531527
  %shr.i = lshr i32 %mul.i.i, 23
  %arrayidx = getelementptr %struct.sidtab, ptr %s, i32 0, i32 9, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -56
  %tobool14.not7275 = icmp eq ptr %add.ptr, null
  %tobool14.not72 = or i1 %tobool12.not, %tobool14.not7275
  br i1 %tobool14.not72, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %len9.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 3
  %str5.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 5
  %role16.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 1
  %type19.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 2
  %range1.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4
  %cat11.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 1
  %arrayidx19.i = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1
  %cat29.i = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry1.073 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr35, %for.inc.for.body_crit_edge ]
  %hash15 = getelementptr inbounds %struct.sidtab_entry, ptr %entry1.073, i32 0, i32 1
  %6 = ptrtoint ptr %hash15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hash15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %hash)
  %cmp.not = icmp eq i32 %7, %hash
  br i1 %cmp.not, label %if.end17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %context18 = getelementptr inbounds %struct.sidtab_entry, ptr %entry1.073, i32 0, i32 2
  %len.i = getelementptr inbounds %struct.sidtab_entry, ptr %entry1.073, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i49 = icmp eq i32 %9, 0
  %10 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len9.i, align 4
  br i1 %tobool.not.i49, label %lor.lhs.false.i, label %land.lhs.true.i50

land.lhs.true.i50:                                ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i = icmp ne i32 %11, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i = icmp eq i32 %9, %11
  %or.cond.i = select i1 %tobool2.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.rhs.i, label %land.lhs.true.i50.for.inc_crit_edge

land.lhs.true.i50.for.inc_crit_edge:              ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.rhs.i:                                       ; preds = %land.lhs.true.i50
  %str.i = getelementptr inbounds %struct.sidtab_entry, ptr %entry1.073, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %str.i, align 4
  %14 = ptrtoint ptr %str5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %str5.i, align 4
  %call.i51 = tail call i32 @strcmp(ptr noundef %13, ptr noundef %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool6.not.i = icmp eq i32 %call.i51, 0
  br i1 %tobool6.not.i, label %land.rhs.i.if.then21_crit_edge, label %land.rhs.i.for.inc_crit_edge

land.rhs.i.for.inc_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.rhs.i.if.then21_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

lor.lhs.false.i:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not.i = icmp eq i32 %11, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %lor.lhs.false.i.for.inc_crit_edge

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end12.i:                                       ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %context18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %context18, align 4
  %18 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %context, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp14.i = icmp eq i32 %17, %19
  br i1 %cmp14.i, label %land.lhs.true15.i, label %if.end12.i.for.inc_crit_edge

if.end12.i.for.inc_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true15.i:                                ; preds = %if.end12.i
  %role.i = getelementptr inbounds %struct.sidtab_entry, ptr %entry1.073, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %role.i, align 4
  %22 = ptrtoint ptr %role16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %role16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp17.i = icmp eq i32 %21, %23
  br i1 %cmp17.i, label %land.lhs.true18.i, label %land.lhs.true15.i.for.inc_crit_edge

land.lhs.true15.i.for.inc_crit_edge:              ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true18.i:                                ; preds = %land.lhs.true15.i
  %type.i = getelementptr inbounds %struct.sidtab_entry, ptr %entry1.073, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type.i, align 4
  %26 = ptrtoint ptr %type19.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp20.i = icmp eq i32 %25, %27
  br i1 %cmp20.i, label %land.rhs21.i, label %land.lhs.true18.i.for.inc_crit_edge

land.lhs.true18.i.for.inc_crit_edge:              ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.rhs21.i:                                     ; preds = %land.lhs.true18.i
  %range.i = getelementptr inbounds %struct.sidtab_entry, ptr %entry1.073, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %range.i, align 4
  %30 = ptrtoint ptr %range1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %range1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.i61 = icmp eq i32 %29, %31
  br i1 %cmp.i61, label %land.lhs.true.i64, label %land.rhs21.i.for.inc_crit_edge

land.rhs21.i.for.inc_crit_edge:                   ; preds = %land.rhs21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.i64:                                ; preds = %land.rhs21.i
  %cat.i = getelementptr inbounds %struct.sidtab_entry, ptr %entry1.073, i32 0, i32 2, i32 4, i32 0, i32 0, i32 1
  %call.i62 = tail call i32 @ebitmap_cmp(ptr noundef %cat.i, ptr noundef %cat11.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i64.for.inc_crit_edge, label %land.lhs.true12.i

land.lhs.true.i64.for.inc_crit_edge:              ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true12.i:                                ; preds = %land.lhs.true.i64
  %arrayidx15.i = getelementptr %struct.sidtab_entry, ptr %entry1.073, i32 0, i32 2, i32 4, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx15.i, align 4
  %34 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp21.i = icmp eq i32 %33, %35
  br i1 %cmp21.i, label %context_cmp.exit, label %land.lhs.true12.i.for.inc_crit_edge

land.lhs.true12.i.for.inc_crit_edge:              ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

context_cmp.exit:                                 ; preds = %land.lhs.true12.i
  %cat25.i = getelementptr %struct.sidtab_entry, ptr %entry1.073, i32 0, i32 2, i32 4, i32 0, i32 1, i32 1
  %call30.i = tail call i32 @ebitmap_cmp(ptr noundef %cat25.i, ptr noundef %cat29.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.i.not = icmp eq i32 %call30.i, 0
  br i1 %tobool31.i.not, label %context_cmp.exit.for.inc_crit_edge, label %context_cmp.exit.if.then21_crit_edge

context_cmp.exit.if.then21_crit_edge:             ; preds = %context_cmp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

context_cmp.exit.for.inc_crit_edge:               ; preds = %context_cmp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then21:                                        ; preds = %context_cmp.exit.if.then21_crit_edge, %land.rhs.i.if.then21_crit_edge
  %36 = ptrtoint ptr %entry1.073 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %entry1.073, align 4
  br label %for.end

for.inc:                                          ; preds = %context_cmp.exit.for.inc_crit_edge, %land.lhs.true12.i.for.inc_crit_edge, %land.lhs.true.i64.for.inc_crit_edge, %land.rhs21.i.for.inc_crit_edge, %land.lhs.true18.i.for.inc_crit_edge, %land.lhs.true15.i.for.inc_crit_edge, %if.end12.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %land.rhs.i.for.inc_crit_edge, %land.lhs.true.i50.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %list = getelementptr inbounds %struct.sidtab_entry, ptr %entry1.073, i32 0, i32 4
  %38 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %list, align 4
  %tobool31.not = icmp eq ptr %39, null
  %add.ptr35 = getelementptr i8, ptr %39, i32 -56
  %tobool14.not79 = icmp eq ptr %add.ptr35, null
  %tobool14.not = or i1 %tobool31.not, %tobool14.not79
  br i1 %tobool14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then21, %do.end.for.end_crit_edge
  %sid.0 = phi i32 [ %37, %if.then21 ], [ 0, %do.end.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %call.i52 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i52, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i55

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i55:                                ; preds = %for.end
  %call1.i53 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, label %if.then.i58

land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i58:                                      ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i58, %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !48
  %40 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i.i.i.i.i59 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i60, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i60, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %sid.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sidtab_hash_stats(ptr noundef %sidtab, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.do.body.preheader_crit_edge, label %land.lhs.true.i

entry.do.body.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.body.preheader_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.do.body.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.do.body.preheader_crit_edge:     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #10
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then.i, %land.lhs.true2.i.do.body.preheader_crit_edge, %land.lhs.true.i.do.body.preheader_crit_edge, %entry.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %for.inc43.do.body_crit_edge, %do.body.preheader
  %i.0101 = phi i32 [ %inc44, %for.inc43.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %chain_len.0100 = phi i32 [ %chain_len.1.lcssa, %for.inc43.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %slots_used.099 = phi i32 [ %slots_used.1.lcssa, %for.inc43.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %entries.098 = phi i32 [ %entries.1.lcssa, %for.inc43.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %max_chain_len.097 = phi i32 [ %max_chain_len.1.lcssa, %for.inc43.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %cur_bucket.096 = phi i32 [ %cur_bucket.1.lcssa, %for.inc43.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b68 = load i1, ptr @sidtab_hash_stats.__warned, align 1
  br i1 %.b68, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sidtab_hash_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 124, ptr noundef nonnull @.str.4) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %arrayidx = getelementptr %struct.sidtab, ptr %sidtab, i32 0, i32 9, i32 %i.0101
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -56
  %tobool15.not85103 = icmp eq ptr %add.ptr, null
  %tobool15.not85 = or i1 %tobool12.not, %tobool15.not85103
  br i1 %tobool15.not85, label %do.end.for.inc43_crit_edge, label %for.body16.peel

do.end.for.inc43_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc43

for.body16.peel:                                  ; preds = %do.end
  %inc.peel = add i32 %entries.098, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0101, i32 %cur_bucket.096)
  %cmp17.peel = icmp eq i32 %i.0101, %cur_bucket.096
  br i1 %cmp17.peel, label %if.then18.peel, label %if.else.peel

if.else.peel:                                     ; preds = %for.body16.peel
  call void @__sanitizer_cov_trace_pc() #12
  %6 = tail call i32 @llvm.smax.i32(i32 %chain_len.0100, i32 %max_chain_len.097)
  br label %for.inc.peel

if.then18.peel:                                   ; preds = %for.body16.peel
  call void @__sanitizer_cov_trace_pc() #12
  %inc19.peel = add i32 %chain_len.0100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chain_len.0100)
  %cmp20.peel = icmp eq i32 %chain_len.0100, 0
  %inc22.peel = zext i1 %cmp20.peel to i32
  %spec.select69.peel = add i32 %slots_used.099, %inc22.peel
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then18.peel, %if.else.peel
  %max_chain_len.3.peel = phi i32 [ %6, %if.else.peel ], [ %max_chain_len.097, %if.then18.peel ]
  %slots_used.2.peel = phi i32 [ %slots_used.099, %if.else.peel ], [ %spec.select69.peel, %if.then18.peel ]
  %chain_len.2.peel = phi i32 [ 0, %if.else.peel ], [ %inc19.peel, %if.then18.peel ]
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %5, align 4
  %tobool35.not.peel = icmp eq ptr %8, null
  %add.ptr39.peel = getelementptr i8, ptr %8, i32 -56
  %tobool15.not104.peel = icmp eq ptr %add.ptr39.peel, null
  %tobool15.not.peel = or i1 %tobool35.not.peel, %tobool15.not104.peel
  br i1 %tobool15.not.peel, label %for.inc.peel.for.inc43_crit_edge, label %for.inc.peel.for.body16_crit_edge

for.inc.peel.for.body16_crit_edge:                ; preds = %for.inc.peel
  br label %for.body16

for.inc.peel.for.inc43_crit_edge:                 ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc43

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.inc.peel.for.body16_crit_edge
  %chain_len.191 = phi i32 [ %inc19, %for.body16.for.body16_crit_edge ], [ %chain_len.2.peel, %for.inc.peel.for.body16_crit_edge ]
  %slots_used.190 = phi i32 [ %spec.select69, %for.body16.for.body16_crit_edge ], [ %slots_used.2.peel, %for.inc.peel.for.body16_crit_edge ]
  %entries.189 = phi i32 [ %inc, %for.body16.for.body16_crit_edge ], [ %inc.peel, %for.inc.peel.for.body16_crit_edge ]
  %9 = phi ptr [ %11, %for.body16.for.body16_crit_edge ], [ %8, %for.inc.peel.for.body16_crit_edge ]
  %inc = add i32 %entries.189, 1
  %inc19 = add i32 %chain_len.191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chain_len.191)
  %cmp20 = icmp eq i32 %chain_len.191, 0
  %inc22 = zext i1 %cmp20 to i32
  %spec.select69 = add i32 %slots_used.190, %inc22
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %9, align 4
  %tobool35.not = icmp eq ptr %11, null
  %add.ptr39 = getelementptr i8, ptr %11, i32 -56
  %tobool15.not104 = icmp eq ptr %add.ptr39, null
  %tobool15.not = or i1 %tobool35.not, %tobool15.not104
  br i1 %tobool15.not, label %for.body16.for.inc43_crit_edge, label %for.body16.for.body16_crit_edge, !llvm.loop !49

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16

for.body16.for.inc43_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc43

for.inc43:                                        ; preds = %for.body16.for.inc43_crit_edge, %for.inc.peel.for.inc43_crit_edge, %do.end.for.inc43_crit_edge
  %cur_bucket.1.lcssa = phi i32 [ %cur_bucket.096, %do.end.for.inc43_crit_edge ], [ %i.0101, %for.body16.for.inc43_crit_edge ], [ %i.0101, %for.inc.peel.for.inc43_crit_edge ]
  %max_chain_len.1.lcssa = phi i32 [ %max_chain_len.097, %do.end.for.inc43_crit_edge ], [ %max_chain_len.3.peel, %for.body16.for.inc43_crit_edge ], [ %max_chain_len.3.peel, %for.inc.peel.for.inc43_crit_edge ]
  %entries.1.lcssa = phi i32 [ %entries.098, %do.end.for.inc43_crit_edge ], [ %inc.peel, %for.inc.peel.for.inc43_crit_edge ], [ %inc, %for.body16.for.inc43_crit_edge ]
  %slots_used.1.lcssa = phi i32 [ %slots_used.099, %do.end.for.inc43_crit_edge ], [ %slots_used.2.peel, %for.inc.peel.for.inc43_crit_edge ], [ %spec.select69, %for.body16.for.inc43_crit_edge ]
  %chain_len.1.lcssa = phi i32 [ %chain_len.0100, %do.end.for.inc43_crit_edge ], [ %chain_len.2.peel, %for.inc.peel.for.inc43_crit_edge ], [ %inc19, %for.body16.for.inc43_crit_edge ]
  %inc44 = add nuw nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc44, 512
  br i1 %exitcond.not, label %for.end45, label %for.inc43.do.body_crit_edge

for.inc43.do.body_crit_edge:                      ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.end45:                                        ; preds = %for.inc43
  %call.i74 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i74, label %for.end45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i77

for.end45.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i77:                                ; preds = %for.end45
  %call1.i75 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75)
  %tobool.not.i76 = icmp eq i32 %call1.i75, 0
  br i1 %tobool.not.i76, label %land.lhs.true.i77.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i79

land.lhs.true.i77.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i79:                               ; preds = %land.lhs.true.i77
  %.b4.i78 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i78, label %land.lhs.true2.i79.rcu_read_unlock.exit_crit_edge, label %if.then.i80

land.lhs.true2.i79.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i80:                                      ; preds = %land.lhs.true2.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i80, %land.lhs.true2.i79.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i77.rcu_read_unlock.exit_crit_edge, %for.end45.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !48
  %12 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i.i.i.i.i81 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i81 to ptr
  %preempt_count.i.i.i.i82 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i82, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i82, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %16 = tail call i32 @llvm.smax.i32(i32 %chain_len.1.lcssa, i32 %max_chain_len.1.lcssa)
  %call49 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %entries.1.lcssa, i32 noundef %slots_used.1.lcssa, i32 noundef 512, i32 noundef %16) #10
  ret i32 %call49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sidtab_search_entry(ptr noundef %s, i32 noundef %sid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sid)
  %cmp.not.i = icmp eq i32 %sid, 0
  br i1 %cmp.not.i, label %entry.if.end9.i_crit_edge, label %if.then.i

entry.if.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sid)
  %cmp2.i = icmp ugt i32 %sid, 27
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %sid, -28
  %count1.i.i = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %count1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %count1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i)
  %cmp.not.i.i = icmp ugt i32 %1, %sub.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.i.i:                                       ; preds = %if.then3.i
  %div50.i.i.i = lshr i32 %sub.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i)
  %cmp3.i.i.i.i = icmp ugt i32 %sub.i, 63
  br i1 %cmp3.i.i.i.i, label %if.end.i.i.while.body.i.i.i.i_crit_edge, label %if.end.i.i.while.end.i.i.i_crit_edge

if.end.i.i.while.end.i.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

if.end.i.i.while.body.i.i.i.i_crit_edge:          ; preds = %if.end.i.i
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, %if.end.i.i.while.body.i.i.i.i_crit_edge
  %level.05.i.i.i.i = phi i32 [ %inc.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ 0, %if.end.i.i.while.body.i.i.i.i_crit_edge ]
  %capacity.04.i.i.i.i = phi i32 [ %shl.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ 64, %if.end.i.i.while.body.i.i.i.i_crit_edge ]
  %shl.i.i.i.i = shl i32 %capacity.04.i.i.i.i, 10
  %inc.i.i.i.i = add i32 %level.05.i.i.i.i, 1
  %cmp.i.i.not.i.i = icmp ugt i32 %shl.i.i.i.i, %sub.i
  br i1 %cmp.i.i.not.i.i, label %sidtab_level_from_count.exit.i.i.i, label %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge

while.body.i.i.i.i.while.body.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i.i

sidtab_level_from_count.exit.i.i.i:               ; preds = %while.body.i.i.i.i
  %arrayidx.i.i.i = getelementptr [4 x %union.sidtab_entry_inner], ptr %s, i32 0, i32 %inc.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i.i.i)
  %cmp3.not60.i.i.i = icmp eq i32 %inc.i.i.i.i, 0
  br i1 %cmp3.not60.i.i.i, label %sidtab_level_from_count.exit.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.preheader.i.i

sidtab_level_from_count.exit.i.i.i.while.end.i.i.i_crit_edge: ; preds = %sidtab_level_from_count.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

while.body.i.preheader.i.i:                       ; preds = %sidtab_level_from_count.exit.i.i.i
  %mul.i.i.i = mul i32 %inc.i.i.i.i, 10
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end15.i.i.i.while.body.i.i.i_crit_edge, %while.body.i.preheader.i.i
  %leaf_index.064.i.i.i = phi i32 [ %and.i.i.i, %if.end15.i.i.i.while.body.i.i.i_crit_edge ], [ %div50.i.i.i, %while.body.i.preheader.i.i ]
  %capacity_shift.063.i.i.i = phi i32 [ %sub.i.i.i, %if.end15.i.i.i.while.body.i.i.i_crit_edge ], [ %mul.i.i.i, %while.body.i.preheader.i.i ]
  %level.062.i.i.i = phi i32 [ %dec.i.i.i, %if.end15.i.i.i.while.body.i.i.i_crit_edge ], [ %inc.i.i.i.i, %while.body.i.preheader.i.i ]
  %entry1.061.i.i.i = phi ptr [ %arrayidx4.i.i.i, %if.end15.i.i.i.while.body.i.i.i_crit_edge ], [ %arrayidx.i.i.i, %while.body.i.preheader.i.i ]
  %sub.i.i.i = add i32 %capacity_shift.063.i.i.i, -10
  %2 = ptrtoint ptr %entry1.061.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1.061.i.i.i, align 4
  %shr.i.i.i = lshr i32 %leaf_index.064.i.i.i, %sub.i.i.i
  %arrayidx4.i.i.i = getelementptr [1024 x %union.sidtab_entry_inner], ptr %3, i32 0, i32 %shr.i.i.i
  %4 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4.i.i.i, align 4
  %tobool6.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i.i.i, label %while.body.i.i.i.if.end9.i_crit_edge, label %if.end15.i.i.i

while.body.i.i.i.if.end9.i_crit_edge:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end15.i.i.i:                                   ; preds = %while.body.i.i.i
  %notmask.i.i.i = shl nsw i32 -1, %sub.i.i.i
  %sub5.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i.i = and i32 %leaf_index.064.i.i.i, %sub5.i.i.i
  %dec.i.i.i = add i32 %level.062.i.i.i, -1
  %cmp3.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp3.not.i.i.i, label %if.end15.i.i.i.if.end25.i.i.i_crit_edge, label %if.end15.i.i.i.while.body.i.i.i_crit_edge

if.end15.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

if.end15.i.i.i.if.end25.i.i.i_crit_edge:          ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i.i

while.end.i.i.i:                                  ; preds = %sidtab_level_from_count.exit.i.i.i.while.end.i.i.i_crit_edge, %if.end.i.i.while.end.i.i.i_crit_edge
  %entry1.0.lcssa.i.ph.i.i = phi ptr [ %arrayidx.i.i.i, %sidtab_level_from_count.exit.i.i.i.while.end.i.i.i_crit_edge ], [ %s, %if.end.i.i.while.end.i.i.i_crit_edge ]
  %6 = ptrtoint ptr %entry1.0.lcssa.i.ph.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr.i.i = load ptr, ptr %entry1.0.lcssa.i.ph.i.i, align 4
  %tobool16.not.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool16.not.i.i.i, label %while.end.i.i.i.if.end9.i_crit_edge, label %while.end.i.i.i.if.end25.i.i.i_crit_edge

while.end.i.i.i.if.end25.i.i.i_crit_edge:         ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i.i

while.end.i.i.i.if.end9.i_crit_edge:              ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end25.i.i.i:                                   ; preds = %while.end.i.i.i.if.end25.i.i.i_crit_edge, %if.end15.i.i.i.if.end25.i.i.i_crit_edge
  %7 = phi ptr [ %.pr.i.i, %while.end.i.i.i.if.end25.i.i.i_crit_edge ], [ %5, %if.end15.i.i.i.if.end25.i.i.i_crit_edge ]
  %rem.i.i.i = and i32 %sub.i, 63
  %arrayidx27.i.i.i = getelementptr [64 x %struct.sidtab_entry], ptr %7, i32 0, i32 %rem.i.i.i
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  %sub.i.i = add nsw i32 %sid, -1
  %arrayidx.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  %entry4.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub.i.i, i32 1
  br i1 %tobool.not.i.i, label %if.else.i.if.end9.i_crit_edge, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.i:                                         ; preds = %if.else.i.if.end.i_crit_edge, %if.end25.i.i.i
  %entry1.0.i = phi ptr [ %entry4.i.i, %if.else.i.if.end.i_crit_edge ], [ %arrayidx27.i.i.i, %if.end25.i.i.i ]
  %tobool.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.sidtab_entry, ptr %entry1.0.i, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not.i.not = icmp eq i32 %11, 0
  br i1 %tobool5.not.i.not, label %land.lhs.true.i.sidtab_search_core.exit_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

land.lhs.true.i.sidtab_search_core.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sidtab_search_core.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge, %if.else.i.if.end9.i_crit_edge, %while.end.i.i.i.if.end9.i_crit_edge, %while.body.i.i.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge, %entry.if.end9.i_crit_edge
  %arrayidx.i18.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i19.i = icmp eq i32 %13, 0
  %entry4.i20.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 2, i32 1
  %spec.select.i21.i = select i1 %tobool.not.i19.i, ptr null, ptr %entry4.i20.i
  br label %sidtab_search_core.exit

sidtab_search_core.exit:                          ; preds = %if.end9.i, %land.lhs.true.i.sidtab_search_core.exit_crit_edge
  %retval.1.i = phi ptr [ %spec.select.i21.i, %if.end9.i ], [ %entry1.0.i, %land.lhs.true.i.sidtab_search_core.exit_crit_edge ]
  ret ptr %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sidtab_search_entry_force(ptr noundef %s, i32 noundef %sid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sid)
  %cmp.not.i = icmp eq i32 %sid, 0
  br i1 %cmp.not.i, label %entry.if.end9.i_crit_edge, label %if.then.i

entry.if.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sid)
  %cmp2.i = icmp ugt i32 %sid, 27
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %sid, -28
  %count1.i.i = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %count1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %count1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i)
  %cmp.not.i.i = icmp ugt i32 %1, %sub.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.i.i:                                       ; preds = %if.then3.i
  %div50.i.i.i = lshr i32 %sub.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i)
  %cmp3.i.i.i.i = icmp ugt i32 %sub.i, 63
  br i1 %cmp3.i.i.i.i, label %if.end.i.i.while.body.i.i.i.i_crit_edge, label %if.end.i.i.while.end.i.i.i_crit_edge

if.end.i.i.while.end.i.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

if.end.i.i.while.body.i.i.i.i_crit_edge:          ; preds = %if.end.i.i
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge, %if.end.i.i.while.body.i.i.i.i_crit_edge
  %level.05.i.i.i.i = phi i32 [ %inc.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ 0, %if.end.i.i.while.body.i.i.i.i_crit_edge ]
  %capacity.04.i.i.i.i = phi i32 [ %shl.i.i.i.i, %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ 64, %if.end.i.i.while.body.i.i.i.i_crit_edge ]
  %shl.i.i.i.i = shl i32 %capacity.04.i.i.i.i, 10
  %inc.i.i.i.i = add i32 %level.05.i.i.i.i, 1
  %cmp.i.i.not.i.i = icmp ugt i32 %shl.i.i.i.i, %sub.i
  br i1 %cmp.i.i.not.i.i, label %sidtab_level_from_count.exit.i.i.i, label %while.body.i.i.i.i.while.body.i.i.i.i_crit_edge

while.body.i.i.i.i.while.body.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i.i

sidtab_level_from_count.exit.i.i.i:               ; preds = %while.body.i.i.i.i
  %arrayidx.i.i.i = getelementptr [4 x %union.sidtab_entry_inner], ptr %s, i32 0, i32 %inc.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i.i.i)
  %cmp3.not60.i.i.i = icmp eq i32 %inc.i.i.i.i, 0
  br i1 %cmp3.not60.i.i.i, label %sidtab_level_from_count.exit.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.preheader.i.i

sidtab_level_from_count.exit.i.i.i.while.end.i.i.i_crit_edge: ; preds = %sidtab_level_from_count.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i.i

while.body.i.preheader.i.i:                       ; preds = %sidtab_level_from_count.exit.i.i.i
  %mul.i.i.i = mul i32 %inc.i.i.i.i, 10
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end15.i.i.i.while.body.i.i.i_crit_edge, %while.body.i.preheader.i.i
  %leaf_index.064.i.i.i = phi i32 [ %and.i.i.i, %if.end15.i.i.i.while.body.i.i.i_crit_edge ], [ %div50.i.i.i, %while.body.i.preheader.i.i ]
  %capacity_shift.063.i.i.i = phi i32 [ %sub.i.i.i, %if.end15.i.i.i.while.body.i.i.i_crit_edge ], [ %mul.i.i.i, %while.body.i.preheader.i.i ]
  %level.062.i.i.i = phi i32 [ %dec.i.i.i, %if.end15.i.i.i.while.body.i.i.i_crit_edge ], [ %inc.i.i.i.i, %while.body.i.preheader.i.i ]
  %entry1.061.i.i.i = phi ptr [ %arrayidx4.i.i.i, %if.end15.i.i.i.while.body.i.i.i_crit_edge ], [ %arrayidx.i.i.i, %while.body.i.preheader.i.i ]
  %sub.i.i.i = add i32 %capacity_shift.063.i.i.i, -10
  %2 = ptrtoint ptr %entry1.061.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1.061.i.i.i, align 4
  %shr.i.i.i = lshr i32 %leaf_index.064.i.i.i, %sub.i.i.i
  %arrayidx4.i.i.i = getelementptr [1024 x %union.sidtab_entry_inner], ptr %3, i32 0, i32 %shr.i.i.i
  %4 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4.i.i.i, align 4
  %tobool6.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i.i.i, label %while.body.i.i.i.if.end9.i_crit_edge, label %if.end15.i.i.i

while.body.i.i.i.if.end9.i_crit_edge:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end15.i.i.i:                                   ; preds = %while.body.i.i.i
  %notmask.i.i.i = shl nsw i32 -1, %sub.i.i.i
  %sub5.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i.i = and i32 %leaf_index.064.i.i.i, %sub5.i.i.i
  %dec.i.i.i = add i32 %level.062.i.i.i, -1
  %cmp3.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp3.not.i.i.i, label %if.end15.i.i.i.if.end25.i.i.i_crit_edge, label %if.end15.i.i.i.while.body.i.i.i_crit_edge

if.end15.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i.i

if.end15.i.i.i.if.end25.i.i.i_crit_edge:          ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i.i

while.end.i.i.i:                                  ; preds = %sidtab_level_from_count.exit.i.i.i.while.end.i.i.i_crit_edge, %if.end.i.i.while.end.i.i.i_crit_edge
  %entry1.0.lcssa.i.ph.i.i = phi ptr [ %arrayidx.i.i.i, %sidtab_level_from_count.exit.i.i.i.while.end.i.i.i_crit_edge ], [ %s, %if.end.i.i.while.end.i.i.i_crit_edge ]
  %6 = ptrtoint ptr %entry1.0.lcssa.i.ph.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr.i.i = load ptr, ptr %entry1.0.lcssa.i.ph.i.i, align 4
  %tobool16.not.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool16.not.i.i.i, label %while.end.i.i.i.if.end9.i_crit_edge, label %while.end.i.i.i.if.end25.i.i.i_crit_edge

while.end.i.i.i.if.end25.i.i.i_crit_edge:         ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i.i

while.end.i.i.i.if.end9.i_crit_edge:              ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end25.i.i.i:                                   ; preds = %while.end.i.i.i.if.end25.i.i.i_crit_edge, %if.end15.i.i.i.if.end25.i.i.i_crit_edge
  %7 = phi ptr [ %.pr.i.i, %while.end.i.i.i.if.end25.i.i.i_crit_edge ], [ %5, %if.end15.i.i.i.if.end25.i.i.i_crit_edge ]
  %rem.i.i.i = and i32 %sub.i, 63
  %arrayidx27.i.i.i = getelementptr [64 x %struct.sidtab_entry], ptr %7, i32 0, i32 %rem.i.i.i
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  %sub.i.i = add nsw i32 %sid, -1
  %arrayidx.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  %entry4.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %sub.i.i, i32 1
  br i1 %tobool.not.i.i, label %if.else.i.if.end9.i_crit_edge, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.i:                                         ; preds = %if.else.i.if.end.i_crit_edge, %if.end25.i.i.i
  %entry1.0.i = phi ptr [ %entry4.i.i, %if.else.i.if.end.i_crit_edge ], [ %arrayidx27.i.i.i, %if.end25.i.i.i ]
  %tobool.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.end.i.sidtab_search_core.exit_crit_edge

if.end.i.sidtab_search_core.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sidtab_search_core.exit

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i.if.end9.i_crit_edge, %if.else.i.if.end9.i_crit_edge, %while.end.i.i.i.if.end9.i_crit_edge, %while.body.i.i.i.if.end9.i_crit_edge, %if.then3.i.if.end9.i_crit_edge, %entry.if.end9.i_crit_edge
  %arrayidx.i18.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i19.i = icmp eq i32 %11, 0
  %entry4.i20.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 2, i32 1
  %spec.select.i21.i = select i1 %tobool.not.i19.i, ptr null, ptr %entry4.i20.i
  br label %sidtab_search_core.exit

sidtab_search_core.exit:                          ; preds = %if.end9.i, %if.end.i.sidtab_search_core.exit_crit_edge
  %retval.1.i = phi ptr [ %spec.select.i21.i, %if.end9.i ], [ %entry1.0.i, %if.end.i.sidtab_search_core.exit_crit_edge ]
  ret ptr %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sidtab_context_to_sid(ptr noundef %s, ptr noundef %context, ptr nocapture noundef writeonly %sid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @context_compute_hash(ptr noundef %context) #10
  %call1 = tail call fastcc i32 @context_to_sid(ptr noundef %s, ptr noundef %context, i32 noundef %call)
  %0 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %sid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call7 = tail call fastcc i32 @context_to_sid(ptr noundef %s, ptr noundef %context, i32 noundef %call)
  %1 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call7, ptr %sid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.body2.out_unlock_crit_edge

do.body2.out_unlock_crit_edge:                    ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end10:                                         ; preds = %do.body2
  %frozen = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %frozen, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool11.not = icmp eq i8 %3, 0
  br i1 %tobool11.not, label %if.end15, label %if.end10.out_unlock_crit_edge, !prof !53

if.end10.out_unlock_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end15:                                         ; preds = %if.end10
  %count16 = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %count16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count16, align 4
  %convert17 = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 2
  %6 = ptrtoint ptr %convert17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %convert17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp18 = icmp eq i32 %5, -1
  br i1 %cmp18, label %if.end15.out_unlock_crit_edge, label %if.end21

if.end15.out_unlock_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end21:                                         ; preds = %if.end15
  %call22 = tail call fastcc ptr @sidtab_do_lookup(ptr noundef %s, i32 noundef %5, i32 noundef 1)
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.out_unlock_crit_edge, label %if.end25

if.end21.out_unlock_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end25:                                         ; preds = %if.end21
  %add26 = add i32 %5, 28
  %8 = ptrtoint ptr %call22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add26, ptr %call22, align 4
  %hash28 = getelementptr inbounds %struct.sidtab_entry, ptr %call22, i32 0, i32 1
  %9 = ptrtoint ptr %hash28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %hash28, align 4
  %context29 = getelementptr inbounds %struct.sidtab_entry, ptr %call22, i32 0, i32 2
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %context, align 4
  %12 = ptrtoint ptr %context29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %context29, align 4
  %role.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 1
  %13 = ptrtoint ptr %role.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %role.i, align 4
  %role2.i = getelementptr inbounds %struct.sidtab_entry, ptr %call22, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %role2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %role2.i, align 4
  %type.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 2
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  %type3.i = getelementptr inbounds %struct.sidtab_entry, ptr %call22, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %type3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %type3.i, align 4
  %str.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 5
  %19 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %str.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end25
  %call.i = tail call noalias ptr @kstrdup(ptr noundef nonnull %20, i32 noundef 2592) #10
  %str5.i = getelementptr inbounds %struct.sidtab_entry, ptr %call22, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %str5.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %str5.i, align 4
  %tobool7.not.i = icmp eq ptr %call.i, null
  br i1 %tobool7.not.i, label %if.then.i.out_unlock_crit_edge, label %if.end.i

if.then.i.out_unlock_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %len.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 3
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %str10.i = getelementptr inbounds %struct.sidtab_entry, ptr %call22, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %str10.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %str10.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.end.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %23, %if.end.i ]
  %len11.i = getelementptr inbounds %struct.sidtab_entry, ptr %call22, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %len11.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink.i, ptr %len11.i, align 4
  %range.i.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4
  %26 = ptrtoint ptr %range.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %range.i.i, align 4
  %range1.i.i = getelementptr inbounds %struct.sidtab_entry, ptr %call22, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %range1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %range1.i.i, align 4
  %cat.i.i = getelementptr inbounds %struct.sidtab_entry, ptr %call22, i32 0, i32 2, i32 4, i32 0, i32 0, i32 1
  %cat11.i.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 1
  %call.i.i = tail call i32 @ebitmap_cpy(ptr noundef %cat.i.i, ptr noundef %cat11.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end12.i.if.then15.i_crit_edge

if.end12.i.if.then15.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i

if.end.i.i:                                       ; preds = %if.end12.i
  %arrayidx14.i.i = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx14.i.i, align 4
  %arrayidx18.i.i = getelementptr %struct.sidtab_entry, ptr %call22, i32 0, i32 2, i32 4, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx18.i.i, align 4
  %cat23.i.i = getelementptr %struct.sidtab_entry, ptr %call22, i32 0, i32 2, i32 4, i32 0, i32 1, i32 1
  %cat27.i.i = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 1
  %call28.i.i = tail call i32 @ebitmap_cpy(ptr noundef %cat23.i.i, ptr noundef %cat27.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end33, label %if.then30.i.i

if.then30.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ebitmap_destroy(ptr noundef %cat.i.i) #10
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.then30.i.i, %if.end12.i.if.then15.i_crit_edge
  %rc.0.i.ph.i = phi i32 [ %call28.i.i, %if.then30.i.i ], [ %call.i.i, %if.end12.i.if.then15.i_crit_edge ]
  %str16.i = getelementptr inbounds %struct.sidtab_entry, ptr %call22, i32 0, i32 2, i32 5
  %32 = ptrtoint ptr %str16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %str16.i, align 4
  tail call void @kfree(ptr noundef %33) #10
  br label %out_unlock

if.end33:                                         ; preds = %if.end.i.i
  %tobool34.not = icmp eq ptr %7, null
  br i1 %tobool34.not, label %if.end33.if.end59_crit_edge, label %if.then35

if.end33.if.end59_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then35:                                        ; preds = %if.end33
  %target = getelementptr inbounds %struct.sidtab_convert_params, ptr %7, i32 0, i32 2
  %34 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %target, align 4
  %call36 = tail call fastcc ptr @sidtab_do_lookup(ptr noundef %35, i32 noundef %5, i32 noundef 1)
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @context_destroy(ptr noundef %context29)
  br label %out_unlock

if.end40:                                         ; preds = %if.then35
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %7, align 4
  %context41 = getelementptr inbounds %struct.sidtab_entry, ptr %call36, i32 0, i32 2
  %args = getelementptr inbounds %struct.sidtab_convert_params, ptr %7, i32 0, i32 1
  %38 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %args, align 4
  %call42 = tail call i32 %37(ptr noundef %context, ptr noundef %context41, ptr noundef %39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @context_destroy(ptr noundef %context29)
  br label %out_unlock

if.end46:                                         ; preds = %if.end40
  %40 = ptrtoint ptr %call36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add26, ptr %call36, align 4
  %call51 = tail call i32 @context_compute_hash(ptr noundef %context41) #10
  %hash52 = getelementptr inbounds %struct.sidtab_entry, ptr %call36, i32 0, i32 1
  %41 = ptrtoint ptr %hash52 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call51, ptr %hash52, align 4
  %add53 = add nuw i32 %5, 1
  %42 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %target, align 4
  %count55 = getelementptr inbounds %struct.sidtab, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %count55 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add53, ptr %count55, align 4
  %list = getelementptr inbounds %struct.sidtab_entry, ptr %call36, i32 0, i32 4
  %45 = load ptr, ptr %target, align 4
  %46 = load i32, ptr %hash52, align 4
  %mul.i.i = mul i32 %46, 1640531527
  %shr.i = lshr i32 %mul.i.i, 23
  %arrayidx = getelementptr %struct.sidtab, ptr %45, i32 0, i32 9, i32 %shr.i
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx, align 4
  %49 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %list, align 4
  %pprev.i = getelementptr inbounds %struct.sidtab_entry, ptr %call36, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %list, ptr %arrayidx, align 4
  %tobool.not.i154 = icmp eq ptr %48, null
  br i1 %tobool.not.i154, label %if.end46.if.end59_crit_edge, label %do.body49.i

if.end46.if.end59_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

do.body49.i:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %48, i32 0, i32 1
  %52 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %list, ptr %pprev51.i, align 4
  br label %if.end59

if.end59:                                         ; preds = %do.body49.i, %if.end46.if.end59_crit_edge, %if.end33.if.end59_crit_edge
  %len = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 3
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool60.not = icmp eq i32 %54, 0
  br i1 %tobool60.not, label %if.end59.if.end67_crit_edge, label %do.end64

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

do.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %str.i, align 4
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %56) #14
  br label %if.end67

if.end67:                                         ; preds = %do.end64, %if.end59.if.end67_crit_edge
  %57 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add26, ptr %sid, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  %add83 = add nuw i32 %5, 1
  %58 = ptrtoint ptr %count16 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 %add83, ptr %count16, align 4
  %list93 = getelementptr inbounds %struct.sidtab_entry, ptr %call22, i32 0, i32 4
  %59 = ptrtoint ptr %hash28 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hash28, align 4
  %mul.i.i155 = mul i32 %60, 1640531527
  %shr.i156 = lshr i32 %mul.i.i155, 23
  %arrayidx97 = getelementptr %struct.sidtab, ptr %s, i32 0, i32 9, i32 %shr.i156
  %61 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx97, align 4
  %63 = ptrtoint ptr %list93 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %list93, align 4
  %pprev.i157 = getelementptr inbounds %struct.sidtab_entry, ptr %call22, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %pprev.i157 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %arrayidx97, ptr %pprev.i157, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  %65 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %list93, ptr %arrayidx97, align 4
  %tobool.not.i158 = icmp eq ptr %62, null
  br i1 %tobool.not.i158, label %if.end67.out_unlock_crit_edge, label %do.body49.i160

if.end67.out_unlock_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

do.body49.i160:                                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i159 = getelementptr inbounds %struct.hlist_node, ptr %62, i32 0, i32 1
  %66 = ptrtoint ptr %pprev51.i159 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %list93, ptr %pprev51.i159, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %do.body49.i160, %if.end67.out_unlock_crit_edge, %if.then44, %if.then38, %if.then15.i, %if.then.i.out_unlock_crit_edge, %if.end21.out_unlock_crit_edge, %if.end15.out_unlock_crit_edge, %if.end10.out_unlock_crit_edge, %do.body2.out_unlock_crit_edge
  %rc.0 = phi i32 [ 0, %do.body2.out_unlock_crit_edge ], [ -75, %if.end15.out_unlock_crit_edge ], [ %call42, %if.then44 ], [ -12, %if.then38 ], [ -12, %if.end21.out_unlock_crit_edge ], [ -116, %if.end10.out_unlock_crit_edge ], [ 0, %if.end67.out_unlock_crit_edge ], [ 0, %do.body49.i160 ], [ -12, %if.then.i.out_unlock_crit_edge ], [ %rc.0.i.ph.i, %if.then15.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_unlock ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sidtab_do_lookup(ptr nocapture noundef %s, i32 noundef %index, i32 noundef %alloc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %div50 = lshr i32 %index, 6
  %add = add i32 %index, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp3.i = icmp ugt i32 %add, 64
  br i1 %cmp3.i, label %entry.while.body.i_crit_edge, label %entry.sidtab_level_from_count.exit_crit_edge

entry.sidtab_level_from_count.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sidtab_level_from_count.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %level.05.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %capacity.04.i = phi i32 [ %shl.i, %while.body.i.while.body.i_crit_edge ], [ 64, %entry.while.body.i_crit_edge ]
  %shl.i = shl i32 %capacity.04.i, 10
  %inc.i = add i32 %level.05.i, 1
  %cmp.i = icmp ult i32 %shl.i, %add
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.sidtab_level_from_count.exit_crit_edge

while.body.i.sidtab_level_from_count.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sidtab_level_from_count.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

sidtab_level_from_count.exit:                     ; preds = %while.body.i.sidtab_level_from_count.exit_crit_edge, %entry.sidtab_level_from_count.exit_crit_edge
  %level.0.lcssa.i = phi i32 [ 0, %entry.sidtab_level_from_count.exit_crit_edge ], [ %inc.i, %while.body.i.sidtab_level_from_count.exit_crit_edge ]
  %mul = mul i32 %level.0.lcssa.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alloc)
  %tobool.not = icmp eq i32 %alloc, 0
  br i1 %tobool.not, label %sidtab_level_from_count.exit.if.end_crit_edge, label %land.lhs.true

sidtab_level_from_count.exit.if.end_crit_edge:    ; preds = %sidtab_level_from_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %sidtab_level_from_count.exit
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.if.end7.i_crit_edge

land.lhs.true.if.end7.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then.i:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 4096) #15
  %3 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %s, align 4
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.then.i.if.end7.i_crit_edge, %land.lhs.true.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0.lcssa.i)
  %cmp.not40.i = icmp eq i32 %level.0.lcssa.i, 0
  br i1 %cmp.not40.i, label %while.end.thread, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %l.041.i = phi i32 [ %inc.i51, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end7.i.for.body.i_crit_edge ]
  %arrayidx9.i = getelementptr [4 x %union.sidtab_entry_inner], ptr %s, i32 0, i32 %l.041.i
  %4 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx9.i, align 4
  %tobool10.not.i = icmp eq ptr %5, null
  br i1 %tobool10.not.i, label %if.then11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i39.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 4096) #15
  %7 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i39.i, ptr %arrayidx9.i, align 4
  %tobool17.not.i = icmp eq ptr %call7.i.i39.i, null
  br i1 %tobool17.not.i, label %if.then11.i.cleanup_crit_edge, label %if.end19.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %l.041.i, -1
  %arrayidx24.i = getelementptr [4 x %union.sidtab_entry_inner], ptr %s, i32 0, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx24.i, align 4
  %10 = ptrtoint ptr %call7.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call7.i.i39.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end19.i, %for.body.i.for.inc.i_crit_edge
  %inc.i51 = add i32 %l.041.i, 1
  %cmp.not.i = icmp ugt i32 %inc.i51, %level.0.lcssa.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %sidtab_level_from_count.exit.if.end_crit_edge
  %arrayidx = getelementptr [4 x %union.sidtab_entry_inner], ptr %s, i32 0, i32 %level.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level.0.lcssa.i)
  %cmp3.not60 = icmp eq i32 %level.0.lcssa.i, 0
  br i1 %cmp3.not60, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %if.end.while.body_crit_edge
  %leaf_index.064 = phi i32 [ %and, %if.end15.while.body_crit_edge ], [ %div50, %if.end.while.body_crit_edge ]
  %capacity_shift.063 = phi i32 [ %sub, %if.end15.while.body_crit_edge ], [ %mul, %if.end.while.body_crit_edge ]
  %level.062 = phi i32 [ %dec, %if.end15.while.body_crit_edge ], [ %level.0.lcssa.i, %if.end.while.body_crit_edge ]
  %entry1.061 = phi ptr [ %arrayidx4, %if.end15.while.body_crit_edge ], [ %arrayidx, %if.end.while.body_crit_edge ]
  %sub = add i32 %capacity_shift.063, -10
  %dec = add i32 %level.062, -1
  %11 = ptrtoint ptr %entry1.061 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %entry1.061, align 4
  %shr = lshr i32 %leaf_index.064, %sub
  %arrayidx4 = getelementptr [1024 x %union.sidtab_entry_inner], ptr %12, i32 0, i32 %shr
  %notmask = shl nsw i32 -1, %sub
  %sub5 = xor i32 %notmask, -1
  %and = and i32 %leaf_index.064, %sub5
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4, align 4
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %if.then7, label %while.body.if.end15_crit_edge

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then7:                                         ; preds = %while.body
  br i1 %tobool.not, label %if.then7.cleanup_crit_edge, label %if.end11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2848, i32 noundef 4096) #15
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %arrayidx4, align 4
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11.if.end15_crit_edge, %while.body.if.end15_crit_edge
  %cmp3.not = icmp eq i32 %dec, 0
  br i1 %cmp3.not, label %if.end15.while.end_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %if.end.while.end_crit_edge
  %entry1.0.lcssa = phi ptr [ %arrayidx, %if.end.while.end_crit_edge ], [ %arrayidx4, %if.end15.while.end_crit_edge ]
  %17 = ptrtoint ptr %entry1.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %entry1.0.lcssa, align 4
  %tobool16.not = icmp eq ptr %18, null
  br i1 %tobool16.not, label %if.then17, label %while.end.if.end25_crit_edge

while.end.if.end25_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

while.end.thread:                                 ; preds = %if.end7.i
  %arrayidx67 = getelementptr [4 x %union.sidtab_entry_inner], ptr %s, i32 0, i32 %level.0.lcssa.i
  %19 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx67, align 4
  %tobool16.not70 = icmp eq ptr %20, null
  br i1 %tobool16.not70, label %while.end.thread.if.end21_crit_edge, label %while.end.thread.if.end25_crit_edge

while.end.thread.if.end25_crit_edge:              ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

while.end.thread.if.end21_crit_edge:              ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then17:                                        ; preds = %while.end
  br i1 %tobool.not, label %if.then17.cleanup_crit_edge, label %if.then17.if.end21_crit_edge

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.then17.if.end21_crit_edge, %while.end.thread.if.end21_crit_edge
  %entry1.0.lcssa7174 = phi ptr [ %entry1.0.lcssa, %if.then17.if.end21_crit_edge ], [ %arrayidx67, %while.end.thread.if.end21_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i52 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 2848, i32 noundef 4096) #15
  %22 = ptrtoint ptr %entry1.0.lcssa7174 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i52, ptr %entry1.0.lcssa7174, align 4
  %tobool22.not = icmp eq ptr %call7.i.i52, null
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end21.if.end25_crit_edge, %while.end.thread.if.end25_crit_edge, %while.end.if.end25_crit_edge
  %entry1.0.lcssa72 = phi ptr [ %arrayidx67, %while.end.thread.if.end25_crit_edge ], [ %entry1.0.lcssa7174, %if.end21.if.end25_crit_edge ], [ %entry1.0.lcssa, %while.end.if.end25_crit_edge ]
  %23 = ptrtoint ptr %entry1.0.lcssa72 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %entry1.0.lcssa72, align 4
  %rem = and i32 %index, 63
  %arrayidx27 = getelementptr [64 x %struct.sidtab_entry], ptr %24, i32 0, i32 %rem
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end21.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.then11.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx27, %if.end25 ], [ null, %if.end21.cleanup_crit_edge ], [ null, %if.then.i.cleanup_crit_edge ], [ null, %if.then17.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ], [ null, %if.then7.cleanup_crit_edge ], [ null, %if.then11.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @context_destroy(ptr noundef %c) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %type, align 4
  %role = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 1
  %1 = ptrtoint ptr %role to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %role, align 4
  %2 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %c, align 4
  %str = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 5
  %3 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %str, align 4
  tail call void @kfree(ptr noundef %4) #10
  %5 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %str, align 4
  %len = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %len, align 4
  %cat.i = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 4, i32 0, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat.i) #10
  %cat4.i = getelementptr %struct.context, ptr %c, i32 0, i32 4, i32 0, i32 1, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat4.i) #10
  %range.i.i = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 4
  %7 = call ptr @memset(ptr %range.i.i, i32 0, i32 24)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sidtab_convert(ptr noundef %s, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  %pos = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #10
  %lock = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %convert = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %convert to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %convert, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %count6 = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %count6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp3.i = icmp ugt i32 %3, 64
  br i1 %cmp3.i, label %if.end.while.body.i_crit_edge, label %if.end.sidtab_level_from_count.exit_crit_edge

if.end.sidtab_level_from_count.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sidtab_level_from_count.exit

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %level.05.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %capacity.04.i = phi i32 [ %shl.i, %while.body.i.while.body.i_crit_edge ], [ 64, %if.end.while.body.i_crit_edge ]
  %shl.i = shl i32 %capacity.04.i, 10
  %inc.i = add i32 %level.05.i, 1
  %cmp.i = icmp ult i32 %shl.i, %3
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.sidtab_level_from_count.exit_crit_edge

while.body.i.sidtab_level_from_count.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sidtab_level_from_count.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

sidtab_level_from_count.exit:                     ; preds = %while.body.i.sidtab_level_from_count.exit_crit_edge, %if.end.sidtab_level_from_count.exit_crit_edge
  %level.0.lcssa.i = phi i32 [ 0, %if.end.sidtab_level_from_count.exit_crit_edge ], [ %inc.i, %while.body.i.sidtab_level_from_count.exit_crit_edge ]
  %target = getelementptr inbounds %struct.sidtab_convert_params, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %target, align 4
  %sub = add i32 %3, -1
  %call8 = tail call fastcc ptr @sidtab_do_lookup(ptr noundef %5, i32 noundef %sub, i32 noundef 1)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %sidtab_level_from_count.exit.cleanup_crit_edge, label %if.end13

sidtab_level_from_count.exit.cleanup_crit_edge:   ; preds = %sidtab_level_from_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %sidtab_level_from_count.exit
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %target, align 4
  %count15 = getelementptr inbounds %struct.sidtab, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %count15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %count15, align 4
  %9 = ptrtoint ptr %convert to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %params, ptr %convert, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %3) #14
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pos, align 4
  %11 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %target, align 4
  %arrayidx = getelementptr [4 x %union.sidtab_entry_inner], ptr %12, i32 0, i32 %level.0.lcssa.i
  %arrayidx25 = getelementptr [4 x %union.sidtab_entry_inner], ptr %s, i32 0, i32 %level.0.lcssa.i
  %call26 = call fastcc i32 @sidtab_convert_tree(ptr noundef %arrayidx, ptr noundef %arrayidx25, ptr noundef nonnull %pos, i32 noundef %3, i32 noundef %level.0.lcssa.i, ptr noundef %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  br i1 %tobool27.not, label %do.body47, label %do.body30

do.body30:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %convert to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %convert, align 4
  br label %cleanup

do.body47:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %target, align 4
  tail call fastcc void @sidtab_convert_hashtable(ptr noundef %15, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %do.body47, %do.body30, %sidtab_level_from_count.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %call55.sink = phi i32 [ %call55, %do.body47 ], [ %call55, %do.body30 ], [ %call2, %entry.cleanup_crit_edge ], [ %call2, %sidtab_level_from_count.exit.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %do.body47 ], [ %call26, %do.body30 ], [ -16, %entry.cleanup_crit_edge ], [ -12, %sidtab_level_from_count.exit.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call55.sink) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sidtab_convert_tree(ptr nocapture noundef %edst, ptr nocapture noundef readonly %esrc, ptr nocapture noundef %pos, i32 noundef %count, i32 noundef %level, ptr nocapture noundef readonly %convert) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp.not = icmp eq i32 %level, 0
  %0 = ptrtoint ptr %edst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edst, align 4
  %tobool13.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool13.not, label %if.then1, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then1:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #15
  %3 = ptrtoint ptr %edst to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %edst, align 4
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then1.cleanup_crit_edge, label %if.then1.if.end4_crit_edge

if.then1.if.end4_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.then1.if.end4_crit_edge, %if.then.if.end4_crit_edge
  %sub = add i32 %level, -1
  br label %land.rhs

while.cond:                                       ; preds = %while.body
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %while.cond.cleanup_crit_edge, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %while.cond.land.rhs_crit_edge, %if.end4
  %i.069 = phi i32 [ 0, %if.end4 ], [ %inc, %while.cond.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %count)
  %cmp6 = icmp ult i32 %5, %count
  br i1 %cmp6, label %while.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %6 = ptrtoint ptr %edst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edst, align 4
  %arrayidx = getelementptr [1024 x %union.sidtab_entry_inner], ptr %7, i32 0, i32 %i.069
  %8 = ptrtoint ptr %esrc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %esrc, align 4
  %arrayidx8 = getelementptr [1024 x %union.sidtab_entry_inner], ptr %9, i32 0, i32 %i.069
  %call9 = tail call fastcc i32 @sidtab_convert_tree(ptr noundef %arrayidx, ptr noundef %arrayidx8, ptr noundef %pos, i32 noundef %count, i32 noundef %sub, ptr noundef %convert)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %while.cond, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool13.not, label %if.then14, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then14:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i67 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 4096) #15
  %11 = ptrtoint ptr %edst to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i67, ptr %edst, align 4
  %tobool16.not = icmp eq ptr %call7.i.i67, null
  br i1 %tobool16.not, label %if.then14.cleanup_crit_edge, label %if.then14.if.end19_crit_edge

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %if.else.if.end19_crit_edge
  %args = getelementptr inbounds %struct.sidtab_convert_params, ptr %convert, i32 0, i32 1
  br label %land.rhs22

land.rhs22:                                       ; preds = %if.end34.land.rhs22_crit_edge, %if.end19
  %i.170 = phi i32 [ 0, %if.end19 ], [ %inc36, %if.end34.land.rhs22_crit_edge ]
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %count)
  %cmp23 = icmp ult i32 %13, %count
  br i1 %cmp23, label %while.body25, label %land.rhs22.while.end37_crit_edge

land.rhs22.while.end37_crit_edge:                 ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end37

while.body25:                                     ; preds = %land.rhs22
  %14 = ptrtoint ptr %convert to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %convert, align 4
  %16 = ptrtoint ptr %esrc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %esrc, align 4
  %context = getelementptr [64 x %struct.sidtab_entry], ptr %17, i32 0, i32 %i.170, i32 2
  %18 = ptrtoint ptr %edst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %edst, align 4
  %context30 = getelementptr [64 x %struct.sidtab_entry], ptr %19, i32 0, i32 %i.170, i32 2
  %20 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %args, align 4
  %call31 = tail call i32 %15(ptr noundef %context, ptr noundef %context30, ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %while.body25.cleanup_crit_edge

while.body25.cleanup_crit_edge:                   ; preds = %while.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %while.body25
  %22 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pos, align 4
  %inc35 = add i32 %23, 1
  store i32 %inc35, ptr %pos, align 4
  %inc36 = add nuw nsw i32 %i.170, 1
  %exitcond72.not = icmp eq i32 %inc36, 64
  br i1 %exitcond72.not, label %if.end34.while.end37_crit_edge, label %if.end34.land.rhs22_crit_edge

if.end34.land.rhs22_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs22

if.end34.while.end37_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end37

while.end37:                                      ; preds = %if.end34.while.end37_crit_edge, %land.rhs22.while.end37_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 413, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  br label %cleanup

cleanup:                                          ; preds = %while.end37, %while.body25.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %while.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %if.then1.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then1.cleanup_crit_edge ], [ -12, %if.then14.cleanup_crit_edge ], [ 0, %while.end37 ], [ %call31, %while.body25.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ %call9, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sidtab_convert_hashtable(ptr noundef %s, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp22.not = icmp eq i32 %count, 0
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %hlist_add_head_rcu.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %add.i, %hlist_add_head_rcu.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %div50.i = lshr i32 %i.023, 6
  %add.i = add nuw i32 %i.023, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.023)
  %cmp3.i.i = icmp ugt i32 %i.023, 63
  br i1 %cmp3.i.i, label %for.body.while.body.i.i_crit_edge, label %for.body.while.end.i_crit_edge

for.body.while.end.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

for.body.while.body.i.i_crit_edge:                ; preds = %for.body
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body.while.body.i.i_crit_edge
  %level.05.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %for.body.while.body.i.i_crit_edge ]
  %capacity.04.i.i = phi i32 [ %shl.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 64, %for.body.while.body.i.i_crit_edge ]
  %shl.i.i = shl i32 %capacity.04.i.i, 10
  %inc.i.i = add i32 %level.05.i.i, 1
  %cmp.i.i.not = icmp ugt i32 %shl.i.i, %i.023
  br i1 %cmp.i.i.not, label %sidtab_level_from_count.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

sidtab_level_from_count.exit.i:                   ; preds = %while.body.i.i
  %arrayidx.i = getelementptr [4 x %union.sidtab_entry_inner], ptr %s, i32 0, i32 %inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %cmp3.not60.i = icmp eq i32 %inc.i.i, 0
  br i1 %cmp3.not60.i, label %sidtab_level_from_count.exit.i.while.end.i_crit_edge, label %while.body.i.preheader

sidtab_level_from_count.exit.i.while.end.i_crit_edge: ; preds = %sidtab_level_from_count.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i.preheader:                           ; preds = %sidtab_level_from_count.exit.i
  %mul.i = mul i32 %inc.i.i, 10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end15.i.while.body.i_crit_edge, %while.body.i.preheader
  %leaf_index.064.i = phi i32 [ %and.i, %if.end15.i.while.body.i_crit_edge ], [ %div50.i, %while.body.i.preheader ]
  %capacity_shift.063.i = phi i32 [ %sub.i, %if.end15.i.while.body.i_crit_edge ], [ %mul.i, %while.body.i.preheader ]
  %level.062.i = phi i32 [ %dec.i, %if.end15.i.while.body.i_crit_edge ], [ %inc.i.i, %while.body.i.preheader ]
  %entry1.061.i = phi ptr [ %arrayidx4.i, %if.end15.i.while.body.i_crit_edge ], [ %arrayidx.i, %while.body.i.preheader ]
  %sub.i = add i32 %capacity_shift.063.i, -10
  %0 = ptrtoint ptr %entry1.061.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entry1.061.i, align 4
  %shr.i = lshr i32 %leaf_index.064.i, %sub.i
  %arrayidx4.i = getelementptr [1024 x %union.sidtab_entry_inner], ptr %1, i32 0, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4.i, align 4
  %tobool6.not.i = icmp eq ptr %3, null
  br i1 %tobool6.not.i, label %while.body.i.sidtab_do_lookup.exit_crit_edge, label %if.end15.i

while.body.i.sidtab_do_lookup.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sidtab_do_lookup.exit

if.end15.i:                                       ; preds = %while.body.i
  %notmask.i = shl nsw i32 -1, %sub.i
  %sub5.i = xor i32 %notmask.i, -1
  %and.i = and i32 %leaf_index.064.i, %sub5.i
  %dec.i = add i32 %level.062.i, -1
  %cmp3.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp3.not.i, label %if.end15.i.if.end25.i_crit_edge, label %if.end15.i.while.body.i_crit_edge

if.end15.i.while.body.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end15.i.if.end25.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

while.end.i:                                      ; preds = %sidtab_level_from_count.exit.i.while.end.i_crit_edge, %for.body.while.end.i_crit_edge
  %entry1.0.lcssa.i.ph = phi ptr [ %arrayidx.i, %sidtab_level_from_count.exit.i.while.end.i_crit_edge ], [ %s, %for.body.while.end.i_crit_edge ]
  %4 = ptrtoint ptr %entry1.0.lcssa.i.ph to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load ptr, ptr %entry1.0.lcssa.i.ph, align 4
  %tobool16.not.i = icmp eq ptr %.pr, null
  br i1 %tobool16.not.i, label %while.end.i.sidtab_do_lookup.exit_crit_edge, label %while.end.i.if.end25.i_crit_edge

while.end.i.if.end25.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

while.end.i.sidtab_do_lookup.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sidtab_do_lookup.exit

if.end25.i:                                       ; preds = %while.end.i.if.end25.i_crit_edge, %if.end15.i.if.end25.i_crit_edge
  %5 = phi ptr [ %.pr, %while.end.i.if.end25.i_crit_edge ], [ %3, %if.end15.i.if.end25.i_crit_edge ]
  %rem.i = and i32 %i.023, 63
  %arrayidx27.i = getelementptr [64 x %struct.sidtab_entry], ptr %5, i32 0, i32 %rem.i
  br label %sidtab_do_lookup.exit

sidtab_do_lookup.exit:                            ; preds = %if.end25.i, %while.end.i.sidtab_do_lookup.exit_crit_edge, %while.body.i.sidtab_do_lookup.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx27.i, %if.end25.i ], [ null, %while.end.i.sidtab_do_lookup.exit_crit_edge ], [ null, %while.body.i.sidtab_do_lookup.exit_crit_edge ]
  %add2 = add i32 %i.023, 28
  %6 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add2, ptr %retval.0.i, align 4
  %context = getelementptr inbounds %struct.sidtab_entry, ptr %retval.0.i, i32 0, i32 2
  %call3 = tail call i32 @context_compute_hash(ptr noundef %context) #10
  %hash = getelementptr inbounds %struct.sidtab_entry, ptr %retval.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3, ptr %hash, align 4
  %list = getelementptr inbounds %struct.sidtab_entry, ptr %retval.0.i, i32 0, i32 4
  %mul.i.i = mul i32 %call3, 1640531527
  %shr.i14 = lshr i32 %mul.i.i, 23
  %arrayidx = getelementptr %struct.sidtab, ptr %s, i32 0, i32 9, i32 %shr.i14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %list, align 4
  %pprev.i = getelementptr inbounds %struct.sidtab_entry, ptr %retval.0.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %sidtab_do_lookup.exit.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

sidtab_do_lookup.exit.hlist_add_head_rcu.exit_crit_edge: ; preds = %sidtab_do_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %sidtab_do_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %sidtab_do_lookup.exit.hlist_add_head_rcu.exit_crit_edge
  %exitcond.not = icmp eq i32 %add.i, %count
  br i1 %exitcond.not, label %hlist_add_head_rcu.exit.for.end_crit_edge, label %hlist_add_head_rcu.exit.for.body_crit_edge

hlist_add_head_rcu.exit.for.body_crit_edge:       ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

hlist_add_head_rcu.exit.for.end_crit_edge:        ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %hlist_add_head_rcu.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sidtab_cancel_convert(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %convert = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %convert to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %convert, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sidtab_freeze_begin(ptr noundef %s, ptr nocapture noundef writeonly %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2, ptr %flags, align 4
  %frozen = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 3
  %1 = ptrtoint ptr %frozen to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %frozen, align 4
  %convert = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %convert to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %convert, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sidtab_freeze_end(ptr noundef %s, ptr nocapture noundef readonly %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sidtab_destroy(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %i.019
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %context.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %i.019, i32 1, i32 2
  %type.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %i.019, i32 1, i32 2, i32 2
  %2 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %type.i.i, align 4
  %role.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %i.019, i32 1, i32 2, i32 1
  %3 = ptrtoint ptr %role.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %role.i.i, align 4
  %4 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %context.i, align 4
  %str.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %i.019, i32 1, i32 2, i32 5
  %5 = ptrtoint ptr %str.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %str.i.i, align 4
  tail call void @kfree(ptr noundef %6) #10
  %7 = ptrtoint ptr %str.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %str.i.i, align 4
  %len.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %i.019, i32 1, i32 2, i32 3
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %len.i.i, align 4
  %cat.i.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %i.019, i32 1, i32 2, i32 4, i32 0, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat.i.i.i) #10
  %cat4.i.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %i.019, i32 1, i32 2, i32 4, i32 0, i32 1, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat4.i.i.i) #10
  %range.i.i.i.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %i.019, i32 1, i32 2, i32 4
  %9 = call ptr @memset(ptr %range.i.i.i.i, i32 0, i32 24)
  %cache.i = getelementptr %struct.sidtab, ptr %s, i32 0, i32 8, i32 %i.019, i32 1, i32 3
  %10 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %cache.i, align 4
  tail call void @kfree(ptr noundef %11) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 27
  br i1 %exitcond.not, label %land.rhs.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

land.rhs.preheader:                               ; preds = %for.inc
  %arrayidx5 = getelementptr [4 x %union.sidtab_entry_inner], ptr %s, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %while.body, label %land.rhs.preheader.while.end_crit_edge

land.rhs.preheader.while.end_crit_edge:           ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs.preheader
  %arrayidx5.1 = getelementptr [4 x %union.sidtab_entry_inner], ptr %s, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5.1, align 4
  %tobool6.not.1 = icmp eq ptr %15, null
  br i1 %tobool6.not.1, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx5.2 = getelementptr [4 x %union.sidtab_entry_inner], ptr %s, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx5.2, align 4
  %tobool6.not.2 = icmp ne ptr %17, null
  %spec.select = zext i1 %tobool6.not.2 to i32
  br label %while.end

while.end:                                        ; preds = %while.body.1, %while.body.while.end_crit_edge, %land.rhs.preheader.while.end_crit_edge
  %level.0.lcssa = phi i32 [ 3, %land.rhs.preheader.while.end_crit_edge ], [ 2, %while.body.while.end_crit_edge ], [ %spec.select, %while.body.1 ]
  %arrayidx8 = getelementptr [4 x %union.sidtab_entry_inner], ptr %s, i32 0, i32 %level.0.lcssa
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack = load i32, ptr %arrayidx8, align 4
  %19 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  tail call fastcc void @sidtab_destroy_tree([1 x i32] %19, i32 noundef %level.0.lcssa)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sidtab_destroy_tree([1 x i32] %entry.coerce, i32 noundef %level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract = extractvalue [1 x i32] %entry.coerce, 0
  %0 = inttoptr i32 %entry.coerce.fca.0.extract to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp.not = icmp eq i32 %level, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entry.coerce.fca.0.extract)
  %tobool7.not = icmp eq i32 %entry.coerce.fca.0.extract, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool7.not, label %if.then.cleanup22_crit_edge, label %for.cond.preheader

if.then.cleanup22_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup22

for.cond.preheader:                               ; preds = %if.then
  %sub = add i32 %level, -1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.039 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [1024 x %union.sidtab_entry_inner], ptr %0, i32 0, i32 %i.039
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %.unpack = load i32, ptr %arrayidx, align 4
  %2 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  tail call fastcc void @sidtab_destroy_tree([1 x i32] %2, i32 noundef %sub)
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.body.cleanup22.sink.split_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup22.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup22.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool7.not, label %if.else.cleanup22_crit_edge, label %if.else.for.body12_crit_edge

if.else.for.body12_crit_edge:                     ; preds = %if.else
  br label %for.body12

if.else.cleanup22_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup22

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %if.else.for.body12_crit_edge
  %i.140 = phi i32 [ %inc16, %for.body12.for.body12_crit_edge ], [ 0, %if.else.for.body12_crit_edge ]
  %context.i = getelementptr [64 x %struct.sidtab_entry], ptr %0, i32 0, i32 %i.140, i32 2
  %type.i.i = getelementptr [64 x %struct.sidtab_entry], ptr %0, i32 0, i32 %i.140, i32 2, i32 2
  %3 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type.i.i, align 4
  %role.i.i = getelementptr [64 x %struct.sidtab_entry], ptr %0, i32 0, i32 %i.140, i32 2, i32 1
  %4 = ptrtoint ptr %role.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %role.i.i, align 4
  %5 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %context.i, align 4
  %str.i.i = getelementptr [64 x %struct.sidtab_entry], ptr %0, i32 0, i32 %i.140, i32 2, i32 5
  %6 = ptrtoint ptr %str.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %str.i.i, align 4
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %str.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %str.i.i, align 4
  %len.i.i = getelementptr [64 x %struct.sidtab_entry], ptr %0, i32 0, i32 %i.140, i32 2, i32 3
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %len.i.i, align 4
  %cat.i.i.i = getelementptr [64 x %struct.sidtab_entry], ptr %0, i32 0, i32 %i.140, i32 2, i32 4, i32 0, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat.i.i.i) #10
  %cat4.i.i.i = getelementptr [64 x %struct.sidtab_entry], ptr %0, i32 0, i32 %i.140, i32 2, i32 4, i32 0, i32 1, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat4.i.i.i) #10
  %range.i.i.i.i = getelementptr [64 x %struct.sidtab_entry], ptr %0, i32 0, i32 %i.140, i32 2, i32 4
  %10 = call ptr @memset(ptr %range.i.i.i.i, i32 0, i32 24)
  %cache.i = getelementptr [64 x %struct.sidtab_entry], ptr %0, i32 0, i32 %i.140, i32 3
  %11 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %cache.i, align 4
  tail call void @kfree(ptr noundef %12) #10
  %inc16 = add nuw nsw i32 %i.140, 1
  %exitcond41.not = icmp eq i32 %inc16, 64
  br i1 %exitcond41.not, label %for.body12.cleanup22.sink.split_crit_edge, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12

for.body12.cleanup22.sink.split_crit_edge:        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup22.sink.split

cleanup22.sink.split:                             ; preds = %for.body12.cleanup22.sink.split_crit_edge, %for.body.cleanup22.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %cleanup22

cleanup22:                                        ; preds = %cleanup22.sink.split, %if.else.cleanup22_crit_edge, %if.then.cleanup22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sidtab_sid2str_put(ptr noundef %s, ptr noundef %entry1, ptr nocapture noundef readonly %str, i32 noundef %str_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sidtab_entry, ptr %entry1, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body2:                                         ; preds = %entry
  %cache_lock = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cache_lock) #10
  %dep_map = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 7, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %land.lhs.true, label %do.body2.do.end17_crit_edge

do.body2.do.end17_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

land.lhs.true:                                    ; preds = %do.body2
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b162 = load i1, ptr @sidtab_sid2str_put.__warned, align 1
  br i1 %.b162, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sidtab_sid2str_put.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 566, ptr noundef nonnull @.str.10) #10
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %do.body2.do.end17_crit_edge
  %cache19 = getelementptr inbounds %struct.sidtab_entry, ptr %entry1, i32 0, i32 3
  %2 = ptrtoint ptr %cache19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache19, align 4
  %tobool20.not = icmp eq ptr %3, null
  br i1 %tobool20.not, label %if.end8.i, label %if.then21

if.then21:                                        ; preds = %do.end17
  %lru_member = getelementptr inbounds %struct.sidtab_str_cache, ptr %3, i32 0, i32 1
  %cache_lru_list = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru_member) #10
  br i1 %call.i.i, label %if.end.i.i163, label %if.then21.__list_del_entry.exit.i_crit_edge

if.then21.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i163:                                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.sidtab_str_cache, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %lru_member to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lru_member, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i163, %if.then21.__list_del_entry.exit.i_crit_edge
  %10 = ptrtoint ptr %cache_lru_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache_lru_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lru_member, ptr noundef %cache_lru_list, ptr noundef %11) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.out_unlock.thread_crit_edge

__list_del_entry.exit.i.out_unlock.thread_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %lru_member, ptr %prev1.i.i2.i, align 4
  %13 = ptrtoint ptr %lru_member to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %lru_member, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.sidtab_str_cache, ptr %3, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cache_lru_list, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %cache_lru_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %lru_member, ptr %cache_lru_list, align 4
  br label %out_unlock.thread

if.end8.i:                                        ; preds = %do.end17
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %str_len, i32 24) #10
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 2592) #16
  %tobool25.not = icmp eq ptr %call9.i, null
  br i1 %tobool25.not, label %if.end8.i.out_unlock.thread_crit_edge, label %if.end27

if.end8.i.out_unlock.thread_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock.thread

if.end27:                                         ; preds = %if.end8.i
  %cache_free_slots = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 5
  %16 = ptrtoint ptr %cache_free_slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cache_free_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp28 = icmp eq i32 %17, 0
  br i1 %cmp28, label %if.then30, label %if.else74

if.then30:                                        ; preds = %if.end27
  %prev = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 -8
  %call.i.i164 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #10
  br i1 %call.i.i164, label %if.end.i.i167, label %if.then30.list_del.exit_crit_edge

if.then30.list_del.exit_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i167:                                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i165 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i165 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i165, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i166 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i166, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i167, %if.then30.list_del.exit_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %parent = getelementptr i8, ptr %19, i32 8
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent, align 4
  %cache43 = getelementptr inbounds %struct.sidtab_entry, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cache43 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr null, ptr %cache43, align 4
  br label %if.end76

if.else74:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %dec = add i32 %17, -1
  %31 = ptrtoint ptr %cache_free_slots to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dec, ptr %cache_free_slots, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %list_del.exit
  %victim.0 = phi ptr [ %add.ptr, %list_del.exit ], [ null, %if.else74 ]
  %parent77 = getelementptr inbounds %struct.sidtab_str_cache, ptr %call9.i, i32 0, i32 2
  %32 = ptrtoint ptr %parent77 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry1, ptr %parent77, align 16
  %len78 = getelementptr inbounds %struct.sidtab_str_cache, ptr %call9.i, i32 0, i32 3
  %33 = ptrtoint ptr %len78 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %str_len, ptr %len78, align 4
  %str79 = getelementptr inbounds %struct.sidtab_str_cache, ptr %call9.i, i32 0, i32 4
  %34 = call ptr @memcpy(ptr %str79, ptr %str, i32 %str_len)
  %lru_member80 = getelementptr inbounds %struct.sidtab_str_cache, ptr %call9.i, i32 0, i32 1
  %cache_lru_list81 = getelementptr inbounds %struct.sidtab, ptr %s, i32 0, i32 6
  %35 = ptrtoint ptr %cache_lru_list81 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cache_lru_list81, align 4
  %call.i.i169 = tail call zeroext i1 @__list_add_valid(ptr noundef %lru_member80, ptr noundef %cache_lru_list81, ptr noundef %36) #10
  br i1 %call.i.i169, label %if.end.i.i170, label %if.end76.out_unlock_crit_edge

if.end76.out_unlock_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end.i.i170:                                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %lru_member80, ptr %prev1.i.i, align 4
  %38 = ptrtoint ptr %lru_member80 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %lru_member80, align 8
  %prev3.i.i = getelementptr inbounds %struct.sidtab_str_cache, ptr %call9.i, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cache_lru_list81, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %cache_lru_list81 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %lru_member80, ptr %cache_lru_list81, align 4
  br label %out_unlock

out_unlock.thread:                                ; preds = %if.end8.i.out_unlock.thread_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.out_unlock.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cache_lock, i32 noundef %call3) #10
  br label %cleanup

out_unlock:                                       ; preds = %if.end.i.i170, %if.end76.out_unlock_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  %41 = ptrtoint ptr %cache19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call9.i, ptr %cache19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cache_lock, i32 noundef %call3) #10
  %tobool126.not = icmp eq ptr %victim.0, null
  br i1 %tobool126.not, label %out_unlock.cleanup_crit_edge, label %do.end130

out_unlock.cleanup_crit_edge:                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end130:                                        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree_call_rcu(ptr noundef nonnull %victim.0, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end130, %out_unlock.cleanup_crit_edge, %out_unlock.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sidtab_sid2str_get(ptr noundef %s, ptr noundef %entry1, ptr noundef %out, ptr nocapture noundef %out_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sidtab_entry, ptr %entry1, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %cache2 = getelementptr inbounds %struct.sidtab_entry, ptr %entry1, i32 0, i32 3
  %6 = ptrtoint ptr %cache2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %cache2, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b43 = load i1, ptr @sidtab_sid2str_get.__warned, align 1
  br i1 %.b43, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sidtab_sid2str_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 609, ptr noundef nonnull @.str.11) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %do.end12.if.end25_crit_edge, label %if.else

do.end12.if.end25_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.else:                                          ; preds = %do.end12
  %len16 = getelementptr inbounds %struct.sidtab_str_cache, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len16, align 4
  %10 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %out_len, align 4
  %tobool17.not = icmp eq ptr %out, null
  br i1 %tobool17.not, label %if.else.if.end25_crit_edge, label %if.then18

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %str = getelementptr inbounds %struct.sidtab_str_cache, ptr %7, i32 0, i32 4
  %11 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len16, align 4
  %call20 = tail call ptr @kmemdup(ptr noundef %str, i32 noundef %12, i32 noundef 2592) #10
  %13 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call20, ptr %out, align 4
  %tobool21.not = icmp eq ptr %call20, null
  %spec.select44 = select i1 %tobool21.not, i32 -12, i32 0
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %if.else.if.end25_crit_edge, %do.end12.if.end25_crit_edge
  %tobool26.not = phi i1 [ false, %if.else.if.end25_crit_edge ], [ true, %do.end12.if.end25_crit_edge ], [ %tobool21.not, %if.then18 ]
  %rc.0 = phi i32 [ 0, %if.else.if.end25_crit_edge ], [ -2, %do.end12.if.end25_crit_edge ], [ %spec.select44, %if.then18 ]
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i45, label %if.end25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i48

if.end25.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i48:                                ; preds = %if.end25
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, %if.end25.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !48
  %14 = tail call i32 @llvm.read_register.i32(metadata !37) #10
  %and.i.i.i.i.i52 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i53, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %tobool28.not = icmp eq ptr %out, null
  %or.cond = or i1 %tobool28.not, %tobool26.not
  br i1 %or.cond, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.then29

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then29:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %out, align 4
  %20 = ptrtoint ptr %out_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out_len, align 4
  tail call void @sidtab_sid2str_put(ptr noundef %s, ptr noundef %entry1, ptr noundef %19, i32 noundef %21)
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %rcu_read_unlock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %rc.0, %if.then29 ], [ %rc.0, %rcu_read_unlock.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_cpy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ebitmap_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !27, !28, !30, !32, !33, !34, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @sidtab_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../security/selinux/ss/sidtab.c", i32 47, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @sidtab_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../security/selinux/ss/sidtab.c", i32 52, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../security/selinux/ss/sidtab.c", i32 124, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/selinux/ss/sidtab.c", i32 142, i32 36}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/selinux/ss/sidtab.c", i32 342, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sidtab_context_to_sid._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @sidtab_context_to_sid._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../security/selinux/ss/sidtab.c", i32 453, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sidtab_convert._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @sidtab_convert._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../security/selinux/ss/sidtab.c", i32 565, i32 10}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../security/selinux/ss/sidtab.c", i32 609, i32 10}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../security/selinux/ss/sidtab.c", i32 64, i32 2}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2149147172}
!48 = !{i64 2149147438}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.peeled.count", i32 1}
!51 = !{i64 2157234681}
!52 = !{i8 0, i8 2}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i64 2151512906}
!55 = !{i64 2157247125}
!56 = !{i64 2157326186}
