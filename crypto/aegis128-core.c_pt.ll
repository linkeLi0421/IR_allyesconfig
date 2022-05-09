; ModuleID = '/llk/IR_all_yes/crypto/aegis128-core.c_pt.bc'
source_filename = "../crypto/aegis128-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%union.aegis_block = type { [2 x i64] }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skcipher_walk = type { %union.anon.75, %union.anon.75, %struct.scatter_walk, i32, %struct.scatter_walk, i32, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.aegis_state = type { [5 x %union.aegis_block] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.77 = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@crypto_aegis128_alg_simd = internal global %struct.aead_alg { ptr @crypto_aegis128_setkey, ptr @crypto_aegis128_setauthsize, ptr @crypto_aegis128_encrypt_simd, ptr @crypto_aegis128_decrypt_simd, ptr null, ptr null, i32 16, i32 16, i32 16, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 16, i32 0, i32 200, %struct.refcount_struct zeroinitializer, [128 x i8] c"aegis128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"aegis128-simd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@crypto_aegis128_alg_generic = internal global %struct.aead_alg { ptr @crypto_aegis128_setkey, ptr @crypto_aegis128_setauthsize, ptr @crypto_aegis128_encrypt_generic, ptr @crypto_aegis128_decrypt_generic, ptr null, ptr null, i32 16, i32 16, i32 16, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 16, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"aegis128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"aegis128-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_aegis128__239_573_crypto_aegis128_module_init4 = internal global ptr @crypto_aegis128_module_init, section ".initcall4.init", align 4
@__exitcall_crypto_aegis128_module_exit = internal global ptr @crypto_aegis128_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [30 x i8] c"aegis128.file=crypto/aegis128\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [21 x i8] c"aegis128.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [54 x i8] c"aegis128.author=Ondrej Mosnacek <omosnacek@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [46 x i8] c"aegis128.description=AEGIS-128 AEAD algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace244 = internal constant [24 x i8] c"aegis128.alias=aegis128\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto245 = internal constant [31 x i8] c"aegis128.alias=crypto-aegis128\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace246 = internal constant [32 x i8] c"aegis128.alias=aegis128-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto247 = internal constant [39 x i8] c"aegis128.alias=crypto-aegis128-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace248 = internal constant [29 x i8] c"aegis128.alias=aegis128-simd\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto249 = internal constant [36 x i8] c"aegis128.alias=crypto-aegis128-simd\00", section ".modinfo", align 1
@have_simd = internal global { { %struct.atomic_t, { ptr } } } zeroinitializer, section ".data..ro_after_init", align 4
@crypto_aegis_const = internal constant { [2 x %union.aegis_block], [32 x i8] } { [2 x %union.aegis_block] [%union.aegis_block { [2 x i64] [i64 282583128934413, i64 1522840481827486050] }, %union.aegis_block { [2 x i64] [i64 -2648934250631254031, i64 2310682245296629981] }], [32 x i8] zeroinitializer }, align 32
@crypto_ft_tab = external dso_local local_unnamed_addr constant [4 x [256 x i32]], align 128
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@crypto_aegis128_decrypt_generic.zeros = internal constant { [16 x i8], [16 x i8] } zeroinitializer, align 32
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"crypto_aegis_const\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 41, i32 32 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"zeros\00", align 1
@___asan_gen_.6 = private constant [26 x i8] c"../crypto/aegis128-core.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 412, i32 18 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias_crypto245, ptr @__UNIQUE_ID_alias_crypto247, ptr @__UNIQUE_ID_alias_crypto249, ptr @__UNIQUE_ID_alias_userspace244, ptr @__UNIQUE_ID_alias_userspace246, ptr @__UNIQUE_ID_alias_userspace248, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_crypto_aegis128_module_exit, ptr @__initcall__kmod_aegis128__239_573_crypto_aegis128_module_init4, ptr @crypto_aegis128_module_exit, ptr @crypto_aegis_const, ptr @crypto_aegis128_decrypt_generic.zeros], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_aegis_const to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_aegis128_decrypt_generic.zeros to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_aegis128_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call zeroext i1 @crypto_aegis128_have_simd() #9
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_aead(ptr noundef nonnull @crypto_aegis128_alg_simd) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @crypto_unregister_aead(ptr noundef nonnull @crypto_aegis128_alg_generic) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @crypto_aegis128_have_simd() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_aegis128_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_aead(ptr noundef nonnull @crypto_aegis128_alg_generic) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @crypto_aegis128_have_simd() #9
  br i1 %call1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @crypto_register_aead(ptr noundef nonnull @crypto_aegis128_alg_simd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_aead(ptr noundef nonnull @crypto_aegis128_alg_generic) #9
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @static_key_enable(ptr noundef nonnull @have_simd) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypto_aegis128_setkey(ptr nocapture noundef writeonly %aead, ptr nocapture noundef readonly %key, i32 noundef %keylen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1
  %0 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypto_aegis128_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %authsize, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %0)
  %1 = icmp ult i32 %0, -9
  %retval.0 = select i1 %1, i32 -22, i32 0
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_aegis128_encrypt_simd(ptr noundef %req) #4 align 64 {
entry:
  %tag = alloca %union.aegis_block, align 8
  %walk = alloca %struct.skcipher_walk, align 4
  %state = alloca %struct.aegis_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tag) #9
  %2 = call ptr @memset(ptr %tag, i32 0, i32 16)
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 128
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %cryptlen3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %cryptlen3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cryptlen3, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #9
  %7 = call ptr @memset(ptr %walk, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %state) #9
  %8 = call ptr @memset(ptr %state, i32 255, i32 80)
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @have_simd, i32 1), ptr blockaddress(@crypto_aegis128_encrypt_simd, %if.then)) #9
          to label %if.then.i28 [label %if.then], !srcloc !40

if.then.i28:                                      ; preds = %entry
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %12, 15728640
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i6.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i6.i.i to ptr
  %preempt_count.i7.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i7.i.i, align 4
  %and2.i.i = and i32 %16, 983040
  %or.i.i = or i32 %and2.i.i, %and.i.i
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i8.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i8.i.i to ptr
  %preempt_count.i9.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i9.i.i, align 4
  %and4.i.i = and i32 %20, 65280
  %or5.i.i = or i32 %or.i.i, %and4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %tobool.not.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end, label %if.then.i28.if.then_crit_edge

if.then.i28.if.then_crit_edge:                    ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %if.then.i28.if.then_crit_edge, %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @crypto_aegis128_encrypt_generic(ptr noundef %req)
  br label %cleanup

if.end:                                           ; preds = %if.then.i28
  %call6 = call i32 @skcipher_walk_aead_encrypt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #9
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %21 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iv, align 32
  call void @crypto_aegis128_init_simd(ptr noundef nonnull %state, ptr noundef %__crt_ctx.i.i, ptr noundef %22) #9
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %23 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %src, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %25 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %assoclen, align 8
  call fastcc void @crypto_aegis128_process_ad(ptr noundef nonnull %state, ptr noundef %24, i32 noundef %26, i1 noundef zeroext true)
  %nbytes.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %27 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nbytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not1.i = icmp eq i32 %28, 0
  br i1 %tobool.not1.i, label %if.end.crypto_aegis128_process_crypt.exit_crit_edge, label %while.body.lr.ph.i

if.end.crypto_aegis128_process_crypt.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_process_crypt.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %total.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %stride.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 14
  %addr.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr3.i = getelementptr inbounds %struct.anon.77, ptr %walk, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %29 = phi i32 [ %28, %while.body.lr.ph.i ], [ %41, %if.end.i.while.body.i_crit_edge ]
  %30 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %total.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.i = icmp ult i32 %29, %31
  br i1 %cmp.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stride.i, align 4
  %neg.i = sub i32 0, %33
  %and.i = and i32 %29, %neg.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %nbytes1.0.i = phi i32 [ %and.i, %if.then.i ], [ %29, %while.body.i.if.end.i_crit_edge ]
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr.i, align 4
  %36 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr3.i, align 4
  call void @crypto_aegis128_encrypt_chunk_simd(ptr noundef nonnull %state, ptr noundef %35, ptr noundef %37, i32 noundef %nbytes1.0.i) #9
  %38 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nbytes.i, align 4
  %sub5.i = sub i32 %39, %nbytes1.0.i
  %call.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub5.i) #9
  %40 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nbytes.i, align 4
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %if.end.i.crypto_aegis128_process_crypt.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.crypto_aegis128_process_crypt.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_process_crypt.exit

crypto_aegis128_process_crypt.exit:               ; preds = %if.end.i.crypto_aegis128_process_crypt.exit_crit_edge, %if.end.crypto_aegis128_process_crypt.exit_crit_edge
  %42 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %assoclen, align 8
  %call9 = call i32 @crypto_aegis128_final_simd(ptr noundef nonnull %state, ptr noundef nonnull %tag, i32 noundef %43, i32 noundef %6, i32 noundef 0) #9
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %44 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dst, align 8
  %46 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %assoclen, align 8
  %add = add i32 %47, %6
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tag, ptr noundef %45, i32 noundef %add, i32 noundef %4, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %crypto_aegis128_process_crypt.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %state) #9
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tag) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_aegis128_decrypt_simd(ptr noundef %req) #4 align 64 {
entry:
  %tag = alloca %union.aegis_block, align 8
  %walk = alloca %struct.skcipher_walk, align 4
  %state = alloca %struct.aegis_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tag) #9
  %2 = call ptr @memset(ptr %tag, i32 255, i32 16)
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 128
  %cryptlen2 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %cryptlen2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cryptlen2, align 4
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #9
  %7 = call ptr @memset(ptr %walk, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %state) #9
  %8 = call ptr @memset(ptr %state, i32 255, i32 80)
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @have_simd, i32 1), ptr blockaddress(@crypto_aegis128_decrypt_simd, %if.then)) #9
          to label %if.then.i56 [label %if.then], !srcloc !40

if.then.i56:                                      ; preds = %entry
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %12, 15728640
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i6.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i6.i.i to ptr
  %preempt_count.i7.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i7.i.i, align 4
  %and2.i.i = and i32 %16, 983040
  %or.i.i = or i32 %and2.i.i, %and.i.i
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i8.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i8.i.i to ptr
  %preempt_count.i9.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i9.i.i, align 4
  %and4.i.i = and i32 %20, 65280
  %or5.i.i = or i32 %or.i.i, %and4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %tobool.not.i.i = icmp eq i32 %or5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end, label %if.then.i56.if.then_crit_edge

if.then.i56.if.then_crit_edge:                    ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %if.then.i56.if.then_crit_edge, %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @crypto_aegis128_decrypt_generic(ptr noundef %req)
  br label %cleanup

if.end:                                           ; preds = %if.then.i56
  %sub = sub i32 %6, %4
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %21 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %23 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %assoclen, align 8
  %add = add i32 %24, %sub
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tag, ptr noundef %22, i32 noundef %add, i32 noundef %4, i32 noundef 0) #9
  %call6 = call i32 @skcipher_walk_aead_decrypt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #9
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %25 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iv, align 32
  call void @crypto_aegis128_init_simd(ptr noundef nonnull %state, ptr noundef %__crt_ctx.i.i, ptr noundef %26) #9
  %27 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src, align 4
  %29 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %assoclen, align 8
  call fastcc void @crypto_aegis128_process_ad(ptr noundef nonnull %state, ptr noundef %28, i32 noundef %30, i1 noundef zeroext true)
  %nbytes.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %31 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nbytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not1.i = icmp eq i32 %32, 0
  br i1 %tobool.not1.i, label %if.end.crypto_aegis128_process_crypt.exit_crit_edge, label %while.body.lr.ph.i

if.end.crypto_aegis128_process_crypt.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_process_crypt.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %total.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %stride.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 14
  %addr.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr3.i = getelementptr inbounds %struct.anon.77, ptr %walk, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %33 = phi i32 [ %32, %while.body.lr.ph.i ], [ %45, %if.end.i.while.body.i_crit_edge ]
  %34 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %total.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.i = icmp ult i32 %33, %35
  br i1 %cmp.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stride.i, align 4
  %neg.i = sub i32 0, %37
  %and.i = and i32 %33, %neg.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %nbytes1.0.i = phi i32 [ %and.i, %if.then.i ], [ %33, %while.body.i.if.end.i_crit_edge ]
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr.i, align 4
  %40 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %addr3.i, align 4
  call void @crypto_aegis128_decrypt_chunk_simd(ptr noundef nonnull %state, ptr noundef %39, ptr noundef %41, i32 noundef %nbytes1.0.i) #9
  %42 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nbytes.i, align 4
  %sub5.i = sub i32 %43, %nbytes1.0.i
  %call.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub5.i) #9
  %44 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nbytes.i, align 4
  %tobool.not.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i, label %if.end.i.crypto_aegis128_process_crypt.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.crypto_aegis128_process_crypt.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_process_crypt.exit

crypto_aegis128_process_crypt.exit:               ; preds = %if.end.i.crypto_aegis128_process_crypt.exit_crit_edge, %if.end.crypto_aegis128_process_crypt.exit_crit_edge
  %46 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %assoclen, align 8
  %call11 = call i32 @crypto_aegis128_final_simd(ptr noundef nonnull %state, ptr noundef nonnull %tag, i32 noundef %47, i32 noundef %sub, i32 noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %crypto_aegis128_process_crypt.exit.cleanup_crit_edge, label %if.then14, !prof !41

crypto_aegis128_process_crypt.exit.cleanup_crit_edge: ; preds = %crypto_aegis128_process_crypt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %crypto_aegis128_process_crypt.exit
  %call15 = call i32 @skcipher_walk_aead_decrypt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #9
  %48 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nbytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not1.i39 = icmp eq i32 %49, 0
  br i1 %tobool.not1.i39, label %if.then14.cleanup_crit_edge, label %while.body.lr.ph.i44

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph.i44:                             ; preds = %if.then14
  %total.i40 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %stride.i41 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 14
  %addr.i42 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  br label %while.body.i46

while.body.i46:                                   ; preds = %if.end.i54.while.body.i46_crit_edge, %while.body.lr.ph.i44
  %50 = phi i32 [ %49, %while.body.lr.ph.i44 ], [ %61, %if.end.i54.while.body.i46_crit_edge ]
  %51 = ptrtoint ptr %total.i40 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %total.i40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp.i45 = icmp ult i32 %50, %52
  br i1 %cmp.i45, label %if.then.i49, label %while.body.i46.if.end.i54_crit_edge

while.body.i46.if.end.i54_crit_edge:              ; preds = %while.body.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i54

if.then.i49:                                      ; preds = %while.body.i46
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %stride.i41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %stride.i41, align 4
  %neg.i47 = sub i32 0, %54
  %and.i48 = and i32 %50, %neg.i47
  br label %if.end.i54

if.end.i54:                                       ; preds = %if.then.i49, %while.body.i46.if.end.i54_crit_edge
  %nbytes1.0.i50 = phi i32 [ %and.i48, %if.then.i49 ], [ %50, %while.body.i46.if.end.i54_crit_edge ]
  %55 = ptrtoint ptr %addr.i42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %addr.i42, align 4
  %57 = call ptr @memset(ptr %56, i32 0, i32 %nbytes1.0.i50)
  call void asm sideeffect "", "r,~{memory}"(ptr %56) #9, !srcloc !42
  %58 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nbytes.i, align 4
  %sub5.i51 = sub i32 %59, %nbytes1.0.i50
  %call.i52 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub5.i51) #9
  %60 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nbytes.i, align 4
  %tobool.not.i53 = icmp eq i32 %61, 0
  br i1 %tobool.not.i53, label %if.end.i54.cleanup_crit_edge, label %if.end.i54.while.body.i46_crit_edge

if.end.i54.while.body.i46_crit_edge:              ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i46

if.end.i54.cleanup_crit_edge:                     ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i54.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %crypto_aegis128_process_crypt.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ 0, %crypto_aegis128_process_crypt.exit.cleanup_crit_edge ], [ -74, %if.then14.cleanup_crit_edge ], [ -74, %if.end.i54.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %state) #9
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tag) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_aegis128_encrypt_generic(ptr noundef %req) #4 align 64 {
entry:
  %msg.sroa.0.i = alloca [2 x i64], align 8
  %tag = alloca %union.aegis_block, align 8
  %walk = alloca %struct.skcipher_walk, align 4
  %state = alloca %struct.aegis_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tag) #9
  %2 = call ptr @memset(ptr %tag, i32 0, i32 16)
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 128
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %cryptlen3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %cryptlen3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cryptlen3, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #9
  %7 = call ptr @memset(ptr %walk, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %state) #9
  %8 = call ptr @memset(ptr %state, i32 255, i32 80)
  %call4 = call i32 @skcipher_walk_aead_encrypt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #9
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iv, align 32
  call fastcc void @crypto_aegis128_init(ptr noundef nonnull %state, ptr noundef %__crt_ctx.i.i, ptr noundef %10)
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %13 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %assoclen, align 8
  call fastcc void @crypto_aegis128_process_ad(ptr noundef nonnull %state, ptr noundef %12, i32 noundef %14, i1 noundef zeroext false)
  %nbytes.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %15 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nbytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not1.i = icmp eq i32 %16, 0
  br i1 %tobool.not1.i, label %entry.crypto_aegis128_process_crypt.exit_crit_edge, label %while.body.lr.ph.i

entry.crypto_aegis128_process_crypt.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_process_crypt.exit

while.body.lr.ph.i:                               ; preds = %entry
  %total.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %stride.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 14
  %addr.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr3.i = getelementptr inbounds %struct.anon.77, ptr %walk, i32 0, i32 1
  %arrayidx15.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 2
  %tmp.sroa.33.0.arrayidx15.sroa_idx.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 2, i32 0, i32 1
  %arrayidx17.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 3
  %arrayidx2.i83.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 3, i32 0, i32 1
  %arrayidx19.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 4
  %arrayidx2.i87.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 4, i32 0, i32 1
  %arrayidx21.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 1
  %arrayidx2.i91.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 1, i32 0, i32 1
  %incdec.ptr2.i.i.i = getelementptr inbounds i32, ptr %state, i32 1
  %incdec.ptr2.1.i.i.i = getelementptr inbounds i32, ptr %state, i32 2
  %incdec.ptr2.2.i.i.i = getelementptr inbounds i32, ptr %state, i32 3
  %msg.sroa.0.i.8.i.8.arrayidx2.i.i113.sroa_idx = getelementptr inbounds i8, ptr %msg.sroa.0.i, i32 8
  br label %while.body.i

while.body.i:                                     ; preds = %crypto_aegis128_encrypt_chunk.exit.while.body.i_crit_edge, %while.body.lr.ph.i
  %17 = phi i32 [ %16, %while.body.lr.ph.i ], [ %125, %crypto_aegis128_encrypt_chunk.exit.while.body.i_crit_edge ]
  %18 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i = icmp ult i32 %17, %19
  br i1 %cmp.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stride.i, align 4
  %neg.i = sub i32 0, %21
  %and.i = and i32 %17, %neg.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %nbytes1.0.i = phi i32 [ %and.i, %if.then.i ], [ %17, %while.body.i.if.end.i_crit_edge ]
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr.i, align 4
  %24 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %addr3.i, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = ptrtoint ptr %23 to i32
  %28 = or i32 %26, %27
  %29 = and i32 %28, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %30 = icmp eq i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %nbytes1.0.i)
  %cmp3280.i = icmp ugt i32 %nbytes1.0.i, 15
  br i1 %30, label %while.cond.preheader.i, label %while.cond11.preheader.i

while.cond11.preheader.i:                         ; preds = %if.end.i
  br i1 %cmp3280.i, label %while.cond11.preheader.i.while.body13.i_crit_edge, label %while.cond11.preheader.i.if.end.i21_crit_edge

while.cond11.preheader.i.if.end.i21_crit_edge:    ; preds = %while.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i21

while.cond11.preheader.i.while.body13.i_crit_edge: ; preds = %while.cond11.preheader.i
  br label %while.body13.i

while.cond.preheader.i:                           ; preds = %if.end.i
  br i1 %cmp3280.i, label %while.cond.preheader.i.while.body.i20_crit_edge, label %while.cond.preheader.i.if.end.i21_crit_edge

while.cond.preheader.i.if.end.i21_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i21

while.cond.preheader.i.while.body.i20_crit_edge:  ; preds = %while.cond.preheader.i
  br label %while.body.i20

while.body.i20:                                   ; preds = %while.body.i20.while.body.i20_crit_edge, %while.cond.preheader.i.while.body.i20_crit_edge
  %dst.addr.0283.i = phi ptr [ %add.ptr10.i, %while.body.i20.while.body.i20_crit_edge ], [ %23, %while.cond.preheader.i.while.body.i20_crit_edge ]
  %src.addr.0282.i = phi ptr [ %add.ptr.i, %while.body.i20.while.body.i20_crit_edge ], [ %25, %while.cond.preheader.i.while.body.i20_crit_edge ]
  %size.addr.0281.i = phi i32 [ %sub.i, %while.body.i20.while.body.i20_crit_edge ], [ %nbytes1.0.i, %while.cond.preheader.i.while.body.i20_crit_edge ]
  %31 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %tmp.sroa.0.0.copyload.i = load i64, ptr %arrayidx15.i, align 8
  %32 = ptrtoint ptr %tmp.sroa.33.0.arrayidx15.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %tmp.sroa.33.0.copyload.i = load i64, ptr %tmp.sroa.33.0.arrayidx15.sroa_idx.i, align 8
  %33 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx17.i, align 8
  %and.i.i = and i64 %34, %tmp.sroa.0.0.copyload.i
  %35 = ptrtoint ptr %arrayidx2.i83.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx2.i83.i, align 8
  %and4.i.i = and i64 %36, %tmp.sroa.33.0.copyload.i
  %37 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx19.i, align 8
  %xor.i.i = xor i64 %38, %and.i.i
  %39 = ptrtoint ptr %arrayidx2.i87.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx2.i87.i, align 8
  %xor4.i.i = xor i64 %40, %and4.i.i
  %41 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx21.i, align 8
  %xor.i74.i = xor i64 %xor.i.i, %42
  %43 = ptrtoint ptr %arrayidx2.i91.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx2.i91.i, align 8
  %xor4.i77.i = xor i64 %xor4.i.i, %44
  %45 = ptrtoint ptr %src.addr.0282.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %src.addr.0282.i, align 8
  %xor.i78.i = xor i64 %xor.i74.i, %46
  %arrayidx2.i79.i = getelementptr [2 x i64], ptr %src.addr.0282.i, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx2.i79.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx2.i79.i, align 8
  %xor4.i81.i = xor i64 %xor4.i77.i, %48
  call fastcc void @crypto_aegis128_update(ptr noundef nonnull %state) #9
  %49 = ptrtoint ptr %src.addr.0282.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %src.addr.0282.i, align 8
  %51 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %state, align 8
  %xor.i.i.i = xor i64 %52, %50
  store i64 %xor.i.i.i, ptr %state, align 8
  %53 = ptrtoint ptr %arrayidx2.i79.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx2.i79.i, align 8
  %55 = ptrtoint ptr %incdec.ptr2.1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %incdec.ptr2.1.i.i.i, align 8
  %xor4.i.i.i = xor i64 %56, %54
  store i64 %xor4.i.i.i, ptr %incdec.ptr2.1.i.i.i, align 8
  %57 = ptrtoint ptr %dst.addr.0283.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %xor.i78.i, ptr %dst.addr.0283.i, align 8
  %tmp.sroa.33.0.dst.addr.0.sroa_idx.i = getelementptr inbounds i8, ptr %dst.addr.0283.i, i32 8
  %58 = ptrtoint ptr %tmp.sroa.33.0.dst.addr.0.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %xor4.i81.i, ptr %tmp.sroa.33.0.dst.addr.0.sroa_idx.i, align 8
  %sub.i = add i32 %size.addr.0281.i, -16
  %add.ptr.i = getelementptr i8, ptr %src.addr.0282.i, i32 16
  %add.ptr10.i = getelementptr i8, ptr %dst.addr.0283.i, i32 16
  %cmp3.i = icmp ugt i32 %sub.i, 15
  br i1 %cmp3.i, label %while.body.i20.while.body.i20_crit_edge, label %while.body.i20.if.end.i21_crit_edge

while.body.i20.if.end.i21_crit_edge:              ; preds = %while.body.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i21

while.body.i20.while.body.i20_crit_edge:          ; preds = %while.body.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i20

while.body13.i:                                   ; preds = %while.body13.i.while.body13.i_crit_edge, %while.cond11.preheader.i.while.body13.i_crit_edge
  %dst.addr.1277.i = phi ptr [ %add.ptr25.i, %while.body13.i.while.body13.i_crit_edge ], [ %23, %while.cond11.preheader.i.while.body13.i_crit_edge ]
  %src.addr.1276.i = phi ptr [ %add.ptr24.i, %while.body13.i.while.body13.i_crit_edge ], [ %25, %while.cond11.preheader.i.while.body13.i_crit_edge ]
  %size.addr.1275.i = phi i32 [ %sub23.i, %while.body13.i.while.body13.i_crit_edge ], [ %nbytes1.0.i, %while.cond11.preheader.i.while.body13.i_crit_edge ]
  %59 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %tmp.sroa.0.0.copyload134.i = load i64, ptr %arrayidx15.i, align 8
  %60 = ptrtoint ptr %tmp.sroa.33.0.arrayidx15.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %tmp.sroa.33.0.copyload139.i = load i64, ptr %tmp.sroa.33.0.arrayidx15.sroa_idx.i, align 8
  %61 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx17.i, align 8
  %and.i82.i = and i64 %62, %tmp.sroa.0.0.copyload134.i
  %63 = ptrtoint ptr %arrayidx2.i83.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx2.i83.i, align 8
  %and4.i85.i = and i64 %64, %tmp.sroa.33.0.copyload139.i
  %65 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx19.i, align 8
  %xor.i86.i = xor i64 %66, %and.i82.i
  %67 = ptrtoint ptr %arrayidx2.i87.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx2.i87.i, align 8
  %xor4.i89.i = xor i64 %68, %and4.i85.i
  %69 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx21.i, align 8
  %xor.i90.i = xor i64 %xor.i86.i, %70
  %tmp.sroa.0.sroa.0.0.extract.shift187.i = lshr i64 %xor.i90.i, 32
  %tmp.sroa.0.sroa.0.0.extract.trunc188.i = trunc i64 %tmp.sroa.0.sroa.0.0.extract.shift187.i to i32
  %tmp.sroa.0.sroa.31.0.extract.trunc248.i = trunc i64 %xor.i90.i to i32
  %71 = ptrtoint ptr %arrayidx2.i91.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx2.i91.i, align 8
  %xor4.i93.i = xor i64 %xor4.i89.i, %72
  %incdec.ptr.i.i = getelementptr i32, ptr %src.addr.1276.i, i32 1
  %73 = ptrtoint ptr %src.addr.1276.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %src.addr.1276.i, align 4
  %xor.i110.i = xor i32 %74, %tmp.sroa.0.sroa.0.0.extract.trunc188.i
  %incdec.ptr.1.i.i = getelementptr i32, ptr %src.addr.1276.i, i32 2
  %75 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %incdec.ptr.i.i, align 4
  %xor.1.i.i = xor i32 %76, %tmp.sroa.0.sroa.31.0.extract.trunc248.i
  %incdec.ptr.2.i.i = getelementptr i32, ptr %src.addr.1276.i, i32 3
  %77 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %incdec.ptr.1.i.i, align 4
  %tmp.sroa.33.8.extract.shift.i = lshr i64 %xor4.i93.i, 32
  %tmp.sroa.33.8.extract.trunc.i = trunc i64 %tmp.sroa.33.8.extract.shift.i to i32
  %xor.2.i.i = xor i32 %78, %tmp.sroa.33.8.extract.trunc.i
  %tmp.sroa.33.8.insert.ext.i = zext i32 %xor.2.i.i to i64
  %tmp.sroa.33.8.insert.shift.i = shl nuw i64 %tmp.sroa.33.8.insert.ext.i, 32
  %79 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %incdec.ptr.2.i.i, align 4
  %tmp.sroa.33.12.extract.trunc.i = trunc i64 %xor4.i93.i to i32
  %xor.3.i.i = xor i32 %80, %tmp.sroa.33.12.extract.trunc.i
  %tmp.sroa.33.12.insert.ext.i = zext i32 %xor.3.i.i to i64
  %tmp.sroa.33.12.insert.insert.i = or i64 %tmp.sroa.33.8.insert.shift.i, %tmp.sroa.33.12.insert.ext.i
  call fastcc void @crypto_aegis128_update(ptr noundef nonnull %state) #9
  %81 = ptrtoint ptr %src.addr.1276.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %src.addr.1276.i, align 4
  %83 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %state, align 8
  %xor.i.i111.i = xor i32 %84, %82
  store i32 %xor.i.i111.i, ptr %state, align 8
  %85 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %incdec.ptr.i.i, align 4
  %87 = ptrtoint ptr %incdec.ptr2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %incdec.ptr2.i.i.i, align 4
  %xor.1.i.i.i = xor i32 %88, %86
  store i32 %xor.1.i.i.i, ptr %incdec.ptr2.i.i.i, align 4
  %89 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %incdec.ptr.1.i.i, align 4
  %91 = ptrtoint ptr %incdec.ptr2.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %incdec.ptr2.1.i.i.i, align 8
  %xor.2.i.i.i = xor i32 %92, %90
  store i32 %xor.2.i.i.i, ptr %incdec.ptr2.1.i.i.i, align 8
  %93 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %incdec.ptr.2.i.i, align 4
  %95 = ptrtoint ptr %incdec.ptr2.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %incdec.ptr2.2.i.i.i, align 4
  %xor.3.i.i.i = xor i32 %96, %94
  store i32 %xor.3.i.i.i, ptr %incdec.ptr2.2.i.i.i, align 4
  %tmp.sroa.0.sroa.31.0.insert.ext270.i = zext i32 %xor.1.i.i to i64
  %tmp.sroa.0.sroa.0.0.insert.ext221.i = zext i32 %xor.i110.i to i64
  %tmp.sroa.0.sroa.0.0.insert.shift222.i = shl nuw i64 %tmp.sroa.0.sroa.0.0.insert.ext221.i, 32
  %tmp.sroa.0.sroa.0.0.insert.insert224.i = or i64 %tmp.sroa.0.sroa.0.0.insert.shift222.i, %tmp.sroa.0.sroa.31.0.insert.ext270.i
  %97 = ptrtoint ptr %dst.addr.1277.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 8)
  store i64 %tmp.sroa.0.sroa.0.0.insert.insert224.i, ptr %dst.addr.1277.i, align 1
  %tmp.sroa.33.0.dst.addr.1.sroa_idx.i = getelementptr inbounds i8, ptr %dst.addr.1277.i, i32 8
  %98 = ptrtoint ptr %tmp.sroa.33.0.dst.addr.1.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 8)
  store i64 %tmp.sroa.33.12.insert.insert.i, ptr %tmp.sroa.33.0.dst.addr.1.sroa_idx.i, align 1
  %sub23.i = add i32 %size.addr.1275.i, -16
  %add.ptr24.i = getelementptr i8, ptr %src.addr.1276.i, i32 16
  %add.ptr25.i = getelementptr i8, ptr %dst.addr.1277.i, i32 16
  %cmp12.i = icmp ugt i32 %sub23.i, 15
  br i1 %cmp12.i, label %while.body13.i.while.body13.i_crit_edge, label %while.body13.i.if.end.i21_crit_edge

while.body13.i.if.end.i21_crit_edge:              ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i21

while.body13.i.while.body13.i_crit_edge:          ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body13.i

if.end.i21:                                       ; preds = %while.body13.i.if.end.i21_crit_edge, %while.body.i20.if.end.i21_crit_edge, %while.cond.preheader.i.if.end.i21_crit_edge, %while.cond11.preheader.i.if.end.i21_crit_edge
  %size.addr.2.i = phi i32 [ %nbytes1.0.i, %while.cond.preheader.i.if.end.i21_crit_edge ], [ %nbytes1.0.i, %while.cond11.preheader.i.if.end.i21_crit_edge ], [ %sub.i, %while.body.i20.if.end.i21_crit_edge ], [ %sub23.i, %while.body13.i.if.end.i21_crit_edge ]
  %src.addr.2.i = phi ptr [ %25, %while.cond.preheader.i.if.end.i21_crit_edge ], [ %25, %while.cond11.preheader.i.if.end.i21_crit_edge ], [ %add.ptr.i, %while.body.i20.if.end.i21_crit_edge ], [ %add.ptr24.i, %while.body13.i.if.end.i21_crit_edge ]
  %dst.addr.2.i = phi ptr [ %23, %while.cond.preheader.i.if.end.i21_crit_edge ], [ %23, %while.cond11.preheader.i.if.end.i21_crit_edge ], [ %add.ptr10.i, %while.body.i20.if.end.i21_crit_edge ], [ %add.ptr25.i, %while.body13.i.if.end.i21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.2.i)
  %cmp27.not.i = icmp eq i32 %size.addr.2.i, 0
  br i1 %cmp27.not.i, label %if.end.i21.crypto_aegis128_encrypt_chunk.exit_crit_edge, label %if.then28.i

if.end.i21.crypto_aegis128_encrypt_chunk.exit_crit_edge: ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_encrypt_chunk.exit

if.then28.i:                                      ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.sroa.0.i)
  %99 = call ptr @memset(ptr %msg.sroa.0.i, i32 0, i32 16)
  %100 = call ptr @memcpy(ptr %msg.sroa.0.i, ptr %src.addr.2.i, i32 %size.addr.2.i)
  %101 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %tmp.sroa.0.0.copyload135.i = load i64, ptr %arrayidx15.i, align 8
  %102 = ptrtoint ptr %tmp.sroa.33.0.arrayidx15.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %tmp.sroa.33.0.copyload140.i = load i64, ptr %tmp.sroa.33.0.arrayidx15.sroa_idx.i, align 8
  %103 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx17.i, align 8
  %and.i94.i = and i64 %104, %tmp.sroa.0.0.copyload135.i
  %105 = ptrtoint ptr %arrayidx2.i83.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx2.i83.i, align 8
  %and4.i97.i = and i64 %106, %tmp.sroa.33.0.copyload140.i
  %107 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx19.i, align 8
  %xor.i98.i = xor i64 %108, %and.i94.i
  %109 = ptrtoint ptr %arrayidx2.i87.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arrayidx2.i87.i, align 8
  %xor4.i101.i = xor i64 %110, %and4.i97.i
  %111 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %arrayidx21.i, align 8
  %xor.i102.i = xor i64 %xor.i98.i, %112
  %113 = ptrtoint ptr %arrayidx2.i91.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx2.i91.i, align 8
  %xor4.i105.i = xor i64 %xor4.i101.i, %114
  call fastcc void @crypto_aegis128_update(ptr noundef nonnull %state) #9
  %115 = ptrtoint ptr %msg.sroa.0.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %msg.sroa.0.i.0.msg.sroa.0.i.0.msg.sroa.0.0.msg.sroa.0.0.msg.sroa.0.0.116.i = load i64, ptr %msg.sroa.0.i, align 8
  %116 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %state, align 8
  %xor.i.i112.i = xor i64 %117, %msg.sroa.0.i.0.msg.sroa.0.i.0.msg.sroa.0.0.msg.sroa.0.0.msg.sroa.0.0.116.i
  store i64 %xor.i.i112.i, ptr %state, align 8
  %118 = ptrtoint ptr %msg.sroa.0.i.8.i.8.arrayidx2.i.i113.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %118)
  %msg.sroa.0.i.8.msg.sroa.0.i.8.msg.sroa.0.8.msg.sroa.0.8.msg.sroa.0.8.118.i = load i64, ptr %msg.sroa.0.i.8.i.8.arrayidx2.i.i113.sroa_idx, align 8
  %119 = ptrtoint ptr %incdec.ptr2.1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %incdec.ptr2.1.i.i.i, align 8
  %xor4.i.i115.i = xor i64 %120, %msg.sroa.0.i.8.msg.sroa.0.i.8.msg.sroa.0.8.msg.sroa.0.8.msg.sroa.0.8.118.i
  store i64 %xor4.i.i115.i, ptr %incdec.ptr2.1.i.i.i, align 8
  %xor.i106.i = xor i64 %xor.i102.i, %msg.sroa.0.i.0.msg.sroa.0.i.0.msg.sroa.0.0.msg.sroa.0.0.msg.sroa.0.0.116.i
  store i64 %xor.i106.i, ptr %msg.sroa.0.i, align 8
  %xor4.i109.i = xor i64 %xor4.i105.i, %msg.sroa.0.i.8.msg.sroa.0.i.8.msg.sroa.0.8.msg.sroa.0.8.msg.sroa.0.8.118.i
  store i64 %xor4.i109.i, ptr %msg.sroa.0.i.8.i.8.arrayidx2.i.i113.sroa_idx, align 8
  %121 = call ptr @memcpy(ptr %dst.addr.2.i, ptr %msg.sroa.0.i, i32 %size.addr.2.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.sroa.0.i)
  br label %crypto_aegis128_encrypt_chunk.exit

crypto_aegis128_encrypt_chunk.exit:               ; preds = %if.then28.i, %if.end.i21.crypto_aegis128_encrypt_chunk.exit_crit_edge
  %122 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %nbytes.i, align 4
  %sub5.i = sub i32 %123, %nbytes1.0.i
  %call.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub5.i) #9
  %124 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nbytes.i, align 4
  %tobool.not.i = icmp eq i32 %125, 0
  br i1 %tobool.not.i, label %crypto_aegis128_encrypt_chunk.exit.crypto_aegis128_process_crypt.exit_crit_edge, label %crypto_aegis128_encrypt_chunk.exit.while.body.i_crit_edge

crypto_aegis128_encrypt_chunk.exit.while.body.i_crit_edge: ; preds = %crypto_aegis128_encrypt_chunk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

crypto_aegis128_encrypt_chunk.exit.crypto_aegis128_process_crypt.exit_crit_edge: ; preds = %crypto_aegis128_encrypt_chunk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_process_crypt.exit

crypto_aegis128_process_crypt.exit:               ; preds = %crypto_aegis128_encrypt_chunk.exit.crypto_aegis128_process_crypt.exit_crit_edge, %entry.crypto_aegis128_process_crypt.exit_crit_edge
  %126 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %assoclen, align 8
  %conv = zext i32 %127 to i64
  %conv7 = zext i32 %6 to i64
  call fastcc void @crypto_aegis128_final(ptr noundef nonnull %state, ptr noundef nonnull %tag, i64 noundef %conv, i64 noundef %conv7)
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %128 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dst, align 8
  %add = add i32 %127, %6
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tag, ptr noundef %129, i32 noundef %add, i32 noundef %4, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %state) #9
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tag) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_aead_encrypt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_aegis128_init_simd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crypto_aegis128_process_ad(ptr noundef %state, ptr noundef %sg_src, i32 noundef %assoclen, i1 noundef zeroext %do_simd) unnamed_addr #4 align 64 {
entry:
  %buf = alloca %union.aegis_block, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #9
  %0 = getelementptr inbounds [2 x i64], ptr %buf, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %assoclen)
  %cmp.not80 = icmp eq i32 %assoclen, 0
  %1 = call ptr @memset(ptr %buf, i32 255, i32 16)
  br i1 %cmp.not80, label %entry.if.end21_crit_edge, label %while.body.lr.ph

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx3.i.i = getelementptr [2 x i64], ptr %state, i32 0, i32 1
  %incdec.ptr2.i.i.i = getelementptr i32, ptr %state, i32 1
  %incdec.ptr2.2.i.i.i = getelementptr i32, ptr %state, i32 3
  %2 = ptrtoint ptr %sg_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_src, align 4
  %and.i.i.i.i98 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i98)
  %tobool.i.not.i.i.i99 = icmp eq i32 %and.i.i.i.i98, 0
  br i1 %tobool.i.not.i.i.i99, label %scatterwalk_map.exit.lr.ph, label %while.body.lr.ph.do.body2.i.i.i_crit_edge, !prof !41

while.body.lr.ph.do.body2.i.i.i_crit_edge:        ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2.i.i.i

scatterwalk_map.exit.lr.ph:                       ; preds = %while.body.lr.ph
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg_src, i32 0, i32 1
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  %neg.i.i96 = and i32 %5, 4095
  %add4.i.i97 = sub nuw nsw i32 4096, %neg.i.i96
  %length.i.i93 = getelementptr inbounds %struct.scatterlist, ptr %sg_src, i32 0, i32 2
  %6 = ptrtoint ptr %length.i.i93 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i.i93, align 4
  %8 = call i32 @llvm.umin.i32(i32 %add4.i.i97, i32 %7) #9
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 %assoclen) #9
  %offset.i.i92 = getelementptr inbounds %struct.scatterlist, ptr %sg_src, i32 0, i32 1
  br label %scatterwalk_map.exit

do.body2.i.i.i:                                   ; preds = %scatterwalk_done.exit.do.body2.i.i.i_crit_edge, %while.body.lr.ph.do.body2.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !43
  unreachable

scatterwalk_map.exit:                             ; preds = %scatterwalk_done.exit.scatterwalk_map.exit_crit_edge, %scatterwalk_map.exit.lr.ph
  %10 = phi i32 [ %3, %scatterwalk_map.exit.lr.ph ], [ %82, %scatterwalk_done.exit.scatterwalk_map.exit_crit_edge ]
  %11 = phi i32 [ %9, %scatterwalk_map.exit.lr.ph ], [ %80, %scatterwalk_done.exit.scatterwalk_map.exit_crit_edge ]
  %neg.i.i106 = phi i32 [ %neg.i.i96, %scatterwalk_map.exit.lr.ph ], [ %neg.i.i, %scatterwalk_done.exit.scatterwalk_map.exit_crit_edge ]
  %length.i.i105 = phi ptr [ %length.i.i93, %scatterwalk_map.exit.lr.ph ], [ %length.i.i, %scatterwalk_done.exit.scatterwalk_map.exit_crit_edge ]
  %offset.i.i104 = phi ptr [ %offset.i.i92, %scatterwalk_map.exit.lr.ph ], [ %offset.i.i, %scatterwalk_done.exit.scatterwalk_map.exit_crit_edge ]
  %walk.sroa.9.081103 = phi i32 [ %5, %scatterwalk_map.exit.lr.ph ], [ %walk.sroa.9.1, %scatterwalk_done.exit.scatterwalk_map.exit_crit_edge ]
  %walk.sroa.0.082102 = phi ptr [ %sg_src, %scatterwalk_map.exit.lr.ph ], [ %walk.sroa.0.1, %scatterwalk_done.exit.scatterwalk_map.exit_crit_edge ]
  %pos.083101 = phi i32 [ 0, %scatterwalk_map.exit.lr.ph ], [ %add13, %scatterwalk_done.exit.scatterwalk_map.exit_crit_edge ]
  %assoclen.addr.084100 = phi i32 [ %assoclen, %scatterwalk_map.exit.lr.ph ], [ %sub14, %scatterwalk_done.exit.scatterwalk_map.exit_crit_edge ]
  %and.i.i.i = and i32 %10, -4
  %12 = inttoptr i32 %and.i.i.i to ptr
  %shr.i.i = lshr i32 %walk.sroa.9.081103, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %12, i32 %shr.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %13 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %13, 512
  %14 = call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  %18 = call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i1.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 213
  %22 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i.i, i32 noundef %or.i.i) #9
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %neg.i.i106
  %add = add i32 %11, %pos.083101
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add)
  %cmp2 = icmp ugt i32 %add, 15
  br i1 %cmp2, label %if.then, label %scatterwalk_map.exit.if.end10_crit_edge

scatterwalk_map.exit.if.end10_crit_edge:          ; preds = %scatterwalk_map.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %scatterwalk_map.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.083101)
  %cmp3.not = icmp eq i32 %pos.083101, 0
  br i1 %cmp3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4:                                         ; preds = %if.then
  %sub = sub i32 16, %pos.083101
  %add.ptr = getelementptr i8, ptr %buf, i32 %pos.083101
  %24 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr.i, i32 %sub)
  br i1 %do_simd, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  call void @crypto_aegis128_update_simd(ptr noundef %state, ptr noundef nonnull %buf) #9
  br label %crypto_aegis128_update_a.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %buf, align 8
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %state, align 8
  %xor.i.i = xor i64 %28, %26
  store i64 %xor.i.i, ptr %state, align 8
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %0, align 8
  %31 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx3.i.i, align 8
  %xor4.i.i = xor i64 %32, %30
  store i64 %xor4.i.i, ptr %arrayidx3.i.i, align 8
  br label %crypto_aegis128_update_a.exit

crypto_aegis128_update_a.exit:                    ; preds = %if.end.i, %if.then.i
  %sub5 = sub i32 %11, %sub
  %add.ptr6 = getelementptr i8, ptr %add.ptr.i, i32 %sub
  br label %if.end

if.end:                                           ; preds = %crypto_aegis128_update_a.exit, %if.then.if.end_crit_edge
  %left.0 = phi i32 [ %sub5, %crypto_aegis128_update_a.exit ], [ %11, %if.then.if.end_crit_edge ]
  %src.0 = phi ptr [ %add.ptr6, %crypto_aegis128_update_a.exit ], [ %add.ptr.i, %if.then.if.end_crit_edge ]
  %33 = ptrtoint ptr %src.0 to i32
  %and.i53 = and i32 %33, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %cmp.i = icmp eq i32 %and.i53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %left.0)
  %cmp125.i = icmp ugt i32 %left.0, 15
  br i1 %cmp.i, label %while.cond.preheader.i, label %while.cond2.preheader.i

while.cond2.preheader.i:                          ; preds = %if.end
  br i1 %cmp125.i, label %while.cond2.preheader.i.while.body4.i_crit_edge, label %while.cond2.preheader.i.crypto_aegis128_ad.exit_crit_edge

while.cond2.preheader.i.crypto_aegis128_ad.exit_crit_edge: ; preds = %while.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_ad.exit

while.cond2.preheader.i.while.body4.i_crit_edge:  ; preds = %while.cond2.preheader.i
  br label %while.body4.i

while.cond.preheader.i:                           ; preds = %if.end
  br i1 %cmp125.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.crypto_aegis128_ad.exit_crit_edge

while.cond.preheader.i.crypto_aegis128_ad.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_ad.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %crypto_aegis128_update_a.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %src_blk.027.i = phi ptr [ %incdec.ptr.i, %crypto_aegis128_update_a.exit.i.while.body.i_crit_edge ], [ %src.0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %size.addr.026.i = phi i32 [ %sub.i, %crypto_aegis128_update_a.exit.i.while.body.i_crit_edge ], [ %left.0, %while.cond.preheader.i.while.body.i_crit_edge ]
  br i1 %do_simd, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @crypto_aegis128_update_simd(ptr noundef %state, ptr noundef %src_blk.027.i) #9
  br label %crypto_aegis128_update_a.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %34 = ptrtoint ptr %src_blk.027.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %src_blk.027.i, align 8
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %state, align 8
  %xor.i.i.i = xor i64 %37, %35
  store i64 %xor.i.i.i, ptr %state, align 8
  %arrayidx2.i.i.i = getelementptr [2 x i64], ptr %src_blk.027.i, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx2.i.i.i, align 8
  %40 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx3.i.i, align 8
  %xor4.i.i.i = xor i64 %41, %39
  store i64 %xor4.i.i.i, ptr %arrayidx3.i.i, align 8
  br label %crypto_aegis128_update_a.exit.i

crypto_aegis128_update_a.exit.i:                  ; preds = %if.end.i.i, %if.then.i.i
  %sub.i = add i32 %size.addr.026.i, -16
  %incdec.ptr.i = getelementptr %union.aegis_block, ptr %src_blk.027.i, i32 1
  %cmp1.i = icmp ugt i32 %sub.i, 15
  br i1 %cmp1.i, label %crypto_aegis128_update_a.exit.i.while.body.i_crit_edge, label %crypto_aegis128_update_a.exit.i.crypto_aegis128_ad.exit_crit_edge

crypto_aegis128_update_a.exit.i.crypto_aegis128_ad.exit_crit_edge: ; preds = %crypto_aegis128_update_a.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_ad.exit

crypto_aegis128_update_a.exit.i.while.body.i_crit_edge: ; preds = %crypto_aegis128_update_a.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body4.i:                                    ; preds = %crypto_aegis128_update_u.exit.i.while.body4.i_crit_edge, %while.cond2.preheader.i.while.body4.i_crit_edge
  %src.addr.023.i = phi ptr [ %add.ptr.i54, %crypto_aegis128_update_u.exit.i.while.body4.i_crit_edge ], [ %src.0, %while.cond2.preheader.i.while.body4.i_crit_edge ]
  %size.addr.122.i = phi i32 [ %sub6.i, %crypto_aegis128_update_u.exit.i.while.body4.i_crit_edge ], [ %left.0, %while.cond2.preheader.i.while.body4.i_crit_edge ]
  br i1 %do_simd, label %if.then.i17.i, label %if.end.i19.i

if.then.i17.i:                                    ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @crypto_aegis128_update_simd(ptr noundef %state, ptr noundef %src.addr.023.i) #9
  br label %crypto_aegis128_update_u.exit.i

if.end.i19.i:                                     ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %incdec.ptr.i.i.i = getelementptr i32, ptr %src.addr.023.i, i32 1
  %42 = ptrtoint ptr %src.addr.023.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %src.addr.023.i, align 4
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state, align 4
  %xor.i.i18.i = xor i32 %45, %43
  store i32 %xor.i.i18.i, ptr %state, align 4
  %incdec.ptr.1.i.i.i = getelementptr i32, ptr %src.addr.023.i, i32 2
  %46 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %incdec.ptr.i.i.i, align 4
  %48 = ptrtoint ptr %incdec.ptr2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %incdec.ptr2.i.i.i, align 4
  %xor.1.i.i.i = xor i32 %49, %47
  store i32 %xor.1.i.i.i, ptr %incdec.ptr2.i.i.i, align 4
  %incdec.ptr.2.i.i.i = getelementptr i32, ptr %src.addr.023.i, i32 3
  %50 = ptrtoint ptr %incdec.ptr.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %incdec.ptr.1.i.i.i, align 4
  %52 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx3.i.i, align 4
  %xor.2.i.i.i = xor i32 %53, %51
  store i32 %xor.2.i.i.i, ptr %arrayidx3.i.i, align 4
  %54 = ptrtoint ptr %incdec.ptr.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %incdec.ptr.2.i.i.i, align 4
  %56 = ptrtoint ptr %incdec.ptr2.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %incdec.ptr2.2.i.i.i, align 4
  %xor.3.i.i.i = xor i32 %57, %55
  store i32 %xor.3.i.i.i, ptr %incdec.ptr2.2.i.i.i, align 4
  br label %crypto_aegis128_update_u.exit.i

crypto_aegis128_update_u.exit.i:                  ; preds = %if.end.i19.i, %if.then.i17.i
  %sub6.i = add i32 %size.addr.122.i, -16
  %add.ptr.i54 = getelementptr i8, ptr %src.addr.023.i, i32 16
  %cmp3.i = icmp ugt i32 %sub6.i, 15
  br i1 %cmp3.i, label %crypto_aegis128_update_u.exit.i.while.body4.i_crit_edge, label %crypto_aegis128_update_u.exit.i.crypto_aegis128_ad.exit_crit_edge

crypto_aegis128_update_u.exit.i.crypto_aegis128_ad.exit_crit_edge: ; preds = %crypto_aegis128_update_u.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_ad.exit

crypto_aegis128_update_u.exit.i.while.body4.i_crit_edge: ; preds = %crypto_aegis128_update_u.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body4.i

crypto_aegis128_ad.exit:                          ; preds = %crypto_aegis128_update_u.exit.i.crypto_aegis128_ad.exit_crit_edge, %crypto_aegis128_update_a.exit.i.crypto_aegis128_ad.exit_crit_edge, %while.cond.preheader.i.crypto_aegis128_ad.exit_crit_edge, %while.cond2.preheader.i.crypto_aegis128_ad.exit_crit_edge
  %and = and i32 %left.0, -16
  %add.ptr8 = getelementptr i8, ptr %src.0, i32 %and
  %and9 = and i32 %left.0, 15
  br label %if.end10

if.end10:                                         ; preds = %crypto_aegis128_ad.exit, %scatterwalk_map.exit.if.end10_crit_edge
  %pos.2 = phi i32 [ 0, %crypto_aegis128_ad.exit ], [ %pos.083101, %scatterwalk_map.exit.if.end10_crit_edge ]
  %left.1 = phi i32 [ %and9, %crypto_aegis128_ad.exit ], [ %11, %scatterwalk_map.exit.if.end10_crit_edge ]
  %src.1 = phi ptr [ %add.ptr8, %crypto_aegis128_ad.exit ], [ %add.ptr.i, %scatterwalk_map.exit.if.end10_crit_edge ]
  %add.ptr12 = getelementptr i8, ptr %buf, i32 %pos.2
  %58 = call ptr @memcpy(ptr %add.ptr12, ptr %src.1, i32 %left.1)
  %add13 = add i32 %left.1, %pos.2
  %sub14 = sub i32 %assoclen.addr.084100, %11
  call void @kunmap_local_indexed(ptr noundef %add.ptr.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !46
  %59 = call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i1.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 213
  %63 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %64, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  %65 = call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %68, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14)
  %tobool.not.i = icmp eq i32 %sub14, 0
  br i1 %tobool.not.i, label %while.end, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end10
  %add.i = add i32 %11, %walk.sroa.9.081103
  %69 = ptrtoint ptr %offset.i.i104 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offset.i.i104, align 4
  %71 = ptrtoint ptr %length.i.i105 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %length.i.i105, align 4
  %add.i58 = add i32 %72, %70
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add.i58)
  %cmp.not.i = icmp ult i32 %add.i, %add.i58
  br i1 %cmp.not.i, label %lor.lhs.false.i.scatterwalk_done.exit_crit_edge, label %if.then6.i.i

lor.lhs.false.i.scatterwalk_done.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %scatterwalk_done.exit

if.then6.i.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i.i = call ptr @sg_next(ptr noundef %walk.sroa.0.082102) #9
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %call8.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %offset.i.i.i, align 4
  br label %scatterwalk_done.exit

scatterwalk_done.exit:                            ; preds = %if.then6.i.i, %lor.lhs.false.i.scatterwalk_done.exit_crit_edge
  %walk.sroa.9.1 = phi i32 [ %74, %if.then6.i.i ], [ %add.i, %lor.lhs.false.i.scatterwalk_done.exit_crit_edge ]
  %walk.sroa.0.1 = phi ptr [ %call8.i.i, %if.then6.i.i ], [ %walk.sroa.0.082102, %lor.lhs.false.i.scatterwalk_done.exit_crit_edge ]
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %walk.sroa.0.1, i32 0, i32 1
  %75 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %offset.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %walk.sroa.0.1, i32 0, i32 2
  %77 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length.i.i, align 4
  %add.i.i = sub i32 %76, %walk.sroa.9.1
  %sub.i.i = add i32 %add.i.i, %78
  %neg.i.i = and i32 %walk.sroa.9.1, 4095
  %add4.i.i = sub nuw nsw i32 4096, %neg.i.i
  %79 = call i32 @llvm.umin.i32(i32 %add4.i.i, i32 %sub.i.i) #9
  %80 = call i32 @llvm.umin.i32(i32 %79, i32 %sub14) #9
  %81 = ptrtoint ptr %walk.sroa.0.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %walk.sroa.0.1, align 4
  %and.i.i.i.i = and i32 %82, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %scatterwalk_done.exit.scatterwalk_map.exit_crit_edge, label %scatterwalk_done.exit.do.body2.i.i.i_crit_edge, !prof !41

scatterwalk_done.exit.do.body2.i.i.i_crit_edge:   ; preds = %scatterwalk_done.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2.i.i.i

scatterwalk_done.exit.scatterwalk_map.exit_crit_edge: ; preds = %scatterwalk_done.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %scatterwalk_map.exit

while.end:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add13)
  %cmp15.not = icmp eq i32 %add13, 0
  br i1 %cmp15.not, label %while.end.if.end21_crit_edge, label %if.then16

while.end.if.end21_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then16:                                        ; preds = %while.end
  %add.ptr18 = getelementptr i8, ptr %buf, i32 %add13
  %sub19 = sub i32 16, %add13
  %83 = call ptr @memset(ptr %add.ptr18, i32 0, i32 %sub19)
  br i1 %do_simd, label %if.then.i63, label %if.end.i68

if.then.i63:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  call void @crypto_aegis128_update_simd(ptr noundef %state, ptr noundef nonnull %buf) #9
  br label %if.end21

if.end.i68:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %84 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %buf, align 8
  %86 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %state, align 8
  %xor.i.i64 = xor i64 %87, %85
  store i64 %xor.i.i64, ptr %state, align 8
  %88 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %0, align 8
  %arrayidx3.i.i66 = getelementptr [2 x i64], ptr %state, i32 0, i32 1
  %90 = ptrtoint ptr %arrayidx3.i.i66 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %arrayidx3.i.i66, align 8
  %xor4.i.i67 = xor i64 %91, %89
  store i64 %xor4.i.i67, ptr %arrayidx3.i.i66, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end.i68, %if.then.i63, %while.end.if.end21_crit_edge, %entry.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_aegis128_encrypt_chunk_simd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aegis128_final_simd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crypto_aegis128_init(ptr nocapture noundef %state, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %iv) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %0)
  %key_iv.sroa.0.0.copyload = load i64, ptr %key, align 8
  %key_iv.sroa.0.sroa.0.0.extract.shift = lshr i64 %key_iv.sroa.0.0.copyload, 32
  %key_iv.sroa.0.sroa.0.0.extract.trunc = trunc i64 %key_iv.sroa.0.sroa.0.0.extract.shift to i32
  %key_iv.sroa.0.sroa.8.0.extract.trunc = trunc i64 %key_iv.sroa.0.0.copyload to i32
  %key_iv.sroa.10.0.key.sroa_idx = getelementptr i8, ptr %key, i32 8
  %1 = ptrtoint ptr %key_iv.sroa.10.0.key.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %1)
  %key_iv.sroa.10.0.copyload = load i64, ptr %key_iv.sroa.10.0.key.sroa_idx, align 8
  %incdec.ptr.i = getelementptr i32, ptr %iv, i32 1
  %2 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iv, align 4
  %xor.i28 = xor i32 %3, %key_iv.sroa.0.sroa.0.0.extract.trunc
  %incdec.ptr.1.i = getelementptr i32, ptr %iv, i32 2
  %4 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %incdec.ptr.i, align 4
  %xor.1.i = xor i32 %5, %key_iv.sroa.0.sroa.8.0.extract.trunc
  %incdec.ptr.2.i = getelementptr i32, ptr %iv, i32 3
  %6 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.1.i, align 4
  %key_iv.sroa.10.8.extract.shift = lshr i64 %key_iv.sroa.10.0.copyload, 32
  %key_iv.sroa.10.8.extract.trunc = trunc i64 %key_iv.sroa.10.8.extract.shift to i32
  %xor.2.i = xor i32 %7, %key_iv.sroa.10.8.extract.trunc
  %key_iv.sroa.10.8.insert.ext = zext i32 %xor.2.i to i64
  %key_iv.sroa.10.8.insert.shift = shl nuw i64 %key_iv.sroa.10.8.insert.ext, 32
  %8 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr.2.i, align 4
  %key_iv.sroa.10.12.extract.trunc = trunc i64 %key_iv.sroa.10.0.copyload to i32
  %xor.3.i = xor i32 %9, %key_iv.sroa.10.12.extract.trunc
  %key_iv.sroa.10.12.insert.ext = zext i32 %xor.3.i to i64
  %key_iv.sroa.10.12.insert.insert = or i64 %key_iv.sroa.10.8.insert.shift, %key_iv.sroa.10.12.insert.ext
  %key_iv.sroa.0.sroa.8.0.insert.ext42 = zext i32 %xor.1.i to i64
  %key_iv.sroa.0.sroa.0.0.insert.ext38 = zext i32 %xor.i28 to i64
  %key_iv.sroa.0.sroa.0.0.insert.shift39 = shl nuw i64 %key_iv.sroa.0.sroa.0.0.insert.ext38, 32
  %key_iv.sroa.0.sroa.0.0.insert.insert41 = or i64 %key_iv.sroa.0.sroa.0.0.insert.shift39, %key_iv.sroa.0.sroa.8.0.insert.ext42
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %key_iv.sroa.0.sroa.0.0.insert.insert41, ptr %state, align 8
  %key_iv.sroa.10.0.state.sroa_idx = getelementptr i8, ptr %state, i32 8
  %11 = ptrtoint ptr %key_iv.sroa.10.0.state.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %key_iv.sroa.10.12.insert.insert, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  %arrayidx2 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %arrayidx2, ptr getelementptr inbounds ([2 x %union.aegis_block], ptr @crypto_aegis_const, i32 0, i32 1), i32 16)
  %arrayidx4 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %arrayidx4, ptr @crypto_aegis_const, i32 16)
  %arrayidx6 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 3
  %14 = call ptr @memcpy(ptr %arrayidx6, ptr %key, i32 16)
  %arrayidx8 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 4
  %15 = call ptr @memcpy(ptr %arrayidx8, ptr %key, i32 16)
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx6, align 8
  %xor.i = xor i64 %17, 282583128934413
  store i64 %xor.i, ptr %arrayidx6, align 8
  %arrayidx3.i = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx3.i, align 8
  %xor4.i = xor i64 %19, 1522840481827486050
  store i64 %xor4.i, ptr %arrayidx3.i, align 8
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx8, align 8
  %xor.i25 = xor i64 %21, -2648934250631254031
  store i64 %xor.i25, ptr %arrayidx8, align 8
  %arrayidx3.i26 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 4, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx3.i26 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx3.i26, align 8
  %xor4.i27 = xor i64 %23, 2310682245296629981
  store i64 %xor4.i27, ptr %arrayidx3.i26, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %24 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %key, align 8
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %state, align 8
  %xor.i.i = xor i64 %27, %25
  store i64 %xor.i.i, ptr %state, align 8
  %28 = ptrtoint ptr %key_iv.sroa.10.0.key.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %key_iv.sroa.10.0.key.sroa_idx, align 8
  %30 = ptrtoint ptr %key_iv.sroa.10.0.state.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  %xor4.i.i = xor i64 %31, %29
  store i64 %xor4.i.i, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %state, align 8
  %xor.i.i29 = xor i64 %33, %key_iv.sroa.0.sroa.0.0.insert.insert41
  store i64 %xor.i.i29, ptr %state, align 8
  %34 = ptrtoint ptr %key_iv.sroa.10.0.state.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  %xor4.i.i32 = xor i64 %35, %key_iv.sroa.10.12.insert.insert
  store i64 %xor4.i.i32, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %36 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %key, align 8
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %state, align 8
  %xor.i.i.1 = xor i64 %39, %37
  store i64 %xor.i.i.1, ptr %state, align 8
  %40 = ptrtoint ptr %key_iv.sroa.10.0.key.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %key_iv.sroa.10.0.key.sroa_idx, align 8
  %42 = ptrtoint ptr %key_iv.sroa.10.0.state.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  %xor4.i.i.1 = xor i64 %43, %41
  store i64 %xor4.i.i.1, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %state, align 8
  %xor.i.i29.1 = xor i64 %45, %key_iv.sroa.0.sroa.0.0.insert.insert41
  store i64 %xor.i.i29.1, ptr %state, align 8
  %46 = ptrtoint ptr %key_iv.sroa.10.0.state.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  %xor4.i.i32.1 = xor i64 %47, %key_iv.sroa.10.12.insert.insert
  store i64 %xor4.i.i32.1, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %48 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %key, align 8
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %state, align 8
  %xor.i.i.2 = xor i64 %51, %49
  store i64 %xor.i.i.2, ptr %state, align 8
  %52 = ptrtoint ptr %key_iv.sroa.10.0.key.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %key_iv.sroa.10.0.key.sroa_idx, align 8
  %54 = ptrtoint ptr %key_iv.sroa.10.0.state.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  %xor4.i.i.2 = xor i64 %55, %53
  store i64 %xor4.i.i.2, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %56 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %state, align 8
  %xor.i.i29.2 = xor i64 %57, %key_iv.sroa.0.sroa.0.0.insert.insert41
  store i64 %xor.i.i29.2, ptr %state, align 8
  %58 = ptrtoint ptr %key_iv.sroa.10.0.state.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  %xor4.i.i32.2 = xor i64 %59, %key_iv.sroa.10.12.insert.insert
  store i64 %xor4.i.i32.2, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %60 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %key, align 8
  %62 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %state, align 8
  %xor.i.i.3 = xor i64 %63, %61
  store i64 %xor.i.i.3, ptr %state, align 8
  %64 = ptrtoint ptr %key_iv.sroa.10.0.key.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %key_iv.sroa.10.0.key.sroa_idx, align 8
  %66 = ptrtoint ptr %key_iv.sroa.10.0.state.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  %xor4.i.i.3 = xor i64 %67, %65
  store i64 %xor4.i.i.3, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %68 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %state, align 8
  %xor.i.i29.3 = xor i64 %69, %key_iv.sroa.0.sroa.0.0.insert.insert41
  store i64 %xor.i.i29.3, ptr %state, align 8
  %70 = ptrtoint ptr %key_iv.sroa.10.0.state.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  %xor4.i.i32.3 = xor i64 %71, %key_iv.sroa.10.12.insert.insert
  store i64 %xor4.i.i32.3, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %72 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %key, align 8
  %74 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %state, align 8
  %xor.i.i.4 = xor i64 %75, %73
  store i64 %xor.i.i.4, ptr %state, align 8
  %76 = ptrtoint ptr %key_iv.sroa.10.0.key.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %key_iv.sroa.10.0.key.sroa_idx, align 8
  %78 = ptrtoint ptr %key_iv.sroa.10.0.state.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  %xor4.i.i.4 = xor i64 %79, %77
  store i64 %xor4.i.i.4, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %80 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %state, align 8
  %xor.i.i29.4 = xor i64 %81, %key_iv.sroa.0.sroa.0.0.insert.insert41
  store i64 %xor.i.i29.4, ptr %state, align 8
  %82 = ptrtoint ptr %key_iv.sroa.10.0.state.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  %xor4.i.i32.4 = xor i64 %83, %key_iv.sroa.10.12.insert.insert
  store i64 %xor4.i.i32.4, ptr %key_iv.sroa.10.0.state.sroa_idx, align 8
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crypto_aegis128_final(ptr nocapture noundef %state, ptr nocapture noundef %tag_xor, i64 noundef %assoclen, i64 noundef %cryptlen) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i64 %assoclen, 3
  %mul1 = shl i64 %cryptlen, 3
  %0 = tail call i64 @llvm.bswap.i64(i64 %mul)
  %1 = tail call i64 @llvm.bswap.i64(i64 %mul1)
  %arrayidx3 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx3, align 8
  %xor.i = xor i64 %3, %0
  %arrayidx2.i = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx2.i, align 8
  %xor4.i = xor i64 %5, %1
  %arrayidx3.i.i = getelementptr [2 x i64], ptr %state, i32 0, i32 1
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %state, align 8
  %xor.i.i = xor i64 %xor.i, %7
  store i64 %xor.i.i, ptr %state, align 8
  %8 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx3.i.i, align 8
  %xor4.i.i = xor i64 %xor4.i, %9
  store i64 %xor4.i.i, ptr %arrayidx3.i.i, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %state, align 8
  %xor.i.i.1 = xor i64 %xor.i, %11
  store i64 %xor.i.i.1, ptr %state, align 8
  %12 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx3.i.i, align 8
  %xor4.i.i.1 = xor i64 %xor4.i, %13
  store i64 %xor4.i.i.1, ptr %arrayidx3.i.i, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %state, align 8
  %xor.i.i.2 = xor i64 %xor.i, %15
  store i64 %xor.i.i.2, ptr %state, align 8
  %16 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx3.i.i, align 8
  %xor4.i.i.2 = xor i64 %xor4.i, %17
  store i64 %xor4.i.i.2, ptr %arrayidx3.i.i, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %state, align 8
  %xor.i.i.3 = xor i64 %xor.i, %19
  store i64 %xor.i.i.3, ptr %state, align 8
  %20 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx3.i.i, align 8
  %xor4.i.i.3 = xor i64 %xor4.i, %21
  store i64 %xor4.i.i.3, ptr %arrayidx3.i.i, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %state, align 8
  %xor.i.i.4 = xor i64 %xor.i, %23
  store i64 %xor.i.i.4, ptr %state, align 8
  %24 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx3.i.i, align 8
  %xor4.i.i.4 = xor i64 %xor4.i, %25
  store i64 %xor4.i.i.4, ptr %arrayidx3.i.i, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %state, align 8
  %xor.i.i.5 = xor i64 %xor.i, %27
  store i64 %xor.i.i.5, ptr %state, align 8
  %28 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx3.i.i, align 8
  %xor4.i.i.5 = xor i64 %xor4.i, %29
  store i64 %xor4.i.i.5, ptr %arrayidx3.i.i, align 8
  tail call fastcc void @crypto_aegis128_update(ptr noundef %state) #9
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %state, align 8
  %xor.i.i.6 = xor i64 %xor.i, %31
  store i64 %xor.i.i.6, ptr %state, align 8
  %32 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx3.i.i, align 8
  %xor4.i.i.6 = xor i64 %xor4.i, %33
  store i64 %xor4.i.i.6, ptr %arrayidx3.i.i, align 8
  %arrayidx3.i20 = getelementptr [2 x i64], ptr %tag_xor, i32 0, i32 1
  %34 = ptrtoint ptr %tag_xor to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tag_xor, align 8
  %xor.i18 = xor i64 %35, %xor.i.i.6
  store i64 %xor.i18, ptr %tag_xor, align 8
  %36 = load i64, ptr %arrayidx3.i.i, align 8
  %37 = ptrtoint ptr %arrayidx3.i20 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx3.i20, align 8
  %xor4.i21 = xor i64 %38, %36
  store i64 %xor4.i21, ptr %arrayidx3.i20, align 8
  %arrayidx8.1 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx8.1, align 8
  %xor.i18.1 = xor i64 %xor.i18, %40
  store i64 %xor.i18.1, ptr %tag_xor, align 8
  %arrayidx2.i19.1 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 1, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx2.i19.1 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx2.i19.1, align 8
  %xor4.i21.1 = xor i64 %xor4.i21, %42
  store i64 %xor4.i21.1, ptr %arrayidx3.i20, align 8
  %arrayidx8.2 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 2
  %43 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx8.2, align 8
  %xor.i18.2 = xor i64 %xor.i18.1, %44
  store i64 %xor.i18.2, ptr %tag_xor, align 8
  %arrayidx2.i19.2 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 2, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx2.i19.2 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx2.i19.2, align 8
  %xor4.i21.2 = xor i64 %xor4.i21.1, %46
  store i64 %xor4.i21.2, ptr %arrayidx3.i20, align 8
  %47 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx3, align 8
  %xor.i18.3 = xor i64 %xor.i18.2, %48
  store i64 %xor.i18.3, ptr %tag_xor, align 8
  %arrayidx2.i19.3 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 3, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx2.i19.3 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx2.i19.3, align 8
  %xor4.i21.3 = xor i64 %xor4.i21.2, %50
  store i64 %xor4.i21.3, ptr %arrayidx3.i20, align 8
  %arrayidx8.4 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 4
  %51 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx8.4, align 8
  %xor.i18.4 = xor i64 %xor.i18.3, %52
  store i64 %xor.i18.4, ptr %tag_xor, align 8
  %arrayidx2.i19.4 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 4, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx2.i19.4 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx2.i19.4, align 8
  %xor4.i21.4 = xor i64 %xor4.i21.3, %54
  store i64 %xor4.i21.4, ptr %arrayidx3.i20, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_aegis128_update_simd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crypto_aegis128_update(ptr nocapture noundef %state) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %tmp.sroa.0.0.copyload = load i64, ptr %arrayidx, align 8
  %tmp.sroa.12.0.arrayidx.sroa_idx = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 4, i32 0, i32 1
  %1 = ptrtoint ptr %tmp.sroa.12.0.arrayidx.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %1)
  %tmp.sroa.12.0.copyload = load i64, ptr %tmp.sroa.12.0.arrayidx.sroa_idx, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0101 = phi i32 [ 4, %entry ], [ %sub, %for.body.for.body_crit_edge ]
  %arrayidx2 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 %i.0101
  %sub = add nsw i32 %i.0101, -1
  %arrayidx4 = getelementptr [5 x %union.aegis_block], ptr %state, i32 0, i32 %sub
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %idxprom.i = zext i8 %3 to i32
  %arrayidx1.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %arrayidx4, i32 5
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2.i, align 1
  %idxprom3.i = zext i8 %7 to i32
  %arrayidx4.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom3.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 8) #9
  %xor.i = xor i32 %or.i.i, %5
  %arrayidx5.i = getelementptr i8, ptr %arrayidx4, i32 10
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5.i, align 1
  %idxprom6.i = zext i8 %11 to i32
  %arrayidx7.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom6.i
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7.i, align 4
  %or.i117.i = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 16) #9
  %xor9.i = xor i32 %xor.i, %or.i117.i
  %arrayidx10.i = getelementptr i8, ptr %arrayidx4, i32 15
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10.i, align 1
  %idxprom11.i = zext i8 %15 to i32
  %arrayidx12.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom11.i
  %16 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12.i, align 4
  %or.i118.i = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 24) #9
  %xor14.i = xor i32 %xor9.i, %or.i118.i
  %arrayidx15.i = getelementptr i8, ptr %arrayidx4, i32 4
  %18 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx15.i, align 1
  %idxprom16.i = zext i8 %19 to i32
  %arrayidx17.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom16.i
  %20 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx17.i, align 4
  %arrayidx18.i = getelementptr i8, ptr %arrayidx4, i32 9
  %22 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx18.i, align 1
  %idxprom19.i = zext i8 %23 to i32
  %arrayidx20.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom19.i
  %24 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx20.i, align 4
  %or.i119.i = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 8) #9
  %xor22.i = xor i32 %or.i119.i, %21
  %arrayidx23.i = getelementptr i8, ptr %arrayidx4, i32 14
  %26 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx23.i, align 1
  %idxprom24.i = zext i8 %27 to i32
  %arrayidx25.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom24.i
  %28 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx25.i, align 4
  %or.i120.i = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 16) #9
  %xor27.i = xor i32 %xor22.i, %or.i120.i
  %arrayidx28.i = getelementptr i8, ptr %arrayidx4, i32 3
  %30 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx28.i, align 1
  %idxprom29.i = zext i8 %31 to i32
  %arrayidx30.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom29.i
  %32 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx30.i, align 4
  %or.i121.i = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 24) #9
  %xor32.i = xor i32 %xor27.i, %or.i121.i
  %arrayidx33.i = getelementptr i8, ptr %arrayidx4, i32 8
  %34 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx33.i, align 1
  %idxprom34.i = zext i8 %35 to i32
  %arrayidx35.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom34.i
  %36 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx35.i, align 4
  %arrayidx36.i = getelementptr i8, ptr %arrayidx4, i32 13
  %38 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx36.i, align 1
  %idxprom37.i = zext i8 %39 to i32
  %arrayidx38.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom37.i
  %40 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx38.i, align 4
  %or.i122.i = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 8) #9
  %xor40.i = xor i32 %or.i122.i, %37
  %arrayidx41.i = getelementptr i8, ptr %arrayidx4, i32 2
  %42 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx41.i, align 1
  %idxprom42.i = zext i8 %43 to i32
  %arrayidx43.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom42.i
  %44 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx43.i, align 4
  %or.i123.i = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 16) #9
  %xor45.i = xor i32 %xor40.i, %or.i123.i
  %arrayidx46.i = getelementptr i8, ptr %arrayidx4, i32 7
  %46 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx46.i, align 1
  %idxprom47.i = zext i8 %47 to i32
  %arrayidx48.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom47.i
  %48 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx48.i, align 4
  %or.i124.i = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 24) #9
  %xor50.i = xor i32 %xor45.i, %or.i124.i
  %arrayidx51.i = getelementptr i8, ptr %arrayidx4, i32 12
  %50 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx51.i, align 1
  %idxprom52.i = zext i8 %51 to i32
  %arrayidx53.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom52.i
  %52 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx53.i, align 4
  %arrayidx54.i = getelementptr i8, ptr %arrayidx4, i32 1
  %54 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx54.i, align 1
  %idxprom55.i = zext i8 %55 to i32
  %arrayidx56.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom55.i
  %56 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx56.i, align 4
  %or.i125.i = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 8) #9
  %xor58.i = xor i32 %or.i125.i, %53
  %arrayidx59.i = getelementptr i8, ptr %arrayidx4, i32 6
  %58 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx59.i, align 1
  %idxprom60.i = zext i8 %59 to i32
  %arrayidx61.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom60.i
  %60 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx61.i, align 4
  %or.i126.i = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 16) #9
  %xor63.i = xor i32 %xor58.i, %or.i126.i
  %arrayidx64.i = getelementptr i8, ptr %arrayidx4, i32 11
  %62 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx64.i, align 1
  %idxprom65.i = zext i8 %63 to i32
  %arrayidx66.i = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom65.i
  %64 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx66.i, align 4
  %or.i127.i = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 24) #9
  %xor68.i = xor i32 %xor63.i, %or.i127.i
  %66 = tail call i32 @llvm.bswap.i32(i32 %xor14.i) #9
  %67 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx2, align 8
  %xor70.i = xor i32 %68, %66
  store i32 %xor70.i, ptr %arrayidx2, align 8
  %69 = tail call i32 @llvm.bswap.i32(i32 %xor32.i) #9
  %arrayidx72.i = getelementptr [4 x i32], ptr %arrayidx2, i32 0, i32 1
  %70 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx72.i, align 4
  %xor73.i = xor i32 %71, %69
  store i32 %xor73.i, ptr %arrayidx72.i, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %xor50.i) #9
  %arrayidx75.i = getelementptr [4 x i32], ptr %arrayidx2, i32 0, i32 2
  %73 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx75.i, align 8
  %xor76.i = xor i32 %74, %72
  store i32 %xor76.i, ptr %arrayidx75.i, align 8
  %75 = tail call i32 @llvm.bswap.i32(i32 %xor68.i) #9
  %arrayidx78.i = getelementptr [4 x i32], ptr %arrayidx2, i32 0, i32 3
  %76 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx78.i, align 4
  %xor79.i = xor i32 %77, %75
  store i32 %xor79.i, ptr %arrayidx78.i, align 4
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %tmp.sroa.0.sroa.11.0.extract.trunc = trunc i64 %tmp.sroa.0.0.copyload to i32
  %78 = lshr i32 %tmp.sroa.0.sroa.11.0.extract.trunc, 8
  %79 = lshr i32 %tmp.sroa.0.sroa.11.0.extract.trunc, 16
  %80 = lshr i32 %tmp.sroa.0.sroa.11.0.extract.trunc, 24
  %tmp.sroa.0.sroa.7.0.extract.shift = lshr i64 %tmp.sroa.0.0.copyload, 32
  %tmp.sroa.0.sroa.7.0.extract.trunc = trunc i64 %tmp.sroa.0.sroa.7.0.extract.shift to i32
  %tmp.sroa.0.sroa.6.0.extract.shift = lshr i64 %tmp.sroa.0.0.copyload, 40
  %tmp.sroa.0.sroa.6.0.extract.trunc = trunc i64 %tmp.sroa.0.sroa.6.0.extract.shift to i32
  %tmp.sroa.0.sroa.5.0.extract.shift = lshr i64 %tmp.sroa.0.0.copyload, 48
  %tmp.sroa.0.sroa.5.0.extract.trunc = trunc i64 %tmp.sroa.0.sroa.5.0.extract.shift to i32
  %tmp.sroa.0.sroa.0.0.extract.shift = lshr i64 %tmp.sroa.0.0.copyload, 56
  %tmp.sroa.0.sroa.0.0.extract.trunc = trunc i64 %tmp.sroa.0.sroa.0.0.extract.shift to i32
  %arrayidx1.i21 = getelementptr i32, ptr @crypto_ft_tab, i32 %tmp.sroa.0.sroa.0.0.extract.trunc
  %81 = ptrtoint ptr %arrayidx1.i21 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx1.i21, align 4
  %idxprom3.i23 = and i32 %79, 255
  %arrayidx4.i24 = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom3.i23
  %83 = ptrtoint ptr %arrayidx4.i24 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx4.i24, align 4
  %or.i.i25 = tail call i32 @llvm.fshl.i32(i32 %84, i32 %84, i32 8) #9
  %xor.i26 = xor i32 %or.i.i25, %82
  %tmp.sroa.12.10.extract.shift = lshr i64 %tmp.sroa.12.0.copyload, 40
  %tmp.sroa.12.10.extract.trunc = trunc i64 %tmp.sroa.12.10.extract.shift to i32
  %idxprom6.i28 = and i32 %tmp.sroa.12.10.extract.trunc, 255
  %arrayidx7.i29 = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom6.i28
  %85 = ptrtoint ptr %arrayidx7.i29 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx7.i29, align 4
  %or.i117.i30 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 16) #9
  %xor9.i31 = xor i32 %xor.i26, %or.i117.i30
  %tmp.sroa.12.15.extract.trunc = trunc i64 %tmp.sroa.12.0.copyload to i32
  %idxprom11.i33 = and i32 %tmp.sroa.12.15.extract.trunc, 255
  %arrayidx12.i34 = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom11.i33
  %87 = ptrtoint ptr %arrayidx12.i34 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx12.i34, align 4
  %or.i118.i35 = tail call i32 @llvm.fshl.i32(i32 %88, i32 %88, i32 24) #9
  %xor14.i36 = xor i32 %xor9.i31, %or.i118.i35
  %arrayidx17.i39 = getelementptr i32, ptr @crypto_ft_tab, i32 %80
  %89 = ptrtoint ptr %arrayidx17.i39 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx17.i39, align 4
  %tmp.sroa.12.9.extract.shift = lshr i64 %tmp.sroa.12.0.copyload, 48
  %tmp.sroa.12.9.extract.trunc = trunc i64 %tmp.sroa.12.9.extract.shift to i32
  %idxprom19.i41 = and i32 %tmp.sroa.12.9.extract.trunc, 255
  %arrayidx20.i42 = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom19.i41
  %91 = ptrtoint ptr %arrayidx20.i42 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx20.i42, align 4
  %or.i119.i43 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 8) #9
  %xor22.i44 = xor i32 %or.i119.i43, %90
  %93 = lshr i32 %tmp.sroa.12.15.extract.trunc, 8
  %idxprom24.i46 = and i32 %93, 255
  %arrayidx25.i47 = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom24.i46
  %94 = ptrtoint ptr %arrayidx25.i47 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx25.i47, align 4
  %or.i120.i48 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 16) #9
  %xor27.i49 = xor i32 %xor22.i44, %or.i120.i48
  %idxprom29.i51 = and i32 %tmp.sroa.0.sroa.7.0.extract.trunc, 255
  %arrayidx30.i52 = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom29.i51
  %96 = ptrtoint ptr %arrayidx30.i52 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx30.i52, align 4
  %or.i121.i53 = tail call i32 @llvm.fshl.i32(i32 %97, i32 %97, i32 24) #9
  %xor32.i54 = xor i32 %xor27.i49, %or.i121.i53
  %tmp.sroa.12.8.extract.shift = lshr i64 %tmp.sroa.12.0.copyload, 56
  %tmp.sroa.12.8.extract.trunc = trunc i64 %tmp.sroa.12.8.extract.shift to i32
  %arrayidx35.i57 = getelementptr i32, ptr @crypto_ft_tab, i32 %tmp.sroa.12.8.extract.trunc
  %98 = ptrtoint ptr %arrayidx35.i57 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx35.i57, align 4
  %100 = lshr i32 %tmp.sroa.12.15.extract.trunc, 16
  %idxprom37.i59 = and i32 %100, 255
  %arrayidx38.i60 = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom37.i59
  %101 = ptrtoint ptr %arrayidx38.i60 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx38.i60, align 4
  %or.i122.i61 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 8) #9
  %xor40.i62 = xor i32 %or.i122.i61, %99
  %idxprom42.i64 = and i32 %tmp.sroa.0.sroa.6.0.extract.trunc, 255
  %arrayidx43.i65 = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom42.i64
  %103 = ptrtoint ptr %arrayidx43.i65 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx43.i65, align 4
  %or.i123.i66 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 16) #9
  %xor45.i67 = xor i32 %xor40.i62, %or.i123.i66
  %idxprom47.i69 = and i32 %tmp.sroa.0.sroa.11.0.extract.trunc, 255
  %arrayidx48.i70 = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom47.i69
  %105 = ptrtoint ptr %arrayidx48.i70 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx48.i70, align 4
  %or.i124.i71 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 24) #9
  %xor50.i72 = xor i32 %xor45.i67, %or.i124.i71
  %107 = lshr i32 %tmp.sroa.12.15.extract.trunc, 24
  %arrayidx53.i75 = getelementptr i32, ptr @crypto_ft_tab, i32 %107
  %108 = ptrtoint ptr %arrayidx53.i75 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx53.i75, align 4
  %idxprom55.i77 = and i32 %tmp.sroa.0.sroa.5.0.extract.trunc, 255
  %arrayidx56.i78 = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom55.i77
  %110 = ptrtoint ptr %arrayidx56.i78 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx56.i78, align 4
  %or.i125.i79 = tail call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 8) #9
  %xor58.i80 = xor i32 %or.i125.i79, %109
  %idxprom60.i82 = and i32 %78, 255
  %arrayidx61.i83 = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom60.i82
  %112 = ptrtoint ptr %arrayidx61.i83 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx61.i83, align 4
  %or.i126.i84 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 16) #9
  %xor63.i85 = xor i32 %xor58.i80, %or.i126.i84
  %tmp.sroa.12.11.extract.shift = lshr i64 %tmp.sroa.12.0.copyload, 32
  %tmp.sroa.12.11.extract.trunc = trunc i64 %tmp.sroa.12.11.extract.shift to i32
  %idxprom65.i87 = and i32 %tmp.sroa.12.11.extract.trunc, 255
  %arrayidx66.i88 = getelementptr i32, ptr @crypto_ft_tab, i32 %idxprom65.i87
  %114 = ptrtoint ptr %arrayidx66.i88 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx66.i88, align 4
  %or.i127.i89 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 24) #9
  %xor68.i90 = xor i32 %xor63.i85, %or.i127.i89
  %116 = tail call i32 @llvm.bswap.i32(i32 %xor14.i36) #9
  %117 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %state, align 8
  %xor70.i91 = xor i32 %118, %116
  store i32 %xor70.i91, ptr %state, align 8
  %119 = tail call i32 @llvm.bswap.i32(i32 %xor32.i54) #9
  %arrayidx72.i92 = getelementptr [4 x i32], ptr %state, i32 0, i32 1
  %120 = ptrtoint ptr %arrayidx72.i92 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx72.i92, align 4
  %xor73.i93 = xor i32 %121, %119
  store i32 %xor73.i93, ptr %arrayidx72.i92, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %xor50.i72) #9
  %arrayidx75.i95 = getelementptr [4 x i32], ptr %state, i32 0, i32 2
  %123 = ptrtoint ptr %arrayidx75.i95 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx75.i95, align 8
  %xor76.i96 = xor i32 %124, %122
  store i32 %xor76.i96, ptr %arrayidx75.i95, align 8
  %125 = tail call i32 @llvm.bswap.i32(i32 %xor68.i90) #9
  %arrayidx78.i98 = getelementptr [4 x i32], ptr %state, i32 0, i32 3
  %126 = ptrtoint ptr %arrayidx78.i98 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx78.i98, align 4
  %xor79.i99 = xor i32 %127, %125
  store i32 %xor79.i99, ptr %arrayidx78.i98, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_aegis128_decrypt_generic(ptr noundef %req) #4 align 64 {
entry:
  %msg.i = alloca %union.aegis_block, align 8
  %tag = alloca %union.aegis_block, align 8
  %walk = alloca %struct.skcipher_walk, align 4
  %state = alloca %struct.aegis_state, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tag) #9
  %2 = call ptr @memset(ptr %tag, i32 255, i32 16)
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 128
  %cryptlen2 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %cryptlen2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cryptlen2, align 4
  %sub = sub i32 %6, %4
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %walk) #9
  %7 = call ptr @memset(ptr %walk, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %state) #9
  %8 = call ptr @memset(ptr %state, i32 255, i32 80)
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %9 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %assoclen, align 8
  %add = add i32 %12, %sub
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tag, ptr noundef %10, i32 noundef %add, i32 noundef %4, i32 noundef 0) #9
  %call4 = call i32 @skcipher_walk_aead_decrypt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #9
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iv, align 32
  call fastcc void @crypto_aegis128_init(ptr noundef nonnull %state, ptr noundef %__crt_ctx.i.i, ptr noundef %14)
  %15 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %src, align 4
  %17 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %assoclen, align 8
  call fastcc void @crypto_aegis128_process_ad(ptr noundef nonnull %state, ptr noundef %16, i32 noundef %18, i1 noundef zeroext false)
  %nbytes.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 3
  %19 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nbytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not1.i = icmp eq i32 %20, 0
  br i1 %tobool.not1.i, label %entry.crypto_aegis128_process_crypt.exit_crit_edge, label %while.body.lr.ph.i

entry.crypto_aegis128_process_crypt.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_process_crypt.exit

while.body.lr.ph.i:                               ; preds = %entry
  %total.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %stride.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 14
  %addr.i = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  %addr3.i = getelementptr inbounds %struct.anon.77, ptr %walk, i32 0, i32 1
  %arrayidx15.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 2
  %tmp.sroa.35.0.arrayidx15.sroa_idx.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 2, i32 0, i32 1
  %arrayidx17.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 3
  %arrayidx2.i86.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 3, i32 0, i32 1
  %arrayidx19.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 4
  %arrayidx2.i90.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 4, i32 0, i32 1
  %arrayidx21.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 1
  %arrayidx2.i94.i = getelementptr inbounds [5 x %union.aegis_block], ptr %state, i32 0, i32 1, i32 0, i32 1
  %arrayidx3.i.i116.i = getelementptr inbounds [2 x i64], ptr %state, i32 0, i32 1
  %arrayidx3.i111.i = getelementptr inbounds [2 x i64], ptr %msg.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %crypto_aegis128_decrypt_chunk.exit.while.body.i_crit_edge, %while.body.lr.ph.i
  %21 = phi i32 [ %20, %while.body.lr.ph.i ], [ %120, %crypto_aegis128_decrypt_chunk.exit.while.body.i_crit_edge ]
  %22 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %total.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i = icmp ult i32 %21, %23
  br i1 %cmp.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stride.i, align 4
  %neg.i = sub i32 0, %25
  %and.i = and i32 %21, %neg.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %nbytes1.0.i = phi i32 [ %and.i, %if.then.i ], [ %21, %while.body.i.if.end.i_crit_edge ]
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr.i, align 4
  %28 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr3.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = ptrtoint ptr %27 to i32
  %32 = or i32 %30, %31
  %33 = and i32 %32, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %34 = icmp eq i32 %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %nbytes1.0.i)
  %cmp3298.i = icmp ugt i32 %nbytes1.0.i, 15
  br i1 %34, label %while.cond.preheader.i, label %while.cond11.preheader.i

while.cond11.preheader.i:                         ; preds = %if.end.i
  br i1 %cmp3298.i, label %while.cond11.preheader.i.while.body13.i_crit_edge, label %while.cond11.preheader.i.if.end.i55_crit_edge

while.cond11.preheader.i.if.end.i55_crit_edge:    ; preds = %while.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55

while.cond11.preheader.i.while.body13.i_crit_edge: ; preds = %while.cond11.preheader.i
  br label %while.body13.i

while.cond.preheader.i:                           ; preds = %if.end.i
  br i1 %cmp3298.i, label %while.cond.preheader.i.while.body.i54_crit_edge, label %while.cond.preheader.i.if.end.i55_crit_edge

while.cond.preheader.i.if.end.i55_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55

while.cond.preheader.i.while.body.i54_crit_edge:  ; preds = %while.cond.preheader.i
  br label %while.body.i54

while.body.i54:                                   ; preds = %while.body.i54.while.body.i54_crit_edge, %while.cond.preheader.i.while.body.i54_crit_edge
  %dst.addr.0301.i = phi ptr [ %add.ptr10.i, %while.body.i54.while.body.i54_crit_edge ], [ %27, %while.cond.preheader.i.while.body.i54_crit_edge ]
  %src.addr.0300.i = phi ptr [ %add.ptr.i, %while.body.i54.while.body.i54_crit_edge ], [ %29, %while.cond.preheader.i.while.body.i54_crit_edge ]
  %size.addr.0299.i = phi i32 [ %sub.i, %while.body.i54.while.body.i54_crit_edge ], [ %nbytes1.0.i, %while.cond.preheader.i.while.body.i54_crit_edge ]
  %35 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %tmp.sroa.0.0.copyload.i = load i64, ptr %arrayidx15.i, align 8
  %36 = ptrtoint ptr %tmp.sroa.35.0.arrayidx15.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %tmp.sroa.35.0.copyload.i = load i64, ptr %tmp.sroa.35.0.arrayidx15.sroa_idx.i, align 8
  %37 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx17.i, align 8
  %and.i.i = and i64 %38, %tmp.sroa.0.0.copyload.i
  %39 = ptrtoint ptr %arrayidx2.i86.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx2.i86.i, align 8
  %and4.i.i = and i64 %40, %tmp.sroa.35.0.copyload.i
  %41 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx19.i, align 8
  %xor.i.i = xor i64 %42, %and.i.i
  %43 = ptrtoint ptr %arrayidx2.i90.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx2.i90.i, align 8
  %xor4.i.i = xor i64 %44, %and4.i.i
  %45 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx21.i, align 8
  %xor.i77.i = xor i64 %xor.i.i, %46
  %47 = ptrtoint ptr %arrayidx2.i94.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx2.i94.i, align 8
  %xor4.i80.i = xor i64 %xor4.i.i, %48
  %49 = ptrtoint ptr %src.addr.0300.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %src.addr.0300.i, align 8
  %xor.i81.i = xor i64 %xor.i77.i, %50
  %arrayidx2.i82.i = getelementptr [2 x i64], ptr %src.addr.0300.i, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx2.i82.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx2.i82.i, align 8
  %xor4.i84.i = xor i64 %xor4.i80.i, %52
  call fastcc void @crypto_aegis128_update(ptr noundef nonnull %state) #9
  %53 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %state, align 8
  %xor.i.i.i = xor i64 %54, %xor.i81.i
  store i64 %xor.i.i.i, ptr %state, align 8
  %55 = ptrtoint ptr %arrayidx3.i.i116.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx3.i.i116.i, align 8
  %xor4.i.i.i = xor i64 %56, %xor4.i84.i
  store i64 %xor4.i.i.i, ptr %arrayidx3.i.i116.i, align 8
  %57 = ptrtoint ptr %dst.addr.0301.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %xor.i81.i, ptr %dst.addr.0301.i, align 8
  %tmp.sroa.35.0.dst.addr.0.sroa_idx.i = getelementptr inbounds i8, ptr %dst.addr.0301.i, i32 8
  %58 = ptrtoint ptr %tmp.sroa.35.0.dst.addr.0.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %xor4.i84.i, ptr %tmp.sroa.35.0.dst.addr.0.sroa_idx.i, align 8
  %sub.i = add i32 %size.addr.0299.i, -16
  %add.ptr.i = getelementptr i8, ptr %src.addr.0300.i, i32 16
  %add.ptr10.i = getelementptr i8, ptr %dst.addr.0301.i, i32 16
  %cmp3.i = icmp ugt i32 %sub.i, 15
  br i1 %cmp3.i, label %while.body.i54.while.body.i54_crit_edge, label %while.body.i54.if.end.i55_crit_edge

while.body.i54.if.end.i55_crit_edge:              ; preds = %while.body.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55

while.body.i54.while.body.i54_crit_edge:          ; preds = %while.body.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i54

while.body13.i:                                   ; preds = %while.body13.i.while.body13.i_crit_edge, %while.cond11.preheader.i.while.body13.i_crit_edge
  %dst.addr.1295.i = phi ptr [ %add.ptr25.i, %while.body13.i.while.body13.i_crit_edge ], [ %27, %while.cond11.preheader.i.while.body13.i_crit_edge ]
  %src.addr.1294.i = phi ptr [ %add.ptr24.i, %while.body13.i.while.body13.i_crit_edge ], [ %29, %while.cond11.preheader.i.while.body13.i_crit_edge ]
  %size.addr.1293.i = phi i32 [ %sub23.i, %while.body13.i.while.body13.i_crit_edge ], [ %nbytes1.0.i, %while.cond11.preheader.i.while.body13.i_crit_edge ]
  %59 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %tmp.sroa.0.0.copyload136.i = load i64, ptr %arrayidx15.i, align 8
  %60 = ptrtoint ptr %tmp.sroa.35.0.arrayidx15.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %tmp.sroa.35.0.copyload141.i = load i64, ptr %tmp.sroa.35.0.arrayidx15.sroa_idx.i, align 8
  %61 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx17.i, align 8
  %and.i85.i = and i64 %62, %tmp.sroa.0.0.copyload136.i
  %63 = ptrtoint ptr %arrayidx2.i86.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx2.i86.i, align 8
  %and4.i88.i = and i64 %64, %tmp.sroa.35.0.copyload141.i
  %65 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx19.i, align 8
  %xor.i89.i = xor i64 %66, %and.i85.i
  %67 = ptrtoint ptr %arrayidx2.i90.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx2.i90.i, align 8
  %xor4.i92.i = xor i64 %68, %and4.i88.i
  %69 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx21.i, align 8
  %xor.i93.i = xor i64 %xor.i89.i, %70
  %tmp.sroa.0.sroa.0.0.extract.shift191.i = lshr i64 %xor.i93.i, 32
  %tmp.sroa.0.sroa.0.0.extract.trunc192.i = trunc i64 %tmp.sroa.0.sroa.0.0.extract.shift191.i to i32
  %tmp.sroa.0.sroa.33.0.extract.trunc260.i = trunc i64 %xor.i93.i to i32
  %71 = ptrtoint ptr %arrayidx2.i94.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx2.i94.i, align 8
  %xor4.i96.i = xor i64 %xor4.i92.i, %72
  %incdec.ptr.i.i = getelementptr i32, ptr %src.addr.1294.i, i32 1
  %73 = ptrtoint ptr %src.addr.1294.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %src.addr.1294.i, align 4
  %xor.i113.i = xor i32 %74, %tmp.sroa.0.sroa.0.0.extract.trunc192.i
  %incdec.ptr.1.i.i = getelementptr i32, ptr %src.addr.1294.i, i32 2
  %75 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %incdec.ptr.i.i, align 4
  %xor.1.i.i = xor i32 %76, %tmp.sroa.0.sroa.33.0.extract.trunc260.i
  %incdec.ptr.2.i.i = getelementptr i32, ptr %src.addr.1294.i, i32 3
  %77 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %incdec.ptr.1.i.i, align 4
  %tmp.sroa.35.8.extract.shift.i = lshr i64 %xor4.i96.i, 32
  %tmp.sroa.35.8.extract.trunc.i = trunc i64 %tmp.sroa.35.8.extract.shift.i to i32
  %xor.2.i.i = xor i32 %78, %tmp.sroa.35.8.extract.trunc.i
  %tmp.sroa.35.8.insert.ext.i = zext i32 %xor.2.i.i to i64
  %tmp.sroa.35.8.insert.shift.i = shl nuw i64 %tmp.sroa.35.8.insert.ext.i, 32
  %79 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %incdec.ptr.2.i.i, align 4
  %tmp.sroa.35.12.extract.trunc.i = trunc i64 %xor4.i96.i to i32
  %xor.3.i.i = xor i32 %80, %tmp.sroa.35.12.extract.trunc.i
  %tmp.sroa.35.12.insert.ext.i = zext i32 %xor.3.i.i to i64
  %tmp.sroa.35.12.insert.insert.i = or i64 %tmp.sroa.35.8.insert.shift.i, %tmp.sroa.35.12.insert.ext.i
  call fastcc void @crypto_aegis128_update(ptr noundef nonnull %state) #9
  %tmp.sroa.0.sroa.33.0.insert.ext279.i = zext i32 %xor.1.i.i to i64
  %tmp.sroa.0.sroa.0.0.insert.ext219.i = zext i32 %xor.i113.i to i64
  %tmp.sroa.0.sroa.0.0.insert.shift220.i = shl nuw i64 %tmp.sroa.0.sroa.0.0.insert.ext219.i, 32
  %tmp.sroa.0.sroa.0.0.insert.insert222.i = or i64 %tmp.sroa.0.sroa.0.0.insert.shift220.i, %tmp.sroa.0.sroa.33.0.insert.ext279.i
  %81 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %state, align 8
  %xor.i.i114.i = xor i64 %82, %tmp.sroa.0.sroa.0.0.insert.insert222.i
  store i64 %xor.i.i114.i, ptr %state, align 8
  %83 = ptrtoint ptr %arrayidx3.i.i116.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx3.i.i116.i, align 8
  %xor4.i.i117.i = xor i64 %84, %tmp.sroa.35.12.insert.insert.i
  store i64 %xor4.i.i117.i, ptr %arrayidx3.i.i116.i, align 8
  %85 = ptrtoint ptr %dst.addr.1295.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 %tmp.sroa.0.sroa.0.0.insert.insert222.i, ptr %dst.addr.1295.i, align 1
  %tmp.sroa.35.0.dst.addr.1.sroa_idx.i = getelementptr inbounds i8, ptr %dst.addr.1295.i, i32 8
  %86 = ptrtoint ptr %tmp.sroa.35.0.dst.addr.1.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 8)
  store i64 %tmp.sroa.35.12.insert.insert.i, ptr %tmp.sroa.35.0.dst.addr.1.sroa_idx.i, align 1
  %sub23.i = add i32 %size.addr.1293.i, -16
  %add.ptr24.i = getelementptr i8, ptr %src.addr.1294.i, i32 16
  %add.ptr25.i = getelementptr i8, ptr %dst.addr.1295.i, i32 16
  %cmp12.i = icmp ugt i32 %sub23.i, 15
  br i1 %cmp12.i, label %while.body13.i.while.body13.i_crit_edge, label %while.body13.i.if.end.i55_crit_edge

while.body13.i.if.end.i55_crit_edge:              ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i55

while.body13.i.while.body13.i_crit_edge:          ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body13.i

if.end.i55:                                       ; preds = %while.body13.i.if.end.i55_crit_edge, %while.body.i54.if.end.i55_crit_edge, %while.cond.preheader.i.if.end.i55_crit_edge, %while.cond11.preheader.i.if.end.i55_crit_edge
  %size.addr.2.i = phi i32 [ %nbytes1.0.i, %while.cond.preheader.i.if.end.i55_crit_edge ], [ %nbytes1.0.i, %while.cond11.preheader.i.if.end.i55_crit_edge ], [ %sub.i, %while.body.i54.if.end.i55_crit_edge ], [ %sub23.i, %while.body13.i.if.end.i55_crit_edge ]
  %src.addr.2.i = phi ptr [ %29, %while.cond.preheader.i.if.end.i55_crit_edge ], [ %29, %while.cond11.preheader.i.if.end.i55_crit_edge ], [ %add.ptr.i, %while.body.i54.if.end.i55_crit_edge ], [ %add.ptr24.i, %while.body13.i.if.end.i55_crit_edge ]
  %dst.addr.2.i = phi ptr [ %27, %while.cond.preheader.i.if.end.i55_crit_edge ], [ %27, %while.cond11.preheader.i.if.end.i55_crit_edge ], [ %add.ptr10.i, %while.body.i54.if.end.i55_crit_edge ], [ %add.ptr25.i, %while.body13.i.if.end.i55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.2.i)
  %cmp27.not.i = icmp eq i32 %size.addr.2.i, 0
  br i1 %cmp27.not.i, label %if.end.i55.crypto_aegis128_decrypt_chunk.exit_crit_edge, label %if.then28.i

if.end.i55.crypto_aegis128_decrypt_chunk.exit_crit_edge: ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_decrypt_chunk.exit

if.then28.i:                                      ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #9
  %87 = call ptr @memset(ptr %msg.i, i32 0, i32 16)
  %88 = call ptr @memcpy(ptr %msg.i, ptr %src.addr.2.i, i32 %size.addr.2.i)
  %89 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %tmp.sroa.0.0.copyload137.i = load i64, ptr %arrayidx15.i, align 8
  %90 = ptrtoint ptr %tmp.sroa.35.0.arrayidx15.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %tmp.sroa.35.0.copyload142.i = load i64, ptr %tmp.sroa.35.0.arrayidx15.sroa_idx.i, align 8
  %91 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx17.i, align 8
  %and.i97.i = and i64 %92, %tmp.sroa.0.0.copyload137.i
  %93 = ptrtoint ptr %arrayidx2.i86.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx2.i86.i, align 8
  %and4.i100.i = and i64 %94, %tmp.sroa.35.0.copyload142.i
  %95 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %arrayidx19.i, align 8
  %xor.i101.i = xor i64 %96, %and.i97.i
  %97 = ptrtoint ptr %arrayidx2.i90.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx2.i90.i, align 8
  %xor4.i104.i = xor i64 %98, %and4.i100.i
  %99 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx21.i, align 8
  %xor.i105.i = xor i64 %xor.i101.i, %100
  %101 = ptrtoint ptr %arrayidx2.i94.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx2.i94.i, align 8
  %xor4.i108.i = xor i64 %xor4.i104.i, %102
  %103 = ptrtoint ptr %msg.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %msg.i, align 8
  %xor.i109.i = xor i64 %xor.i105.i, %104
  store i64 %xor.i109.i, ptr %msg.i, align 8
  %105 = ptrtoint ptr %arrayidx3.i111.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx3.i111.i, align 8
  %xor4.i112.i = xor i64 %xor4.i108.i, %106
  store i64 %xor4.i112.i, ptr %arrayidx3.i111.i, align 8
  %add.ptr39.i = getelementptr i8, ptr %msg.i, i32 %size.addr.2.i
  %sub40.i = sub nuw nsw i32 16, %size.addr.2.i
  %107 = call ptr @memset(ptr %add.ptr39.i, i32 0, i32 %sub40.i)
  call fastcc void @crypto_aegis128_update(ptr noundef nonnull %state) #9
  %108 = ptrtoint ptr %msg.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %msg.i, align 8
  %110 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %state, align 8
  %xor.i.i118.i = xor i64 %111, %109
  store i64 %xor.i.i118.i, ptr %state, align 8
  %112 = ptrtoint ptr %arrayidx3.i111.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %arrayidx3.i111.i, align 8
  %114 = ptrtoint ptr %arrayidx3.i.i116.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx3.i.i116.i, align 8
  %xor4.i.i121.i = xor i64 %115, %113
  store i64 %xor4.i.i121.i, ptr %arrayidx3.i.i116.i, align 8
  %116 = call ptr @memcpy(ptr %dst.addr.2.i, ptr %msg.i, i32 %size.addr.2.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #9
  br label %crypto_aegis128_decrypt_chunk.exit

crypto_aegis128_decrypt_chunk.exit:               ; preds = %if.then28.i, %if.end.i55.crypto_aegis128_decrypt_chunk.exit_crit_edge
  %117 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nbytes.i, align 4
  %sub5.i = sub i32 %118, %nbytes1.0.i
  %call.i = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub5.i) #9
  %119 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %nbytes.i, align 4
  %tobool.not.i = icmp eq i32 %120, 0
  br i1 %tobool.not.i, label %crypto_aegis128_decrypt_chunk.exit.crypto_aegis128_process_crypt.exit_crit_edge, label %crypto_aegis128_decrypt_chunk.exit.while.body.i_crit_edge

crypto_aegis128_decrypt_chunk.exit.while.body.i_crit_edge: ; preds = %crypto_aegis128_decrypt_chunk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

crypto_aegis128_decrypt_chunk.exit.crypto_aegis128_process_crypt.exit_crit_edge: ; preds = %crypto_aegis128_decrypt_chunk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_process_crypt.exit

crypto_aegis128_process_crypt.exit:               ; preds = %crypto_aegis128_decrypt_chunk.exit.crypto_aegis128_process_crypt.exit_crit_edge, %entry.crypto_aegis128_process_crypt.exit_crit_edge
  %121 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %assoclen, align 8
  %conv = zext i32 %122 to i64
  %conv9 = zext i32 %sub to i64
  call fastcc void @crypto_aegis128_final(ptr noundef nonnull %state, ptr noundef nonnull %tag, i64 noundef %conv, i64 noundef %conv9)
  %call.i56 = call i32 @__crypto_memneq(ptr noundef nonnull %tag, ptr noundef nonnull @crypto_aegis128_decrypt_generic.zeros, i32 noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.not.i.not = icmp eq i32 %call.i56, 0
  br i1 %cmp.not.i.not, label %crypto_aegis128_process_crypt.exit.cleanup_crit_edge, label %if.then, !prof !41

crypto_aegis128_process_crypt.exit.cleanup_crit_edge: ; preds = %crypto_aegis128_process_crypt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %crypto_aegis128_process_crypt.exit
  %call14 = call i32 @skcipher_walk_aead_decrypt(ptr noundef nonnull %walk, ptr noundef %req, i1 noundef zeroext false) #9
  %123 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %nbytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not1.i36 = icmp eq i32 %124, 0
  br i1 %tobool.not1.i36, label %if.then.crypto_aegis128_process_crypt.exit52_crit_edge, label %while.body.lr.ph.i41

if.then.crypto_aegis128_process_crypt.exit52_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_process_crypt.exit52

while.body.lr.ph.i41:                             ; preds = %if.then
  %total.i37 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 5
  %stride.i38 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 14
  %addr.i39 = getelementptr inbounds %struct.skcipher_walk, ptr %walk, i32 0, i32 1, i32 0, i32 1
  br label %while.body.i43

while.body.i43:                                   ; preds = %if.end.i51.while.body.i43_crit_edge, %while.body.lr.ph.i41
  %125 = phi i32 [ %124, %while.body.lr.ph.i41 ], [ %136, %if.end.i51.while.body.i43_crit_edge ]
  %126 = ptrtoint ptr %total.i37 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %total.i37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %127)
  %cmp.i42 = icmp ult i32 %125, %127
  br i1 %cmp.i42, label %if.then.i46, label %while.body.i43.if.end.i51_crit_edge

while.body.i43.if.end.i51_crit_edge:              ; preds = %while.body.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i51

if.then.i46:                                      ; preds = %while.body.i43
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %stride.i38 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %stride.i38, align 4
  %neg.i44 = sub i32 0, %129
  %and.i45 = and i32 %125, %neg.i44
  br label %if.end.i51

if.end.i51:                                       ; preds = %if.then.i46, %while.body.i43.if.end.i51_crit_edge
  %nbytes1.0.i47 = phi i32 [ %and.i45, %if.then.i46 ], [ %125, %while.body.i43.if.end.i51_crit_edge ]
  %130 = ptrtoint ptr %addr.i39 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %addr.i39, align 4
  %132 = call ptr @memset(ptr %131, i32 0, i32 %nbytes1.0.i47)
  call void asm sideeffect "", "r,~{memory}"(ptr %131) #9, !srcloc !42
  %133 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %nbytes.i, align 4
  %sub5.i48 = sub i32 %134, %nbytes1.0.i47
  %call.i49 = call i32 @skcipher_walk_done(ptr noundef nonnull %walk, i32 noundef %sub5.i48) #9
  %135 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %nbytes.i, align 4
  %tobool.not.i50 = icmp eq i32 %136, 0
  br i1 %tobool.not.i50, label %if.end.i51.crypto_aegis128_process_crypt.exit52_crit_edge, label %if.end.i51.while.body.i43_crit_edge

if.end.i51.while.body.i43_crit_edge:              ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i43

if.end.i51.crypto_aegis128_process_crypt.exit52_crit_edge: ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_aegis128_process_crypt.exit52

crypto_aegis128_process_crypt.exit52:             ; preds = %if.end.i51.crypto_aegis128_process_crypt.exit52_crit_edge, %if.then.crypto_aegis128_process_crypt.exit52_crit_edge
  %137 = call ptr @memset(ptr %tag, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tag) #9, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %crypto_aegis128_process_crypt.exit52, %crypto_aegis128_process_crypt.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -74, %crypto_aegis128_process_crypt.exit52 ], [ 0, %crypto_aegis128_process_crypt.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %state) #9
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %walk) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tag) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skcipher_walk_aead_decrypt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_aegis128_decrypt_chunk_simd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !19, !20, !22, !24, !26, !28}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_aegis128__239_573_crypto_aegis128_module_init4, !1, !"__initcall__kmod_aegis128__239_573_crypto_aegis128_module_init4", i1 false, i1 false}
!1 = !{!"../crypto/aegis128-core.c", i32 573, i32 1}
!2 = !{ptr @__exitcall_crypto_aegis128_module_exit, !3, !"__exitcall_crypto_aegis128_module_exit", i1 false, i1 false}
!3 = !{!"../crypto/aegis128-core.c", i32 574, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../crypto/aegis128-core.c", i32 576, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author242, !8, !"__UNIQUE_ID_author242", i1 false, i1 false}
!8 = !{!"../crypto/aegis128-core.c", i32 577, i32 1}
!9 = !{ptr @__UNIQUE_ID_description243, !10, !"__UNIQUE_ID_description243", i1 false, i1 false}
!10 = !{!"../crypto/aegis128-core.c", i32 578, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace244, !12, !"__UNIQUE_ID_alias_userspace244", i1 false, i1 false}
!12 = !{!"../crypto/aegis128-core.c", i32 579, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto245, !12, !"__UNIQUE_ID_alias_crypto245", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias_userspace246, !15, !"__UNIQUE_ID_alias_userspace246", i1 false, i1 false}
!15 = !{!"../crypto/aegis128-core.c", i32 580, i32 1}
!16 = !{ptr @__UNIQUE_ID_alias_crypto247, !15, !"__UNIQUE_ID_alias_crypto247", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias_userspace248, !18, !"__UNIQUE_ID_alias_userspace248", i1 false, i1 false}
!18 = !{!"../crypto/aegis128-core.c", i32 581, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias_crypto249, !18, !"__UNIQUE_ID_alias_crypto249", i1 false, i1 false}
!20 = !{ptr @crypto_aegis128_alg_simd, !21, !"crypto_aegis128_alg_simd", i1 false, i1 false}
!21 = !{!"../crypto/aegis128-core.c", i32 525, i32 24}
!22 = !{ptr @have_simd, !23, !"have_simd", i1 false, i1 false}
!23 = !{!"../crypto/aegis128-core.c", i32 39, i32 24}
!24 = !{ptr @crypto_aegis_const, !25, !"crypto_aegis_const", i1 false, i1 false}
!25 = !{!"../crypto/aegis128-core.c", i32 41, i32 32}
!26 = !{ptr @crypto_aegis128_decrypt_generic.zeros, !27, !"zeros", i1 false, i1 false}
!27 = !{!"../crypto/aegis128-core.c", i32 412, i32 18}
!28 = !{ptr @crypto_aegis128_alg_generic, !29, !"crypto_aegis128_alg_generic", i1 false, i1 false}
!29 = !{!"../crypto/aegis128-core.c", i32 506, i32 24}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2148741077, i64 2148741082, i64 2148741103, i64 2148741147, i64 2148741181, i64 2148741202}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2149229737}
!43 = !{i64 2153856348, i64 2153856840, i64 2153856385, i64 2153856441, i64 2153856475, i64 2153856499, i64 2153856540, i64 2153856561, i64 2153856589, i64 2153856623}
!44 = !{i64 2153792901}
!45 = !{i64 2152741841}
!46 = !{i64 2152742048}
!47 = !{i64 2153795672}
