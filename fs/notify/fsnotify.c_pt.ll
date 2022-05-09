; ModuleID = '/llk/IR_all_yes/fs/notify/fsnotify.c_pt.bc'
source_filename = "../fs/notify/fsnotify.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__fsnotify_inode_delete\22, \22a\22\09"
module asm "\09.weak\09__crc___fsnotify_inode_delete\09\09\09\09"
module asm "\09.long\09__crc___fsnotify_inode_delete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fsnotify_inode_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22__fsnotify_inode_delete\22\09\09\09\09\09"
module asm "__kstrtabns___fsnotify_inode_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__fsnotify_parent\22, \22a\22\09"
module asm "\09.weak\09__crc___fsnotify_parent\09\09\09\09"
module asm "\09.long\09__crc___fsnotify_parent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fsnotify_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22__fsnotify_parent\22\09\09\09\09\09"
module asm "__kstrtabns___fsnotify_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fsnotify\22, \22a\22\09"
module asm "\09.weak\09__crc_fsnotify\09\09\09\09"
module asm "\09.long\09__crc_fsnotify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsnotify:\09\09\09\09\09"
module asm "\09.asciz \09\22fsnotify\22\09\09\09\09\09"
module asm "__kstrtabns_fsnotify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.75 = type { ptr }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.name_snapshot = type { %struct.qstr, [36 x i8] }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.76, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.77, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.76 = type { %struct.callback_head }
%union.anon.77 = type { %struct.hlist_node }
%struct.path = type { ptr, ptr }
%struct.fs_error_report = type { i32, ptr, ptr }
%struct.fsnotify_iter_info = type { [5 x ptr], i32, i32 }
%struct.fsnotify_mark = type { i32, %struct.refcount_struct, ptr, %struct.list_head, %struct.spinlock, %struct.hlist_node, ptr, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fsnotify_mark_connector = type { %struct.spinlock, i16, i16, %struct.__kernel_fsid_t, %union.anon.69, %struct.hlist_head }
%struct.__kernel_fsid_t = type { [2 x i32] }
%union.anon.69 = type { ptr }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab___fsnotify_inode_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns___fsnotify_inode_delete = external dso_local constant [0 x i8], align 1
@__ksymtab___fsnotify_inode_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fsnotify_inode_delete to i32), ptr @__kstrtab___fsnotify_inode_delete, ptr @__kstrtabns___fsnotify_inode_delete }, section "___ksymtab_gpl+__fsnotify_inode_delete", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/notify/fsnotify.c\00", [43 x i8] zeroinitializer }, align 32
@__fsnotify_parent.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___fsnotify_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns___fsnotify_parent = external dso_local constant [0 x i8], align 1
@__ksymtab___fsnotify_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fsnotify_parent to i32), ptr @__kstrtab___fsnotify_parent, ptr @__kstrtabns___fsnotify_parent }, section "___ksymtab_gpl+__fsnotify_parent", align 4
@fsnotify_mark_srcu = external dso_local global %struct.srcu_struct, align 4
@__kstrtab_fsnotify = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsnotify = external dso_local constant [0 x i8], align 1
@__ksymtab_fsnotify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsnotify to i32), ptr @__kstrtab_fsnotify, ptr @__kstrtabns_fsnotify }, section "___ksymtab_gpl+fsnotify", align 4
@__initcall__kmod_fsnotify__239_595_fsnotify_init1 = internal global ptr @fsnotify_init, section ".initcall1.init", align 4
@fsnotify_first_mark.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@fsnotify_first_mark.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@send_to_group.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsnotify\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"send_to_group\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"%s: group=%p mask=%x marks_mask=%x marks_ignored_mask=%x data=%p data_type=%d dir=%p cookie=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@fsnotify_handle_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fsnotify_handle_event.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@fsnotify_handle_inode_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@fsnotify_handle_inode_event.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@fsnotify_next_mark.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@fsnotify_init.__srcu_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&fsnotify_mark_srcu\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"initializing fsnotify_mark_srcu\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsnotify_mark_connector\00", [40 x i8] zeroinitializer }, align 32
@fsnotify_mark_connector_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 97, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 388, i32 9 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 367, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 189, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"__srcu_key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 586, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 588, i32 9 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [24 x i8] c"../fs/notify/fsnotify.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 590, i32 35 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__initcall__kmod_fsnotify__239_595_fsnotify_init1, ptr @__ksymtab___fsnotify_inode_delete, ptr @__ksymtab___fsnotify_parent, ptr @__ksymtab_fsnotify, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @fsnotify_init.__srcu_key, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsnotify_init.__srcu_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__fsnotify_inode_delete(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_fsnotify_marks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 51
  tail call void @fsnotify_destroy_marks(ptr noundef %i_fsnotify_marks.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__fsnotify_vfsmount_delete(ptr noundef %mnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mnt_fsnotify_marks.i = getelementptr i8, ptr %mnt, i32 124
  tail call void @fsnotify_destroy_marks(ptr noundef %mnt_fsnotify_marks.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsnotify_sb_delete(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_inode_list_lock.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 61
  tail call void @_raw_spin_lock(ptr noundef %s_inode_list_lock.i) #6
  %s_inodes.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 62
  %0 = ptrtoint ptr %s_inodes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn43.i = load ptr, ptr %s_inodes.i, align 4
  %cmp.not45.i = icmp eq ptr %.pn43.i, %s_inodes.i
  br i1 %cmp.not45.i, label %for.end.thread.i, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.end.thread.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock.i) #6
  br label %fsnotify_unmount_inodes.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn47.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn43.i, %entry.for.body.i_crit_edge ]
  %iput_inode.046.i = phi ptr [ %iput_inode.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %entry.for.body.i_crit_edge ]
  %inode.048.i = getelementptr i8, ptr %.pn47.i, i32 -344
  %i_lock.i = getelementptr i8, ptr %.pn47.i, i32 -232
  tail call void @_raw_spin_lock(ptr noundef %i_lock.i) #6
  %i_state.i = getelementptr i8, ptr %.pn47.i, i32 -144
  %1 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_state.i, align 8
  %and.i = and i32 %2, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #6
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %i_count.i = getelementptr i8, ptr %.pn47.i, i32 40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_count.i, i32 noundef 4) #6
  %3 = ptrtoint ptr %i_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %i_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not.i = icmp eq i32 %4, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #6
  br label %for.inc.i

if.end6.i:                                        ; preds = %if.end.i
  tail call void @__iget(ptr noundef %inode.048.i) #6
  tail call void @_raw_spin_unlock(ptr noundef %i_lock.i) #6
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock.i) #6
  %tobool9.not.i = icmp eq ptr %iput_inode.046.i, null
  br i1 %tobool9.not.i, label %if.end6.i.if.end11.i_crit_edge, label %if.then10.i

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iput(ptr noundef nonnull %iput_inode.046.i) #6
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end6.i.if.end11.i_crit_edge
  %i_sb.i.i = getelementptr i8, ptr %.pn47.i, i32 -316
  %5 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i.i, align 4
  %s_fsnotify_connectors.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 48
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i, i32 noundef 4) #6
  %7 = ptrtoint ptr %s_fsnotify_connectors.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %s_fsnotify_connectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i, label %if.end11.i.fsnotify_inode.exit.i_crit_edge, label %if.end.i.i

if.end11.i.fsnotify_inode.exit.i_crit_edge:       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_inode.exit.i

if.end.i.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %inode.048.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %inode.048.i, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp1.i.i = icmp eq i16 %11, 16384
  %spec.select.i.i = select i1 %cmp1.i.i, i32 1073750016, i32 8192
  %call5.i.i = tail call i32 @fsnotify(i32 noundef %spec.select.i.i, ptr noundef %inode.048.i, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %inode.048.i, i32 noundef 0) #6
  br label %fsnotify_inode.exit.i

fsnotify_inode.exit.i:                            ; preds = %if.end.i.i, %if.end11.i.fsnotify_inode.exit.i_crit_edge
  %i_fsnotify_marks.i.i.i.i = getelementptr i8, ptr %.pn47.i, i32 424
  tail call void @fsnotify_destroy_marks(ptr noundef %i_fsnotify_marks.i.i.i.i) #6
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 0) #6
  %call.i.i22 = tail call i32 @__cond_resched() #6
  tail call void @_raw_spin_lock(ptr noundef %s_inode_list_lock.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %fsnotify_inode.exit.i, %if.then4.i, %if.then.i
  %iput_inode.1.i = phi ptr [ %iput_inode.046.i, %if.then.i ], [ %inode.048.i, %fsnotify_inode.exit.i ], [ %iput_inode.046.i, %if.then4.i ]
  %12 = ptrtoint ptr %.pn47.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn47.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %s_inodes.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  tail call void @_raw_spin_unlock(ptr noundef %s_inode_list_lock.i) #6
  %tobool21.not.i = icmp eq ptr %iput_inode.1.i, null
  br i1 %tobool21.not.i, label %for.end.i.fsnotify_unmount_inodes.exit_crit_edge, label %if.then22.i

for.end.i.fsnotify_unmount_inodes.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_unmount_inodes.exit

if.then22.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iput(ptr noundef nonnull %iput_inode.1.i) #6
  br label %fsnotify_unmount_inodes.exit

fsnotify_unmount_inodes.exit:                     ; preds = %if.then22.i, %for.end.i.fsnotify_unmount_inodes.exit_crit_edge, %for.end.thread.i
  %s_fsnotify_marks.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 38
  tail call void @fsnotify_destroy_marks(ptr noundef %s_fsnotify_marks.i) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 98) #6
  %s_fsnotify_connectors = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 48
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors, i32 noundef 4) #6
  %13 = ptrtoint ptr %s_fsnotify_connectors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %s_fsnotify_connectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %fsnotify_unmount_inodes.exit.do.end14_crit_edge, label %if.end

fsnotify_unmount_inodes.exit.do.end14_crit_edge:  ; preds = %fsnotify_unmount_inodes.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

if.end:                                           ; preds = %fsnotify_unmount_inodes.exit
  %call5 = tail call ptr @__var_waitqueue(ptr noundef %s_fsnotify_connectors) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #6
  %15 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %16 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %s_fsnotify_connectors, i32 noundef 0) #6
  %call725 = call i32 @prepare_to_wait_event(ptr noundef %call5, ptr noundef %15, i32 noundef 2) #6
  %call.i.i2126 = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors, i32 noundef 4) #6
  %17 = ptrtoint ptr %s_fsnotify_connectors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %s_fsnotify_connectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not27 = icmp eq i32 %18, 0
  br i1 %tobool10.not27, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #6
  %call7 = call i32 @prepare_to_wait_event(ptr noundef %call5, ptr noundef %15, i32 noundef 2) #6
  %call.i.i21 = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors, i32 noundef 4) #6
  %19 = ptrtoint ptr %s_fsnotify_connectors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %s_fsnotify_connectors, align 4
  %tobool10.not = icmp eq i32 %20, 0
  br i1 %tobool10.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %call5, ptr noundef %15) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #6
  br label %do.end14

do.end14:                                         ; preds = %for.end, %fsnotify_unmount_inodes.exit.do.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__fsnotify_update_child_dentry_flags(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %2)
  %cmp = icmp eq i16 %2, 16384
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_fsnotify_mask.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 50
  %3 = ptrtoint ptr %i_fsnotify_mask.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_fsnotify_mask.i, align 4
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #6
  %5 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 37
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -200
  %tobool3.not7476 = icmp eq ptr %add.ptr, null
  %tobool3.not74 = or i1 %tobool.not, %tobool3.not7476
  br i1 %tobool3.not74, label %if.end.for.end44_crit_edge, label %for.body.lr.ph

if.end.for.end44_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end44

for.body.lr.ph:                                   ; preds = %if.end
  %and2.i = and i32 %4, 462911
  %and.i = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool18.not68 = icmp eq i32 %and2.i, 0
  %tobool18.not = or i1 %tobool.not.i, %tobool18.not68
  %masksel = select i1 %tobool18.not, i32 0, i32 16384
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %alias.075 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr40, %for.end.for.body_crit_edge ]
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %alias.075, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #6
  %d_subdirs = getelementptr inbounds %struct.dentry, ptr %alias.075, i32 0, i32 14
  %8 = ptrtoint ptr %d_subdirs to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn69 = load ptr, ptr %d_subdirs, align 8
  %cmp9.not71 = icmp eq ptr %.pn69, %d_subdirs
  br i1 %cmp9.not71, label %for.body.for.end_crit_edge, label %for.body.for.body11_crit_edge

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %.pn72 = phi ptr [ %.pn, %for.inc.for.body11_crit_edge ], [ %.pn69, %for.body.for.body11_crit_edge ]
  %d_inode = getelementptr i8, ptr %.pn72, i32 -112
  %9 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode, align 8
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %for.body11.for.inc_crit_edge, label %do.body

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body:                                          ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #8
  %child.073 = getelementptr i8, ptr %.pn72, i32 -184
  %d_lockref15 = getelementptr i8, ptr %.pn72, i32 -72
  tail call void @_raw_spin_lock_nested(ptr noundef %d_lockref15, i32 noundef 1) #6
  %11 = ptrtoint ptr %child.073 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %child.073, align 8
  %and21 = and i32 %12, -16385
  %storemerge = or i32 %and21, %masksel
  store i32 %storemerge, ptr %child.073, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref15) #6
  br label %for.inc

for.inc:                                          ; preds = %do.body, %for.body11.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn72 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn72, align 8
  %cmp9.not = icmp eq ptr %.pn, %d_subdirs
  br i1 %cmp9.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #6
  %d_u = getelementptr inbounds %struct.dentry, ptr %alias.075, i32 0, i32 15
  %14 = ptrtoint ptr %d_u to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_u, align 8
  %tobool36.not = icmp eq ptr %15, null
  %add.ptr40 = getelementptr i8, ptr %15, i32 -200
  %tobool3.not77 = icmp eq ptr %add.ptr40, null
  %tobool3.not = or i1 %tobool36.not, %tobool3.not77
  br i1 %tobool3.not, label %for.end.for.end44_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.for.end44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end44

for.end44:                                        ; preds = %for.end.for.end44_crit_edge, %if.end.for.end44_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__fsnotify_parent(ptr noundef %dentry, i32 noundef %mask, ptr noundef %data, i32 noundef %data_type) #0 align 64 {
entry:
  %name = alloca %struct.name_snapshot, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_type)
  %cond.i = icmp ne i32 %data_type, 1
  %tobool.not150 = icmp eq ptr %data, null
  %tobool.not = or i1 %tobool.not150, %cond.i
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr.i, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dentry, align 8
  %and = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %name) #6
  %6 = call ptr @memset(ptr %name, i32 255, i32 56)
  %i_fsnotify_marks = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 51
  %7 = ptrtoint ptr %i_fsnotify_marks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_fsnotify_marks, align 8
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %land.lhs.true, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fsnotify_marks = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 38
  %11 = ptrtoint ptr %s_fsnotify_marks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fsnotify_marks, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %tobool8.not = icmp eq ptr %cond, null
  br i1 %tobool8.not, label %land.lhs.true10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true7
  %mnt_fsnotify_marks = getelementptr inbounds %struct.mount, ptr %cond, i32 0, i32 20
  %13 = ptrtoint ptr %mnt_fsnotify_marks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mnt_fsnotify_marks, align 4
  %tobool9.not = icmp ne ptr %14, null
  %tobool4.not.not = xor i1 %tobool4.not, true
  %brmerge = select i1 %tobool9.not, i1 true, i1 %tobool4.not.not
  br i1 %brmerge, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true7
  br i1 %tobool4.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %cond.end.if.end_crit_edge
  %and.i = and i32 %mask, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.fsnotify_event_needs_parent.exit_crit_edge

if.end.fsnotify_event_needs_parent.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_event_needs_parent.exit

do.end.i:                                         ; preds = %if.end
  %i_fsnotify_mask.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 50
  %15 = ptrtoint ptr %i_fsnotify_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_fsnotify_mask.i, align 4
  %and.i.i = and i32 %16, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %and1.i.i = and i32 %16, 462911
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 0, i32 %and1.i.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i, align 4
  %s_fsnotify_mask.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 37
  %19 = ptrtoint ptr %s_fsnotify_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_fsnotify_mask.i, align 8
  %and.i16.i = and i32 %20, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  %and1.i18.i = and i32 %20, 462911
  %retval.0.i19.i = select i1 %tobool.not.i17.i, i32 0, i32 %and1.i18.i
  %or2.i = or i32 %retval.0.i19.i, %retval.0.i.i
  %tobool3.not.i = icmp eq ptr %cond, null
  br i1 %tobool3.not.i, label %do.end.i.if.end7.i_crit_edge, label %if.then4.i

do.end.i.if.end7.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %mnt_fsnotify_mask.i = getelementptr inbounds %struct.mount, ptr %cond, i32 0, i32 21
  %21 = ptrtoint ptr %mnt_fsnotify_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mnt_fsnotify_mask.i, align 4
  %and.i20.i = and i32 %22, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i)
  %tobool.not.i21.i = icmp eq i32 %and.i20.i, 0
  %and1.i22.i = and i32 %22, 462911
  %retval.0.i23.i = select i1 %tobool.not.i21.i, i32 0, i32 %and1.i22.i
  %or6.i = or i32 %retval.0.i23.i, %or2.i
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %do.end.i.if.end7.i_crit_edge
  %marks_mask.0.i = phi i32 [ %or6.i, %if.then4.i ], [ %or2.i, %do.end.i.if.end7.i_crit_edge ]
  %and8.i = and i32 %marks_mask.0.i, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.i = icmp ne i32 %and8.i, 0
  br label %fsnotify_event_needs_parent.exit

fsnotify_event_needs_parent.exit:                 ; preds = %if.end7.i, %if.end.fsnotify_event_needs_parent.exit_crit_edge
  %retval.0.i = phi i1 [ %tobool9.i, %if.end7.i ], [ false, %if.end.fsnotify_event_needs_parent.exit_crit_edge ]
  %tobool4.not.not133 = xor i1 %tobool4.not, true
  %brmerge134 = select i1 %tobool4.not.not133, i1 true, i1 %retval.0.i
  br i1 %brmerge134, label %if.end18, label %fsnotify_event_needs_parent.exit.notify.thread_crit_edge

fsnotify_event_needs_parent.exit.notify.thread_crit_edge: ; preds = %fsnotify_event_needs_parent.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %notify.thread

if.end18:                                         ; preds = %fsnotify_event_needs_parent.exit
  %call19 = tail call ptr @dget_parent(ptr noundef %dentry) #6
  %d_inode = getelementptr inbounds %struct.dentry, ptr %call19, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode, align 8
  %i_fsnotify_mask.i137 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 50
  %25 = ptrtoint ptr %i_fsnotify_mask.i137 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_fsnotify_mask.i137, align 4
  %and.i138 = and i32 %26, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool.not.i139 = icmp eq i32 %and.i138, 0
  %and2.i = and i32 %26, 462911
  %retval.0.i140 = select i1 %tobool.not.i139, i32 0, i32 %and2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i140)
  %tobool22.not = icmp eq i32 %retval.0.i140, 0
  %spec.select = select i1 %tobool4.not.not133, i1 %tobool22.not, i1 false
  br i1 %spec.select, label %if.then26, label %if.end18.if.end27_crit_edge, !prof !51

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__fsnotify_update_child_dentry_flags(ptr noundef %24)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end18.if.end27_crit_edge
  %and28 = and i32 %retval.0.i140, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool30.not = icmp eq i32 %and28, 0
  %tobool30.not.not = xor i1 %tobool30.not, true
  %brmerge135 = select i1 %retval.0.i, i1 true, i1 %tobool30.not.not
  br i1 %brmerge135, label %if.then35, label %if.end27.notify.thread_crit_edge

if.end27.notify.thread_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %notify.thread

if.then35:                                        ; preds = %if.end27
  %27 = zext i32 %data_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %data_type, label %sw.default.i [
    i32 2, label %if.then35.fsnotify_data_inode.exit_crit_edge
    i32 3, label %sw.bb1.i
    i32 1, label %sw.bb2.i
    i32 4, label %sw.bb4.i
  ]

if.then35.fsnotify_data_inode.exit_crit_edge:     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_data_inode.exit

sw.bb1.i:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %data, i32 0, i32 5
  %28 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i.i, align 8
  br label %fsnotify_data_inode.exit

sw.bb2.i:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %dentry.i = getelementptr inbounds %struct.path, ptr %data, i32 0, i32 1
  %30 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dentry.i, align 4
  %d_inode.i8.i = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %d_inode.i8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_inode.i8.i, align 8
  br label %fsnotify_data_inode.exit

sw.bb4.i:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %inode.i = getelementptr inbounds %struct.fs_error_report, ptr %data, i32 0, i32 1
  %34 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %inode.i, align 4
  br label %fsnotify_data_inode.exit

sw.default.i:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_data_inode.exit

fsnotify_data_inode.exit:                         ; preds = %sw.default.i, %sw.bb4.i, %sw.bb2.i, %sw.bb1.i, %if.then35.fsnotify_data_inode.exit_crit_edge
  %retval.0.i141 = phi ptr [ null, %sw.default.i ], [ %35, %sw.bb4.i ], [ %33, %sw.bb2.i ], [ %29, %sw.bb1.i ], [ %data, %if.then35.fsnotify_data_inode.exit_crit_edge ]
  %cmp.not = icmp eq ptr %3, %retval.0.i141
  br i1 %cmp.not, label %fsnotify_data_inode.exit.if.then91_crit_edge, label %land.rhs43

fsnotify_data_inode.exit.if.then91_crit_edge:     ; preds = %fsnotify_data_inode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then91

land.rhs43:                                       ; preds = %fsnotify_data_inode.exit
  %.b132 = load i1, ptr @__fsnotify_parent.__already_done, align 1
  br i1 %.b132, label %land.rhs43.if.then91_crit_edge, label %if.then54, !prof !52

land.rhs43.if.then91_crit_edge:                   ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then91

if.then54:                                        ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__fsnotify_parent.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef null) #6
  br label %if.then91

notify.thread:                                    ; preds = %if.end27.notify.thread_crit_edge, %fsnotify_event_needs_parent.exit.notify.thread_crit_edge
  %parent.0.ph = phi ptr [ %call19, %if.end27.notify.thread_crit_edge ], [ null, %fsnotify_event_needs_parent.exit.notify.thread_crit_edge ]
  %p_inode.0.ph = phi ptr [ %24, %if.end27.notify.thread_crit_edge ], [ null, %fsnotify_event_needs_parent.exit.notify.thread_crit_edge ]
  %call89146 = tail call i32 @fsnotify(i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %p_inode.0.ph, ptr noundef null, ptr noundef %3, i32 noundef 0)
  br label %if.end92

if.then91:                                        ; preds = %if.then54, %land.rhs43.if.then91_crit_edge, %fsnotify_data_inode.exit.if.then91_crit_edge
  call void @take_dentry_name_snapshot(ptr noundef nonnull %name, ptr noundef %dentry) #6
  %or = or i32 %mask, 134217728
  %spec.select136 = select i1 %tobool30.not, i32 %mask, i32 %or
  %call89 = call i32 @fsnotify(i32 noundef %spec.select136, ptr noundef %data, i32 noundef %data_type, ptr noundef %24, ptr noundef nonnull %name, ptr noundef %3, i32 noundef 0)
  call void @release_dentry_name_snapshot(ptr noundef nonnull %name) #6
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %notify.thread
  %call89149 = phi i32 [ %call89146, %notify.thread ], [ %call89, %if.then91 ]
  %parent.0148 = phi ptr [ %parent.0.ph, %notify.thread ], [ %call19, %if.then91 ]
  call void @dput(ptr noundef %parent.0148) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %land.lhs.true10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ %call89149, %if.end92 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %name) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @take_dentry_name_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsnotify(i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %file_name, ptr noundef %inode, i32 noundef %cookie) #0 align 64 {
entry:
  %iter_info = alloca %struct.fsnotify_iter_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_type)
  %cond.i = icmp eq i32 %data_type, 1
  %data..i = select i1 %cond.i, ptr %data, ptr null
  %0 = zext i32 %data_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %data_type, label %entry.fsnotify_data_sb.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb1.i
    i32 1, label %sw.bb2.i
    i32 4, label %sw.bb4.i
  ]

entry.fsnotify_data_sb.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_data_sb.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %data, i32 0, i32 8
  br label %return.sink.split.i

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %data, i32 0, i32 9
  br label %return.sink.split.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dentry.i = getelementptr inbounds %struct.path, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dentry.i, align 4
  %d_sb3.i = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 9
  br label %return.sink.split.i

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sb.i = getelementptr inbounds %struct.fs_error_report, ptr %data, i32 0, i32 2
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb4.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %sb.sink.i = phi ptr [ %sb.i, %sw.bb4.i ], [ %d_sb3.i, %sw.bb2.i ], [ %d_sb.i, %sw.bb1.i ], [ %i_sb.i, %sw.bb.i ]
  %3 = ptrtoint ptr %sb.sink.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sb.sink.i, align 4
  br label %fsnotify_data_sb.exit

fsnotify_data_sb.exit:                            ; preds = %return.sink.split.i, %entry.fsnotify_data_sb.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.fsnotify_data_sb.exit_crit_edge ], [ %4, %return.sink.split.i ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %iter_info) #6
  %5 = call ptr @memset(ptr %iter_info, i32 0, i32 24)
  %tobool.not = icmp eq ptr %data..i, null
  br i1 %tobool.not, label %fsnotify_data_sb.exit.if.end_crit_edge, label %if.then

fsnotify_data_sb.exit.if.end_crit_edge:           ; preds = %fsnotify_data_sb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %fsnotify_data_sb.exit
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %data..i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data..i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 -16
  br label %if.end

if.end:                                           ; preds = %if.then, %fsnotify_data_sb.exit.if.end_crit_edge
  %mnt.0 = phi ptr [ %add.ptr.i, %if.then ], [ null, %fsnotify_data_sb.exit.if.end_crit_edge ]
  %tobool4.not = icmp eq ptr %inode, null
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %and = and i32 %mask, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then5.if.end14_crit_edge, label %if.then7

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then7:                                         ; preds = %if.then5
  %8 = zext i32 %data_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %data_type, label %sw.default.i [
    i32 3, label %if.then7.fsnotify_data_dentry.exit_crit_edge
    i32 1, label %sw.bb1.i130
  ]

if.then7.fsnotify_data_dentry.exit_crit_edge:     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_data_dentry.exit

sw.bb1.i130:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %dentry.i129 = getelementptr inbounds %struct.path, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %dentry.i129 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry.i129, align 4
  br label %fsnotify_data_dentry.exit

sw.default.i:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_data_dentry.exit

fsnotify_data_dentry.exit:                        ; preds = %sw.default.i, %sw.bb1.i130, %if.then7.fsnotify_data_dentry.exit_crit_edge
  %retval.0.i131 = phi ptr [ null, %sw.default.i ], [ %10, %sw.bb1.i130 ], [ %data, %if.then7.fsnotify_data_dentry.exit_crit_edge ]
  %d_parent = getelementptr inbounds %struct.dentry, ptr %retval.0.i131, i32 0, i32 3
  %11 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode, align 8
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and10 = and i32 %mask, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %spec.select = select i1 %tobool11.not, ptr null, ptr %dir
  %spec.select128 = select i1 %tobool11.not, i32 -1, i32 3
  br label %if.end14

if.end14:                                         ; preds = %if.else, %fsnotify_data_dentry.exit, %if.then5.if.end14_crit_edge
  %inode.addr.0 = phi ptr [ %dir, %fsnotify_data_dentry.exit ], [ %dir, %if.then5.if.end14_crit_edge ], [ %inode, %if.else ]
  %inode2.0 = phi ptr [ %14, %fsnotify_data_dentry.exit ], [ null, %if.then5.if.end14_crit_edge ], [ %spec.select, %if.else ]
  %inode2_type.0 = phi i32 [ 4, %fsnotify_data_dentry.exit ], [ -1, %if.then5.if.end14_crit_edge ], [ %spec.select128, %if.else ]
  %s_fsnotify_marks = getelementptr inbounds %struct.super_block, ptr %retval.0.i, i32 0, i32 38
  %15 = ptrtoint ptr %s_fsnotify_marks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fsnotify_marks, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %land.lhs.true, label %if.end14.if.end28_crit_edge

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end14
  %tobool16.not = icmp eq ptr %mnt.0, null
  br i1 %tobool16.not, label %land.lhs.true.land.lhs.true18_crit_edge, label %lor.lhs.false

land.lhs.true.land.lhs.true18_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true18

lor.lhs.false:                                    ; preds = %land.lhs.true
  %mnt_fsnotify_marks = getelementptr inbounds %struct.mount, ptr %mnt.0, i32 0, i32 20
  %17 = ptrtoint ptr %mnt_fsnotify_marks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mnt_fsnotify_marks, align 4
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %lor.lhs.false.land.lhs.true18_crit_edge, label %if.end28.thread

lor.lhs.false.land.lhs.true18_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true18

if.end28.thread:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %s_fsnotify_mask138 = getelementptr inbounds %struct.super_block, ptr %retval.0.i, i32 0, i32 37
  %19 = ptrtoint ptr %s_fsnotify_mask138 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_fsnotify_mask138, align 8
  br label %if.then30

land.lhs.true18:                                  ; preds = %lor.lhs.false.land.lhs.true18_crit_edge, %land.lhs.true.land.lhs.true18_crit_edge
  %tobool19.not = icmp eq ptr %inode.addr.0, null
  br i1 %tobool19.not, label %land.lhs.true18.land.lhs.true22_crit_edge, label %lor.lhs.false20

land.lhs.true18.land.lhs.true22_crit_edge:        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true22

lor.lhs.false20:                                  ; preds = %land.lhs.true18
  %i_fsnotify_marks = getelementptr inbounds %struct.inode, ptr %inode.addr.0, i32 0, i32 51
  %21 = ptrtoint ptr %i_fsnotify_marks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_fsnotify_marks, align 8
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %lor.lhs.false20.land.lhs.true22_crit_edge, label %lor.lhs.false20.if.end28_crit_edge

lor.lhs.false20.if.end28_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

lor.lhs.false20.land.lhs.true22_crit_edge:        ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true22

land.lhs.true22:                                  ; preds = %lor.lhs.false20.land.lhs.true22_crit_edge, %land.lhs.true18.land.lhs.true22_crit_edge
  %tobool23.not = icmp eq ptr %inode2.0, null
  br i1 %tobool23.not, label %land.lhs.true22.cleanup_crit_edge, label %lor.lhs.false24

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false24:                                  ; preds = %land.lhs.true22
  %i_fsnotify_marks25 = getelementptr inbounds %struct.inode, ptr %inode2.0, i32 0, i32 51
  %23 = ptrtoint ptr %i_fsnotify_marks25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_fsnotify_marks25, align 8
  %tobool26.not = icmp eq ptr %24, null
  br i1 %tobool26.not, label %lor.lhs.false24.cleanup_crit_edge, label %lor.lhs.false24.if.end28_crit_edge

lor.lhs.false24.if.end28_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false24.if.end28_crit_edge, %lor.lhs.false20.if.end28_crit_edge, %if.end14.if.end28_crit_edge
  %s_fsnotify_mask = getelementptr inbounds %struct.super_block, ptr %retval.0.i, i32 0, i32 37
  %25 = ptrtoint ptr %s_fsnotify_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_fsnotify_mask, align 8
  %tobool29.not = icmp eq ptr %mnt.0, null
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.end28.if.then30_crit_edge

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then30:                                        ; preds = %if.end28.if.then30_crit_edge, %if.end28.thread
  %27 = phi i32 [ %20, %if.end28.thread ], [ %26, %if.end28.if.then30_crit_edge ]
  %mnt_fsnotify_mask = getelementptr inbounds %struct.mount, ptr %mnt.0, i32 0, i32 21
  %28 = ptrtoint ptr %mnt_fsnotify_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mnt_fsnotify_mask, align 4
  %or = or i32 %29, %27
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  %tobool29.not141 = phi i1 [ false, %if.then30 ], [ true, %if.end28.if.end31_crit_edge ]
  %marks_mask.0 = phi i32 [ %or, %if.then30 ], [ %26, %if.end28.if.end31_crit_edge ]
  %tobool32.not = icmp eq ptr %inode.addr.0, null
  br i1 %tobool32.not, label %if.end31.if.end35_crit_edge, label %if.then33

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %i_fsnotify_mask = getelementptr inbounds %struct.inode, ptr %inode.addr.0, i32 0, i32 50
  %30 = ptrtoint ptr %i_fsnotify_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_fsnotify_mask, align 4
  %or34 = or i32 %31, %marks_mask.0
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31.if.end35_crit_edge
  %marks_mask.1 = phi i32 [ %or34, %if.then33 ], [ %marks_mask.0, %if.end31.if.end35_crit_edge ]
  %tobool36.not = icmp eq ptr %inode2.0, null
  br i1 %tobool36.not, label %if.end35.if.end40_crit_edge, label %if.then37

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %i_fsnotify_mask38 = getelementptr inbounds %struct.inode, ptr %inode2.0, i32 0, i32 50
  %32 = ptrtoint ptr %i_fsnotify_mask38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_fsnotify_mask38, align 4
  %or39 = or i32 %33, %marks_mask.1
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end35.if.end40_crit_edge
  %marks_mask.2 = phi i32 [ %or39, %if.then37 ], [ %marks_mask.1, %if.end35.if.end40_crit_edge ]
  %and42 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %land.lhs.true44, label %if.end40.if.end48_crit_edge

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true44:                                  ; preds = %if.end40
  %and41 = and i32 %mask, 268959743
  %and45 = and i32 %and41, %marks_mask.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %land.lhs.true44.cleanup_crit_edge, label %land.lhs.true44.if.end48_crit_edge

land.lhs.true44.if.end48_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true44.cleanup_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true44.if.end48_crit_edge, %if.end40.if.end48_crit_edge
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @fsnotify_mark_srcu) #6
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16)) #6
  %srcu_idx = getelementptr inbounds %struct.fsnotify_iter_info, ptr %iter_info, i32 0, i32 2
  %34 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i, ptr %srcu_idx, align 4
  %call51 = tail call fastcc ptr @fsnotify_first_mark(ptr noundef %s_fsnotify_marks)
  %arrayidx = getelementptr inbounds [5 x ptr], ptr %iter_info, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call51, ptr %arrayidx, align 4
  br i1 %tobool29.not141, label %if.end48.if.end58_crit_edge, label %if.then53

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %mnt_fsnotify_marks54 = getelementptr inbounds %struct.mount, ptr %mnt.0, i32 0, i32 20
  %call55 = tail call fastcc ptr @fsnotify_first_mark(ptr noundef %mnt_fsnotify_marks54)
  %arrayidx57 = getelementptr inbounds [5 x ptr], ptr %iter_info, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call55, ptr %arrayidx57, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.end48.if.end58_crit_edge
  br i1 %tobool32.not, label %if.end58.if.end65_crit_edge, label %if.then60

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %i_fsnotify_marks61 = getelementptr inbounds %struct.inode, ptr %inode.addr.0, i32 0, i32 51
  %call62 = tail call fastcc ptr @fsnotify_first_mark(ptr noundef %i_fsnotify_marks61)
  %37 = ptrtoint ptr %iter_info to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call62, ptr %iter_info, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end58.if.end65_crit_edge
  br i1 %tobool36.not, label %if.end65.if.end72_crit_edge, label %if.then67

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %i_fsnotify_marks68 = getelementptr inbounds %struct.inode, ptr %inode2.0, i32 0, i32 51
  %call69 = tail call fastcc ptr @fsnotify_first_mark(ptr noundef %i_fsnotify_marks68)
  %arrayidx71 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 %inode2_type.0
  %38 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call69, ptr %arrayidx71, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.end65.if.end72_crit_edge
  %arrayidx.1.i = getelementptr inbounds [5 x ptr], ptr %iter_info, i32 0, i32 1
  %arrayidx.3.i = getelementptr inbounds [5 x ptr], ptr %iter_info, i32 0, i32 3
  %arrayidx.4.i = getelementptr inbounds [5 x ptr], ptr %iter_info, i32 0, i32 4
  %report_mask.i = getelementptr inbounds %struct.fsnotify_iter_info, ptr %iter_info, i32 0, i32 1
  %and78 = and i32 %mask, 458752
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br label %while.cond

while.cond:                                       ; preds = %for.inc.i135.while.cond_crit_edge, %if.end72
  %39 = ptrtoint ptr %iter_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iter_info, align 4
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %while.cond.for.inc.i_crit_edge, label %land.lhs.true.i

while.cond.for.inc.i_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %while.cond
  %group.i = getelementptr inbounds %struct.fsnotify_mark, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %group.i, align 4
  %call.i132 = call i32 @fsnotify_compare_groups(ptr noundef null, ptr noundef %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp1.i = icmp sgt i32 %call.i132, 0
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %group.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %while.cond.for.inc.i_crit_edge
  %max_prio_group.1.i = phi ptr [ %44, %if.then.i ], [ null, %land.lhs.true.i.for.inc.i_crit_edge ], [ null, %while.cond.for.inc.i_crit_edge ]
  %45 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %46, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %group.1.i = getelementptr inbounds %struct.fsnotify_mark, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %group.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %group.1.i, align 4
  %call.1.i = call i32 @fsnotify_compare_groups(ptr noundef %max_prio_group.1.i, ptr noundef %48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp1.1.i = icmp sgt i32 %call.1.i, 0
  br i1 %cmp1.1.i, label %if.then.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %group.1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %group.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %max_prio_group.1.1.i = phi ptr [ %50, %if.then.1.i ], [ %max_prio_group.1.i, %land.lhs.true.1.i.for.inc.1.i_crit_edge ], [ %max_prio_group.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %tobool.not.2.i = icmp eq ptr %52, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %group.2.i = getelementptr inbounds %struct.fsnotify_mark, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %group.2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %group.2.i, align 4
  %call.2.i = call i32 @fsnotify_compare_groups(ptr noundef %max_prio_group.1.1.i, ptr noundef %54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp1.2.i = icmp sgt i32 %call.2.i, 0
  br i1 %cmp1.2.i, label %if.then.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %group.2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %group.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %max_prio_group.1.2.i = phi ptr [ %56, %if.then.2.i ], [ %max_prio_group.1.1.i, %land.lhs.true.2.i.for.inc.2.i_crit_edge ], [ %max_prio_group.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %57 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %58, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %group.3.i = getelementptr inbounds %struct.fsnotify_mark, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %group.3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %group.3.i, align 4
  %call.3.i = call i32 @fsnotify_compare_groups(ptr noundef %max_prio_group.1.2.i, ptr noundef %60) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp1.3.i = icmp sgt i32 %call.3.i, 0
  br i1 %cmp1.3.i, label %if.then.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %group.3.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %group.3.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %max_prio_group.1.3.i = phi ptr [ %62, %if.then.3.i ], [ %max_prio_group.1.2.i, %land.lhs.true.3.i.for.inc.3.i_crit_edge ], [ %max_prio_group.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %63 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %64, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %group.4.i = getelementptr inbounds %struct.fsnotify_mark, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %group.4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %group.4.i, align 4
  %call.4.i = call i32 @fsnotify_compare_groups(ptr noundef %max_prio_group.1.3.i, ptr noundef %66) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp1.4.i = icmp sgt i32 %call.4.i, 0
  br i1 %cmp1.4.i, label %if.then.4.i, label %land.lhs.true.4.i.for.inc.4.i_crit_edge

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %group.4.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %group.4.i, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %max_prio_group.1.4.i = phi ptr [ %68, %if.then.4.i ], [ %max_prio_group.1.3.i, %land.lhs.true.4.i.for.inc.4.i_crit_edge ], [ %max_prio_group.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %tobool3.not.i = icmp eq ptr %max_prio_group.1.4.i, null
  br i1 %tobool3.not.i, label %for.inc.4.i.out_crit_edge, label %if.end5.i

for.inc.4.i.out_crit_edge:                        ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end5.i:                                        ; preds = %for.inc.4.i
  %69 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %report_mask.i, align 4
  %70 = ptrtoint ptr %iter_info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iter_info, align 4
  %tobool11.not.i = icmp eq ptr %71, null
  br i1 %tobool11.not.i, label %if.end5.i.for.inc18.i_crit_edge, label %land.lhs.true12.i

if.end5.i.for.inc18.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc18.i

land.lhs.true12.i:                                ; preds = %if.end5.i
  %group13.i = getelementptr inbounds %struct.fsnotify_mark, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %group13.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %group13.i, align 4
  %call14.i = call i32 @fsnotify_compare_groups(ptr noundef nonnull %max_prio_group.1.4.i, ptr noundef %73) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %land.lhs.true12.i.for.inc18.i_crit_edge

land.lhs.true12.i.for.inc18.i_crit_edge:          ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc18.i

if.then16.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %report_mask.i, align 4
  %or.i.i = or i32 %75, 1
  store i32 %or.i.i, ptr %report_mask.i, align 4
  br label %for.inc18.i

for.inc18.i:                                      ; preds = %if.then16.i, %land.lhs.true12.i.for.inc18.i_crit_edge, %if.end5.i.for.inc18.i_crit_edge
  %76 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool11.not.1.i = icmp eq ptr %77, null
  br i1 %tobool11.not.1.i, label %for.inc18.i.for.inc18.1.i_crit_edge, label %land.lhs.true12.1.i

for.inc18.i.for.inc18.1.i_crit_edge:              ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc18.1.i

land.lhs.true12.1.i:                              ; preds = %for.inc18.i
  %group13.1.i = getelementptr inbounds %struct.fsnotify_mark, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %group13.1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %group13.1.i, align 4
  %call14.1.i = call i32 @fsnotify_compare_groups(ptr noundef nonnull %max_prio_group.1.4.i, ptr noundef %79) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1.i)
  %cmp15.1.i = icmp eq i32 %call14.1.i, 0
  br i1 %cmp15.1.i, label %if.then16.1.i, label %land.lhs.true12.1.i.for.inc18.1.i_crit_edge

land.lhs.true12.1.i.for.inc18.1.i_crit_edge:      ; preds = %land.lhs.true12.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc18.1.i

if.then16.1.i:                                    ; preds = %land.lhs.true12.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %report_mask.i, align 4
  %or.i.1.i = or i32 %81, 2
  store i32 %or.i.1.i, ptr %report_mask.i, align 4
  br label %for.inc18.1.i

for.inc18.1.i:                                    ; preds = %if.then16.1.i, %land.lhs.true12.1.i.for.inc18.1.i_crit_edge, %for.inc18.i.for.inc18.1.i_crit_edge
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx, align 4
  %tobool11.not.2.i = icmp eq ptr %83, null
  br i1 %tobool11.not.2.i, label %for.inc18.1.i.for.inc18.2.i_crit_edge, label %land.lhs.true12.2.i

for.inc18.1.i.for.inc18.2.i_crit_edge:            ; preds = %for.inc18.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc18.2.i

land.lhs.true12.2.i:                              ; preds = %for.inc18.1.i
  %group13.2.i = getelementptr inbounds %struct.fsnotify_mark, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %group13.2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %group13.2.i, align 4
  %call14.2.i = call i32 @fsnotify_compare_groups(ptr noundef nonnull %max_prio_group.1.4.i, ptr noundef %85) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.2.i)
  %cmp15.2.i = icmp eq i32 %call14.2.i, 0
  br i1 %cmp15.2.i, label %if.then16.2.i, label %land.lhs.true12.2.i.for.inc18.2.i_crit_edge

land.lhs.true12.2.i.for.inc18.2.i_crit_edge:      ; preds = %land.lhs.true12.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc18.2.i

if.then16.2.i:                                    ; preds = %land.lhs.true12.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %report_mask.i, align 4
  %or.i.2.i = or i32 %87, 4
  store i32 %or.i.2.i, ptr %report_mask.i, align 4
  br label %for.inc18.2.i

for.inc18.2.i:                                    ; preds = %if.then16.2.i, %land.lhs.true12.2.i.for.inc18.2.i_crit_edge, %for.inc18.1.i.for.inc18.2.i_crit_edge
  %88 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool11.not.3.i = icmp eq ptr %89, null
  br i1 %tobool11.not.3.i, label %for.inc18.2.i.for.inc18.3.i_crit_edge, label %land.lhs.true12.3.i

for.inc18.2.i.for.inc18.3.i_crit_edge:            ; preds = %for.inc18.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc18.3.i

land.lhs.true12.3.i:                              ; preds = %for.inc18.2.i
  %group13.3.i = getelementptr inbounds %struct.fsnotify_mark, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %group13.3.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %group13.3.i, align 4
  %call14.3.i = call i32 @fsnotify_compare_groups(ptr noundef nonnull %max_prio_group.1.4.i, ptr noundef %91) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.3.i)
  %cmp15.3.i = icmp eq i32 %call14.3.i, 0
  br i1 %cmp15.3.i, label %if.then16.3.i, label %land.lhs.true12.3.i.for.inc18.3.i_crit_edge

land.lhs.true12.3.i.for.inc18.3.i_crit_edge:      ; preds = %land.lhs.true12.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc18.3.i

if.then16.3.i:                                    ; preds = %land.lhs.true12.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %report_mask.i, align 4
  %or.i.3.i = or i32 %93, 8
  store i32 %or.i.3.i, ptr %report_mask.i, align 4
  br label %for.inc18.3.i

for.inc18.3.i:                                    ; preds = %if.then16.3.i, %land.lhs.true12.3.i.for.inc18.3.i_crit_edge, %for.inc18.2.i.for.inc18.3.i_crit_edge
  %94 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool11.not.4.i = icmp eq ptr %95, null
  br i1 %tobool11.not.4.i, label %for.inc18.3.i.fsnotify_iter_select_report_types.exit_crit_edge, label %land.lhs.true12.4.i

for.inc18.3.i.fsnotify_iter_select_report_types.exit_crit_edge: ; preds = %for.inc18.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_iter_select_report_types.exit

land.lhs.true12.4.i:                              ; preds = %for.inc18.3.i
  %group13.4.i = getelementptr inbounds %struct.fsnotify_mark, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %group13.4.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %group13.4.i, align 4
  %call14.4.i = call i32 @fsnotify_compare_groups(ptr noundef nonnull %max_prio_group.1.4.i, ptr noundef %97) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.4.i)
  %cmp15.4.i = icmp eq i32 %call14.4.i, 0
  br i1 %cmp15.4.i, label %fsnotify_iter_select_report_types.exit.thread144, label %land.lhs.true12.4.i.fsnotify_iter_select_report_types.exit_crit_edge

land.lhs.true12.4.i.fsnotify_iter_select_report_types.exit_crit_edge: ; preds = %land.lhs.true12.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_iter_select_report_types.exit

fsnotify_iter_select_report_types.exit.thread144: ; preds = %land.lhs.true12.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %report_mask.i, align 4
  %or.i.4.i = or i32 %99, 16
  store i32 %or.i.4.i, ptr %report_mask.i, align 4
  br label %while.body

fsnotify_iter_select_report_types.exit:           ; preds = %land.lhs.true12.4.i.fsnotify_iter_select_report_types.exit_crit_edge, %for.inc18.3.i.fsnotify_iter_select_report_types.exit_crit_edge
  %100 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pr = load i32, ptr %report_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool74.not = icmp eq i32 %.pr, 0
  br i1 %tobool74.not, label %fsnotify_iter_select_report_types.exit.out_crit_edge, label %fsnotify_iter_select_report_types.exit.while.body_crit_edge

fsnotify_iter_select_report_types.exit.while.body_crit_edge: ; preds = %fsnotify_iter_select_report_types.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

fsnotify_iter_select_report_types.exit.out_crit_edge: ; preds = %fsnotify_iter_select_report_types.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

while.body:                                       ; preds = %fsnotify_iter_select_report_types.exit.while.body_crit_edge, %fsnotify_iter_select_report_types.exit.thread144
  %call75 = call fastcc i32 @send_to_group(i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %file_name, i32 noundef %cookie, ptr noundef nonnull %iter_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  %or.cond = or i1 %tobool79.not, %tobool76.not
  br i1 %or.cond, label %while.body.for.body.i_crit_edge, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

while.body.for.body.i_crit_edge:                  ; preds = %while.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i135.for.body.i_crit_edge, %while.body.for.body.i_crit_edge
  %type.010.i = phi i32 [ %inc.i, %for.inc.i135.for.body.i_crit_edge ], [ 0, %while.body.for.body.i_crit_edge ]
  %101 = ptrtoint ptr %report_mask.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %report_mask.i, align 4
  %shl.i.i = shl nuw nsw i32 1, %type.010.i
  %and.i.i = and i32 %102, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.for.inc.i135_crit_edge, label %if.then.i134

for.body.i.for.inc.i135_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i135

if.then.i134:                                     ; preds = %for.body.i
  %arrayidx.i = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 %type.010.i
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %104, null
  br i1 %tobool.not.i.i, label %if.then.i134.fsnotify_next_mark.exit.i_crit_edge, label %if.then.i.i

if.then.i134.fsnotify_next_mark.exit.i_crit_edge: ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_next_mark.exit.i

if.then.i.i:                                      ; preds = %if.then.i134
  %obj_list.i.i = getelementptr inbounds %struct.fsnotify_mark, ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %obj_list.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile ptr, ptr %obj_list.i.i, align 4
  %call.i.i.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.fsnotify_next_mark.exit.i_crit_edge, label %srcu_read_lock_held.exit.i.i

if.then.i.i.fsnotify_next_mark.exit.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_next_mark.exit.i

srcu_read_lock_held.exit.i.i:                     ; preds = %if.then.i.i
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16), i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i, label %srcu_read_lock_held.exit.i.i.fsnotify_next_mark.exit.i_crit_edge

srcu_read_lock_held.exit.i.i.fsnotify_next_mark.exit.i_crit_edge: ; preds = %srcu_read_lock_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_next_mark.exit.i

land.lhs.true.i.i:                                ; preds = %srcu_read_lock_held.exit.i.i
  %call3.i.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.fsnotify_next_mark.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.fsnotify_next_mark.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_next_mark.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b17.i.i = load i1, ptr @fsnotify_next_mark.__warned, align 1
  br i1 %.b17.i.i, label %land.lhs.true5.i.i.fsnotify_next_mark.exit.i_crit_edge, label %if.then7.i.i

land.lhs.true5.i.i.fsnotify_next_mark.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_next_mark.exit.i

if.then7.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @fsnotify_next_mark.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 401, ptr noundef nonnull @.str.1) #6
  br label %fsnotify_next_mark.exit.i

fsnotify_next_mark.exit.i:                        ; preds = %if.then7.i.i, %land.lhs.true5.i.i.fsnotify_next_mark.exit.i_crit_edge, %land.lhs.true.i.i.fsnotify_next_mark.exit.i_crit_edge, %srcu_read_lock_held.exit.i.i.fsnotify_next_mark.exit.i_crit_edge, %if.then.i.i.fsnotify_next_mark.exit.i_crit_edge, %if.then.i134.fsnotify_next_mark.exit.i_crit_edge
  %node.0.i.i = phi ptr [ null, %if.then.i134.fsnotify_next_mark.exit.i_crit_edge ], [ %106, %if.then7.i.i ], [ %106, %land.lhs.true5.i.i.fsnotify_next_mark.exit.i_crit_edge ], [ %106, %land.lhs.true.i.i.fsnotify_next_mark.exit.i_crit_edge ], [ %106, %srcu_read_lock_held.exit.i.i.fsnotify_next_mark.exit.i_crit_edge ], [ %106, %if.then.i.i.fsnotify_next_mark.exit.i_crit_edge ]
  %tobool13.not.i.i = icmp eq ptr %node.0.i.i, null
  %add.ptr.i.i = getelementptr i8, ptr %node.0.i.i, i32 -64
  %spec.select.i.i = select i1 %tobool13.not.i.i, ptr null, ptr %add.ptr.i.i
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %spec.select.i.i, ptr %arrayidx.i, align 4
  br label %for.inc.i135

for.inc.i135:                                     ; preds = %fsnotify_next_mark.exit.i, %for.body.i.for.inc.i135_crit_edge
  %inc.i = add nuw nsw i32 %type.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %for.inc.i135.while.cond_crit_edge, label %for.inc.i135.for.body.i_crit_edge

for.inc.i135.for.body.i_crit_edge:                ; preds = %for.inc.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i135.while.cond_crit_edge:                ; preds = %for.inc.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

out:                                              ; preds = %while.body.out_crit_edge, %fsnotify_iter_select_report_types.exit.out_crit_edge, %for.inc.4.i.out_crit_edge
  %ret.0 = phi i32 [ %call75, %while.body.out_crit_edge ], [ 0, %fsnotify_iter_select_report_types.exit.out_crit_edge ], [ 0, %for.inc.4.i.out_crit_edge ]
  %108 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %srcu_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %tobool.not.i136 = icmp ult i32 %109, 2
  br i1 %tobool.not.i136, label %out.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

out.srcu_read_unlock.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %out
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i137, !prof !52

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %srcu_read_unlock.exit

if.then.i137:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 189, i32 noundef 9, ptr noundef null) #6
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i137, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %out.srcu_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16)) #6
  call void @__srcu_read_unlock(ptr noundef nonnull @fsnotify_mark_srcu, i32 noundef %109) #6
  br label %cleanup

cleanup:                                          ; preds = %srcu_read_unlock.exit, %land.lhs.true44.cleanup_crit_edge, %lor.lhs.false24.cleanup_crit_edge, %land.lhs.true22.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %srcu_read_unlock.exit ], [ 0, %lor.lhs.false24.cleanup_crit_edge ], [ 0, %land.lhs.true22.cleanup_crit_edge ], [ 0, %land.lhs.true44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %iter_info) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_dentry_name_snapshot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fsnotify_first_mark(ptr noundef %connp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %connp, align 4
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.do.end7_crit_edge, label %srcu_read_lock_held.exit

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

srcu_read_lock_held.exit:                         ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16), i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end7_crit_edge

srcu_read_lock_held.exit.do.end7_crit_edge:       ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b36 = load i1, ptr @fsnotify_first_mark.__warned, align 1
  br i1 %.b36, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @fsnotify_first_mark.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 388, ptr noundef nonnull @.str.1) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %srcu_read_lock_held.exit.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %do.end7.if.end28_crit_edge, label %if.then10

do.end7.if.end28_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then10:                                        ; preds = %do.end7
  %list = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %list, align 4
  %call.i37 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %if.then10.if.end28_crit_edge, label %srcu_read_lock_held.exit42

if.then10.if.end28_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

srcu_read_lock_held.exit42:                       ; preds = %if.then10
  %call.i.i39 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16), i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %tobool17.not = icmp eq i32 %call.i.i39, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %srcu_read_lock_held.exit42.if.end28_crit_edge

srcu_read_lock_held.exit42.if.end28_crit_edge:    ; preds = %srcu_read_lock_held.exit42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true18:                                  ; preds = %srcu_read_lock_held.exit42
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.end28_crit_edge, label %land.lhs.true21

land.lhs.true18.if.end28_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %.b3435 = load i1, ptr @fsnotify_first_mark.__warned.2, align 1
  br i1 %.b3435, label %land.lhs.true21.if.end28_crit_edge, label %if.then23

land.lhs.true21.if.end28_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @fsnotify_first_mark.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 390, ptr noundef nonnull @.str.1) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %land.lhs.true21.if.end28_crit_edge, %land.lhs.true18.if.end28_crit_edge, %srcu_read_lock_held.exit42.if.end28_crit_edge, %if.then10.if.end28_crit_edge, %do.end7.if.end28_crit_edge
  %node.0 = phi ptr [ null, %do.end7.if.end28_crit_edge ], [ %3, %if.then23 ], [ %3, %land.lhs.true21.if.end28_crit_edge ], [ %3, %land.lhs.true18.if.end28_crit_edge ], [ %3, %srcu_read_lock_held.exit42.if.end28_crit_edge ], [ %3, %if.then10.if.end28_crit_edge ]
  %tobool30.not = icmp eq ptr %node.0, null
  %add.ptr = getelementptr i8, ptr %node.0, i32 -64
  %spec.select = select i1 %tobool30.not, ptr null, ptr %add.ptr
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_to_group(i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %file_name, i32 noundef %cookie, ptr noundef %iter_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 268959743
  %report_mask = getelementptr inbounds %struct.fsnotify_iter_info, ptr %iter_info, i32 0, i32 1
  %0 = ptrtoint ptr %report_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %report_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !51

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 340, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %and24 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end34_crit_edge, label %for.body.preheader

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

for.body.preheader:                               ; preds = %if.end23
  %2 = ptrtoint ptr %report_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %report_mask, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.body.preheader.for.inc_crit_edge, label %if.end28

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end28:                                         ; preds = %for.body.preheader
  %4 = ptrtoint ptr %iter_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iter_info, align 4
  %tobool29.not = icmp eq ptr %5, null
  br i1 %tobool29.not, label %if.end28.for.inc_crit_edge, label %land.lhs.true

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end28
  %flags = getelementptr inbounds %struct.fsnotify_mark, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and30 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then32, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %ignored_mask = getelementptr inbounds %struct.fsnotify_mark, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %ignored_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ignored_mask, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %land.lhs.true.for.inc_crit_edge, %if.end28.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %9 = ptrtoint ptr %report_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %report_mask, align 4
  %and.i.1 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.i.not.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.i.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end28.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end28.1:                                       ; preds = %for.inc
  %arrayidx.1 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1, align 4
  %tobool29.not.1 = icmp eq ptr %12, null
  br i1 %tobool29.not.1, label %if.end28.1.for.inc.1_crit_edge, label %land.lhs.true.1

if.end28.1.for.inc.1_crit_edge:                   ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.end28.1
  %flags.1 = getelementptr inbounds %struct.fsnotify_mark, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.1, align 4
  %and30.1 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.1)
  %tobool31.not.1 = icmp eq i32 %and30.1, 0
  br i1 %tobool31.not.1, label %if.then32.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then32.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  %ignored_mask.1 = getelementptr inbounds %struct.fsnotify_mark, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %ignored_mask.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ignored_mask.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then32.1, %land.lhs.true.1.for.inc.1_crit_edge, %if.end28.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %16 = ptrtoint ptr %report_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %report_mask, align 4
  %and.i.2 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool.i.not.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool.i.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end28.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end28.2:                                       ; preds = %for.inc.1
  %arrayidx.2 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %tobool29.not.2 = icmp eq ptr %19, null
  br i1 %tobool29.not.2, label %if.end28.2.for.inc.2_crit_edge, label %land.lhs.true.2

if.end28.2.for.inc.2_crit_edge:                   ; preds = %if.end28.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %if.end28.2
  %flags.2 = getelementptr inbounds %struct.fsnotify_mark, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.2, align 4
  %and30.2 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.2)
  %tobool31.not.2 = icmp eq i32 %and30.2, 0
  br i1 %tobool31.not.2, label %if.then32.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then32.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  %ignored_mask.2 = getelementptr inbounds %struct.fsnotify_mark, ptr %19, i32 0, i32 7
  %22 = ptrtoint ptr %ignored_mask.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %ignored_mask.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then32.2, %land.lhs.true.2.for.inc.2_crit_edge, %if.end28.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %23 = ptrtoint ptr %report_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %report_mask, align 4
  %and.i.3 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool.i.not.3 = icmp eq i32 %and.i.3, 0
  br i1 %tobool.i.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end28.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.end28.3:                                       ; preds = %for.inc.2
  %arrayidx.3 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.3, align 4
  %tobool29.not.3 = icmp eq ptr %26, null
  br i1 %tobool29.not.3, label %if.end28.3.for.inc.3_crit_edge, label %land.lhs.true.3

if.end28.3.for.inc.3_crit_edge:                   ; preds = %if.end28.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %if.end28.3
  %flags.3 = getelementptr inbounds %struct.fsnotify_mark, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.3, align 4
  %and30.3 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.3)
  %tobool31.not.3 = icmp eq i32 %and30.3, 0
  br i1 %tobool31.not.3, label %if.then32.3, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then32.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  %ignored_mask.3 = getelementptr inbounds %struct.fsnotify_mark, ptr %26, i32 0, i32 7
  %29 = ptrtoint ptr %ignored_mask.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ignored_mask.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then32.3, %land.lhs.true.3.for.inc.3_crit_edge, %if.end28.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %30 = ptrtoint ptr %report_mask to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %report_mask, align 4
  %and.i.4 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4)
  %tobool.i.not.4 = icmp eq i32 %and.i.4, 0
  br i1 %tobool.i.not.4, label %for.inc.3.if.end34_crit_edge, label %if.end28.4

for.inc.3.if.end34_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.end28.4:                                       ; preds = %for.inc.3
  %arrayidx.4 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 4
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.4, align 4
  %tobool29.not.4 = icmp eq ptr %33, null
  br i1 %tobool29.not.4, label %if.end28.4.if.end34_crit_edge, label %land.lhs.true.4

if.end28.4.if.end34_crit_edge:                    ; preds = %if.end28.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true.4:                                  ; preds = %if.end28.4
  %flags.4 = getelementptr inbounds %struct.fsnotify_mark, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.4, align 4
  %and30.4 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.4)
  %tobool31.not.4 = icmp eq i32 %and30.4, 0
  br i1 %tobool31.not.4, label %if.then32.4, label %land.lhs.true.4.if.end34_crit_edge

land.lhs.true.4.if.end34_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then32.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #8
  %ignored_mask.4 = getelementptr inbounds %struct.fsnotify_mark, ptr %33, i32 0, i32 7
  %36 = ptrtoint ptr %ignored_mask.4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %ignored_mask.4, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32.4, %land.lhs.true.4.if.end34_crit_edge, %if.end28.4.if.end34_crit_edge, %for.inc.3.if.end34_crit_edge, %if.end23.if.end34_crit_edge
  %37 = ptrtoint ptr %report_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %report_mask, align 4
  %and.i129 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129)
  %tobool.i130.not = icmp eq i32 %and.i129, 0
  br i1 %tobool.i130.not, label %if.end34.for.inc50_crit_edge, label %if.end40

if.end34.for.inc50_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50

if.end40:                                         ; preds = %if.end34
  %39 = ptrtoint ptr %iter_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iter_info, align 4
  %tobool43.not = icmp eq ptr %40, null
  br i1 %tobool43.not, label %if.end40.for.inc50_crit_edge, label %if.then44

if.end40.for.inc50_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %group45 = getelementptr inbounds %struct.fsnotify_mark, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %group45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %group45, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %40, align 4
  %ignored_mask47 = getelementptr inbounds %struct.fsnotify_mark, ptr %40, i32 0, i32 7
  %45 = ptrtoint ptr %ignored_mask47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ignored_mask47, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %if.then44, %if.end40.for.inc50_crit_edge, %if.end34.for.inc50_crit_edge
  %marks_mask.1 = phi i32 [ %44, %if.then44 ], [ 0, %if.end40.for.inc50_crit_edge ], [ 0, %if.end34.for.inc50_crit_edge ]
  %marks_ignored_mask.1 = phi i32 [ %46, %if.then44 ], [ 0, %if.end40.for.inc50_crit_edge ], [ 0, %if.end34.for.inc50_crit_edge ]
  %group.1 = phi ptr [ %42, %if.then44 ], [ null, %if.end40.for.inc50_crit_edge ], [ null, %if.end34.for.inc50_crit_edge ]
  %and.i129.1 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129.1)
  %tobool.i130.not.1 = icmp eq i32 %and.i129.1, 0
  br i1 %tobool.i130.not.1, label %for.inc50.for.inc50.1_crit_edge, label %if.end40.1

for.inc50.for.inc50.1_crit_edge:                  ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.1

if.end40.1:                                       ; preds = %for.inc50
  %arrayidx42.1 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx42.1, align 4
  %tobool43.not.1 = icmp eq ptr %48, null
  br i1 %tobool43.not.1, label %if.end40.1.for.inc50.1_crit_edge, label %if.then44.1

if.end40.1.for.inc50.1_crit_edge:                 ; preds = %if.end40.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.1

if.then44.1:                                      ; preds = %if.end40.1
  call void @__sanitizer_cov_trace_pc() #8
  %group45.1 = getelementptr inbounds %struct.fsnotify_mark, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %group45.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %group45.1, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %48, align 4
  %or.1 = or i32 %52, %marks_mask.1
  %ignored_mask47.1 = getelementptr inbounds %struct.fsnotify_mark, ptr %48, i32 0, i32 7
  %53 = ptrtoint ptr %ignored_mask47.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ignored_mask47.1, align 4
  %or48.1 = or i32 %54, %marks_ignored_mask.1
  br label %for.inc50.1

for.inc50.1:                                      ; preds = %if.then44.1, %if.end40.1.for.inc50.1_crit_edge, %for.inc50.for.inc50.1_crit_edge
  %marks_mask.1.1 = phi i32 [ %or.1, %if.then44.1 ], [ %marks_mask.1, %if.end40.1.for.inc50.1_crit_edge ], [ %marks_mask.1, %for.inc50.for.inc50.1_crit_edge ]
  %marks_ignored_mask.1.1 = phi i32 [ %or48.1, %if.then44.1 ], [ %marks_ignored_mask.1, %if.end40.1.for.inc50.1_crit_edge ], [ %marks_ignored_mask.1, %for.inc50.for.inc50.1_crit_edge ]
  %group.1.1 = phi ptr [ %50, %if.then44.1 ], [ %group.1, %if.end40.1.for.inc50.1_crit_edge ], [ %group.1, %for.inc50.for.inc50.1_crit_edge ]
  %and.i129.2 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129.2)
  %tobool.i130.not.2 = icmp eq i32 %and.i129.2, 0
  br i1 %tobool.i130.not.2, label %for.inc50.1.for.inc50.2_crit_edge, label %if.end40.2

for.inc50.1.for.inc50.2_crit_edge:                ; preds = %for.inc50.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.2

if.end40.2:                                       ; preds = %for.inc50.1
  %arrayidx42.2 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx42.2, align 4
  %tobool43.not.2 = icmp eq ptr %56, null
  br i1 %tobool43.not.2, label %if.end40.2.for.inc50.2_crit_edge, label %if.then44.2

if.end40.2.for.inc50.2_crit_edge:                 ; preds = %if.end40.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.2

if.then44.2:                                      ; preds = %if.end40.2
  call void @__sanitizer_cov_trace_pc() #8
  %group45.2 = getelementptr inbounds %struct.fsnotify_mark, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %group45.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %group45.2, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %56, align 4
  %or.2 = or i32 %60, %marks_mask.1.1
  %ignored_mask47.2 = getelementptr inbounds %struct.fsnotify_mark, ptr %56, i32 0, i32 7
  %61 = ptrtoint ptr %ignored_mask47.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ignored_mask47.2, align 4
  %or48.2 = or i32 %62, %marks_ignored_mask.1.1
  br label %for.inc50.2

for.inc50.2:                                      ; preds = %if.then44.2, %if.end40.2.for.inc50.2_crit_edge, %for.inc50.1.for.inc50.2_crit_edge
  %marks_mask.1.2 = phi i32 [ %or.2, %if.then44.2 ], [ %marks_mask.1.1, %if.end40.2.for.inc50.2_crit_edge ], [ %marks_mask.1.1, %for.inc50.1.for.inc50.2_crit_edge ]
  %marks_ignored_mask.1.2 = phi i32 [ %or48.2, %if.then44.2 ], [ %marks_ignored_mask.1.1, %if.end40.2.for.inc50.2_crit_edge ], [ %marks_ignored_mask.1.1, %for.inc50.1.for.inc50.2_crit_edge ]
  %group.1.2 = phi ptr [ %58, %if.then44.2 ], [ %group.1.1, %if.end40.2.for.inc50.2_crit_edge ], [ %group.1.1, %for.inc50.1.for.inc50.2_crit_edge ]
  %and.i129.3 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129.3)
  %tobool.i130.not.3 = icmp eq i32 %and.i129.3, 0
  br i1 %tobool.i130.not.3, label %for.inc50.2.for.inc50.3_crit_edge, label %if.end40.3

for.inc50.2.for.inc50.3_crit_edge:                ; preds = %for.inc50.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.3

if.end40.3:                                       ; preds = %for.inc50.2
  %arrayidx42.3 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 3
  %63 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx42.3, align 4
  %tobool43.not.3 = icmp eq ptr %64, null
  br i1 %tobool43.not.3, label %if.end40.3.for.inc50.3_crit_edge, label %if.then44.3

if.end40.3.for.inc50.3_crit_edge:                 ; preds = %if.end40.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.3

if.then44.3:                                      ; preds = %if.end40.3
  call void @__sanitizer_cov_trace_pc() #8
  %group45.3 = getelementptr inbounds %struct.fsnotify_mark, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %group45.3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %group45.3, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %64, align 4
  %or.3 = or i32 %68, %marks_mask.1.2
  %ignored_mask47.3 = getelementptr inbounds %struct.fsnotify_mark, ptr %64, i32 0, i32 7
  %69 = ptrtoint ptr %ignored_mask47.3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ignored_mask47.3, align 4
  %or48.3 = or i32 %70, %marks_ignored_mask.1.2
  br label %for.inc50.3

for.inc50.3:                                      ; preds = %if.then44.3, %if.end40.3.for.inc50.3_crit_edge, %for.inc50.2.for.inc50.3_crit_edge
  %marks_mask.1.3 = phi i32 [ %or.3, %if.then44.3 ], [ %marks_mask.1.2, %if.end40.3.for.inc50.3_crit_edge ], [ %marks_mask.1.2, %for.inc50.2.for.inc50.3_crit_edge ]
  %marks_ignored_mask.1.3 = phi i32 [ %or48.3, %if.then44.3 ], [ %marks_ignored_mask.1.2, %if.end40.3.for.inc50.3_crit_edge ], [ %marks_ignored_mask.1.2, %for.inc50.2.for.inc50.3_crit_edge ]
  %group.1.3 = phi ptr [ %66, %if.then44.3 ], [ %group.1.2, %if.end40.3.for.inc50.3_crit_edge ], [ %group.1.2, %for.inc50.2.for.inc50.3_crit_edge ]
  %and.i129.4 = and i32 %38, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i129.4)
  %tobool.i130.not.4 = icmp eq i32 %and.i129.4, 0
  br i1 %tobool.i130.not.4, label %for.inc50.3.for.inc50.4_crit_edge, label %if.end40.4

for.inc50.3.for.inc50.4_crit_edge:                ; preds = %for.inc50.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.4

if.end40.4:                                       ; preds = %for.inc50.3
  %arrayidx42.4 = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 4
  %71 = ptrtoint ptr %arrayidx42.4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx42.4, align 4
  %tobool43.not.4 = icmp eq ptr %72, null
  br i1 %tobool43.not.4, label %if.end40.4.for.inc50.4_crit_edge, label %if.then44.4

if.end40.4.for.inc50.4_crit_edge:                 ; preds = %if.end40.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50.4

if.then44.4:                                      ; preds = %if.end40.4
  call void @__sanitizer_cov_trace_pc() #8
  %group45.4 = getelementptr inbounds %struct.fsnotify_mark, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %group45.4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %group45.4, align 4
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %72, align 4
  %or.4 = or i32 %76, %marks_mask.1.3
  %ignored_mask47.4 = getelementptr inbounds %struct.fsnotify_mark, ptr %72, i32 0, i32 7
  %77 = ptrtoint ptr %ignored_mask47.4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ignored_mask47.4, align 4
  %or48.4 = or i32 %78, %marks_ignored_mask.1.3
  br label %for.inc50.4

for.inc50.4:                                      ; preds = %if.then44.4, %if.end40.4.for.inc50.4_crit_edge, %for.inc50.3.for.inc50.4_crit_edge
  %marks_mask.1.4 = phi i32 [ %or.4, %if.then44.4 ], [ %marks_mask.1.3, %if.end40.4.for.inc50.4_crit_edge ], [ %marks_mask.1.3, %for.inc50.3.for.inc50.4_crit_edge ]
  %marks_ignored_mask.1.4 = phi i32 [ %or48.4, %if.then44.4 ], [ %marks_ignored_mask.1.3, %if.end40.4.for.inc50.4_crit_edge ], [ %marks_ignored_mask.1.3, %for.inc50.3.for.inc50.4_crit_edge ]
  %group.1.4 = phi ptr [ %74, %if.then44.4 ], [ %group.1.3, %if.end40.4.for.inc50.4_crit_edge ], [ %group.1.3, %for.inc50.3.for.inc50.4_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_to_group.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_to_group, %if.then63)) #6
          to label %do.end66 [label %if.then63], !srcloc !53

if.then63:                                        ; preds = %for.inc50.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_to_group.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %group.1.4, i32 noundef %mask, i32 noundef %marks_mask.1.4, i32 noundef %marks_ignored_mask.1.4, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, i32 noundef %cookie) #6
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %for.inc50.4
  %and67 = and i32 %and, %marks_mask.1.4
  %neg = xor i32 %marks_ignored_mask.1.4, -1
  %and68 = and i32 %and67, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.end66.cleanup_crit_edge, label %if.end71

do.end66.cleanup_crit_edge:                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end71:                                         ; preds = %do.end66
  %79 = ptrtoint ptr %group.1.4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %group.1.4, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %tobool72.not = icmp eq ptr %82, null
  br i1 %tobool72.not, label %if.end77, label %if.then73

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %call76 = tail call i32 %82(ptr noundef %group.1.4, i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %file_name, i32 noundef %cookie, ptr noundef %iter_info) #6
  br label %cleanup

if.end77:                                         ; preds = %if.end71
  %83 = ptrtoint ptr %report_mask to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %report_mask, align 4
  %and.i.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end77.fsnotify_iter_inode_mark.exit.i_crit_edge, label %cond.true.i.i

if.end77.fsnotify_iter_inode_mark.exit.i_crit_edge: ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_iter_inode_mark.exit.i

cond.true.i.i:                                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %iter_info to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %iter_info, align 4
  br label %fsnotify_iter_inode_mark.exit.i

fsnotify_iter_inode_mark.exit.i:                  ; preds = %cond.true.i.i, %if.end77.fsnotify_iter_inode_mark.exit.i_crit_edge
  %cond.i.i = phi ptr [ %86, %cond.true.i.i ], [ null, %if.end77.fsnotify_iter_inode_mark.exit.i_crit_edge ]
  %and.i157.i = and i32 %84, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i157.i)
  %tobool.not.i158.i = icmp eq i32 %and.i157.i, 0
  br i1 %tobool.not.i158.i, label %fsnotify_iter_inode_mark.exit.i.fsnotify_iter_parent_mark.exit.i_crit_edge, label %cond.true.i159.i

fsnotify_iter_inode_mark.exit.i.fsnotify_iter_parent_mark.exit.i_crit_edge: ; preds = %fsnotify_iter_inode_mark.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_iter_parent_mark.exit.i

cond.true.i159.i:                                 ; preds = %fsnotify_iter_inode_mark.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 3
  %87 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i.i, align 4
  br label %fsnotify_iter_parent_mark.exit.i

fsnotify_iter_parent_mark.exit.i:                 ; preds = %cond.true.i159.i, %fsnotify_iter_inode_mark.exit.i.fsnotify_iter_parent_mark.exit.i_crit_edge
  %cond.i160.i = phi ptr [ %88, %cond.true.i159.i ], [ null, %fsnotify_iter_inode_mark.exit.i.fsnotify_iter_parent_mark.exit.i_crit_edge ]
  %and.i162.i = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162.i)
  %tobool.not.i163.i = icmp eq i32 %and.i162.i, 0
  br i1 %tobool.not.i163.i, label %fsnotify_iter_parent_mark.exit.i.lor.lhs.false.critedge.i_crit_edge, label %fsnotify_iter_sb_mark.exit.i

fsnotify_iter_parent_mark.exit.i.lor.lhs.false.critedge.i_crit_edge: ; preds = %fsnotify_iter_parent_mark.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.critedge.i

fsnotify_iter_sb_mark.exit.i:                     ; preds = %fsnotify_iter_parent_mark.exit.i
  %arrayidx.i164.i = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 2
  %89 = ptrtoint ptr %arrayidx.i164.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i164.i, align 4
  %tobool.not.i = icmp eq ptr %90, null
  br i1 %tobool.not.i, label %fsnotify_iter_sb_mark.exit.i.lor.lhs.false.critedge.i_crit_edge, label %land.rhs.i

fsnotify_iter_sb_mark.exit.i.lor.lhs.false.critedge.i_crit_edge: ; preds = %fsnotify_iter_sb_mark.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.critedge.i

land.rhs.i:                                       ; preds = %fsnotify_iter_sb_mark.exit.i
  %.b152.i = load i1, ptr @fsnotify_handle_event.__already_done, align 1
  br i1 %.b152.i, label %land.rhs.i.cleanup_crit_edge, label %if.then.i, !prof !52

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @fsnotify_handle_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

lor.lhs.false.critedge.i:                         ; preds = %fsnotify_iter_sb_mark.exit.i.lor.lhs.false.critedge.i_crit_edge, %fsnotify_iter_parent_mark.exit.i.lor.lhs.false.critedge.i_crit_edge
  %and.i168.i = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i168.i)
  %tobool.not.i169.i = icmp eq i32 %and.i168.i, 0
  br i1 %tobool.not.i169.i, label %lor.lhs.false.critedge.i.if.end96.i_crit_edge, label %fsnotify_iter_vfsmount_mark.exit.i

lor.lhs.false.critedge.i.if.end96.i_crit_edge:    ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

fsnotify_iter_vfsmount_mark.exit.i:               ; preds = %lor.lhs.false.critedge.i
  %arrayidx.i170.i = getelementptr [5 x ptr], ptr %iter_info, i32 0, i32 1
  %91 = ptrtoint ptr %arrayidx.i170.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i170.i, align 4
  %tobool41.not.i = icmp eq ptr %92, null
  br i1 %tobool41.not.i, label %fsnotify_iter_vfsmount_mark.exit.i.if.end96.i_crit_edge, label %land.rhs48.i

fsnotify_iter_vfsmount_mark.exit.i.if.end96.i_crit_edge: ; preds = %fsnotify_iter_vfsmount_mark.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

land.rhs48.i:                                     ; preds = %fsnotify_iter_vfsmount_mark.exit.i
  %.b150151.i = load i1, ptr @fsnotify_handle_event.__already_done.6, align 1
  br i1 %.b150151.i, label %land.rhs48.i.cleanup_crit_edge, label %if.then59.i, !prof !52

land.rhs48.i.cleanup_crit_edge:                   ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then59.i:                                      ; preds = %land.rhs48.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @fsnotify_handle_event.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end96.i:                                       ; preds = %fsnotify_iter_vfsmount_mark.exit.i.if.end96.i_crit_edge, %lor.lhs.false.critedge.i.if.end96.i_crit_edge
  %and.i131 = and i32 %mask, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131)
  %tobool97.not.i = icmp eq i32 %and.i131, 0
  br i1 %tobool97.not.i, label %if.end96.i.if.end102.i_crit_edge, label %if.then98.i

if.end96.i.if.end102.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102.i

if.then98.i:                                      ; preds = %if.end96.i
  %93 = zext i32 %data_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %data_type, label %sw.default.i.i [
    i32 3, label %if.then98.i.fsnotify_data_dentry.exit.i_crit_edge
    i32 1, label %sw.bb1.i.i
  ]

if.then98.i.fsnotify_data_dentry.exit.i_crit_edge: ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_data_dentry.exit.i

sw.bb1.i.i:                                       ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #8
  %dentry.i.i = getelementptr inbounds %struct.path, ptr %data, i32 0, i32 1
  %94 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dentry.i.i, align 4
  br label %fsnotify_data_dentry.exit.i

sw.default.i.i:                                   ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_data_dentry.exit.i

fsnotify_data_dentry.exit.i:                      ; preds = %sw.default.i.i, %sw.bb1.i.i, %if.then98.i.fsnotify_data_dentry.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %sw.default.i.i ], [ %95, %sw.bb1.i.i ], [ %data, %if.then98.i.fsnotify_data_dentry.exit.i_crit_edge ]
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i, i32 0, i32 3
  %96 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %d_parent.i, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %d_inode.i, align 8
  %cmp.not.i = icmp eq ptr %99, %dir
  br i1 %cmp.not.i, label %fsnotify_data_dentry.exit.i.if.end102.i_crit_edge, label %fsnotify_data_dentry.exit.i.cleanup_crit_edge

fsnotify_data_dentry.exit.i.cleanup_crit_edge:    ; preds = %fsnotify_data_dentry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fsnotify_data_dentry.exit.i.if.end102.i_crit_edge: ; preds = %fsnotify_data_dentry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102.i

if.end102.i:                                      ; preds = %fsnotify_data_dentry.exit.i.if.end102.i_crit_edge, %if.end96.i.if.end102.i_crit_edge
  %tobool103.not.i = icmp eq ptr %cond.i160.i, null
  br i1 %tobool103.not.i, label %if.end102.i.if.end117.i_crit_edge, label %if.then104.i

if.end102.i.if.end117.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117.i

if.then104.i:                                     ; preds = %if.end102.i
  %100 = ptrtoint ptr %cond.i160.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cond.i160.i, align 4
  %and106.i = and i32 %101, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %if.then104.i.if.end113.i_crit_edge, label %if.then108.i

if.then104.i.if.end113.i_crit_edge:               ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113.i

if.then108.i:                                     ; preds = %if.then104.i
  %call109.i = tail call fastcc i32 @fsnotify_handle_inode_event(ptr noundef %group.1.4, ptr noundef nonnull %cond.i160.i, i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %file_name, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %tobool110.not.i = icmp eq i32 %call109.i, 0
  br i1 %tobool110.not.i, label %if.then108.i.if.end113.i_crit_edge, label %if.then108.i.cleanup_crit_edge

if.then108.i.cleanup_crit_edge:                   ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then108.i.if.end113.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then108.i.if.end113.i_crit_edge, %if.then104.i.if.end113.i_crit_edge
  %tobool114.not.i = icmp eq ptr %cond.i.i, null
  br i1 %tobool114.not.i, label %if.end113.i.cleanup_crit_edge, label %if.end113.i.if.end117.i_crit_edge

if.end113.i.if.end117.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117.i

if.end113.i.cleanup_crit_edge:                    ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end117.i:                                      ; preds = %if.end113.i.if.end117.i_crit_edge, %if.end102.i.if.end117.i_crit_edge
  %and118.i = and i32 %mask, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.i)
  %tobool119.not.i = icmp eq i32 %and118.i, 0
  %and121.i = and i32 %mask, -134217729
  %name.addr.0.i = select i1 %tobool119.not.i, ptr %file_name, ptr null
  %dir.addr.0.i = select i1 %tobool119.not.i, ptr %dir, ptr null
  %call123.i = tail call fastcc i32 @fsnotify_handle_inode_event(ptr noundef %group.1.4, ptr noundef %cond.i.i, i32 noundef %and121.i, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir.addr.0.i, ptr noundef %name.addr.0.i, i32 noundef %cookie) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end117.i, %if.end113.i.cleanup_crit_edge, %if.then108.i.cleanup_crit_edge, %fsnotify_data_dentry.exit.i.cleanup_crit_edge, %if.then59.i, %land.rhs48.i.cleanup_crit_edge, %if.then.i, %land.rhs.i.cleanup_crit_edge, %if.then73, %do.end66.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call76, %if.then73 ], [ 0, %do.end66.cleanup_crit_edge ], [ %call123.i, %if.end117.i ], [ 0, %fsnotify_data_dentry.exit.i.cleanup_crit_edge ], [ 0, %land.rhs48.i.cleanup_crit_edge ], [ 0, %land.rhs.i.cleanup_crit_edge ], [ 0, %if.then59.i ], [ 0, %if.then.i ], [ %call109.i, %if.then108.i.cleanup_crit_edge ], [ 0, %if.end113.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsnotify_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__init_srcu_struct(ptr noundef nonnull @fsnotify_mark_srcu, ptr noundef nonnull @.str.9, ptr noundef nonnull @fsnotify_init.__srcu_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10) #9
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.11, i32 noundef 64, i32 noundef 4, i32 noundef 262144, ptr noundef null) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @fsnotify_mark_connector_cachep to i32))
  store ptr %call1, ptr @fsnotify_mark_connector_cachep, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsnotify_destroy_marks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iget(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_compare_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsnotify_handle_inode_event(ptr nocapture noundef readonly %group, ptr noundef %inode_mark, i32 noundef %mask, ptr noundef %data, i32 noundef %data_type, ptr noundef %dir, ptr noundef %name, i32 noundef %cookie) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_type)
  %cond.i = icmp eq i32 %data_type, 1
  %data..i = select i1 %cond.i, ptr %data, ptr null
  %0 = zext i32 %data_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %data_type, label %sw.default.i [
    i32 2, label %entry.fsnotify_data_inode.exit_crit_edge
    i32 3, label %sw.bb1.i
    i32 1, label %sw.bb2.i
    i32 4, label %sw.bb4.i
  ]

entry.fsnotify_data_inode.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_data_inode.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %data, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i.i, align 8
  br label %fsnotify_data_inode.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dentry.i = getelementptr inbounds %struct.path, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry.i, align 4
  %d_inode.i8.i = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i8.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i8.i, align 8
  br label %fsnotify_data_inode.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inode.i = getelementptr inbounds %struct.fs_error_report, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inode.i, align 4
  br label %fsnotify_data_inode.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fsnotify_data_inode.exit

fsnotify_data_inode.exit:                         ; preds = %sw.default.i, %sw.bb4.i, %sw.bb2.i, %sw.bb1.i, %entry.fsnotify_data_inode.exit_crit_edge
  %retval.0.i = phi ptr [ null, %sw.default.i ], [ %8, %sw.bb4.i ], [ %6, %sw.bb2.i ], [ %2, %sw.bb1.i ], [ %data, %entry.fsnotify_data_inode.exit_crit_edge ]
  %9 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %group, align 4
  %handle_inode_event = getelementptr inbounds %struct.fsnotify_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %handle_inode_event to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handle_inode_event, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %land.rhs, label %if.end41

land.rhs:                                         ; preds = %fsnotify_data_inode.exit
  %.b137 = load i1, ptr @fsnotify_handle_inode_event.__already_done, align 1
  br i1 %.b137, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !52

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @fsnotify_handle_inode_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end41:                                         ; preds = %fsnotify_data_inode.exit
  %tobool43.not = icmp eq ptr %retval.0.i, null
  %tobool45.not = icmp eq ptr %dir, null
  %spec.select = and i1 %tobool45.not, %tobool43.not
  br i1 %spec.select, label %land.rhs55, label %if.end103

land.rhs55:                                       ; preds = %if.end41
  %.b135136 = load i1, ptr @fsnotify_handle_inode_event.__already_done.7, align 1
  br i1 %.b135136, label %land.rhs55.cleanup_crit_edge, label %if.then66, !prof !52

land.rhs55.cleanup_crit_edge:                     ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then66:                                        ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @fsnotify_handle_inode_event.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end103:                                        ; preds = %if.end41
  %13 = ptrtoint ptr %inode_mark to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %inode_mark, align 4
  %and = and i32 %14, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool105.not = icmp eq i32 %and, 0
  %tobool106.not = icmp eq ptr %data..i, null
  %or.cond = or i1 %tobool106.not, %tobool105.not
  br i1 %or.cond, label %if.end103.if.end111_crit_edge, label %land.lhs.true107

if.end103.if.end111_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

land.lhs.true107:                                 ; preds = %if.end103
  %dentry = getelementptr inbounds %struct.path, ptr %data..i, i32 0, i32 1
  %15 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dentry, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.not.i, label %d_unlinked.exit, label %land.lhs.true107.if.end111_crit_edge

land.lhs.true107.if.end111_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

d_unlinked.exit:                                  ; preds = %land.lhs.true107
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_parent.i, align 8
  %cmp.i.not = icmp eq ptr %20, %16
  br i1 %cmp.i.not, label %d_unlinked.exit.if.end111_crit_edge, label %d_unlinked.exit.cleanup_crit_edge

d_unlinked.exit.cleanup_crit_edge:                ; preds = %d_unlinked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

d_unlinked.exit.if.end111_crit_edge:              ; preds = %d_unlinked.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.end111:                                        ; preds = %d_unlinked.exit.if.end111_crit_edge, %land.lhs.true107.if.end111_crit_edge, %if.end103.if.end111_crit_edge
  %and113 = and i32 %mask, 268959743
  %and114 = and i32 %and113, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end111.cleanup_crit_edge, label %if.end117

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end117:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %call119 = tail call i32 %12(ptr noundef %inode_mark, i32 noundef %mask, ptr noundef %retval.0.i, ptr noundef %dir, ptr noundef %name, i32 noundef %cookie) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %if.end111.cleanup_crit_edge, %d_unlinked.exit.cleanup_crit_edge, %if.then66, %land.rhs55.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call119, %if.end117 ], [ 0, %if.then ], [ 0, %if.then66 ], [ 0, %d_unlinked.exit.cleanup_crit_edge ], [ 0, %if.end111.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %land.rhs55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @fsnotify_mark_srcu, i32 0, i32 16), i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__init_srcu_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !37, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__ksymtab___fsnotify_inode_delete, !1, !"__ksymtab___fsnotify_inode_delete", i1 false, i1 false}
!1 = !{!"../fs/notify/fsnotify.c", i32 24, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/notify/fsnotify.c", i32 97, i32 2}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../fs/notify/fsnotify.c", i32 222, i32 3}
!6 = !{ptr @__ksymtab___fsnotify_parent, !7, !"__ksymtab___fsnotify_parent", i1 false, i1 false}
!7 = !{!"../fs/notify/fsnotify.c", i32 240, i32 1}
!8 = !{ptr @__ksymtab_fsnotify, !9, !"__ksymtab_fsnotify", i1 false, i1 false}
!9 = !{!"../fs/notify/fsnotify.c", i32 578, i32 1}
!10 = !{ptr @__initcall__kmod_fsnotify__239_595_fsnotify_init1, !11, !"__initcall__kmod_fsnotify__239_595_fsnotify_init1", i1 false, i1 false}
!11 = !{!"../fs/notify/fsnotify.c", i32 595, i32 1}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../fs/notify/fsnotify.c", i32 388, i32 9}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../fs/notify/fsnotify.c", i32 390, i32 10}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/notify/fsnotify.c", i32 367, i32 2}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @send_to_group.__UNIQUE_ID_ddebug231, !18, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../fs/notify/fsnotify.c", i32 278, i32 6}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../fs/notify/fsnotify.c", i32 279, i32 6}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../fs/notify/fsnotify.c", i32 252, i32 6}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../fs/notify/fsnotify.c", i32 255, i32 6}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../fs/notify/fsnotify.c", i32 400, i32 10}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @fsnotify_init.__srcu_key, !36, !"__srcu_key", i1 false, i1 false}
!36 = !{!"../fs/notify/fsnotify.c", i32 586, i32 8}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/notify/fsnotify.c", i32 588, i32 9}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/notify/fsnotify.c", i32 590, i32 35}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2148899845, i64 2148899850, i64 2148899863, i64 2148899907, i64 2148899941, i64 2148899962}
