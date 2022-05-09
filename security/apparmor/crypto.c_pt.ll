; ModuleID = '/llk/IR_all_yes/security/apparmor/crypto.c_pt.bc'
source_filename = "../security/apparmor/crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.aa_profile = type { %struct.aa_policy, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, %struct.aa_policydb, %struct.aa_file_rules, %struct.aa_caps, i32, ptr, %struct.aa_rlimit, i32, ptr, ptr, ptr, ptr, [9 x ptr], ptr, %struct.aa_label }
%struct.aa_policy = type { ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.aa_policydb = type { ptr, [17 x i32] }
%struct.aa_file_rules = type { i32, ptr, %struct.aa_domain }
%struct.aa_domain = type { i32, ptr }
%struct.aa_caps = type { %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.aa_rlimit = type { i32, [16 x %struct.rlimit] }
%struct.rlimit = type { i32, i32 }
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@apparmor_hash_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@apparmor_tfm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@aa_g_hash_policy = external dso_local local_unnamed_addr global i8, align 1
@__initcall__kmod_apparmor__555_123_init_profile_hash7 = internal global ptr @init_profile_hash, section ".initcall7.init", align 4
@apparmor_initialized = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@init_profile_hash._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.init_profile_hash = private unnamed_addr constant [18 x i8] c"init_profile_hash\00", align 1
@init_profile_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.init_profile_hash, ptr @.str.3, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013AppArmor: failed to setup profile sha1 hashing: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"security/apparmor/crypto.c\00", [37 x i8] zeroinitializer }, align 32
@init_profile_hash._entry_ptr = internal global ptr @init_profile_hash._entry, section ".printk_index", align 4
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AppArmor sha1 policy hashing enabled\00", [59 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"apparmor_hash_size\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 19, i32 21 }
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"apparmor_tfm\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 21, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 109, i32 27 }
@___asan_gen_.14 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 112, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [30 x i8] c"../security/apparmor/crypto.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 118, i32 18 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__initcall__kmod_apparmor__555_123_init_profile_hash7, ptr @init_profile_hash._entry, ptr @init_profile_hash._entry_ptr, ptr @apparmor_hash_size, ptr @apparmor_tfm, ptr @.str, ptr @init_profile_hash._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_hash_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apparmor_tfm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_profile_hash._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_profile_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @aa_hash_size() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @apparmor_hash_size, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aa_calc_hash(ptr noundef %data, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  %__desc_desc = alloca [376 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #8
  %0 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  %1 = load ptr, ptr @apparmor_tfm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %2 = load i32, ptr @apparmor_hash_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #11
  %tobool1.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool1.not, label %if.end8.i.i.fail_crit_edge, label %if.end3

if.end8.i.i.fail_crit_edge:                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end3:                                          ; preds = %if.end8.i.i
  %3 = load ptr, ptr @apparmor_tfm, align 4
  %4 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %__desc_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end3.fail_crit_edge

if.end3.fail_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

crypto_shash_init.exit:                           ; preds = %if.end3
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 -256
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %10(ptr noundef nonnull %__desc_desc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool5.not = icmp eq i32 %call3.i, 0
  br i1 %tobool5.not, label %if.end7, label %crypto_shash_init.exit.fail_crit_edge

crypto_shash_init.exit.fail_crit_edge:            ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end7:                                          ; preds = %crypto_shash_init.exit
  %call8 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %data, i32 noundef %len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.fail_crit_edge

if.end7.fail_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end11:                                         ; preds = %if.end7
  %call12 = call i32 @crypto_shash_final(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %call9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end11.fail_crit_edge

if.end11.fail_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fail:                                             ; preds = %if.end11.fail_crit_edge, %if.end7.fail_crit_edge, %crypto_shash_init.exit.fail_crit_edge, %if.end3.fail_crit_edge, %if.end8.i.i.fail_crit_edge
  %retval.1.i.i32 = phi ptr [ %call9.i.i, %crypto_shash_init.exit.fail_crit_edge ], [ %call9.i.i, %if.end7.fail_crit_edge ], [ %call9.i.i, %if.end11.fail_crit_edge ], [ null, %if.end8.i.i.fail_crit_edge ], [ %call9.i.i, %if.end3.fail_crit_edge ]
  %error.0 = phi i32 [ %call3.i, %crypto_shash_init.exit.fail_crit_edge ], [ %call8, %if.end7.fail_crit_edge ], [ %call12, %if.end11.fail_crit_edge ], [ -12, %if.end8.i.i.fail_crit_edge ], [ -126, %if.end3.fail_crit_edge ]
  call void @kfree(ptr noundef %retval.1.i.i32) #8
  %11 = inttoptr i32 %error.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %fail ], [ null, %entry.cleanup_crit_edge ], [ %call9.i.i, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_calc_profile_hash(ptr nocapture noundef %profile, i32 noundef %version, ptr noundef %start, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  %__desc_desc = alloca [376 x i8], align 8
  %le32_version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %__desc_desc) #8
  %0 = call ptr @memset(ptr %__desc_desc, i32 255, i32 376)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le32_version) #8
  %1 = tail call i32 @llvm.bswap.i32(i32 %version)
  %2 = ptrtoint ptr %le32_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %le32_version, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @aa_g_hash_policy to i32))
  %3 = load i8, ptr @aa_g_hash_policy, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @apparmor_tfm, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end8.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  %5 = load i32, ptr @apparmor_hash_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #11
  %hash = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 21
  %6 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %hash, align 4
  %tobool5.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not, label %if.end8.i.i.fail_crit_edge, label %if.end7

if.end8.i.i.fail_crit_edge:                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end7:                                          ; preds = %if.end8.i.i
  %7 = load ptr, ptr @apparmor_tfm, align 4
  %8 = ptrtoint ptr %__desc_desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %__desc_desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end7.fail_crit_edge

if.end7.fail_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

crypto_shash_init.exit:                           ; preds = %if.end7
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %7, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 -256
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %14(ptr noundef nonnull %__desc_desc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool9.not = icmp eq i32 %call3.i, 0
  br i1 %tobool9.not, label %if.end11, label %crypto_shash_init.exit.fail_crit_edge

crypto_shash_init.exit.fail_crit_edge:            ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end11:                                         ; preds = %crypto_shash_init.exit
  %call12 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef nonnull %le32_version, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.fail_crit_edge

if.end11.fail_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end15:                                         ; preds = %if.end11
  %call16 = call i32 @crypto_shash_update(ptr noundef nonnull %__desc_desc, ptr noundef %start, i32 noundef %len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.fail_crit_edge

if.end15.fail_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end19:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hash, align 4
  %call21 = call i32 @crypto_shash_final(ptr noundef nonnull %__desc_desc, ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %if.end19.fail_crit_edge

if.end19.fail_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fail:                                             ; preds = %if.end19.fail_crit_edge, %if.end15.fail_crit_edge, %if.end11.fail_crit_edge, %crypto_shash_init.exit.fail_crit_edge, %if.end7.fail_crit_edge, %if.end8.i.i.fail_crit_edge
  %error.0 = phi i32 [ %call3.i, %crypto_shash_init.exit.fail_crit_edge ], [ %call12, %if.end11.fail_crit_edge ], [ %call16, %if.end15.fail_crit_edge ], [ %call21, %if.end19.fail_crit_edge ], [ -12, %if.end8.i.i.fail_crit_edge ], [ -126, %if.end7.fail_crit_edge ]
  %17 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hash, align 4
  call void @kfree(ptr noundef %18) #8
  %19 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %hash, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %fail ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le32_version) #8
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %__desc_desc) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_profile_hash() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_initialized to i32))
  %0 = load i32, ptr @apparmor_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.end
  %1 = ptrtoint ptr %call to i32
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @init_profile_hash._rs, ptr noundef nonnull @__func__.init_profile_hash) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %1) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call, ptr @apparmor_tfm, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digestsize.i, align 128
  store i32 %5, ptr @apparmor_hash_size, align 4
  tail call void @aa_info_message(ptr noundef nonnull @.str.4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ %1, %do.end ], [ %1, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_info_message(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_apparmor__555_123_init_profile_hash7, !1, !"__initcall__kmod_apparmor__555_123_init_profile_hash7", i1 false, i1 false}
!1 = !{!"../security/apparmor/crypto.c", i32 123, i32 1}
!2 = !{ptr @apparmor_hash_size, !3, !"apparmor_hash_size", i1 false, i1 false}
!3 = !{!"../security/apparmor/crypto.c", i32 19, i32 21}
!4 = !{ptr @apparmor_tfm, !5, !"apparmor_tfm", i1 false, i1 false}
!5 = !{!"../security/apparmor/crypto.c", i32 21, i32 29}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/apparmor/crypto.c", i32 109, i32 27}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/apparmor/crypto.c", i32 112, i32 3}
!10 = !{ptr @init_profile_hash._rs, !9, !"_rs", i1 false, i1 false}
!11 = !{ptr @__func__.init_profile_hash, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @init_profile_hash._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @init_profile_hash._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/apparmor/crypto.c", i32 118, i32 18}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i8 0, i8 2}
