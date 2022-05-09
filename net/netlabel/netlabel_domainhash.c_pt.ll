; ModuleID = '/llk/IR_all_yes/net/netlabel/netlabel_domainhash.c_pt.bc'
source_filename = "../net/netlabel/netlabel_domainhash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.netlbl_domhsh_tbl = type { ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.netlbl_dom_map = type { ptr, i16, %struct.netlbl_dommap_def, i32, %struct.list_head, %struct.callback_head }
%struct.netlbl_dommap_def = type { i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.netlbl_domaddr_map = type { %struct.list_head, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netlbl_af4list = type { i32, i32, i32, %struct.list_head }
%struct.netlbl_af6list = type { %struct.in6_addr, %struct.in6_addr, i32, %struct.list_head }
%struct.in6_addr = type { %union.anon.6 }
%union.anon.6 = type { [4 x i32] }

@netlbl_domhsh_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@netlbl_domhsh = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@netlbl_domhsh_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"net/netlabel/netlabel_domainhash.c\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@netlbl_domhsh_def_ipv4 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@netlbl_domhsh_def_ipv6 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@netlbl_domhsh_remove_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_domhsh_remove_entry.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" nlbl_domain=%s res=1\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(default)\00", [22 x i8] zeroinitializer }, align 32
@netlbl_domhsh_walk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_domhsh_walk.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_domhsh_walk.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"netlbl_domhsh_lock\00", [45 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@netlbl_domhsh_search.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_domhsh_search.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_domhsh_search_def.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_domhsh_search_def.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_domhsh_hash.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__af4list_valid_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/netlabel/netlabel_addrlist.h\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" nlbl_domain=%s\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" nlbl_protocol=unlbl\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" nlbl_protocol=cipsov4 cipso_doi=%u\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" nlbl_protocol=calipso calipso_doi=%u\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" res=%u\00", [24 x i8] zeroinitializer }, align 32
@__af6list_valid_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2, i64 10]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 2, i64 10]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 10]
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"netlbl_domhsh_lock\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"netlbl_domhsh\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 46, i32 40 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 438, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"netlbl_domhsh_def_ipv4\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 47, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"netlbl_domhsh_def_ipv6\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 48, i32 37 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 615, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 616, i32 38 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 955, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 43, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 695, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [36 x i8] c"../net/netlabel/netlabel_addrlist.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 76, i32 7 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 221, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 246, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 251, i32 7 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 257, i32 7 }
@___asan_gen_.82 = private constant [38 x i8] c"../net/netlabel/netlabel_domainhash.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 261, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 723, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @netlbl_domhsh_lock, ptr @netlbl_domhsh, ptr @.str, ptr @.str.1, ptr @netlbl_domhsh_def_ipv4, ptr @netlbl_domhsh_def_ipv6, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_domhsh_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_domhsh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_domhsh_def_ipv4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlbl_domhsh_def_ipv6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_domhsh_init(i32 noundef %size) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #12
  %cmp1 = icmp eq ptr %call7.i, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %shl = shl nuw i32 1, %size
  %size4 = getelementptr inbounds %struct.netlbl_domhsh_tbl, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %size4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shl, ptr %size4, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl, i32 8) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !70

kcalloc.exit.thread:                              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %call7.i, align 8
  br label %if.then9

if.end7.i.i:                                      ; preds = %if.end3
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #13
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %call7.i, align 8
  %cmp8 = icmp eq ptr %call8.i.i, null
  br i1 %cmp8, label %if.end7.i.i.if.then9_crit_edge, label %for.cond.preheader

if.end7.i.i.if.then9_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

for.cond.preheader:                               ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1261.not = icmp eq i32 %8, 0
  br i1 %cmp1261.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then9:                                         ; preds = %if.end7.i.i.if.then9_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %iter.062 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i, align 8
  %arrayidx = getelementptr %struct.list_head, ptr %10, i32 %iter.062
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr %struct.list_head, ptr %10, i32 %iter.062, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %prev.i, align 4
  %inc = add nuw i32 %iter.062, 1
  %13 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size4, align 4
  %cmp12 = icmp ult i32 %inc, %14
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @netlbl_domhsh_lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  store volatile ptr %call7.i, ptr @netlbl_domhsh, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_domhsh_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then9 ], [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_domhsh_add(ptr noundef %entry1, ptr noundef %audit_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp eq ptr %entry1, null
  br i1 %cmp.i, label %entry.cleanup378_crit_edge, label %if.end.i

entry.cleanup378_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

if.end.i:                                         ; preds = %entry
  %family.i = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %family.i, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %if.end.i.cleanup378_crit_edge [
    i16 2, label %if.end.i.if.end16.i_crit_edge
    i16 10, label %if.end.i.if.end16.i_crit_edge809
    i16 0, label %lor.lhs.false.i
  ]

if.end.i.if.end16.i_crit_edge809:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.end.i.cleanup378_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

lor.lhs.false.i:                                  ; preds = %if.end.i
  %def.i = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2
  %3 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %def.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp13.not.i = icmp eq i32 %4, 5
  br i1 %cmp13.not.i, label %lor.lhs.false.i.if.end16.i_crit_edge, label %lor.lhs.false.i.cleanup378_crit_edge

lor.lhs.false.i.cleanup378_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

lor.lhs.false.i.if.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %lor.lhs.false.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge809
  %def17.i = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2
  %5 = ptrtoint ptr %def17.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %def17.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %6, label %if.end16.i.cleanup378_crit_edge [
    i32 5, label %sw.bb.i
    i32 3, label %sw.bb32.i
    i32 7, label %sw.bb43.i
    i32 6, label %sw.bb54.i
  ]

if.end16.i.cleanup378_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

sw.bb.i:                                          ; preds = %if.end16.i
  %8 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %cmp20.not.i = icmp eq ptr %10, null
  br i1 %cmp20.not.i, label %sw.bb.i.if.end_crit_edge, label %sw.bb.i.cleanup378_crit_edge

sw.bb.i.cleanup378_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb32.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp35.not.i = icmp eq i16 %1, 2
  br i1 %cmp35.not.i, label %lor.lhs.false37.i, label %sw.bb32.i.cleanup378_crit_edge

sw.bb32.i.cleanup378_crit_edge:                   ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

lor.lhs.false37.i:                                ; preds = %sw.bb32.i
  %11 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %cmp39.i = icmp eq ptr %13, null
  br i1 %cmp39.i, label %lor.lhs.false37.i.cleanup378_crit_edge, label %lor.lhs.false37.i.if.end_crit_edge

lor.lhs.false37.i.if.end_crit_edge:               ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false37.i.cleanup378_crit_edge:           ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

sw.bb43.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp46.not.i = icmp eq i16 %1, 10
  br i1 %cmp46.not.i, label %lor.lhs.false48.i, label %sw.bb43.i.cleanup378_crit_edge

sw.bb43.i.cleanup378_crit_edge:                   ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

lor.lhs.false48.i:                                ; preds = %sw.bb43.i
  %14 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %cmp50.i = icmp eq ptr %16, null
  br i1 %cmp50.i, label %lor.lhs.false48.i.cleanup378_crit_edge, label %lor.lhs.false48.i.if.end_crit_edge

lor.lhs.false48.i.if.end_crit_edge:               ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false48.i.cleanup378_crit_edge:           ; preds = %lor.lhs.false48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

sw.bb54.i:                                        ; preds = %if.end16.i
  %17 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %cmp.not8.i.i = icmp eq ptr %21, %19
  br i1 %cmp.not8.i.i, label %sw.bb54.i.for.end.i_crit_edge, label %sw.bb54.i.land.rhs.i.i_crit_edge

sw.bb54.i.land.rhs.i.i_crit_edge:                 ; preds = %sw.bb54.i
  br label %land.rhs.i.i

sw.bb54.i.for.end.i_crit_edge:                    ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %sw.bb54.i.land.rhs.i.i_crit_edge
  %i.09.i.i = phi ptr [ %25, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %21, %sw.bb54.i.land.rhs.i.i_crit_edge ]
  %valid.i.i = getelementptr i8, ptr %i.09.i.i, i32 -4
  %22 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %valid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %__af4list_valid.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %24 = ptrtoint ptr %i.09.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i.09.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %25, %19
  br i1 %cmp.not.i.i, label %while.body.i.i.for.end.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

while.body.i.i.for.end.i_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

__af4list_valid.exit.i:                           ; preds = %land.rhs.i.i
  %cmp60.not182.i = icmp eq ptr %i.09.i.i, %19
  br i1 %cmp60.not182.i, label %__af4list_valid.exit.i.for.end.i_crit_edge, label %__af4list_valid.exit.i.for.body.i_crit_edge

__af4list_valid.exit.i.for.body.i_crit_edge:      ; preds = %__af4list_valid.exit.i
  br label %for.body.i

__af4list_valid.exit.i.for.end.i_crit_edge:       ; preds = %__af4list_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %__af4list_valid.exit161.i.for.body.i_crit_edge, %__af4list_valid.exit.i.for.body.i_crit_edge
  %i.0.lcssa.i.pn183.i = phi ptr [ %i.09.i153.i, %__af4list_valid.exit161.i.for.body.i_crit_edge ], [ %i.09.i.i, %__af4list_valid.exit.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %i.0.lcssa.i.pn183.i, i32 -20
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %27, label %for.body.i.cleanup378_crit_edge [
    i32 5, label %sw.bb64.i
    i32 3, label %sw.bb70.i
  ]

for.body.i.cleanup378_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

sw.bb64.i:                                        ; preds = %for.body.i
  %29 = getelementptr i8, ptr %i.0.lcssa.i.pn183.i, i32 -16
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %cmp66.not.i = icmp eq ptr %31, null
  br i1 %cmp66.not.i, label %sw.bb64.i.for.inc.i_crit_edge, label %sw.bb64.i.cleanup378_crit_edge

sw.bb64.i.cleanup378_crit_edge:                   ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

sw.bb64.i.for.inc.i_crit_edge:                    ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb70.i:                                        ; preds = %for.body.i
  %32 = getelementptr i8, ptr %i.0.lcssa.i.pn183.i, i32 -16
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %cmp72.i = icmp eq ptr %34, null
  br i1 %cmp72.i, label %sw.bb70.i.cleanup378_crit_edge, label %sw.bb70.i.for.inc.i_crit_edge

sw.bb70.i.for.inc.i_crit_edge:                    ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb70.i.cleanup378_crit_edge:                   ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

for.inc.i:                                        ; preds = %sw.bb70.i.for.inc.i_crit_edge, %sw.bb64.i.for.inc.i_crit_edge
  %35 = ptrtoint ptr %i.0.lcssa.i.pn183.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i.0.lcssa.i.pn183.i, align 4
  %cmp.not8.i152.i = icmp eq ptr %36, %19
  br i1 %cmp.not8.i152.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i156.i_crit_edge

for.inc.i.land.rhs.i156.i_crit_edge:              ; preds = %for.inc.i
  br label %land.rhs.i156.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

land.rhs.i156.i:                                  ; preds = %while.body.i158.i.land.rhs.i156.i_crit_edge, %for.inc.i.land.rhs.i156.i_crit_edge
  %i.09.i153.i = phi ptr [ %40, %while.body.i158.i.land.rhs.i156.i_crit_edge ], [ %36, %for.inc.i.land.rhs.i156.i_crit_edge ]
  %valid.i154.i = getelementptr i8, ptr %i.09.i153.i, i32 -4
  %37 = ptrtoint ptr %valid.i154.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %valid.i154.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i155.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i155.i, label %while.body.i158.i, label %__af4list_valid.exit161.i

while.body.i158.i:                                ; preds = %land.rhs.i156.i
  %39 = ptrtoint ptr %i.09.i153.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i.09.i153.i, align 4
  %cmp.not.i157.i = icmp eq ptr %40, %19
  br i1 %cmp.not.i157.i, label %while.body.i158.i.for.end.i_crit_edge, label %while.body.i158.i.land.rhs.i156.i_crit_edge

while.body.i158.i.land.rhs.i156.i_crit_edge:      ; preds = %while.body.i158.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i156.i

while.body.i158.i.for.end.i_crit_edge:            ; preds = %while.body.i158.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

__af4list_valid.exit161.i:                        ; preds = %land.rhs.i156.i
  %cmp60.not.i = icmp eq ptr %i.09.i153.i, %19
  br i1 %cmp60.not.i, label %__af4list_valid.exit161.i.for.end.i_crit_edge, label %__af4list_valid.exit161.i.for.body.i_crit_edge

__af4list_valid.exit161.i.for.body.i_crit_edge:   ; preds = %__af4list_valid.exit161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

__af4list_valid.exit161.i.for.end.i_crit_edge:    ; preds = %__af4list_valid.exit161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %__af4list_valid.exit161.i.for.end.i_crit_edge, %while.body.i158.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %__af4list_valid.exit.i.for.end.i_crit_edge, %while.body.i.i.for.end.i_crit_edge, %sw.bb54.i.for.end.i_crit_edge
  %list6.i = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %19, i32 0, i32 1
  %41 = ptrtoint ptr %list6.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %list6.i, align 4
  %cmp.not8.i162.i = icmp eq ptr %42, %list6.i
  br i1 %cmp.not8.i162.i, label %for.end.i.if.end_crit_edge, label %for.end.i.land.rhs.i166.i_crit_edge

for.end.i.land.rhs.i166.i_crit_edge:              ; preds = %for.end.i
  br label %land.rhs.i166.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs.i166.i:                                  ; preds = %while.body.i168.i.land.rhs.i166.i_crit_edge, %for.end.i.land.rhs.i166.i_crit_edge
  %i.09.i163.i = phi ptr [ %46, %while.body.i168.i.land.rhs.i166.i_crit_edge ], [ %42, %for.end.i.land.rhs.i166.i_crit_edge ]
  %valid.i164.i = getelementptr i8, ptr %i.09.i163.i, i32 -4
  %43 = ptrtoint ptr %valid.i164.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %valid.i164.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i165.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i165.i, label %while.body.i168.i, label %__af6list_valid.exit.i

while.body.i168.i:                                ; preds = %land.rhs.i166.i
  %45 = ptrtoint ptr %i.09.i163.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i.09.i163.i, align 4
  %cmp.not.i167.i = icmp eq ptr %46, %list6.i
  br i1 %cmp.not.i167.i, label %while.body.i168.i.if.end_crit_edge, label %while.body.i168.i.land.rhs.i166.i_crit_edge

while.body.i168.i.land.rhs.i166.i_crit_edge:      ; preds = %while.body.i168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i166.i

while.body.i168.i.if.end_crit_edge:               ; preds = %while.body.i168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

__af6list_valid.exit.i:                           ; preds = %land.rhs.i166.i
  %cmp90.not185.i = icmp eq ptr %i.09.i163.i, %list6.i
  br i1 %cmp90.not185.i, label %__af6list_valid.exit.i.if.end_crit_edge, label %__af6list_valid.exit.i.for.body92.i_crit_edge

__af6list_valid.exit.i.for.body92.i_crit_edge:    ; preds = %__af6list_valid.exit.i
  br label %for.body92.i

__af6list_valid.exit.i.if.end_crit_edge:          ; preds = %__af6list_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body92.i:                                     ; preds = %__af6list_valid.exit180.i.for.body92.i_crit_edge, %__af6list_valid.exit.i.for.body92.i_crit_edge
  %i.0.lcssa.i169.pn186.i = phi ptr [ %i.09.i172.i, %__af6list_valid.exit180.i.for.body92.i_crit_edge ], [ %i.09.i163.i, %__af6list_valid.exit.i.for.body92.i_crit_edge ]
  %add.ptr95.i = getelementptr i8, ptr %i.0.lcssa.i169.pn186.i, i32 -44
  %47 = ptrtoint ptr %add.ptr95.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr95.i, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %48, label %for.body92.i.cleanup378_crit_edge [
    i32 5, label %sw.bb98.i
    i32 7, label %sw.bb104.i
  ]

for.body92.i.cleanup378_crit_edge:                ; preds = %for.body92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

sw.bb98.i:                                        ; preds = %for.body92.i
  %50 = getelementptr i8, ptr %i.0.lcssa.i169.pn186.i, i32 -40
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %cmp100.not.i = icmp eq ptr %52, null
  br i1 %cmp100.not.i, label %sw.bb98.i.for.inc112.i_crit_edge, label %sw.bb98.i.cleanup378_crit_edge

sw.bb98.i.cleanup378_crit_edge:                   ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

sw.bb98.i.for.inc112.i_crit_edge:                 ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc112.i

sw.bb104.i:                                       ; preds = %for.body92.i
  %53 = getelementptr i8, ptr %i.0.lcssa.i169.pn186.i, i32 -40
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %cmp106.i = icmp eq ptr %55, null
  br i1 %cmp106.i, label %sw.bb104.i.cleanup378_crit_edge, label %sw.bb104.i.for.inc112.i_crit_edge

sw.bb104.i.for.inc112.i_crit_edge:                ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc112.i

sw.bb104.i.cleanup378_crit_edge:                  ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup378

for.inc112.i:                                     ; preds = %sw.bb104.i.for.inc112.i_crit_edge, %sw.bb98.i.for.inc112.i_crit_edge
  %56 = ptrtoint ptr %i.0.lcssa.i169.pn186.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i.0.lcssa.i169.pn186.i, align 4
  %cmp.not8.i171.i = icmp eq ptr %57, %list6.i
  br i1 %cmp.not8.i171.i, label %for.inc112.i.if.end_crit_edge, label %for.inc112.i.land.rhs.i175.i_crit_edge

for.inc112.i.land.rhs.i175.i_crit_edge:           ; preds = %for.inc112.i
  br label %land.rhs.i175.i

for.inc112.i.if.end_crit_edge:                    ; preds = %for.inc112.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs.i175.i:                                  ; preds = %while.body.i177.i.land.rhs.i175.i_crit_edge, %for.inc112.i.land.rhs.i175.i_crit_edge
  %i.09.i172.i = phi ptr [ %61, %while.body.i177.i.land.rhs.i175.i_crit_edge ], [ %57, %for.inc112.i.land.rhs.i175.i_crit_edge ]
  %valid.i173.i = getelementptr i8, ptr %i.09.i172.i, i32 -4
  %58 = ptrtoint ptr %valid.i173.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %valid.i173.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i174.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i174.i, label %while.body.i177.i, label %__af6list_valid.exit180.i

while.body.i177.i:                                ; preds = %land.rhs.i175.i
  %60 = ptrtoint ptr %i.09.i172.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i.09.i172.i, align 4
  %cmp.not.i176.i = icmp eq ptr %61, %list6.i
  br i1 %cmp.not.i176.i, label %while.body.i177.i.if.end_crit_edge, label %while.body.i177.i.land.rhs.i175.i_crit_edge

while.body.i177.i.land.rhs.i175.i_crit_edge:      ; preds = %while.body.i177.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i175.i

while.body.i177.i.if.end_crit_edge:               ; preds = %while.body.i177.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

__af6list_valid.exit180.i:                        ; preds = %land.rhs.i175.i
  %cmp90.not.i = icmp eq ptr %i.09.i172.i, %list6.i
  br i1 %cmp90.not.i, label %__af6list_valid.exit180.i.if.end_crit_edge, label %__af6list_valid.exit180.i.for.body92.i_crit_edge

__af6list_valid.exit180.i.for.body92.i_crit_edge: ; preds = %__af6list_valid.exit180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body92.i

__af6list_valid.exit180.i.if.end_crit_edge:       ; preds = %__af6list_valid.exit180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %__af6list_valid.exit180.i.if.end_crit_edge, %while.body.i177.i.if.end_crit_edge, %for.inc112.i.if.end_crit_edge, %__af6list_valid.exit.i.if.end_crit_edge, %while.body.i168.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %lor.lhs.false48.i.if.end_crit_edge, %lor.lhs.false37.i.if.end_crit_edge, %sw.bb.i.if.end_crit_edge
  %62 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %65, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @netlbl_domhsh_lock) #9
  %66 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %entry1, align 4
  %cmp2.not = icmp eq ptr %67, null
  %68 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %family.i, align 4
  br i1 %cmp2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc ptr @netlbl_domhsh_search(ptr noundef nonnull %67, i16 noundef zeroext %69)
  br label %if.end9

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call fastcc ptr @netlbl_domhsh_search_def(ptr noundef null, i16 noundef zeroext %69)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %entry_old.0 = phi ptr [ %call5, %if.then3 ], [ %call8, %if.else ]
  %cmp10 = icmp eq ptr %entry_old.0, null
  br i1 %cmp10, label %if.then11, label %if.else247

if.then11:                                        ; preds = %if.end9
  %valid = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 3
  %70 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %valid, align 4
  %71 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %entry1, align 4
  %cmp13.not = icmp eq ptr %72, null
  br i1 %cmp13.not, label %if.else28, label %if.then14

if.then14:                                        ; preds = %if.then11
  %call16 = tail call fastcc i32 @netlbl_domhsh_hash(ptr noundef nonnull %72)
  %list = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 4
  %73 = load volatile ptr, ptr @netlbl_domhsh, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then14.do.end26_crit_edge

if.then14.do.end26_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

land.lhs.true:                                    ; preds = %if.then14
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.do.end26_crit_edge, label %land.lhs.true21

land.lhs.true.do.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

land.lhs.true21:                                  ; preds = %land.lhs.true
  %.b487 = load i1, ptr @netlbl_domhsh_add.__warned, align 1
  br i1 %.b487, label %land.lhs.true21.do.end26_crit_edge, label %if.then23

land.lhs.true21.do.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netlbl_domhsh_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 438, ptr noundef nonnull @.str.1) #9
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %land.lhs.true21.do.end26_crit_edge, %land.lhs.true.do.end26_crit_edge, %if.then14.do.end26_crit_edge
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %75, i32 %call16
  %prev.i = getelementptr %struct.list_head, ptr %75, i32 %call16, i32 1
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %77, ptr noundef %arrayidx) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end26.if.end206_crit_edge

do.end26.if.end206_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end206

if.end.i.i:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %arrayidx, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 4, i32 1
  %79 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %77, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %list, ptr %77, align 4
  %81 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %list, ptr %prev.i, align 4
  br label %if.end206

if.else28:                                        ; preds = %if.then11
  %list29 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 4
  %82 = ptrtoint ptr %list29 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %list29, ptr %list29, align 4
  %prev.i488 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %prev.i488 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %list29, ptr %prev.i488, align 4
  %84 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %family.i, align 4
  %86 = zext i16 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %85, label %if.else28.add_return_crit_edge [
    i16 2, label %do.body31
    i16 10, label %do.body71
    i16 0, label %sw.bb111
  ]

if.else28.add_return_crit_edge:                   ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_return

do.body31:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !74
  store volatile ptr %entry1, ptr @netlbl_domhsh_def_ipv4, align 4
  br label %if.end206

do.body71:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  store volatile ptr %entry1, ptr @netlbl_domhsh_def_ipv6, align 4
  br label %if.end206

sw.bb111:                                         ; preds = %if.else28
  %87 = ptrtoint ptr %def17.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %def17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %88)
  %cmp112.not = icmp eq i32 %88, 5
  br i1 %cmp112.not, label %if.end115, label %sw.bb111.add_return_crit_edge

sw.bb111.add_return_crit_edge:                    ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_return

if.end115:                                        ; preds = %sw.bb111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 2848, i32 noundef 36) #12
  %cmp117 = icmp eq ptr %call7.i.i, null
  br i1 %cmp117, label %if.end115.add_return_crit_edge, label %if.end120

if.end115.add_return_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_return

if.end120:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %family121 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %family121 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 10, ptr %family121, align 4
  %def122 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %def122 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 5, ptr %def122, align 8
  %valid124 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call7.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %valid124 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %valid124, align 8
  %93 = ptrtoint ptr %family.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 2, ptr %family.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !76
  store volatile ptr %entry1, ptr @netlbl_domhsh_def_ipv4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !77
  store volatile ptr %call7.i.i, ptr @netlbl_domhsh_def_ipv6, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.end120, %do.body71, %do.body31, %if.end.i.i, %do.end26.if.end206_crit_edge
  %94 = ptrtoint ptr %def17.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %def17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %95)
  %cmp209 = icmp eq i32 %95, 6
  br i1 %cmp209, label %if.then211, label %if.else245

if.then211:                                       ; preds = %if.end206
  %96 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %cmp.not19.i = icmp eq ptr %100, %98
  br i1 %cmp.not19.i, label %if.then211.__af4list_valid_rcu.exit_crit_edge, label %if.then211.land.rhs.i_crit_edge

if.then211.land.rhs.i_crit_edge:                  ; preds = %if.then211
  br label %land.rhs.i

if.then211.__af4list_valid_rcu.exit_crit_edge:    ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit

land.rhs.i:                                       ; preds = %do.end9.i.land.rhs.i_crit_edge, %if.then211.land.rhs.i_crit_edge
  %i.020.i = phi ptr [ %104, %do.end9.i.land.rhs.i_crit_edge ], [ %100, %if.then211.land.rhs.i_crit_edge ]
  %valid.i = getelementptr i8, ptr %i.020.i, i32 -4
  %101 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i489 = icmp eq i32 %102, 0
  br i1 %tobool.not.i489, label %while.body.i, label %land.rhs.i.__af4list_valid_rcu.exit_crit_edge

land.rhs.i.__af4list_valid_rcu.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit

while.body.i:                                     ; preds = %land.rhs.i
  %103 = ptrtoint ptr %i.020.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %i.020.i, align 4
  %call.i490 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i490)
  %tobool3.not.i = icmp eq i32 %call.i490, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i491, label %while.body.i.do.end9.i_crit_edge

while.body.i.do.end9.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true.i491:                               ; preds = %while.body.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i491.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i491.do.end9.i_crit_edge:           ; preds = %land.lhs.true.i491
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i491
  %.b18.i = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i492

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

if.then.i492:                                     ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 76, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i492, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i491.do.end9.i_crit_edge, %while.body.i.do.end9.i_crit_edge
  %cmp.not.i = icmp eq ptr %104, %98
  br i1 %cmp.not.i, label %do.end9.i.__af4list_valid_rcu.exit_crit_edge, label %do.end9.i.land.rhs.i_crit_edge

do.end9.i.land.rhs.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

do.end9.i.__af4list_valid_rcu.exit_crit_edge:     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit

__af4list_valid_rcu.exit:                         ; preds = %do.end9.i.__af4list_valid_rcu.exit_crit_edge, %land.rhs.i.__af4list_valid_rcu.exit_crit_edge, %if.then211.__af4list_valid_rcu.exit_crit_edge
  %i.0.lcssa.i = phi ptr [ %98, %if.then211.__af4list_valid_rcu.exit_crit_edge ], [ %i.020.i, %land.rhs.i.__af4list_valid_rcu.exit_crit_edge ], [ %98, %do.end9.i.__af4list_valid_rcu.exit_crit_edge ]
  %105 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %96, align 4
  %cmp219.not725 = icmp eq ptr %i.0.lcssa.i, %106
  br i1 %cmp219.not725, label %__af4list_valid_rcu.exit.for.end_crit_edge, label %__af4list_valid_rcu.exit.for.body_crit_edge

__af4list_valid_rcu.exit.for.body_crit_edge:      ; preds = %__af4list_valid_rcu.exit
  br label %for.body

__af4list_valid_rcu.exit.for.end_crit_edge:       ; preds = %__af4list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %__af4list_valid_rcu.exit511.for.body_crit_edge, %__af4list_valid_rcu.exit.for.body_crit_edge
  %i.0.lcssa.i.pn726 = phi ptr [ %i.0.lcssa.i509, %__af4list_valid_rcu.exit511.for.body_crit_edge ], [ %i.0.lcssa.i, %__af4list_valid_rcu.exit.for.body_crit_edge ]
  %iter4.0 = getelementptr i8, ptr %i.0.lcssa.i.pn726, i32 -12
  tail call fastcc void @netlbl_domhsh_audit_add(ptr noundef nonnull %entry1, ptr noundef %iter4.0, ptr noundef null, i32 noundef 0, ptr noundef %audit_info)
  %107 = ptrtoint ptr %i.0.lcssa.i.pn726 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i.0.lcssa.i.pn726, align 4
  %109 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %96, align 4
  %cmp.not19.i493 = icmp eq ptr %108, %110
  br i1 %cmp.not19.i493, label %for.body.__af4list_valid_rcu.exit511_crit_edge, label %for.body.land.rhs.i497_crit_edge

for.body.land.rhs.i497_crit_edge:                 ; preds = %for.body
  br label %land.rhs.i497

for.body.__af4list_valid_rcu.exit511_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit511

land.rhs.i497:                                    ; preds = %do.end9.i508.land.rhs.i497_crit_edge, %for.body.land.rhs.i497_crit_edge
  %i.020.i494 = phi ptr [ %114, %do.end9.i508.land.rhs.i497_crit_edge ], [ %108, %for.body.land.rhs.i497_crit_edge ]
  %valid.i495 = getelementptr i8, ptr %i.020.i494, i32 -4
  %111 = ptrtoint ptr %valid.i495 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %valid.i495, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i496 = icmp eq i32 %112, 0
  br i1 %tobool.not.i496, label %while.body.i500, label %land.rhs.i497.__af4list_valid_rcu.exit511_crit_edge

land.rhs.i497.__af4list_valid_rcu.exit511_crit_edge: ; preds = %land.rhs.i497
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit511

while.body.i500:                                  ; preds = %land.rhs.i497
  %113 = ptrtoint ptr %i.020.i494 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile ptr, ptr %i.020.i494, align 4
  %call.i498 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i498)
  %tobool3.not.i499 = icmp eq i32 %call.i498, 0
  br i1 %tobool3.not.i499, label %land.lhs.true.i503, label %while.body.i500.do.end9.i508_crit_edge

while.body.i500.do.end9.i508_crit_edge:           ; preds = %while.body.i500
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i508

land.lhs.true.i503:                               ; preds = %while.body.i500
  %call4.i501 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i501)
  %tobool5.not.i502 = icmp eq i32 %call4.i501, 0
  br i1 %tobool5.not.i502, label %land.lhs.true.i503.do.end9.i508_crit_edge, label %land.lhs.true6.i505

land.lhs.true.i503.do.end9.i508_crit_edge:        ; preds = %land.lhs.true.i503
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i508

land.lhs.true6.i505:                              ; preds = %land.lhs.true.i503
  %.b18.i504 = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i504, label %land.lhs.true6.i505.do.end9.i508_crit_edge, label %if.then.i506

land.lhs.true6.i505.do.end9.i508_crit_edge:       ; preds = %land.lhs.true6.i505
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i508

if.then.i506:                                     ; preds = %land.lhs.true6.i505
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 76, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i508

do.end9.i508:                                     ; preds = %if.then.i506, %land.lhs.true6.i505.do.end9.i508_crit_edge, %land.lhs.true.i503.do.end9.i508_crit_edge, %while.body.i500.do.end9.i508_crit_edge
  %cmp.not.i507 = icmp eq ptr %114, %110
  br i1 %cmp.not.i507, label %do.end9.i508.__af4list_valid_rcu.exit511_crit_edge, label %do.end9.i508.land.rhs.i497_crit_edge

do.end9.i508.land.rhs.i497_crit_edge:             ; preds = %do.end9.i508
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i497

do.end9.i508.__af4list_valid_rcu.exit511_crit_edge: ; preds = %do.end9.i508
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit511

__af4list_valid_rcu.exit511:                      ; preds = %do.end9.i508.__af4list_valid_rcu.exit511_crit_edge, %land.rhs.i497.__af4list_valid_rcu.exit511_crit_edge, %for.body.__af4list_valid_rcu.exit511_crit_edge
  %i.0.lcssa.i509 = phi ptr [ %108, %for.body.__af4list_valid_rcu.exit511_crit_edge ], [ %i.020.i494, %land.rhs.i497.__af4list_valid_rcu.exit511_crit_edge ], [ %110, %do.end9.i508.__af4list_valid_rcu.exit511_crit_edge ]
  %115 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %96, align 4
  %cmp219.not = icmp eq ptr %i.0.lcssa.i509, %116
  br i1 %cmp219.not, label %__af4list_valid_rcu.exit511.for.end_crit_edge, label %__af4list_valid_rcu.exit511.for.body_crit_edge

__af4list_valid_rcu.exit511.for.body_crit_edge:   ; preds = %__af4list_valid_rcu.exit511
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

__af4list_valid_rcu.exit511.for.end_crit_edge:    ; preds = %__af4list_valid_rcu.exit511
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %__af4list_valid_rcu.exit511.for.end_crit_edge, %__af4list_valid_rcu.exit.for.end_crit_edge
  %.lcssa = phi ptr [ %i.0.lcssa.i, %__af4list_valid_rcu.exit.for.end_crit_edge ], [ %i.0.lcssa.i509, %__af4list_valid_rcu.exit511.for.end_crit_edge ]
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %.lcssa, i32 0, i32 1
  %117 = ptrtoint ptr %list6 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %list6, align 4
  %cmp.not19.i512 = icmp eq ptr %118, %list6
  br i1 %cmp.not19.i512, label %for.end.__af6list_valid_rcu.exit_crit_edge, label %for.end.land.rhs.i516_crit_edge

for.end.land.rhs.i516_crit_edge:                  ; preds = %for.end
  br label %land.rhs.i516

for.end.__af6list_valid_rcu.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit

land.rhs.i516:                                    ; preds = %do.end9.i527.land.rhs.i516_crit_edge, %for.end.land.rhs.i516_crit_edge
  %i.020.i513 = phi ptr [ %122, %do.end9.i527.land.rhs.i516_crit_edge ], [ %118, %for.end.land.rhs.i516_crit_edge ]
  %valid.i514 = getelementptr i8, ptr %i.020.i513, i32 -4
  %119 = ptrtoint ptr %valid.i514 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %valid.i514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i515 = icmp eq i32 %120, 0
  br i1 %tobool.not.i515, label %while.body.i519, label %land.rhs.i516.__af6list_valid_rcu.exit_crit_edge

land.rhs.i516.__af6list_valid_rcu.exit_crit_edge: ; preds = %land.rhs.i516
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit

while.body.i519:                                  ; preds = %land.rhs.i516
  %121 = ptrtoint ptr %i.020.i513 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile ptr, ptr %i.020.i513, align 4
  %call.i517 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i517)
  %tobool3.not.i518 = icmp eq i32 %call.i517, 0
  br i1 %tobool3.not.i518, label %land.lhs.true.i522, label %while.body.i519.do.end9.i527_crit_edge

while.body.i519.do.end9.i527_crit_edge:           ; preds = %while.body.i519
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i527

land.lhs.true.i522:                               ; preds = %while.body.i519
  %call4.i520 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i520)
  %tobool5.not.i521 = icmp eq i32 %call4.i520, 0
  br i1 %tobool5.not.i521, label %land.lhs.true.i522.do.end9.i527_crit_edge, label %land.lhs.true6.i524

land.lhs.true.i522.do.end9.i527_crit_edge:        ; preds = %land.lhs.true.i522
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i527

land.lhs.true6.i524:                              ; preds = %land.lhs.true.i522
  %.b18.i523 = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18.i523, label %land.lhs.true6.i524.do.end9.i527_crit_edge, label %if.then.i525

land.lhs.true6.i524.do.end9.i527_crit_edge:       ; preds = %land.lhs.true6.i524
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i527

if.then.i525:                                     ; preds = %land.lhs.true6.i524
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 143, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i527

do.end9.i527:                                     ; preds = %if.then.i525, %land.lhs.true6.i524.do.end9.i527_crit_edge, %land.lhs.true.i522.do.end9.i527_crit_edge, %while.body.i519.do.end9.i527_crit_edge
  %cmp.not.i526 = icmp eq ptr %122, %list6
  br i1 %cmp.not.i526, label %do.end9.i527.__af6list_valid_rcu.exit_crit_edge, label %do.end9.i527.land.rhs.i516_crit_edge

do.end9.i527.land.rhs.i516_crit_edge:             ; preds = %do.end9.i527
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i516

do.end9.i527.__af6list_valid_rcu.exit_crit_edge:  ; preds = %do.end9.i527
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit

__af6list_valid_rcu.exit:                         ; preds = %do.end9.i527.__af6list_valid_rcu.exit_crit_edge, %land.rhs.i516.__af6list_valid_rcu.exit_crit_edge, %for.end.__af6list_valid_rcu.exit_crit_edge
  %i.0.lcssa.i528 = phi ptr [ %list6, %for.end.__af6list_valid_rcu.exit_crit_edge ], [ %i.020.i513, %land.rhs.i516.__af6list_valid_rcu.exit_crit_edge ], [ %list6, %do.end9.i527.__af6list_valid_rcu.exit_crit_edge ]
  %123 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %96, align 4
  %list6234728 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %124, i32 0, i32 1
  %cmp235.not729 = icmp eq ptr %i.0.lcssa.i528, %list6234728
  br i1 %cmp235.not729, label %__af6list_valid_rcu.exit.add_return_crit_edge, label %__af6list_valid_rcu.exit.for.body237_crit_edge

__af6list_valid_rcu.exit.for.body237_crit_edge:   ; preds = %__af6list_valid_rcu.exit
  br label %for.body237

__af6list_valid_rcu.exit.add_return_crit_edge:    ; preds = %__af6list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_return

for.body237:                                      ; preds = %__af6list_valid_rcu.exit548.for.body237_crit_edge, %__af6list_valid_rcu.exit.for.body237_crit_edge
  %i.0.lcssa.i528.pn730 = phi ptr [ %i.0.lcssa.i546, %__af6list_valid_rcu.exit548.for.body237_crit_edge ], [ %i.0.lcssa.i528, %__af6list_valid_rcu.exit.for.body237_crit_edge ]
  %iter6.0 = getelementptr i8, ptr %i.0.lcssa.i528.pn730, i32 -36
  tail call fastcc void @netlbl_domhsh_audit_add(ptr noundef nonnull %entry1, ptr noundef null, ptr noundef %iter6.0, i32 noundef 0, ptr noundef %audit_info)
  %125 = ptrtoint ptr %i.0.lcssa.i528.pn730 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i.0.lcssa.i528.pn730, align 4
  %127 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %96, align 4
  %list6242 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %128, i32 0, i32 1
  %cmp.not19.i530 = icmp eq ptr %126, %list6242
  br i1 %cmp.not19.i530, label %for.body237.__af6list_valid_rcu.exit548_crit_edge, label %for.body237.land.rhs.i534_crit_edge

for.body237.land.rhs.i534_crit_edge:              ; preds = %for.body237
  br label %land.rhs.i534

for.body237.__af6list_valid_rcu.exit548_crit_edge: ; preds = %for.body237
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit548

land.rhs.i534:                                    ; preds = %do.end9.i545.land.rhs.i534_crit_edge, %for.body237.land.rhs.i534_crit_edge
  %i.020.i531 = phi ptr [ %132, %do.end9.i545.land.rhs.i534_crit_edge ], [ %126, %for.body237.land.rhs.i534_crit_edge ]
  %valid.i532 = getelementptr i8, ptr %i.020.i531, i32 -4
  %129 = ptrtoint ptr %valid.i532 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %valid.i532, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.not.i533 = icmp eq i32 %130, 0
  br i1 %tobool.not.i533, label %while.body.i537, label %land.rhs.i534.__af6list_valid_rcu.exit548_crit_edge

land.rhs.i534.__af6list_valid_rcu.exit548_crit_edge: ; preds = %land.rhs.i534
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit548

while.body.i537:                                  ; preds = %land.rhs.i534
  %131 = ptrtoint ptr %i.020.i531 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %i.020.i531, align 4
  %call.i535 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i535)
  %tobool3.not.i536 = icmp eq i32 %call.i535, 0
  br i1 %tobool3.not.i536, label %land.lhs.true.i540, label %while.body.i537.do.end9.i545_crit_edge

while.body.i537.do.end9.i545_crit_edge:           ; preds = %while.body.i537
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i545

land.lhs.true.i540:                               ; preds = %while.body.i537
  %call4.i538 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i538)
  %tobool5.not.i539 = icmp eq i32 %call4.i538, 0
  br i1 %tobool5.not.i539, label %land.lhs.true.i540.do.end9.i545_crit_edge, label %land.lhs.true6.i542

land.lhs.true.i540.do.end9.i545_crit_edge:        ; preds = %land.lhs.true.i540
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i545

land.lhs.true6.i542:                              ; preds = %land.lhs.true.i540
  %.b18.i541 = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18.i541, label %land.lhs.true6.i542.do.end9.i545_crit_edge, label %if.then.i543

land.lhs.true6.i542.do.end9.i545_crit_edge:       ; preds = %land.lhs.true6.i542
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i545

if.then.i543:                                     ; preds = %land.lhs.true6.i542
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 143, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i545

do.end9.i545:                                     ; preds = %if.then.i543, %land.lhs.true6.i542.do.end9.i545_crit_edge, %land.lhs.true.i540.do.end9.i545_crit_edge, %while.body.i537.do.end9.i545_crit_edge
  %cmp.not.i544 = icmp eq ptr %132, %list6242
  br i1 %cmp.not.i544, label %do.end9.i545.__af6list_valid_rcu.exit548_crit_edge, label %do.end9.i545.land.rhs.i534_crit_edge

do.end9.i545.land.rhs.i534_crit_edge:             ; preds = %do.end9.i545
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i534

do.end9.i545.__af6list_valid_rcu.exit548_crit_edge: ; preds = %do.end9.i545
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit548

__af6list_valid_rcu.exit548:                      ; preds = %do.end9.i545.__af6list_valid_rcu.exit548_crit_edge, %land.rhs.i534.__af6list_valid_rcu.exit548_crit_edge, %for.body237.__af6list_valid_rcu.exit548_crit_edge
  %i.0.lcssa.i546 = phi ptr [ %126, %for.body237.__af6list_valid_rcu.exit548_crit_edge ], [ %i.020.i531, %land.rhs.i534.__af6list_valid_rcu.exit548_crit_edge ], [ %list6242, %do.end9.i545.__af6list_valid_rcu.exit548_crit_edge ]
  %133 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %96, align 4
  %list6234 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %134, i32 0, i32 1
  %cmp235.not = icmp eq ptr %i.0.lcssa.i546, %list6234
  br i1 %cmp235.not, label %__af6list_valid_rcu.exit548.add_return_crit_edge, label %__af6list_valid_rcu.exit548.for.body237_crit_edge

__af6list_valid_rcu.exit548.for.body237_crit_edge: ; preds = %__af6list_valid_rcu.exit548
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body237

__af6list_valid_rcu.exit548.add_return_crit_edge: ; preds = %__af6list_valid_rcu.exit548
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_return

if.else245:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @netlbl_domhsh_audit_add(ptr noundef nonnull %entry1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %audit_info)
  br label %add_return

if.else247:                                       ; preds = %if.end9
  %def248 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry_old.0, i32 0, i32 2
  %135 = ptrtoint ptr %def248 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %def248, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %136)
  %cmp250 = icmp eq i32 %136, 6
  br i1 %cmp250, label %land.lhs.true252, label %if.else247.add_return_crit_edge

if.else247.add_return_crit_edge:                  ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_return

land.lhs.true252:                                 ; preds = %if.else247
  %137 = ptrtoint ptr %def17.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %def17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %138)
  %cmp255 = icmp eq i32 %138, 6
  br i1 %cmp255, label %if.then257, label %land.lhs.true252.add_return_crit_edge

land.lhs.true252.add_return_crit_edge:            ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_return

if.then257:                                       ; preds = %land.lhs.true252
  %139 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry_old.0, i32 0, i32 2, i32 1
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %list6261 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %141, i32 0, i32 1
  %142 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2, i32 1
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %cmp.not19.i549 = icmp eq ptr %146, %144
  br i1 %cmp.not19.i549, label %if.then257.__af4list_valid_rcu.exit567_crit_edge, label %if.then257.land.rhs.i553_crit_edge

if.then257.land.rhs.i553_crit_edge:               ; preds = %if.then257
  br label %land.rhs.i553

if.then257.__af4list_valid_rcu.exit567_crit_edge: ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit567

land.rhs.i553:                                    ; preds = %do.end9.i564.land.rhs.i553_crit_edge, %if.then257.land.rhs.i553_crit_edge
  %i.020.i550 = phi ptr [ %150, %do.end9.i564.land.rhs.i553_crit_edge ], [ %146, %if.then257.land.rhs.i553_crit_edge ]
  %valid.i551 = getelementptr i8, ptr %i.020.i550, i32 -4
  %147 = ptrtoint ptr %valid.i551 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %valid.i551, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool.not.i552 = icmp eq i32 %148, 0
  br i1 %tobool.not.i552, label %while.body.i556, label %land.rhs.i553.__af4list_valid_rcu.exit567_crit_edge

land.rhs.i553.__af4list_valid_rcu.exit567_crit_edge: ; preds = %land.rhs.i553
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit567

while.body.i556:                                  ; preds = %land.rhs.i553
  %149 = ptrtoint ptr %i.020.i550 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile ptr, ptr %i.020.i550, align 4
  %call.i554 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i554)
  %tobool3.not.i555 = icmp eq i32 %call.i554, 0
  br i1 %tobool3.not.i555, label %land.lhs.true.i559, label %while.body.i556.do.end9.i564_crit_edge

while.body.i556.do.end9.i564_crit_edge:           ; preds = %while.body.i556
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i564

land.lhs.true.i559:                               ; preds = %while.body.i556
  %call4.i557 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i557)
  %tobool5.not.i558 = icmp eq i32 %call4.i557, 0
  br i1 %tobool5.not.i558, label %land.lhs.true.i559.do.end9.i564_crit_edge, label %land.lhs.true6.i561

land.lhs.true.i559.do.end9.i564_crit_edge:        ; preds = %land.lhs.true.i559
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i564

land.lhs.true6.i561:                              ; preds = %land.lhs.true.i559
  %.b18.i560 = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i560, label %land.lhs.true6.i561.do.end9.i564_crit_edge, label %if.then.i562

land.lhs.true6.i561.do.end9.i564_crit_edge:       ; preds = %land.lhs.true6.i561
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i564

if.then.i562:                                     ; preds = %land.lhs.true6.i561
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 76, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i564

do.end9.i564:                                     ; preds = %if.then.i562, %land.lhs.true6.i561.do.end9.i564_crit_edge, %land.lhs.true.i559.do.end9.i564_crit_edge, %while.body.i556.do.end9.i564_crit_edge
  %cmp.not.i563 = icmp eq ptr %150, %144
  br i1 %cmp.not.i563, label %do.end9.i564.__af4list_valid_rcu.exit567_crit_edge, label %do.end9.i564.land.rhs.i553_crit_edge

do.end9.i564.land.rhs.i553_crit_edge:             ; preds = %do.end9.i564
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i553

do.end9.i564.__af4list_valid_rcu.exit567_crit_edge: ; preds = %do.end9.i564
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit567

__af4list_valid_rcu.exit567:                      ; preds = %do.end9.i564.__af4list_valid_rcu.exit567_crit_edge, %land.rhs.i553.__af4list_valid_rcu.exit567_crit_edge, %if.then257.__af4list_valid_rcu.exit567_crit_edge
  %i.0.lcssa.i565 = phi ptr [ %144, %if.then257.__af4list_valid_rcu.exit567_crit_edge ], [ %i.020.i550, %land.rhs.i553.__af4list_valid_rcu.exit567_crit_edge ], [ %144, %do.end9.i564.__af4list_valid_rcu.exit567_crit_edge ]
  %151 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %142, align 4
  %cmp272.not711 = icmp eq ptr %i.0.lcssa.i565, %152
  br i1 %cmp272.not711, label %__af4list_valid_rcu.exit567.for.end285_crit_edge, label %__af4list_valid_rcu.exit567.for.body274_crit_edge

__af4list_valid_rcu.exit567.for.body274_crit_edge: ; preds = %__af4list_valid_rcu.exit567
  br label %for.body274

__af4list_valid_rcu.exit567.for.end285_crit_edge: ; preds = %__af4list_valid_rcu.exit567
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end285

for.body274:                                      ; preds = %__af4list_valid_rcu.exit586.for.body274_crit_edge, %__af4list_valid_rcu.exit567.for.body274_crit_edge
  %i.0.lcssa.i565.pn712 = phi ptr [ %i.0.lcssa.i584, %__af4list_valid_rcu.exit586.for.body274_crit_edge ], [ %i.0.lcssa.i565, %__af4list_valid_rcu.exit567.for.body274_crit_edge ]
  %iter4.1 = getelementptr i8, ptr %i.0.lcssa.i565.pn712, i32 -12
  %153 = ptrtoint ptr %iter4.1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %iter4.1, align 4
  %mask = getelementptr i8, ptr %i.0.lcssa.i565.pn712, i32 -8
  %155 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %mask, align 4
  %call275 = tail call ptr @netlbl_af4list_search_exact(i32 noundef %154, i32 noundef %156, ptr noundef %141) #9
  %tobool276.not = icmp eq ptr %call275, null
  br i1 %tobool276.not, label %for.inc279, label %for.body274.add_return_crit_edge

for.body274.add_return_crit_edge:                 ; preds = %for.body274
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_return

for.inc279:                                       ; preds = %for.body274
  %157 = ptrtoint ptr %i.0.lcssa.i565.pn712 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %i.0.lcssa.i565.pn712, align 4
  %159 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %142, align 4
  %cmp.not19.i568 = icmp eq ptr %158, %160
  br i1 %cmp.not19.i568, label %for.inc279.__af4list_valid_rcu.exit586_crit_edge, label %for.inc279.land.rhs.i572_crit_edge

for.inc279.land.rhs.i572_crit_edge:               ; preds = %for.inc279
  br label %land.rhs.i572

for.inc279.__af4list_valid_rcu.exit586_crit_edge: ; preds = %for.inc279
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit586

land.rhs.i572:                                    ; preds = %do.end9.i583.land.rhs.i572_crit_edge, %for.inc279.land.rhs.i572_crit_edge
  %i.020.i569 = phi ptr [ %164, %do.end9.i583.land.rhs.i572_crit_edge ], [ %158, %for.inc279.land.rhs.i572_crit_edge ]
  %valid.i570 = getelementptr i8, ptr %i.020.i569, i32 -4
  %161 = ptrtoint ptr %valid.i570 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %valid.i570, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.i571 = icmp eq i32 %162, 0
  br i1 %tobool.not.i571, label %while.body.i575, label %land.rhs.i572.__af4list_valid_rcu.exit586_crit_edge

land.rhs.i572.__af4list_valid_rcu.exit586_crit_edge: ; preds = %land.rhs.i572
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit586

while.body.i575:                                  ; preds = %land.rhs.i572
  %163 = ptrtoint ptr %i.020.i569 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile ptr, ptr %i.020.i569, align 4
  %call.i573 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i573)
  %tobool3.not.i574 = icmp eq i32 %call.i573, 0
  br i1 %tobool3.not.i574, label %land.lhs.true.i578, label %while.body.i575.do.end9.i583_crit_edge

while.body.i575.do.end9.i583_crit_edge:           ; preds = %while.body.i575
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i583

land.lhs.true.i578:                               ; preds = %while.body.i575
  %call4.i576 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i576)
  %tobool5.not.i577 = icmp eq i32 %call4.i576, 0
  br i1 %tobool5.not.i577, label %land.lhs.true.i578.do.end9.i583_crit_edge, label %land.lhs.true6.i580

land.lhs.true.i578.do.end9.i583_crit_edge:        ; preds = %land.lhs.true.i578
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i583

land.lhs.true6.i580:                              ; preds = %land.lhs.true.i578
  %.b18.i579 = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i579, label %land.lhs.true6.i580.do.end9.i583_crit_edge, label %if.then.i581

land.lhs.true6.i580.do.end9.i583_crit_edge:       ; preds = %land.lhs.true6.i580
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i583

if.then.i581:                                     ; preds = %land.lhs.true6.i580
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 76, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i583

do.end9.i583:                                     ; preds = %if.then.i581, %land.lhs.true6.i580.do.end9.i583_crit_edge, %land.lhs.true.i578.do.end9.i583_crit_edge, %while.body.i575.do.end9.i583_crit_edge
  %cmp.not.i582 = icmp eq ptr %164, %160
  br i1 %cmp.not.i582, label %do.end9.i583.__af4list_valid_rcu.exit586_crit_edge, label %do.end9.i583.land.rhs.i572_crit_edge

do.end9.i583.land.rhs.i572_crit_edge:             ; preds = %do.end9.i583
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i572

do.end9.i583.__af4list_valid_rcu.exit586_crit_edge: ; preds = %do.end9.i583
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit586

__af4list_valid_rcu.exit586:                      ; preds = %do.end9.i583.__af4list_valid_rcu.exit586_crit_edge, %land.rhs.i572.__af4list_valid_rcu.exit586_crit_edge, %for.inc279.__af4list_valid_rcu.exit586_crit_edge
  %i.0.lcssa.i584 = phi ptr [ %158, %for.inc279.__af4list_valid_rcu.exit586_crit_edge ], [ %i.020.i569, %land.rhs.i572.__af4list_valid_rcu.exit586_crit_edge ], [ %160, %do.end9.i583.__af4list_valid_rcu.exit586_crit_edge ]
  %165 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %142, align 4
  %cmp272.not = icmp eq ptr %i.0.lcssa.i584, %166
  br i1 %cmp272.not, label %__af4list_valid_rcu.exit586.for.end285_crit_edge, label %__af4list_valid_rcu.exit586.for.body274_crit_edge

__af4list_valid_rcu.exit586.for.body274_crit_edge: ; preds = %__af4list_valid_rcu.exit586
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body274

__af4list_valid_rcu.exit586.for.end285_crit_edge: ; preds = %__af4list_valid_rcu.exit586
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end285

for.end285:                                       ; preds = %__af4list_valid_rcu.exit586.for.end285_crit_edge, %__af4list_valid_rcu.exit567.for.end285_crit_edge
  %.lcssa705 = phi ptr [ %i.0.lcssa.i565, %__af4list_valid_rcu.exit567.for.end285_crit_edge ], [ %i.0.lcssa.i584, %__af4list_valid_rcu.exit586.for.end285_crit_edge ]
  %list6287 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %.lcssa705, i32 0, i32 1
  %167 = ptrtoint ptr %list6287 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %list6287, align 4
  %cmp.not19.i587 = icmp eq ptr %168, %list6287
  br i1 %cmp.not19.i587, label %for.end285.__af6list_valid_rcu.exit605_crit_edge, label %for.end285.land.rhs.i591_crit_edge

for.end285.land.rhs.i591_crit_edge:               ; preds = %for.end285
  br label %land.rhs.i591

for.end285.__af6list_valid_rcu.exit605_crit_edge: ; preds = %for.end285
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit605

land.rhs.i591:                                    ; preds = %do.end9.i602.land.rhs.i591_crit_edge, %for.end285.land.rhs.i591_crit_edge
  %i.020.i588 = phi ptr [ %172, %do.end9.i602.land.rhs.i591_crit_edge ], [ %168, %for.end285.land.rhs.i591_crit_edge ]
  %valid.i589 = getelementptr i8, ptr %i.020.i588, i32 -4
  %169 = ptrtoint ptr %valid.i589 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %valid.i589, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i590 = icmp eq i32 %170, 0
  br i1 %tobool.not.i590, label %while.body.i594, label %land.rhs.i591.__af6list_valid_rcu.exit605_crit_edge

land.rhs.i591.__af6list_valid_rcu.exit605_crit_edge: ; preds = %land.rhs.i591
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit605

while.body.i594:                                  ; preds = %land.rhs.i591
  %171 = ptrtoint ptr %i.020.i588 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile ptr, ptr %i.020.i588, align 4
  %call.i592 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i592)
  %tobool3.not.i593 = icmp eq i32 %call.i592, 0
  br i1 %tobool3.not.i593, label %land.lhs.true.i597, label %while.body.i594.do.end9.i602_crit_edge

while.body.i594.do.end9.i602_crit_edge:           ; preds = %while.body.i594
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i602

land.lhs.true.i597:                               ; preds = %while.body.i594
  %call4.i595 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i595)
  %tobool5.not.i596 = icmp eq i32 %call4.i595, 0
  br i1 %tobool5.not.i596, label %land.lhs.true.i597.do.end9.i602_crit_edge, label %land.lhs.true6.i599

land.lhs.true.i597.do.end9.i602_crit_edge:        ; preds = %land.lhs.true.i597
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i602

land.lhs.true6.i599:                              ; preds = %land.lhs.true.i597
  %.b18.i598 = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18.i598, label %land.lhs.true6.i599.do.end9.i602_crit_edge, label %if.then.i600

land.lhs.true6.i599.do.end9.i602_crit_edge:       ; preds = %land.lhs.true6.i599
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i602

if.then.i600:                                     ; preds = %land.lhs.true6.i599
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 143, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i602

do.end9.i602:                                     ; preds = %if.then.i600, %land.lhs.true6.i599.do.end9.i602_crit_edge, %land.lhs.true.i597.do.end9.i602_crit_edge, %while.body.i594.do.end9.i602_crit_edge
  %cmp.not.i601 = icmp eq ptr %172, %list6287
  br i1 %cmp.not.i601, label %do.end9.i602.__af6list_valid_rcu.exit605_crit_edge, label %do.end9.i602.land.rhs.i591_crit_edge

do.end9.i602.land.rhs.i591_crit_edge:             ; preds = %do.end9.i602
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i591

do.end9.i602.__af6list_valid_rcu.exit605_crit_edge: ; preds = %do.end9.i602
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit605

__af6list_valid_rcu.exit605:                      ; preds = %do.end9.i602.__af6list_valid_rcu.exit605_crit_edge, %land.rhs.i591.__af6list_valid_rcu.exit605_crit_edge, %for.end285.__af6list_valid_rcu.exit605_crit_edge
  %i.0.lcssa.i603 = phi ptr [ %list6287, %for.end285.__af6list_valid_rcu.exit605_crit_edge ], [ %i.020.i588, %land.rhs.i591.__af6list_valid_rcu.exit605_crit_edge ], [ %list6287, %do.end9.i602.__af6list_valid_rcu.exit605_crit_edge ]
  %173 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %142, align 4
  %list6295713 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %174, i32 0, i32 1
  %cmp296.not714 = icmp eq ptr %i.0.lcssa.i603, %list6295713
  br i1 %cmp296.not714, label %__af6list_valid_rcu.exit605.for.end311_crit_edge, label %__af6list_valid_rcu.exit605.for.body298_crit_edge

__af6list_valid_rcu.exit605.for.body298_crit_edge: ; preds = %__af6list_valid_rcu.exit605
  br label %for.body298

__af6list_valid_rcu.exit605.for.end311_crit_edge: ; preds = %__af6list_valid_rcu.exit605
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end311

for.body298:                                      ; preds = %__af6list_valid_rcu.exit624.for.body298_crit_edge, %__af6list_valid_rcu.exit605.for.body298_crit_edge
  %i.0.lcssa.i603.pn715 = phi ptr [ %i.0.lcssa.i622, %__af6list_valid_rcu.exit624.for.body298_crit_edge ], [ %i.0.lcssa.i603, %__af6list_valid_rcu.exit605.for.body298_crit_edge ]
  %iter6.1 = getelementptr i8, ptr %i.0.lcssa.i603.pn715, i32 -36
  %mask300 = getelementptr i8, ptr %i.0.lcssa.i603.pn715, i32 -20
  %call301 = tail call ptr @netlbl_af6list_search_exact(ptr noundef %iter6.1, ptr noundef %mask300, ptr noundef %list6261) #9
  %tobool302.not = icmp eq ptr %call301, null
  br i1 %tobool302.not, label %for.inc305, label %for.body298.add_return_crit_edge

for.body298.add_return_crit_edge:                 ; preds = %for.body298
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_return

for.inc305:                                       ; preds = %for.body298
  %175 = ptrtoint ptr %i.0.lcssa.i603.pn715 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %i.0.lcssa.i603.pn715, align 4
  %177 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %142, align 4
  %list6309 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %178, i32 0, i32 1
  %cmp.not19.i606 = icmp eq ptr %176, %list6309
  br i1 %cmp.not19.i606, label %for.inc305.__af6list_valid_rcu.exit624_crit_edge, label %for.inc305.land.rhs.i610_crit_edge

for.inc305.land.rhs.i610_crit_edge:               ; preds = %for.inc305
  br label %land.rhs.i610

for.inc305.__af6list_valid_rcu.exit624_crit_edge: ; preds = %for.inc305
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit624

land.rhs.i610:                                    ; preds = %do.end9.i621.land.rhs.i610_crit_edge, %for.inc305.land.rhs.i610_crit_edge
  %i.020.i607 = phi ptr [ %182, %do.end9.i621.land.rhs.i610_crit_edge ], [ %176, %for.inc305.land.rhs.i610_crit_edge ]
  %valid.i608 = getelementptr i8, ptr %i.020.i607, i32 -4
  %179 = ptrtoint ptr %valid.i608 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %valid.i608, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool.not.i609 = icmp eq i32 %180, 0
  br i1 %tobool.not.i609, label %while.body.i613, label %land.rhs.i610.__af6list_valid_rcu.exit624_crit_edge

land.rhs.i610.__af6list_valid_rcu.exit624_crit_edge: ; preds = %land.rhs.i610
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit624

while.body.i613:                                  ; preds = %land.rhs.i610
  %181 = ptrtoint ptr %i.020.i607 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile ptr, ptr %i.020.i607, align 4
  %call.i611 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i611)
  %tobool3.not.i612 = icmp eq i32 %call.i611, 0
  br i1 %tobool3.not.i612, label %land.lhs.true.i616, label %while.body.i613.do.end9.i621_crit_edge

while.body.i613.do.end9.i621_crit_edge:           ; preds = %while.body.i613
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i621

land.lhs.true.i616:                               ; preds = %while.body.i613
  %call4.i614 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i614)
  %tobool5.not.i615 = icmp eq i32 %call4.i614, 0
  br i1 %tobool5.not.i615, label %land.lhs.true.i616.do.end9.i621_crit_edge, label %land.lhs.true6.i618

land.lhs.true.i616.do.end9.i621_crit_edge:        ; preds = %land.lhs.true.i616
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i621

land.lhs.true6.i618:                              ; preds = %land.lhs.true.i616
  %.b18.i617 = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18.i617, label %land.lhs.true6.i618.do.end9.i621_crit_edge, label %if.then.i619

land.lhs.true6.i618.do.end9.i621_crit_edge:       ; preds = %land.lhs.true6.i618
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i621

if.then.i619:                                     ; preds = %land.lhs.true6.i618
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 143, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i621

do.end9.i621:                                     ; preds = %if.then.i619, %land.lhs.true6.i618.do.end9.i621_crit_edge, %land.lhs.true.i616.do.end9.i621_crit_edge, %while.body.i613.do.end9.i621_crit_edge
  %cmp.not.i620 = icmp eq ptr %182, %list6309
  br i1 %cmp.not.i620, label %do.end9.i621.__af6list_valid_rcu.exit624_crit_edge, label %do.end9.i621.land.rhs.i610_crit_edge

do.end9.i621.land.rhs.i610_crit_edge:             ; preds = %do.end9.i621
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i610

do.end9.i621.__af6list_valid_rcu.exit624_crit_edge: ; preds = %do.end9.i621
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit624

__af6list_valid_rcu.exit624:                      ; preds = %do.end9.i621.__af6list_valid_rcu.exit624_crit_edge, %land.rhs.i610.__af6list_valid_rcu.exit624_crit_edge, %for.inc305.__af6list_valid_rcu.exit624_crit_edge
  %i.0.lcssa.i622 = phi ptr [ %176, %for.inc305.__af6list_valid_rcu.exit624_crit_edge ], [ %i.020.i607, %land.rhs.i610.__af6list_valid_rcu.exit624_crit_edge ], [ %list6309, %do.end9.i621.__af6list_valid_rcu.exit624_crit_edge ]
  %183 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %142, align 4
  %list6295 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %184, i32 0, i32 1
  %cmp296.not = icmp eq ptr %i.0.lcssa.i622, %list6295
  br i1 %cmp296.not, label %__af6list_valid_rcu.exit624.for.end311_crit_edge, label %__af6list_valid_rcu.exit624.for.body298_crit_edge

__af6list_valid_rcu.exit624.for.body298_crit_edge: ; preds = %__af6list_valid_rcu.exit624
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body298

__af6list_valid_rcu.exit624.for.end311_crit_edge: ; preds = %__af6list_valid_rcu.exit624
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end311

for.end311:                                       ; preds = %__af6list_valid_rcu.exit624.for.end311_crit_edge, %__af6list_valid_rcu.exit605.for.end311_crit_edge
  %.lcssa703 = phi ptr [ %174, %__af6list_valid_rcu.exit605.for.end311_crit_edge ], [ %184, %__af6list_valid_rcu.exit624.for.end311_crit_edge ]
  %185 = ptrtoint ptr %.lcssa703 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %.lcssa703, align 4
  %cmp.not8.i = icmp eq ptr %186, %.lcssa703
  br i1 %cmp.not8.i, label %for.end311.__af4list_valid.exit_crit_edge, label %for.end311.land.rhs.i627_crit_edge

for.end311.land.rhs.i627_crit_edge:               ; preds = %for.end311
  br label %land.rhs.i627

for.end311.__af4list_valid.exit_crit_edge:        ; preds = %for.end311
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit

land.rhs.i627:                                    ; preds = %while.body.i629.land.rhs.i627_crit_edge, %for.end311.land.rhs.i627_crit_edge
  %i.09.i = phi ptr [ %190, %while.body.i629.land.rhs.i627_crit_edge ], [ %186, %for.end311.land.rhs.i627_crit_edge ]
  %valid.i625 = getelementptr i8, ptr %i.09.i, i32 -4
  %187 = ptrtoint ptr %valid.i625 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %valid.i625, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i626 = icmp eq i32 %188, 0
  br i1 %tobool.not.i626, label %while.body.i629, label %land.rhs.i627.__af4list_valid.exit_crit_edge

land.rhs.i627.__af4list_valid.exit_crit_edge:     ; preds = %land.rhs.i627
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit

while.body.i629:                                  ; preds = %land.rhs.i627
  %189 = ptrtoint ptr %i.09.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %i.09.i, align 4
  %cmp.not.i628 = icmp eq ptr %190, %.lcssa703
  br i1 %cmp.not.i628, label %while.body.i629.__af4list_valid.exit_crit_edge, label %while.body.i629.land.rhs.i627_crit_edge

while.body.i629.land.rhs.i627_crit_edge:          ; preds = %while.body.i629
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i627

while.body.i629.__af4list_valid.exit_crit_edge:   ; preds = %while.body.i629
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit

__af4list_valid.exit:                             ; preds = %while.body.i629.__af4list_valid.exit_crit_edge, %land.rhs.i627.__af4list_valid.exit_crit_edge, %for.end311.__af4list_valid.exit_crit_edge
  %i.0.lcssa.i630 = phi ptr [ %.lcssa703, %for.end311.__af4list_valid.exit_crit_edge ], [ %i.09.i, %land.rhs.i627.__af4list_valid.exit_crit_edge ], [ %.lcssa703, %while.body.i629.__af4list_valid.exit_crit_edge ]
  %191 = ptrtoint ptr %i.0.lcssa.i630 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %i.0.lcssa.i630, align 4
  %cmp.not8.i632 = icmp eq ptr %192, %.lcssa703
  br i1 %cmp.not8.i632, label %__af4list_valid.exit.__af4list_valid.exit641_crit_edge, label %__af4list_valid.exit.land.rhs.i636_crit_edge

__af4list_valid.exit.land.rhs.i636_crit_edge:     ; preds = %__af4list_valid.exit
  br label %land.rhs.i636

__af4list_valid.exit.__af4list_valid.exit641_crit_edge: ; preds = %__af4list_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit641

land.rhs.i636:                                    ; preds = %while.body.i638.land.rhs.i636_crit_edge, %__af4list_valid.exit.land.rhs.i636_crit_edge
  %i.09.i633 = phi ptr [ %196, %while.body.i638.land.rhs.i636_crit_edge ], [ %192, %__af4list_valid.exit.land.rhs.i636_crit_edge ]
  %valid.i634 = getelementptr i8, ptr %i.09.i633, i32 -4
  %193 = ptrtoint ptr %valid.i634 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %valid.i634, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool.not.i635 = icmp eq i32 %194, 0
  br i1 %tobool.not.i635, label %while.body.i638, label %land.rhs.i636.__af4list_valid.exit641_crit_edge

land.rhs.i636.__af4list_valid.exit641_crit_edge:  ; preds = %land.rhs.i636
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit641

while.body.i638:                                  ; preds = %land.rhs.i636
  %195 = ptrtoint ptr %i.09.i633 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %i.09.i633, align 4
  %cmp.not.i637 = icmp eq ptr %196, %.lcssa703
  br i1 %cmp.not.i637, label %while.body.i638.__af4list_valid.exit641_crit_edge, label %while.body.i638.land.rhs.i636_crit_edge

while.body.i638.land.rhs.i636_crit_edge:          ; preds = %while.body.i638
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i636

while.body.i638.__af4list_valid.exit641_crit_edge: ; preds = %while.body.i638
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit641

__af4list_valid.exit641:                          ; preds = %while.body.i638.__af4list_valid.exit641_crit_edge, %land.rhs.i636.__af4list_valid.exit641_crit_edge, %__af4list_valid.exit.__af4list_valid.exit641_crit_edge
  %i.0.lcssa.i639 = phi ptr [ %.lcssa703, %__af4list_valid.exit.__af4list_valid.exit641_crit_edge ], [ %i.09.i633, %land.rhs.i636.__af4list_valid.exit641_crit_edge ], [ %.lcssa703, %while.body.i638.__af4list_valid.exit641_crit_edge ]
  %197 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %142, align 4
  %cmp327.not717 = icmp eq ptr %i.0.lcssa.i630, %198
  br i1 %cmp327.not717, label %__af4list_valid.exit641.for.end342_crit_edge, label %__af4list_valid.exit641.for.body329_crit_edge

__af4list_valid.exit641.for.body329_crit_edge:    ; preds = %__af4list_valid.exit641
  br label %for.body329

__af4list_valid.exit641.for.end342_crit_edge:     ; preds = %__af4list_valid.exit641
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end342

for.body329:                                      ; preds = %__af4list_valid.exit651.for.body329_crit_edge, %__af4list_valid.exit641.for.body329_crit_edge
  %i.0.lcssa.i630.pn719 = phi ptr [ %i.0.lcssa.i639.pn718, %__af4list_valid.exit651.for.body329_crit_edge ], [ %i.0.lcssa.i630, %__af4list_valid.exit641.for.body329_crit_edge ]
  %i.0.lcssa.i639.pn718 = phi ptr [ %i.0.lcssa.i649, %__af4list_valid.exit651.for.body329_crit_edge ], [ %i.0.lcssa.i639, %__af4list_valid.exit641.for.body329_crit_edge ]
  %iter4.2 = getelementptr i8, ptr %i.0.lcssa.i630.pn719, i32 -12
  tail call void @netlbl_af4list_remove_entry(ptr noundef %iter4.2) #9
  %valid330 = getelementptr i8, ptr %i.0.lcssa.i630.pn719, i32 -4
  %199 = ptrtoint ptr %valid330 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 1, ptr %valid330, align 4
  %call331 = tail call i32 @netlbl_af4list_add(ptr noundef %iter4.2, ptr noundef %141) #9
  tail call fastcc void @netlbl_domhsh_audit_add(ptr noundef nonnull %entry_old.0, ptr noundef %iter4.2, ptr noundef null, i32 noundef %call331, ptr noundef %audit_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call331)
  %cmp332.not = icmp eq i32 %call331, 0
  br i1 %cmp332.not, label %for.inc336, label %for.body329.add_return_crit_edge

for.body329.add_return_crit_edge:                 ; preds = %for.body329
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_return

for.inc336:                                       ; preds = %for.body329
  %200 = ptrtoint ptr %i.0.lcssa.i639.pn718 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %i.0.lcssa.i639.pn718, align 4
  %202 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %142, align 4
  %cmp.not8.i642 = icmp eq ptr %201, %203
  br i1 %cmp.not8.i642, label %for.inc336.__af4list_valid.exit651_crit_edge, label %for.inc336.land.rhs.i646_crit_edge

for.inc336.land.rhs.i646_crit_edge:               ; preds = %for.inc336
  br label %land.rhs.i646

for.inc336.__af4list_valid.exit651_crit_edge:     ; preds = %for.inc336
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit651

land.rhs.i646:                                    ; preds = %while.body.i648.land.rhs.i646_crit_edge, %for.inc336.land.rhs.i646_crit_edge
  %i.09.i643 = phi ptr [ %207, %while.body.i648.land.rhs.i646_crit_edge ], [ %201, %for.inc336.land.rhs.i646_crit_edge ]
  %valid.i644 = getelementptr i8, ptr %i.09.i643, i32 -4
  %204 = ptrtoint ptr %valid.i644 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %valid.i644, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool.not.i645 = icmp eq i32 %205, 0
  br i1 %tobool.not.i645, label %while.body.i648, label %land.rhs.i646.__af4list_valid.exit651_crit_edge

land.rhs.i646.__af4list_valid.exit651_crit_edge:  ; preds = %land.rhs.i646
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit651

while.body.i648:                                  ; preds = %land.rhs.i646
  %206 = ptrtoint ptr %i.09.i643 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %i.09.i643, align 4
  %cmp.not.i647 = icmp eq ptr %207, %203
  br i1 %cmp.not.i647, label %while.body.i648.__af4list_valid.exit651_crit_edge, label %while.body.i648.land.rhs.i646_crit_edge

while.body.i648.land.rhs.i646_crit_edge:          ; preds = %while.body.i648
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i646

while.body.i648.__af4list_valid.exit651_crit_edge: ; preds = %while.body.i648
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit651

__af4list_valid.exit651:                          ; preds = %while.body.i648.__af4list_valid.exit651_crit_edge, %land.rhs.i646.__af4list_valid.exit651_crit_edge, %for.inc336.__af4list_valid.exit651_crit_edge
  %i.0.lcssa.i649 = phi ptr [ %201, %for.inc336.__af4list_valid.exit651_crit_edge ], [ %i.09.i643, %land.rhs.i646.__af4list_valid.exit651_crit_edge ], [ %203, %while.body.i648.__af4list_valid.exit651_crit_edge ]
  %208 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %142, align 4
  %cmp327.not = icmp eq ptr %i.0.lcssa.i639.pn718, %209
  br i1 %cmp327.not, label %__af4list_valid.exit651.for.end342_crit_edge, label %__af4list_valid.exit651.for.body329_crit_edge

__af4list_valid.exit651.for.body329_crit_edge:    ; preds = %__af4list_valid.exit651
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body329

__af4list_valid.exit651.for.end342_crit_edge:     ; preds = %__af4list_valid.exit651
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end342

for.end342:                                       ; preds = %__af4list_valid.exit651.for.end342_crit_edge, %__af4list_valid.exit641.for.end342_crit_edge
  %.lcssa701 = phi ptr [ %i.0.lcssa.i630, %__af4list_valid.exit641.for.end342_crit_edge ], [ %i.0.lcssa.i639.pn718, %__af4list_valid.exit651.for.end342_crit_edge ]
  %list6344 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %.lcssa701, i32 0, i32 1
  %210 = ptrtoint ptr %list6344 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %list6344, align 4
  %cmp.not8.i652 = icmp eq ptr %211, %list6344
  br i1 %cmp.not8.i652, label %for.end342.__af6list_valid.exit_crit_edge, label %for.end342.land.rhs.i656_crit_edge

for.end342.land.rhs.i656_crit_edge:               ; preds = %for.end342
  br label %land.rhs.i656

for.end342.__af6list_valid.exit_crit_edge:        ; preds = %for.end342
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit

land.rhs.i656:                                    ; preds = %while.body.i658.land.rhs.i656_crit_edge, %for.end342.land.rhs.i656_crit_edge
  %i.09.i653 = phi ptr [ %215, %while.body.i658.land.rhs.i656_crit_edge ], [ %211, %for.end342.land.rhs.i656_crit_edge ]
  %valid.i654 = getelementptr i8, ptr %i.09.i653, i32 -4
  %212 = ptrtoint ptr %valid.i654 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %valid.i654, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool.not.i655 = icmp eq i32 %213, 0
  br i1 %tobool.not.i655, label %while.body.i658, label %land.rhs.i656.__af6list_valid.exit_crit_edge

land.rhs.i656.__af6list_valid.exit_crit_edge:     ; preds = %land.rhs.i656
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit

while.body.i658:                                  ; preds = %land.rhs.i656
  %214 = ptrtoint ptr %i.09.i653 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %i.09.i653, align 4
  %cmp.not.i657 = icmp eq ptr %215, %list6344
  br i1 %cmp.not.i657, label %while.body.i658.__af6list_valid.exit_crit_edge, label %while.body.i658.land.rhs.i656_crit_edge

while.body.i658.land.rhs.i656_crit_edge:          ; preds = %while.body.i658
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i656

while.body.i658.__af6list_valid.exit_crit_edge:   ; preds = %while.body.i658
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit

__af6list_valid.exit:                             ; preds = %while.body.i658.__af6list_valid.exit_crit_edge, %land.rhs.i656.__af6list_valid.exit_crit_edge, %for.end342.__af6list_valid.exit_crit_edge
  %i.0.lcssa.i659 = phi ptr [ %list6344, %for.end342.__af6list_valid.exit_crit_edge ], [ %i.09.i653, %land.rhs.i656.__af6list_valid.exit_crit_edge ], [ %list6344, %while.body.i658.__af6list_valid.exit_crit_edge ]
  %216 = ptrtoint ptr %i.0.lcssa.i659 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %i.0.lcssa.i659, align 4
  %cmp.not8.i661 = icmp eq ptr %217, %list6344
  br i1 %cmp.not8.i661, label %__af6list_valid.exit.__af6list_valid.exit670_crit_edge, label %__af6list_valid.exit.land.rhs.i665_crit_edge

__af6list_valid.exit.land.rhs.i665_crit_edge:     ; preds = %__af6list_valid.exit
  br label %land.rhs.i665

__af6list_valid.exit.__af6list_valid.exit670_crit_edge: ; preds = %__af6list_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit670

land.rhs.i665:                                    ; preds = %while.body.i667.land.rhs.i665_crit_edge, %__af6list_valid.exit.land.rhs.i665_crit_edge
  %i.09.i662 = phi ptr [ %221, %while.body.i667.land.rhs.i665_crit_edge ], [ %217, %__af6list_valid.exit.land.rhs.i665_crit_edge ]
  %valid.i663 = getelementptr i8, ptr %i.09.i662, i32 -4
  %218 = ptrtoint ptr %valid.i663 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %valid.i663, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool.not.i664 = icmp eq i32 %219, 0
  br i1 %tobool.not.i664, label %while.body.i667, label %land.rhs.i665.__af6list_valid.exit670_crit_edge

land.rhs.i665.__af6list_valid.exit670_crit_edge:  ; preds = %land.rhs.i665
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit670

while.body.i667:                                  ; preds = %land.rhs.i665
  %220 = ptrtoint ptr %i.09.i662 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %i.09.i662, align 4
  %cmp.not.i666 = icmp eq ptr %221, %list6344
  br i1 %cmp.not.i666, label %while.body.i667.__af6list_valid.exit670_crit_edge, label %while.body.i667.land.rhs.i665_crit_edge

while.body.i667.land.rhs.i665_crit_edge:          ; preds = %while.body.i667
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i665

while.body.i667.__af6list_valid.exit670_crit_edge: ; preds = %while.body.i667
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit670

__af6list_valid.exit670:                          ; preds = %while.body.i667.__af6list_valid.exit670_crit_edge, %land.rhs.i665.__af6list_valid.exit670_crit_edge, %__af6list_valid.exit.__af6list_valid.exit670_crit_edge
  %i.0.lcssa.i668 = phi ptr [ %list6344, %__af6list_valid.exit.__af6list_valid.exit670_crit_edge ], [ %i.09.i662, %land.rhs.i665.__af6list_valid.exit670_crit_edge ], [ %list6344, %while.body.i667.__af6list_valid.exit670_crit_edge ]
  %222 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %142, align 4
  %list6357721 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %223, i32 0, i32 1
  %cmp358.not722 = icmp eq ptr %i.0.lcssa.i659, %list6357721
  br i1 %cmp358.not722, label %__af6list_valid.exit670.for.end373_crit_edge, label %__af6list_valid.exit670.for.body360_crit_edge

__af6list_valid.exit670.for.body360_crit_edge:    ; preds = %__af6list_valid.exit670
  br label %for.body360

__af6list_valid.exit670.for.end373_crit_edge:     ; preds = %__af6list_valid.exit670
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end373

for.body360:                                      ; preds = %__af6list_valid.exit680.for.body360_crit_edge, %__af6list_valid.exit670.for.body360_crit_edge
  %i.0.lcssa.i668.pn724 = phi ptr [ %i.0.lcssa.i678, %__af6list_valid.exit680.for.body360_crit_edge ], [ %i.0.lcssa.i668, %__af6list_valid.exit670.for.body360_crit_edge ]
  %i.0.lcssa.i659.pn723 = phi ptr [ %i.0.lcssa.i668.pn724, %__af6list_valid.exit680.for.body360_crit_edge ], [ %i.0.lcssa.i659, %__af6list_valid.exit670.for.body360_crit_edge ]
  %iter6.2 = getelementptr i8, ptr %i.0.lcssa.i659.pn723, i32 -36
  tail call void @netlbl_af6list_remove_entry(ptr noundef %iter6.2) #9
  %valid361 = getelementptr i8, ptr %i.0.lcssa.i659.pn723, i32 -4
  %224 = ptrtoint ptr %valid361 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 1, ptr %valid361, align 4
  %call362 = tail call i32 @netlbl_af6list_add(ptr noundef %iter6.2, ptr noundef %list6261) #9
  tail call fastcc void @netlbl_domhsh_audit_add(ptr noundef nonnull %entry_old.0, ptr noundef null, ptr noundef %iter6.2, i32 noundef %call362, ptr noundef %audit_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call362)
  %cmp363.not = icmp eq i32 %call362, 0
  br i1 %cmp363.not, label %for.inc367, label %for.body360.add_return_crit_edge

for.body360.add_return_crit_edge:                 ; preds = %for.body360
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_return

for.inc367:                                       ; preds = %for.body360
  %225 = ptrtoint ptr %i.0.lcssa.i668.pn724 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %i.0.lcssa.i668.pn724, align 4
  %227 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %142, align 4
  %list6371 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %228, i32 0, i32 1
  %cmp.not8.i671 = icmp eq ptr %226, %list6371
  br i1 %cmp.not8.i671, label %for.inc367.__af6list_valid.exit680_crit_edge, label %for.inc367.land.rhs.i675_crit_edge

for.inc367.land.rhs.i675_crit_edge:               ; preds = %for.inc367
  br label %land.rhs.i675

for.inc367.__af6list_valid.exit680_crit_edge:     ; preds = %for.inc367
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit680

land.rhs.i675:                                    ; preds = %while.body.i677.land.rhs.i675_crit_edge, %for.inc367.land.rhs.i675_crit_edge
  %i.09.i672 = phi ptr [ %232, %while.body.i677.land.rhs.i675_crit_edge ], [ %226, %for.inc367.land.rhs.i675_crit_edge ]
  %valid.i673 = getelementptr i8, ptr %i.09.i672, i32 -4
  %229 = ptrtoint ptr %valid.i673 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %valid.i673, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool.not.i674 = icmp eq i32 %230, 0
  br i1 %tobool.not.i674, label %while.body.i677, label %land.rhs.i675.__af6list_valid.exit680_crit_edge

land.rhs.i675.__af6list_valid.exit680_crit_edge:  ; preds = %land.rhs.i675
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit680

while.body.i677:                                  ; preds = %land.rhs.i675
  %231 = ptrtoint ptr %i.09.i672 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %i.09.i672, align 4
  %cmp.not.i676 = icmp eq ptr %232, %list6371
  br i1 %cmp.not.i676, label %while.body.i677.__af6list_valid.exit680_crit_edge, label %while.body.i677.land.rhs.i675_crit_edge

while.body.i677.land.rhs.i675_crit_edge:          ; preds = %while.body.i677
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i675

while.body.i677.__af6list_valid.exit680_crit_edge: ; preds = %while.body.i677
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit680

__af6list_valid.exit680:                          ; preds = %while.body.i677.__af6list_valid.exit680_crit_edge, %land.rhs.i675.__af6list_valid.exit680_crit_edge, %for.inc367.__af6list_valid.exit680_crit_edge
  %i.0.lcssa.i678 = phi ptr [ %226, %for.inc367.__af6list_valid.exit680_crit_edge ], [ %i.09.i672, %land.rhs.i675.__af6list_valid.exit680_crit_edge ], [ %list6371, %while.body.i677.__af6list_valid.exit680_crit_edge ]
  %233 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %142, align 4
  %list6357 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %234, i32 0, i32 1
  %cmp358.not = icmp eq ptr %i.0.lcssa.i668.pn724, %list6357
  br i1 %cmp358.not, label %__af6list_valid.exit680.for.end373_crit_edge, label %__af6list_valid.exit680.for.body360_crit_edge

__af6list_valid.exit680.for.body360_crit_edge:    ; preds = %__af6list_valid.exit680
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body360

__af6list_valid.exit680.for.end373_crit_edge:     ; preds = %__af6list_valid.exit680
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end373

for.end373:                                       ; preds = %__af6list_valid.exit680.for.end373_crit_edge, %__af6list_valid.exit670.for.end373_crit_edge
  %rcu = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 5
  tail call void @netlbl_domhsh_free_entry(ptr noundef %rcu)
  br label %add_return

add_return:                                       ; preds = %for.end373, %for.body360.add_return_crit_edge, %for.body329.add_return_crit_edge, %for.body298.add_return_crit_edge, %for.body274.add_return_crit_edge, %land.lhs.true252.add_return_crit_edge, %if.else247.add_return_crit_edge, %if.else245, %__af6list_valid_rcu.exit548.add_return_crit_edge, %__af6list_valid_rcu.exit.add_return_crit_edge, %if.end115.add_return_crit_edge, %sw.bb111.add_return_crit_edge, %if.else28.add_return_crit_edge
  %ret_val.3 = phi i32 [ 0, %if.else245 ], [ -22, %sw.bb111.add_return_crit_edge ], [ -12, %if.end115.add_return_crit_edge ], [ -22, %if.else28.add_return_crit_edge ], [ -22, %land.lhs.true252.add_return_crit_edge ], [ -22, %if.else247.add_return_crit_edge ], [ 0, %for.end373 ], [ 0, %__af6list_valid_rcu.exit.add_return_crit_edge ], [ 0, %__af6list_valid_rcu.exit548.add_return_crit_edge ], [ %call362, %for.body360.add_return_crit_edge ], [ %call331, %for.body329.add_return_crit_edge ], [ -17, %for.body298.add_return_crit_edge ], [ -17, %for.body274.add_return_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_domhsh_lock) #9
  %call.i681 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i681, label %add_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i684

add_return.rcu_read_unlock.exit_crit_edge:        ; preds = %add_return
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i684:                               ; preds = %add_return
  %call1.i682 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i682)
  %tobool.not.i683 = icmp eq i32 %call1.i682, 0
  br i1 %tobool.not.i683, label %land.lhs.true.i684.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i686

land.lhs.true.i684.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i684
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i686:                              ; preds = %land.lhs.true.i684
  %.b4.i685 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i685, label %land.lhs.true2.i686.rcu_read_unlock.exit_crit_edge, label %if.then.i687

land.lhs.true2.i686.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i686
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i687:                                     ; preds = %land.lhs.true2.i686
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i687, %land.lhs.true2.i686.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i684.rcu_read_unlock.exit_crit_edge, %add_return.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %235 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i.i688 = and i32 %235, -16384
  %236 = inttoptr i32 %and.i.i.i.i.i688 to ptr
  %preempt_count.i.i.i.i689 = getelementptr inbounds %struct.thread_info, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %preempt_count.i.i.i.i689 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load volatile i32, ptr %preempt_count.i.i.i.i689, align 4
  %sub.i.i.i = add i32 %238, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i689, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup378

cleanup378:                                       ; preds = %rcu_read_unlock.exit, %sw.bb104.i.cleanup378_crit_edge, %sw.bb98.i.cleanup378_crit_edge, %for.body92.i.cleanup378_crit_edge, %sw.bb70.i.cleanup378_crit_edge, %sw.bb64.i.cleanup378_crit_edge, %for.body.i.cleanup378_crit_edge, %lor.lhs.false48.i.cleanup378_crit_edge, %sw.bb43.i.cleanup378_crit_edge, %lor.lhs.false37.i.cleanup378_crit_edge, %sw.bb32.i.cleanup378_crit_edge, %sw.bb.i.cleanup378_crit_edge, %if.end16.i.cleanup378_crit_edge, %lor.lhs.false.i.cleanup378_crit_edge, %if.end.i.cleanup378_crit_edge, %entry.cleanup378_crit_edge
  %retval.0 = phi i32 [ %ret_val.3, %rcu_read_unlock.exit ], [ -22, %entry.cleanup378_crit_edge ], [ -22, %if.end.i.cleanup378_crit_edge ], [ -22, %lor.lhs.false.i.cleanup378_crit_edge ], [ -22, %sw.bb.i.cleanup378_crit_edge ], [ -22, %lor.lhs.false37.i.cleanup378_crit_edge ], [ -22, %sw.bb32.i.cleanup378_crit_edge ], [ -22, %lor.lhs.false48.i.cleanup378_crit_edge ], [ -22, %sw.bb43.i.cleanup378_crit_edge ], [ -22, %if.end16.i.cleanup378_crit_edge ], [ -22, %sw.bb98.i.cleanup378_crit_edge ], [ -22, %sw.bb104.i.cleanup378_crit_edge ], [ -22, %for.body92.i.cleanup378_crit_edge ], [ -22, %sw.bb64.i.cleanup378_crit_edge ], [ -22, %sw.bb70.i.cleanup378_crit_edge ], [ -22, %for.body.i.cleanup378_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @netlbl_domhsh_search(ptr noundef readonly %domain, i16 noundef zeroext %family) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %domain, null
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @netlbl_domhsh_hash(ptr noundef nonnull %domain)
  %0 = load volatile ptr, ptr @netlbl_domhsh, align 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @netlbl_domhsh_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.do.end11_crit_edge

if.then.do.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

lor.lhs.false:                                    ; preds = %if.then
  %call3 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end11_crit_edge

lor.lhs.false.do.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true7

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b66 = load i1, ptr @netlbl_domhsh_search.__warned, align 1
  br i1 %.b66, label %land.lhs.true7.do.end11_crit_edge, label %if.then9

land.lhs.true7.do.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netlbl_domhsh_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 146, ptr noundef nonnull @.str.1) #9
  br label %do.end11

do.end11:                                         ; preds = %if.then9, %land.lhs.true7.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %lor.lhs.false.do.end11_crit_edge, %if.then.do.end11_crit_edge
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %2, i32 %call
  %call.i67 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @netlbl_domhsh_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool15.not = icmp eq i32 %call.i67, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %do.end11.do.end27_crit_edge

do.end11.do.end27_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

land.lhs.true16:                                  ; preds = %do.end11
  %call17 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %land.lhs.true16.do.end27_crit_edge

land.lhs.true16.do.end27_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true19.do.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %.b6465 = load i1, ptr @netlbl_domhsh_search.__warned.11, align 1
  br i1 %.b6465, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netlbl_domhsh_search.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 148, ptr noundef nonnull @.str.7) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true19.do.end27_crit_edge, %land.lhs.true16.do.end27_crit_edge, %do.end11.do.end27_crit_edge
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn68 = load volatile ptr, ptr %arrayidx, align 4
  %cmp33.not70 = icmp eq ptr %.pn68, %arrayidx
  br i1 %cmp33.not70, label %do.end27.cleanup_crit_edge, label %for.body.lr.ph

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end27
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %family)
  %cmp7.i = icmp eq i16 %family, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn71 = phi ptr [ %.pn68, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %iter.072 = getelementptr i8, ptr %.pn71, i32 -20
  %valid = getelementptr i8, ptr %.pn71, i32 -4
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool34.not = icmp eq i32 %5, 0
  br i1 %tobool34.not, label %for.body.for.inc_crit_edge, label %land.lhs.true35

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true35:                                  ; preds = %for.body
  %family36 = getelementptr i8, ptr %.pn71, i32 -16
  %6 = ptrtoint ptr %family36 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %family36, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %family)
  %cmp.i = icmp eq i16 %7, %family
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp4.i = icmp eq i16 %7, 0
  %or.cond.i = or i1 %cmp4.i, %cmp.i
  %spec.select.i = or i1 %cmp7.i, %or.cond.i
  br i1 %spec.select.i, label %land.lhs.true38, label %land.lhs.true35.for.inc_crit_edge

land.lhs.true35.for.inc_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %8 = ptrtoint ptr %iter.072 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iter.072, align 4
  %call40 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull %domain) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %land.lhs.true38.cleanup_crit_edge, label %land.lhs.true38.for.inc_crit_edge

land.lhs.true38.for.inc_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true38.cleanup_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true38.for.inc_crit_edge, %land.lhs.true35.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load volatile ptr, ptr %.pn71, align 4
  %cmp33.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp33.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true38.cleanup_crit_edge, %do.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %do.end27.cleanup_crit_edge ], [ %iter.072, %land.lhs.true38.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @netlbl_domhsh_search_def(ptr noundef %domain, i16 noundef zeroext %family) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @netlbl_domhsh_search(ptr noundef %domain, i16 noundef zeroext %family)
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %family, label %if.end.if.end64_crit_edge [
    i16 2, label %if.end.if.then7_crit_edge
    i16 0, label %if.end.if.then7_crit_edge81
    i16 10, label %if.end.if.then36_crit_edge
  ]

if.end.if.then36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.end.if.then7_crit_edge81:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.end.if.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.end.if.then7_crit_edge81
  %1 = load volatile ptr, ptr @netlbl_domhsh_def_ipv4, align 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @netlbl_domhsh_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false10, label %if.then7.do.end20_crit_edge

if.then7.do.end20_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

lor.lhs.false10:                                  ; preds = %if.then7
  %call11 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true, label %lor.lhs.false10.do.end20_crit_edge

lor.lhs.false10.do.end20_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

land.lhs.true:                                    ; preds = %lor.lhs.false10
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end20_crit_edge, label %land.lhs.true15

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b79 = load i1, ptr @netlbl_domhsh_search_def.__warned, align 1
  br i1 %.b79, label %land.lhs.true15.do.end20_crit_edge, label %if.then17

land.lhs.true15.do.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netlbl_domhsh_search_def.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 181, ptr noundef nonnull @.str.1) #9
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %land.lhs.true15.do.end20_crit_edge, %land.lhs.true.do.end20_crit_edge, %lor.lhs.false10.do.end20_crit_edge, %if.then7.do.end20_crit_edge
  %cmp22.not = icmp eq ptr %1, null
  br i1 %cmp22.not, label %do.end20.if.end28_crit_edge, label %land.lhs.true24

do.end20.if.end28_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true24:                                  ; preds = %do.end20
  %valid = getelementptr inbounds %struct.netlbl_dom_map, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool25.not = icmp eq i32 %3, 0
  br i1 %tobool25.not, label %land.lhs.true24.if.end28_crit_edge, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true24.if.end28_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true24.if.end28_crit_edge, %do.end20.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %family)
  %cond = icmp eq i16 %family, 0
  br i1 %cond, label %if.end28.if.then36_crit_edge, label %if.end28.if.end64_crit_edge

if.end28.if.end64_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.end28.if.then36_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then36:                                        ; preds = %if.end28.if.then36_crit_edge, %if.end.if.then36_crit_edge
  %4 = load volatile ptr, ptr @netlbl_domhsh_def_ipv6, align 4
  %call.i80 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @netlbl_domhsh_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool43.not = icmp eq i32 %call.i80, 0
  br i1 %tobool43.not, label %lor.lhs.false44, label %if.then36.do.end55_crit_edge

if.then36.do.end55_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

lor.lhs.false44:                                  ; preds = %if.then36
  %call45 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %lor.lhs.false44.do.end55_crit_edge

lor.lhs.false44.do.end55_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

land.lhs.true47:                                  ; preds = %lor.lhs.false44
  %call48 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true47.do.end55_crit_edge, label %land.lhs.true50

land.lhs.true47.do.end55_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %.b7778 = load i1, ptr @netlbl_domhsh_search_def.__warned.12, align 1
  br i1 %.b7778, label %land.lhs.true50.do.end55_crit_edge, label %if.then52

land.lhs.true50.do.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netlbl_domhsh_search_def.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @.str.1) #9
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %land.lhs.true50.do.end55_crit_edge, %land.lhs.true47.do.end55_crit_edge, %lor.lhs.false44.do.end55_crit_edge, %if.then36.do.end55_crit_edge
  %cmp57.not = icmp eq ptr %4, null
  br i1 %cmp57.not, label %do.end55.if.end64_crit_edge, label %land.lhs.true59

do.end55.if.end64_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

land.lhs.true59:                                  ; preds = %do.end55
  %valid60 = getelementptr inbounds %struct.netlbl_dom_map, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %valid60 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %valid60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool61.not = icmp eq i32 %6, 0
  br i1 %tobool61.not, label %land.lhs.true59.if.end64_crit_edge, label %land.lhs.true59.cleanup_crit_edge

land.lhs.true59.cleanup_crit_edge:                ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true59.if.end64_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.end64:                                         ; preds = %land.lhs.true59.if.end64_crit_edge, %do.end55.if.end64_crit_edge, %if.end28.if.end64_crit_edge, %if.end.if.end64_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %land.lhs.true59.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end64 ], [ %call, %entry.cleanup_crit_edge ], [ %1, %land.lhs.true24.cleanup_crit_edge ], [ %4, %land.lhs.true59.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netlbl_domhsh_hash(ptr nocapture noundef readonly %key) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %key) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp18.not = icmp eq i32 %call, 0
  br i1 %cmp18.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %val.019 = phi i32 [ %xor, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %or = tail call i32 @llvm.fshl.i32(i32 %val.019, i32 %val.019, i32 4)
  %arrayidx = getelementptr i8, ptr %key, i32 %iter.020
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %xor = xor i32 %or, %conv
  %inc = add nuw i32 %iter.020, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %xor, %for.body.for.end_crit_edge ]
  %2 = load volatile ptr, ptr @netlbl_domhsh, align 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @netlbl_domhsh_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.end.do.end10_crit_edge

for.end.do.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

lor.lhs.false:                                    ; preds = %for.end
  %call3 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @netlbl_domhsh_hash.__warned, align 1
  br i1 %.b17, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netlbl_domhsh_hash.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 116, ptr noundef nonnull @.str.1) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %for.end.do.end10_crit_edge
  %size = getelementptr inbounds %struct.netlbl_domhsh_tbl, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %sub = add i32 %4, -1
  %and = and i32 %sub, %val.0.lcssa
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netlbl_domhsh_audit_add(ptr nocapture noundef readonly %entry1, ptr noundef readonly %addr4, ptr noundef %addr6, i32 noundef %result, ptr noundef %audit_info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @netlbl_audit_start_common(i32 noundef 1409, ptr noundef %audit_info) #9
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %entry.if.end57_crit_edge, label %if.then

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entry1, align 4
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, ptr @.str.4, ptr %1
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call, ptr noundef nonnull @.str.14, ptr noundef nonnull %spec.select) #9
  %cmp3.not = icmp eq ptr %addr4, null
  br i1 %cmp3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %addr4, i32 -8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = getelementptr i8, ptr %addr4, i32 -4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %addr4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr4, align 4
  %mask = getelementptr inbounds %struct.netlbl_af4list, ptr %addr4, i32 0, i32 1
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  tail call void @netlbl_af4list_audit_addr(ptr noundef nonnull %call, i32 noundef 0, ptr noundef null, i32 noundef %8, i32 noundef %10) #9
  br label %if.end22

if.else:                                          ; preds = %if.then
  %cmp7.not = icmp eq ptr %addr6, null
  br i1 %cmp7.not, label %if.else17, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr11 = getelementptr i8, ptr %addr6, i32 -8
  %11 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr11, align 4
  %13 = getelementptr i8, ptr %addr6, i32 -4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %mask16 = getelementptr inbounds %struct.netlbl_af6list, ptr %addr6, i32 0, i32 1
  tail call void @netlbl_af6list_audit_addr(ptr noundef nonnull %call, i32 noundef 0, ptr noundef null, ptr noundef nonnull %addr6, ptr noundef %mask16) #9
  br label %if.end22

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %def18 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2
  %16 = ptrtoint ptr %def18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %def18, align 4
  %18 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else17, %if.then8, %if.then4
  %type.0 = phi i32 [ %3, %if.then4 ], [ %12, %if.then8 ], [ %17, %if.else17 ]
  %calipso.0 = phi ptr [ null, %if.then4 ], [ %15, %if.then8 ], [ %20, %if.else17 ]
  %cipsov4.0 = phi ptr [ %6, %if.then4 ], [ null, %if.then8 ], [ %20, %if.else17 ]
  %21 = zext i32 %type.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %type.0, label %if.end22.sw.epilog_crit_edge [
    i32 5, label %sw.bb
    i32 3, label %do.body
    i32 7, label %do.body36
  ]

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call, ptr noundef nonnull @.str.15) #9
  br label %sw.epilog

do.body:                                          ; preds = %if.end22
  %cmp24 = icmp eq ptr %cipsov4.0, null
  br i1 %cmp24, label %do.body28, label %do.end34, !prof !70

do.body28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlabel/netlabel_domainhash.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 249, 0\0A.popsection", ""() #9, !srcloc !79
  unreachable

do.end34:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %cipsov4.0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cipsov4.0, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call, ptr noundef nonnull @.str.16, i32 noundef %23) #9
  br label %sw.epilog

do.body36:                                        ; preds = %if.end22
  %cmp37 = icmp eq ptr %calipso.0, null
  br i1 %cmp37, label %do.body45, label %do.end53, !prof !70

do.body45:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlabel/netlabel_domainhash.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 255, 0\0A.popsection", ""() #9, !srcloc !80
  unreachable

do.end53:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %calipso.0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %calipso.0, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call, ptr noundef nonnull @.str.17, i32 noundef %25) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end53, %do.end34, %sw.bb, %if.end22.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result)
  %cmp55 = icmp eq i32 %result, 0
  %cond56 = zext i1 %cmp55 to i32
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call, ptr noundef nonnull @.str.18, i32 noundef %cond56) #9
  tail call void @audit_log_end(ptr noundef nonnull %call) #9
  br label %if.end57

if.end57:                                         ; preds = %sw.epilog, %entry.if.end57_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_af4list_search_exact(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_af6list_search_exact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_af4list_remove_entry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_af4list_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_af6list_remove_entry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlbl_af6list_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netlbl_domhsh_free_entry(ptr noundef %entry1) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %def = getelementptr i8, ptr %entry1, i32 -20
  %0 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = getelementptr i8, ptr %entry1, i32 -16
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cmp.not8.i = icmp eq ptr %6, %4
  br i1 %cmp.not8.i, label %if.then.__af4list_valid.exit_crit_edge, label %if.then.land.rhs.i_crit_edge

if.then.land.rhs.i_crit_edge:                     ; preds = %if.then
  br label %land.rhs.i

if.then.__af4list_valid.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then.land.rhs.i_crit_edge
  %i.09.i = phi ptr [ %10, %while.body.i.land.rhs.i_crit_edge ], [ %6, %if.then.land.rhs.i_crit_edge ]
  %valid.i = getelementptr i8, ptr %i.09.i, i32 -4
  %7 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %while.body.i, label %land.rhs.i.__af4list_valid.exit_crit_edge

land.rhs.i.__af4list_valid.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit

while.body.i:                                     ; preds = %land.rhs.i
  %9 = ptrtoint ptr %i.09.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i.09.i, align 4
  %cmp.not.i = icmp eq ptr %10, %4
  br i1 %cmp.not.i, label %while.body.i.__af4list_valid.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

while.body.i.__af4list_valid.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit

__af4list_valid.exit:                             ; preds = %while.body.i.__af4list_valid.exit_crit_edge, %land.rhs.i.__af4list_valid.exit_crit_edge, %if.then.__af4list_valid.exit_crit_edge
  %i.0.lcssa.i = phi ptr [ %4, %if.then.__af4list_valid.exit_crit_edge ], [ %i.09.i, %land.rhs.i.__af4list_valid.exit_crit_edge ], [ %4, %while.body.i.__af4list_valid.exit_crit_edge ]
  %11 = ptrtoint ptr %i.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i.0.lcssa.i, align 4
  %cmp.not8.i69 = icmp eq ptr %12, %4
  br i1 %cmp.not8.i69, label %__af4list_valid.exit.__af4list_valid.exit78_crit_edge, label %__af4list_valid.exit.land.rhs.i73_crit_edge

__af4list_valid.exit.land.rhs.i73_crit_edge:      ; preds = %__af4list_valid.exit
  br label %land.rhs.i73

__af4list_valid.exit.__af4list_valid.exit78_crit_edge: ; preds = %__af4list_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit78

land.rhs.i73:                                     ; preds = %while.body.i75.land.rhs.i73_crit_edge, %__af4list_valid.exit.land.rhs.i73_crit_edge
  %i.09.i70 = phi ptr [ %16, %while.body.i75.land.rhs.i73_crit_edge ], [ %12, %__af4list_valid.exit.land.rhs.i73_crit_edge ]
  %valid.i71 = getelementptr i8, ptr %i.09.i70, i32 -4
  %13 = ptrtoint ptr %valid.i71 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %valid.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i72 = icmp eq i32 %14, 0
  br i1 %tobool.not.i72, label %while.body.i75, label %land.rhs.i73.__af4list_valid.exit78_crit_edge

land.rhs.i73.__af4list_valid.exit78_crit_edge:    ; preds = %land.rhs.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit78

while.body.i75:                                   ; preds = %land.rhs.i73
  %15 = ptrtoint ptr %i.09.i70 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i.09.i70, align 4
  %cmp.not.i74 = icmp eq ptr %16, %4
  br i1 %cmp.not.i74, label %while.body.i75.__af4list_valid.exit78_crit_edge, label %while.body.i75.land.rhs.i73_crit_edge

while.body.i75.land.rhs.i73_crit_edge:            ; preds = %while.body.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i73

while.body.i75.__af4list_valid.exit78_crit_edge:  ; preds = %while.body.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit78

__af4list_valid.exit78:                           ; preds = %while.body.i75.__af4list_valid.exit78_crit_edge, %land.rhs.i73.__af4list_valid.exit78_crit_edge, %__af4list_valid.exit.__af4list_valid.exit78_crit_edge
  %i.0.lcssa.i76 = phi ptr [ %4, %__af4list_valid.exit.__af4list_valid.exit78_crit_edge ], [ %i.09.i70, %land.rhs.i73.__af4list_valid.exit78_crit_edge ], [ %4, %while.body.i75.__af4list_valid.exit78_crit_edge ]
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %cmp12.not119 = icmp eq ptr %i.0.lcssa.i, %18
  br i1 %cmp12.not119, label %__af4list_valid.exit78.for.end_crit_edge, label %__af4list_valid.exit78.for.body_crit_edge

__af4list_valid.exit78.for.body_crit_edge:        ; preds = %__af4list_valid.exit78
  br label %for.body

__af4list_valid.exit78.for.end_crit_edge:         ; preds = %__af4list_valid.exit78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %__af4list_valid.exit88.for.body_crit_edge, %__af4list_valid.exit78.for.body_crit_edge
  %i.0.lcssa.i.pn121 = phi ptr [ %i.0.lcssa.i76.pn120, %__af4list_valid.exit88.for.body_crit_edge ], [ %i.0.lcssa.i, %__af4list_valid.exit78.for.body_crit_edge ]
  %i.0.lcssa.i76.pn120 = phi ptr [ %i.0.lcssa.i86, %__af4list_valid.exit88.for.body_crit_edge ], [ %i.0.lcssa.i76, %__af4list_valid.exit78.for.body_crit_edge ]
  %iter4.0 = getelementptr i8, ptr %i.0.lcssa.i.pn121, i32 -12
  tail call void @netlbl_af4list_remove_entry(ptr noundef %iter4.0) #9
  %add.ptr15 = getelementptr i8, ptr %i.0.lcssa.i.pn121, i32 -20
  tail call void @kfree(ptr noundef %add.ptr15) #9
  %19 = ptrtoint ptr %i.0.lcssa.i76.pn120 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i.0.lcssa.i76.pn120, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 4
  %cmp.not8.i79 = icmp eq ptr %20, %22
  br i1 %cmp.not8.i79, label %for.body.__af4list_valid.exit88_crit_edge, label %for.body.land.rhs.i83_crit_edge

for.body.land.rhs.i83_crit_edge:                  ; preds = %for.body
  br label %land.rhs.i83

for.body.__af4list_valid.exit88_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit88

land.rhs.i83:                                     ; preds = %while.body.i85.land.rhs.i83_crit_edge, %for.body.land.rhs.i83_crit_edge
  %i.09.i80 = phi ptr [ %26, %while.body.i85.land.rhs.i83_crit_edge ], [ %20, %for.body.land.rhs.i83_crit_edge ]
  %valid.i81 = getelementptr i8, ptr %i.09.i80, i32 -4
  %23 = ptrtoint ptr %valid.i81 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %valid.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i82 = icmp eq i32 %24, 0
  br i1 %tobool.not.i82, label %while.body.i85, label %land.rhs.i83.__af4list_valid.exit88_crit_edge

land.rhs.i83.__af4list_valid.exit88_crit_edge:    ; preds = %land.rhs.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit88

while.body.i85:                                   ; preds = %land.rhs.i83
  %25 = ptrtoint ptr %i.09.i80 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i.09.i80, align 4
  %cmp.not.i84 = icmp eq ptr %26, %22
  br i1 %cmp.not.i84, label %while.body.i85.__af4list_valid.exit88_crit_edge, label %while.body.i85.land.rhs.i83_crit_edge

while.body.i85.land.rhs.i83_crit_edge:            ; preds = %while.body.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i83

while.body.i85.__af4list_valid.exit88_crit_edge:  ; preds = %while.body.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid.exit88

__af4list_valid.exit88:                           ; preds = %while.body.i85.__af4list_valid.exit88_crit_edge, %land.rhs.i83.__af4list_valid.exit88_crit_edge, %for.body.__af4list_valid.exit88_crit_edge
  %i.0.lcssa.i86 = phi ptr [ %20, %for.body.__af4list_valid.exit88_crit_edge ], [ %i.09.i80, %land.rhs.i83.__af4list_valid.exit88_crit_edge ], [ %22, %while.body.i85.__af4list_valid.exit88_crit_edge ]
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 4
  %cmp12.not = icmp eq ptr %i.0.lcssa.i76.pn120, %28
  br i1 %cmp12.not, label %__af4list_valid.exit88.for.end_crit_edge, label %__af4list_valid.exit88.for.body_crit_edge

__af4list_valid.exit88.for.body_crit_edge:        ; preds = %__af4list_valid.exit88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

__af4list_valid.exit88.for.end_crit_edge:         ; preds = %__af4list_valid.exit88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %__af4list_valid.exit88.for.end_crit_edge, %__af4list_valid.exit78.for.end_crit_edge
  %.lcssa118 = phi ptr [ %i.0.lcssa.i, %__af4list_valid.exit78.for.end_crit_edge ], [ %i.0.lcssa.i76.pn120, %__af4list_valid.exit88.for.end_crit_edge ]
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %.lcssa118, i32 0, i32 1
  %29 = ptrtoint ptr %list6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %list6, align 4
  %cmp.not8.i89 = icmp eq ptr %30, %list6
  br i1 %cmp.not8.i89, label %for.end.__af6list_valid.exit_crit_edge, label %for.end.land.rhs.i93_crit_edge

for.end.land.rhs.i93_crit_edge:                   ; preds = %for.end
  br label %land.rhs.i93

for.end.__af6list_valid.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit

land.rhs.i93:                                     ; preds = %while.body.i95.land.rhs.i93_crit_edge, %for.end.land.rhs.i93_crit_edge
  %i.09.i90 = phi ptr [ %34, %while.body.i95.land.rhs.i93_crit_edge ], [ %30, %for.end.land.rhs.i93_crit_edge ]
  %valid.i91 = getelementptr i8, ptr %i.09.i90, i32 -4
  %31 = ptrtoint ptr %valid.i91 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %valid.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i92 = icmp eq i32 %32, 0
  br i1 %tobool.not.i92, label %while.body.i95, label %land.rhs.i93.__af6list_valid.exit_crit_edge

land.rhs.i93.__af6list_valid.exit_crit_edge:      ; preds = %land.rhs.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit

while.body.i95:                                   ; preds = %land.rhs.i93
  %33 = ptrtoint ptr %i.09.i90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i.09.i90, align 4
  %cmp.not.i94 = icmp eq ptr %34, %list6
  br i1 %cmp.not.i94, label %while.body.i95.__af6list_valid.exit_crit_edge, label %while.body.i95.land.rhs.i93_crit_edge

while.body.i95.land.rhs.i93_crit_edge:            ; preds = %while.body.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i93

while.body.i95.__af6list_valid.exit_crit_edge:    ; preds = %while.body.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit

__af6list_valid.exit:                             ; preds = %while.body.i95.__af6list_valid.exit_crit_edge, %land.rhs.i93.__af6list_valid.exit_crit_edge, %for.end.__af6list_valid.exit_crit_edge
  %i.0.lcssa.i96 = phi ptr [ %list6, %for.end.__af6list_valid.exit_crit_edge ], [ %i.09.i90, %land.rhs.i93.__af6list_valid.exit_crit_edge ], [ %list6, %while.body.i95.__af6list_valid.exit_crit_edge ]
  %35 = ptrtoint ptr %i.0.lcssa.i96 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i.0.lcssa.i96, align 4
  %cmp.not8.i98 = icmp eq ptr %36, %list6
  br i1 %cmp.not8.i98, label %__af6list_valid.exit.__af6list_valid.exit107_crit_edge, label %__af6list_valid.exit.land.rhs.i102_crit_edge

__af6list_valid.exit.land.rhs.i102_crit_edge:     ; preds = %__af6list_valid.exit
  br label %land.rhs.i102

__af6list_valid.exit.__af6list_valid.exit107_crit_edge: ; preds = %__af6list_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit107

land.rhs.i102:                                    ; preds = %while.body.i104.land.rhs.i102_crit_edge, %__af6list_valid.exit.land.rhs.i102_crit_edge
  %i.09.i99 = phi ptr [ %40, %while.body.i104.land.rhs.i102_crit_edge ], [ %36, %__af6list_valid.exit.land.rhs.i102_crit_edge ]
  %valid.i100 = getelementptr i8, ptr %i.09.i99, i32 -4
  %37 = ptrtoint ptr %valid.i100 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %valid.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i101 = icmp eq i32 %38, 0
  br i1 %tobool.not.i101, label %while.body.i104, label %land.rhs.i102.__af6list_valid.exit107_crit_edge

land.rhs.i102.__af6list_valid.exit107_crit_edge:  ; preds = %land.rhs.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit107

while.body.i104:                                  ; preds = %land.rhs.i102
  %39 = ptrtoint ptr %i.09.i99 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i.09.i99, align 4
  %cmp.not.i103 = icmp eq ptr %40, %list6
  br i1 %cmp.not.i103, label %while.body.i104.__af6list_valid.exit107_crit_edge, label %while.body.i104.land.rhs.i102_crit_edge

while.body.i104.land.rhs.i102_crit_edge:          ; preds = %while.body.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i102

while.body.i104.__af6list_valid.exit107_crit_edge: ; preds = %while.body.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit107

__af6list_valid.exit107:                          ; preds = %while.body.i104.__af6list_valid.exit107_crit_edge, %land.rhs.i102.__af6list_valid.exit107_crit_edge, %__af6list_valid.exit.__af6list_valid.exit107_crit_edge
  %i.0.lcssa.i105 = phi ptr [ %list6, %__af6list_valid.exit.__af6list_valid.exit107_crit_edge ], [ %i.09.i99, %land.rhs.i102.__af6list_valid.exit107_crit_edge ], [ %list6, %while.body.i104.__af6list_valid.exit107_crit_edge ]
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %2, align 4
  %list634122 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %42, i32 0, i32 1
  %cmp35.not123 = icmp eq ptr %i.0.lcssa.i96, %list634122
  br i1 %cmp35.not123, label %__af6list_valid.exit107.for.end46_crit_edge, label %__af6list_valid.exit107.for.body36_crit_edge

__af6list_valid.exit107.for.body36_crit_edge:     ; preds = %__af6list_valid.exit107
  br label %for.body36

__af6list_valid.exit107.for.end46_crit_edge:      ; preds = %__af6list_valid.exit107
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end46

for.body36:                                       ; preds = %__af6list_valid.exit117.for.body36_crit_edge, %__af6list_valid.exit107.for.body36_crit_edge
  %i.0.lcssa.i96.pn125 = phi ptr [ %i.0.lcssa.i105.pn124, %__af6list_valid.exit117.for.body36_crit_edge ], [ %i.0.lcssa.i96, %__af6list_valid.exit107.for.body36_crit_edge ]
  %i.0.lcssa.i105.pn124 = phi ptr [ %i.0.lcssa.i115, %__af6list_valid.exit117.for.body36_crit_edge ], [ %i.0.lcssa.i105, %__af6list_valid.exit107.for.body36_crit_edge ]
  %iter6.0 = getelementptr i8, ptr %i.0.lcssa.i96.pn125, i32 -36
  tail call void @netlbl_af6list_remove_entry(ptr noundef %iter6.0) #9
  %add.ptr39 = getelementptr i8, ptr %i.0.lcssa.i96.pn125, i32 -44
  tail call void @kfree(ptr noundef %add.ptr39) #9
  %43 = ptrtoint ptr %i.0.lcssa.i105.pn124 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i.0.lcssa.i105.pn124, align 4
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %2, align 4
  %list644 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %46, i32 0, i32 1
  %cmp.not8.i108 = icmp eq ptr %44, %list644
  br i1 %cmp.not8.i108, label %for.body36.__af6list_valid.exit117_crit_edge, label %for.body36.land.rhs.i112_crit_edge

for.body36.land.rhs.i112_crit_edge:               ; preds = %for.body36
  br label %land.rhs.i112

for.body36.__af6list_valid.exit117_crit_edge:     ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit117

land.rhs.i112:                                    ; preds = %while.body.i114.land.rhs.i112_crit_edge, %for.body36.land.rhs.i112_crit_edge
  %i.09.i109 = phi ptr [ %50, %while.body.i114.land.rhs.i112_crit_edge ], [ %44, %for.body36.land.rhs.i112_crit_edge ]
  %valid.i110 = getelementptr i8, ptr %i.09.i109, i32 -4
  %47 = ptrtoint ptr %valid.i110 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %valid.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i111 = icmp eq i32 %48, 0
  br i1 %tobool.not.i111, label %while.body.i114, label %land.rhs.i112.__af6list_valid.exit117_crit_edge

land.rhs.i112.__af6list_valid.exit117_crit_edge:  ; preds = %land.rhs.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit117

while.body.i114:                                  ; preds = %land.rhs.i112
  %49 = ptrtoint ptr %i.09.i109 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i.09.i109, align 4
  %cmp.not.i113 = icmp eq ptr %50, %list644
  br i1 %cmp.not.i113, label %while.body.i114.__af6list_valid.exit117_crit_edge, label %while.body.i114.land.rhs.i112_crit_edge

while.body.i114.land.rhs.i112_crit_edge:          ; preds = %while.body.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i112

while.body.i114.__af6list_valid.exit117_crit_edge: ; preds = %while.body.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid.exit117

__af6list_valid.exit117:                          ; preds = %while.body.i114.__af6list_valid.exit117_crit_edge, %land.rhs.i112.__af6list_valid.exit117_crit_edge, %for.body36.__af6list_valid.exit117_crit_edge
  %i.0.lcssa.i115 = phi ptr [ %44, %for.body36.__af6list_valid.exit117_crit_edge ], [ %i.09.i109, %land.rhs.i112.__af6list_valid.exit117_crit_edge ], [ %list644, %while.body.i114.__af6list_valid.exit117_crit_edge ]
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %2, align 4
  %list634 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %52, i32 0, i32 1
  %cmp35.not = icmp eq ptr %i.0.lcssa.i105.pn124, %list634
  br i1 %cmp35.not, label %__af6list_valid.exit117.for.end46_crit_edge, label %__af6list_valid.exit117.for.body36_crit_edge

__af6list_valid.exit117.for.body36_crit_edge:     ; preds = %__af6list_valid.exit117
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36

__af6list_valid.exit117.for.end46_crit_edge:      ; preds = %__af6list_valid.exit117
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end46

for.end46:                                        ; preds = %__af6list_valid.exit117.for.end46_crit_edge, %__af6list_valid.exit107.for.end46_crit_edge
  %.lcssa = phi ptr [ %42, %__af6list_valid.exit107.for.end46_crit_edge ], [ %52, %__af6list_valid.exit117.for.end46_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa) #9
  br label %if.end

if.end:                                           ; preds = %for.end46, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %entry1, i32 -28
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 4
  tail call void @kfree(ptr noundef %54) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_domhsh_add_default(ptr noundef %entry1, ptr noundef %audit_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @netlbl_domhsh_add(ptr noundef %entry1, ptr noundef %audit_info)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_domhsh_remove_entry(ptr noundef %entry1, ptr noundef %audit_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %entry1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @netlbl_domhsh_lock) #9
  %valid = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end64, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %valid, align 4
  %3 = load volatile ptr, ptr @netlbl_domhsh_def_ipv4, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.then2.do.end13_crit_edge

if.then2.do.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

land.lhs.true:                                    ; preds = %if.then2
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b150 = load i1, ptr @netlbl_domhsh_remove_entry.__warned, align 1
  br i1 %.b150, label %land.lhs.true8.do.end13_crit_edge, label %if.then10

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netlbl_domhsh_remove_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 599, ptr noundef nonnull @.str.1) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %if.then2.do.end13_crit_edge
  %cmp15 = icmp eq ptr %3, %entry1
  br i1 %cmp15, label %do.body22, label %if.else

do.body22:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  store volatile ptr null, ptr @netlbl_domhsh_def_ipv4, align 4
  br label %if.end67

if.else:                                          ; preds = %do.end13
  %4 = load volatile ptr, ptr @netlbl_domhsh_def_ipv6, align 4
  %call34 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %if.else.do.end44_crit_edge

if.else.do.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

land.lhs.true36:                                  ; preds = %if.else
  %call37 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true36.do.end44_crit_edge, label %land.lhs.true39

land.lhs.true36.do.end44_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

land.lhs.true39:                                  ; preds = %land.lhs.true36
  %.b148149 = load i1, ptr @netlbl_domhsh_remove_entry.__warned.2, align 1
  br i1 %.b148149, label %land.lhs.true39.do.end44_crit_edge, label %if.then41

land.lhs.true39.do.end44_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

if.then41:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netlbl_domhsh_remove_entry.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %land.lhs.true39.do.end44_crit_edge, %land.lhs.true36.do.end44_crit_edge, %if.else.do.end44_crit_edge
  %cmp46 = icmp eq ptr %4, %entry1
  br i1 %cmp46, label %do.body53, label %if.else60

do.body53:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  store volatile ptr null, ptr @netlbl_domhsh_def_ipv6, align 4
  br label %if.end67

if.else60:                                        ; preds = %do.end44
  %list = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else60.list_del_rcu.exit_crit_edge

if.else60.list_del_rcu.exit_crit_edge:            ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.else60.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end67

if.end64:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_domhsh_lock) #9
  br label %cleanup

if.end67:                                         ; preds = %list_del_rcu.exit, %do.body53, %do.body22
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_domhsh_lock) #9
  %call68 = tail call ptr @netlbl_audit_start_common(i32 noundef 1410, ptr noundef %audit_info) #9
  %cmp69.not = icmp eq ptr %call68, null
  br i1 %cmp69.not, label %if.end67.if.end73_crit_edge, label %if.then70

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entry1, align 4
  %tobool71.not = icmp eq ptr %13, null
  %spec.select = select i1 %tobool71.not, ptr @.str.4, ptr %13
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call68, ptr noundef nonnull @.str.3, ptr noundef nonnull %spec.select) #9
  tail call void @audit_log_end(ptr noundef nonnull %call68) #9
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end67.if.end73_crit_edge
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2
  %14 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %def, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %15, label %if.end73.sw.epilog_crit_edge [
    i32 6, label %sw.bb
    i32 3, label %sw.bb111
    i32 7, label %sw.bb113
  ]

if.end73.sw.epilog_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end73
  %17 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %cmp.not19.i = icmp eq ptr %21, %19
  br i1 %cmp.not19.i, label %sw.bb.__af4list_valid_rcu.exit_crit_edge, label %sw.bb.land.rhs.i_crit_edge

sw.bb.land.rhs.i_crit_edge:                       ; preds = %sw.bb
  br label %land.rhs.i

sw.bb.__af4list_valid_rcu.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit

land.rhs.i:                                       ; preds = %do.end9.i.land.rhs.i_crit_edge, %sw.bb.land.rhs.i_crit_edge
  %i.020.i = phi ptr [ %25, %do.end9.i.land.rhs.i_crit_edge ], [ %21, %sw.bb.land.rhs.i_crit_edge ]
  %valid.i = getelementptr i8, ptr %i.020.i, i32 -4
  %22 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %while.body.i, label %land.rhs.i.__af4list_valid_rcu.exit_crit_edge

land.rhs.i.__af4list_valid_rcu.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit

while.body.i:                                     ; preds = %land.rhs.i
  %24 = ptrtoint ptr %i.020.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %i.020.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %while.body.i.do.end9.i_crit_edge

while.body.i.do.end9.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b18.i = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 76, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %while.body.i.do.end9.i_crit_edge
  %cmp.not.i = icmp eq ptr %25, %19
  br i1 %cmp.not.i, label %do.end9.i.__af4list_valid_rcu.exit_crit_edge, label %do.end9.i.land.rhs.i_crit_edge

do.end9.i.land.rhs.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

do.end9.i.__af4list_valid_rcu.exit_crit_edge:     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit

__af4list_valid_rcu.exit:                         ; preds = %do.end9.i.__af4list_valid_rcu.exit_crit_edge, %land.rhs.i.__af4list_valid_rcu.exit_crit_edge, %sw.bb.__af4list_valid_rcu.exit_crit_edge
  %i.0.lcssa.i = phi ptr [ %19, %sw.bb.__af4list_valid_rcu.exit_crit_edge ], [ %i.020.i, %land.rhs.i.__af4list_valid_rcu.exit_crit_edge ], [ %19, %do.end9.i.__af4list_valid_rcu.exit_crit_edge ]
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %17, align 4
  %cmp81.not208 = icmp eq ptr %i.0.lcssa.i, %27
  br i1 %cmp81.not208, label %__af4list_valid_rcu.exit.for.end_crit_edge, label %__af4list_valid_rcu.exit.for.body_crit_edge

__af4list_valid_rcu.exit.for.body_crit_edge:      ; preds = %__af4list_valid_rcu.exit
  br label %for.body

__af4list_valid_rcu.exit.for.end_crit_edge:       ; preds = %__af4list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %__af4list_valid_rcu.exit169.for.body_crit_edge, %__af4list_valid_rcu.exit.for.body_crit_edge
  %i.0.lcssa.i.pn209 = phi ptr [ %i.0.lcssa.i167, %__af4list_valid_rcu.exit169.for.body_crit_edge ], [ %i.0.lcssa.i, %__af4list_valid_rcu.exit.for.body_crit_edge ]
  %28 = getelementptr i8, ptr %i.0.lcssa.i.pn209, i32 -16
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  tail call void @cipso_v4_doi_putdef(ptr noundef %30) #9
  %31 = ptrtoint ptr %i.0.lcssa.i.pn209 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i.0.lcssa.i.pn209, align 4
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %17, align 4
  %cmp.not19.i151 = icmp eq ptr %32, %34
  br i1 %cmp.not19.i151, label %for.body.__af4list_valid_rcu.exit169_crit_edge, label %for.body.land.rhs.i155_crit_edge

for.body.land.rhs.i155_crit_edge:                 ; preds = %for.body
  br label %land.rhs.i155

for.body.__af4list_valid_rcu.exit169_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit169

land.rhs.i155:                                    ; preds = %do.end9.i166.land.rhs.i155_crit_edge, %for.body.land.rhs.i155_crit_edge
  %i.020.i152 = phi ptr [ %38, %do.end9.i166.land.rhs.i155_crit_edge ], [ %32, %for.body.land.rhs.i155_crit_edge ]
  %valid.i153 = getelementptr i8, ptr %i.020.i152, i32 -4
  %35 = ptrtoint ptr %valid.i153 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %valid.i153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i154 = icmp eq i32 %36, 0
  br i1 %tobool.not.i154, label %while.body.i158, label %land.rhs.i155.__af4list_valid_rcu.exit169_crit_edge

land.rhs.i155.__af4list_valid_rcu.exit169_crit_edge: ; preds = %land.rhs.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit169

while.body.i158:                                  ; preds = %land.rhs.i155
  %37 = ptrtoint ptr %i.020.i152 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %i.020.i152, align 4
  %call.i156 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool3.not.i157 = icmp eq i32 %call.i156, 0
  br i1 %tobool3.not.i157, label %land.lhs.true.i161, label %while.body.i158.do.end9.i166_crit_edge

while.body.i158.do.end9.i166_crit_edge:           ; preds = %while.body.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i166

land.lhs.true.i161:                               ; preds = %while.body.i158
  %call4.i159 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i159)
  %tobool5.not.i160 = icmp eq i32 %call4.i159, 0
  br i1 %tobool5.not.i160, label %land.lhs.true.i161.do.end9.i166_crit_edge, label %land.lhs.true6.i163

land.lhs.true.i161.do.end9.i166_crit_edge:        ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i166

land.lhs.true6.i163:                              ; preds = %land.lhs.true.i161
  %.b18.i162 = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i162, label %land.lhs.true6.i163.do.end9.i166_crit_edge, label %if.then.i164

land.lhs.true6.i163.do.end9.i166_crit_edge:       ; preds = %land.lhs.true6.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i166

if.then.i164:                                     ; preds = %land.lhs.true6.i163
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 76, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i166

do.end9.i166:                                     ; preds = %if.then.i164, %land.lhs.true6.i163.do.end9.i166_crit_edge, %land.lhs.true.i161.do.end9.i166_crit_edge, %while.body.i158.do.end9.i166_crit_edge
  %cmp.not.i165 = icmp eq ptr %38, %34
  br i1 %cmp.not.i165, label %do.end9.i166.__af4list_valid_rcu.exit169_crit_edge, label %do.end9.i166.land.rhs.i155_crit_edge

do.end9.i166.land.rhs.i155_crit_edge:             ; preds = %do.end9.i166
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i155

do.end9.i166.__af4list_valid_rcu.exit169_crit_edge: ; preds = %do.end9.i166
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit169

__af4list_valid_rcu.exit169:                      ; preds = %do.end9.i166.__af4list_valid_rcu.exit169_crit_edge, %land.rhs.i155.__af4list_valid_rcu.exit169_crit_edge, %for.body.__af4list_valid_rcu.exit169_crit_edge
  %i.0.lcssa.i167 = phi ptr [ %32, %for.body.__af4list_valid_rcu.exit169_crit_edge ], [ %i.020.i152, %land.rhs.i155.__af4list_valid_rcu.exit169_crit_edge ], [ %34, %do.end9.i166.__af4list_valid_rcu.exit169_crit_edge ]
  %39 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %17, align 4
  %cmp81.not = icmp eq ptr %i.0.lcssa.i167, %40
  br i1 %cmp81.not, label %__af4list_valid_rcu.exit169.for.end_crit_edge, label %__af4list_valid_rcu.exit169.for.body_crit_edge

__af4list_valid_rcu.exit169.for.body_crit_edge:   ; preds = %__af4list_valid_rcu.exit169
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

__af4list_valid_rcu.exit169.for.end_crit_edge:    ; preds = %__af4list_valid_rcu.exit169
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %__af4list_valid_rcu.exit169.for.end_crit_edge, %__af4list_valid_rcu.exit.for.end_crit_edge
  %.lcssa = phi ptr [ %i.0.lcssa.i, %__af4list_valid_rcu.exit.for.end_crit_edge ], [ %i.0.lcssa.i167, %__af4list_valid_rcu.exit169.for.end_crit_edge ]
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %.lcssa, i32 0, i32 1
  %41 = ptrtoint ptr %list6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %list6, align 4
  %cmp.not19.i170 = icmp eq ptr %42, %list6
  br i1 %cmp.not19.i170, label %for.end.__af6list_valid_rcu.exit_crit_edge, label %for.end.land.rhs.i174_crit_edge

for.end.land.rhs.i174_crit_edge:                  ; preds = %for.end
  br label %land.rhs.i174

for.end.__af6list_valid_rcu.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit

land.rhs.i174:                                    ; preds = %do.end9.i185.land.rhs.i174_crit_edge, %for.end.land.rhs.i174_crit_edge
  %i.020.i171 = phi ptr [ %46, %do.end9.i185.land.rhs.i174_crit_edge ], [ %42, %for.end.land.rhs.i174_crit_edge ]
  %valid.i172 = getelementptr i8, ptr %i.020.i171, i32 -4
  %43 = ptrtoint ptr %valid.i172 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %valid.i172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i173 = icmp eq i32 %44, 0
  br i1 %tobool.not.i173, label %while.body.i177, label %land.rhs.i174.__af6list_valid_rcu.exit_crit_edge

land.rhs.i174.__af6list_valid_rcu.exit_crit_edge: ; preds = %land.rhs.i174
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit

while.body.i177:                                  ; preds = %land.rhs.i174
  %45 = ptrtoint ptr %i.020.i171 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %i.020.i171, align 4
  %call.i175 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool3.not.i176 = icmp eq i32 %call.i175, 0
  br i1 %tobool3.not.i176, label %land.lhs.true.i180, label %while.body.i177.do.end9.i185_crit_edge

while.body.i177.do.end9.i185_crit_edge:           ; preds = %while.body.i177
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i185

land.lhs.true.i180:                               ; preds = %while.body.i177
  %call4.i178 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i178)
  %tobool5.not.i179 = icmp eq i32 %call4.i178, 0
  br i1 %tobool5.not.i179, label %land.lhs.true.i180.do.end9.i185_crit_edge, label %land.lhs.true6.i182

land.lhs.true.i180.do.end9.i185_crit_edge:        ; preds = %land.lhs.true.i180
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i185

land.lhs.true6.i182:                              ; preds = %land.lhs.true.i180
  %.b18.i181 = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18.i181, label %land.lhs.true6.i182.do.end9.i185_crit_edge, label %if.then.i183

land.lhs.true6.i182.do.end9.i185_crit_edge:       ; preds = %land.lhs.true6.i182
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i185

if.then.i183:                                     ; preds = %land.lhs.true6.i182
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 143, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i185

do.end9.i185:                                     ; preds = %if.then.i183, %land.lhs.true6.i182.do.end9.i185_crit_edge, %land.lhs.true.i180.do.end9.i185_crit_edge, %while.body.i177.do.end9.i185_crit_edge
  %cmp.not.i184 = icmp eq ptr %46, %list6
  br i1 %cmp.not.i184, label %do.end9.i185.__af6list_valid_rcu.exit_crit_edge, label %do.end9.i185.land.rhs.i174_crit_edge

do.end9.i185.land.rhs.i174_crit_edge:             ; preds = %do.end9.i185
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i174

do.end9.i185.__af6list_valid_rcu.exit_crit_edge:  ; preds = %do.end9.i185
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit

__af6list_valid_rcu.exit:                         ; preds = %do.end9.i185.__af6list_valid_rcu.exit_crit_edge, %land.rhs.i174.__af6list_valid_rcu.exit_crit_edge, %for.end.__af6list_valid_rcu.exit_crit_edge
  %i.0.lcssa.i186 = phi ptr [ %list6, %for.end.__af6list_valid_rcu.exit_crit_edge ], [ %i.020.i171, %land.rhs.i174.__af6list_valid_rcu.exit_crit_edge ], [ %list6, %do.end9.i185.__af6list_valid_rcu.exit_crit_edge ]
  %47 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %17, align 4
  %list697210 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %48, i32 0, i32 1
  %cmp98.not211 = icmp eq ptr %i.0.lcssa.i186, %list697210
  br i1 %cmp98.not211, label %__af6list_valid_rcu.exit.sw.epilog_crit_edge, label %__af6list_valid_rcu.exit.for.body99_crit_edge

__af6list_valid_rcu.exit.for.body99_crit_edge:    ; preds = %__af6list_valid_rcu.exit
  br label %for.body99

__af6list_valid_rcu.exit.sw.epilog_crit_edge:     ; preds = %__af6list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body99:                                       ; preds = %__af6list_valid_rcu.exit206.for.body99_crit_edge, %__af6list_valid_rcu.exit.for.body99_crit_edge
  %i.0.lcssa.i186.pn212 = phi ptr [ %i.0.lcssa.i204, %__af6list_valid_rcu.exit206.for.body99_crit_edge ], [ %i.0.lcssa.i186, %__af6list_valid_rcu.exit.for.body99_crit_edge ]
  %49 = getelementptr i8, ptr %i.0.lcssa.i186.pn212, i32 -40
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  tail call void @calipso_doi_putdef(ptr noundef %51) #9
  %52 = ptrtoint ptr %i.0.lcssa.i186.pn212 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i.0.lcssa.i186.pn212, align 4
  %54 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %17, align 4
  %list6108 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %55, i32 0, i32 1
  %cmp.not19.i188 = icmp eq ptr %53, %list6108
  br i1 %cmp.not19.i188, label %for.body99.__af6list_valid_rcu.exit206_crit_edge, label %for.body99.land.rhs.i192_crit_edge

for.body99.land.rhs.i192_crit_edge:               ; preds = %for.body99
  br label %land.rhs.i192

for.body99.__af6list_valid_rcu.exit206_crit_edge: ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit206

land.rhs.i192:                                    ; preds = %do.end9.i203.land.rhs.i192_crit_edge, %for.body99.land.rhs.i192_crit_edge
  %i.020.i189 = phi ptr [ %59, %do.end9.i203.land.rhs.i192_crit_edge ], [ %53, %for.body99.land.rhs.i192_crit_edge ]
  %valid.i190 = getelementptr i8, ptr %i.020.i189, i32 -4
  %56 = ptrtoint ptr %valid.i190 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %valid.i190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i191 = icmp eq i32 %57, 0
  br i1 %tobool.not.i191, label %while.body.i195, label %land.rhs.i192.__af6list_valid_rcu.exit206_crit_edge

land.rhs.i192.__af6list_valid_rcu.exit206_crit_edge: ; preds = %land.rhs.i192
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit206

while.body.i195:                                  ; preds = %land.rhs.i192
  %58 = ptrtoint ptr %i.020.i189 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %i.020.i189, align 4
  %call.i193 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool3.not.i194 = icmp eq i32 %call.i193, 0
  br i1 %tobool3.not.i194, label %land.lhs.true.i198, label %while.body.i195.do.end9.i203_crit_edge

while.body.i195.do.end9.i203_crit_edge:           ; preds = %while.body.i195
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i203

land.lhs.true.i198:                               ; preds = %while.body.i195
  %call4.i196 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i196)
  %tobool5.not.i197 = icmp eq i32 %call4.i196, 0
  br i1 %tobool5.not.i197, label %land.lhs.true.i198.do.end9.i203_crit_edge, label %land.lhs.true6.i200

land.lhs.true.i198.do.end9.i203_crit_edge:        ; preds = %land.lhs.true.i198
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i203

land.lhs.true6.i200:                              ; preds = %land.lhs.true.i198
  %.b18.i199 = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18.i199, label %land.lhs.true6.i200.do.end9.i203_crit_edge, label %if.then.i201

land.lhs.true6.i200.do.end9.i203_crit_edge:       ; preds = %land.lhs.true6.i200
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i203

if.then.i201:                                     ; preds = %land.lhs.true6.i200
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 143, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i203

do.end9.i203:                                     ; preds = %if.then.i201, %land.lhs.true6.i200.do.end9.i203_crit_edge, %land.lhs.true.i198.do.end9.i203_crit_edge, %while.body.i195.do.end9.i203_crit_edge
  %cmp.not.i202 = icmp eq ptr %59, %list6108
  br i1 %cmp.not.i202, label %do.end9.i203.__af6list_valid_rcu.exit206_crit_edge, label %do.end9.i203.land.rhs.i192_crit_edge

do.end9.i203.land.rhs.i192_crit_edge:             ; preds = %do.end9.i203
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i192

do.end9.i203.__af6list_valid_rcu.exit206_crit_edge: ; preds = %do.end9.i203
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit206

__af6list_valid_rcu.exit206:                      ; preds = %do.end9.i203.__af6list_valid_rcu.exit206_crit_edge, %land.rhs.i192.__af6list_valid_rcu.exit206_crit_edge, %for.body99.__af6list_valid_rcu.exit206_crit_edge
  %i.0.lcssa.i204 = phi ptr [ %53, %for.body99.__af6list_valid_rcu.exit206_crit_edge ], [ %i.020.i189, %land.rhs.i192.__af6list_valid_rcu.exit206_crit_edge ], [ %list6108, %do.end9.i203.__af6list_valid_rcu.exit206_crit_edge ]
  %60 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %17, align 4
  %list697 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %61, i32 0, i32 1
  %cmp98.not = icmp eq ptr %i.0.lcssa.i204, %list697
  br i1 %cmp98.not, label %__af6list_valid_rcu.exit206.sw.epilog_crit_edge, label %__af6list_valid_rcu.exit206.for.body99_crit_edge

__af6list_valid_rcu.exit206.for.body99_crit_edge: ; preds = %__af6list_valid_rcu.exit206
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body99

__af6list_valid_rcu.exit206.sw.epilog_crit_edge:  ; preds = %__af6list_valid_rcu.exit206
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb111:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %62 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  tail call void @cipso_v4_doi_putdef(ptr noundef %64) #9
  br label %sw.epilog

sw.bb113:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %65 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  tail call void @calipso_doi_putdef(ptr noundef %67) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb113, %sw.bb111, %__af6list_valid_rcu.exit206.sw.epilog_crit_edge, %__af6list_valid_rcu.exit.sw.epilog_crit_edge, %if.end73.sw.epilog_crit_edge
  %rcu = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry1, i32 0, i32 5
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @netlbl_domhsh_free_entry) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end64, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end64 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_audit_start_common(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cipso_v4_doi_putdef(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @calipso_doi_putdef(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_domhsh_remove_af4(ptr noundef %domain, ptr nocapture noundef readonly %addr, ptr nocapture noundef readonly %mask, ptr noundef %audit_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tobool.not = icmp eq ptr %domain, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc ptr @netlbl_domhsh_search(ptr noundef nonnull %domain, i16 noundef zeroext 2)
  br label %if.end

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call fastcc ptr @netlbl_domhsh_search_def(ptr noundef null, i16 noundef zeroext 2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %entry_map.0 = phi ptr [ %call, %if.then ], [ %call2, %if.else ]
  %cmp = icmp eq ptr %entry_map.0, null
  br i1 %cmp, label %if.end.remove_af4_failure_crit_edge, label %lor.lhs.false

if.end.remove_af4_failure_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_af4_failure

lor.lhs.false:                                    ; preds = %if.end
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry_map.0, i32 0, i32 2
  %4 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp3.not = icmp eq i32 %5, 6
  br i1 %cmp3.not, label %if.end5, label %lor.lhs.false.remove_af4_failure_crit_edge

lor.lhs.false.remove_af4_failure_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_af4_failure

if.end5:                                          ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock(ptr noundef nonnull @netlbl_domhsh_lock) #9
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %10 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry_map.0, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call8 = tail call ptr @netlbl_af4list_remove(i32 noundef %7, i32 noundef %9, ptr noundef %12) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_domhsh_lock) #9
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.end5.remove_af4_failure_crit_edge, label %if.end11

if.end5.remove_af4_failure_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_af4_failure

if.end11:                                         ; preds = %if.end5
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %cmp.not19.i = icmp eq ptr %16, %14
  br i1 %cmp.not19.i, label %if.end11.__af4list_valid_rcu.exit_crit_edge, label %if.end11.land.rhs.i_crit_edge

if.end11.land.rhs.i_crit_edge:                    ; preds = %if.end11
  br label %land.rhs.i

if.end11.__af4list_valid_rcu.exit_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit

land.rhs.i:                                       ; preds = %do.end9.i.land.rhs.i_crit_edge, %if.end11.land.rhs.i_crit_edge
  %i.020.i = phi ptr [ %20, %do.end9.i.land.rhs.i_crit_edge ], [ %16, %if.end11.land.rhs.i_crit_edge ]
  %valid.i = getelementptr i8, ptr %i.020.i, i32 -4
  %17 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i62 = icmp eq i32 %18, 0
  br i1 %tobool.not.i62, label %while.body.i, label %land.rhs.i.__af4list_valid_rcu.exit_crit_edge

land.rhs.i.__af4list_valid_rcu.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit

while.body.i:                                     ; preds = %land.rhs.i
  %19 = ptrtoint ptr %i.020.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %i.020.i, align 4
  %call.i63 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool3.not.i = icmp eq i32 %call.i63, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i64, label %while.body.i.do.end9.i_crit_edge

while.body.i.do.end9.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true.i64:                                ; preds = %while.body.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i64.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i64.do.end9.i_crit_edge:            ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i64
  %.b18.i = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i65

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

if.then.i65:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 76, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i65, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i64.do.end9.i_crit_edge, %while.body.i.do.end9.i_crit_edge
  %cmp.not.i = icmp eq ptr %20, %14
  br i1 %cmp.not.i, label %do.end9.i.__af4list_valid_rcu.exit_crit_edge, label %do.end9.i.land.rhs.i_crit_edge

do.end9.i.land.rhs.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

do.end9.i.__af4list_valid_rcu.exit_crit_edge:     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit

__af4list_valid_rcu.exit:                         ; preds = %do.end9.i.__af4list_valid_rcu.exit_crit_edge, %land.rhs.i.__af4list_valid_rcu.exit_crit_edge, %if.end11.__af4list_valid_rcu.exit_crit_edge
  %i.0.lcssa.i = phi ptr [ %14, %if.end11.__af4list_valid_rcu.exit_crit_edge ], [ %i.020.i, %land.rhs.i.__af4list_valid_rcu.exit_crit_edge ], [ %14, %do.end9.i.__af4list_valid_rcu.exit_crit_edge ]
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %10, align 4
  %cmp19.not = icmp eq ptr %i.0.lcssa.i, %22
  br i1 %cmp19.not, label %for.end, label %__af4list_valid_rcu.exit.remove_af4_single_addr_crit_edge

__af4list_valid_rcu.exit.remove_af4_single_addr_crit_edge: ; preds = %__af4list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_af4_single_addr

for.end:                                          ; preds = %__af4list_valid_rcu.exit
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %i.0.lcssa.i, i32 0, i32 1
  %23 = ptrtoint ptr %list6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list6, align 4
  %cmp.not19.i66 = icmp eq ptr %24, %list6
  br i1 %cmp.not19.i66, label %for.end.__af6list_valid_rcu.exit_crit_edge, label %for.end.land.rhs.i70_crit_edge

for.end.land.rhs.i70_crit_edge:                   ; preds = %for.end
  br label %land.rhs.i70

for.end.__af6list_valid_rcu.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit

land.rhs.i70:                                     ; preds = %do.end9.i81.land.rhs.i70_crit_edge, %for.end.land.rhs.i70_crit_edge
  %i.020.i67 = phi ptr [ %28, %do.end9.i81.land.rhs.i70_crit_edge ], [ %24, %for.end.land.rhs.i70_crit_edge ]
  %valid.i68 = getelementptr i8, ptr %i.020.i67, i32 -4
  %25 = ptrtoint ptr %valid.i68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %valid.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i69 = icmp eq i32 %26, 0
  br i1 %tobool.not.i69, label %while.body.i73, label %land.rhs.i70.__af6list_valid_rcu.exit_crit_edge

land.rhs.i70.__af6list_valid_rcu.exit_crit_edge:  ; preds = %land.rhs.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit

while.body.i73:                                   ; preds = %land.rhs.i70
  %27 = ptrtoint ptr %i.020.i67 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %i.020.i67, align 4
  %call.i71 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool3.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool3.not.i72, label %land.lhs.true.i76, label %while.body.i73.do.end9.i81_crit_edge

while.body.i73.do.end9.i81_crit_edge:             ; preds = %while.body.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i81

land.lhs.true.i76:                                ; preds = %while.body.i73
  %call4.i74 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i74)
  %tobool5.not.i75 = icmp eq i32 %call4.i74, 0
  br i1 %tobool5.not.i75, label %land.lhs.true.i76.do.end9.i81_crit_edge, label %land.lhs.true6.i78

land.lhs.true.i76.do.end9.i81_crit_edge:          ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i81

land.lhs.true6.i78:                               ; preds = %land.lhs.true.i76
  %.b18.i77 = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18.i77, label %land.lhs.true6.i78.do.end9.i81_crit_edge, label %if.then.i79

land.lhs.true6.i78.do.end9.i81_crit_edge:         ; preds = %land.lhs.true6.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i81

if.then.i79:                                      ; preds = %land.lhs.true6.i78
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 143, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i81

do.end9.i81:                                      ; preds = %if.then.i79, %land.lhs.true6.i78.do.end9.i81_crit_edge, %land.lhs.true.i76.do.end9.i81_crit_edge, %while.body.i73.do.end9.i81_crit_edge
  %cmp.not.i80 = icmp eq ptr %28, %list6
  br i1 %cmp.not.i80, label %do.end9.i81.__af6list_valid_rcu.exit_crit_edge, label %do.end9.i81.land.rhs.i70_crit_edge

do.end9.i81.land.rhs.i70_crit_edge:               ; preds = %do.end9.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i70

do.end9.i81.__af6list_valid_rcu.exit_crit_edge:   ; preds = %do.end9.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit

__af6list_valid_rcu.exit:                         ; preds = %do.end9.i81.__af6list_valid_rcu.exit_crit_edge, %land.rhs.i70.__af6list_valid_rcu.exit_crit_edge, %for.end.__af6list_valid_rcu.exit_crit_edge
  %i.0.lcssa.i82 = phi ptr [ %list6, %for.end.__af6list_valid_rcu.exit_crit_edge ], [ %i.020.i67, %land.rhs.i70.__af6list_valid_rcu.exit_crit_edge ], [ %list6, %do.end9.i81.__af6list_valid_rcu.exit_crit_edge ]
  %29 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %10, align 4
  %list633 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %30, i32 0, i32 1
  %cmp34.not = icmp eq ptr %i.0.lcssa.i82, %list633
  br i1 %cmp34.not, label %for.end42, label %__af6list_valid_rcu.exit.remove_af4_single_addr_crit_edge

__af6list_valid_rcu.exit.remove_af4_single_addr_crit_edge: ; preds = %__af6list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_af4_single_addr

for.end42:                                        ; preds = %__af6list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 @netlbl_domhsh_remove_entry(ptr noundef nonnull %entry_map.0, ptr noundef %audit_info)
  br label %remove_af4_single_addr

remove_af4_single_addr:                           ; preds = %for.end42, %__af6list_valid_rcu.exit.remove_af4_single_addr_crit_edge, %__af4list_valid_rcu.exit.remove_af4_single_addr_crit_edge
  %call.i84 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i84, label %remove_af4_single_addr.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i87

remove_af4_single_addr.rcu_read_unlock.exit_crit_edge: ; preds = %remove_af4_single_addr
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i87:                                ; preds = %remove_af4_single_addr
  %call1.i85 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %tobool.not.i86 = icmp eq i32 %call1.i85, 0
  br i1 %tobool.not.i86, label %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i89

land.lhs.true.i87.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i89:                               ; preds = %land.lhs.true.i87
  %.b4.i88 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i88, label %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, label %if.then.i90

land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i90:                                      ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i90, %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, %remove_af4_single_addr.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i.i91 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i91 to ptr
  %preempt_count.i.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i92, align 4
  %sub.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i92, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @synchronize_rcu() #9
  %add.ptr = getelementptr i8, ptr %call8, i32 -8
  %35 = getelementptr i8, ptr %call8, i32 -4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  tail call void @cipso_v4_doi_putdef(ptr noundef %37) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  br label %cleanup

remove_af4_failure:                               ; preds = %if.end5.remove_af4_failure_crit_edge, %lor.lhs.false.remove_af4_failure_crit_edge, %if.end.remove_af4_failure_crit_edge
  %call.i93 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i93, label %remove_af4_failure.rcu_read_unlock.exit103_crit_edge, label %land.lhs.true.i96

remove_af4_failure.rcu_read_unlock.exit103_crit_edge: ; preds = %remove_af4_failure
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit103

land.lhs.true.i96:                                ; preds = %remove_af4_failure
  %call1.i94 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool.not.i95 = icmp eq i32 %call1.i94, 0
  br i1 %tobool.not.i95, label %land.lhs.true.i96.rcu_read_unlock.exit103_crit_edge, label %land.lhs.true2.i98

land.lhs.true.i96.rcu_read_unlock.exit103_crit_edge: ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit103

land.lhs.true2.i98:                               ; preds = %land.lhs.true.i96
  %.b4.i97 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i97, label %land.lhs.true2.i98.rcu_read_unlock.exit103_crit_edge, label %if.then.i99

land.lhs.true2.i98.rcu_read_unlock.exit103_crit_edge: ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit103

if.then.i99:                                      ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #9
  br label %rcu_read_unlock.exit103

rcu_read_unlock.exit103:                          ; preds = %if.then.i99, %land.lhs.true2.i98.rcu_read_unlock.exit103_crit_edge, %land.lhs.true.i96.rcu_read_unlock.exit103_crit_edge, %remove_af4_failure.rcu_read_unlock.exit103_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %38 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i.i100 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i100 to ptr
  %preempt_count.i.i.i.i101 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i101, align 4
  %sub.i.i.i102 = add i32 %41, -1
  store volatile i32 %sub.i.i.i102, ptr %preempt_count.i.i.i.i101, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit103, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -2, %rcu_read_unlock.exit103 ], [ 0, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_af4list_remove(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_domhsh_remove_af6(ptr noundef %domain, ptr noundef %addr, ptr noundef %mask, ptr noundef %audit_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tobool.not = icmp eq ptr %domain, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc ptr @netlbl_domhsh_search(ptr noundef nonnull %domain, i16 noundef zeroext 10)
  br label %if.end

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call fastcc ptr @netlbl_domhsh_search_def(ptr noundef null, i16 noundef zeroext 10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %entry_map.0 = phi ptr [ %call, %if.then ], [ %call2, %if.else ]
  %cmp = icmp eq ptr %entry_map.0, null
  br i1 %cmp, label %if.end.remove_af6_failure_crit_edge, label %lor.lhs.false

if.end.remove_af6_failure_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_af6_failure

lor.lhs.false:                                    ; preds = %if.end
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry_map.0, i32 0, i32 2
  %4 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp3.not = icmp eq i32 %5, 6
  br i1 %cmp3.not, label %if.end5, label %lor.lhs.false.remove_af6_failure_crit_edge

lor.lhs.false.remove_af6_failure_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_af6_failure

if.end5:                                          ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock(ptr noundef nonnull @netlbl_domhsh_lock) #9
  %6 = getelementptr inbounds %struct.netlbl_dom_map, ptr %entry_map.0, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %8, i32 0, i32 1
  %call7 = tail call ptr @netlbl_af6list_remove(ptr noundef %addr, ptr noundef %mask, ptr noundef %list6) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @netlbl_domhsh_lock) #9
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.end5.remove_af6_failure_crit_edge, label %if.end10

if.end5.remove_af6_failure_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_af6_failure

if.end10:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %cmp.not19.i = icmp eq ptr %12, %10
  br i1 %cmp.not19.i, label %if.end10.__af4list_valid_rcu.exit_crit_edge, label %if.end10.land.rhs.i_crit_edge

if.end10.land.rhs.i_crit_edge:                    ; preds = %if.end10
  br label %land.rhs.i

if.end10.__af4list_valid_rcu.exit_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit

land.rhs.i:                                       ; preds = %do.end9.i.land.rhs.i_crit_edge, %if.end10.land.rhs.i_crit_edge
  %i.020.i = phi ptr [ %16, %do.end9.i.land.rhs.i_crit_edge ], [ %12, %if.end10.land.rhs.i_crit_edge ]
  %valid.i = getelementptr i8, ptr %i.020.i, i32 -4
  %13 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i61 = icmp eq i32 %14, 0
  br i1 %tobool.not.i61, label %while.body.i, label %land.rhs.i.__af4list_valid_rcu.exit_crit_edge

land.rhs.i.__af4list_valid_rcu.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit

while.body.i:                                     ; preds = %land.rhs.i
  %15 = ptrtoint ptr %i.020.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %i.020.i, align 4
  %call.i62 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool3.not.i = icmp eq i32 %call.i62, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i63, label %while.body.i.do.end9.i_crit_edge

while.body.i.do.end9.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true.i63:                                ; preds = %while.body.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i63.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i63.do.end9.i_crit_edge:            ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i63
  %.b18.i = load i1, ptr @__af4list_valid_rcu.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i64

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

if.then.i64:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af4list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 76, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i64, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i63.do.end9.i_crit_edge, %while.body.i.do.end9.i_crit_edge
  %cmp.not.i = icmp eq ptr %16, %10
  br i1 %cmp.not.i, label %do.end9.i.__af4list_valid_rcu.exit_crit_edge, label %do.end9.i.land.rhs.i_crit_edge

do.end9.i.land.rhs.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

do.end9.i.__af4list_valid_rcu.exit_crit_edge:     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af4list_valid_rcu.exit

__af4list_valid_rcu.exit:                         ; preds = %do.end9.i.__af4list_valid_rcu.exit_crit_edge, %land.rhs.i.__af4list_valid_rcu.exit_crit_edge, %if.end10.__af4list_valid_rcu.exit_crit_edge
  %i.0.lcssa.i = phi ptr [ %10, %if.end10.__af4list_valid_rcu.exit_crit_edge ], [ %i.020.i, %land.rhs.i.__af4list_valid_rcu.exit_crit_edge ], [ %10, %do.end9.i.__af4list_valid_rcu.exit_crit_edge ]
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %6, align 4
  %cmp17.not = icmp eq ptr %i.0.lcssa.i, %18
  br i1 %cmp17.not, label %for.end, label %__af4list_valid_rcu.exit.remove_af6_single_addr_crit_edge

__af4list_valid_rcu.exit.remove_af6_single_addr_crit_edge: ; preds = %__af4list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_af6_single_addr

for.end:                                          ; preds = %__af4list_valid_rcu.exit
  %list624 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %i.0.lcssa.i, i32 0, i32 1
  %19 = ptrtoint ptr %list624 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list624, align 4
  %cmp.not19.i65 = icmp eq ptr %20, %list624
  br i1 %cmp.not19.i65, label %for.end.__af6list_valid_rcu.exit_crit_edge, label %for.end.land.rhs.i69_crit_edge

for.end.land.rhs.i69_crit_edge:                   ; preds = %for.end
  br label %land.rhs.i69

for.end.__af6list_valid_rcu.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit

land.rhs.i69:                                     ; preds = %do.end9.i80.land.rhs.i69_crit_edge, %for.end.land.rhs.i69_crit_edge
  %i.020.i66 = phi ptr [ %24, %do.end9.i80.land.rhs.i69_crit_edge ], [ %20, %for.end.land.rhs.i69_crit_edge ]
  %valid.i67 = getelementptr i8, ptr %i.020.i66, i32 -4
  %21 = ptrtoint ptr %valid.i67 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %valid.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i68 = icmp eq i32 %22, 0
  br i1 %tobool.not.i68, label %while.body.i72, label %land.rhs.i69.__af6list_valid_rcu.exit_crit_edge

land.rhs.i69.__af6list_valid_rcu.exit_crit_edge:  ; preds = %land.rhs.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit

while.body.i72:                                   ; preds = %land.rhs.i69
  %23 = ptrtoint ptr %i.020.i66 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %i.020.i66, align 4
  %call.i70 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool3.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool3.not.i71, label %land.lhs.true.i75, label %while.body.i72.do.end9.i80_crit_edge

while.body.i72.do.end9.i80_crit_edge:             ; preds = %while.body.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i80

land.lhs.true.i75:                                ; preds = %while.body.i72
  %call4.i73 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i73)
  %tobool5.not.i74 = icmp eq i32 %call4.i73, 0
  br i1 %tobool5.not.i74, label %land.lhs.true.i75.do.end9.i80_crit_edge, label %land.lhs.true6.i77

land.lhs.true.i75.do.end9.i80_crit_edge:          ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i80

land.lhs.true6.i77:                               ; preds = %land.lhs.true.i75
  %.b18.i76 = load i1, ptr @__af6list_valid_rcu.__warned, align 1
  br i1 %.b18.i76, label %land.lhs.true6.i77.do.end9.i80_crit_edge, label %if.then.i78

land.lhs.true6.i77.do.end9.i80_crit_edge:         ; preds = %land.lhs.true6.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i80

if.then.i78:                                      ; preds = %land.lhs.true6.i77
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__af6list_valid_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 143, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i80

do.end9.i80:                                      ; preds = %if.then.i78, %land.lhs.true6.i77.do.end9.i80_crit_edge, %land.lhs.true.i75.do.end9.i80_crit_edge, %while.body.i72.do.end9.i80_crit_edge
  %cmp.not.i79 = icmp eq ptr %24, %list624
  br i1 %cmp.not.i79, label %do.end9.i80.__af6list_valid_rcu.exit_crit_edge, label %do.end9.i80.land.rhs.i69_crit_edge

do.end9.i80.land.rhs.i69_crit_edge:               ; preds = %do.end9.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i69

do.end9.i80.__af6list_valid_rcu.exit_crit_edge:   ; preds = %do.end9.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %__af6list_valid_rcu.exit

__af6list_valid_rcu.exit:                         ; preds = %do.end9.i80.__af6list_valid_rcu.exit_crit_edge, %land.rhs.i69.__af6list_valid_rcu.exit_crit_edge, %for.end.__af6list_valid_rcu.exit_crit_edge
  %i.0.lcssa.i81 = phi ptr [ %list624, %for.end.__af6list_valid_rcu.exit_crit_edge ], [ %i.020.i66, %land.rhs.i69.__af6list_valid_rcu.exit_crit_edge ], [ %list624, %do.end9.i80.__af6list_valid_rcu.exit_crit_edge ]
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %6, align 4
  %list632 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %26, i32 0, i32 1
  %cmp33.not = icmp eq ptr %i.0.lcssa.i81, %list632
  br i1 %cmp33.not, label %for.end41, label %__af6list_valid_rcu.exit.remove_af6_single_addr_crit_edge

__af6list_valid_rcu.exit.remove_af6_single_addr_crit_edge: ; preds = %__af6list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_af6_single_addr

for.end41:                                        ; preds = %__af6list_valid_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = tail call i32 @netlbl_domhsh_remove_entry(ptr noundef nonnull %entry_map.0, ptr noundef %audit_info)
  br label %remove_af6_single_addr

remove_af6_single_addr:                           ; preds = %for.end41, %__af6list_valid_rcu.exit.remove_af6_single_addr_crit_edge, %__af4list_valid_rcu.exit.remove_af6_single_addr_crit_edge
  %call.i83 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i83, label %remove_af6_single_addr.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i86

remove_af6_single_addr.rcu_read_unlock.exit_crit_edge: ; preds = %remove_af6_single_addr
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i86:                                ; preds = %remove_af6_single_addr
  %call1.i84 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i84)
  %tobool.not.i85 = icmp eq i32 %call1.i84, 0
  br i1 %tobool.not.i85, label %land.lhs.true.i86.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i88

land.lhs.true.i86.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i88:                               ; preds = %land.lhs.true.i86
  %.b4.i87 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i87, label %land.lhs.true2.i88.rcu_read_unlock.exit_crit_edge, label %if.then.i89

land.lhs.true2.i88.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i89:                                      ; preds = %land.lhs.true2.i88
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i89, %land.lhs.true2.i88.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i86.rcu_read_unlock.exit_crit_edge, %remove_af6_single_addr.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %27 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i.i90 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i90 to ptr
  %preempt_count.i.i.i.i91 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i91, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i91, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void @synchronize_rcu() #9
  %add.ptr = getelementptr i8, ptr %call7, i32 -8
  %31 = getelementptr i8, ptr %call7, i32 -4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  tail call void @calipso_doi_putdef(ptr noundef %33) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  br label %cleanup

remove_af6_failure:                               ; preds = %if.end5.remove_af6_failure_crit_edge, %lor.lhs.false.remove_af6_failure_crit_edge, %if.end.remove_af6_failure_crit_edge
  %call.i92 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i92, label %remove_af6_failure.rcu_read_unlock.exit102_crit_edge, label %land.lhs.true.i95

remove_af6_failure.rcu_read_unlock.exit102_crit_edge: ; preds = %remove_af6_failure
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit102

land.lhs.true.i95:                                ; preds = %remove_af6_failure
  %call1.i93 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93)
  %tobool.not.i94 = icmp eq i32 %call1.i93, 0
  br i1 %tobool.not.i94, label %land.lhs.true.i95.rcu_read_unlock.exit102_crit_edge, label %land.lhs.true2.i97

land.lhs.true.i95.rcu_read_unlock.exit102_crit_edge: ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit102

land.lhs.true2.i97:                               ; preds = %land.lhs.true.i95
  %.b4.i96 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i96, label %land.lhs.true2.i97.rcu_read_unlock.exit102_crit_edge, label %if.then.i98

land.lhs.true2.i97.rcu_read_unlock.exit102_crit_edge: ; preds = %land.lhs.true2.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit102

if.then.i98:                                      ; preds = %land.lhs.true2.i97
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #9
  br label %rcu_read_unlock.exit102

rcu_read_unlock.exit102:                          ; preds = %if.then.i98, %land.lhs.true2.i97.rcu_read_unlock.exit102_crit_edge, %land.lhs.true.i95.rcu_read_unlock.exit102_crit_edge, %remove_af6_failure.rcu_read_unlock.exit102_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %34 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i.i99 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i99 to ptr
  %preempt_count.i.i.i.i100 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i100, align 4
  %sub.i.i.i101 = add i32 %37, -1
  store volatile i32 %sub.i.i.i101, ptr %preempt_count.i.i.i.i100, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit102, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -2, %rcu_read_unlock.exit102 ], [ 0, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_af6list_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_domhsh_remove(ptr noundef %domain, i16 noundef zeroext %family, ptr noundef %audit_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %family, label %rcu_read_lock.exit.if.end14_crit_edge [
    i16 2, label %rcu_read_lock.exit.if.then_crit_edge
    i16 0, label %rcu_read_lock.exit.if.then_crit_edge57
  ]

rcu_read_lock.exit.if.then_crit_edge57:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

rcu_read_lock.exit.if.then_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

rcu_read_lock.exit.if.end14_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %rcu_read_lock.exit.if.then_crit_edge, %rcu_read_lock.exit.if.then_crit_edge57
  %tobool.not = icmp eq ptr %domain, null
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc ptr @netlbl_domhsh_search(ptr noundef nonnull %domain, i16 noundef zeroext 2)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call fastcc ptr @netlbl_domhsh_search_def(ptr noundef null, i16 noundef zeroext 2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %entry1.0 = phi ptr [ %call, %if.then6 ], [ %call7, %if.else ]
  %call8 = tail call i32 @netlbl_domhsh_remove_entry(ptr noundef %entry1.0, ptr noundef %audit_info)
  %5 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call8, label %if.end.done_crit_edge [
    i32 0, label %if.end.if.end14_crit_edge
    i32 -2, label %if.end14.fold.split
  ]

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end14.fold.split:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %if.end14.fold.split, %if.end.if.end14_crit_edge, %rcu_read_lock.exit.if.end14_crit_edge
  %ret_val.0 = phi i32 [ %call8, %if.end.if.end14_crit_edge ], [ -22, %rcu_read_lock.exit.if.end14_crit_edge ], [ -2, %if.end14.fold.split ]
  %6 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %family, label %if.end14.done_crit_edge [
    i16 10, label %if.end14.if.then22_crit_edge
    i16 0, label %if.end14.if.then22_crit_edge58
  ]

if.end14.if.then22_crit_edge58:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.end14.if.then22_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.end14.done_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then22:                                        ; preds = %if.end14.if.then22_crit_edge, %if.end14.if.then22_crit_edge58
  %tobool23.not = icmp eq ptr %domain, null
  br i1 %tobool23.not, label %if.else26, label %if.then24

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call fastcc ptr @netlbl_domhsh_search(ptr noundef nonnull %domain, i16 noundef zeroext 10)
  br label %if.end28

if.else26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call fastcc ptr @netlbl_domhsh_search_def(ptr noundef null, i16 noundef zeroext 10)
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then24
  %entry1.1 = phi ptr [ %call25, %if.then24 ], [ %call27, %if.else26 ]
  %call29 = tail call i32 @netlbl_domhsh_remove_entry(ptr noundef %entry1.1, ptr noundef %audit_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, -2
  %spec.select = select i1 %cmp30.not, i32 %ret_val.0, i32 %call29
  br label %done

done:                                             ; preds = %if.end28, %if.end14.done_crit_edge, %if.end.done_crit_edge
  %ret_val.2 = phi i32 [ %spec.select, %if.end28 ], [ -1, %if.end.done_crit_edge ], [ %ret_val.0, %if.end14.done_crit_edge ]
  %call.i48 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i48, label %done.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i51

done.rcu_read_unlock.exit_crit_edge:              ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i51:                                ; preds = %done
  %call1.i49 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool.not.i50, label %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i53

land.lhs.true.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i53:                               ; preds = %land.lhs.true.i51
  %.b4.i52 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52, label %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, label %if.then.i54

land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i54:                                      ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i54, %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, %done.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %7 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i.i55 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i55 to ptr
  %preempt_count.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i56, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i56, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret_val.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_domhsh_remove_default(i16 noundef zeroext %family, ptr noundef %audit_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @netlbl_domhsh_remove(ptr noundef null, i16 noundef zeroext %family, ptr noundef %audit_info)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @netlbl_domhsh_getentry(ptr noundef %domain, i16 noundef zeroext %family) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %family)
  %cmp = icmp eq i16 %family, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc ptr @netlbl_domhsh_search_def(ptr noundef %domain, i16 noundef zeroext %family)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @netlbl_domhsh_getentry_af4(ptr noundef %domain, i32 noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @netlbl_domhsh_search_def(ptr noundef %domain, i16 noundef zeroext 2)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp1.not = icmp eq i32 %1, 6
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call6 = tail call ptr @netlbl_af4list_search(i32 noundef %addr, ptr noundef %4) #9
  %cmp7 = icmp eq ptr %call6, null
  %add.ptr = getelementptr i8, ptr %call6, i32 -8
  %spec.select = select i1 %cmp7, ptr null, ptr %add.ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %def, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end4 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_af4list_search(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @netlbl_domhsh_getentry_af6(ptr noundef %domain, ptr noundef %addr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @netlbl_domhsh_search_def(ptr noundef %domain, i16 noundef zeroext 10)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %def = getelementptr inbounds %struct.netlbl_dom_map, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %def, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp1.not = icmp eq i32 %1, 6
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = getelementptr inbounds %struct.netlbl_dom_map, ptr %call, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %list6 = getelementptr inbounds %struct.netlbl_domaddr_map, ptr %4, i32 0, i32 1
  %call6 = tail call ptr @netlbl_af6list_search(ptr noundef %addr, ptr noundef %list6) #9
  %cmp7 = icmp eq ptr %call6, null
  %add.ptr = getelementptr i8, ptr %call6, i32 -8
  %spec.select = select i1 %cmp7, ptr null, ptr %add.ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %def, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end4 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netlbl_af6list_search(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_domhsh_walk(ptr nocapture noundef %skip_bkt, ptr nocapture noundef %skip_chain, ptr nocapture noundef readonly %callback, ptr noundef %cb_arg) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %skip_bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skip_bkt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc65, %rcu_read_lock.exit
  %iter_bkt.0 = phi i32 [ %5, %rcu_read_lock.exit ], [ %inc66, %for.inc65 ]
  %ret_val.0 = phi i32 [ -2, %rcu_read_lock.exit ], [ %ret_val.1.lcssa, %for.inc65 ]
  %6 = load volatile ptr, ptr @netlbl_domhsh, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.do.end7_crit_edge

for.cond.do.end7_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %for.cond
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b84 = load i1, ptr @netlbl_domhsh_walk.__warned, align 1
  br i1 %.b84, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netlbl_domhsh_walk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 952, ptr noundef nonnull @.str.1) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %for.cond.do.end7_crit_edge
  %size = getelementptr inbounds %struct.netlbl_domhsh_tbl, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %iter_bkt.0, i32 %8)
  %cmp = icmp ult i32 %iter_bkt.0, %8
  br i1 %cmp, label %for.body, label %do.end7.walk_return_crit_edge

do.end7.walk_return_crit_edge:                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %walk_return

for.body:                                         ; preds = %do.end7
  %9 = load volatile ptr, ptr @netlbl_domhsh, align 4
  %call14 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %for.body.do.end24_crit_edge

for.body.do.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

land.lhs.true16:                                  ; preds = %for.body
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true16.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true16.do.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %.b8083 = load i1, ptr @netlbl_domhsh_walk.__warned.5, align 1
  br i1 %.b8083, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netlbl_domhsh_walk.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 954, ptr noundef nonnull @.str.1) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true16.do.end24_crit_edge, %for.body.do.end24_crit_edge
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %11, i32 %iter_bkt.0
  %call27 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %do.end24.do.end37_crit_edge

do.end24.do.end37_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

land.lhs.true29:                                  ; preds = %do.end24
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true29.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true29.do.end37_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %.b8182 = load i1, ptr @netlbl_domhsh_walk.__warned.6, align 1
  br i1 %.b8182, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @netlbl_domhsh_walk.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 955, ptr noundef nonnull @.str.7) #9
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true29.do.end37_crit_edge, %do.end24.do.end37_crit_edge
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn100 = load volatile ptr, ptr %arrayidx, align 4
  %cmp44.not102 = icmp eq ptr %.pn100, %arrayidx
  br i1 %cmp44.not102, label %do.end37.for.inc65_crit_edge, label %do.end37.for.body45_crit_edge

do.end37.for.body45_crit_edge:                    ; preds = %do.end37
  br label %for.body45

do.end37.for.inc65_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65

for.body45:                                       ; preds = %for.inc.for.body45_crit_edge, %do.end37.for.body45_crit_edge
  %.pn105 = phi ptr [ %.pn, %for.inc.for.body45_crit_edge ], [ %.pn100, %do.end37.for.body45_crit_edge ]
  %ret_val.1104 = phi i32 [ %ret_val.2, %for.inc.for.body45_crit_edge ], [ %ret_val.0, %do.end37.for.body45_crit_edge ]
  %chain_cnt.1103 = phi i32 [ %chain_cnt.2, %for.inc.for.body45_crit_edge ], [ 0, %do.end37.for.body45_crit_edge ]
  %iter_entry.0106 = getelementptr i8, ptr %.pn105, i32 -20
  %valid = getelementptr i8, ptr %.pn105, i32 -4
  %13 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool46.not = icmp eq i32 %14, 0
  br i1 %tobool46.not, label %for.body45.for.inc_crit_edge, label %if.then47

for.body45.for.inc_crit_edge:                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then47:                                        ; preds = %for.body45
  %inc = add i32 %chain_cnt.1103, 1
  %15 = ptrtoint ptr %skip_chain to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %skip_chain, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chain_cnt.1103, i32 %16)
  %cmp48 = icmp ult i32 %chain_cnt.1103, %16
  br i1 %cmp48, label %if.then47.for.inc_crit_edge, label %if.end50

if.then47.for.inc_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end50:                                         ; preds = %if.then47
  %call51 = tail call i32 %callback(ptr noundef %iter_entry.0106, ptr noundef %cb_arg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end50.walk_return_crit_edge, label %if.end50.for.inc_crit_edge

if.end50.for.inc_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end50.walk_return_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %walk_return

for.inc:                                          ; preds = %if.end50.for.inc_crit_edge, %if.then47.for.inc_crit_edge, %for.body45.for.inc_crit_edge
  %chain_cnt.2 = phi i32 [ %inc, %if.then47.for.inc_crit_edge ], [ %inc, %if.end50.for.inc_crit_edge ], [ %chain_cnt.1103, %for.body45.for.inc_crit_edge ]
  %ret_val.2 = phi i32 [ %ret_val.1104, %if.then47.for.inc_crit_edge ], [ %call51, %if.end50.for.inc_crit_edge ], [ %ret_val.1104, %for.body45.for.inc_crit_edge ]
  %17 = ptrtoint ptr %.pn105 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load volatile ptr, ptr %.pn105, align 4
  %cmp44.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp44.not, label %for.inc.for.inc65_crit_edge, label %for.inc.for.body45_crit_edge

for.inc.for.body45_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body45

for.inc.for.inc65_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65

for.inc65:                                        ; preds = %for.inc.for.inc65_crit_edge, %do.end37.for.inc65_crit_edge
  %ret_val.1.lcssa = phi i32 [ %ret_val.0, %do.end37.for.inc65_crit_edge ], [ %ret_val.2, %for.inc.for.inc65_crit_edge ]
  %inc66 = add i32 %iter_bkt.0, 1
  br label %for.cond

walk_return:                                      ; preds = %if.end50.walk_return_crit_edge, %do.end7.walk_return_crit_edge
  %chain_cnt.3 = phi i32 [ %chain_cnt.1103, %if.end50.walk_return_crit_edge ], [ 0, %do.end7.walk_return_crit_edge ]
  %ret_val.3 = phi i32 [ %call51, %if.end50.walk_return_crit_edge ], [ %ret_val.0, %do.end7.walk_return_crit_edge ]
  %call.i85 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i85, label %walk_return.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i88

walk_return.rcu_read_unlock.exit_crit_edge:       ; preds = %walk_return
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i88:                                ; preds = %walk_return
  %call1.i86 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86)
  %tobool.not.i87 = icmp eq i32 %call1.i86, 0
  br i1 %tobool.not.i87, label %land.lhs.true.i88.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i90

land.lhs.true.i88.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i90:                               ; preds = %land.lhs.true.i88
  %.b4.i89 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i89, label %land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge, label %if.then.i91

land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i91:                                      ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.19) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i91, %land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i88.rcu_read_unlock.exit_crit_edge, %walk_return.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %18 = tail call i32 @llvm.read_register.i32(metadata !60) #9
  %and.i.i.i.i.i92 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i92 to ptr
  %preempt_count.i.i.i.i93 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i93, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i93, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %22 = ptrtoint ptr %skip_bkt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %iter_bkt.0, ptr %skip_bkt, align 4
  %23 = ptrtoint ptr %skip_chain to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %chain_cnt.3, ptr %skip_chain, align 4
  ret i32 %ret_val.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_af4list_audit_addr(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlbl_af6list_audit_addr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/netlabel/netlabel_domainhash.c", i32 438, i32 10}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/netlabel/netlabel_domainhash.c", i32 599, i32 16}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/netlabel/netlabel_domainhash.c", i32 601, i32 21}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/netlabel/netlabel_domainhash.c", i32 615, i32 6}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/netlabel/netlabel_domainhash.c", i32 616, i32 38}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/netlabel/netlabel_domainhash.c", i32 952, i32 18}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/netlabel/netlabel_domainhash.c", i32 954, i32 16}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../net/netlabel/netlabel_domainhash.c", i32 955, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @netlbl_domhsh, !20, !"netlbl_domhsh", i1 false, i1 false}
!20 = !{!"../net/netlabel/netlabel_domainhash.c", i32 46, i32 40}
!21 = !{ptr @netlbl_domhsh_def_ipv4, !22, !"netlbl_domhsh_def_ipv4", i1 false, i1 false}
!22 = !{!"../net/netlabel/netlabel_domainhash.c", i32 47, i32 37}
!23 = !{ptr @netlbl_domhsh_def_ipv6, !24, !"netlbl_domhsh_def_ipv6", i1 false, i1 false}
!24 = !{!"../net/netlabel/netlabel_domainhash.c", i32 48, i32 37}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netlabel/netlabel_domainhash.c", i32 43, i32 8}
!27 = !{ptr @netlbl_domhsh_lock, !26, !"netlbl_domhsh_lock", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/netlabel/netlabel_domainhash.c", i32 146, i32 15}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/netlabel/netlabel_domainhash.c", i32 147, i32 3}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/netlabel/netlabel_domainhash.c", i32 181, i32 11}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../net/netlabel/netlabel_domainhash.c", i32 186, i32 11}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../net/netlabel/netlabel_domainhash.c", i32 116, i32 16}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../net/netlabel/netlabel_addrlist.h", i32 76, i32 7}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/netlabel/netlabel_domainhash.c", i32 221, i32 31}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/netlabel/netlabel_domainhash.c", i32 246, i32 32}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/netlabel/netlabel_domainhash.c", i32 251, i32 7}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/netlabel/netlabel_domainhash.c", i32 257, i32 7}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/netlabel/netlabel_domainhash.c", i32 261, i32 31}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../net/netlabel/netlabel_addrlist.h", i32 143, i32 7}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!59 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2157177507}
!72 = !{i64 2149190007}
!73 = !{i64 2149215399}
!74 = !{i64 2157190302}
!75 = !{i64 2157198657}
!76 = !{i64 2157207204}
!77 = !{i64 2157215560}
!78 = !{i64 2149190273}
!79 = !{i64 2157164420, i64 2157164919, i64 2157164457, i64 2157164513, i64 2157164547, i64 2157164571, i64 2157164612, i64 2157164633, i64 2157164661, i64 2157164695}
!80 = !{i64 2157166079, i64 2157166578, i64 2157166116, i64 2157166172, i64 2157166206, i64 2157166230, i64 2157166271, i64 2157166292, i64 2157166320, i64 2157166354}
