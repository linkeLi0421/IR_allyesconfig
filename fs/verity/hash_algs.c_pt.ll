; ModuleID = '/llk/IR_all_yes/fs/verity/hash_algs.c_pt.bc'
source_filename = "../fs/verity/hash_algs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsverity_hash_alg = type { ptr, ptr, i32, i32, %struct.mempool_s }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.0, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.0 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.merkle_tree_params = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, [8 x i64] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha512\00", [25 x i8] zeroinitializer }, align 32
@fsverity_hash_algs = dso_local global { [3 x %struct.fsverity_hash_alg], [104 x i8] } { [3 x %struct.fsverity_hash_alg] [%struct.fsverity_hash_alg zeroinitializer, %struct.fsverity_hash_alg { ptr null, ptr @.str, i32 32, i32 64, %struct.mempool_s zeroinitializer }, %struct.fsverity_hash_alg { ptr null, ptr @.str.1, i32 64, i32 128, %struct.mempool_s zeroinitializer }], [104 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown hash algorithm number: %u\00", [62 x i8] zeroinitializer }, align 32
@fsverity_hash_alg_init_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fsverity_hash_alg_init_mutex, i64 52), ptr getelementptr (i8, ptr @fsverity_hash_alg_init_mutex, i64 52) }, ptr @fsverity_hash_alg_init_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Missing crypto API support for hash algorithm \22%s\22\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error allocating hash algorithm \22%s\22: %ld\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/verity/hash_algs.c\00", [42 x i8] zeroinitializer }, align 32
@fsverity_get_hash_alg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.7, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016fs-verity: %s using implementation \22%s\22\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsverity_get_hash_alg\00", [42 x i8] zeroinitializer }, align 32
@fsverity_get_hash_alg._entry_ptr = internal global ptr @fsverity_get_hash_alg._entry, section ".printk_index", align 4
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error %d importing hash state\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error %d computing page hash\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fsverity_hash_alg_init_mutex.wait_lock\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fsverity_hash_alg_init_mutex\00", [35 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 16, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 21, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"fsverity_hash_algs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 14, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 50, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [29 x i8] c"fsverity_hash_alg_init_mutex\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 71, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 77, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 85, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 96, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 254, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 265, i32 3 }
@___asan_gen_.67 = private constant [25 x i8] c"../fs/verity/hash_algs.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 27, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 87, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @fsverity_get_hash_alg._entry, ptr @fsverity_get_hash_alg._entry_ptr, ptr @.str, ptr @.str.1, ptr @fsverity_hash_algs, ptr @.str.2, ptr @.str.3, ptr @fsverity_hash_alg_init_mutex, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @init_completion.__key, ptr @.str.14], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsverity_hash_algs to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsverity_hash_alg_init_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsverity_get_hash_alg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fsverity_get_hash_alg(ptr noundef %inode, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp = icmp ugt i32 %num, 2
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr [3 x %struct.fsverity_hash_alg], ptr @fsverity_hash_algs, i32 0, i32 %num
  %name = getelementptr [3 x %struct.fsverity_hash_alg], ptr @fsverity_hash_algs, i32 0, i32 %num, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %num) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  %cmp7.not = icmp eq ptr %3, null
  br i1 %cmp7.not, label %if.end11, label %if.end.cleanup_crit_edge, !prof !42

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @fsverity_hash_alg_init_mutex, i32 noundef 0) #7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp13.not = icmp eq ptr %5, null
  br i1 %cmp13.not, label %if.end15, label %if.end11.out_unlock_crit_edge

if.end11.out_unlock_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end15:                                         ; preds = %if.end11
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call17 = tail call ptr @crypto_alloc_ahash(ptr noundef %7, i32 noundef 0, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end29

if.then19:                                        ; preds = %if.end15
  %cmp21 = icmp eq ptr %call17, inttoptr (i32 -2 to ptr)
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, ptr noundef %9) #10
  br label %out_unlock

if.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call17 to i32
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %12, i32 noundef %10) #10
  br label %out_unlock

if.end29:                                         ; preds = %if.end15
  %digest_size = getelementptr [3 x %struct.fsverity_hash_alg], ptr @fsverity_hash_algs, i32 0, i32 %num, i32 2
  %13 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %digest_size, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call17, i32 0, i32 10, i32 3
  %15 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 -128
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %18)
  %cmp31.not = icmp eq i32 %14, %18
  br i1 %cmp31.not, label %if.end63.critedge, label %if.end29.err_free_tfm.sink.split_crit_edge, !prof !43

if.end29.err_free_tfm.sink.split_crit_edge:       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_tfm.sink.split

if.end63.critedge:                                ; preds = %if.end29
  %block_size = getelementptr [3 x %struct.fsverity_hash_alg], ptr @fsverity_hash_algs, i32 0, i32 %num, i32 3
  %19 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %block_size, align 4
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %16, i32 0, i32 3
  %21 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cra_blocksize.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp66.not = icmp eq i32 %20, %22
  br i1 %cmp66.not, label %if.end98.critedge, label %if.end63.critedge.err_free_tfm.sink.split_crit_edge, !prof !43

if.end63.critedge.err_free_tfm.sink.split_crit_edge: ; preds = %if.end63.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_tfm.sink.split

if.end98.critedge:                                ; preds = %if.end63.critedge
  %req_pool = getelementptr [3 x %struct.fsverity_hash_alg], ptr @fsverity_hash_algs, i32 0, i32 %num, i32 4
  %reqsize.i = getelementptr inbounds %struct.crypto_ahash, ptr %call17, i32 0, i32 8
  %23 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reqsize.i, align 32
  %add = add i32 %24, 128
  %25 = inttoptr i32 %add to ptr
  %call.i = tail call i32 @mempool_init(ptr noundef %req_pool, i32 noundef 1, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool101.not = icmp eq i32 %call.i, 0
  br i1 %tobool101.not, label %do.end106, label %if.end98.critedge.err_free_tfm_crit_edge

if.end98.critedge.err_free_tfm_crit_edge:         ; preds = %if.end98.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_tfm

do.end106:                                        ; preds = %if.end98.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 4
  %28 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_driver_name.i.i = getelementptr inbounds %struct.crypto_alg, ptr %29, i32 0, i32 9
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %27, ptr noundef %cra_driver_name.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !44
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call17, ptr %arrayidx, align 4
  br label %out_unlock

err_free_tfm.sink.split:                          ; preds = %if.end63.critedge.err_free_tfm.sink.split_crit_edge, %if.end29.err_free_tfm.sink.split_crit_edge
  %.sink = phi i32 [ 85, %if.end29.err_free_tfm.sink.split_crit_edge ], [ 87, %if.end63.critedge.err_free_tfm.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #7
  br label %err_free_tfm

err_free_tfm:                                     ; preds = %err_free_tfm.sink.split, %if.end98.critedge.err_free_tfm_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end98.critedge.err_free_tfm_crit_edge ], [ -22, %err_free_tfm.sink.split ]
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call17, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %call17, ptr noundef %base.i.i) #7
  %31 = inttoptr i32 %err.0 to ptr
  br label %out_unlock

out_unlock:                                       ; preds = %err_free_tfm, %do.end106, %if.end25, %if.then22, %if.end11.out_unlock_crit_edge
  %alg.0 = phi ptr [ %arrayidx, %if.end11.out_unlock_crit_edge ], [ inttoptr (i32 -65 to ptr), %if.then22 ], [ %call17, %if.end25 ], [ %31, %err_free_tfm ], [ %arrayidx, %do.end106 ]
  tail call void @mutex_unlock(ptr noundef nonnull @fsverity_hash_alg_init_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ %alg.0, %out_unlock ], [ %arrayidx, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fsverity_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @fsverity_alloc_hash_request(ptr noundef %alg, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %req_pool = getelementptr inbounds %struct.fsverity_hash_alg, ptr %alg, i32 0, i32 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %req_pool, i32 noundef %gfp_flags) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alg, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.crypto_async_request, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsverity_free_hash_request(ptr noundef %alg, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i.i, align 16
  %reqsize.i.i = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reqsize.i.i, align 32
  %add.i = add i32 %3, 128
  %4 = call ptr @memset(ptr %req, i32 0, i32 %add.i)
  tail call void asm sideeffect "", "r,~{memory}"(ptr nonnull %req) #7, !srcloc !45
  %req_pool = getelementptr inbounds %struct.fsverity_hash_alg, ptr %alg, i32 0, i32 4
  tail call void @mempool_free(ptr noundef nonnull %req, ptr noundef %req_pool) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fsverity_prepare_hash_state(ptr noundef %alg, ptr nocapture noundef readonly %salt, i32 noundef %salt_size) local_unnamed_addr #0 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  %wait = alloca %struct.crypto_wait, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #7
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait) #7
  %1 = getelementptr inbounds i8, ptr %wait, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 56)
  %3 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #7
  %err = getelementptr inbounds %struct.crypto_wait, ptr %wait, i32 0, i32 1
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %salt_size)
  %cmp = icmp eq i32 %salt_size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %5 = ptrtoint ptr %alg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alg, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10, i32 3
  %7 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i, align 4
  %statesize.i = getelementptr i8, ptr %8, i32 -124
  %9 = ptrtoint ptr %statesize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %statesize.i, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end7

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end8.i
  %req_pool.i = getelementptr inbounds %struct.fsverity_hash_alg, ptr %alg, i32 0, i32 4
  %call.i = call noalias ptr @mempool_alloc(ptr noundef %req_pool.i, i32 noundef 3264) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end7.fsverity_alloc_hash_request.exit_crit_edge, label %if.then.i56

if.end7.fsverity_alloc_hash_request.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsverity_alloc_hash_request.exit

if.then.i56:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %alg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %alg, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %12, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  br label %fsverity_alloc_hash_request.exit

fsverity_alloc_hash_request.exit:                 ; preds = %if.then.i56, %if.end7.fsverity_alloc_hash_request.exit_crit_edge
  %sub = add i32 %salt_size, -1
  %block_size = getelementptr inbounds %struct.fsverity_hash_alg, ptr %alg, i32 0, i32 3
  %14 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %block_size, align 4
  %sub9 = add i32 %15, -1
  %or = or i32 %sub9, %sub
  %add = add i32 %or, 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #11
  %tobool11.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool11.not, label %fsverity_alloc_hash_request.exit.err_free_crit_edge, label %if.end13

fsverity_alloc_hash_request.exit.err_free_crit_edge: ; preds = %fsverity_alloc_hash_request.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end13:                                         ; preds = %fsverity_alloc_hash_request.exit
  %16 = call ptr @memcpy(ptr %call9.i.i, ptr %salt, i32 %salt_size)
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef nonnull %call9.i.i, i32 noundef %add) #7
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1536, ptr %flags4.i, align 4
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %sg, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %result3.i, align 32
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tfm.i.i, align 16
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 128
  %and.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i60 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i60, label %crypto_ahash_init.exit, label %if.end13.err_free_crit_edge

if.end13.err_free_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

crypto_ahash_init.exit:                           ; preds = %if.end13
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 -128
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call2.i = call i32 %28(ptr noundef %call.i) #7
  %29 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2.i, label %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge [
    i32 -115, label %crypto_ahash_init.exit.sw.bb.i_crit_edge
    i32 -16, label %crypto_ahash_init.exit.sw.bb.i_crit_edge84
  ]

crypto_ahash_init.exit.sw.bb.i_crit_edge84:       ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

crypto_ahash_init.exit.sw.bb.i_crit_edge:         ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge: ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %crypto_ahash_init.exit.sw.bb.i_crit_edge, %crypto_ahash_init.exit.sw.bb.i_crit_edge84
  call void @wait_for_completion(ptr noundef nonnull %wait) #7
  %30 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %wait, align 4
  %31 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %err, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call2.i, %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge ], [ %32, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool16.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool16.not, label %if.end18, label %crypto_wait_req.exit.err_free_crit_edge

crypto_wait_req.exit.err_free_crit_edge:          ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end18:                                         ; preds = %crypto_wait_req.exit
  %33 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %34, i32 12
  %35 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__crt_alg.i, align 4
  %37 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nbytes2.i, align 8
  call void @crypto_stats_get(ptr noundef %36) #7
  %39 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tfm.i.i, align 16
  %update.i = getelementptr i8, ptr %40, i32 -124
  %41 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %update.i, align 4
  %call3.i = call i32 %42(ptr noundef %call.i) #7
  call void @crypto_stats_ahash_update(i32 noundef %38, i32 noundef %call3.i, ptr noundef %36) #7
  %43 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call3.i, label %if.end18.crypto_wait_req.exit66_crit_edge [
    i32 -115, label %if.end18.sw.bb.i64_crit_edge
    i32 -16, label %if.end18.sw.bb.i64_crit_edge85
  ]

if.end18.sw.bb.i64_crit_edge85:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i64

if.end18.sw.bb.i64_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i64

if.end18.crypto_wait_req.exit66_crit_edge:        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %crypto_wait_req.exit66

sw.bb.i64:                                        ; preds = %if.end18.sw.bb.i64_crit_edge, %if.end18.sw.bb.i64_crit_edge85
  call void @wait_for_completion(ptr noundef nonnull %wait) #7
  %44 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %wait, align 4
  %45 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %err, align 4
  br label %crypto_wait_req.exit66

crypto_wait_req.exit66:                           ; preds = %sw.bb.i64, %if.end18.crypto_wait_req.exit66_crit_edge
  %err.addr.0.i65 = phi i32 [ %call3.i, %if.end18.crypto_wait_req.exit66_crit_edge ], [ %46, %sw.bb.i64 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i65)
  %tobool21.not = icmp eq i32 %err.addr.0.i65, 0
  br i1 %tobool21.not, label %if.end23, label %crypto_wait_req.exit66.err_free_crit_edge

crypto_wait_req.exit66.err_free_crit_edge:        ; preds = %crypto_wait_req.exit66
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end23:                                         ; preds = %crypto_wait_req.exit66
  %47 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tfm.i.i, align 16
  %export.i = getelementptr i8, ptr %48, i32 -108
  %49 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %export.i, align 4
  %call1.i = call i32 %50(ptr noundef %call.i, ptr noundef nonnull %call9.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool25.not = icmp eq i32 %call1.i, 0
  br i1 %tobool25.not, label %if.end23.out_crit_edge, label %if.end23.err_free_crit_edge

if.end23.err_free_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %err_free, %if.end23.out_crit_edge
  %retval.1.i.i78 = phi ptr [ %retval.1.i.i79, %err_free ], [ %call9.i.i, %if.end23.out_crit_edge ]
  %hashstate.0 = phi ptr [ %56, %err_free ], [ %call9.i, %if.end23.out_crit_edge ]
  br i1 %tobool.not.i, label %out.fsverity_free_hash_request.exit_crit_edge, label %if.then.i70

out.fsverity_free_hash_request.exit_crit_edge:    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsverity_free_hash_request.exit

if.then.i70:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %tfm.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call.i, i32 0, i32 3
  %51 = ptrtoint ptr %tfm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tfm.i.i.i, align 16
  %reqsize.i.i.i = getelementptr i8, ptr %52, i32 -96
  %53 = ptrtoint ptr %reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reqsize.i.i.i, align 32
  %add.i.i = add i32 %54, 128
  %55 = call ptr @memset(ptr %call.i, i32 0, i32 %add.i.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %call.i) #7, !srcloc !45
  call void @mempool_free(ptr noundef nonnull %call.i, ptr noundef %req_pool.i) #7
  br label %fsverity_free_hash_request.exit

fsverity_free_hash_request.exit:                  ; preds = %if.then.i70, %out.fsverity_free_hash_request.exit_crit_edge
  call void @kfree(ptr noundef %retval.1.i.i78) #7
  br label %cleanup

err_free:                                         ; preds = %if.end23.err_free_crit_edge, %crypto_wait_req.exit66.err_free_crit_edge, %crypto_wait_req.exit.err_free_crit_edge, %if.end13.err_free_crit_edge, %fsverity_alloc_hash_request.exit.err_free_crit_edge
  %retval.1.i.i79 = phi ptr [ %call9.i.i, %crypto_wait_req.exit.err_free_crit_edge ], [ %call9.i.i, %crypto_wait_req.exit66.err_free_crit_edge ], [ %call9.i.i, %if.end23.err_free_crit_edge ], [ null, %fsverity_alloc_hash_request.exit.err_free_crit_edge ], [ %call9.i.i, %if.end13.err_free_crit_edge ]
  %err3.0 = phi i32 [ %err.addr.0.i, %crypto_wait_req.exit.err_free_crit_edge ], [ %err.addr.0.i65, %crypto_wait_req.exit66.err_free_crit_edge ], [ %call1.i, %if.end23.err_free_crit_edge ], [ -12, %fsverity_alloc_hash_request.exit.err_free_crit_edge ], [ -126, %if.end13.err_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #7
  %56 = inttoptr i32 %err3.0 to ptr
  br label %out

cleanup:                                          ; preds = %fsverity_free_hash_request.exit, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %hashstate.0, %fsverity_free_hash_request.exit ], [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsverity_hash_page(ptr nocapture noundef readonly %params, ptr noundef %inode, ptr noundef %req, ptr noundef %page, ptr noundef %out) local_unnamed_addr #0 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  %wait = alloca %struct.crypto_wait, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #7
  %0 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %2 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait) #7
  %3 = getelementptr inbounds i8, ptr %wait, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 56)
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #7
  %err = getelementptr inbounds %struct.crypto_wait, ptr %wait, i32 0, i32 1
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %err, align 4
  %block_size = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 3
  %7 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %8)
  %cmp.not = icmp eq i32 %8, 4096
  br i1 %cmp.not, label %if.end25, label %do.end, !prof !43

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 241, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end25:                                         ; preds = %entry
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 1) #7
  %9 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sg, align 4
  %11 = ptrtoint ptr %page to i32
  %and2.i.i = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !43

do.body5.i.i:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #7, !srcloc !46
  unreachable

do.body11.i.i:                                    ; preds = %if.end25
  %and.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !43

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %10, 3
  %or.i.i = or i32 %and.i.i, %11
  %12 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i.i, ptr %sg, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %0, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4096, ptr %1, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %15 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %17 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1536, ptr %flags4.i, align 4
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 2
  %18 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sg, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 1
  %19 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %req, i32 0, i32 3
  %20 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %out, ptr %result3.i, align 32
  %hashstate = getelementptr inbounds %struct.merkle_tree_params, ptr %params, i32 0, i32 1
  %21 = ptrtoint ptr %hashstate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hashstate, align 4
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %sg_set_page.exit
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %23 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tfm.i.i, align 16
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 128
  %and.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_ahash_import.exit, label %if.then27.if.then30_crit_edge

if.then27.if.then30_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

crypto_ahash_import.exit:                         ; preds = %if.then27
  %import.i = getelementptr i8, ptr %24, i32 -104
  %27 = ptrtoint ptr %import.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %import.i, align 8
  %call2.i = call i32 %28(ptr noundef %req, ptr noundef nonnull %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool29.not = icmp eq i32 %call2.i, 0
  br i1 %tobool29.not, label %if.end31, label %crypto_ahash_import.exit.if.then30_crit_edge

crypto_ahash_import.exit.if.then30_crit_edge:     ; preds = %crypto_ahash_import.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.then30:                                        ; preds = %crypto_ahash_import.exit.if.then30_crit_edge, %if.then27.if.then30_crit_edge
  %retval.0.i57 = phi i32 [ %call2.i, %crypto_ahash_import.exit.if.then30_crit_edge ], [ -126, %if.then27.if.then30_crit_edge ]
  call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i57) #10
  br label %cleanup

if.end31:                                         ; preds = %crypto_ahash_import.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = call i32 @crypto_ahash_finup(ptr noundef %req) #7
  br label %if.end34

if.else:                                          ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 @crypto_ahash_digest(ptr noundef %req) #7
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end31
  %err3.0 = phi i32 [ %call32, %if.end31 ], [ %call33, %if.else ]
  %29 = zext i32 %err3.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %err3.0, label %if.end34.crypto_wait_req.exit_crit_edge [
    i32 -115, label %if.end34.sw.bb.i_crit_edge
    i32 -16, label %if.end34.sw.bb.i_crit_edge58
  ]

if.end34.sw.bb.i_crit_edge58:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end34.sw.bb.i_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end34.crypto_wait_req.exit_crit_edge:          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %if.end34.sw.bb.i_crit_edge, %if.end34.sw.bb.i_crit_edge58
  call void @wait_for_completion(ptr noundef nonnull %wait) #7
  %30 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %wait, align 4
  %31 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %err, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %if.end34.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %err3.0, %if.end34.crypto_wait_req.exit_crit_edge ], [ %32, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool36.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool36.not, label %crypto_wait_req.exit.cleanup_crit_edge, label %if.then37

crypto_wait_req.exit.cleanup_crit_edge:           ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then37:                                        ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @fsverity_msg(ptr noundef %inode, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, i32 noundef %err.addr.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %crypto_wait_req.exit.cleanup_crit_edge, %if.then30, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i57, %if.then30 ], [ %err.addr.0.i, %if.then37 ], [ 0, %crypto_wait_req.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsverity_hash_buffer(ptr noundef %alg, ptr noundef %data, i32 noundef %size, ptr noundef %out) local_unnamed_addr #0 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  %wait = alloca %struct.crypto_wait, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #7
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait) #7
  %1 = getelementptr inbounds i8, ptr %wait, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 56)
  %3 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #7
  %err = getelementptr inbounds %struct.crypto_wait, ptr %wait, i32 0, i32 1
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %err, align 4
  %req_pool.i = getelementptr inbounds %struct.fsverity_hash_alg, ptr %alg, i32 0, i32 4
  %call.i = call noalias ptr @mempool_alloc(ptr noundef %req_pool.i, i32 noundef 3264) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.fsverity_alloc_hash_request.exit_crit_edge, label %if.then.i

entry.fsverity_alloc_hash_request.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsverity_alloc_hash_request.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %alg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alg, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %6, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  br label %fsverity_alloc_hash_request.exit

fsverity_alloc_hash_request.exit:                 ; preds = %if.then.i, %entry.fsverity_alloc_hash_request.exit_crit_edge
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %data, i32 noundef %size) #7
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1536, ptr %flags4.i, align 4
  %src1.i = getelementptr inbounds %struct.ahash_request, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sg, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.ahash_request, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %size, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.ahash_request, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %out, ptr %result3.i, align 32
  %call4 = call i32 @crypto_ahash_digest(ptr noundef %call.i) #7
  %14 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call4, label %fsverity_alloc_hash_request.exit.crypto_wait_req.exit_crit_edge [
    i32 -115, label %fsverity_alloc_hash_request.exit.sw.bb.i_crit_edge
    i32 -16, label %fsverity_alloc_hash_request.exit.sw.bb.i_crit_edge14
  ]

fsverity_alloc_hash_request.exit.sw.bb.i_crit_edge14: ; preds = %fsverity_alloc_hash_request.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

fsverity_alloc_hash_request.exit.sw.bb.i_crit_edge: ; preds = %fsverity_alloc_hash_request.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

fsverity_alloc_hash_request.exit.crypto_wait_req.exit_crit_edge: ; preds = %fsverity_alloc_hash_request.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %fsverity_alloc_hash_request.exit.sw.bb.i_crit_edge, %fsverity_alloc_hash_request.exit.sw.bb.i_crit_edge14
  call void @wait_for_completion(ptr noundef nonnull %wait) #7
  %15 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %wait, align 4
  %16 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %fsverity_alloc_hash_request.exit.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call4, %fsverity_alloc_hash_request.exit.crypto_wait_req.exit_crit_edge ], [ %17, %sw.bb.i ]
  br i1 %tobool.not.i, label %crypto_wait_req.exit.fsverity_free_hash_request.exit_crit_edge, label %if.then.i13

crypto_wait_req.exit.fsverity_free_hash_request.exit_crit_edge: ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsverity_free_hash_request.exit

if.then.i13:                                      ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #9
  %tfm.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %tfm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm.i.i.i, align 16
  %reqsize.i.i.i = getelementptr i8, ptr %19, i32 -96
  %20 = ptrtoint ptr %reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reqsize.i.i.i, align 32
  %add.i.i = add i32 %21, 128
  %22 = call ptr @memset(ptr %call.i, i32 0, i32 %add.i.i)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %call.i) #7, !srcloc !45
  call void @mempool_free(ptr noundef nonnull %call.i, ptr noundef %req_pool.i) #7
  br label %fsverity_free_hash_request.exit

fsverity_free_hash_request.exit:                  ; preds = %if.then.i13, %crypto_wait_req.exit.fsverity_free_hash_request.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #7
  ret i32 %err.addr.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @fsverity_check_hash_algs() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.062 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %name = getelementptr [3 x %struct.fsverity_hash_alg], ptr @fsverity_hash_algs, i32 0, i32 %i.062, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %do.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %for.body
  %digest_size = getelementptr [3 x %struct.fsverity_hash_alg], ptr @fsverity_hash_algs, i32 0, i32 %i.062, i32 2
  %2 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %digest_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp1 = icmp ugt i32 %3, 64
  br i1 %cmp1, label %do.body5, label %do.body12, !prof !42

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/verity/hash_algs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 318, 0\0A.popsection", ""() #7, !srcloc !48
  unreachable

do.body12:                                        ; preds = %do.body
  %4 = tail call i32 @llvm.ctpop.i32(i32 %3) #7, !range !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %do.body32, label %do.body23, !prof !50

do.body23:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/verity/hash_algs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.body32:                                        ; preds = %do.body12
  %block_size = getelementptr [3 x %struct.fsverity_hash_alg], ptr @fsverity_hash_algs, i32 0, i32 %i.062, i32 3
  %6 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %block_size, align 4
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #7, !range !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %do.body32.cleanup_crit_edge, label %do.body43, !prof !50

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body43:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/verity/hash_algs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 326, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

cleanup:                                          ; preds = %do.body32.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !19, !20, !21, !23, !25, !27, !28, !29, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/verity/hash_algs.c", i32 16, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/verity/hash_algs.c", i32 21, i32 11}
!4 = !{ptr @fsverity_hash_algs, !5, !"fsverity_hash_algs", i1 false, i1 false}
!5 = !{!"../fs/verity/hash_algs.c", i32 14, i32 26}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/verity/hash_algs.c", i32 50, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/verity/hash_algs.c", i32 71, i32 4}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/verity/hash_algs.c", i32 77, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/verity/hash_algs.c", i32 85, i32 6}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/verity/hash_algs.c", i32 96, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fsverity_get_hash_alg._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @fsverity_get_hash_alg._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/verity/hash_algs.c", i32 254, i32 4}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/verity/hash_algs.c", i32 265, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/verity/hash_algs.c", i32 27, i32 8}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @fsverity_hash_alg_init_mutex, !26, !"fsverity_hash_alg_init_mutex", i1 false, i1 false}
!29 = !{ptr @init_completion.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../include/linux/completion.h", i32 87, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2153526922}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2153532211}
!45 = !{i64 2149256613}
!46 = !{i64 2153507189, i64 2153507681, i64 2153507226, i64 2153507282, i64 2153507316, i64 2153507340, i64 2153507381, i64 2153507402, i64 2153507430, i64 2153507464}
!47 = !{i64 2153508799, i64 2153509291, i64 2153508836, i64 2153508892, i64 2153508926, i64 2153508950, i64 2153508991, i64 2153509012, i64 2153509040, i64 2153509074}
!48 = !{i64 2153537739, i64 2153538225, i64 2153537776, i64 2153537832, i64 2153537866, i64 2153537890, i64 2153537931, i64 2153537952, i64 2153537980, i64 2153538014}
!49 = !{i32 0, i32 33}
!50 = !{!"branch_weights", i32 -102759400, i32 4193255}
!51 = !{i64 2153539365, i64 2153539851, i64 2153539402, i64 2153539458, i64 2153539492, i64 2153539516, i64 2153539557, i64 2153539578, i64 2153539606, i64 2153539640}
!52 = !{i64 2153540989, i64 2153541475, i64 2153541026, i64 2153541082, i64 2153541116, i64 2153541140, i64 2153541181, i64 2153541202, i64 2153541230, i64 2153541264}
