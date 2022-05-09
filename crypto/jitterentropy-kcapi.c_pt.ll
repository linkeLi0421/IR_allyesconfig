; ModuleID = '/llk/IR_all_yes/crypto/jitterentropy-kcapi.c_pt.bc'
source_filename = "../crypto/jitterentropy-kcapi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rng_alg = type { ptr, ptr, ptr, i32, [112 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.44, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.44 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@jent_alg = internal global %struct.rng_alg { ptr @jent_kcapi_random, ptr @jent_kcapi_reset, ptr null, i32 0, [112 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 52, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"jitterentropy_rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"jitterentropy_rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr @jent_kcapi_init, ptr @jent_kcapi_cleanup, ptr null, ptr null, %union.anon.44 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_jitterentropy_rng__173_211_jent_mod_init6 = internal global ptr @jent_mod_init, section ".initcall6.init", align 4
@__exitcall_jent_mod_exit = internal global ptr @jent_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [48 x i8] c"jitterentropy_rng.file=crypto/jitterentropy_rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [39 x i8] c"jitterentropy_rng.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [63 x i8] c"jitterentropy_rng.author=Stephan Mueller <smueller@chronox.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [92 x i8] c"jitterentropy_rng.description=Non-physical True Random Number Generator based on CPU Jitter\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace178 = internal constant [42 x i8] c"jitterentropy_rng.alias=jitterentropy_rng\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto179 = internal constant [49 x i8] c"jitterentropy_rng.alias=crypto-jitterentropy_rng\00", section ".modinfo", align 1
@jent_kcapi_random._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.jent_kcapi_random = private unnamed_addr constant [18 x i8] c"jent_kcapi_random\00", align 1
@jent_kcapi_random._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.jent_kcapi_random, ptr @.str.3, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014Reset Jitter RNG due to health test failure: %s failure\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"crypto/jitterentropy-kcapi.c\00", [35 x i8] zeroinitializer }, align 32
@jent_kcapi_random._entry_ptr = internal global ptr @jent_kcapi_random._entry, section ".printk_index", align 4
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Repetition Count Test\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Adaptive Proportion Test\00", [39 x i8] zeroinitializer }, align 32
@jent_kcapi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rng->jent_lock\00", [16 x i8] zeroinitializer }, align 32
@jent_mod_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\016jitterentropy: Initialization failed with host not compliant with requirements: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jent_mod_init\00", [18 x i8] zeroinitializer }, align 32
@jent_mod_init._entry_ptr = internal global ptr @jent_mod_init._entry, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 64, i32 8 }
@___asan_gen_.12 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 151, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 117, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [32 x i8] c"../crypto/jitterentropy-kcapi.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 200, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alias_crypto179, ptr @__UNIQUE_ID_alias_userspace178, ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_jent_mod_exit, ptr @__initcall__kmod_jitterentropy_rng__173_211_jent_mod_init6, ptr @jent_kcapi_random._entry, ptr @jent_kcapi_random._entry_ptr, ptr @jent_mod_exit, ptr @jent_mod_init._entry, ptr @jent_mod_init._entry_ptr, ptr @.str, ptr @jent_kcapi_random._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @jent_kcapi_init.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jent_kcapi_random._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jent_kcapi_random._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jent_kcapi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jent_mod_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @jent_zalloc(i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef 3520) #13
  ret ptr %call9.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jent_zfree(ptr noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_sensitive(ptr noundef %ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jent_panic(ptr noundef %s) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef %s) #14
  unreachable
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @jent_memcpy(ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src, i32 noundef %n) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %dest, ptr %src, i32 %n)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jent_get_nstime(ptr nocapture noundef writeonly %out) local_unnamed_addr #0 align 64 {
entry:
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #10
  %0 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %c, align 4, !annotation !45
  %call = call i32 @read_current_timer(ptr noundef nonnull %c) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.end, label %cond.end.thread

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #10
  br label %if.then

cond.end:                                         ; preds = %entry
  %1 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %c, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #10
  %conv = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %cond.end.if.then_crit_edge, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %cond.end.thread
  %call.i = call i64 @ktime_get() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %tmp.0 = phi i64 [ %call.i, %if.then ], [ %conv, %cond.end.if.end_crit_edge ]
  %3 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %tmp.0, ptr %out, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jent_mod_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @crypto_unregister_rng(ptr noundef nonnull @jent_alg) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_rng(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jent_mod_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @jent_entropy_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @crypto_register_rng(ptr noundef nonnull @jent_alg) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jent_kcapi_random(ptr noundef %tfm, ptr nocapture noundef readnone %src, i32 noundef %slen, ptr noundef %rdata, i32 noundef %dlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %__crt_ctx.i.i) #10
  %reset_cnt = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %0 = ptrtoint ptr %reset_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reset_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %1)
  %cmp = icmp ugt i32 %1, 1024
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %entropy_collector = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %2 = ptrtoint ptr %entropy_collector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entropy_collector, align 4
  %call1 = tail call i32 @jent_read_entropy(ptr noundef %3, ptr noundef %rdata, i32 noundef %dlen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp2 = icmp slt i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @jent_kcapi_random._rs, ptr noundef nonnull @__func__.jent_kcapi_random) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then3.if.end8_crit_edge, label %do.end

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1)
  %cmp6 = icmp eq i32 %call1, -2
  %cond = select i1 %cmp6, ptr @.str.4, ptr @.str.5
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %cond) #15
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then3.if.end8_crit_edge
  %4 = ptrtoint ptr %reset_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reset_cnt, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %reset_cnt, align 4
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %reset_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %reset_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp11 = icmp eq i32 %call1, -1
  %spec.store.select = select i1 %cmp11, i32 -22, i32 %call1
  br label %out

out:                                              ; preds = %if.else, %if.end8, %entry.out_crit_edge
  %ret.0 = phi i32 [ -11, %if.end8 ], [ %spec.store.select, %if.else ], [ -14, %entry.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %__crt_ctx.i.i) #10
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @jent_kcapi_reset(ptr nocapture noundef readnone %tfm, ptr nocapture noundef readnone %seed, i32 noundef %slen) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jent_kcapi_init(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call1 = tail call ptr @jent_entropy_collector_alloc(i32 noundef 1, i32 noundef 0) #10
  %entropy_collector = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %0 = ptrtoint ptr %entropy_collector to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %entropy_collector, align 4
  %tobool.not = icmp eq ptr %call1, null
  %spec.select = select i1 %tobool.not, i32 -12, i32 0
  tail call void @__raw_spin_lock_init(ptr noundef %__crt_ctx.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @jent_kcapi_init.__key, i16 noundef signext 3) #10
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jent_kcapi_cleanup(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %__crt_ctx.i) #10
  %entropy_collector = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %0 = ptrtoint ptr %entropy_collector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entropy_collector, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @jent_entropy_collector_free(ptr noundef nonnull %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %entropy_collector to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %entropy_collector, align 4
  tail call void @_raw_spin_unlock(ptr noundef %__crt_ctx.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jent_read_entropy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jent_entropy_collector_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jent_entropy_collector_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jent_entropy_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_rng(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !33, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../crypto/jitterentropy-kcapi.c", i32 64, i32 8}
!2 = !{ptr @__initcall__kmod_jitterentropy_rng__173_211_jent_mod_init6, !3, !"__initcall__kmod_jitterentropy_rng__173_211_jent_mod_init6", i1 false, i1 false}
!3 = !{!"../crypto/jitterentropy-kcapi.c", i32 211, i32 1}
!4 = !{ptr @__exitcall_jent_mod_exit, !5, !"__exitcall_jent_mod_exit", i1 false, i1 false}
!5 = !{!"../crypto/jitterentropy-kcapi.c", i32 212, i32 1}
!6 = !{ptr @__UNIQUE_ID_file174, !7, !"__UNIQUE_ID_file174", i1 false, i1 false}
!7 = !{!"../crypto/jitterentropy-kcapi.c", i32 214, i32 1}
!8 = !{ptr @__UNIQUE_ID_license175, !7, !"__UNIQUE_ID_license175", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author176, !10, !"__UNIQUE_ID_author176", i1 false, i1 false}
!10 = !{!"../crypto/jitterentropy-kcapi.c", i32 215, i32 1}
!11 = !{ptr @__UNIQUE_ID_description177, !12, !"__UNIQUE_ID_description177", i1 false, i1 false}
!12 = !{!"../crypto/jitterentropy-kcapi.c", i32 216, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_userspace178, !14, !"__UNIQUE_ID_alias_userspace178", i1 false, i1 false}
!14 = !{!"../crypto/jitterentropy-kcapi.c", i32 217, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias_crypto179, !14, !"__UNIQUE_ID_alias_crypto179", i1 false, i1 false}
!16 = !{ptr @jent_alg, !17, !"jent_alg", i1 false, i1 false}
!17 = !{!"../crypto/jitterentropy-kcapi.c", i32 178, i32 23}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../crypto/jitterentropy-kcapi.c", i32 151, i32 3}
!20 = !{ptr @jent_kcapi_random._rs, !19, !"_rs", i1 false, i1 false}
!21 = !{ptr @__func__.jent_kcapi_random, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @jent_kcapi_random._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @jent_kcapi_random._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @jent_kcapi_init.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../crypto/jitterentropy-kcapi.c", i32 117, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../crypto/jitterentropy-kcapi.c", i32 200, i32 3}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @jent_mod_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @jent_mod_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
