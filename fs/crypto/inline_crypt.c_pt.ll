; ModuleID = '/llk/IR_all_yes/fs/crypto/inline_crypt.c_pt.bc'
source_filename = "../fs/crypto/inline_crypt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__fscrypt_inode_uses_inline_crypto\22, \22a\22\09"
module asm "\09.weak\09__crc___fscrypt_inode_uses_inline_crypto\09\09\09\09"
module asm "\09.long\09__crc___fscrypt_inode_uses_inline_crypto\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fscrypt_inode_uses_inline_crypto:\09\09\09\09\09"
module asm "\09.asciz \09\22__fscrypt_inode_uses_inline_crypto\22\09\09\09\09\09"
module asm "__kstrtabns___fscrypt_inode_uses_inline_crypto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fscrypt_set_bio_crypt_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_set_bio_crypt_ctx\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_set_bio_crypt_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_set_bio_crypt_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_set_bio_crypt_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_set_bio_crypt_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fscrypt_set_bio_crypt_ctx_bh\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_set_bio_crypt_ctx_bh\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_set_bio_crypt_ctx_bh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_set_bio_crypt_ctx_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_set_bio_crypt_ctx_bh\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_set_bio_crypt_ctx_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fscrypt_mergeable_bio\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_mergeable_bio\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_mergeable_bio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_mergeable_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_mergeable_bio\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_mergeable_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fscrypt_mergeable_bio_bh\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_mergeable_bio_bh\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_mergeable_bio_bh\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_mergeable_bio_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_mergeable_bio_bh\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_mergeable_bio_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blk_crypto_config = type { i32, i32, i32 }
%struct.fscrypt_info = type { %struct.fscrypt_prepared_key, i8, i8, ptr, ptr, ptr, %struct.list_head, ptr, %struct.siphash_key_t, i8, %union.fscrypt_policy, [16 x i8], i32 }
%struct.fscrypt_prepared_key = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.siphash_key_t = type { [2 x i64] }
%union.fscrypt_policy = type { %struct.fscrypt_policy_v2 }
%struct.fscrypt_policy_v2 = type { i8, i8, i8, i8, [4 x i8], [16 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.fscrypt_mode = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fscrypt_operations = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.fscrypt_blk_crypto_key = type { %struct.blk_crypto_key, i32, [0 x ptr] }
%struct.blk_crypto_key = type { %struct.blk_crypto_config, i32, i32, [64 x i8] }
%union.fscrypt_iv = type { [4 x i64] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.page = type { i32, %union.anon.6, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.41 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error %d initializing blk-crypto key\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't get request_queue\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error %d starting to use blk-crypto\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab___fscrypt_inode_uses_inline_crypto = external dso_local constant [0 x i8], align 1
@__kstrtabns___fscrypt_inode_uses_inline_crypto = external dso_local constant [0 x i8], align 1
@__ksymtab___fscrypt_inode_uses_inline_crypto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fscrypt_inode_uses_inline_crypto to i32), ptr @__kstrtab___fscrypt_inode_uses_inline_crypto, ptr @__kstrtabns___fscrypt_inode_uses_inline_crypto }, section "___ksymtab_gpl+__fscrypt_inode_uses_inline_crypto", align 4
@__kstrtab_fscrypt_set_bio_crypt_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_set_bio_crypt_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_set_bio_crypt_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_set_bio_crypt_ctx to i32), ptr @__kstrtab_fscrypt_set_bio_crypt_ctx, ptr @__kstrtabns_fscrypt_set_bio_crypt_ctx }, section "___ksymtab_gpl+fscrypt_set_bio_crypt_ctx", align 4
@__kstrtab_fscrypt_set_bio_crypt_ctx_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_set_bio_crypt_ctx_bh = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_set_bio_crypt_ctx_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_set_bio_crypt_ctx_bh to i32), ptr @__kstrtab_fscrypt_set_bio_crypt_ctx_bh, ptr @__kstrtabns_fscrypt_set_bio_crypt_ctx_bh }, section "___ksymtab_gpl+fscrypt_set_bio_crypt_ctx_bh", align 4
@__kstrtab_fscrypt_mergeable_bio = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_mergeable_bio = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_mergeable_bio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_mergeable_bio to i32), ptr @__kstrtab_fscrypt_mergeable_bio, ptr @__kstrtabns_fscrypt_mergeable_bio }, section "___ksymtab_gpl+fscrypt_mergeable_bio", align 4
@__kstrtab_fscrypt_mergeable_bio_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_mergeable_bio_bh = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_mergeable_bio_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_mergeable_bio_bh to i32), ptr @__kstrtab_fscrypt_mergeable_bio_bh, ptr @__kstrtabns_fscrypt_mergeable_bio_bh }, section "___ksymtab_gpl+fscrypt_mergeable_bio_bh", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 149, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 162, i32 4 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [28 x i8] c"../fs/crypto/inline_crypt.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 171, i32 4 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab___fscrypt_inode_uses_inline_crypto, ptr @__ksymtab_fscrypt_mergeable_bio, ptr @__ksymtab_fscrypt_mergeable_bio_bh, ptr @__ksymtab_fscrypt_set_bio_crypt_ctx, ptr @__ksymtab_fscrypt_set_bio_crypt_ctx_bh, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_select_encryption_impl(ptr nocapture noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  %ino_bits.i = alloca i32, align 4
  %lblk_bits.i = alloca i32, align 4
  %crypto_cfg = alloca %struct.blk_crypto_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_inode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 4
  %0 = ptrtoint ptr %ci_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %crypto_cfg) #7
  %4 = getelementptr inbounds %struct.blk_crypto_config, ptr %crypto_cfg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.blk_crypto_config, ptr %crypto_cfg, i32 0, i32 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %8)
  %cmp = icmp eq i16 %8, -32768
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ci_mode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 3
  %9 = ptrtoint ptr %ci_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci_mode, align 4
  %blk_crypto_mode = getelementptr inbounds %struct.fscrypt_mode, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %blk_crypto_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blk_crypto_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2 = icmp eq i32 %12, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %s_flags = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_flags, align 4
  %and6 = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %ci_policy = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 10
  %15 = ptrtoint ptr %ci_policy to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ci_policy, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %do.body.i [
    i8 0, label %if.end8.fscrypt_policy_flags.exit_crit_edge
    i8 2, label %if.end8.fscrypt_policy_flags.exit_crit_edge70
  ]

if.end8.fscrypt_policy_flags.exit_crit_edge70:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_policy_flags.exit

if.end8.fscrypt_policy_flags.exit_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_policy_flags.exit

do.body.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/crypto/fscrypt_private.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 165, 0\0A.popsection", ""() #7, !srcloc !26
  unreachable

fscrypt_policy_flags.exit:                        ; preds = %if.end8.fscrypt_policy_flags.exit_crit_edge, %if.end8.fscrypt_policy_flags.exit_crit_edge70
  %retval.0.in.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 10, i32 0, i32 3
  %18 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %retval.0.i = load i8, ptr %retval.0.in.i, align 1
  %19 = and i8 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool11.not = icmp eq i8 %19, 0
  br i1 %tobool11.not, label %fscrypt_policy_flags.exit.if.end15_crit_edge, label %land.lhs.true

fscrypt_policy_flags.exit.if.end15_crit_edge:     ; preds = %fscrypt_policy_flags.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true:                                    ; preds = %fscrypt_policy_flags.exit
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %21)
  %cmp12.not = icmp eq i32 %21, 4096
  br i1 %cmp12.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %fscrypt_policy_flags.exit.if.end15_crit_edge
  %22 = ptrtoint ptr %crypto_cfg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %12, ptr %crypto_cfg, align 4
  %s_blocksize18 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %s_blocksize18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_blocksize18, align 16
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %4, align 4
  %26 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %16, label %do.body.i.i [
    i8 0, label %if.end15.fscrypt_policy_flags.exit.i_crit_edge
    i8 2, label %if.end15.fscrypt_policy_flags.exit.i_crit_edge71
  ]

if.end15.fscrypt_policy_flags.exit.i_crit_edge71: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_policy_flags.exit.i

if.end15.fscrypt_policy_flags.exit.i_crit_edge:   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_policy_flags.exit.i

do.body.i.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/crypto/fscrypt_private.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 165, 0\0A.popsection", ""() #7, !srcloc !26
  unreachable

fscrypt_policy_flags.exit.i:                      ; preds = %if.end15.fscrypt_policy_flags.exit.i_crit_edge, %if.end15.fscrypt_policy_flags.exit.i_crit_edge71
  %27 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %retval.0.i.i = load i8, ptr %retval.0.in.i, align 1
  %conv.i = zext i8 %retval.0.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino_bits.i) #7
  %28 = ptrtoint ptr %ino_bits.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 64, ptr %ino_bits.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lblk_bits.i) #7
  %29 = ptrtoint ptr %lblk_bits.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 64, ptr %lblk_bits.i, align 4
  %and.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %fscrypt_policy_flags.exit.i.fscrypt_get_dun_bytes.exit_crit_edge

fscrypt_policy_flags.exit.i.fscrypt_get_dun_bytes.exit_crit_edge: ; preds = %fscrypt_policy_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_get_dun_bytes.exit

if.end.i:                                         ; preds = %fscrypt_policy_flags.exit.i
  %and1.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.fscrypt_get_dun_bytes.exit_crit_edge

if.end.i.fscrypt_get_dun_bytes.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_get_dun_bytes.exit

if.end4.i:                                        ; preds = %if.end.i
  %and5.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.fscrypt_get_dun_bytes.exit_crit_edge

if.end4.i.fscrypt_get_dun_bytes.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_get_dun_bytes.exit

if.end8.i:                                        ; preds = %if.end4.i
  %s_cop.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 19
  %30 = ptrtoint ptr %s_cop.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_cop.i, align 4
  %get_ino_and_lblk_bits.i = getelementptr inbounds %struct.fscrypt_operations, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %get_ino_and_lblk_bits.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_ino_and_lblk_bits.i, align 4
  %tobool9.not.i = icmp eq ptr %33, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end13.i_crit_edge, label %if.then10.i

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %33(ptr noundef %3, ptr noundef nonnull %ino_bits.i, ptr noundef nonnull %lblk_bits.i) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end13.i_crit_edge
  %34 = ptrtoint ptr %lblk_bits.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lblk_bits.i, align 4
  %sub.i = add i32 %35, 7
  %div.i = sdiv i32 %sub.i, 8
  br label %fscrypt_get_dun_bytes.exit

fscrypt_get_dun_bytes.exit:                       ; preds = %if.end13.i, %if.end4.i.fscrypt_get_dun_bytes.exit_crit_edge, %if.end.i.fscrypt_get_dun_bytes.exit_crit_edge, %fscrypt_policy_flags.exit.i.fscrypt_get_dun_bytes.exit_crit_edge
  %retval.0.i52 = phi i32 [ %div.i, %if.end13.i ], [ 24, %fscrypt_policy_flags.exit.i.fscrypt_get_dun_bytes.exit_crit_edge ], [ 8, %if.end.i.fscrypt_get_dun_bytes.exit_crit_edge ], [ 4, %if.end4.i.fscrypt_get_dun_bytes.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lblk_bits.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino_bits.i) #7
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i52, ptr %5, align 4
  %s_cop.i53 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 19
  %37 = ptrtoint ptr %s_cop.i53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_cop.i53, align 4
  %get_num_devices.i = getelementptr inbounds %struct.fscrypt_operations, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %get_num_devices.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_num_devices.i, align 4
  %tobool.not.i54 = icmp eq ptr %40, null
  br i1 %tobool.not.i54, label %fscrypt_get_dun_bytes.exit.fscrypt_get_num_devices.exit_crit_edge, label %if.then.i

fscrypt_get_dun_bytes.exit.fscrypt_get_num_devices.exit_crit_edge: ; preds = %fscrypt_get_dun_bytes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_get_num_devices.exit

if.then.i:                                        ; preds = %fscrypt_get_dun_bytes.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 %40(ptr noundef %3) #7
  br label %fscrypt_get_num_devices.exit

fscrypt_get_num_devices.exit:                     ; preds = %if.then.i, %fscrypt_get_dun_bytes.exit.fscrypt_get_num_devices.exit_crit_edge
  %retval.0.i55 = phi i32 [ %call.i, %if.then.i ], [ 1, %fscrypt_get_dun_bytes.exit.fscrypt_get_num_devices.exit_crit_edge ]
  %41 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i55, i32 4) #7
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %fscrypt_get_num_devices.exit.cleanup_crit_edge, label %if.end7.i, !prof !27

fscrypt_get_num_devices.exit.cleanup_crit_edge:   ; preds = %fscrypt_get_num_devices.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %fscrypt_get_num_devices.exit
  %43 = extractvalue { i32, i1 } %41, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3264) #10
  %tobool22.not = icmp eq ptr %call8.i, null
  br i1 %tobool22.not, label %if.end7.i.cleanup_crit_edge, label %if.end24

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i55)
  %cmp.i = icmp eq i32 %retval.0.i55, 1
  br i1 %cmp.i, label %fscrypt_get_devices.exit.thread, label %fscrypt_get_devices.exit

fscrypt_get_devices.exit.thread:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %44 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_bdev.i, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bd_queue.i.i, align 4
  %48 = ptrtoint ptr %call8.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %call8.i, align 128
  br label %for.body.preheader

fscrypt_get_devices.exit:                         ; preds = %if.end24
  %49 = ptrtoint ptr %s_cop.i53 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_cop.i53, align 4
  %get_devices.i = getelementptr inbounds %struct.fscrypt_operations, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %get_devices.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_devices.i, align 4
  call void %52(ptr noundef %3, ptr noundef nonnull %call8.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i55)
  %cmp2567.not = icmp eq i32 %retval.0.i55, 0
  br i1 %cmp2567.not, label %fscrypt_get_devices.exit.for.end_crit_edge, label %fscrypt_get_devices.exit.for.body.preheader_crit_edge

fscrypt_get_devices.exit.for.body.preheader_crit_edge: ; preds = %fscrypt_get_devices.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

fscrypt_get_devices.exit.for.end_crit_edge:       ; preds = %fscrypt_get_devices.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %fscrypt_get_devices.exit.for.body.preheader_crit_edge, %fscrypt_get_devices.exit.thread
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i55
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.068 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr ptr, ptr %call8.i, i32 %i.068
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx, align 4
  %call27 = call zeroext i1 @blk_crypto_config_supported(ptr noundef %54, ptr noundef nonnull %crypto_cfg) #7
  br i1 %call27, label %for.cond, label %for.body.out_free_devs_crit_edge

for.body.out_free_devs_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_devs

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %fscrypt_get_devices.exit.for.end_crit_edge
  %ci_inlinecrypt = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 2
  %55 = ptrtoint ptr %ci_inlinecrypt to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %ci_inlinecrypt, align 1
  br label %out_free_devs

out_free_devs:                                    ; preds = %for.end, %for.body.out_free_devs_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_devs, %if.end7.i.cleanup_crit_edge, %fscrypt_get_num_devices.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out_free_devs ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %fscrypt_get_num_devices.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %crypto_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_crypto_config_supported(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_prepare_inline_crypt_key(ptr noundef %prep_key, ptr noundef %raw_key, ptr nocapture noundef readonly %ci) local_unnamed_addr #0 align 64 {
entry:
  %ino_bits.i = alloca i32, align 4
  %lblk_bits.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_inode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 4
  %0 = ptrtoint ptr %ci_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %ci_mode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 3
  %4 = ptrtoint ptr %ci_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_mode, align 4
  %blk_crypto_mode = getelementptr inbounds %struct.fscrypt_mode, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %blk_crypto_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blk_crypto_mode, align 4
  %s_cop.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %s_cop.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_cop.i, align 4
  %get_num_devices.i = getelementptr inbounds %struct.fscrypt_operations, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %get_num_devices.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_num_devices.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.if.end8.i.i_crit_edge, label %if.then.i

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %11(ptr noundef %3) #7
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then.i, %entry.if.end8.i.i_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ 1, %entry.if.end8.i.i_crit_edge ]
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i, i32 4) #7
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %14, i32 88) #7
  %retval.0.i85 = select i1 %13, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i85, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end8.i.i
  %num_devs3 = getelementptr inbounds %struct.fscrypt_blk_crypto_key, ptr %call9.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %num_devs3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %num_devs3, align 4
  %devs = getelementptr inbounds %struct.fscrypt_blk_crypto_key, ptr %call9.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, 1
  br i1 %cmp.i, label %if.then.i86, label %if.else.i

if.then.i86:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %16 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_bdev.i, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd_queue.i.i, align 4
  %20 = ptrtoint ptr %devs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %devs, align 8
  br label %fscrypt_get_devices.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %s_cop.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_cop.i, align 4
  %get_devices.i = getelementptr inbounds %struct.fscrypt_operations, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %get_devices.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_devices.i, align 4
  tail call void %24(ptr noundef %3, ptr noundef %devs) #7
  br label %fscrypt_get_devices.exit

fscrypt_get_devices.exit:                         ; preds = %if.else.i, %if.then.i86
  %25 = ptrtoint ptr %ci_inode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ci_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i, align 4
  %ci_policy.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 10
  %29 = ptrtoint ptr %ci_policy.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ci_policy.i, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %30, label %do.body.i.i [
    i8 0, label %fscrypt_get_devices.exit.fscrypt_policy_flags.exit.i_crit_edge
    i8 2, label %fscrypt_get_devices.exit.fscrypt_policy_flags.exit.i_crit_edge129
  ]

fscrypt_get_devices.exit.fscrypt_policy_flags.exit.i_crit_edge129: ; preds = %fscrypt_get_devices.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_policy_flags.exit.i

fscrypt_get_devices.exit.fscrypt_policy_flags.exit.i_crit_edge: ; preds = %fscrypt_get_devices.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_policy_flags.exit.i

do.body.i.i:                                      ; preds = %fscrypt_get_devices.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/crypto/fscrypt_private.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 165, 0\0A.popsection", ""() #7, !srcloc !26
  unreachable

fscrypt_policy_flags.exit.i:                      ; preds = %fscrypt_get_devices.exit.fscrypt_policy_flags.exit.i_crit_edge, %fscrypt_get_devices.exit.fscrypt_policy_flags.exit.i_crit_edge129
  %retval.0.in.i.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 10, i32 0, i32 3
  %32 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %retval.0.i.i = load i8, ptr %retval.0.in.i.i, align 1
  %conv.i = zext i8 %retval.0.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino_bits.i) #7
  %33 = ptrtoint ptr %ino_bits.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 64, ptr %ino_bits.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lblk_bits.i) #7
  %34 = ptrtoint ptr %lblk_bits.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 64, ptr %lblk_bits.i, align 4
  %and.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i88 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i88, label %if.end.i, label %fscrypt_policy_flags.exit.i.fscrypt_get_dun_bytes.exit_crit_edge

fscrypt_policy_flags.exit.i.fscrypt_get_dun_bytes.exit_crit_edge: ; preds = %fscrypt_policy_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_get_dun_bytes.exit

if.end.i:                                         ; preds = %fscrypt_policy_flags.exit.i
  %and1.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.fscrypt_get_dun_bytes.exit_crit_edge

if.end.i.fscrypt_get_dun_bytes.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_get_dun_bytes.exit

if.end4.i:                                        ; preds = %if.end.i
  %and5.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.fscrypt_get_dun_bytes.exit_crit_edge

if.end4.i.fscrypt_get_dun_bytes.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_get_dun_bytes.exit

if.end8.i:                                        ; preds = %if.end4.i
  %s_cop.i89 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 19
  %35 = ptrtoint ptr %s_cop.i89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_cop.i89, align 4
  %get_ino_and_lblk_bits.i = getelementptr inbounds %struct.fscrypt_operations, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %get_ino_and_lblk_bits.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_ino_and_lblk_bits.i, align 4
  %tobool9.not.i = icmp eq ptr %38, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end13.i_crit_edge, label %if.then10.i

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %38(ptr noundef %28, ptr noundef nonnull %ino_bits.i, ptr noundef nonnull %lblk_bits.i) #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end13.i_crit_edge
  %39 = ptrtoint ptr %lblk_bits.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lblk_bits.i, align 4
  %sub.i = add i32 %40, 7
  %div.i = sdiv i32 %sub.i, 8
  br label %fscrypt_get_dun_bytes.exit

fscrypt_get_dun_bytes.exit:                       ; preds = %if.end13.i, %if.end4.i.fscrypt_get_dun_bytes.exit_crit_edge, %if.end.i.fscrypt_get_dun_bytes.exit_crit_edge, %fscrypt_policy_flags.exit.i.fscrypt_get_dun_bytes.exit_crit_edge
  %retval.0.i90 = phi i32 [ %div.i, %if.end13.i ], [ 24, %fscrypt_policy_flags.exit.i.fscrypt_get_dun_bytes.exit_crit_edge ], [ 8, %if.end.i.fscrypt_get_dun_bytes.exit_crit_edge ], [ 4, %if.end4.i.fscrypt_get_dun_bytes.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lblk_bits.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino_bits.i) #7
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %41 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_blocksize, align 16
  %call5 = call i32 @blk_crypto_init_key(ptr noundef nonnull %call9.i.i, ptr noundef %raw_key, i32 noundef %7, i32 noundef %retval.0.i90, i32 noundef %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.cond.preheader, label %fail.thread109

for.cond.preheader:                               ; preds = %fscrypt_get_dun_bytes.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp93 = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp93, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.end25_crit_edge

for.cond.preheader.do.end25_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

fail.thread109:                                   ; preds = %fscrypt_get_dun_bytes.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @fscrypt_msg(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call5) #11
  br label %for.end47

for.cond:                                         ; preds = %if.end12
  %exitcond.not = icmp eq i32 %inc20, %retval.0.i
  br i1 %exitcond.not, label %for.cond.do.end25_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.do.end25_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.095 = phi i32 [ %inc20, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fscrypt_blk_crypto_key, ptr %call9.i.i, i32 0, i32 2, i32 %i.095
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %call10 = call zeroext i1 @blk_get_queue(ptr noundef %44) #7
  br i1 %call10, label %if.end12, label %fail

if.end12:                                         ; preds = %for.body
  %inc20 = add nuw nsw i32 %i.095, 1
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %call16 = call i32 @blk_crypto_start_using_key(ptr noundef nonnull %call9.i.i, ptr noundef %46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.cond, label %fail.thread

fail.thread:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @fscrypt_msg(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef %call16) #11
  br label %for.body42.preheader

do.end25:                                         ; preds = %for.cond.do.end25_crit_edge, %for.cond.preheader.do.end25_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !28
  %blk_key31 = getelementptr inbounds %struct.fscrypt_prepared_key, ptr %prep_key, i32 0, i32 1
  %47 = ptrtoint ptr %blk_key31 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call9.i.i, ptr %blk_key31, align 4
  br label %cleanup

fail:                                             ; preds = %for.body
  call void (ptr, ptr, ptr, ...) @fscrypt_msg(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.095)
  %cmp4196.not = icmp eq i32 %i.095, 0
  br i1 %cmp4196.not, label %fail.for.end47_crit_edge, label %fail.for.body42.preheader_crit_edge

fail.for.body42.preheader_crit_edge:              ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.preheader

fail.for.end47_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end47

for.body42.preheader:                             ; preds = %fail.for.body42.preheader_crit_edge, %fail.thread
  %err.0108 = phi i32 [ %call16, %fail.thread ], [ -11, %fail.for.body42.preheader_crit_edge ]
  %queue_refs.1106 = phi i32 [ %inc20, %fail.thread ], [ %i.095, %fail.for.body42.preheader_crit_edge ]
  br label %for.body42

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.body42.preheader
  %i.197 = phi i32 [ %inc46, %for.body42.for.body42_crit_edge ], [ 0, %for.body42.preheader ]
  %arrayidx44 = getelementptr %struct.fscrypt_blk_crypto_key, ptr %call9.i.i, i32 0, i32 2, i32 %i.197
  %48 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx44, align 4
  call void @blk_put_queue(ptr noundef %49) #7
  %inc46 = add nuw nsw i32 %i.197, 1
  %exitcond102.not = icmp eq i32 %inc46, %queue_refs.1106
  br i1 %exitcond102.not, label %for.body42.for.end47_crit_edge, label %for.body42.for.body42_crit_edge

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42

for.body42.for.end47_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end47

for.end47:                                        ; preds = %for.body42.for.end47_crit_edge, %fail.for.end47_crit_edge, %fail.thread109
  %err.0107 = phi i32 [ -11, %fail.for.end47_crit_edge ], [ %call5, %fail.thread109 ], [ %err.0108, %for.body42.for.end47_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end47, %do.end25, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0107, %for.end47 ], [ 0, %do.end25 ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_crypto_init_key(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fscrypt_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_get_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_crypto_start_using_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_put_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_destroy_inline_crypt_key(ptr nocapture noundef readonly %prep_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %blk_key1 = getelementptr inbounds %struct.fscrypt_prepared_key, ptr %prep_key, i32 0, i32 1
  %0 = ptrtoint ptr %blk_key1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blk_key1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %num_devs = getelementptr inbounds %struct.fscrypt_blk_crypto_key, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12 = icmp sgt i32 %3, 0
  br i1 %cmp12, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fscrypt_blk_crypto_key, ptr %1, i32 0, i32 2, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @blk_crypto_evict_key(ptr noundef %5, ptr noundef nonnull %1) #7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @blk_put_queue(ptr noundef %7) #7
  %inc = add nuw nsw i32 %i.013, 1
  %8 = ptrtoint ptr %num_devs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_devs, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree_sensitive(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_crypto_evict_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @__fscrypt_inode_uses_inline_crypto(ptr nocapture noundef readonly %inode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_crypt_info = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 52
  %0 = ptrtoint ptr %i_crypt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_crypt_info, align 4
  %ci_inlinecrypt = getelementptr inbounds %struct.fscrypt_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ci_inlinecrypt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ci_inlinecrypt, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_set_bio_crypt_ctx(ptr noundef %bio, ptr nocapture noundef readonly %inode, i64 noundef %first_lblk, i32 noundef %gfp_mask) #0 align 64 {
entry:
  %iv.i = alloca %union.fscrypt_iv, align 8
  %dun = alloca [4 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dun) #7
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags.i.i, align 4
  %and.i.i = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %fscrypt_needs_contents_encryption.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fscrypt_needs_contents_encryption.exit.i:         ; preds = %entry
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp.i.i = icmp eq i16 %4, -32768
  br i1 %cmp.i.i, label %fscrypt_inode_uses_inline_crypto.exit, label %fscrypt_needs_contents_encryption.exit.i.cleanup_crit_edge

fscrypt_needs_contents_encryption.exit.i.cleanup_crit_edge: ; preds = %fscrypt_needs_contents_encryption.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fscrypt_inode_uses_inline_crypto.exit:            ; preds = %fscrypt_needs_contents_encryption.exit.i
  %i_crypt_info.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 52
  %5 = ptrtoint ptr %i_crypt_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_crypt_info.i.i, align 4
  %ci_inlinecrypt.i.i = getelementptr inbounds %struct.fscrypt_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %ci_inlinecrypt.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ci_inlinecrypt.i.i, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.i.not = icmp eq i8 %8, 0
  br i1 %tobool.i.i.not, label %fscrypt_inode_uses_inline_crypto.exit.cleanup_crit_edge, label %if.end

fscrypt_inode_uses_inline_crypto.exit.cleanup_crit_edge: ; preds = %fscrypt_inode_uses_inline_crypto.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %fscrypt_inode_uses_inline_crypto.exit
  %9 = ptrtoint ptr %i_crypt_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_crypt_info.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iv.i) #7
  %11 = call ptr @memset(ptr %iv.i, i32 255, i32 32)
  call void @fscrypt_generate_iv(ptr noundef nonnull %iv.i, i64 noundef %first_lblk, ptr noundef %10) #7
  %12 = call ptr @memset(ptr %dun, i32 0, i32 32)
  %ci_mode.i = getelementptr inbounds %struct.fscrypt_info, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %ci_mode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ci_mode.i, align 4
  %ivsize8.i = getelementptr inbounds %struct.fscrypt_mode, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %ivsize8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ivsize8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp10.not.i = icmp ult i32 %16, 8
  br i1 %cmp10.not.i, label %if.end.fscrypt_generate_dun.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.fscrypt_generate_dun.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_generate_dun.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i64], ptr %iv.i, i32 0, i32 %i.011.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i, align 8
  %19 = call i64 @llvm.bswap.i64(i64 %18) #7
  %arrayidx1.i = getelementptr i64, ptr %dun, i32 %i.011.i
  %20 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx1.i, align 8
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %21 = ptrtoint ptr %ci_mode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ci_mode.i, align 4
  %ivsize.i = getelementptr inbounds %struct.fscrypt_mode, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ivsize.i, align 4
  %div7.i = lshr i32 %24, 3
  %cmp.i = icmp ult i32 %inc.i, %div7.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.fscrypt_generate_dun.exit_crit_edge

for.body.i.fscrypt_generate_dun.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_generate_dun.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

fscrypt_generate_dun.exit:                        ; preds = %for.body.i.fscrypt_generate_dun.exit_crit_edge, %if.end.fscrypt_generate_dun.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iv.i) #7
  %blk_key = getelementptr inbounds %struct.fscrypt_prepared_key, ptr %10, i32 0, i32 1
  %25 = ptrtoint ptr %blk_key to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %blk_key, align 4
  call void @bio_crypt_set_ctx(ptr noundef %bio, ptr noundef %26, ptr noundef nonnull %dun, i32 noundef %gfp_mask) #7
  br label %cleanup

cleanup:                                          ; preds = %fscrypt_generate_dun.exit, %fscrypt_inode_uses_inline_crypto.exit.cleanup_crit_edge, %fscrypt_needs_contents_encryption.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dun) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_crypt_set_ctx(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_set_bio_crypt_ctx_bh(ptr noundef %bio, ptr nocapture noundef readonly %first_bh, i32 noundef %gfp_mask) #0 align 64 {
entry:
  %iv.i.i = alloca %union.fscrypt_iv, align 8
  %dun.i = alloca [4 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %first_bh, i32 0, i32 2
  %0 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page.i, align 8
  %call.i = tail call ptr @page_mapping(ptr noundef %1) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %5 to i64
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i_blkbits.i, align 2
  %conv1.i = zext i8 %7 to i32
  %sub.i = sub nsw i32 12, %conv1.i
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %first_bh, i32 0, i32 5
  %8 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %and.i = and i32 %10, 4095
  %shr.i = lshr i32 %and.i, %conv1.i
  %conv4.i = zext i32 %shr.i to i64
  %add.i = add i64 %shl.i, %conv4.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dun.i) #7
  %i_flags.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %i_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags.i.i.i, align 4
  %and.i.i.i = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.fscrypt_set_bio_crypt_ctx.exit_crit_edge, label %fscrypt_needs_contents_encryption.exit.i.i

if.then.fscrypt_set_bio_crypt_ctx.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_set_bio_crypt_ctx.exit

fscrypt_needs_contents_encryption.exit.i.i:       ; preds = %if.then
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %3, align 8
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %15)
  %cmp.i.i.i = icmp eq i16 %15, -32768
  br i1 %cmp.i.i.i, label %fscrypt_inode_uses_inline_crypto.exit.i, label %fscrypt_needs_contents_encryption.exit.i.i.fscrypt_set_bio_crypt_ctx.exit_crit_edge

fscrypt_needs_contents_encryption.exit.i.i.fscrypt_set_bio_crypt_ctx.exit_crit_edge: ; preds = %fscrypt_needs_contents_encryption.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_set_bio_crypt_ctx.exit

fscrypt_inode_uses_inline_crypto.exit.i:          ; preds = %fscrypt_needs_contents_encryption.exit.i.i
  %i_crypt_info.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 52
  %16 = ptrtoint ptr %i_crypt_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_crypt_info.i.i.i, align 4
  %ci_inlinecrypt.i.i.i = getelementptr inbounds %struct.fscrypt_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ci_inlinecrypt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ci_inlinecrypt.i.i.i, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.i.i.not.i = icmp eq i8 %19, 0
  br i1 %tobool.i.i.not.i, label %fscrypt_inode_uses_inline_crypto.exit.i.fscrypt_set_bio_crypt_ctx.exit_crit_edge, label %if.end.i1

fscrypt_inode_uses_inline_crypto.exit.i.fscrypt_set_bio_crypt_ctx.exit_crit_edge: ; preds = %fscrypt_inode_uses_inline_crypto.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_set_bio_crypt_ctx.exit

if.end.i1:                                        ; preds = %fscrypt_inode_uses_inline_crypto.exit.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iv.i.i) #7
  %20 = call ptr @memset(ptr %iv.i.i, i32 255, i32 32)
  call void @fscrypt_generate_iv(ptr noundef nonnull %iv.i.i, i64 noundef %add.i, ptr noundef %17) #7
  %21 = call ptr @memset(ptr %dun.i, i32 0, i32 32)
  %ci_mode.i.i = getelementptr inbounds %struct.fscrypt_info, ptr %17, i32 0, i32 3
  %22 = ptrtoint ptr %ci_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ci_mode.i.i, align 4
  %ivsize8.i.i = getelementptr inbounds %struct.fscrypt_mode, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %ivsize8.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ivsize8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %25)
  %cmp10.not.i.i = icmp ult i32 %25, 8
  br i1 %cmp10.not.i.i, label %if.end.i1.fscrypt_generate_dun.exit.i_crit_edge, label %if.end.i1.for.body.i.i_crit_edge

if.end.i1.for.body.i.i_crit_edge:                 ; preds = %if.end.i1
  br label %for.body.i.i

if.end.i1.fscrypt_generate_dun.exit.i_crit_edge:  ; preds = %if.end.i1
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_generate_dun.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i1.for.body.i.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i1.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i64], ptr %iv.i.i, i32 0, i32 %i.011.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i.i, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27) #7
  %arrayidx1.i.i = getelementptr i64, ptr %dun.i, i32 %i.011.i.i
  %29 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx1.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %30 = ptrtoint ptr %ci_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ci_mode.i.i, align 4
  %ivsize.i.i = getelementptr inbounds %struct.fscrypt_mode, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ivsize.i.i, align 4
  %div7.i.i = lshr i32 %33, 3
  %cmp.i.i = icmp ult i32 %inc.i.i, %div7.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.fscrypt_generate_dun.exit.i_crit_edge

for.body.i.i.fscrypt_generate_dun.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_generate_dun.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

fscrypt_generate_dun.exit.i:                      ; preds = %for.body.i.i.fscrypt_generate_dun.exit.i_crit_edge, %if.end.i1.fscrypt_generate_dun.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iv.i.i) #7
  %blk_key.i = getelementptr inbounds %struct.fscrypt_prepared_key, ptr %17, i32 0, i32 1
  %34 = ptrtoint ptr %blk_key.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %blk_key.i, align 4
  call void @bio_crypt_set_ctx(ptr noundef %bio, ptr noundef %35, ptr noundef nonnull %dun.i, i32 noundef %gfp_mask) #7
  br label %fscrypt_set_bio_crypt_ctx.exit

fscrypt_set_bio_crypt_ctx.exit:                   ; preds = %fscrypt_generate_dun.exit.i, %fscrypt_inode_uses_inline_crypto.exit.i.fscrypt_set_bio_crypt_ctx.exit_crit_edge, %fscrypt_needs_contents_encryption.exit.i.i.fscrypt_set_bio_crypt_ctx.exit_crit_edge, %if.then.fscrypt_set_bio_crypt_ctx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dun.i) #7
  br label %if.end

if.end:                                           ; preds = %fscrypt_set_bio_crypt_ctx.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @fscrypt_mergeable_bio(ptr nocapture noundef readonly %bio, ptr nocapture noundef readonly %inode, i64 noundef %next_lblk) #0 align 64 {
entry:
  %iv.i = alloca %union.fscrypt_iv, align 8
  %next_dun = alloca [4 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_crypt_context = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 15
  %0 = ptrtoint ptr %bi_crypt_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_crypt_context, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %next_dun) #7
  %tobool = icmp ne ptr %1, null
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %2 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags.i.i, align 4
  %and.i.i = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.fscrypt_inode_uses_inline_crypto.exit.thread_crit_edge, label %fscrypt_needs_contents_encryption.exit.i

entry.fscrypt_inode_uses_inline_crypto.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_inode_uses_inline_crypto.exit.thread

fscrypt_needs_contents_encryption.exit.i:         ; preds = %entry
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp.i.i = icmp eq i16 %6, -32768
  br i1 %cmp.i.i, label %fscrypt_inode_uses_inline_crypto.exit, label %fscrypt_needs_contents_encryption.exit.i.fscrypt_inode_uses_inline_crypto.exit.thread_crit_edge

fscrypt_needs_contents_encryption.exit.i.fscrypt_inode_uses_inline_crypto.exit.thread_crit_edge: ; preds = %fscrypt_needs_contents_encryption.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_inode_uses_inline_crypto.exit.thread

fscrypt_inode_uses_inline_crypto.exit.thread:     ; preds = %fscrypt_needs_contents_encryption.exit.i.fscrypt_inode_uses_inline_crypto.exit.thread_crit_edge, %entry.fscrypt_inode_uses_inline_crypto.exit.thread_crit_edge
  %not.20 = xor i1 %tobool, true
  br label %cleanup

fscrypt_inode_uses_inline_crypto.exit:            ; preds = %fscrypt_needs_contents_encryption.exit.i
  %i_crypt_info.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 52
  %7 = ptrtoint ptr %i_crypt_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_crypt_info.i.i, align 4
  %ci_inlinecrypt.i.i = getelementptr inbounds %struct.fscrypt_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ci_inlinecrypt.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ci_inlinecrypt.i.i, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i.i = icmp ne i8 %10, 0
  %11 = xor i1 %tobool, %tobool.i.i
  %12 = and i1 %tobool, %tobool.i.i
  %not. = xor i1 %11, true
  br i1 %12, label %if.end5, label %fscrypt_inode_uses_inline_crypto.exit.cleanup_crit_edge

fscrypt_inode_uses_inline_crypto.exit.cleanup_crit_edge: ; preds = %fscrypt_inode_uses_inline_crypto.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %fscrypt_inode_uses_inline_crypto.exit
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %i_crypt_info = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 52
  %15 = ptrtoint ptr %i_crypt_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_crypt_info, align 4
  %blk_key = getelementptr inbounds %struct.fscrypt_prepared_key, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %blk_key to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %blk_key, align 4
  %cmp6.not = icmp eq ptr %14, %18
  br i1 %cmp6.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iv.i) #7
  %19 = call ptr @memset(ptr %iv.i, i32 255, i32 32)
  call void @fscrypt_generate_iv(ptr noundef nonnull %iv.i, i64 noundef %next_lblk, ptr noundef %16) #7
  %20 = call ptr @memset(ptr %next_dun, i32 0, i32 32)
  %ci_mode.i = getelementptr inbounds %struct.fscrypt_info, ptr %16, i32 0, i32 3
  %21 = ptrtoint ptr %ci_mode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ci_mode.i, align 4
  %ivsize8.i = getelementptr inbounds %struct.fscrypt_mode, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %ivsize8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ivsize8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %cmp10.not.i = icmp ult i32 %24, 8
  br i1 %cmp10.not.i, label %if.end9.fscrypt_generate_dun.exit_crit_edge, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

if.end9.fscrypt_generate_dun.exit_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_generate_dun.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i64], ptr %iv.i, i32 0, i32 %i.011.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i, align 8
  %27 = call i64 @llvm.bswap.i64(i64 %26) #7
  %arrayidx1.i = getelementptr i64, ptr %next_dun, i32 %i.011.i
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx1.i, align 8
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %29 = ptrtoint ptr %ci_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ci_mode.i, align 4
  %ivsize.i = getelementptr inbounds %struct.fscrypt_mode, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ivsize.i, align 4
  %div7.i = lshr i32 %32, 3
  %cmp.i = icmp ult i32 %inc.i, %div7.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.fscrypt_generate_dun.exit_crit_edge

for.body.i.fscrypt_generate_dun.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_generate_dun.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

fscrypt_generate_dun.exit:                        ; preds = %for.body.i.fscrypt_generate_dun.exit_crit_edge, %if.end9.fscrypt_generate_dun.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iv.i) #7
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bi_size, align 8
  %call12 = call zeroext i1 @bio_crypt_dun_is_contiguous(ptr noundef nonnull %1, i32 noundef %34, ptr noundef nonnull %next_dun) #7
  br label %cleanup

cleanup:                                          ; preds = %fscrypt_generate_dun.exit, %if.end5.cleanup_crit_edge, %fscrypt_inode_uses_inline_crypto.exit.cleanup_crit_edge, %fscrypt_inode_uses_inline_crypto.exit.thread
  %retval.0 = phi i1 [ %call12, %fscrypt_generate_dun.exit ], [ %not., %fscrypt_inode_uses_inline_crypto.exit.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ], [ %not.20, %fscrypt_inode_uses_inline_crypto.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %next_dun) #7
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bio_crypt_dun_is_contiguous(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @fscrypt_mergeable_bio_bh(ptr nocapture noundef readonly %bio, ptr nocapture noundef readonly %next_bh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %next_bh, i32 0, i32 2
  %0 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page.i, align 8
  %call.i = tail call ptr @page_mapping(ptr noundef %1) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bi_crypt_context = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 15
  %2 = ptrtoint ptr %bi_crypt_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_crypt_context, align 8
  %tobool.not = icmp eq ptr %3, null
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %7 to i64
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i_blkbits.i, align 2
  %conv1.i = zext i8 %9 to i32
  %sub.i = sub nsw i32 12, %conv1.i
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %next_bh, i32 0, i32 5
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %and.i = and i32 %12, 4095
  %shr.i = lshr i32 %and.i, %conv1.i
  %conv4.i = zext i32 %shr.i to i64
  %add.i = add i64 %shl.i, %conv4.i
  %call1 = tail call zeroext i1 @fscrypt_mergeable_bio(ptr noundef %bio, ptr noundef %5, i64 noundef %add.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %call1, %if.end ], [ %tobool.not, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_generate_iv(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/crypto/inline_crypt.c", i32 149, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/crypto/inline_crypt.c", i32 162, i32 4}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/crypto/inline_crypt.c", i32 171, i32 4}
!7 = !{ptr @__ksymtab___fscrypt_inode_uses_inline_crypto, !8, !"__ksymtab___fscrypt_inode_uses_inline_crypto", i1 false, i1 false}
!8 = !{!"../fs/crypto/inline_crypt.c", i32 210, i32 1}
!9 = !{ptr @__ksymtab_fscrypt_set_bio_crypt_ctx, !10, !"__ksymtab_fscrypt_set_bio_crypt_ctx", i1 false, i1 false}
!10 = !{!"../fs/crypto/inline_crypt.c", i32 255, i32 1}
!11 = !{ptr @__ksymtab_fscrypt_set_bio_crypt_ctx_bh, !12, !"__ksymtab_fscrypt_set_bio_crypt_ctx_bh", i1 false, i1 false}
!12 = !{!"../fs/crypto/inline_crypt.c", i32 301, i32 1}
!13 = !{ptr @__ksymtab_fscrypt_mergeable_bio, !14, !"__ksymtab_fscrypt_mergeable_bio", i1 false, i1 false}
!14 = !{!"../fs/crypto/inline_crypt.c", i32 342, i32 1}
!15 = !{ptr @__ksymtab_fscrypt_mergeable_bio_bh, !16, !"__ksymtab_fscrypt_mergeable_bio_bh", i1 false, i1 false}
!16 = !{!"../fs/crypto/inline_crypt.c", i32 365, i32 1}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2154671185, i64 2154671677, i64 2154671222, i64 2154671278, i64 2154671312, i64 2154671336, i64 2154671377, i64 2154671398, i64 2154671426, i64 2154671460}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2154692463}
!29 = !{i8 0, i8 2}
