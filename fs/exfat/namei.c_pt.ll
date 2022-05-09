; ModuleID = '/llk/IR_all_yes/fs/exfat/namei.c_pt.bc'
source_filename = "../fs/exfat/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.66 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.62 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.63 = type { ptr }
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
%struct.exfat_sb_info = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.exfat_mount_options, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.callback_head }
%struct.exfat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, ptr, i32, i8, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.3 = type { i32, i32 }
%struct.exfat_chain = type { i32, i32, i8 }
%struct.exfat_uni_name = type { [258 x i16], i16, i8 }
%struct.exfat_hint = type { i32, %union.anon.70 }
%union.anon.70 = type { i32 }
%struct.exfat_dir_entry = type { %struct.exfat_chain, i32, i32, i32, i8, i16, i64, i32, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.exfat_dentry_namebuf }
%struct.exfat_dentry_namebuf = type { ptr, i32 }
%struct.exfat_dentry = type { i8, %union.anon.71 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [7 x i8] }>
%struct.exfat_inode_info = type { %struct.exfat_chain, i32, i32, i16, i32, i8, i32, %struct.exfat_hint, %struct.exfat_hint, %struct.exfat_hint_femp, %struct.spinlock, %struct.list_head, i32, i32, i64, i64, i64, %struct.hlist_node, %struct.rw_semaphore, %struct.inode, %struct.timespec64 }
%struct.exfat_hint_femp = type { i32, i32, %struct.exfat_chain }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@exfat_dentry_ops = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr @exfat_d_revalidate, ptr null, ptr @exfat_d_hash, ptr @exfat_d_cmp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@exfat_utf8_dentry_ops = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr @exfat_d_revalidate, ptr null, ptr @exfat_utf8_d_hash, ptr @exfat_utf8_d_cmp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@exfat_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @exfat_lookup, ptr null, ptr null, ptr null, ptr null, ptr @exfat_create, ptr null, ptr @exfat_unlink, ptr null, ptr @exfat_mkdir, ptr @exfat_rmdir, ptr null, ptr @exfat_rename, ptr @exfat_setattr, ptr @exfat_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/exfat/namei.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rehashed a dentry(%p) in read lookup\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"non-zero size file starts with zero cluster (size : %llu, p_dir : %u, entry : 0x%08x)\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"found bogus dentry(%d) beyond unused empty group(%d) (start_clu : %u, cur_clu : %u)\00", [44 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"abnormal access to deleted dentry\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to exfat_check_dir_empty : err(%d)\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to exfat_remove_entries : err(%d)\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"abnormal access to an inode dropped\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"abnormal access to deleted source dentry\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"abnormal access to deleted target dentry\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 260, i64 287]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 740, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 742, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 673, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 257, i32 6 }
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 271, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 787, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 952, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 975, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 1385, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 1200, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [20 x i8] c"../fs/exfat/namei.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 1222, i32 4 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_d_revalidate(ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %and3 = and i32 %flags, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #9
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %2 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_parent, align 8
  %d_inode.i18 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i18, align 8
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %6 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_fsdata.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %conv = zext i32 %8 to i64
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 38
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #9
  %shr.i.i = lshr i64 %call.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %conv)
  %cmp.i19 = icmp eq i64 %shr.i.i, %conv
  %conv10 = zext i1 %cmp.i19 to i32
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv10, %if.end6 ], [ -10, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_d_hash(ptr noundef %dentry, ptr nocapture noundef %qstr) #0 align 64 {
entry:
  %c = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %nls_io = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %nls_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nls_io, align 8
  %name1 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %6 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name1, align 8
  %8 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qstr, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %entry
  %len.addr.0.i = phi i32 [ %9, %entry ], [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i)
  %tobool.not.i = icmp eq i32 %len.addr.0.i, 0
  br i1 %tobool.not.i, label %exfat_striptail_len.exit.thread, label %land.rhs.i

exfat_striptail_len.exit.thread:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dentry to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c) #9
  br label %for.end

land.rhs.i:                                       ; preds = %while.cond.i
  %sub.i = add i32 %len.addr.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %7, i32 %sub.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %cmp.i = icmp eq i8 %12, 46
  br i1 %cmp.i, label %land.rhs.i.while.cond.i_crit_edge, label %for.body.lr.ph

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

for.body.lr.ph:                                   ; preds = %land.rhs.i
  %13 = ptrtoint ptr %dentry to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c) #9
  %14 = ptrtoint ptr %c to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %c, align 2, !annotation !42
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end.for.body_crit_edge ]
  %hash.032 = phi i32 [ %13, %for.body.lr.ph ], [ %mul.i, %if.end.for.body_crit_edge ]
  %15 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %char2uni, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 %i.033
  %sub = sub i32 %len.addr.0.i, %i.033
  %call5 = call i32 %16(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull %c) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %17 = ptrtoint ptr %c to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %c, align 2
  %call7 = call zeroext i16 @exfat_toupper(ptr noundef %1, i16 noundef zeroext %18) #9
  %conv = zext i16 %call7 to i32
  %shl.i = shl nuw nsw i32 %conv, 4
  %add.i = add i32 %shl.i, %hash.032
  %shr.i = lshr i32 %conv, 4
  %add1.i = add i32 %add.i, %shr.i
  %mul.i = mul i32 %add1.i, 11
  %add = add i32 %call5, %i.033
  %cmp = icmp ugt i32 %len.addr.0.i, %add
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %exfat_striptail_len.exit.thread
  %hash.0.lcssa = phi i32 [ %10, %exfat_striptail_len.exit.thread ], [ %mul.i, %if.end.for.end_crit_edge ]
  %mul.i.i.i = mul i32 %hash.0.lcssa, 1640531527
  %hash10 = getelementptr inbounds %struct.anon.3, ptr %qstr, i32 0, i32 1
  %19 = ptrtoint ptr %hash10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.i.i.i, ptr %hash10, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call5, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_d_cmp(ptr nocapture noundef readonly %dentry, i32 noundef %len, ptr noundef %str, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  %c1 = alloca i16, align 2
  %c2 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %nls_io = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %nls_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nls_io, align 8
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %name, align 8
  %name2 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %8 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name2, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %entry
  %len.addr.0.i = phi i32 [ %7, %entry ], [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i)
  %tobool.not.i = icmp eq i32 %len.addr.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.while.cond.i50.preheader_crit_edge, label %land.rhs.i

while.cond.i.while.cond.i50.preheader_crit_edge:  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i50.preheader

land.rhs.i:                                       ; preds = %while.cond.i
  %sub.i = add i32 %len.addr.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %9, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %cmp.i = icmp eq i8 %11, 46
  br i1 %cmp.i, label %land.rhs.i.while.cond.i_crit_edge, label %land.rhs.i.while.cond.i50.preheader_crit_edge

land.rhs.i.while.cond.i50.preheader_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i50.preheader

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.cond.i50.preheader:                         ; preds = %land.rhs.i.while.cond.i50.preheader_crit_edge, %while.cond.i.while.cond.i50.preheader_crit_edge
  br label %while.cond.i50

while.cond.i50:                                   ; preds = %land.rhs.i54.while.cond.i50_crit_edge, %while.cond.i50.preheader
  %len.addr.0.i48 = phi i32 [ %sub.i51, %land.rhs.i54.while.cond.i50_crit_edge ], [ %len, %while.cond.i50.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i48)
  %tobool.not.i49 = icmp eq i32 %len.addr.0.i48, 0
  br i1 %tobool.not.i49, label %while.cond.i50.exfat_striptail_len.exit55_crit_edge, label %land.rhs.i54

while.cond.i50.exfat_striptail_len.exit55_crit_edge: ; preds = %while.cond.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_striptail_len.exit55

land.rhs.i54:                                     ; preds = %while.cond.i50
  %sub.i51 = add i32 %len.addr.0.i48, -1
  %arrayidx.i52 = getelementptr i8, ptr %str, i32 %sub.i51
  %12 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i52, align 1
  %cmp.i53 = icmp eq i8 %13, 46
  br i1 %cmp.i53, label %land.rhs.i54.while.cond.i50_crit_edge, label %land.rhs.i54.exfat_striptail_len.exit55_crit_edge

land.rhs.i54.exfat_striptail_len.exit55_crit_edge: ; preds = %land.rhs.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_striptail_len.exit55

land.rhs.i54.while.cond.i50_crit_edge:            ; preds = %land.rhs.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i50

exfat_striptail_len.exit55:                       ; preds = %land.rhs.i54.exfat_striptail_len.exit55_crit_edge, %while.cond.i50.exfat_striptail_len.exit55_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c1) #9
  %14 = ptrtoint ptr %c1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %c1, align 2, !annotation !42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c2) #9
  %15 = ptrtoint ptr %c2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %c2, align 2, !annotation !42
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.i, i32 %len.addr.0.i48)
  %cmp.not = icmp eq i32 %len.addr.0.i, %len.addr.0.i48
  br i1 %cmp.not, label %for.cond.preheader, label %exfat_striptail_len.exit55.cleanup_crit_edge

exfat_striptail_len.exit55.cleanup_crit_edge:     ; preds = %exfat_striptail_len.exit55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %exfat_striptail_len.exit55
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %5, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp556.not = icmp eq i32 %len, 0
  br i1 %cmp556.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %if.end17
  %add = add i32 %call7, %i.057
  %cmp5 = icmp ult i32 %add, %len
  br i1 %cmp5, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.057 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %16 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %char2uni, align 4
  %18 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name2, align 8
  %arrayidx = getelementptr i8, ptr %19, i32 %i.057
  %sub = sub i32 %len.addr.0.i, %i.057
  %call7 = call i32 %17(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull %c1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %for.body.cleanup_crit_edge, label %if.end10

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %20 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %char2uni, align 4
  %arrayidx12 = getelementptr i8, ptr %str, i32 %i.057
  %call14 = call i32 %21(ptr noundef %arrayidx12, i32 noundef %sub, ptr noundef nonnull %c2) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %call14)
  %cmp15.not = icmp eq i32 %call7, %call14
  br i1 %cmp15.not, label %if.end17, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %22 = ptrtoint ptr %c1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %c1, align 2
  %call18 = call zeroext i16 @exfat_toupper(ptr noundef %1, i16 noundef zeroext %23) #9
  %24 = ptrtoint ptr %c2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %c2, align 2
  %call19 = call zeroext i16 @exfat_toupper(ptr noundef %1, i16 noundef zeroext %25) #9
  call void @__sanitizer_cov_trace_cmp2(i16 %call18, i16 %call19)
  %cmp21.not = icmp eq i16 %call18, %call19
  br i1 %cmp21.not, label %for.cond, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end17.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %exfat_striptail_len.exit55.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %exfat_striptail_len.exit55.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ], [ 1, %if.end10.cleanup_crit_edge ], [ 1, %if.end17.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c1) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_utf8_d_hash(ptr noundef %dentry, ptr nocapture noundef %qstr) #0 align 64 {
entry:
  %u = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %name1 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 8
  %4 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qstr, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %entry
  %len.addr.0.i = phi i32 [ %5, %entry ], [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i)
  %tobool.not.i = icmp eq i32 %len.addr.0.i, 0
  br i1 %tobool.not.i, label %exfat_striptail_len.exit.thread, label %land.rhs.i

exfat_striptail_len.exit.thread:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dentry to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u) #9
  br label %for.end

land.rhs.i:                                       ; preds = %while.cond.i
  %sub.i = add i32 %len.addr.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %3, i32 %sub.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %cmp.i = icmp eq i8 %8, 46
  br i1 %cmp.i, label %land.rhs.i.while.cond.i_crit_edge, label %for.body.preheader

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

for.body.preheader:                               ; preds = %land.rhs.i
  %9 = ptrtoint ptr %dentry to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u) #9
  %10 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %u, align 4, !annotation !42
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %for.body.preheader
  %i.032 = phi i32 [ %add, %cond.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %hash.031 = phi i32 [ %mul.i, %cond.end.for.body_crit_edge ], [ %9, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %3, i32 %i.032
  %sub = sub i32 %len.addr.0.i, %i.032
  %call4 = call i32 @utf8_to_utf32(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull %u) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %11 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %12)
  %cmp6 = icmp ult i32 %12, 65536
  br i1 %cmp6, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %12 to i16
  %call7 = call zeroext i16 @exfat_toupper(ptr noundef %1, i16 noundef zeroext %conv) #9
  %conv8 = zext i16 %call7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %conv8, %cond.true ], [ %12, %if.end.cond.end_crit_edge ]
  %shl.i = shl i32 %cond, 4
  %add.i = add i32 %shl.i, %hash.031
  %shr.i = lshr i32 %cond, 4
  %add1.i = add i32 %add.i, %shr.i
  %mul.i = mul i32 %add1.i, 11
  %add = add i32 %call4, %i.032
  %cmp = icmp ugt i32 %len.addr.0.i, %add
  br i1 %cmp, label %cond.end.for.body_crit_edge, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %exfat_striptail_len.exit.thread
  %hash.0.lcssa = phi i32 [ %6, %exfat_striptail_len.exit.thread ], [ %mul.i, %cond.end.for.end_crit_edge ]
  %mul.i.i.i = mul i32 %hash.0.lcssa, 1640531527
  %hash11 = getelementptr inbounds %struct.anon.3, ptr %qstr, i32 0, i32 1
  %13 = ptrtoint ptr %hash11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul.i.i.i, ptr %hash11, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call4, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_utf8_d_cmp(ptr nocapture noundef readonly %dentry, i32 noundef %len, ptr noundef %str, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  %u_a = alloca i32, align 4
  %u_b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %name, align 8
  %name2 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %4 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name2, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %entry
  %len.addr.0.i = phi i32 [ %3, %entry ], [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i)
  %tobool.not.i = icmp eq i32 %len.addr.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.while.cond.i55.preheader_crit_edge, label %land.rhs.i

while.cond.i.while.cond.i55.preheader_crit_edge:  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i55.preheader

land.rhs.i:                                       ; preds = %while.cond.i
  %sub.i = add i32 %len.addr.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %5, i32 %sub.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %cmp.i = icmp eq i8 %7, 46
  br i1 %cmp.i, label %land.rhs.i.while.cond.i_crit_edge, label %land.rhs.i.while.cond.i55.preheader_crit_edge

land.rhs.i.while.cond.i55.preheader_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i55.preheader

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.cond.i55.preheader:                         ; preds = %land.rhs.i.while.cond.i55.preheader_crit_edge, %while.cond.i.while.cond.i55.preheader_crit_edge
  br label %while.cond.i55

while.cond.i55:                                   ; preds = %land.rhs.i59.while.cond.i55_crit_edge, %while.cond.i55.preheader
  %len.addr.0.i53 = phi i32 [ %sub.i56, %land.rhs.i59.while.cond.i55_crit_edge ], [ %len, %while.cond.i55.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i53)
  %tobool.not.i54 = icmp eq i32 %len.addr.0.i53, 0
  br i1 %tobool.not.i54, label %while.cond.i55.exfat_striptail_len.exit60_crit_edge, label %land.rhs.i59

while.cond.i55.exfat_striptail_len.exit60_crit_edge: ; preds = %while.cond.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_striptail_len.exit60

land.rhs.i59:                                     ; preds = %while.cond.i55
  %sub.i56 = add i32 %len.addr.0.i53, -1
  %arrayidx.i57 = getelementptr i8, ptr %str, i32 %sub.i56
  %8 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i57, align 1
  %cmp.i58 = icmp eq i8 %9, 46
  br i1 %cmp.i58, label %land.rhs.i59.while.cond.i55_crit_edge, label %land.rhs.i59.exfat_striptail_len.exit60_crit_edge

land.rhs.i59.exfat_striptail_len.exit60_crit_edge: ; preds = %land.rhs.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_striptail_len.exit60

land.rhs.i59.while.cond.i55_crit_edge:            ; preds = %land.rhs.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i55

exfat_striptail_len.exit60:                       ; preds = %land.rhs.i59.exfat_striptail_len.exit60_crit_edge, %while.cond.i55.exfat_striptail_len.exit60_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u_a) #9
  %10 = ptrtoint ptr %u_a to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %u_a, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u_b) #9
  %11 = ptrtoint ptr %u_b to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %u_b, align 4, !annotation !42
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.i, i32 %len.addr.0.i53)
  %cmp.not = icmp eq i32 %len.addr.0.i, %len.addr.0.i53
  br i1 %cmp.not, label %for.cond.preheader, label %exfat_striptail_len.exit60.cleanup_crit_edge

exfat_striptail_len.exit60.cleanup_crit_edge:     ; preds = %exfat_striptail_len.exit60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %exfat_striptail_len.exit60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i)
  %cmp461.not = icmp eq i32 %len.addr.0.i, 0
  br i1 %cmp461.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.062 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %12 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name2, align 8
  %arrayidx = getelementptr i8, ptr %13, i32 %i.062
  %sub = sub i32 %len.addr.0.i, %i.062
  %call6 = call i32 @utf8_to_utf32(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef nonnull %u_a) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %for.body.cleanup_crit_edge, label %if.end9

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %arrayidx10 = getelementptr i8, ptr %str, i32 %i.062
  %call12 = call i32 @utf8_to_utf32(ptr noundef %arrayidx10, i32 noundef %sub, ptr noundef nonnull %u_b) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %call12)
  %cmp13.not = icmp eq i32 %call6, %call12
  br i1 %cmp13.not, label %if.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %u_a to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %u_a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %15)
  %cmp16 = icmp ult i32 %15, 65536
  br i1 %cmp16, label %land.lhs.true, label %if.end15.if.else_crit_edge

if.end15.if.else_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end15
  %16 = ptrtoint ptr %u_b to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %u_b, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %17)
  %cmp17 = icmp ult i32 %17, 65536
  br i1 %cmp17, label %if.then18, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then18:                                        ; preds = %land.lhs.true
  %conv = trunc i32 %15 to i16
  %call19 = call zeroext i16 @exfat_toupper(ptr noundef %1, i16 noundef zeroext %conv) #9
  %18 = ptrtoint ptr %u_b to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %u_b, align 4
  %conv21 = trunc i32 %19 to i16
  %call22 = call zeroext i16 @exfat_toupper(ptr noundef %1, i16 noundef zeroext %conv21) #9
  call void @__sanitizer_cov_trace_cmp2(i16 %call19, i16 %call22)
  %cmp24.not = icmp eq i16 %call19, %call22
  br i1 %cmp24.not, label %if.then18.for.inc_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18.for.inc_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end15.if.else_crit_edge
  %20 = ptrtoint ptr %u_b to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %u_b, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %21)
  %cmp28.not = icmp eq i32 %15, %21
  br i1 %cmp28.not, label %if.else.for.inc_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then18.for.inc_crit_edge
  %add = add i32 %call6, %i.062
  %cmp4 = icmp ugt i32 %len.addr.0.i, %add
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %exfat_striptail_len.exit60.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %exfat_striptail_len.exit60.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ], [ 1, %if.end9.cleanup_crit_edge ], [ 1, %if.then18.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u_b) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u_a) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @exfat_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %cdir.i = alloca %struct.exfat_chain, align 4
  %uni_name.i = alloca %struct.exfat_uni_name, align 2
  %hint_opt.i = alloca %struct.exfat_hint, align 4
  %info = alloca %struct.exfat_dir_entry, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %info) #9
  %2 = call ptr @memset(ptr %info, i32 255, i32 104)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %4, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #9
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cdir.i) #9
  %5 = call ptr @memset(ptr %cdir.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %uni_name.i) #9
  %6 = call ptr @memset(ptr %uni_name.i, i32 255, i32 520)
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %dir, i32 -264
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hint_opt.i) #9
  %11 = ptrtoint ptr %hint_opt.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %hint_opt.i, align 4, !annotation !42
  %12 = getelementptr inbounds %struct.exfat_hint, ptr %hint_opt.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !42
  %14 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  br i1 %cmp.i, label %exfat_find.exit.thread121, label %if.end.i

exfat_find.exit.thread121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hint_opt.i) #9
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %uni_name.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cdir.i) #9
  br label %out

if.end.i:                                         ; preds = %entry
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name.i, align 8
  %call.i.i = call fastcc i32 @__exfat_resolve_path(ptr noundef %dir, ptr noundef %17, ptr noundef nonnull %cdir.i, ptr noundef nonnull %uni_name.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.exfat_find.exit_crit_edge

if.end.i.exfat_find.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_find.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = call i32 @exfat_calc_num_entries(ptr noundef nonnull %uni_name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.exfat_find.exit_crit_edge, label %if.end8.i

if.end4.i.exfat_find.exit_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_find.exit

if.end8.i:                                        ; preds = %if.end4.i
  %version.i = getelementptr i8, ptr %dir, i32 -232
  %18 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version.i, align 8
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #9
  %call.i.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #9
  %20 = trunc i64 %call.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %20)
  %cmp10.not.i = icmp eq i32 %19, %20
  br i1 %cmp10.not.i, label %if.end8.i.if.end19.i_crit_edge, label %if.then12.i

if.end8.i.if.end19.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %cdir.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cdir.i, align 4
  %hint_stat.i = getelementptr i8, ptr %dir, i32 -220
  %23 = ptrtoint ptr %hint_stat.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %hint_stat.i, align 4
  %24 = getelementptr i8, ptr %dir, i32 -216
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  %call.i.i.i175.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #9
  %call.i.i176.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #9
  %conv17.i = trunc i64 %call.i.i176.i to i32
  %26 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv17.i, ptr %version.i, align 8
  %hint_femp.i = getelementptr i8, ptr %dir, i32 -212
  %27 = ptrtoint ptr %hint_femp.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %hint_femp.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end19.i_crit_edge
  %call20.i = call i32 @exfat_find_dir_entry(ptr noundef %8, ptr noundef %add.ptr.i.i, ptr noundef nonnull %cdir.i, ptr noundef nonnull %uni_name.i, i32 noundef %call5.i, i32 noundef 4095, ptr noundef nonnull %hint_opt.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.end19.i.exfat_find.exit_crit_edge, label %if.end24.i

if.end19.i.exfat_find.exit_crit_edge:             ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_find.exit

if.end24.i:                                       ; preds = %if.end19.i
  %28 = call ptr @memcpy(ptr %info, ptr %cdir.i, i32 12)
  %entry26.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 1
  %29 = ptrtoint ptr %entry26.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call20.i, ptr %entry26.i, align 4
  %num_subdirs.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 7
  %30 = ptrtoint ptr %num_subdirs.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %num_subdirs.i, align 8
  %31 = ptrtoint ptr %hint_opt.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hint_opt.i, align 4
  %33 = ptrtoint ptr %cdir.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %cdir.i, align 4
  %flags.i = getelementptr inbounds %struct.exfat_chain, ptr %cdir.i, i32 0, i32 2
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags.i, align 4
  %36 = and i8 %35, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool31.not.i = icmp eq i8 %36, 0
  br i1 %tobool31.not.i, label %if.end24.i.if.end33.i_crit_edge, label %if.then32.i

if.end24.i.if.end33.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then32.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %dentries_per_clu.i = getelementptr inbounds %struct.exfat_sb_info, ptr %10, i32 0, i32 11
  %37 = ptrtoint ptr %dentries_per_clu.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dentries_per_clu.i, align 8
  %div.i = udiv i32 %call20.i, %38
  %size.i = getelementptr inbounds %struct.exfat_chain, ptr %cdir.i, i32 0, i32 1
  %39 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size.i, align 4
  %sub.i = sub i32 %40, %div.i
  store i32 %sub.i, ptr %size.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %if.end24.i.if.end33.i_crit_edge
  %41 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %12, align 4
  %call34.i = call ptr @exfat_get_dentry_set(ptr noundef %8, ptr noundef nonnull %cdir.i, i32 noundef %42, i32 noundef 2) #9
  %tobool35.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool35.not.i, label %if.end33.i.exfat_find.exit.thread_crit_edge, label %if.end37.i

if.end33.i.exfat_find.exit.thread_crit_edge:      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_find.exit.thread

if.end37.i:                                       ; preds = %if.end33.i
  %call38.i = call ptr @exfat_get_dentry_cached(ptr noundef nonnull %call34.i, i32 noundef 0) #9
  %call39.i = call ptr @exfat_get_dentry_cached(ptr noundef nonnull %call34.i, i32 noundef 1) #9
  %call40.i = call i32 @exfat_get_entry_type(ptr noundef %call38.i) #9
  %type.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 2
  %43 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call40.i, ptr %type.i, align 8
  %attr.i = getelementptr inbounds %struct.exfat_dentry, ptr %call38.i, i32 0, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %attr.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %attr.i, align 1
  %46 = call i16 @llvm.bswap.i16(i16 %45) #9
  %attr42.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 5
  %47 = ptrtoint ptr %attr42.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %attr42.i, align 2
  %valid_size.i = getelementptr inbounds %struct.exfat_dentry, ptr %call39.i, i32 0, i32 1, i32 0, i32 4
  %48 = ptrtoint ptr %valid_size.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %valid_size.i, align 1
  %50 = call i64 @llvm.bswap.i64(i64 %49) #9
  %size44.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 6
  %51 = ptrtoint ptr %size44.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %size44.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %call40.i)
  %cmp46.i = icmp eq i32 %call40.i, 287
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %49)
  %cmp49.i = icmp eq i64 %49, 0
  %or.cond.i = select i1 %cmp46.i, i1 %cmp49.i, i1 false
  br i1 %or.cond.i, label %if.then51.i, label %if.else.i

if.then51.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags52.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 4
  %52 = ptrtoint ptr %flags52.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %flags52.i, align 8
  br label %if.end59.i

if.else.i:                                        ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %dentry43.i = getelementptr inbounds %struct.exfat_dentry, ptr %call39.i, i32 0, i32 1
  %53 = ptrtoint ptr %dentry43.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dentry43.i, align 1
  %flags55.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 4
  %55 = ptrtoint ptr %flags55.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %flags55.i, align 8
  %start_clu57.i = getelementptr inbounds %struct.exfat_dentry, ptr %call39.i, i32 0, i32 1, i32 0, i32 10
  %56 = ptrtoint ptr %start_clu57.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %start_clu57.i, align 1
  %58 = call i32 @llvm.bswap.i32(i32 %57) #9
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else.i, %if.then51.i
  %.sink.i = phi i32 [ -1, %if.then51.i ], [ %58, %if.else.i ]
  %59 = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 3
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink.i, ptr %59, align 4
  %crtime.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 10
  %create_tz.i = getelementptr inbounds %struct.exfat_dentry, ptr %call38.i, i32 0, i32 1, i32 0, i32 12
  %61 = ptrtoint ptr %create_tz.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %create_tz.i, align 1
  %create_time.i = getelementptr inbounds %struct.exfat_dentry, ptr %call38.i, i32 0, i32 1, i32 0, i32 4
  %63 = ptrtoint ptr %create_time.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %create_time.i, align 1
  %create_date.i = getelementptr inbounds %struct.exfat_dentry, ptr %call38.i, i32 0, i32 1, i32 0, i32 5
  %65 = ptrtoint ptr %create_date.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %create_date.i, align 1
  %create_time_cs.i = getelementptr inbounds %struct.exfat_dentry, ptr %call38.i, i32 0, i32 1, i32 0, i32 10
  %67 = ptrtoint ptr %create_time_cs.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %create_time_cs.i, align 1
  call void @exfat_get_entry_time(ptr noundef %10, ptr noundef %crtime.i, i8 noundef zeroext %62, i16 noundef zeroext %64, i16 noundef zeroext %66, i8 noundef zeroext %68) #9
  %mtime.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 9
  %modify_tz.i = getelementptr inbounds %struct.exfat_dentry, ptr %call38.i, i32 0, i32 1, i32 0, i32 13
  %69 = ptrtoint ptr %modify_tz.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %modify_tz.i, align 1
  %modify_time.i = getelementptr inbounds %struct.exfat_dentry, ptr %call38.i, i32 0, i32 1, i32 0, i32 6
  %71 = ptrtoint ptr %modify_time.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %modify_time.i, align 1
  %modify_date.i = getelementptr inbounds %struct.exfat_dentry, ptr %call38.i, i32 0, i32 1, i32 0, i32 7
  %73 = ptrtoint ptr %modify_date.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %modify_date.i, align 1
  %modify_time_cs.i = getelementptr inbounds %struct.exfat_dentry, ptr %call38.i, i32 0, i32 1, i32 0, i32 11
  %75 = ptrtoint ptr %modify_time_cs.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %modify_time_cs.i, align 1
  call void @exfat_get_entry_time(ptr noundef %10, ptr noundef %mtime.i, i8 noundef zeroext %70, i16 noundef zeroext %72, i16 noundef zeroext %74, i8 noundef zeroext %76) #9
  %atime.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 8
  %access_tz.i = getelementptr inbounds %struct.exfat_dentry, ptr %call38.i, i32 0, i32 1, i32 0, i32 14
  %77 = ptrtoint ptr %access_tz.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %access_tz.i, align 1
  %access_time.i = getelementptr inbounds %struct.exfat_dentry, ptr %call38.i, i32 0, i32 1, i32 0, i32 8
  %79 = ptrtoint ptr %access_time.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %access_time.i, align 1
  %access_date.i = getelementptr inbounds %struct.exfat_dentry, ptr %call38.i, i32 0, i32 1, i32 0, i32 9
  %81 = ptrtoint ptr %access_date.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %access_date.i, align 1
  call void @exfat_get_entry_time(ptr noundef %10, ptr noundef %atime.i, i8 noundef zeroext %78, i16 noundef zeroext %80, i16 noundef zeroext %82, i8 noundef zeroext 0) #9
  %call71.i = call i32 @exfat_free_dentry_set(ptr noundef nonnull %call34.i, i32 noundef 0) #9
  %start_clu72.i = getelementptr i8, ptr %dir, i32 -240
  %83 = ptrtoint ptr %start_clu72.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %start_clu72.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp73.i = icmp eq i32 %84, 0
  br i1 %cmp73.i, label %if.then75.i, label %if.end80.i

if.then75.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %call76.i = call fastcc i64 @i_size_read(ptr noundef %dir) #9
  %85 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i.i, align 8
  %entry79.i = getelementptr i8, ptr %dir, i32 -252
  %87 = ptrtoint ptr %entry79.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %entry79.i, align 4
  call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @.str.3, i64 noundef %call76.i, i32 noundef %86, i32 noundef %88) #12
  br label %exfat_find.exit.thread

if.end80.i:                                       ; preds = %if.end59.i
  %89 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %90)
  %cmp82.i = icmp eq i32 %90, 260
  br i1 %cmp82.i, label %if.then84.i, label %if.end80.i.exfat_find.exit.thread119_crit_edge

if.end80.i.exfat_find.exit.thread119_crit_edge:   ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_find.exit.thread119

if.then84.i:                                      ; preds = %if.end80.i
  %91 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %59, align 4
  %93 = ptrtoint ptr %size44.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %size44.i, align 8
  %cluster_size_bits.i = getelementptr inbounds %struct.exfat_sb_info, ptr %10, i32 0, i32 3
  %95 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cluster_size_bits.i, align 8
  %sh_prom.i = zext i32 %96 to i64
  %shr.i = ashr i64 %94, %sh_prom.i
  %conv87.i = trunc i64 %shr.i to i32
  %flags88.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 4
  %97 = ptrtoint ptr %flags88.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %flags88.i, align 8
  call void @exfat_chain_set(ptr noundef nonnull %cdir.i, i32 noundef %92, i32 noundef %conv87.i, i8 noundef zeroext %98) #9
  %call89.i = call i32 @exfat_count_dir_entries(ptr noundef %8, ptr noundef nonnull %cdir.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %cmp90.i = icmp slt i32 %call89.i, 0
  br i1 %cmp90.i, label %if.then84.i.exfat_find.exit.thread_crit_edge, label %if.end93.i

if.then84.i.exfat_find.exit.thread_crit_edge:     ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_find.exit.thread

if.end93.i:                                       ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add nuw i32 %call89.i, 2
  %99 = ptrtoint ptr %num_subdirs.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add.i, ptr %num_subdirs.i, align 8
  br label %exfat_find.exit.thread119

exfat_find.exit.thread:                           ; preds = %if.then84.i.exfat_find.exit.thread_crit_edge, %if.then75.i, %if.end33.i.exfat_find.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hint_opt.i) #9
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %uni_name.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cdir.i) #9
  br label %unlock

exfat_find.exit.thread119:                        ; preds = %if.end93.i, %if.end80.i.exfat_find.exit.thread119_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hint_opt.i) #9
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %uni_name.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cdir.i) #9
  %100 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %info, align 8
  %conv.i = zext i32 %101 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %102 = ptrtoint ptr %entry26.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %entry26.i, align 4
  %conv3.i = zext i32 %103 to i64
  %or.i = or i64 %shl.i, %conv3.i
  %call5 = call ptr @exfat_build_inode(ptr noundef %1, ptr noundef nonnull %info, i64 noundef %or.i) #9
  %cmp.i.i.not = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %104 = ptrtoint ptr %call5 to i32
  br i1 %cmp.i.i.not, label %exfat_find.exit.thread119.unlock_crit_edge, label %if.end9

exfat_find.exit.thread119.unlock_crit_edge:       ; preds = %exfat_find.exit.thread119
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

exfat_find.exit:                                  ; preds = %if.end19.i.exfat_find.exit_crit_edge, %if.end4.i.exfat_find.exit_crit_edge, %if.end.i.exfat_find.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end.i.exfat_find.exit_crit_edge ], [ %call5.i, %if.end4.i.exfat_find.exit_crit_edge ], [ %call20.i, %if.end19.i.exfat_find.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hint_opt.i) #9
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %uni_name.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cdir.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %retval.0.i)
  %cond = icmp eq i32 %retval.0.i, -2
  br i1 %cond, label %exfat_find.exit.out_crit_edge, label %exfat_find.exit.unlock_crit_edge

exfat_find.exit.unlock_crit_edge:                 ; preds = %exfat_find.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

exfat_find.exit.out_crit_edge:                    ; preds = %exfat_find.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9:                                          ; preds = %exfat_find.exit.thread119
  %105 = ptrtoint ptr %call5 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %call5, align 8
  %call11 = call ptr @d_find_alias(ptr noundef %call5) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end9.if.end53_crit_edge, label %land.lhs.true

if.end9.if.end53_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end9
  %d_parent = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 3
  %107 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %d_parent, align 8
  %d_parent13 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %109 = ptrtoint ptr %d_parent13 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %d_parent13, align 8
  %cmp14 = icmp eq ptr %108, %110
  br i1 %cmp14, label %land.lhs.true15, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

land.lhs.true15:                                  ; preds = %land.lhs.true
  %cmp.i102 = icmp eq ptr %108, %call11
  br i1 %cmp.i102, label %exfat_d_anon_disconn.exit, label %land.lhs.true15.if.then18_crit_edge

land.lhs.true15.if.then18_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

exfat_d_anon_disconn.exit:                        ; preds = %land.lhs.true15
  %111 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %call11, align 8
  %113 = and i32 %112, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool17.not = icmp eq i32 %113, 0
  br i1 %tobool17.not, label %exfat_d_anon_disconn.exit.if.then18_crit_edge, label %exfat_d_anon_disconn.exit.if.end53_crit_edge

exfat_d_anon_disconn.exit.if.end53_crit_edge:     ; preds = %exfat_d_anon_disconn.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

exfat_d_anon_disconn.exit.if.then18_crit_edge:    ; preds = %exfat_d_anon_disconn.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.then18:                                        ; preds = %exfat_d_anon_disconn.exit.if.then18_crit_edge, %land.lhs.true15.if.then18_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 2, i32 1
  %114 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %115, null
  br i1 %tobool.not.i.i.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then18
  %d_name22 = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 4
  %116 = ptrtoint ptr %d_name22 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %d_name22, align 8
  %118 = ptrtoint ptr %d_name to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %117, i64 %119)
  %cmp24.not = icmp eq i64 %117, %119
  br i1 %cmp24.not, label %if.then21.if.end39_crit_edge, label %do.end, !prof !43

if.then21.if.end39_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 741, i32 noundef 9, ptr noundef null) #9
  br label %if.end39

if.end39:                                         ; preds = %do.end, %if.then21.if.end39_crit_edge
  call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %call11) #12
  call void @d_drop(ptr noundef %dentry) #9
  call void @d_rehash(ptr noundef nonnull %call11) #9
  br label %if.end50

if.else:                                          ; preds = %if.then18
  %120 = and i16 %106, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %120)
  %cmp46 = icmp eq i16 %120, 16384
  br i1 %cmp46, label %if.else.if.end50_crit_edge, label %if.then48

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @d_move(ptr noundef nonnull %call11, ptr noundef %dentry) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.else.if.end50_crit_edge, %if.end39
  call void @iput(ptr noundef %call5) #9
  %121 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock52 = getelementptr inbounds %struct.exfat_sb_info, ptr %122, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %s_lock52) #9
  br label %cleanup

if.end53:                                         ; preds = %exfat_d_anon_disconn.exit.if.end53_crit_edge, %land.lhs.true.if.end53_crit_edge, %if.end9.if.end53_crit_edge
  call void @dput(ptr noundef %call11) #9
  br label %out

out:                                              ; preds = %if.end53, %exfat_find.exit.out_crit_edge, %exfat_find.exit.thread121
  %inode.0 = phi ptr [ %call5, %if.end53 ], [ null, %exfat_find.exit.out_crit_edge ], [ null, %exfat_find.exit.thread121 ]
  %123 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock55 = getelementptr inbounds %struct.exfat_sb_info, ptr %124, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %s_lock55) #9
  %tobool56.not = icmp eq ptr %inode.0, null
  br i1 %tobool56.not, label %if.then57, label %out.if.end60_crit_edge

out.if.end60_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then57:                                        ; preds = %out
  %i_version.i.i106 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i107 = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i106, i32 noundef 8) #9
  %call.i.i15.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i106) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i114.for.cond.i_crit_edge, %if.then57
  %cur.0.i = phi i64 [ %call.i.i15.i, %if.then57 ], [ %call.i.i112, %if.end.i114.for.cond.i_crit_edge ]
  %and.i108 = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i108)
  %tobool.not.i109 = icmp eq i64 %and.i108, 0
  br i1 %tobool.not.i109, label %if.end.i114, label %do.end.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  %extract139 = lshr i64 %cur.0.i, 1
  %extract.t140 = trunc i64 %extract139 to i32
  br label %inode_query_iversion.exit

if.end.i114:                                      ; preds = %for.cond.i
  %or.i110 = or i64 %cur.0.i, 1
  %call.i.i.i111 = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i106, i32 noundef 8) #9
  %call.i.i112 = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i106, i64 noundef %cur.0.i, i64 noundef %or.i110) #9
  %cmp.i113 = icmp eq i64 %call.i.i112, %cur.0.i
  br i1 %cmp.i113, label %inode_query_iversion.exit.loopexit, label %if.end.i114.for.cond.i_crit_edge, !prof !43

if.end.i114.for.cond.i_crit_edge:                 ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

inode_query_iversion.exit.loopexit:               ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #11
  %extract137 = lshr i64 %cur.0.i, 1
  %extract.t138 = trunc i64 %extract137 to i32
  br label %inode_query_iversion.exit

inode_query_iversion.exit:                        ; preds = %inode_query_iversion.exit.loopexit, %do.end.i
  %cur.0.i136.off1 = phi i32 [ %extract.t138, %inode_query_iversion.exit.loopexit ], [ %extract.t140, %do.end.i ]
  %125 = inttoptr i32 %cur.0.i136.off1 to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %126 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %d_fsdata.i, align 4
  br label %if.end60

if.end60:                                         ; preds = %inode_query_iversion.exit, %out.if.end60_crit_edge
  %call61 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #9
  br label %cleanup

unlock:                                           ; preds = %exfat_find.exit.unlock_crit_edge, %exfat_find.exit.thread119.unlock_crit_edge, %exfat_find.exit.thread
  %err.0 = phi i32 [ %104, %exfat_find.exit.thread119.unlock_crit_edge ], [ %retval.0.i, %exfat_find.exit.unlock_crit_edge ], [ -5, %exfat_find.exit.thread ]
  %127 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock63 = getelementptr inbounds %struct.exfat_sb_info, ptr %128, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %s_lock63) #9
  %129 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end60, %if.end50
  %retval.0 = phi ptr [ %call61, %if.end60 ], [ %129, %unlock ], [ %call11, %if.end50 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %info) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  %cdir = alloca %struct.exfat_chain, align 4
  %info = alloca %struct.exfat_dir_entry, align 8
  %tmp = alloca %struct.timespec64, align 8
  %tmp19 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cdir) #9
  %2 = call ptr @memset(ptr %cdir, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %info) #9
  %3 = call ptr @memset(ptr %info, i32 255, i32 104)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %5, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #9
  %call1 = tail call i32 @exfat_set_volume_dirty(ptr noundef %1) #9
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %call2 = call fastcc i32 @exfat_add_entry(ptr noundef %dir, ptr noundef %7, ptr noundef nonnull %cdir, i32 noundef 287, ptr noundef nonnull %info)
  %call3 = call i32 @exfat_clear_volume_dirty(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i1.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %if.end ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %8 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %8, -2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #9
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !43

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #9
  %9 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %10 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_flags, align 4
  %and = and i32 %14, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %inode_inc_iversion.exit.if.then8_crit_edge

inode_inc_iversion.exit.if.then8_crit_edge:       ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

lor.lhs.false:                                    ; preds = %inode_inc_iversion.exit
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %15 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_flags, align 4
  %and6 = and i32 %16, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %inode_inc_iversion.exit.if.then8_crit_edge
  call void @exfat_sync_inode(ptr noundef %dir) #9
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #9
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %info, align 8
  %conv.i = zext i32 %18 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %entry2.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 1
  %19 = ptrtoint ptr %entry2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %entry2.i, align 4
  %conv3.i = zext i32 %20 to i64
  %or.i = or i64 %shl.i, %conv3.i
  %call11 = call ptr @exfat_build_inode(ptr noundef %1, ptr noundef nonnull %info, i64 noundef %or.i) #9
  %cmp.i.i47.not = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  %21 = ptrtoint ptr %call11 to i32
  br i1 %cmp.i.i47.not, label %if.end9.unlock_crit_edge, label %if.end15

if.end9.unlock_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end15:                                         ; preds = %if.end9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  %i_version.i.i.i48 = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 38
  %call.i.i.i.i.i49 = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i48, i32 noundef 8) #9
  %call.i.i1.i.i50 = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i48) #9
  br label %for.cond.i.i56

for.cond.i.i56:                                   ; preds = %for.cond.i.i56.for.cond.i.i56_crit_edge, %if.end15
  %cur.0.i.i51 = phi i64 [ %call.i.i1.i.i50, %if.end15 ], [ %call.i.i.i54, %for.cond.i.i56.for.cond.i.i56_crit_edge ]
  %22 = add i64 %cur.0.i.i51, 2
  %add.i.i52 = and i64 %22, -2
  %call.i.i.i.i53 = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i48, i32 noundef 8) #9
  %call.i.i.i54 = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i48, i64 noundef %cur.0.i.i51, i64 noundef %add.i.i52) #9
  %cmp.i.i55 = icmp eq i64 %call.i.i.i54, %cur.0.i.i51
  br i1 %cmp.i.i55, label %inode_inc_iversion.exit57, label %for.cond.i.i56.for.cond.i.i56_crit_edge, !prof !43

for.cond.i.i56.for.cond.i.i56_crit_edge:          ; preds = %for.cond.i.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i56

inode_inc_iversion.exit57:                        ; preds = %for.cond.i.i56
  call void @__sanitizer_cov_trace_pc() #11
  %i_mtime16 = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 15
  %i_ctime17 = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 17
  %i_crtime = getelementptr i8, ptr %call11, i32 784
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp19) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp19, ptr noundef %call11) #9
  %23 = call ptr @memcpy(ptr %i_crtime, ptr %tmp19, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp19) #9
  %24 = call ptr @memcpy(ptr %i_ctime17, ptr %i_crtime, i32 16)
  %25 = call ptr @memcpy(ptr %i_atime, ptr %i_crtime, i32 16)
  %26 = call ptr @memcpy(ptr %i_mtime16, ptr %i_crtime, i32 16)
  call void @exfat_truncate_atime(ptr noundef %i_atime) #9
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call11) #9
  br label %unlock

unlock:                                           ; preds = %inode_inc_iversion.exit57, %if.end9.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ %call2, %entry.unlock_crit_edge ], [ %21, %if.end9.unlock_crit_edge ], [ 0, %inode_inc_iversion.exit57 ]
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock22 = getelementptr inbounds %struct.exfat_sb_info, ptr %28, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %s_lock22) #9
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %info) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cdir) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_unlink(ptr noundef %dir, ptr nocapture noundef %dentry) #0 align 64 {
entry:
  %cdir = alloca %struct.exfat_chain, align 4
  %bh = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  %tmp31 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cdir) #9
  %0 = call ptr @memset(ptr %cdir, i32 255, i32 12)
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 -264
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #9
  %5 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !42
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %7, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #9
  call void @exfat_chain_dup(ptr noundef nonnull %cdir, ptr noundef %add.ptr.i) #9
  %entry4 = getelementptr i8, ptr %4, i32 -252
  %8 = ptrtoint ptr %entry4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entry4, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64735, i32 %11)
  %cmp = icmp eq i32 %11, -64735
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #12
  br label %unlock

if.end:                                           ; preds = %entry
  %call7 = call ptr @exfat_get_dentry(ptr noundef %2, ptr noundef nonnull %cdir, i32 noundef %9, ptr noundef nonnull %bh) #9
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end.unlock_crit_edge, label %if.end9

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @exfat_count_ext_entries(ptr noundef %2, ptr noundef nonnull %cdir, i32 noundef %9, ptr noundef nonnull %call7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then12.unlock_crit_edge, label %if.then.i

if.then12.unlock_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %13) #9
  br label %unlock

if.end13:                                         ; preds = %if.end9
  %inc = add nuw i32 %call10, 1
  %14 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bh, align 4
  %tobool.not.i68 = icmp eq ptr %15, null
  br i1 %tobool.not.i68, label %if.end13.brelse.exit70_crit_edge, label %if.then.i69

if.end13.brelse.exit70_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit70

if.then.i69:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %15) #9
  br label %brelse.exit70

brelse.exit70:                                    ; preds = %if.then.i69, %if.end13.brelse.exit70_crit_edge
  %call14 = call i32 @exfat_set_volume_dirty(ptr noundef %2) #9
  %call15 = call i32 @exfat_remove_entries(ptr noundef %dir, ptr noundef nonnull %cdir, i32 noundef %9, i32 noundef 0, i32 noundef %inc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %brelse.exit70.unlock_crit_edge

brelse.exit70.unlock_crit_edge:                   ; preds = %brelse.exit70
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end18:                                         ; preds = %brelse.exit70
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64735, ptr %add.ptr.i, align 8
  %call21 = call i32 @exfat_clear_volume_dirty(ptr noundef %2) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i1.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end18
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %if.end18 ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %17 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %17, -2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #9
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !43

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #9
  %18 = call ptr @memcpy(ptr %i_atime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %19 = call ptr @memcpy(ptr %i_mtime, ptr %i_atime, i32 16)
  call void @exfat_truncate_atime(ptr noundef %i_atime) #9
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_flags, align 4
  %and = and i32 %23, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %lor.lhs.false, label %inode_inc_iversion.exit.if.then27_crit_edge

inode_inc_iversion.exit.if.then27_crit_edge:      ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

lor.lhs.false:                                    ; preds = %inode_inc_iversion.exit
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %24 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_flags, align 4
  %and25 = and i32 %25, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %inode_inc_iversion.exit.if.then27_crit_edge
  call void @exfat_sync_inode(ptr noundef %dir) #9
  br label %if.end28

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #9
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then27
  call void @clear_nlink(ptr noundef %4) #9
  %i_mtime29 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 16
  %i_atime30 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp31) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp31, ptr noundef %4) #9
  %26 = call ptr @memcpy(ptr %i_atime30, ptr %tmp31, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp31) #9
  %27 = call ptr @memcpy(ptr %i_mtime29, ptr %i_atime30, i32 16)
  call void @exfat_truncate_atime(ptr noundef %i_atime30) #9
  call void @exfat_unhash_inode(ptr noundef %4) #9
  %call.i.i.i.i71 = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i15.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.end28
  %cur.0.i = phi i64 [ %call.i.i15.i, %if.end28 ], [ %call.i.i, %if.end.i.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i72 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i72, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  %extract89 = lshr i64 %cur.0.i, 1
  %extract.t90 = trunc i64 %extract89 to i32
  br label %inode_query_iversion.exit

if.end.i:                                         ; preds = %for.cond.i
  %or.i = or i64 %cur.0.i, 1
  %call.i.i.i73 = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i, i64 noundef %or.i) #9
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %inode_query_iversion.exit.loopexit, label %if.end.i.for.cond.i_crit_edge, !prof !43

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

inode_query_iversion.exit.loopexit:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %extract87 = lshr i64 %cur.0.i, 1
  %extract.t88 = trunc i64 %extract87 to i32
  br label %inode_query_iversion.exit

inode_query_iversion.exit:                        ; preds = %inode_query_iversion.exit.loopexit, %do.end.i
  %cur.0.i86.off1 = phi i32 [ %extract.t88, %inode_query_iversion.exit.loopexit ], [ %extract.t90, %do.end.i ]
  %28 = inttoptr i32 %cur.0.i86.off1 to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %29 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %d_fsdata.i, align 4
  br label %unlock

unlock:                                           ; preds = %inode_query_iversion.exit, %brelse.exit70.unlock_crit_edge, %if.then.i, %if.then12.unlock_crit_edge, %if.end.unlock_crit_edge, %if.then
  %err.0 = phi i32 [ -2, %if.then ], [ 0, %inode_query_iversion.exit ], [ -5, %if.end.unlock_crit_edge ], [ -5, %brelse.exit70.unlock_crit_edge ], [ -5, %if.then12.unlock_crit_edge ], [ -5, %if.then.i ]
  %30 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock35 = getelementptr inbounds %struct.exfat_sb_info, ptr %31, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %s_lock35) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cdir) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %info = alloca %struct.exfat_dir_entry, align 8
  %cdir = alloca %struct.exfat_chain, align 4
  %tmp = alloca %struct.timespec64, align 8
  %tmp19 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %info) #9
  %2 = call ptr @memset(ptr %info, i32 255, i32 104)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cdir) #9
  %3 = call ptr @memset(ptr %cdir, i32 255, i32 12)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %5, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #9
  %call1 = tail call i32 @exfat_set_volume_dirty(ptr noundef %1) #9
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %call2 = call fastcc i32 @exfat_add_entry(ptr noundef %dir, ptr noundef %7, ptr noundef nonnull %cdir, i32 noundef 260, ptr noundef nonnull %info)
  %call3 = call i32 @exfat_clear_volume_dirty(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i1.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %if.end ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %8 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %8, -2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #9
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !43

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #9
  %9 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %10 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_flags, align 4
  %and = and i32 %14, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %inode_inc_iversion.exit.if.then8_crit_edge

inode_inc_iversion.exit.if.then8_crit_edge:       ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

lor.lhs.false:                                    ; preds = %inode_inc_iversion.exit
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %15 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_flags, align 4
  %and6 = and i32 %16, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %inode_inc_iversion.exit.if.then8_crit_edge
  call void @exfat_sync_inode(ptr noundef %dir) #9
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #9
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  call void @inc_nlink(ptr noundef %dir) #9
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %info, align 8
  %conv.i = zext i32 %18 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %entry2.i = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 1
  %19 = ptrtoint ptr %entry2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %entry2.i, align 4
  %conv3.i = zext i32 %20 to i64
  %or.i = or i64 %shl.i, %conv3.i
  %call11 = call ptr @exfat_build_inode(ptr noundef %1, ptr noundef nonnull %info, i64 noundef %or.i) #9
  %cmp.i.i48.not = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  %21 = ptrtoint ptr %call11 to i32
  br i1 %cmp.i.i48.not, label %if.end9.unlock_crit_edge, label %if.end15

if.end9.unlock_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end15:                                         ; preds = %if.end9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  %i_version.i.i.i49 = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 38
  %call.i.i.i.i.i50 = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i49, i32 noundef 8) #9
  %call.i.i1.i.i51 = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i49) #9
  br label %for.cond.i.i57

for.cond.i.i57:                                   ; preds = %for.cond.i.i57.for.cond.i.i57_crit_edge, %if.end15
  %cur.0.i.i52 = phi i64 [ %call.i.i1.i.i51, %if.end15 ], [ %call.i.i.i55, %for.cond.i.i57.for.cond.i.i57_crit_edge ]
  %22 = add i64 %cur.0.i.i52, 2
  %add.i.i53 = and i64 %22, -2
  %call.i.i.i.i54 = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i49, i32 noundef 8) #9
  %call.i.i.i55 = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i49, i64 noundef %cur.0.i.i52, i64 noundef %add.i.i53) #9
  %cmp.i.i56 = icmp eq i64 %call.i.i.i55, %cur.0.i.i52
  br i1 %cmp.i.i56, label %inode_inc_iversion.exit58, label %for.cond.i.i57.for.cond.i.i57_crit_edge, !prof !43

for.cond.i.i57.for.cond.i.i57_crit_edge:          ; preds = %for.cond.i.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i57

inode_inc_iversion.exit58:                        ; preds = %for.cond.i.i57
  call void @__sanitizer_cov_trace_pc() #11
  %i_mtime16 = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 15
  %i_ctime17 = getelementptr inbounds %struct.inode, ptr %call11, i32 0, i32 17
  %i_crtime = getelementptr i8, ptr %call11, i32 784
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp19) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp19, ptr noundef %call11) #9
  %23 = call ptr @memcpy(ptr %i_crtime, ptr %tmp19, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp19) #9
  %24 = call ptr @memcpy(ptr %i_ctime17, ptr %i_crtime, i32 16)
  %25 = call ptr @memcpy(ptr %i_atime, ptr %i_crtime, i32 16)
  %26 = call ptr @memcpy(ptr %i_mtime16, ptr %i_crtime, i32 16)
  call void @exfat_truncate_atime(ptr noundef %i_atime) #9
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %call11) #9
  br label %unlock

unlock:                                           ; preds = %inode_inc_iversion.exit58, %if.end9.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ %call2, %entry.unlock_crit_edge ], [ %21, %if.end9.unlock_crit_edge ], [ 0, %inode_inc_iversion.exit58 ]
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock22 = getelementptr inbounds %struct.exfat_sb_info, ptr %28, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %s_lock22) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cdir) #9
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %info) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_rmdir(ptr noundef %dir, ptr nocapture noundef %dentry) #0 align 64 {
entry:
  %cdir = alloca %struct.exfat_chain, align 4
  %clu_to_free = alloca %struct.exfat_chain, align 4
  %bh = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  %tmp43 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cdir) #9
  %2 = call ptr @memset(ptr %cdir, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clu_to_free) #9
  %3 = call ptr @memset(ptr %clu_to_free, i32 255, i32 12)
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i = getelementptr i8, ptr %1, i32 -264
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #9
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !42
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %7, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #9
  call void @exfat_chain_dup(ptr noundef nonnull %cdir, ptr noundef %add.ptr.i) #9
  %entry6 = getelementptr i8, ptr %1, i32 -252
  %9 = ptrtoint ptr %entry6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %entry6, align 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64735, i32 %12)
  %cmp = icmp eq i32 %12, -64735
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #12
  br label %unlock

if.end:                                           ; preds = %entry
  %start_clu = getelementptr i8, ptr %1, i32 -240
  %13 = ptrtoint ptr %start_clu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start_clu, align 8
  %call9 = call fastcc i64 @i_size_read(ptr noundef %1)
  %sub = add i64 %call9, -1
  %cluster_size_bits = getelementptr inbounds %struct.exfat_sb_info, ptr %7, i32 0, i32 3
  %15 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cluster_size_bits, align 8
  %sh_prom = zext i32 %16 to i64
  %shr = ashr i64 %sub, %sh_prom
  %17 = trunc i64 %shr to i32
  %conv = add i32 %17, 1
  %flags = getelementptr i8, ptr %1, i32 -236
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags, align 4
  call void @exfat_chain_set(ptr noundef nonnull %clu_to_free, i32 noundef %14, i32 noundef %conv, i8 noundef zeroext %19) #9
  %call10 = call fastcc i32 @exfat_check_dir_empty(ptr noundef %5, ptr noundef nonnull %clu_to_free)
  %20 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10, label %if.end.unlock_crit_edge [
    i32 0, label %if.end16
    i32 -5, label %if.then14
  ]

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef -5) #12
  br label %unlock

if.end16:                                         ; preds = %if.end
  %call17 = call ptr @exfat_get_dentry(ptr noundef %5, ptr noundef nonnull %cdir, i32 noundef %10, ptr noundef nonnull %bh) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.unlock_crit_edge, label %if.end20

if.end16.unlock_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @exfat_count_ext_entries(ptr noundef %5, ptr noundef nonnull %cdir, i32 noundef %10, ptr noundef nonnull %call17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  %21 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then24.unlock_crit_edge, label %if.then.i

if.then24.unlock_crit_edge:                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %22) #9
  br label %unlock

if.end25:                                         ; preds = %if.end20
  %inc = add nuw i32 %call21, 1
  %23 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bh, align 4
  %tobool.not.i96 = icmp eq ptr %24, null
  br i1 %tobool.not.i96, label %if.end25.brelse.exit98_crit_edge, label %if.then.i97

if.end25.brelse.exit98_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit98

if.then.i97:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %24) #9
  br label %brelse.exit98

brelse.exit98:                                    ; preds = %if.then.i97, %if.end25.brelse.exit98_crit_edge
  %call26 = call i32 @exfat_set_volume_dirty(ptr noundef %5) #9
  %call27 = call i32 @exfat_remove_entries(ptr noundef %dir, ptr noundef nonnull %cdir, i32 noundef %10, i32 noundef 0, i32 noundef %inc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %brelse.exit98
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef %call27) #12
  br label %unlock

if.end30:                                         ; preds = %brelse.exit98
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64735, ptr %add.ptr.i, align 8
  %call33 = call i32 @exfat_clear_volume_dirty(ptr noundef %5) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i1.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end30
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %if.end30 ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %26 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %26, -2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #9
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !43

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #9
  %27 = call ptr @memcpy(ptr %i_atime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %28 = call ptr @memcpy(ptr %i_mtime, ptr %i_atime, i32 16)
  call void @exfat_truncate_atime(ptr noundef %i_atime) #9
  %i_sb35 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %29 = ptrtoint ptr %i_sb35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb35, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_flags, align 4
  %and = and i32 %32, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %lor.lhs.false, label %inode_inc_iversion.exit.if.then39_crit_edge

inode_inc_iversion.exit.if.then39_crit_edge:      ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

lor.lhs.false:                                    ; preds = %inode_inc_iversion.exit
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %33 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_flags, align 4
  %and37 = and i32 %34, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else, label %lor.lhs.false.if.then39_crit_edge

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %inode_inc_iversion.exit.if.then39_crit_edge
  call void @exfat_sync_inode(ptr noundef %dir) #9
  br label %if.end40

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #9
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then39
  call void @drop_nlink(ptr noundef %dir) #9
  call void @clear_nlink(ptr noundef %1) #9
  %i_mtime41 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %i_atime42 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp43) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp43, ptr noundef %1) #9
  %35 = call ptr @memcpy(ptr %i_atime42, ptr %tmp43, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp43) #9
  %36 = call ptr @memcpy(ptr %i_mtime41, ptr %i_atime42, i32 16)
  call void @exfat_truncate_atime(ptr noundef %i_atime42) #9
  call void @exfat_unhash_inode(ptr noundef %1) #9
  %call.i.i.i.i99 = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i15.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.end40
  %cur.0.i = phi i64 [ %call.i.i15.i, %if.end40 ], [ %call.i.i, %if.end.i.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i100 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i100, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  %extract117 = lshr i64 %cur.0.i, 1
  %extract.t118 = trunc i64 %extract117 to i32
  br label %inode_query_iversion.exit

if.end.i:                                         ; preds = %for.cond.i
  %or.i = or i64 %cur.0.i, 1
  %call.i.i.i101 = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i, i64 noundef %or.i) #9
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %inode_query_iversion.exit.loopexit, label %if.end.i.for.cond.i_crit_edge, !prof !43

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

inode_query_iversion.exit.loopexit:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %extract115 = lshr i64 %cur.0.i, 1
  %extract.t116 = trunc i64 %extract115 to i32
  br label %inode_query_iversion.exit

inode_query_iversion.exit:                        ; preds = %inode_query_iversion.exit.loopexit, %do.end.i
  %cur.0.i114.off1 = phi i32 [ %extract.t116, %inode_query_iversion.exit.loopexit ], [ %extract.t118, %do.end.i ]
  %37 = inttoptr i32 %cur.0.i114.off1 to ptr
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %38 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %d_fsdata.i, align 4
  br label %unlock

unlock:                                           ; preds = %inode_query_iversion.exit, %if.then29, %if.then.i, %if.then24.unlock_crit_edge, %if.end16.unlock_crit_edge, %if.then14, %if.end.unlock_crit_edge, %if.then
  %err.0 = phi i32 [ -2, %if.then ], [ -5, %if.then14 ], [ %call27, %if.then29 ], [ 0, %inode_query_iversion.exit ], [ %call10, %if.end.unlock_crit_edge ], [ -5, %if.end16.unlock_crit_edge ], [ -5, %if.then24.unlock_crit_edge ], [ -5, %if.then.i ]
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i102 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 33
  %41 = ptrtoint ptr %s_fs_info.i102 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i102, align 16
  %s_lock49 = getelementptr inbounds %struct.exfat_sb_info, ptr %42, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %s_lock49) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clu_to_free) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cdir) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exfat_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr nocapture noundef readonly %old_dentry, ptr noundef %new_dir, ptr nocapture noundef readonly %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %mov_bh.i.i = alloca ptr, align 4
  %new_bh.i196.i = alloca ptr, align 4
  %new_bh.i.i = alloca ptr, align 4
  %old_bh.i.i = alloca ptr, align 4
  %olddir.i = alloca %struct.exfat_chain, align 4
  %newdir.i = alloca %struct.exfat_chain, align 4
  %uni_name.i = alloca %struct.exfat_uni_name, align 2
  %old_bh.i = alloca ptr, align 4
  %new_bh.i = alloca ptr, align 4
  %new_clu.i = alloca %struct.exfat_chain, align 4
  %new_clu_to_free.i = alloca %struct.exfat_chain, align 4
  %tmp = alloca %struct.timespec64, align 8
  %tmp45 = alloca %struct.timespec64, align 8
  %tmp97 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %s_lock, i32 noundef 0) #9
  %d_inode = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode, align 8
  %d_inode1 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode1, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -264
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %olddir.i) #9
  %8 = call ptr @memset(ptr %olddir.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %newdir.i) #9
  %9 = call ptr @memset(ptr %newdir.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %uni_name.i) #9
  %10 = call ptr @memset(ptr %uni_name.i, i32 255, i32 520)
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %name.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_bh.i) #9
  %17 = ptrtoint ptr %old_bh.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_bh.i, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_bh.i) #9
  %18 = ptrtoint ptr %new_bh.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %new_bh.i, align 4
  %cmp.i = icmp eq ptr %16, null
  br i1 %cmp.i, label %if.end.__exfat_rename.exit.thread_crit_edge, label %lor.lhs.false.i

if.end.__exfat_rename.exit.thread_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__exfat_rename.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %19)
  %char0.i = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %cmp2.i = icmp eq i8 %char0.i, 0
  br i1 %cmp2.i, label %lor.lhs.false.i.__exfat_rename.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.__exfat_rename.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__exfat_rename.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64735, i32 %21)
  %cmp4.i = icmp eq i32 %21, -64735
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12) #12
  br label %__exfat_rename.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %call2.i.i = tail call fastcc i64 @i_size_read(ptr noundef %old_dir) #9
  %flags.i.i = getelementptr i8, ptr %old_dir, i32 -236
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags.i.i, align 4
  %flags3.i.i = getelementptr i8, ptr %5, i32 -256
  %24 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags3.i.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp.not.i.i = icmp eq i8 %23, %25
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end6.i.if.then.i.i_crit_edge, !prof !43

if.end6.i.if.then.i.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end6.i
  %size.i.i = getelementptr i8, ptr %5, i32 -260
  %26 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i.i, align 4
  %cluster_size_bits.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %14, i32 0, i32 3
  %28 = ptrtoint ptr %cluster_size_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cluster_size_bits.i.i, align 8
  %shl.i.i = shl i32 %27, %29
  %conv7.i.i = zext i32 %shl.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call2.i.i, i64 %conv7.i.i)
  %cmp8.not.i.i = icmp eq i64 %call2.i.i, %conv7.i.i
  br i1 %cmp8.not.i.i, label %lor.rhs.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, !prof !43

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.rhs.i.i:                                      ; preds = %lor.lhs.false.i.i
  %start_clu.i.i = getelementptr i8, ptr %old_dir, i32 -240
  %30 = ptrtoint ptr %start_clu.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %start_clu.i.i, align 8
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp12.not.i.i = icmp eq i32 %31, %33
  br i1 %cmp12.not.i.i, label %lor.rhs.i.i.exfat_update_parent_info.exit.i_crit_edge, label %lor.rhs.i.i.if.then.i.i_crit_edge, !prof !43

lor.rhs.i.i.if.then.i.i_crit_edge:                ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.rhs.i.i.exfat_update_parent_info.exit.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_update_parent_info.exit.i

if.then.i.i:                                      ; preds = %lor.rhs.i.i.if.then.i.i_crit_edge, %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.end6.i.if.then.i.i_crit_edge
  %start_clu16.i.i = getelementptr i8, ptr %old_dir, i32 -240
  %34 = ptrtoint ptr %start_clu16.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %start_clu16.i.i, align 8
  %sub.i.i = add i64 %call2.i.i, -1
  %cluster_size_bits17.i.i = getelementptr inbounds %struct.exfat_sb_info, ptr %14, i32 0, i32 3
  %36 = ptrtoint ptr %cluster_size_bits17.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cluster_size_bits17.i.i, align 8
  %sh_prom.i.i = zext i32 %37 to i64
  %shr.i.i = ashr i64 %sub.i.i, %sh_prom.i.i
  %38 = trunc i64 %shr.i.i to i32
  %conv18.i.i = add i32 %38, 1
  tail call void @exfat_chain_set(ptr noundef %add.ptr.i, i32 noundef %35, i32 noundef %conv18.i.i, i8 noundef zeroext %23) #9
  br label %exfat_update_parent_info.exit.i

exfat_update_parent_info.exit.i:                  ; preds = %if.then.i.i, %lor.rhs.i.i.exfat_update_parent_info.exit.i_crit_edge
  call void @exfat_chain_dup(ptr noundef nonnull %olddir.i, ptr noundef %add.ptr.i) #9
  %entry8.i = getelementptr i8, ptr %5, i32 -252
  %39 = ptrtoint ptr %entry8.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %entry8.i, align 4
  %call9.i = call ptr @exfat_get_dentry(ptr noundef %12, ptr noundef nonnull %olddir.i, i32 noundef %40, ptr noundef nonnull %old_bh.i) #9
  %tobool.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i, label %exfat_update_parent_info.exit.i.__exfat_rename.exit.thread_crit_edge, label %if.end11.i

exfat_update_parent_info.exit.i.__exfat_rename.exit.thread_crit_edge: ; preds = %exfat_update_parent_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__exfat_rename.exit.thread

if.end11.i:                                       ; preds = %exfat_update_parent_info.exit.i
  %41 = ptrtoint ptr %old_bh.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %old_bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end11.i.brelse.exit.i_crit_edge, label %if.then.i165.i

if.end11.i.brelse.exit.i_crit_edge:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i

if.then.i165.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %42) #9
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i165.i, %if.end11.i.brelse.exit.i_crit_edge
  %tobool12.not.i = icmp eq ptr %7, null
  br i1 %tobool12.not.i, label %brelse.exit.i.if.end37.i_crit_edge, label %if.then13.i

brelse.exit.i.if.end37.i_crit_edge:               ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then13.i:                                      ; preds = %brelse.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 -264
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64735, i32 %44)
  %cmp17.i = icmp eq i32 %44, -64735
  br i1 %cmp17.i, label %if.then18.i, label %if.end19.i

if.then18.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.13) #12
  br label %__exfat_rename.exit.thread

if.end19.i:                                       ; preds = %if.then13.i
  %i_sb.i166.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 8
  %45 = ptrtoint ptr %i_sb.i166.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb.i166.i, align 4
  %s_fs_info.i.i167.i = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 33
  %47 = ptrtoint ptr %s_fs_info.i.i167.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %s_fs_info.i.i167.i, align 16
  %call2.i168.i = call fastcc i64 @i_size_read(ptr noundef %new_dir) #9
  %flags.i169.i = getelementptr i8, ptr %new_dir, i32 -236
  %49 = ptrtoint ptr %flags.i169.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags.i169.i, align 4
  %flags3.i170.i = getelementptr i8, ptr %7, i32 -256
  %51 = ptrtoint ptr %flags3.i170.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %flags3.i170.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %cmp.not.i171.i = icmp eq i8 %50, %52
  br i1 %cmp.not.i171.i, label %lor.lhs.false.i177.i, label %if.end19.i.if.then.i187.i_crit_edge, !prof !43

if.end19.i.if.then.i187.i_crit_edge:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i187.i

lor.lhs.false.i177.i:                             ; preds = %if.end19.i
  %size.i172.i = getelementptr i8, ptr %7, i32 -260
  %53 = ptrtoint ptr %size.i172.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.i172.i, align 4
  %cluster_size_bits.i173.i = getelementptr inbounds %struct.exfat_sb_info, ptr %48, i32 0, i32 3
  %55 = ptrtoint ptr %cluster_size_bits.i173.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cluster_size_bits.i173.i, align 8
  %shl.i174.i = shl i32 %54, %56
  %conv7.i175.i = zext i32 %shl.i174.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call2.i168.i, i64 %conv7.i175.i)
  %cmp8.not.i176.i = icmp eq i64 %call2.i168.i, %conv7.i175.i
  br i1 %cmp8.not.i176.i, label %lor.rhs.i180.i, label %lor.lhs.false.i177.i.if.then.i187.i_crit_edge, !prof !43

lor.lhs.false.i177.i.if.then.i187.i_crit_edge:    ; preds = %lor.lhs.false.i177.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i187.i

lor.rhs.i180.i:                                   ; preds = %lor.lhs.false.i177.i
  %start_clu.i178.i = getelementptr i8, ptr %new_dir, i32 -240
  %57 = ptrtoint ptr %start_clu.i178.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %start_clu.i178.i, align 8
  %59 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp12.not.i179.i = icmp eq i32 %58, %60
  br i1 %cmp12.not.i179.i, label %lor.rhs.i180.i.exfat_update_parent_info.exit188.i_crit_edge, label %lor.rhs.i180.i.if.then.i187.i_crit_edge, !prof !43

lor.rhs.i180.i.if.then.i187.i_crit_edge:          ; preds = %lor.rhs.i180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i187.i

lor.rhs.i180.i.exfat_update_parent_info.exit188.i_crit_edge: ; preds = %lor.rhs.i180.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_update_parent_info.exit188.i

if.then.i187.i:                                   ; preds = %lor.rhs.i180.i.if.then.i187.i_crit_edge, %lor.lhs.false.i177.i.if.then.i187.i_crit_edge, %if.end19.i.if.then.i187.i_crit_edge
  %start_clu16.i181.i = getelementptr i8, ptr %new_dir, i32 -240
  %61 = ptrtoint ptr %start_clu16.i181.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %start_clu16.i181.i, align 8
  %sub.i182.i = add i64 %call2.i168.i, -1
  %cluster_size_bits17.i183.i = getelementptr inbounds %struct.exfat_sb_info, ptr %48, i32 0, i32 3
  %63 = ptrtoint ptr %cluster_size_bits17.i183.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cluster_size_bits17.i183.i, align 8
  %sh_prom.i184.i = zext i32 %64 to i64
  %shr.i185.i = ashr i64 %sub.i182.i, %sh_prom.i184.i
  %65 = trunc i64 %shr.i185.i to i32
  %conv18.i186.i = add i32 %65, 1
  call void @exfat_chain_set(ptr noundef %add.ptr.i.i, i32 noundef %62, i32 noundef %conv18.i186.i, i8 noundef zeroext %50) #9
  br label %exfat_update_parent_info.exit188.i

exfat_update_parent_info.exit188.i:               ; preds = %if.then.i187.i, %lor.rhs.i180.i.exfat_update_parent_info.exit188.i_crit_edge
  %entry21.i = getelementptr i8, ptr %7, i32 -252
  %66 = ptrtoint ptr %entry21.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %entry21.i, align 4
  %call22.i = call ptr @exfat_get_dentry(ptr noundef %12, ptr noundef %add.ptr.i.i, i32 noundef %67, ptr noundef nonnull %new_bh.i) #9
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %exfat_update_parent_info.exit188.i.__exfat_rename.exit.thread_crit_edge, label %if.end25.i

exfat_update_parent_info.exit188.i.__exfat_rename.exit.thread_crit_edge: ; preds = %exfat_update_parent_info.exit188.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__exfat_rename.exit.thread

if.end25.i:                                       ; preds = %exfat_update_parent_info.exit188.i
  %call26.i = call i32 @exfat_get_entry_type(ptr noundef nonnull %call22.i) #9
  %68 = ptrtoint ptr %new_bh.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %new_bh.i, align 4
  %tobool.not.i189.i = icmp eq ptr %69, null
  br i1 %tobool.not.i189.i, label %if.end25.i.brelse.exit191.i_crit_edge, label %if.then.i190.i

if.end25.i.brelse.exit191.i_crit_edge:            ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit191.i

if.then.i190.i:                                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %69) #9
  br label %brelse.exit191.i

brelse.exit191.i:                                 ; preds = %if.then.i190.i, %if.end25.i.brelse.exit191.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %call26.i)
  %cmp27.i = icmp eq i32 %call26.i, 260
  br i1 %cmp27.i, label %if.then28.i, label %brelse.exit191.i.if.end37.i_crit_edge

brelse.exit191.i.if.end37.i_crit_edge:            ; preds = %brelse.exit191.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then28.i:                                      ; preds = %brelse.exit191.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %new_clu.i) #9
  %70 = getelementptr inbounds i8, ptr %new_clu.i, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 -1, ptr %70, align 4
  %start_clu.i = getelementptr i8, ptr %7, i32 -240
  %72 = ptrtoint ptr %start_clu.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %start_clu.i, align 8
  %74 = ptrtoint ptr %new_clu.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %new_clu.i, align 4
  %call30.i = call fastcc i64 @i_size_read(ptr noundef nonnull %7) #9
  %sub.i = add i64 %call30.i, -1
  %cluster_size_bits.i = getelementptr inbounds %struct.exfat_sb_info, ptr %14, i32 0, i32 3
  %75 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cluster_size_bits.i, align 8
  %sh_prom.i = zext i32 %76 to i64
  %shr.i = ashr i64 %sub.i, %sh_prom.i
  %77 = trunc i64 %shr.i to i32
  %conv.i = add i32 %77, 1
  %78 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv.i, ptr %70, align 4
  %flags.i = getelementptr i8, ptr %7, i32 -236
  %79 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %flags.i, align 4
  %flags31.i = getelementptr inbounds %struct.exfat_chain, ptr %new_clu.i, i32 0, i32 2
  %81 = ptrtoint ptr %flags31.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %flags31.i, align 4
  %call32.i = call fastcc i32 @exfat_check_dir_empty(ptr noundef %12, ptr noundef nonnull %new_clu.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %new_clu.i) #9
  br i1 %tobool33.not.i, label %if.then28.i.if.end37.i_crit_edge, label %if.then28.i.__exfat_rename.exit.thread_crit_edge

if.then28.i.__exfat_rename.exit.thread_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__exfat_rename.exit.thread

if.then28.i.if.end37.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then28.i.if.end37.i_crit_edge, %brelse.exit191.i.if.end37.i_crit_edge, %brelse.exit.i.if.end37.i_crit_edge
  %new_ei.0.i = phi ptr [ %add.ptr.i.i, %if.then28.i.if.end37.i_crit_edge ], [ %add.ptr.i.i, %brelse.exit191.i.if.end37.i_crit_edge ], [ null, %brelse.exit.i.if.end37.i_crit_edge ]
  %new_entry_type.0.i = phi i32 [ 260, %if.then28.i.if.end37.i_crit_edge ], [ %call26.i, %brelse.exit191.i.if.end37.i_crit_edge ], [ 0, %brelse.exit.i.if.end37.i_crit_edge ]
  %new_entry.0.i = phi i32 [ %67, %if.then28.i.if.end37.i_crit_edge ], [ %67, %brelse.exit191.i.if.end37.i_crit_edge ], [ 0, %brelse.exit.i.if.end37.i_crit_edge ]
  %call.i.i = call fastcc i32 @__exfat_resolve_path(ptr noundef %new_dir, ptr noundef nonnull %16, ptr noundef nonnull %newdir.i, ptr noundef nonnull %uni_name.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool39.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.end37.i.__exfat_rename.exit.thread_crit_edge

if.end37.i.__exfat_rename.exit.thread_crit_edge:  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__exfat_rename.exit.thread

if.end41.i:                                       ; preds = %if.end37.i
  %call42.i = call i32 @exfat_set_volume_dirty(ptr noundef %12) #9
  %82 = ptrtoint ptr %olddir.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %olddir.i, align 4
  %84 = ptrtoint ptr %newdir.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %newdir.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp45.i = icmp eq i32 %83, %85
  %i_sb.i192.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 8
  %86 = ptrtoint ptr %i_sb.i192.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_sb.i192.i, align 4
  br i1 %cmp45.i, label %if.then47.i, label %if.else.i

if.then47.i:                                      ; preds = %if.end41.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_bh.i.i) #9
  %88 = ptrtoint ptr %new_bh.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_bh.i.i, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_bh.i.i) #9
  %89 = ptrtoint ptr %old_bh.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_bh.i.i, align 4, !annotation !42
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 10
  %90 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %s_flags.i.i, align 4
  %and.i.i = and i32 %91, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i193.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i193.i, label %lor.rhs.i194.i, label %if.then47.i.lor.end.i.i_crit_edge

if.then47.i.lor.end.i.i_crit_edge:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i.i

lor.rhs.i194.i:                                   ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %92 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %i_flags.i.i, align 4
  %and2.i.i = and i32 %93, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0
  %phi.cast.i.i = zext i1 %tobool3.i.i to i32
  br label %lor.end.i.i

lor.end.i.i:                                      ; preds = %lor.rhs.i194.i, %if.then47.i.lor.end.i.i_crit_edge
  %94 = phi i32 [ 1, %if.then47.i.lor.end.i.i_crit_edge ], [ %phi.cast.i.i, %lor.rhs.i194.i ]
  %call.i195.i = call ptr @exfat_get_dentry(ptr noundef %87, ptr noundef nonnull %olddir.i, i32 noundef %40, ptr noundef nonnull %old_bh.i.i) #9
  %tobool4.not.i.i = icmp eq ptr %call.i195.i, null
  br i1 %tobool4.not.i.i, label %lor.end.i.i.exfat_rename_file.exit.i_crit_edge, label %if.end.i.i

lor.end.i.i.exfat_rename_file.exit.i_crit_edge:   ; preds = %lor.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_rename_file.exit.i

if.end.i.i:                                       ; preds = %lor.end.i.i
  %call5.i.i = call i32 @exfat_count_ext_entries(ptr noundef %87, ptr noundef nonnull %olddir.i, i32 noundef %40, ptr noundef nonnull %call.i195.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.exfat_rename_file.exit.i_crit_edge, label %if.end7.i.i

if.end.i.i.exfat_rename_file.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_rename_file.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %inc.i.i = add nuw i32 %call5.i.i, 1
  %call8.i.i = call i32 @exfat_calc_num_entries(ptr noundef nonnull %uni_name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %if.end7.i.i.exfat_rename_file.exit.i_crit_edge, label %if.end11.i.i

if.end7.i.i.exfat_rename_file.exit.i_crit_edge:   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_rename_file.exit.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %call8.i.i)
  %cmp12.i.i = icmp slt i32 %inc.i.i, %call8.i.i
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.else.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i
  %call14.i.i = call fastcc i32 @exfat_find_empty_entry(ptr noundef %new_dir, ptr noundef nonnull %olddir.i, i32 noundef %call8.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %cmp15.i.i = icmp slt i32 %call14.i.i, 0
  br i1 %cmp15.i.i, label %if.then13.i.i.exfat_rename_file.exit.i_crit_edge, label %if.end17.i.i

if.then13.i.i.exfat_rename_file.exit.i_crit_edge: ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_rename_file.exit.i

if.end17.i.i:                                     ; preds = %if.then13.i.i
  %call18.i.i = call ptr @exfat_get_dentry(ptr noundef %87, ptr noundef nonnull %olddir.i, i32 noundef %call14.i.i, ptr noundef nonnull %new_bh.i.i) #9
  %tobool19.not.i.i = icmp eq ptr %call18.i.i, null
  br i1 %tobool19.not.i.i, label %if.end17.i.i.exfat_rename_file.exit.i_crit_edge, label %if.end21.i.i

if.end17.i.i.exfat_rename_file.exit.i_crit_edge:  ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_rename_file.exit.i

if.end21.i.i:                                     ; preds = %if.end17.i.i
  %95 = call ptr @memcpy(ptr %call18.i.i, ptr %call.i195.i, i32 32)
  %call22.i.i = call i32 @exfat_get_entry_type(ptr noundef nonnull %call18.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %call22.i.i)
  %cmp23.i.i = icmp eq i32 %call22.i.i, 287
  br i1 %cmp23.i.i, label %if.then24.i.i, label %if.end21.i.i.if.end30.i.i_crit_edge

if.end21.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i.i

if.then24.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %attr.i.i = getelementptr inbounds %struct.exfat_dentry, ptr %call18.i.i, i32 0, i32 1, i32 0, i32 2
  %96 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %attr.i.i, align 1
  %98 = or i16 %97, 8192
  store i16 %98, ptr %attr.i.i, align 1
  %attr26.i.i = getelementptr i8, ptr %5, i32 -244
  %99 = ptrtoint ptr %attr26.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %attr26.i.i, align 4
  %101 = or i16 %100, 32
  store i16 %101, ptr %attr26.i.i, align 4
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then24.i.i, %if.end21.i.i.if.end30.i.i_crit_edge
  %102 = ptrtoint ptr %new_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %new_bh.i.i, align 4
  call void @exfat_update_bh(ptr noundef %103, i32 noundef %94) #9
  %104 = ptrtoint ptr %old_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %old_bh.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %105, null
  br i1 %tobool.not.i.i.i, label %if.end30.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

if.end30.i.i.brelse.exit.i.i_crit_edge:           ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %105) #9
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %if.end30.i.i.brelse.exit.i.i_crit_edge
  %106 = ptrtoint ptr %new_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %new_bh.i.i, align 4
  %tobool.not.i135.i.i = icmp eq ptr %107, null
  br i1 %tobool.not.i135.i.i, label %brelse.exit.i.i.brelse.exit137.i.i_crit_edge, label %if.then.i136.i.i

brelse.exit.i.i.brelse.exit137.i.i_crit_edge:     ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit137.i.i

if.then.i136.i.i:                                 ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %107) #9
  br label %brelse.exit137.i.i

brelse.exit137.i.i:                               ; preds = %if.then.i136.i.i, %brelse.exit.i.i.brelse.exit137.i.i_crit_edge
  %add.i.i = add i32 %40, 1
  %call31.i.i = call ptr @exfat_get_dentry(ptr noundef %87, ptr noundef nonnull %olddir.i, i32 noundef %add.i.i, ptr noundef nonnull %old_bh.i.i) #9
  %tobool32.not.i.i = icmp eq ptr %call31.i.i, null
  br i1 %tobool32.not.i.i, label %brelse.exit137.i.i.exfat_rename_file.exit.i_crit_edge, label %if.end34.i.i

brelse.exit137.i.i.exfat_rename_file.exit.i_crit_edge: ; preds = %brelse.exit137.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_rename_file.exit.i

if.end34.i.i:                                     ; preds = %brelse.exit137.i.i
  %add35.i.i = add nuw i32 %call14.i.i, 1
  %call36.i.i = call ptr @exfat_get_dentry(ptr noundef %87, ptr noundef nonnull %olddir.i, i32 noundef %add35.i.i, ptr noundef nonnull %new_bh.i.i) #9
  %tobool37.not.i.i = icmp eq ptr %call36.i.i, null
  br i1 %tobool37.not.i.i, label %if.then38.i.i, label %if.end39.i.i

if.then38.i.i:                                    ; preds = %if.end34.i.i
  %108 = ptrtoint ptr %old_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %old_bh.i.i, align 4
  %tobool.not.i138.i.i = icmp eq ptr %109, null
  br i1 %tobool.not.i138.i.i, label %if.then38.i.i.exfat_rename_file.exit.i_crit_edge, label %if.then.i139.i.i

if.then38.i.i.exfat_rename_file.exit.i_crit_edge: ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_rename_file.exit.i

if.then.i139.i.i:                                 ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %109) #9
  br label %exfat_rename_file.exit.i

if.end39.i.i:                                     ; preds = %if.end34.i.i
  %110 = call ptr @memcpy(ptr %call36.i.i, ptr %call31.i.i, i32 32)
  %111 = ptrtoint ptr %new_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %new_bh.i.i, align 4
  call void @exfat_update_bh(ptr noundef %112, i32 noundef %94) #9
  %113 = ptrtoint ptr %old_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %old_bh.i.i, align 4
  %tobool.not.i141.i.i = icmp eq ptr %114, null
  br i1 %tobool.not.i141.i.i, label %if.end39.i.i.brelse.exit143.i.i_crit_edge, label %if.then.i142.i.i

if.end39.i.i.brelse.exit143.i.i_crit_edge:        ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit143.i.i

if.then.i142.i.i:                                 ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %114) #9
  br label %brelse.exit143.i.i

brelse.exit143.i.i:                               ; preds = %if.then.i142.i.i, %if.end39.i.i.brelse.exit143.i.i_crit_edge
  %115 = ptrtoint ptr %new_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %new_bh.i.i, align 4
  %tobool.not.i144.i.i = icmp eq ptr %116, null
  br i1 %tobool.not.i144.i.i, label %brelse.exit143.i.i.brelse.exit146.i.i_crit_edge, label %if.then.i145.i.i

brelse.exit143.i.i.brelse.exit146.i.i_crit_edge:  ; preds = %brelse.exit143.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit146.i.i

if.then.i145.i.i:                                 ; preds = %brelse.exit143.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %116) #9
  br label %brelse.exit146.i.i

brelse.exit146.i.i:                               ; preds = %if.then.i145.i.i, %brelse.exit143.i.i.brelse.exit146.i.i_crit_edge
  %call40.i.i = call i32 @exfat_init_ext_entry(ptr noundef %new_dir, ptr noundef nonnull %olddir.i, i32 noundef %call14.i.i, i32 noundef %call8.i.i, ptr noundef nonnull %uni_name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %tobool41.not.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i.i, label %cleanup.i.i, label %brelse.exit146.i.i.exfat_rename_file.exit.i_crit_edge

brelse.exit146.i.i.exfat_rename_file.exit.i_crit_edge: ; preds = %brelse.exit146.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_rename_file.exit.i

cleanup.i.i:                                      ; preds = %brelse.exit146.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call44.i.i = call i32 @exfat_remove_entries(ptr noundef %new_dir, ptr noundef nonnull %olddir.i, i32 noundef %40, i32 noundef 0, i32 noundef %inc.i.i) #9
  %117 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %call14.i.i, ptr %entry8.i, align 4
  br label %exfat_rename_file.exit.i

if.else.i.i:                                      ; preds = %if.end11.i.i
  %call46.i.i = call i32 @exfat_get_entry_type(ptr noundef nonnull %call.i195.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %call46.i.i)
  %cmp47.i.i = icmp eq i32 %call46.i.i, 287
  br i1 %cmp47.i.i, label %if.then49.i.i, label %if.else.i.i.if.end59.i.i_crit_edge

if.else.i.i.if.end59.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i.i

if.then49.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %attr51.i.i = getelementptr inbounds %struct.exfat_dentry, ptr %call.i195.i, i32 0, i32 1, i32 0, i32 2
  %118 = ptrtoint ptr %attr51.i.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %attr51.i.i, align 1
  %120 = or i16 %119, 8192
  store i16 %120, ptr %attr51.i.i, align 1
  %attr55.i.i = getelementptr i8, ptr %5, i32 -244
  %121 = ptrtoint ptr %attr55.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %attr55.i.i, align 4
  %123 = or i16 %122, 32
  store i16 %123, ptr %attr55.i.i, align 4
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %if.then49.i.i, %if.else.i.i.if.end59.i.i_crit_edge
  %124 = ptrtoint ptr %old_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %old_bh.i.i, align 4
  call void @exfat_update_bh(ptr noundef %125, i32 noundef %94) #9
  %126 = ptrtoint ptr %old_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %old_bh.i.i, align 4
  %tobool.not.i147.i.i = icmp eq ptr %127, null
  br i1 %tobool.not.i147.i.i, label %if.end59.i.i.brelse.exit149.i.i_crit_edge, label %if.then.i148.i.i

if.end59.i.i.brelse.exit149.i.i_crit_edge:        ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit149.i.i

if.then.i148.i.i:                                 ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %127) #9
  br label %brelse.exit149.i.i

brelse.exit149.i.i:                               ; preds = %if.then.i148.i.i, %if.end59.i.i.brelse.exit149.i.i_crit_edge
  %call60.i.i = call i32 @exfat_init_ext_entry(ptr noundef %new_dir, ptr noundef nonnull %olddir.i, i32 noundef %40, i32 noundef %call8.i.i, ptr noundef nonnull %uni_name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i.i)
  %tobool61.not.i.i = icmp eq i32 %call60.i.i, 0
  br i1 %tobool61.not.i.i, label %if.end63.i.i, label %brelse.exit149.i.i.exfat_rename_file.exit.i_crit_edge

brelse.exit149.i.i.exfat_rename_file.exit.i_crit_edge: ; preds = %brelse.exit149.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_rename_file.exit.i

if.end63.i.i:                                     ; preds = %brelse.exit149.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call64.i.i = call i32 @exfat_remove_entries(ptr noundef %new_dir, ptr noundef nonnull %olddir.i, i32 noundef %40, i32 noundef %call8.i.i, i32 noundef %inc.i.i) #9
  br label %exfat_rename_file.exit.i

exfat_rename_file.exit.i:                         ; preds = %if.end63.i.i, %brelse.exit149.i.i.exfat_rename_file.exit.i_crit_edge, %cleanup.i.i, %brelse.exit146.i.i.exfat_rename_file.exit.i_crit_edge, %if.then.i139.i.i, %if.then38.i.i.exfat_rename_file.exit.i_crit_edge, %brelse.exit137.i.i.exfat_rename_file.exit.i_crit_edge, %if.end17.i.i.exfat_rename_file.exit.i_crit_edge, %if.then13.i.i.exfat_rename_file.exit.i_crit_edge, %if.end7.i.i.exfat_rename_file.exit.i_crit_edge, %if.end.i.i.exfat_rename_file.exit.i_crit_edge, %lor.end.i.i.exfat_rename_file.exit.i_crit_edge
  %retval.1.i.i = phi i32 [ -5, %lor.end.i.i.exfat_rename_file.exit.i_crit_edge ], [ -5, %if.end.i.i.exfat_rename_file.exit.i_crit_edge ], [ %call8.i.i, %if.end7.i.i.exfat_rename_file.exit.i_crit_edge ], [ %call60.i.i, %brelse.exit149.i.i.exfat_rename_file.exit.i_crit_edge ], [ 0, %cleanup.i.i ], [ 0, %if.end63.i.i ], [ -5, %if.then.i139.i.i ], [ -5, %if.then38.i.i.exfat_rename_file.exit.i_crit_edge ], [ %call40.i.i, %brelse.exit146.i.i.exfat_rename_file.exit.i_crit_edge ], [ -5, %brelse.exit137.i.i.exfat_rename_file.exit.i_crit_edge ], [ -5, %if.end17.i.i.exfat_rename_file.exit.i_crit_edge ], [ %call14.i.i, %if.then13.i.i.exfat_rename_file.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_bh.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_bh.i.i) #9
  br label %if.end50.i

if.else.i:                                        ; preds = %if.end41.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mov_bh.i.i) #9
  %128 = ptrtoint ptr %mov_bh.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 -1 to ptr), ptr %mov_bh.i.i, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_bh.i196.i) #9
  %129 = ptrtoint ptr %new_bh.i196.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_bh.i196.i, align 4, !annotation !42
  %call.i198.i = call ptr @exfat_get_dentry(ptr noundef %87, ptr noundef nonnull %olddir.i, i32 noundef %40, ptr noundef nonnull %mov_bh.i.i) #9
  %tobool.not.i199.i = icmp eq ptr %call.i198.i, null
  br i1 %tobool.not.i199.i, label %if.else.i.exfat_move_file.exit.i_crit_edge, label %if.end.i201.i

if.else.i.exfat_move_file.exit.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_move_file.exit.i

if.end.i201.i:                                    ; preds = %if.else.i
  %call1.i.i = call i32 @exfat_count_ext_entries(ptr noundef %87, ptr noundef nonnull %olddir.i, i32 noundef %40, ptr noundef nonnull %call.i198.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i200.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i200.i, label %if.end.i201.i.exfat_move_file.exit.i_crit_edge, label %if.end3.i.i

if.end.i201.i.exfat_move_file.exit.i_crit_edge:   ; preds = %if.end.i201.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_move_file.exit.i

if.end3.i.i:                                      ; preds = %if.end.i201.i
  %inc.i202.i = add nuw i32 %call1.i.i, 1
  %call4.i.i = call i32 @exfat_calc_num_entries(ptr noundef nonnull %uni_name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %if.end3.i.i.exfat_move_file.exit.i_crit_edge, label %if.end7.i205.i

if.end3.i.i.exfat_move_file.exit.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_move_file.exit.i

if.end7.i205.i:                                   ; preds = %if.end3.i.i
  %call8.i203.i = call fastcc i32 @exfat_find_empty_entry(ptr noundef %new_dir, ptr noundef nonnull %newdir.i, i32 noundef %call4.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i203.i)
  %cmp9.i204.i = icmp slt i32 %call8.i203.i, 0
  br i1 %cmp9.i204.i, label %if.end7.i205.i.exfat_move_file.exit.i_crit_edge, label %if.end11.i206.i

if.end7.i205.i.exfat_move_file.exit.i_crit_edge:  ; preds = %if.end7.i205.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_move_file.exit.i

if.end11.i206.i:                                  ; preds = %if.end7.i205.i
  %call12.i.i = call ptr @exfat_get_dentry(ptr noundef %87, ptr noundef nonnull %newdir.i, i32 noundef %call8.i203.i, ptr noundef nonnull %new_bh.i196.i) #9
  %tobool13.not.i.i = icmp eq ptr %call12.i.i, null
  br i1 %tobool13.not.i.i, label %if.end11.i206.i.exfat_move_file.exit.i_crit_edge, label %if.end15.i.i

if.end11.i206.i.exfat_move_file.exit.i_crit_edge: ; preds = %if.end11.i206.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_move_file.exit.i

if.end15.i.i:                                     ; preds = %if.end11.i206.i
  %130 = call ptr @memcpy(ptr %call12.i.i, ptr %call.i198.i, i32 32)
  %call16.i.i = call i32 @exfat_get_entry_type(ptr noundef nonnull %call12.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %call16.i.i)
  %cmp17.i.i = icmp eq i32 %call16.i.i, 287
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.end15.i.i.if.end24.i.i_crit_edge

if.end15.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %attr.i207.i = getelementptr inbounds %struct.exfat_dentry, ptr %call12.i.i, i32 0, i32 1, i32 0, i32 2
  %131 = ptrtoint ptr %attr.i207.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 2)
  %132 = load i16, ptr %attr.i207.i, align 1
  %133 = or i16 %132, 8192
  store i16 %133, ptr %attr.i207.i, align 1
  %attr20.i.i = getelementptr i8, ptr %5, i32 -244
  %134 = ptrtoint ptr %attr20.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %attr20.i.i, align 4
  %136 = or i16 %135, 32
  store i16 %136, ptr %attr20.i.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then18.i.i, %if.end15.i.i.if.end24.i.i_crit_edge
  %137 = ptrtoint ptr %new_bh.i196.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %new_bh.i196.i, align 4
  %139 = ptrtoint ptr %i_sb.i192.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i_sb.i192.i, align 4
  %s_flags.i208.i = getelementptr inbounds %struct.super_block, ptr %140, i32 0, i32 10
  %141 = ptrtoint ptr %s_flags.i208.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %s_flags.i208.i, align 4
  %and.i209.i = and i32 %142, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209.i)
  %tobool26.not.i.i = icmp eq i32 %and.i209.i, 0
  br i1 %tobool26.not.i.i, label %lor.rhs.i212.i, label %if.end24.i.i.lor.end.i214.i_crit_edge

if.end24.i.i.lor.end.i214.i_crit_edge:            ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i214.i

lor.rhs.i212.i:                                   ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_flags.i210.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %143 = ptrtoint ptr %i_flags.i210.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %i_flags.i210.i, align 4
  %and27.i.i = and i32 %144, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.i.i = icmp ne i32 %and27.i.i, 0
  %phi.cast.i211.i = zext i1 %tobool28.i.i to i32
  br label %lor.end.i214.i

lor.end.i214.i:                                   ; preds = %lor.rhs.i212.i, %if.end24.i.i.lor.end.i214.i_crit_edge
  %145 = phi i32 [ 1, %if.end24.i.i.lor.end.i214.i_crit_edge ], [ %phi.cast.i211.i, %lor.rhs.i212.i ]
  call void @exfat_update_bh(ptr noundef %138, i32 noundef %145) #9
  %146 = ptrtoint ptr %mov_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mov_bh.i.i, align 4
  %tobool.not.i.i213.i = icmp eq ptr %147, null
  br i1 %tobool.not.i.i213.i, label %lor.end.i214.i.brelse.exit.i216.i_crit_edge, label %if.then.i.i215.i

lor.end.i214.i.brelse.exit.i216.i_crit_edge:      ; preds = %lor.end.i214.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i216.i

if.then.i.i215.i:                                 ; preds = %lor.end.i214.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %147) #9
  br label %brelse.exit.i216.i

brelse.exit.i216.i:                               ; preds = %if.then.i.i215.i, %lor.end.i214.i.brelse.exit.i216.i_crit_edge
  %148 = ptrtoint ptr %new_bh.i196.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %new_bh.i196.i, align 4
  %tobool.not.i110.i.i = icmp eq ptr %149, null
  br i1 %tobool.not.i110.i.i, label %brelse.exit.i216.i.brelse.exit112.i.i_crit_edge, label %if.then.i111.i.i

brelse.exit.i216.i.brelse.exit112.i.i_crit_edge:  ; preds = %brelse.exit.i216.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit112.i.i

if.then.i111.i.i:                                 ; preds = %brelse.exit.i216.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %149) #9
  br label %brelse.exit112.i.i

brelse.exit112.i.i:                               ; preds = %if.then.i111.i.i, %brelse.exit.i216.i.brelse.exit112.i.i_crit_edge
  %add.i217.i = add i32 %40, 1
  %call29.i.i = call ptr @exfat_get_dentry(ptr noundef %87, ptr noundef nonnull %olddir.i, i32 noundef %add.i217.i, ptr noundef nonnull %mov_bh.i.i) #9
  %tobool30.not.i.i = icmp eq ptr %call29.i.i, null
  br i1 %tobool30.not.i.i, label %brelse.exit112.i.i.exfat_move_file.exit.i_crit_edge, label %if.end32.i.i

brelse.exit112.i.i.exfat_move_file.exit.i_crit_edge: ; preds = %brelse.exit112.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_move_file.exit.i

if.end32.i.i:                                     ; preds = %brelse.exit112.i.i
  %add33.i.i = add nuw i32 %call8.i203.i, 1
  %call34.i.i = call ptr @exfat_get_dentry(ptr noundef %87, ptr noundef nonnull %newdir.i, i32 noundef %add33.i.i, ptr noundef nonnull %new_bh.i196.i) #9
  %tobool35.not.i.i = icmp eq ptr %call34.i.i, null
  br i1 %tobool35.not.i.i, label %if.then36.i.i, label %if.end37.i.i

if.then36.i.i:                                    ; preds = %if.end32.i.i
  %150 = ptrtoint ptr %mov_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mov_bh.i.i, align 4
  %tobool.not.i113.i.i = icmp eq ptr %151, null
  br i1 %tobool.not.i113.i.i, label %if.then36.i.i.exfat_move_file.exit.i_crit_edge, label %if.then.i114.i.i

if.then36.i.i.exfat_move_file.exit.i_crit_edge:   ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_move_file.exit.i

if.then.i114.i.i:                                 ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %151) #9
  br label %exfat_move_file.exit.i

if.end37.i.i:                                     ; preds = %if.end32.i.i
  %152 = call ptr @memcpy(ptr %call34.i.i, ptr %call29.i.i, i32 32)
  %153 = ptrtoint ptr %new_bh.i196.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %new_bh.i196.i, align 4
  %155 = ptrtoint ptr %i_sb.i192.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %i_sb.i192.i, align 4
  %s_flags39.i.i = getelementptr inbounds %struct.super_block, ptr %156, i32 0, i32 10
  %157 = ptrtoint ptr %s_flags39.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %s_flags39.i.i, align 4
  %and40.i.i = and i32 %158, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i218.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i218.i, label %lor.rhs42.i.i, label %if.end37.i.i.lor.end46.i.i_crit_edge

if.end37.i.i.lor.end46.i.i_crit_edge:             ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end46.i.i

lor.rhs42.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %i_flags43.i.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %159 = ptrtoint ptr %i_flags43.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %i_flags43.i.i, align 4
  %and44.i.i = and i32 %160, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i.i)
  %tobool45.i.i = icmp ne i32 %and44.i.i, 0
  %phi.cast109.i.i = zext i1 %tobool45.i.i to i32
  br label %lor.end46.i.i

lor.end46.i.i:                                    ; preds = %lor.rhs42.i.i, %if.end37.i.i.lor.end46.i.i_crit_edge
  %161 = phi i32 [ 1, %if.end37.i.i.lor.end46.i.i_crit_edge ], [ %phi.cast109.i.i, %lor.rhs42.i.i ]
  call void @exfat_update_bh(ptr noundef %154, i32 noundef %161) #9
  %162 = ptrtoint ptr %mov_bh.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mov_bh.i.i, align 4
  %tobool.not.i116.i.i = icmp eq ptr %163, null
  br i1 %tobool.not.i116.i.i, label %lor.end46.i.i.brelse.exit118.i.i_crit_edge, label %if.then.i117.i.i

lor.end46.i.i.brelse.exit118.i.i_crit_edge:       ; preds = %lor.end46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit118.i.i

if.then.i117.i.i:                                 ; preds = %lor.end46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %163) #9
  br label %brelse.exit118.i.i

brelse.exit118.i.i:                               ; preds = %if.then.i117.i.i, %lor.end46.i.i.brelse.exit118.i.i_crit_edge
  %164 = ptrtoint ptr %new_bh.i196.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %new_bh.i196.i, align 4
  %tobool.not.i119.i.i = icmp eq ptr %165, null
  br i1 %tobool.not.i119.i.i, label %brelse.exit118.i.i.brelse.exit121.i.i_crit_edge, label %if.then.i120.i.i

brelse.exit118.i.i.brelse.exit121.i.i_crit_edge:  ; preds = %brelse.exit118.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit121.i.i

if.then.i120.i.i:                                 ; preds = %brelse.exit118.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %165) #9
  br label %brelse.exit121.i.i

brelse.exit121.i.i:                               ; preds = %if.then.i120.i.i, %brelse.exit118.i.i.brelse.exit121.i.i_crit_edge
  %call48.i.i = call i32 @exfat_init_ext_entry(ptr noundef %new_dir, ptr noundef nonnull %newdir.i, i32 noundef %call8.i203.i, i32 noundef %call4.i.i, ptr noundef nonnull %uni_name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %tobool49.not.i.i = icmp eq i32 %call48.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end51.i.i, label %brelse.exit121.i.i.exfat_move_file.exit.i_crit_edge

brelse.exit121.i.i.exfat_move_file.exit.i_crit_edge: ; preds = %brelse.exit121.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_move_file.exit.i

if.end51.i.i:                                     ; preds = %brelse.exit121.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call52.i.i = call i32 @exfat_remove_entries(ptr noundef %new_dir, ptr noundef nonnull %olddir.i, i32 noundef %40, i32 noundef 0, i32 noundef %inc.i202.i) #9
  %166 = ptrtoint ptr %newdir.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %newdir.i, align 4
  %size.i219.i = getelementptr inbounds %struct.exfat_chain, ptr %newdir.i, i32 0, i32 1
  %168 = ptrtoint ptr %size.i219.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %size.i219.i, align 4
  %flags.i220.i = getelementptr inbounds %struct.exfat_chain, ptr %newdir.i, i32 0, i32 2
  %170 = ptrtoint ptr %flags.i220.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %flags.i220.i, align 4
  call void @exfat_chain_set(ptr noundef %add.ptr.i, i32 noundef %167, i32 noundef %169, i8 noundef zeroext %171) #9
  %172 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %call8.i203.i, ptr %entry8.i, align 4
  br label %exfat_move_file.exit.i

exfat_move_file.exit.i:                           ; preds = %if.end51.i.i, %brelse.exit121.i.i.exfat_move_file.exit.i_crit_edge, %if.then.i114.i.i, %if.then36.i.i.exfat_move_file.exit.i_crit_edge, %brelse.exit112.i.i.exfat_move_file.exit.i_crit_edge, %if.end11.i206.i.exfat_move_file.exit.i_crit_edge, %if.end7.i205.i.exfat_move_file.exit.i_crit_edge, %if.end3.i.i.exfat_move_file.exit.i_crit_edge, %if.end.i201.i.exfat_move_file.exit.i_crit_edge, %if.else.i.exfat_move_file.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end51.i.i ], [ -5, %if.else.i.exfat_move_file.exit.i_crit_edge ], [ -5, %if.end.i201.i.exfat_move_file.exit.i_crit_edge ], [ %call4.i.i, %if.end3.i.i.exfat_move_file.exit.i_crit_edge ], [ %call8.i203.i, %if.end7.i205.i.exfat_move_file.exit.i_crit_edge ], [ -5, %if.end11.i206.i.exfat_move_file.exit.i_crit_edge ], [ -5, %brelse.exit112.i.i.exfat_move_file.exit.i_crit_edge ], [ %call48.i.i, %brelse.exit121.i.i.exfat_move_file.exit.i_crit_edge ], [ -5, %if.then36.i.i.exfat_move_file.exit.i_crit_edge ], [ -5, %if.then.i114.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_bh.i196.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mov_bh.i.i) #9
  br label %if.end50.i

if.end50.i:                                       ; preds = %exfat_move_file.exit.i, %exfat_rename_file.exit.i
  %ret.0.i = phi i32 [ %retval.1.i.i, %exfat_rename_file.exit.i ], [ %retval.0.i.i, %exfat_move_file.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool51.not.i = icmp ne i32 %ret.0.i, 0
  %brmerge.i = select i1 %tobool51.not.i, i1 true, i1 %tobool12.not.i
  br i1 %brmerge.i, label %if.end50.i.__exfat_rename.exit_crit_edge, label %if.then53.i

if.end50.i.__exfat_rename.exit_crit_edge:         ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__exfat_rename.exit

if.then53.i:                                      ; preds = %if.end50.i
  %call54.i = call ptr @exfat_get_dentry(ptr noundef %12, ptr noundef %new_ei.0.i, i32 noundef %new_entry.0.i, ptr noundef nonnull %new_bh.i) #9
  %tobool55.not.i = icmp eq ptr %call54.i, null
  br i1 %tobool55.not.i, label %if.then53.i.del_out.i_crit_edge, label %if.end57.i

if.then53.i.del_out.i_crit_edge:                  ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %del_out.i

if.end57.i:                                       ; preds = %if.then53.i
  %call58.i = call i32 @exfat_count_ext_entries(ptr noundef %12, ptr noundef %new_ei.0.i, i32 noundef %new_entry.0.i, ptr noundef nonnull %call54.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %cmp59.i = icmp slt i32 %call58.i, 0
  br i1 %cmp59.i, label %if.end57.i.del_out.i_crit_edge, label %if.end62.i

if.end57.i.del_out.i_crit_edge:                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %del_out.i

if.end62.i:                                       ; preds = %if.end57.i
  %173 = ptrtoint ptr %new_bh.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %new_bh.i, align 4
  %tobool.not.i222.i = icmp eq ptr %174, null
  br i1 %tobool.not.i222.i, label %if.end62.i.brelse.exit225.i_crit_edge, label %if.then.i223.i

if.end62.i.brelse.exit225.i_crit_edge:            ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit225.i

if.then.i223.i:                                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %174) #9
  br label %brelse.exit225.i

brelse.exit225.i:                                 ; preds = %if.then.i223.i, %if.end62.i.brelse.exit225.i_crit_edge
  %add63.i = add nuw i32 %call58.i, 1
  %call64.i = call i32 @exfat_remove_entries(ptr noundef nonnull %7, ptr noundef %new_ei.0.i, i32 noundef %new_entry.0.i, i32 noundef 0, i32 noundef %add63.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %if.end67.i, label %brelse.exit225.i.del_out.i_crit_edge

brelse.exit225.i.del_out.i_crit_edge:             ; preds = %brelse.exit225.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %del_out.i

if.end67.i:                                       ; preds = %brelse.exit225.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %new_entry_type.0.i)
  %cmp68.i = icmp eq i32 %new_entry_type.0.i, 260
  br i1 %cmp68.i, label %if.then70.i, label %if.end67.i.del_out.i_crit_edge

if.end67.i.del_out.i_crit_edge:                   ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %del_out.i

if.then70.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %new_clu_to_free.i) #9
  %175 = call ptr @memset(ptr %new_clu_to_free.i, i32 255, i32 12)
  %start_clu71.i = getelementptr inbounds %struct.exfat_inode_info, ptr %new_ei.0.i, i32 0, i32 4
  %176 = ptrtoint ptr %start_clu71.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %start_clu71.i, align 8
  %call72.i = call fastcc i64 @i_size_read(ptr noundef nonnull %7) #9
  %sub73.i = add i64 %call72.i, -1
  %cluster_size_bits74.i = getelementptr inbounds %struct.exfat_sb_info, ptr %14, i32 0, i32 3
  %178 = ptrtoint ptr %cluster_size_bits74.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %cluster_size_bits74.i, align 8
  %sh_prom75.i = zext i32 %179 to i64
  %shr76.i = ashr i64 %sub73.i, %sh_prom75.i
  %180 = trunc i64 %shr76.i to i32
  %conv78.i = add i32 %180, 1
  %flags79.i = getelementptr inbounds %struct.exfat_inode_info, ptr %new_ei.0.i, i32 0, i32 5
  %181 = ptrtoint ptr %flags79.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %flags79.i, align 4
  call void @exfat_chain_set(ptr noundef nonnull %new_clu_to_free.i, i32 noundef %177, i32 noundef %conv78.i, i8 noundef zeroext %182) #9
  %call80.i = call i32 @exfat_free_cluster(ptr noundef nonnull %7, ptr noundef nonnull %new_clu_to_free.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  %spec.select.i = select i1 %tobool81.not.i, i32 0, i32 -5
  call fastcc void @i_size_write(ptr noundef nonnull %7, i64 noundef 0) #9
  %183 = ptrtoint ptr %start_clu71.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 -1, ptr %start_clu71.i, align 8
  %184 = ptrtoint ptr %flags79.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 3, ptr %flags79.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %new_clu_to_free.i) #9
  br label %del_out.i

del_out.i:                                        ; preds = %if.then70.i, %if.end67.i.del_out.i_crit_edge, %brelse.exit225.i.del_out.i_crit_edge, %if.end57.i.del_out.i_crit_edge, %if.then53.i.del_out.i_crit_edge
  %ret.2.i = phi i32 [ %spec.select.i, %if.then70.i ], [ 0, %if.end67.i.del_out.i_crit_edge ], [ -5, %if.then53.i.del_out.i_crit_edge ], [ -5, %if.end57.i.del_out.i_crit_edge ], [ -5, %brelse.exit225.i.del_out.i_crit_edge ]
  %185 = ptrtoint ptr %new_ei.0.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -64735, ptr %new_ei.0.i, align 8
  br label %__exfat_rename.exit

__exfat_rename.exit.thread:                       ; preds = %if.end37.i.__exfat_rename.exit.thread_crit_edge, %if.then28.i.__exfat_rename.exit.thread_crit_edge, %exfat_update_parent_info.exit188.i.__exfat_rename.exit.thread_crit_edge, %if.then18.i, %exfat_update_parent_info.exit.i.__exfat_rename.exit.thread_crit_edge, %if.then5.i, %lor.lhs.false.i.__exfat_rename.exit.thread_crit_edge, %if.end.__exfat_rename.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %exfat_update_parent_info.exit.i.__exfat_rename.exit.thread_crit_edge ], [ -5, %exfat_update_parent_info.exit188.i.__exfat_rename.exit.thread_crit_edge ], [ %call.i.i, %if.end37.i.__exfat_rename.exit.thread_crit_edge ], [ %call32.i, %if.then28.i.__exfat_rename.exit.thread_crit_edge ], [ -5, %if.then18.i ], [ -22, %if.end.__exfat_rename.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.__exfat_rename.exit.thread_crit_edge ], [ -2, %if.then5.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_bh.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_bh.i) #9
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %uni_name.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %newdir.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %olddir.i) #9
  br label %unlock

__exfat_rename.exit:                              ; preds = %del_out.i, %if.end50.i.__exfat_rename.exit_crit_edge
  %ret.3.i = phi i32 [ %ret.0.i, %if.end50.i.__exfat_rename.exit_crit_edge ], [ %ret.2.i, %del_out.i ]
  %call90.i = call i32 @exfat_clear_volume_dirty(ptr noundef %12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_bh.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_bh.i) #9
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %uni_name.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %newdir.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %olddir.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool4.not = icmp eq i32 %ret.3.i, 0
  br i1 %tobool4.not, label %if.end6, label %__exfat_rename.exit.unlock_crit_edge

__exfat_rename.exit.unlock_crit_edge:             ; preds = %__exfat_rename.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end6:                                          ; preds = %__exfat_rename.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 38
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i1.i.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end6
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %if.end6 ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %186 = add i64 %cur.0.i.i, 2
  %add.i.i153 = and i64 %186, -2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #9
  %call.i.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i153) #9
  %cmp.i.i154 = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i154, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !43

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  %i_ctime = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 15
  %i_crtime = getelementptr i8, ptr %new_dir, i32 784
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %new_dir) #9
  %187 = call ptr @memcpy(ptr %i_crtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %188 = call ptr @memcpy(ptr %i_atime, ptr %i_crtime, i32 16)
  %189 = call ptr @memcpy(ptr %i_mtime, ptr %i_crtime, i32 16)
  %190 = call ptr @memcpy(ptr %i_ctime, ptr %i_crtime, i32 16)
  call void @exfat_truncate_atime(ptr noundef %i_atime) #9
  %191 = ptrtoint ptr %i_sb.i192.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %i_sb.i192.i, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %192, i32 0, i32 10
  %193 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %s_flags, align 4
  %and10 = and i32 %194, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %inode_inc_iversion.exit.if.then14_crit_edge

inode_inc_iversion.exit.if.then14_crit_edge:      ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

lor.lhs.false:                                    ; preds = %inode_inc_iversion.exit
  %i_flags = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %195 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %i_flags, align 4
  %and12 = and i32 %196, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %inode_inc_iversion.exit.if.then14_crit_edge
  call void @exfat_sync_inode(ptr noundef %new_dir) #9
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mark_inode_dirty(ptr noundef %new_dir, i32 noundef 7) #9
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  %197 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %add.ptr.i, align 8
  %conv = zext i32 %198 to i64
  %shl = shl nuw i64 %conv, 32
  %199 = ptrtoint ptr %entry8.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %entry8.i, align 4
  %conv21 = zext i32 %200 to i64
  %or = or i64 %shl, %conv21
  call void @exfat_unhash_inode(ptr noundef %5) #9
  call void @exfat_hash_inode(ptr noundef %5, i64 noundef %or) #9
  %201 = ptrtoint ptr %i_sb.i192.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %i_sb.i192.i, align 4
  %s_flags23 = getelementptr inbounds %struct.super_block, ptr %202, i32 0, i32 10
  %203 = ptrtoint ptr %s_flags23 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %s_flags23, align 4
  %and24 = and i32 %204, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.lhs.false26, label %if.end15.if.then30_crit_edge

if.end15.if.then30_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false26:                                  ; preds = %if.end15
  %i_flags27 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 4
  %205 = ptrtoint ptr %i_flags27 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %i_flags27, align 4
  %and28 = and i32 %206, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else31, label %lor.lhs.false26.if.then30_crit_edge

lor.lhs.false26.if.then30_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false26.if.then30_crit_edge, %if.end15.if.then30_crit_edge
  call void @exfat_sync_inode(ptr noundef %5) #9
  br label %if.end32

if.else31:                                        ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #9
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then30
  %207 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %5, align 8
  %209 = and i16 %208, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %209)
  %cmp = icmp ne i16 %209, 16384
  %cmp36.not = icmp eq ptr %old_dir, %new_dir
  %or.cond = or i1 %cmp36.not, %cmp
  br i1 %or.cond, label %if.end32.if.end42_crit_edge, label %if.then38

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then38:                                        ; preds = %if.end32
  call void @drop_nlink(ptr noundef %old_dir) #9
  br i1 %tobool12.not.i, label %if.then40, label %if.then38.if.end42_crit_edge

if.then38.if.end42_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  call void @inc_nlink(ptr noundef %new_dir) #9
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.then38.if.end42_crit_edge, %if.end32.if.end42_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  %i_version.i.i.i158 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 38
  %call.i.i.i.i.i159 = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i158, i32 noundef 8) #9
  %call.i.i1.i.i160 = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i158) #9
  br label %for.cond.i.i166

for.cond.i.i166:                                  ; preds = %for.cond.i.i166.for.cond.i.i166_crit_edge, %if.end42
  %cur.0.i.i161 = phi i64 [ %call.i.i1.i.i160, %if.end42 ], [ %call.i.i.i164, %for.cond.i.i166.for.cond.i.i166_crit_edge ]
  %210 = add i64 %cur.0.i.i161, 2
  %add.i.i162 = and i64 %210, -2
  %call.i.i.i.i163 = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i158, i32 noundef 8) #9
  %call.i.i.i164 = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i158, i64 noundef %cur.0.i.i161, i64 noundef %add.i.i162) #9
  %cmp.i.i165 = icmp eq i64 %call.i.i.i164, %cur.0.i.i161
  br i1 %cmp.i.i165, label %inode_inc_iversion.exit167, label %for.cond.i.i166.for.cond.i.i166_crit_edge, !prof !43

for.cond.i.i166.for.cond.i.i166_crit_edge:        ; preds = %for.cond.i.i166
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i166

inode_inc_iversion.exit167:                       ; preds = %for.cond.i.i166
  %i_ctime43 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 17
  %i_mtime44 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp45) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp45, ptr noundef %old_dir) #9
  %211 = call ptr @memcpy(ptr %i_mtime44, ptr %tmp45, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp45) #9
  %212 = call ptr @memcpy(ptr %i_ctime43, ptr %i_mtime44, i32 16)
  %213 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %i_sb, align 4
  %s_flags47 = getelementptr inbounds %struct.super_block, ptr %214, i32 0, i32 10
  %215 = ptrtoint ptr %s_flags47 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %s_flags47, align 4
  %and48 = and i32 %216, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %inode_inc_iversion.exit167.if.then54_crit_edge

inode_inc_iversion.exit167.if.then54_crit_edge:   ; preds = %inode_inc_iversion.exit167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

lor.lhs.false50:                                  ; preds = %inode_inc_iversion.exit167
  %i_flags51 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 4
  %217 = ptrtoint ptr %i_flags51 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %i_flags51, align 4
  %and52 = and i32 %218, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.else55, label %lor.lhs.false50.if.then54_crit_edge

lor.lhs.false50.if.then54_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

if.then54:                                        ; preds = %lor.lhs.false50.if.then54_crit_edge, %inode_inc_iversion.exit167.if.then54_crit_edge
  call void @exfat_sync_inode(ptr noundef %old_dir) #9
  br label %if.end56

if.else55:                                        ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mark_inode_dirty(ptr noundef %old_dir, i32 noundef 7) #9
  br label %if.end56

if.end56:                                         ; preds = %if.else55, %if.then54
  br i1 %tobool12.not.i, label %if.end56.unlock_crit_edge, label %if.then58

if.end56.unlock_crit_edge:                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then58:                                        ; preds = %if.end56
  call void @exfat_unhash_inode(ptr noundef nonnull %7) #9
  %219 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 12
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool59.not = icmp eq i32 %221, 0
  br i1 %tobool59.not, label %if.else68, label %if.then60

if.then60:                                        ; preds = %if.then58
  call void @drop_nlink(ptr noundef nonnull %7) #9
  %222 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %7, align 8
  %224 = and i16 %223, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %224)
  %cmp64 = icmp eq i16 %224, 16384
  br i1 %cmp64, label %if.then66, label %if.then60.if.end93_crit_edge

if.then60.if.end93_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

if.then66:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  call void @drop_nlink(ptr noundef nonnull %7) #9
  br label %if.end93

if.else68:                                        ; preds = %if.then58
  call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #12
  %225 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %cmp69 = icmp eq i32 %226, 0
  br i1 %cmp69, label %do.end, label %if.else68.if.end93_crit_edge, !prof !46

if.else68.if.end93_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

do.end:                                           ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1386, i32 noundef 9, ptr noundef null) #9
  br label %if.end93

if.end93:                                         ; preds = %do.end, %if.else68.if.end93_crit_edge, %if.then66, %if.then60.if.end93_crit_edge
  %i_ctime94 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17
  %i_crtime96 = getelementptr i8, ptr %7, i32 784
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp97) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp97, ptr noundef nonnull %7) #9
  %227 = call ptr @memcpy(ptr %i_crtime96, ptr %tmp97, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp97) #9
  %228 = call ptr @memcpy(ptr %i_ctime94, ptr %i_crtime96, i32 16)
  br label %unlock

unlock:                                           ; preds = %if.end93, %if.end56.unlock_crit_edge, %__exfat_rename.exit.unlock_crit_edge, %__exfat_rename.exit.thread
  %retval.0.i172 = phi i32 [ %retval.0.i.ph, %__exfat_rename.exit.thread ], [ 0, %if.end56.unlock_crit_edge ], [ 0, %if.end93 ], [ %ret.3.i, %__exfat_rename.exit.unlock_crit_edge ]
  %229 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %s_fs_info.i, align 16
  %s_lock100 = getelementptr inbounds %struct.exfat_sb_info, ptr %230, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %s_lock100) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i172, %unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_setattr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @exfat_toupper(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8_to_utf32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exfat_build_inode(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @exfat_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_rehash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_move(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_calc_num_entries(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_find_dir_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exfat_get_dentry_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exfat_get_dentry_cached(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_get_entry_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_get_entry_time(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_free_dentry_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__exfat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !47
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #9
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !48
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !46

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !49
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !51
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_chain_set(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_count_dir_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__exfat_resolve_path(ptr noundef %inode, ptr noundef %path, ptr noundef %p_dir, ptr noundef %p_uniname, i32 noundef %lookup) unnamed_addr #0 align 64 {
entry:
  %lossy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lossy) #9
  %0 = ptrtoint ptr %lossy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %lossy, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call i32 @strlen(ptr noundef %path) #13
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %entry
  %len.addr.0.i = phi i32 [ %call2, %entry ], [ %sub.i, %land.rhs.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i)
  %tobool.not.i = icmp eq i32 %len.addr.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.cleanup_crit_edge, label %land.rhs.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.i:                                       ; preds = %while.cond.i
  %sub.i = add i32 %len.addr.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %path, i32 %sub.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %cmp.i = icmp eq i8 %6, 46
  br i1 %cmp.i, label %land.rhs.i.while.cond.i_crit_edge, label %if.end

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end:                                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1530, i32 %call2)
  %cmp = icmp ugt i32 %call2, 1530
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @exfat_nls_to_utf16(ptr noundef %2, ptr noundef %path, i32 noundef %len.addr.0.i, ptr noundef %p_uniname, ptr noundef nonnull %lossy) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %lossy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lossy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lookup)
  %tobool12.not = icmp eq i32 %lookup, 0
  %or.cond = and i1 %tobool12.not, %tobool11.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool13.not = icmp eq i32 %call7, 0
  %or.cond32 = select i1 %or.cond, i1 true, i1 %tobool13.not
  br i1 %or.cond32, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %start_clu = getelementptr i8, ptr %inode, i32 -240
  %9 = ptrtoint ptr %start_clu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start_clu, align 8
  %call16 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %cluster_size_bits = getelementptr inbounds %struct.exfat_sb_info, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cluster_size_bits, align 8
  %sh_prom = zext i32 %12 to i64
  %shr = ashr i64 %call16, %sh_prom
  %conv = trunc i64 %shr to i32
  %flags = getelementptr i8, ptr %inode, i32 -236
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 4
  call void @exfat_chain_set(ptr noundef %p_dir, i32 noundef %10, i32 noundef %conv, i8 noundef zeroext %14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -36, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -2, %while.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lossy) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_nls_to_utf16(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_set_volume_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exfat_add_entry(ptr noundef %inode, ptr noundef %path, ptr noundef %p_dir, i32 noundef %type, ptr nocapture noundef writeonly %info) unnamed_addr #0 align 64 {
entry:
  %uniname = alloca %struct.exfat_uni_name, align 2
  %clu = alloca %struct.exfat_chain, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %uniname) #9
  %4 = call ptr @memset(ptr %uniname, i32 255, i32 520)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clu) #9
  %5 = call ptr @memset(ptr %clu, i32 255, i32 12)
  %call.i = call fastcc i32 @__exfat_resolve_path(ptr noundef %inode, ptr noundef %path, ptr noundef %p_dir, ptr noundef nonnull %uniname, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call2 = call i32 @exfat_calc_num_entries(ptr noundef nonnull %uniname) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @exfat_find_empty_entry(ptr noundef %inode, ptr noundef %p_dir, i32 noundef %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_crit_edge, label %if.end8

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %type)
  %cmp9 = icmp eq i32 %type, 260
  br i1 %cmp9, label %if.then10, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  %call11 = call i32 @exfat_alloc_new_dir(ptr noundef %inode, ptr noundef nonnull %clu) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then10.out_crit_edge

if.then10.out_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clu, align 4
  %cluster_size = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cluster_size, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end8.if.end15_crit_edge
  %clu_size.0 = phi i32 [ %9, %if.end14 ], [ 0, %if.end8.if.end15_crit_edge ]
  %start_clu.0 = phi i32 [ %7, %if.end14 ], [ 0, %if.end8.if.end15_crit_edge ]
  %conv = sext i32 %clu_size.0 to i64
  %call16 = call i32 @exfat_init_dir_entry(ptr noundef %inode, ptr noundef %p_dir, i32 noundef %call5, i32 noundef %type, i32 noundef %start_clu.0, i64 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end19:                                         ; preds = %if.end15
  %call20 = call i32 @exfat_init_ext_entry(ptr noundef %inode, ptr noundef %p_dir, i32 noundef %call5, i32 noundef %call2, ptr noundef nonnull %uniname) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end23:                                         ; preds = %if.end19
  %10 = call ptr @memcpy(ptr %info, ptr %p_dir, i32 12)
  %entry25 = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %entry25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call5, ptr %entry25, align 4
  %flags = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %flags, align 8
  %type26 = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 2
  %13 = ptrtoint ptr %type26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %type, ptr %type26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 287, i32 %type)
  %cmp27 = icmp eq i32 %type, 287
  br i1 %cmp27, label %if.end23.if.end36_crit_edge, label %if.else

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end23.if.end36_crit_edge
  %.sink76 = phi i16 [ 16, %if.else ], [ 32, %if.end23.if.end36_crit_edge ]
  %start_clu.0.sink = phi i32 [ %start_clu.0, %if.else ], [ -1, %if.end23.if.end36_crit_edge ]
  %conv.sink = phi i64 [ %conv, %if.else ], [ 0, %if.end23.if.end36_crit_edge ]
  %.sink = phi i32 [ 2, %if.else ], [ 0, %if.end23.if.end36_crit_edge ]
  %14 = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 5
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %.sink76, ptr %14, align 2
  %16 = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %start_clu.0.sink, ptr %16, align 4
  %18 = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 6
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv.sink, ptr %18, align 8
  %20 = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 7
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %20, align 8
  %atime = getelementptr inbounds %struct.exfat_dir_entry, ptr %info, i32 0, i32 8
  %22 = call ptr @memset(ptr %atime, i32 0, i32 48)
  br label %out

out:                                              ; preds = %if.end36, %if.end19.out_crit_edge, %if.end15.out_crit_edge, %if.then10.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.out_crit_edge ], [ %call11, %if.then10.out_crit_edge ], [ %call16, %if.end15.out_crit_edge ], [ %call20, %if.end19.out_crit_edge ], [ 0, %if.end36 ], [ %call2, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clu) #9
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %uniname) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_clear_volume_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_sync_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_truncate_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exfat_find_empty_entry(ptr noundef %inode, ptr noundef %p_dir, i32 noundef %num_entries) unnamed_addr #0 align 64 {
entry:
  %clu.i = alloca %struct.exfat_chain, align 4
  %bh.i = alloca ptr, align 4
  %last_clu = alloca i32, align 4
  %clu = alloca %struct.exfat_chain, align 4
  %hint_femp = alloca %struct.exfat_hint_femp, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_clu) #9
  %0 = ptrtoint ptr %last_clu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %last_clu, align 4, !annotation !42
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clu) #9
  %1 = call ptr @memset(ptr %clu, i32 255, i32 12)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -264
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hint_femp) #9
  %hint_femp2 = getelementptr i8, ptr %inode, i32 -212
  %6 = call ptr @memset(ptr %hint_femp, i32 255, i32 20)
  %7 = ptrtoint ptr %hint_femp2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hint_femp2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.not = icmp eq i32 %8, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = call ptr @memcpy(ptr %hint_femp, ptr %hint_femp2, i32 20)
  %10 = ptrtoint ptr %hint_femp2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %hint_femp2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %count.i = getelementptr inbounds %struct.exfat_hint_femp, ptr %hint_femp, i32 0, i32 1
  %cur.i = getelementptr inbounds %struct.exfat_hint_femp, ptr %hint_femp, i32 0, i32 2
  %size.i = getelementptr inbounds %struct.exfat_chain, ptr %clu.i, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.exfat_chain, ptr %clu.i, i32 0, i32 2
  %sub46.neg.i = sub i32 1, %num_entries
  %flags = getelementptr inbounds %struct.exfat_chain, ptr %p_dir, i32 0, i32 2
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %flags31 = getelementptr inbounds %struct.exfat_chain, ptr %clu, i32 0, i32 2
  %size38 = getelementptr inbounds %struct.exfat_chain, ptr %p_dir, i32 0, i32 1
  %flags41 = getelementptr inbounds %struct.exfat_hint_femp, ptr %hint_femp, i32 0, i32 2, i32 2
  %cluster_size_bits = getelementptr inbounds %struct.exfat_sb_info, ptr %5, i32 0, i32 3
  %dentries_per_clu = getelementptr inbounds %struct.exfat_sb_info, ptr %5, i32 0, i32 11
  %size65 = getelementptr inbounds %struct.exfat_hint_femp, ptr %hint_femp, i32 0, i32 2, i32 1
  %root_dir = getelementptr inbounds %struct.exfat_sb_info, ptr %5, i32 0, i32 10
  %entry77 = getelementptr i8, ptr %inode, i32 -252
  %cluster_size = getelementptr inbounds %struct.exfat_sb_info, ptr %5, i32 0, i32 2
  %i_size_ondisk = getelementptr i8, ptr %inode, i32 -128
  %i_size_aligned = getelementptr i8, ptr %inode, i32 -120
  %flags113 = getelementptr i8, ptr %inode, i32 -236
  %sect_per_clus_bits = getelementptr inbounds %struct.exfat_sb_info, ptr %5, i32 0, i32 5
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  br label %while.cond

while.cond:                                       ; preds = %if.end106, %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clu.i) #9
  %11 = call ptr @memset(ptr %clu.i, i32 255, i32 12)
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #9
  %14 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !42
  %dentries_per_clu1.i = getelementptr inbounds %struct.exfat_sb_info, ptr %13, i32 0, i32 11
  %15 = ptrtoint ptr %dentries_per_clu1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dentries_per_clu1.i, align 8
  %17 = ptrtoint ptr %hint_femp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hint_femp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.not.i = icmp eq i32 %18, -1
  br i1 %cmp.not.i, label %while.cond.if.end6.i_crit_edge, label %if.then.i

while.cond.if.end6.i_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then.i:                                        ; preds = %while.cond
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %num_entries)
  %cmp3.not.i = icmp slt i32 %20, %num_entries
  br i1 %cmp3.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then4.i

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %hint_femp to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %hint_femp, align 4
  br label %exfat_search_empty_slot.exit

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %while.cond.if.end6.i_crit_edge
  %p_dir.sink.i = phi ptr [ %p_dir, %while.cond.if.end6.i_crit_edge ], [ %cur.i, %if.then.i.if.end6.i_crit_edge ]
  %dentry.0.i = phi i32 [ 0, %while.cond.if.end6.i_crit_edge ], [ %18, %if.then.i.if.end6.i_crit_edge ]
  call void @exfat_chain_dup(ptr noundef nonnull %clu.i, ptr noundef %p_dir.sink.i) #9
  %22 = ptrtoint ptr %clu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp7.not126.i = icmp eq i32 %23, -1
  br i1 %cmp7.not126.i, label %if.end6.i.exfat_search_empty_slot.exit_crit_edge, label %while.body.lr.ph.i

if.end6.i.exfat_search_empty_slot.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_search_empty_slot.exit

while.body.lr.ph.i:                               ; preds = %if.end6.i
  %sub.i = add i32 %16, -1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end71.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %num_empty.0128.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %num_empty.1.lcssa.i, %if.end71.i.while.body.i_crit_edge ]
  %dentry.1127.i = phi i32 [ %dentry.0.i, %while.body.lr.ph.i ], [ %dentry.2.lcssa.i, %if.end71.i.while.body.i_crit_edge ]
  %and.i = and i32 %dentry.1127.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %16)
  %cmp8121.i = icmp slt i32 %and.i, %16
  br i1 %cmp8121.i, label %while.body.i.for.body.i_crit_edge, label %while.body.i.for.end.i_crit_edge

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

while.body.i.for.body.i_crit_edge:                ; preds = %while.body.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.body.i.for.body.i_crit_edge
  %num_empty.1124.i = phi i32 [ %num_empty.2.i, %for.inc.i.for.body.i_crit_edge ], [ %num_empty.0128.i, %while.body.i.for.body.i_crit_edge ]
  %dentry.2123.i = phi i32 [ %inc50.i, %for.inc.i.for.body.i_crit_edge ], [ %dentry.1127.i, %while.body.i.for.body.i_crit_edge ]
  %i.0122.i = phi i32 [ %inc49.i, %for.inc.i.for.body.i_crit_edge ], [ %and.i, %while.body.i.for.body.i_crit_edge ]
  %call9.i = call ptr @exfat_get_dentry(ptr noundef %3, ptr noundef nonnull %clu.i, i32 noundef %i.0122.i, ptr noundef nonnull %bh.i) #9
  %tobool.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i, label %for.body.i.exfat_search_empty_slot.exit.thread_crit_edge, label %if.end11.i

for.body.i.exfat_search_empty_slot.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_search_empty_slot.exit.thread

if.end11.i:                                       ; preds = %for.body.i
  %call12.i = call i32 @exfat_get_entry_type(ptr noundef nonnull %call9.i) #9
  %24 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end11.i.brelse.exit.i_crit_edge, label %if.then.i.i

if.end11.i.brelse.exit.i_crit_edge:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %25) #9
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.end11.i.brelse.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp eq i32 %call12.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12.i)
  %switch.i = icmp ult i32 %call12.i, 2
  br i1 %switch.i, label %if.then15.i, label %if.else30.i

if.then15.i:                                      ; preds = %brelse.exit.i
  %inc.i = add i32 %num_empty.1124.i, 1
  %26 = ptrtoint ptr %hint_femp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hint_femp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp17.i = icmp eq i32 %27, -1
  br i1 %cmp17.i, label %if.then18.i, label %if.then15.i.if.end23.i_crit_edge

if.then15.i.if.end23.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then18.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %hint_femp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %dentry.2123.i, ptr %hint_femp, align 4
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %count.i, align 4
  %30 = ptrtoint ptr %clu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clu.i, align 4
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i, align 4
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags.i, align 4
  call void @exfat_chain_set(ptr noundef %cur.i, i32 noundef %31, i32 noundef %33, i8 noundef zeroext %35) #9
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then18.i, %if.then15.i.if.end23.i_crit_edge
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.end23.i.if.end42.i_crit_edge

if.end23.i.if.end42.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.lhs.true.i:                                  ; preds = %if.end23.i
  %36 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %37)
  %cmp26.not.i = icmp eq i32 %37, -2
  br i1 %cmp26.not.i, label %land.lhs.true.i.if.end42.i_crit_edge, label %if.then27.i

land.lhs.true.i.if.end42.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -2, ptr %count.i, align 4
  br label %if.end42.i

if.else30.i:                                      ; preds = %brelse.exit.i
  %39 = ptrtoint ptr %hint_femp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hint_femp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp32.not.i = icmp eq i32 %40, -1
  br i1 %cmp32.not.i, label %if.else30.i.if.end40.i_crit_edge, label %land.lhs.true33.i

if.else30.i.if.end40.i_crit_edge:                 ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

land.lhs.true33.i:                                ; preds = %if.else30.i
  %41 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %42)
  %cmp35.i = icmp eq i32 %42, -2
  br i1 %cmp35.i, label %if.then36.i, label %land.lhs.true33.i.if.end40.i_crit_edge

land.lhs.true33.i.if.end40.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then36.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %p_dir to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %p_dir, align 4
  %45 = ptrtoint ptr %clu.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clu.i, align 4
  call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %dentry.2123.i, i32 noundef %40, i32 noundef %44, i32 noundef %46) #12
  br label %exfat_search_empty_slot.exit.thread

if.end40.i:                                       ; preds = %land.lhs.true33.i.if.end40.i_crit_edge, %if.else30.i.if.end40.i_crit_edge
  %47 = ptrtoint ptr %hint_femp to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %hint_femp, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end40.i, %if.then27.i, %land.lhs.true.i.if.end42.i_crit_edge, %if.end23.i.if.end42.i_crit_edge
  %num_empty.2.i = phi i32 [ %inc.i, %if.then27.i ], [ %inc.i, %land.lhs.true.i.if.end42.i_crit_edge ], [ %inc.i, %if.end23.i.if.end42.i_crit_edge ], [ 0, %if.end40.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num_empty.2.i, i32 %num_entries)
  %cmp43.not.i = icmp slt i32 %num_empty.2.i, %num_entries
  br i1 %cmp43.not.i, label %for.inc.i, label %if.then44.i

if.then44.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %hint_femp to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %hint_femp, align 4
  %sub47.i = add i32 %sub46.neg.i, %dentry.2123.i
  br label %exfat_search_empty_slot.exit

for.inc.i:                                        ; preds = %if.end42.i
  %inc49.i = add i32 %i.0122.i, 1
  %inc50.i = add i32 %dentry.2123.i, 1
  %exitcond.not.i = icmp eq i32 %inc49.i, %16
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %dentry.2.lcssa.i = phi i32 [ %dentry.1127.i, %while.body.i.for.end.i_crit_edge ], [ %inc50.i, %for.inc.i.for.end.i_crit_edge ]
  %num_empty.1.lcssa.i = phi i32 [ %num_empty.0128.i, %while.body.i.for.end.i_crit_edge ], [ %num_empty.2.i, %for.inc.i.for.end.i_crit_edge ]
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %50)
  %cmp52.i = icmp eq i8 %50, 3
  br i1 %cmp52.i, label %if.then54.i, label %if.else64.i

if.then54.i:                                      ; preds = %for.end.i
  %51 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size.i, align 4
  %dec.i = add i32 %52, -1
  store i32 %dec.i, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp56.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp56.not.i, label %if.then54.i.exfat_search_empty_slot.exit_crit_edge, label %if.then58.i

if.then54.i.exfat_search_empty_slot.exit_crit_edge: ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_search_empty_slot.exit

if.then58.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %clu.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %clu.i, align 4
  %inc60.i = add i32 %54, 1
  store i32 %inc60.i, ptr %clu.i, align 4
  br label %if.end71.i

if.else64.i:                                      ; preds = %for.end.i
  %55 = ptrtoint ptr %clu.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %clu.i, align 4
  %call67.i = call i32 @exfat_ent_get(ptr noundef %3, i32 noundef %56, ptr noundef nonnull %clu.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end71thread-pre-split.i, label %if.else64.i.exfat_search_empty_slot.exit.thread_crit_edge

if.else64.i.exfat_search_empty_slot.exit.thread_crit_edge: ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_search_empty_slot.exit.thread

if.end71thread-pre-split.i:                       ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %clu.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr.i = load i32, ptr %clu.i, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end71thread-pre-split.i, %if.then58.i
  %58 = phi i32 [ %.pr.i, %if.end71thread-pre-split.i ], [ %inc60.i, %if.then58.i ]
  %cmp7.not.i = icmp eq i32 %58, -1
  br i1 %cmp7.not.i, label %if.end71.i.exfat_search_empty_slot.exit_crit_edge, label %if.end71.i.while.body.i_crit_edge

if.end71.i.while.body.i_crit_edge:                ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end71.i.exfat_search_empty_slot.exit_crit_edge: ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exfat_search_empty_slot.exit

exfat_search_empty_slot.exit.thread:              ; preds = %if.else64.i.exfat_search_empty_slot.exit.thread_crit_edge, %if.then36.i, %for.body.i.exfat_search_empty_slot.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clu.i) #9
  br label %cleanup117

exfat_search_empty_slot.exit:                     ; preds = %if.end71.i.exfat_search_empty_slot.exit_crit_edge, %if.then54.i.exfat_search_empty_slot.exit_crit_edge, %if.then44.i, %if.end6.i.exfat_search_empty_slot.exit_crit_edge, %if.then4.i
  %retval.0.i = phi i32 [ %18, %if.then4.i ], [ %sub47.i, %if.then44.i ], [ -28, %if.end6.i.exfat_search_empty_slot.exit_crit_edge ], [ -28, %if.end71.i.exfat_search_empty_slot.exit_crit_edge ], [ -28, %if.then54.i.exfat_search_empty_slot.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clu.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp8 = icmp sgt i32 %retval.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %retval.0.i)
  %cmp9 = icmp eq i32 %retval.0.i, -5
  %or.cond = or i1 %cmp8, %cmp9
  br i1 %or.cond, label %exfat_search_empty_slot.exit.cleanup117_crit_edge, label %if.end11

exfat_search_empty_slot.exit.cleanup117_crit_edge: ; preds = %exfat_search_empty_slot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

if.end11:                                         ; preds = %exfat_search_empty_slot.exit
  %call.i = call fastcc i64 @i_size_read(ptr noundef %inode) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %call.i)
  %cmp.i = icmp slt i64 %call.i, 268435456
  br i1 %cmp.i, label %if.end14, label %if.end11.cleanup117_crit_edge

if.end11.cleanup117_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

if.end14:                                         ; preds = %if.end11
  %call15 = call i32 @exfat_find_last_cluster(ptr noundef %3, ptr noundef %p_dir, ptr noundef nonnull %last_clu) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup117_crit_edge

if.end14.cleanup117_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

if.end18:                                         ; preds = %if.end14
  %59 = ptrtoint ptr %last_clu to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %last_clu, align 4
  %add = add i32 %60, 1
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %flags, align 4
  call void @exfat_chain_set(ptr noundef nonnull %clu, i32 noundef %add, i32 noundef 0, i8 noundef zeroext %62) #9
  %63 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_flags, align 4
  %and = and i32 %66, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %lor.rhs, label %if.end18.lor.end_crit_edge

if.end18.lor.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_flags, align 4
  %and21 = and i32 %68, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22 = icmp ne i32 %and21, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end18.lor.end_crit_edge
  %69 = phi i1 [ true, %if.end18.lor.end_crit_edge ], [ %tobool22, %lor.rhs ]
  %call23 = call i32 @exfat_alloc_cluster(ptr noundef %inode, i32 noundef 1, ptr noundef nonnull %clu, i1 noundef zeroext %69) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %lor.end.cleanup117_crit_edge

lor.end.cleanup117_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

if.end26:                                         ; preds = %lor.end
  %70 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %clu, align 4
  %call27 = call i32 @exfat_zeroed_cluster(ptr noundef %inode, i32 noundef %71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup117_crit_edge

if.end26.cleanup117_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

if.end30:                                         ; preds = %if.end26
  %72 = ptrtoint ptr %flags31 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %flags31, align 4
  %74 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %75)
  %cmp34.not = icmp eq i8 %73, %75
  br i1 %cmp34.not, label %if.end30.if.end42_crit_edge, label %if.then36

if.end30.if.end42_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %p_dir to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %p_dir, align 4
  %78 = ptrtoint ptr %size38 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %size38, align 4
  %call39 = call i32 @exfat_chain_cont_cluster(ptr noundef %3, i32 noundef %77, i32 noundef %79) #9
  %80 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %flags, align 4
  %81 = ptrtoint ptr %flags41 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %flags41, align 4
  %82 = ptrtoint ptr %flags31 to i32
  call void @__asan_load1_noabort(i32 %82)
  %.pr = load i8, ptr %flags31, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.end30.if.end42_crit_edge
  %83 = phi i8 [ %.pr, %if.then36 ], [ %73, %if.end30.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %83)
  %cmp45 = icmp eq i8 %83, 1
  br i1 %cmp45, label %if.then47, label %if.end42.if.end53_crit_edge

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then47:                                        ; preds = %if.end42
  %84 = ptrtoint ptr %last_clu to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %last_clu, align 4
  %86 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %clu, align 4
  %call49 = call i32 @exfat_ent_set(ptr noundef %3, i32 noundef %85, i32 noundef %87) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then47.if.end53_crit_edge, label %if.then47.cleanup117_crit_edge

if.then47.cleanup117_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

if.then47.if.end53_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end53:                                         ; preds = %if.then47.if.end53_crit_edge, %if.end42.if.end53_crit_edge
  %88 = ptrtoint ptr %hint_femp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %hint_femp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %cmp55 = icmp eq i32 %89, -1
  br i1 %cmp55, label %if.then57, label %if.end53.if.end63_crit_edge

if.end53.if.end63_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %size38 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %size38, align 4
  %92 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cluster_size_bits, align 8
  %sub = add i32 %93, -5
  %shl = shl i32 %91, %sub
  %94 = ptrtoint ptr %hint_femp to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %shl, ptr %hint_femp, align 4
  %95 = ptrtoint ptr %dentries_per_clu to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dentries_per_clu, align 8
  %97 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %count.i, align 4
  %98 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %clu, align 4
  %100 = ptrtoint ptr %flags31 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %flags31, align 4
  call void @exfat_chain_set(ptr noundef %cur.i, i32 noundef %99, i32 noundef 0, i8 noundef zeroext %101) #9
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %if.end53.if.end63_crit_edge
  %102 = ptrtoint ptr %size65 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %size65, align 4
  %inc = add i32 %103, 1
  store i32 %inc, ptr %size65, align 4
  %104 = ptrtoint ptr %size38 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %size38, align 4
  %inc67 = add i32 %105, 1
  store i32 %inc67, ptr %size38, align 4
  %106 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cluster_size_bits, align 8
  %shl70 = shl i32 %inc67, %107
  %conv71 = zext i32 %shl70 to i64
  %108 = ptrtoint ptr %p_dir to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %p_dir, align 4
  %110 = ptrtoint ptr %root_dir to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %root_dir, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp73.not = icmp eq i32 %109, %111
  br i1 %cmp73.not, label %if.end63.if.end106_crit_edge, label %if.then75

if.end63.if.end106_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.then75:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #9
  %112 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !42
  %113 = ptrtoint ptr %entry77 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %entry77, align 4
  %add78 = add i32 %114, 1
  %call79 = call ptr @exfat_get_dentry(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %add78, ptr noundef nonnull %bh) #9
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %cleanup117.critedge, label %if.end82

if.end82:                                         ; preds = %if.then75
  %115 = call i64 @llvm.bswap.i64(i64 %conv71)
  %dentry83 = getelementptr inbounds %struct.exfat_dentry, ptr %call79, i32 0, i32 1
  %valid_size = getelementptr inbounds %struct.exfat_dentry, ptr %call79, i32 0, i32 1, i32 0, i32 4
  %116 = ptrtoint ptr %valid_size to i32
  call void @__asan_storeN_noabort(i32 %116, i32 8)
  store i64 %115, ptr %valid_size, align 1
  %size87 = getelementptr inbounds %struct.exfat_dentry, ptr %call79, i32 0, i32 1, i32 0, i32 14
  %117 = ptrtoint ptr %size87 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 8)
  store i64 %115, ptr %size87, align 1
  %118 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %flags, align 4
  %120 = ptrtoint ptr %dentry83 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %dentry83, align 1
  %121 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bh, align 4
  %123 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %i_sb, align 4
  %s_flags92 = getelementptr inbounds %struct.super_block, ptr %124, i32 0, i32 10
  %125 = ptrtoint ptr %s_flags92 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %s_flags92, align 4
  %and93 = and i32 %126, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %lor.rhs95, label %if.end82.lor.end99_crit_edge

if.end82.lor.end99_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end99

lor.rhs95:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %i_flags, align 4
  %and97 = and i32 %128, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98 = icmp ne i32 %and97, 0
  br label %lor.end99

lor.end99:                                        ; preds = %lor.rhs95, %if.end82.lor.end99_crit_edge
  %129 = phi i1 [ true, %if.end82.lor.end99_crit_edge ], [ %tobool98, %lor.rhs95 ]
  %lor.ext = zext i1 %129 to i32
  call void @exfat_update_bh(ptr noundef %122, i32 noundef %lor.ext) #9
  %130 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bh, align 4
  %tobool.not.i177 = icmp eq ptr %131, null
  br i1 %tobool.not.i177, label %lor.end99.brelse.exit_crit_edge, label %if.then.i178

lor.end99.brelse.exit_crit_edge:                  ; preds = %lor.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i178:                                     ; preds = %lor.end99
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %131) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i178, %lor.end99.brelse.exit_crit_edge
  %132 = ptrtoint ptr %entry77 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %entry77, align 4
  %call102 = call i32 @exfat_update_dir_chksum(ptr noundef %inode, ptr noundef %add.ptr.i, i32 noundef %133) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #9
  br i1 %tobool103.not, label %brelse.exit.if.end106_crit_edge, label %brelse.exit.cleanup117_crit_edge

brelse.exit.cleanup117_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup117

brelse.exit.if.end106_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

if.end106:                                        ; preds = %brelse.exit.if.end106_crit_edge, %if.end63.if.end106_crit_edge
  call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %conv71)
  %134 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cluster_size, align 4
  %conv107 = zext i32 %135 to i64
  %136 = ptrtoint ptr %i_size_ondisk to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %i_size_ondisk, align 8
  %add108 = add i64 %137, %conv107
  store i64 %add108, ptr %i_size_ondisk, align 8
  %138 = load i32, ptr %cluster_size, align 4
  %conv110 = zext i32 %138 to i64
  %139 = ptrtoint ptr %i_size_aligned to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %i_size_aligned, align 8
  %add111 = add i64 %140, %conv110
  store i64 %add111, ptr %i_size_aligned, align 8
  %141 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %flags, align 4
  %143 = ptrtoint ptr %flags113 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %flags113, align 4
  %144 = ptrtoint ptr %sect_per_clus_bits to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sect_per_clus_bits, align 8
  %shl114 = shl nuw i32 1, %145
  %conv115 = sext i32 %shl114 to i64
  %146 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %i_blocks, align 8
  %add116 = add i64 %147, %conv115
  store i64 %add116, ptr %i_blocks, align 8
  br label %while.cond

cleanup117.critedge:                              ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #9
  br label %cleanup117

cleanup117:                                       ; preds = %cleanup117.critedge, %brelse.exit.cleanup117_crit_edge, %if.then47.cleanup117_crit_edge, %if.end26.cleanup117_crit_edge, %lor.end.cleanup117_crit_edge, %if.end14.cleanup117_crit_edge, %if.end11.cleanup117_crit_edge, %exfat_search_empty_slot.exit.cleanup117_crit_edge, %exfat_search_empty_slot.exit.thread
  %retval.3 = phi i32 [ -5, %cleanup117.critedge ], [ -5, %exfat_search_empty_slot.exit.thread ], [ %retval.0.i, %exfat_search_empty_slot.exit.cleanup117_crit_edge ], [ -5, %if.then47.cleanup117_crit_edge ], [ -5, %if.end26.cleanup117_crit_edge ], [ %call23, %lor.end.cleanup117_crit_edge ], [ -5, %if.end14.cleanup117_crit_edge ], [ -28, %if.end11.cleanup117_crit_edge ], [ -5, %brelse.exit.cleanup117_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hint_femp) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clu) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_clu) #9
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_alloc_new_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_init_dir_entry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_init_ext_entry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_find_last_cluster(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_alloc_cluster(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_zeroed_cluster(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_chain_cont_cluster(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_ent_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exfat_get_dentry(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_update_bh(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_update_dir_chksum(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %9 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  %18 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !58
  %37 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !43

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !59
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #9
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #9
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %48 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_chain_dup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_ent_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_count_ext_entries(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_remove_entries(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_unhash_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exfat_check_dir_empty(ptr noundef %sb, ptr noundef %p_dir) unnamed_addr #0 align 64 {
entry:
  %clu = alloca %struct.exfat_chain, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %clu) #9
  %0 = call ptr @memset(ptr %clu, i32 255, i32 12)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #9
  %3 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !42
  %dentries_per_clu1 = getelementptr inbounds %struct.exfat_sb_info, ptr %2, i32 0, i32 11
  %4 = ptrtoint ptr %dentries_per_clu1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dentries_per_clu1, align 8
  call void @exfat_chain_dup(ptr noundef nonnull %clu, ptr noundef %p_dir) #9
  %6 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.not47 = icmp eq i32 %7, -1
  br i1 %cmp.not47, label %entry.cleanup_crit_edge, label %for.cond.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.lr.ph:                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp245 = icmp sgt i32 %5, 0
  %flags = getelementptr inbounds %struct.exfat_chain, ptr %clu, i32 0, i32 2
  %size = getelementptr inbounds %struct.exfat_chain, ptr %clu, i32 0, i32 1
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end29.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  br i1 %cmp245, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.046 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call3 = call ptr @exfat_get_dentry(ptr noundef %sb, ptr noundef nonnull %clu, i32 noundef %i.046, ptr noundef nonnull %bh) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.body.cleanup.loopexit_crit_edge, label %if.end

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.loopexit

if.end:                                           ; preds = %for.body
  %call4 = call i32 @exfat_get_entry_type(ptr noundef nonnull %call3) #9
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.brelse.exit_crit_edge, label %if.then.i

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__brelse(ptr noundef nonnull %9) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end.brelse.exit_crit_edge
  %10 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %call4, label %for.inc [
    i32 0, label %brelse.exit.cleanup.loopexit_crit_edge
    i32 287, label %brelse.exit.cleanup_crit_edge
    i32 260, label %brelse.exit.cleanup_crit_edge60
  ]

brelse.exit.cleanup_crit_edge60:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

brelse.exit.cleanup.loopexit_crit_edge:           ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.loopexit

for.inc:                                          ; preds = %brelse.exit
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp12 = icmp eq i8 %12, 3
  br i1 %cmp12, label %if.then14, label %if.else22

if.then14:                                        ; preds = %for.end
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp15.not = icmp eq i32 %dec, 0
  br i1 %cmp15.not, label %if.then14.cleanup_crit_edge, label %if.then17

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clu, align 4
  %inc19 = add i32 %16, 1
  store i32 %inc19, ptr %clu, align 4
  br label %if.end29

if.else22:                                        ; preds = %for.end
  %17 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clu, align 4
  %call25 = call i32 @exfat_ent_get(ptr noundef %sb, i32 noundef %18, ptr noundef nonnull %clu) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end29thread-pre-split, label %if.else22.cleanup_crit_edge

if.else22.cleanup_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29thread-pre-split:                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %clu, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29thread-pre-split, %if.then17
  %20 = phi i32 [ %.pr, %if.end29thread-pre-split ], [ %inc19, %if.then17 ]
  %cmp.not = icmp eq i32 %20, -1
  br i1 %cmp.not, label %if.end29.cleanup_crit_edge, label %if.end29.for.cond.preheader_crit_edge

if.end29.for.cond.preheader_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.loopexit:                                 ; preds = %brelse.exit.cleanup.loopexit_crit_edge, %for.body.cleanup.loopexit_crit_edge
  %retval.0.ph = phi i32 [ %call4, %brelse.exit.cleanup.loopexit_crit_edge ], [ -5, %for.body.cleanup.loopexit_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end29.cleanup_crit_edge, %if.else22.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %brelse.exit.cleanup_crit_edge, %brelse.exit.cleanup_crit_edge60, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.loopexit ], [ -39, %brelse.exit.cleanup_crit_edge ], [ -39, %brelse.exit.cleanup_crit_edge60 ], [ 0, %if.then14.cleanup_crit_edge ], [ -5, %if.else22.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %clu) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_hash_inode(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_free_cluster(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !21, !23, !25, !27, !28, !30}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @exfat_dentry_ops, !1, !"exfat_dentry_ops", i1 false, i1 false}
!1 = !{!"../fs/exfat/namei.c", i32 129, i32 32}
!2 = !{ptr @exfat_utf8_dentry_ops, !3, !"exfat_utf8_dentry_ops", i1 false, i1 false}
!3 = !{!"../fs/exfat/namei.c", i32 191, i32 32}
!4 = !{ptr @exfat_dir_inode_operations, !5, !"exfat_dir_inode_operations", i1 false, i1 false}
!5 = !{!"../fs/exfat/namei.c", i32 1397, i32 31}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/exfat/namei.c", i32 740, i32 4}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/exfat/namei.c", i32 742, i32 4}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/exfat/namei.c", i32 673, i32 3}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/exfat/namei.c", i32 257, i32 6}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/exfat/namei.c", i32 787, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/exfat/namei.c", i32 952, i32 4}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/exfat/namei.c", i32 975, i32 3}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/exfat/namei.c", i32 1385, i32 4}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/exfat/namei.c", i32 1200, i32 3}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/exfat/namei.c", i32 1222, i32 4}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2152587737}
!45 = !{i64 2152586484}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 1103896, i64 1103957}
!48 = !{i64 1106628}
!49 = !{i64 1106913}
!50 = !{i64 2152542047}
!51 = !{i64 2152541889}
!52 = !{i64 2152542217}
!53 = !{i64 2150128031}
!54 = !{i64 2152543978}
!55 = !{i64 2150020283}
!56 = !{i64 2150025217}
!57 = !{i64 2150046935}
!58 = !{i64 2150051829}
!59 = !{i64 2150128356}
!60 = !{i64 2150128681}
!61 = !{i64 2152555840}
