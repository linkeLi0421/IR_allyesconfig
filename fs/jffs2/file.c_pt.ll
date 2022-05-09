; ModuleID = '/llk/IR_all_yes/fs/jffs2/file.c_pt.bc'
source_filename = "../fs/jffs2/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.81 }
%struct.atomic_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
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
%struct.page = type { i32, %union.anon.26, %union.anon.39, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.39 = type { %struct.atomic_t }
%struct.jffs2_raw_inode = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jmode_t, %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, %struct.jint32_t, i8, i8, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t, [0 x i8] }
%struct.jmode_t = type { i32 }
%struct.jint16_t = type { i16 }
%struct.jint32_t = type { i32 }
%struct.jffs2_inode_cache = type { ptr, ptr, i8, i8, i16, i32, ptr, ptr, i32 }
%struct.jffs2_sb_info = type { ptr, i32, i32, i32, ptr, %struct.completion, %struct.completion, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, ptr, %struct.spinlock, %struct.mutex, i32, ptr, ptr, i32, i32, ptr, %struct.rw_semaphore, %struct.delayed_work, ptr, i32, ptr, %struct.jffs2_mount_opts, i32, i32, [57 x %struct.list_head], %struct.list_head, %struct.list_head, ptr, ptr, %struct.rw_semaphore, i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.jffs2_mount_opts = type { i8, i32, i8, i32 }

@jffs2_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @jffs2_ioctl, ptr null, ptr @generic_file_readonly_mmap, i32 0, ptr @generic_file_open, ptr null, ptr null, ptr @jffs2_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@jffs2_file_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr @jffs2_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jffs2_setattr, ptr null, ptr @jffs2_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @jffs2_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@jffs2_file_address_operations = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @jffs2_readpage, ptr null, ptr null, ptr null, ptr null, ptr @jffs2_write_begin, ptr @jffs2_write_end, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"jffs2_file_operations\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 50, i32 30 }
@___asan_gen_.12 = private unnamed_addr constant [30 x i8] c"jffs2_file_address_operations\00", align 1
@___asan_gen_.13 = private constant [19 x i8] c"../fs/jffs2/file.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 73, i32 39 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 414, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 44, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 678, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 260, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 717, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @jffs2_file_operations, ptr @jffs2_file_address_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_file_address_operations to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_fsync(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %call = tail call i32 @file_write_and_wait_range(ptr noundef %filp, i64 noundef %start, i64 noundef %end) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #6
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %call1 = tail call i32 @jffs2_flush_wbuf_gc(ptr noundef %7, i32 noundef %9) #6
  tail call void @up_write(ptr noundef %i_rwsem.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flush_wbuf_gc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_readonly_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_readpage(ptr nocapture noundef readnone %filp, ptr noundef %pg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %pg, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -120
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #6
  %4 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapping, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call fastcc i32 @jffs2_do_readpage_nolock(ptr noundef %7, ptr noundef %pg) #6
  tail call void @unlock_page(ptr noundef %pg) #6
  tail call void @mutex_unlock(ptr noundef %add.ptr) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_write_begin(ptr nocapture noundef readnone %filp, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr nocapture noundef writeonly %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  %ri = alloca %struct.jffs2_raw_inode, align 2
  %alloc_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -120
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %6 = lshr i64 %pos, 12
  %conv = trunc i64 %6 to i32
  %shl = shl i32 %conv, 12
  %conv1 = zext i32 %shl to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv1)
  %cmp = icmp slt i64 %8, %conv1
  br i1 %cmp, label %if.then, label %entry.if.end95_crit_edge

entry.if.end95_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %ri) #6
  %9 = call ptr @memset(ptr %ri, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloc_len) #6
  %10 = ptrtoint ptr %alloc_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %alloc_len, align 4, !annotation !27
  %call = call i32 @jffs2_reserve_space(ptr noundef %5, i32 noundef 68, ptr noundef nonnull %alloc_len, i32 noundef 0, i32 noundef 18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup.thread_crit_edge

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #6
  %11 = getelementptr inbounds i8, ptr %ri, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 60)
  %13 = ptrtoint ptr %ri to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 6533, ptr %ri, align 2
  %nodetype = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 1
  %14 = ptrtoint ptr %nodetype to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -8190, ptr %nodetype, align 2
  %totlen = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 2
  %15 = ptrtoint ptr %totlen to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 68, ptr %totlen, align 2
  %hdr_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 3
  %call12 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %ri, i32 noundef 8) #9
  %16 = ptrtoint ptr %hdr_crc to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %call12, ptr %hdr_crc, align 2
  %ino = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 4
  %inocache = getelementptr i8, ptr %1, i32 -8
  %17 = ptrtoint ptr %inocache to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %inocache, align 8
  %ino15 = getelementptr inbounds %struct.jffs2_inode_cache, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %ino15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ino15, align 4
  %21 = ptrtoint ptr %ino to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %ino, align 2
  %version = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 5
  %highest_version = getelementptr i8, ptr %1, i32 -28
  %22 = ptrtoint ptr %highest_version to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %highest_version, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %highest_version, align 4
  %24 = ptrtoint ptr %version to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %inc, ptr %version, align 2
  %mode = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 6
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %1, align 8
  %conv19 = zext i16 %26 to i32
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %conv19, ptr %mode, align 2
  %uid = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 7
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 53
  %30 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %33 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = call i32 @from_kuid(ptr noundef %31, [1 x i32] %33) #6
  %conv23 = trunc i32 %call1.i to i16
  %34 = ptrtoint ptr %uid to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv23, ptr %uid, align 2
  %gid = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i177 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 53
  %37 = ptrtoint ptr %s_user_ns.i.i177 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_user_ns.i.i177, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack.i178 = load i32, ptr %i_gid.i, align 8
  %40 = insertvalue [1 x i32] undef, i32 %.unpack.i178, 0
  %call1.i179 = call i32 @from_kgid(ptr noundef %38, [1 x i32] %40) #6
  %conv27 = trunc i32 %call1.i179 to i16
  %41 = ptrtoint ptr %gid to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv27, ptr %gid, align 2
  %isize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 9
  %42 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_size, align 8
  %conv31 = trunc i64 %43 to i32
  %44 = call i32 @llvm.umax.i32(i32 %shl, i32 %conv31)
  %45 = ptrtoint ptr %isize to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %isize, align 2
  %atime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 10
  %ctime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 12
  %mtime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 11
  %call37 = call i64 @ktime_get_real_seconds() #6
  %46 = call i64 @llvm.smax.i64(i64 %call37, i64 0)
  %47 = call i64 @llvm.umin.i64(i64 %46, i64 4294967295)
  %48 = trunc i64 %47 to i32
  %49 = ptrtoint ptr %mtime to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %48, ptr %mtime, align 2
  %50 = ptrtoint ptr %ctime to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %48, ptr %ctime, align 2
  %51 = ptrtoint ptr %atime to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %48, ptr %atime, align 2
  %offset = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 13
  %52 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %i_size, align 8
  %conv56 = trunc i64 %53 to i32
  %54 = ptrtoint ptr %offset to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %conv56, ptr %offset, align 2
  %dsize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 15
  %conv61 = sub i32 %shl, %conv56
  %55 = ptrtoint ptr %dsize to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %conv61, ptr %dsize, align 2
  %csize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 14
  %56 = ptrtoint ptr %csize to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 0, ptr %csize, align 2
  %compr = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 16
  %57 = ptrtoint ptr %compr to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %compr, align 2
  %node_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 20
  %call66 = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %ri, i32 noundef 60) #9
  %58 = ptrtoint ptr %node_crc to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %call66, ptr %node_crc, align 2
  %data_crc = getelementptr inbounds %struct.jffs2_raw_inode, ptr %ri, i32 0, i32 19
  %59 = ptrtoint ptr %data_crc to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 0, ptr %data_crc, align 2
  %call69 = call ptr @jffs2_write_dnode(ptr noundef %5, ptr noundef %add.ptr, ptr noundef nonnull %ri, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then71, label %if.end74

if.then71:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %call69 to i32
  br label %cleanup.thread.sink.split

if.end74:                                         ; preds = %if.end
  %call75 = call i32 @jffs2_add_full_dnode_to_inode(ptr noundef %5, ptr noundef %add.ptr, ptr noundef %call69) #6
  %metadata = getelementptr i8, ptr %1, i32 -20
  %61 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %metadata, align 4
  %tobool76.not = icmp eq ptr %62, null
  br i1 %tobool76.not, label %if.end74.if.end81_crit_edge, label %if.then77

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %5, ptr noundef %64) #6
  %65 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %metadata, align 4
  call void @jffs2_free_full_dnode(ptr noundef %66) #6
  %67 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %metadata, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end74.if.end81_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool82.not = icmp eq i32 %call75, 0
  br i1 %tobool82.not, label %cleanup, label %do.end86

do.end86:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %call69 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call69, align 4
  call void @jffs2_mark_node_obsolete(ptr noundef %5, ptr noundef %69) #6
  call void @jffs2_free_full_dnode(ptr noundef %call69) #6
  br label %cleanup.thread.sink.split

cleanup.thread.sink.split:                        ; preds = %do.end86, %if.then71
  %ret.0.ph.ph = phi i32 [ %60, %if.then71 ], [ %call75, %do.end86 ]
  call void @jffs2_complete_reservation(ptr noundef %5) #6
  call void @mutex_unlock(ptr noundef %add.ptr) #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.then.cleanup.thread_crit_edge
  %ret.0.ph = phi i32 [ %call, %if.then.cleanup.thread_crit_edge ], [ %ret.0.ph.ph, %cleanup.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloc_len) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %ri) #6
  br label %cleanup114

cleanup:                                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  call void @jffs2_complete_reservation(ptr noundef %5) #6
  %70 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv1, ptr %i_size, align 8
  call void @mutex_unlock(ptr noundef %add.ptr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloc_len) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %ri) #6
  br label %if.end95

if.end95:                                         ; preds = %cleanup, %entry.if.end95_crit_edge
  %alloc_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %5, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %alloc_sem, i32 noundef 0) #6
  %call96 = call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef %conv, i32 noundef %flags) #6
  %tobool97.not = icmp eq ptr %call96, null
  br i1 %tobool97.not, label %if.end95.release_sem_crit_edge, label %if.end99

if.end95.release_sem_crit_edge:                   ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_sem

if.end99:                                         ; preds = %if.end95
  %71 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call96, ptr %pagep, align 4
  %72 = getelementptr inbounds %struct.page, ptr %call96, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %and.i.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !28

if.then.i.i:                                      ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %74, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %call96 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %75, %if.end.i.i ]
  %76 = inttoptr i32 %retval.0.i.i to ptr
  %77 = getelementptr inbounds %struct.page, ptr %76, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 4
  %and.i.i.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !28

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %76, ptr noundef nonnull @.str.3) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #6, !srcloc !29
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %76, align 4
  %82 = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.i.not.i = icmp eq i32 %82, 0
  br i1 %tobool.i.not.i, label %if.then102, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  br label %release_sem

if.then102:                                       ; preds = %folio_flags.exit.i.i
  call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #6
  %call104 = call fastcc i32 @jffs2_do_readpage_nolock(ptr noundef %1, ptr noundef nonnull %call96)
  call void @mutex_unlock(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool106.not = icmp eq i32 %call104, 0
  br i1 %tobool106.not, label %if.then102.release_sem_crit_edge, label %if.then107

if.then102.release_sem_crit_edge:                 ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_sem

if.then107:                                       ; preds = %if.then102
  call void @unlock_page(ptr noundef nonnull %call96) #6
  %83 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %72, align 4
  %and.i.i180 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i180)
  %tobool.not.i.i181 = icmp eq i32 %and.i.i180, 0
  br i1 %tobool.not.i.i181, label %if.end.i.i184, label %if.then.i.i183, !prof !28

if.then.i.i183:                                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i182 = add i32 %84, -1
  br label %_compound_head.exit.i186

if.end.i.i184:                                    ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %call96 to i32
  br label %_compound_head.exit.i186

_compound_head.exit.i186:                         ; preds = %if.end.i.i184, %if.then.i.i183
  %retval.0.i.i185 = phi i32 [ %sub.i.i182, %if.then.i.i183 ], [ %85, %if.end.i.i184 ]
  %86 = inttoptr i32 %retval.0.i.i185 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %86, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %87 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i.i.i.i = icmp eq i32 %88, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !31

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i186
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %86, ptr noundef nonnull @.str.5) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !32
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i186
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %89 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #6, !srcloc !34
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %89, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@jffs2_write_begin, %if.then.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !36

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %86, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.release_sem_crit_edge

folio_put_testzero.exit.i.i.release_sem_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_sem

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__put_page(ptr noundef %86) #6
  br label %release_sem

release_sem:                                      ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.release_sem_crit_edge, %if.then102.release_sem_crit_edge, %PageUptodate.exit, %if.end95.release_sem_crit_edge
  %ret.2 = phi i32 [ 0, %PageUptodate.exit ], [ 0, %if.then102.release_sem_crit_edge ], [ -12, %if.end95.release_sem_crit_edge ], [ %call104, %folio_put_testzero.exit.i.i.release_sem_crit_edge ], [ %call104, %if.then.i4.i ]
  call void @mutex_unlock(ptr noundef %alloc_sem) #6
  br label %cleanup114

cleanup114:                                       ; preds = %release_sem, %cleanup.thread
  %retval.0 = phi i32 [ %ret.2, %release_sem ], [ %ret.0.ph, %cleanup.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jffs2_write_end(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %pg, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  %writtenlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -120
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %6 = trunc i64 %pos to i32
  %conv = and i32 %6, 4095
  %add = add i32 %conv, %copied
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %writtenlen) #6
  %7 = ptrtoint ptr %writtenlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %writtenlen, align 4
  %8 = getelementptr inbounds %struct.page, ptr %pg, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i214 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i214)
  %tobool.not.i.i215 = icmp eq i32 %and.i.i214, 0
  br i1 %tobool.not.i.i215, label %if.end.i.i218, label %if.then.i.i217, !prof !28

if.then.i.i217:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i216 = add i32 %10, -1
  br label %_compound_head.exit.i220

if.end.i.i218:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit.i220

_compound_head.exit.i220:                         ; preds = %if.end.i.i218, %if.then.i.i217
  %retval.0.i.i219 = phi i32 [ %sub.i.i216, %if.then.i.i217 ], [ %11, %if.end.i.i218 ]
  %12 = inttoptr i32 %retval.0.i.i219 to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !28

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i220
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.3) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #6, !srcloc !29
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i220
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %do.body6, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  %and1 = and i32 %6, 4092
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp = icmp eq i32 %add, 4096
  %spec.select = select i1 %cmp, i32 0, i32 %and1
  %call17 = tail call ptr @jffs2_alloc_raw_inode() #6
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end22, label %if.end23

do.body6:                                         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 271, 0\0A.popsection", ""() #6, !srcloc !37
  unreachable

do.end22:                                         ; preds = %PageUptodate.exit
  tail call void @unlock_page(ptr noundef %pg) #6
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %8, align 4
  %and.i.i221 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i221)
  %tobool.not.i.i222 = icmp eq i32 %and.i.i221, 0
  br i1 %tobool.not.i.i222, label %if.end.i.i225, label %if.then.i.i224, !prof !28

if.then.i.i224:                                   ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i223 = add i32 %20, -1
  br label %_compound_head.exit.i227

if.end.i.i225:                                    ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit.i227

_compound_head.exit.i227:                         ; preds = %if.end.i.i225, %if.then.i.i224
  %retval.0.i.i226 = phi i32 [ %sub.i.i223, %if.then.i.i224 ], [ %21, %if.end.i.i225 ]
  %22 = inttoptr i32 %retval.0.i.i226 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %23 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !31

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i227
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.5) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !32
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i227
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #6, !srcloc !34
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@jffs2_write_end, %if.then.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !36

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %22, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__put_page(ptr noundef %22) #6
  br label %cleanup

if.end23:                                         ; preds = %PageUptodate.exit
  %ino = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call17, i32 0, i32 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino, align 8
  %28 = ptrtoint ptr %ino to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %ino, align 1
  %mode = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call17, i32 0, i32 6
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %1, align 8
  %conv25 = zext i16 %30 to i32
  %31 = ptrtoint ptr %mode to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %conv25, ptr %mode, align 1
  %uid = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call17, i32 0, i32 7
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 53
  %34 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %37 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %35, [1 x i32] %37) #6
  %conv28 = trunc i32 %call1.i to i16
  %38 = ptrtoint ptr %uid to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %conv28, ptr %uid, align 1
  %gid = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call17, i32 0, i32 8
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i229 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 53
  %41 = ptrtoint ptr %s_user_ns.i.i229 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_user_ns.i.i229, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.unpack.i230 = load i32, ptr %i_gid.i, align 8
  %44 = insertvalue [1 x i32] undef, i32 %.unpack.i230, 0
  %call1.i231 = tail call i32 @from_kgid(ptr noundef %42, [1 x i32] %44) #6
  %conv32 = trunc i32 %call1.i231 to i16
  %45 = ptrtoint ptr %gid to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %conv32, ptr %gid, align 1
  %isize = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call17, i32 0, i32 9
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %46 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %i_size, align 8
  %conv35 = trunc i64 %47 to i32
  %48 = ptrtoint ptr %isize to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %conv35, ptr %isize, align 1
  %atime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call17, i32 0, i32 10
  %ctime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call17, i32 0, i32 12
  %mtime = getelementptr inbounds %struct.jffs2_raw_inode, ptr %call17, i32 0, i32 11
  %call38 = tail call i64 @ktime_get_real_seconds() #6
  %49 = tail call i64 @llvm.smax.i64(i64 %call38, i64 0)
  %50 = tail call i64 @llvm.umin.i64(i64 %49, i64 4294967295)
  %51 = trunc i64 %50 to i32
  %52 = ptrtoint ptr %mtime to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %mtime, align 1
  %53 = ptrtoint ptr %ctime to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %51, ptr %ctime, align 1
  %54 = ptrtoint ptr %atime to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %51, ptr %atime, align 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 44) #6
  %55 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pg, align 4
  %shr.i.i = lshr i32 %56, 30
  %57 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.end23.if.then.i232_crit_edge [
    i32 2, label %if.end23.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end23.if.else.i_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.end23.if.then.i232_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i232

is_highmem_idx.exit.i:                            ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %58 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp2.i.not.i = icmp eq i32 %58, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i232_crit_edge

is_highmem_idx.exit.i.if.then.i232_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i232

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i232:                                     ; preds = %is_highmem_idx.exit.i.if.then.i232_crit_edge, %if.end23.if.then.i232_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %pg) #6
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end23.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %pg) #6
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i232
  %call51 = tail call ptr @page_address(ptr noundef %pg) #6
  %add.ptr52 = getelementptr i8, ptr %call51, i32 %spec.select
  %index = getelementptr inbounds %struct.page, ptr %pg, i32 0, i32 1, i32 0, i32 2
  %59 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %index, align 4
  %shl = shl i32 %60, 12
  %add53 = or i32 %shl, %spec.select
  %sub = sub i32 %add, %spec.select
  %call54 = call i32 @jffs2_write_inode_range(ptr noundef %5, ptr noundef %add.ptr, ptr noundef nonnull %call17, ptr noundef %add.ptr52, i32 noundef %add53, i32 noundef %sub, ptr noundef nonnull %writtenlen) #6
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 55) #6
  %61 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pg, align 4
  %shr.i.i233 = lshr i32 %62, 30
  %63 = zext i32 %shr.i.i233 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %shr.i.i233, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i235
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %kunmap.exit

is_highmem_idx.exit.i235:                         ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %64 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp2.i.not.i234 = icmp eq i32 %64, 2
  br i1 %cmp2.i.not.i234, label %is_highmem_idx.exit.i235.if.end.i_crit_edge, label %is_highmem_idx.exit.i235.kunmap.exit_crit_edge

is_highmem_idx.exit.i235.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i235
  call void @__sanitizer_cov_trace_pc() #8
  br label %kunmap.exit

is_highmem_idx.exit.i235.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i235
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i235.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %pg) #6
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i235.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %kunmap.exit.if.end57_crit_edge, label %if.then56

kunmap.exit.if.end57_crit_edge:                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then56:                                        ; preds = %kunmap.exit
  %65 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !28

if.then.i:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %pg, ptr noundef nonnull @.str.2) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #6, !srcloc !38
  unreachable

do.body7.i:                                       ; preds = %if.then56
  %67 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %8, align 4
  %and.i31.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !28

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %68, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %69, %if.end.i.i ]
  %70 = inttoptr i32 %retval.0.i.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp.i.not.i = icmp eq i32 %72, -1
  %73 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %8, align 4
  %and.i32.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !31

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !28

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i34.i = add i32 %74, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %75, %if.end.i36.i ]
  %76 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %76, ptr noundef nonnull @.str) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !28

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i41.i = add i32 %74, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %pg to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %77, %if.end.i43.i ]
  %78 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %78) #6
  br label %if.end57

if.end57:                                         ; preds = %SetPageError.exit, %kunmap.exit.if.end57_crit_edge
  %79 = ptrtoint ptr %writtenlen to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %writtenlen, align 4
  %sub58 = sub nsw i32 %conv, %spec.select
  %81 = call i32 @llvm.usub.sat.i32(i32 %80, i32 %sub58)
  %82 = ptrtoint ptr %writtenlen to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %writtenlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %sub58)
  %tobool67.not.not = icmp ugt i32 %80, %sub58
  br i1 %tobool67.not.not, label %if.then68, label %if.end57.if.end85_crit_edge

if.end57.if.end85_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then68:                                        ; preds = %if.end57
  %83 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %i_size, align 8
  %conv70 = zext i32 %81 to i64
  %add71 = add i64 %conv70, %pos
  call void @__sanitizer_cov_trace_cmp8(i64 %84, i64 %add71)
  %cmp72 = icmp slt i64 %84, %add71
  br i1 %cmp72, label %if.then74, label %if.then68.if.end85_crit_edge

if.then68.if.end85_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then74:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %add71, ptr %i_size, align 8
  %add79 = add i64 %add71, 511
  %shr = ashr i64 %add79, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %86 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %shr, ptr %i_blocks, align 8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %87 = ptrtoint ptr %ctime to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %ctime, align 1
  %conv83 = zext i32 %88 to i64
  %89 = ptrtoint ptr %i_mtime to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv83, ptr %i_mtime, align 8
  %.compoundliteral80.sroa.2.0.i_mtime.sroa_idx = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16, i32 1
  %90 = ptrtoint ptr %.compoundliteral80.sroa.2.0.i_mtime.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %.compoundliteral80.sroa.2.0.i_mtime.sroa_idx, align 8
  %91 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  br label %if.end85

if.end85:                                         ; preds = %if.then74, %if.then68.if.end85_crit_edge, %if.end57.if.end85_crit_edge
  call void @jffs2_free_raw_inode(ptr noundef nonnull %call17) #6
  %92 = ptrtoint ptr %writtenlen to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %writtenlen, align 4
  %add86 = add i32 %93, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add86, i32 %add)
  %cmp87 = icmp ult i32 %add86, %add
  br i1 %cmp87, label %do.end92, label %if.end85.do.end96_crit_edge

if.end85.do.end96_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end96

do.end92:                                         ; preds = %if.end85
  %94 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %8, align 4
  %and.i.i163 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i163)
  %tobool.not.i164 = icmp eq i32 %and.i.i163, 0
  br i1 %tobool.not.i164, label %do.body7.i168, label %if.then.i165, !prof !28

if.then.i165:                                     ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %pg, ptr noundef nonnull @.str.2) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #6, !srcloc !38
  unreachable

do.body7.i168:                                    ; preds = %do.end92
  %96 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %8, align 4
  %and.i31.i166 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i166)
  %tobool.not.i.i167 = icmp eq i32 %and.i31.i166, 0
  br i1 %tobool.not.i.i167, label %if.end.i.i171, label %if.then.i.i170, !prof !28

if.then.i.i170:                                   ; preds = %do.body7.i168
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i169 = add i32 %97, -1
  br label %_compound_head.exit.i176

if.end.i.i171:                                    ; preds = %do.body7.i168
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit.i176

_compound_head.exit.i176:                         ; preds = %if.end.i.i171, %if.then.i.i170
  %retval.0.i.i172 = phi i32 [ %sub.i.i169, %if.then.i.i170 ], [ %98, %if.end.i.i171 ]
  %99 = inttoptr i32 %retval.0.i.i172 to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %101)
  %cmp.i.not.i173 = icmp eq i32 %101, -1
  %102 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %8, align 4
  %and.i32.i174 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i174)
  %tobool.not.i33.i175 = icmp eq i32 %and.i32.i174, 0
  br i1 %cmp.i.not.i173, label %if.then17.i177, label %do.end24.i183, !prof !31

if.then17.i177:                                   ; preds = %_compound_head.exit.i176
  br i1 %tobool.not.i33.i175, label %if.end.i36.i180, label %if.then.i35.i179, !prof !28

if.then.i35.i179:                                 ; preds = %if.then17.i177
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i34.i178 = add i32 %103, -1
  br label %_compound_head.exit38.i182

if.end.i36.i180:                                  ; preds = %if.then17.i177
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit38.i182

_compound_head.exit38.i182:                       ; preds = %if.end.i36.i180, %if.then.i35.i179
  %retval.0.i37.i181 = phi i32 [ %sub.i34.i178, %if.then.i35.i179 ], [ %104, %if.end.i36.i180 ]
  %105 = inttoptr i32 %retval.0.i37.i181 to ptr
  call void @dump_page(ptr noundef %105, ptr noundef nonnull @.str) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

do.end24.i183:                                    ; preds = %_compound_head.exit.i176
  br i1 %tobool.not.i33.i175, label %if.end.i43.i186, label %if.then.i42.i185, !prof !28

if.then.i42.i185:                                 ; preds = %do.end24.i183
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i41.i184 = add i32 %103, -1
  br label %SetPageError.exit188

if.end.i43.i186:                                  ; preds = %do.end24.i183
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %pg to i32
  br label %SetPageError.exit188

SetPageError.exit188:                             ; preds = %if.end.i43.i186, %if.then.i42.i185
  %retval.0.i44.i187 = phi i32 [ %sub.i41.i184, %if.then.i42.i185 ], [ %106, %if.end.i43.i186 ]
  %107 = inttoptr i32 %retval.0.i44.i187 to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %107) #6
  %108 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %8, align 4
  %and.i.i189 = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i189)
  %tobool.not.i190 = icmp eq i32 %and.i.i189, 0
  br i1 %tobool.not.i190, label %do.body7.i194, label %if.then.i191, !prof !28

if.then.i191:                                     ; preds = %SetPageError.exit188
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %pg, ptr noundef nonnull @.str.2) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #6, !srcloc !40
  unreachable

do.body7.i194:                                    ; preds = %SetPageError.exit188
  %110 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %8, align 4
  %and.i31.i192 = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i192)
  %tobool.not.i.i193 = icmp eq i32 %and.i31.i192, 0
  br i1 %tobool.not.i.i193, label %if.end.i.i197, label %if.then.i.i196, !prof !28

if.then.i.i196:                                   ; preds = %do.body7.i194
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i195 = add i32 %111, -1
  br label %_compound_head.exit.i202

if.end.i.i197:                                    ; preds = %do.body7.i194
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit.i202

_compound_head.exit.i202:                         ; preds = %if.end.i.i197, %if.then.i.i196
  %retval.0.i.i198 = phi i32 [ %sub.i.i195, %if.then.i.i196 ], [ %112, %if.end.i.i197 ]
  %113 = inttoptr i32 %retval.0.i.i198 to ptr
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %115)
  %cmp.i.not.i199 = icmp eq i32 %115, -1
  %116 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %8, align 4
  %and.i32.i200 = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i200)
  %tobool.not.i33.i201 = icmp eq i32 %and.i32.i200, 0
  br i1 %cmp.i.not.i199, label %if.then17.i203, label %do.end24.i209, !prof !31

if.then17.i203:                                   ; preds = %_compound_head.exit.i202
  br i1 %tobool.not.i33.i201, label %if.end.i36.i206, label %if.then.i35.i205, !prof !28

if.then.i35.i205:                                 ; preds = %if.then17.i203
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i34.i204 = add i32 %117, -1
  br label %_compound_head.exit38.i208

if.end.i36.i206:                                  ; preds = %if.then17.i203
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit38.i208

_compound_head.exit38.i208:                       ; preds = %if.end.i36.i206, %if.then.i35.i205
  %retval.0.i37.i207 = phi i32 [ %sub.i34.i204, %if.then.i35.i205 ], [ %118, %if.end.i36.i206 ]
  %119 = inttoptr i32 %retval.0.i37.i207 to ptr
  call void @dump_page(ptr noundef %119, ptr noundef nonnull @.str) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #6, !srcloc !41
  unreachable

do.end24.i209:                                    ; preds = %_compound_head.exit.i202
  br i1 %tobool.not.i33.i201, label %if.end.i43.i212, label %if.then.i42.i211, !prof !28

if.then.i42.i211:                                 ; preds = %do.end24.i209
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i41.i210 = add i32 %117, -1
  br label %ClearPageUptodate.exit

if.end.i43.i212:                                  ; preds = %do.end24.i209
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %pg to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i212, %if.then.i42.i211
  %retval.0.i44.i213 = phi i32 [ %sub.i41.i210, %if.then.i42.i211 ], [ %120, %if.end.i43.i212 ]
  %121 = inttoptr i32 %retval.0.i44.i213 to ptr
  call void @_clear_bit(i32 noundef 2, ptr noundef %121) #6
  br label %do.end96

do.end96:                                         ; preds = %ClearPageUptodate.exit, %if.end85.do.end96_crit_edge
  call void @unlock_page(ptr noundef %pg) #6
  %122 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %8, align 4
  %and.i.i236 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i236)
  %tobool.not.i.i237 = icmp eq i32 %and.i.i236, 0
  br i1 %tobool.not.i.i237, label %if.end.i.i240, label %if.then.i.i239, !prof !28

if.then.i.i239:                                   ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i238 = add i32 %123, -1
  br label %_compound_head.exit.i245

if.end.i.i240:                                    ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit.i245

_compound_head.exit.i245:                         ; preds = %if.end.i.i240, %if.then.i.i239
  %retval.0.i.i241 = phi i32 [ %sub.i.i238, %if.then.i.i239 ], [ %124, %if.end.i.i240 ]
  %125 = inttoptr i32 %retval.0.i.i241 to ptr
  %_refcount.i.i.i.i.i242 = getelementptr inbounds %struct.page, ptr %125, i32 0, i32 3
  %call.i.i.i.i.i.i.i243 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i242, i32 noundef 4) #6
  %126 = ptrtoint ptr %_refcount.i.i.i.i.i242 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %_refcount.i.i.i.i.i242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.i.i.i.i244 = icmp eq i32 %127, 0
  br i1 %cmp.i.i.i.i244, label %if.then.i.i.i.i246, label %do.end5.i.i.i.i250, !prof !31

if.then.i.i.i.i246:                               ; preds = %_compound_head.exit.i245
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %125, ptr noundef nonnull @.str.5) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !32
  unreachable

do.end5.i.i.i.i250:                               ; preds = %_compound_head.exit.i245
  %call.i.i.i10.i.i.i.i247 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i242, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i242, i32 1, i32 3, i32 1) #6
  %128 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i242, ptr %_refcount.i.i.i.i.i242, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i242) #6, !srcloc !34
  %asmresult.i.i.i.i.i.i.i.i.i.i248 = extractvalue { i32, i32 } %128, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i248)
  %cmp.i.i.i.i.i.i.i249 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i248, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@jffs2_write_end, %if.then.i.i.i.i.i252)) #6
          to label %folio_put_testzero.exit.i.i253 [label %if.then.i.i.i.i.i252], !srcloc !36

if.then.i.i.i.i.i252:                             ; preds = %do.end5.i.i.i.i250
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i251 = zext i1 %cmp.i.i.i.i.i.i.i249 to i32
  call void @__page_ref_mod_and_test(ptr noundef %125, i32 noundef -1, i32 noundef %conv.i.i.i.i.i251) #6
  br label %folio_put_testzero.exit.i.i253

folio_put_testzero.exit.i.i253:                   ; preds = %if.then.i.i.i.i.i252, %do.end5.i.i.i.i250
  br i1 %cmp.i.i.i.i.i.i.i249, label %if.then.i4.i254, label %folio_put_testzero.exit.i.i253.put_page.exit255_crit_edge

folio_put_testzero.exit.i.i253.put_page.exit255_crit_edge: ; preds = %folio_put_testzero.exit.i.i253
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_page.exit255

if.then.i4.i254:                                  ; preds = %folio_put_testzero.exit.i.i253
  call void @__sanitizer_cov_trace_pc() #8
  call void @__put_page(ptr noundef %125) #6
  br label %put_page.exit255

put_page.exit255:                                 ; preds = %if.then.i4.i254, %folio_put_testzero.exit.i.i253.put_page.exit255_crit_edge
  %129 = ptrtoint ptr %writtenlen to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %writtenlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp97.not = icmp eq i32 %130, 0
  %call54. = select i1 %cmp97.not, i32 %call54, i32 %130
  br label %cleanup

cleanup:                                          ; preds = %put_page.exit255, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54., %put_page.exit255 ], [ -12, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ -12, %if.then.i4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %writtenlen) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_do_readpage_unlock(ptr noundef %data, ptr noundef %pg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @jffs2_do_readpage_nolock(ptr noundef %data, ptr noundef %pg)
  tail call void @unlock_page(ptr noundef %pg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jffs2_do_readpage_nolock(ptr noundef %inode, ptr noundef %pg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %4 = getelementptr inbounds %struct.page, ptr %pg, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !28

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %4, align 4
  %and.i16.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !31

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !28

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i18.i = add i32 %12, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %13, %if.end.i20.i ]
  %14 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #6, !srcloc !42
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !28

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i25.i = add i32 %12, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %pg to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %15, %if.end.i27.i ]
  %16 = inttoptr i32 %retval.0.i28.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body5, label %do.end12, !prof !31

do.body5:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #6, !srcloc !43
  unreachable

do.end12:                                         ; preds = %PageLocked.exit
  %add.ptr = getelementptr i8, ptr %inode, i32 -120
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 44) #6
  %19 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pg, align 4
  %shr.i.i = lshr i32 %20, 30
  %21 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %shr.i.i, label %do.end12.if.then.i90_crit_edge [
    i32 2, label %do.end12.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

do.end12.if.else.i_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

do.end12.if.then.i90_crit_edge:                   ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i90

is_highmem_idx.exit.i:                            ; preds = %do.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %22 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp2.i.not.i = icmp eq i32 %22, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i90_crit_edge

is_highmem_idx.exit.i.if.then.i90_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i90

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i90:                                      ; preds = %is_highmem_idx.exit.i.if.then.i90_crit_edge, %do.end12.if.then.i90_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %pg) #6
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %do.end12.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %pg) #6
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i90
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i90 ]
  %index = getelementptr inbounds %struct.page, ptr %pg, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index, align 4
  %shl = shl i32 %24, 12
  %call14 = tail call i32 @jffs2_read_inode_range(ptr noundef %3, ptr noundef %add.ptr, ptr noundef %addr.0.i, i32 noundef %shl, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %kmap.exit
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %4, align 4
  %and.i.i31 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31)
  %tobool.not.i = icmp eq i32 %and.i.i31, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i32, !prof !28

if.then.i32:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %pg, ptr noundef nonnull @.str.2) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #6, !srcloc !40
  unreachable

do.body7.i:                                       ; preds = %if.then16
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %4, align 4
  %and.i31.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i33 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i33, label %if.end.i.i36, label %if.then.i.i35, !prof !28

if.then.i.i35:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i34 = add i32 %28, -1
  br label %_compound_head.exit.i39

if.end.i.i36:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit.i39

_compound_head.exit.i39:                          ; preds = %if.end.i.i36, %if.then.i.i35
  %retval.0.i.i37 = phi i32 [ %sub.i.i34, %if.then.i.i35 ], [ %29, %if.end.i.i36 ]
  %30 = inttoptr i32 %retval.0.i.i37 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i38 = icmp eq i32 %32, -1
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %4, align 4
  %and.i32.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i38, label %if.then17.i, label %do.end24.i, !prof !31

if.then17.i:                                      ; preds = %_compound_head.exit.i39
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !28

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i34.i = add i32 %34, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %35, %if.end.i36.i ]
  %36 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #6, !srcloc !41
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i39
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !28

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i41.i = add i32 %34, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %pg to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %37, %if.end.i43.i ]
  %38 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %38) #6
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %4, align 4
  %and.i.i40 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i40)
  %tobool.not.i41 = icmp eq i32 %and.i.i40, 0
  br i1 %tobool.not.i41, label %do.body7.i45, label %if.then.i42, !prof !28

if.then.i42:                                      ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %pg, ptr noundef nonnull @.str.2) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #6, !srcloc !38
  unreachable

do.body7.i45:                                     ; preds = %ClearPageUptodate.exit
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %4, align 4
  %and.i31.i43 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i43)
  %tobool.not.i.i44 = icmp eq i32 %and.i31.i43, 0
  br i1 %tobool.not.i.i44, label %if.end.i.i48, label %if.then.i.i47, !prof !28

if.then.i.i47:                                    ; preds = %do.body7.i45
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i46 = add i32 %42, -1
  br label %_compound_head.exit.i53

if.end.i.i48:                                     ; preds = %do.body7.i45
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit.i53

_compound_head.exit.i53:                          ; preds = %if.end.i.i48, %if.then.i.i47
  %retval.0.i.i49 = phi i32 [ %sub.i.i46, %if.then.i.i47 ], [ %43, %if.end.i.i48 ]
  %44 = inttoptr i32 %retval.0.i.i49 to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp.i.not.i50 = icmp eq i32 %46, -1
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %4, align 4
  %and.i32.i51 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i51)
  %tobool.not.i33.i52 = icmp eq i32 %and.i32.i51, 0
  br i1 %cmp.i.not.i50, label %if.then17.i54, label %do.end24.i60, !prof !31

if.then17.i54:                                    ; preds = %_compound_head.exit.i53
  br i1 %tobool.not.i33.i52, label %if.end.i36.i57, label %if.then.i35.i56, !prof !28

if.then.i35.i56:                                  ; preds = %if.then17.i54
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i34.i55 = add i32 %48, -1
  br label %_compound_head.exit38.i59

if.end.i36.i57:                                   ; preds = %if.then17.i54
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit38.i59

_compound_head.exit38.i59:                        ; preds = %if.end.i36.i57, %if.then.i35.i56
  %retval.0.i37.i58 = phi i32 [ %sub.i34.i55, %if.then.i35.i56 ], [ %49, %if.end.i36.i57 ]
  %50 = inttoptr i32 %retval.0.i37.i58 to ptr
  tail call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable

do.end24.i60:                                     ; preds = %_compound_head.exit.i53
  br i1 %tobool.not.i33.i52, label %if.end.i43.i63, label %if.then.i42.i62, !prof !28

if.then.i42.i62:                                  ; preds = %do.end24.i60
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i41.i61 = add i32 %48, -1
  br label %SetPageError.exit

if.end.i43.i63:                                   ; preds = %do.end24.i60
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %pg to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i63, %if.then.i42.i62
  %retval.0.i44.i64 = phi i32 [ %sub.i41.i61, %if.then.i42.i62 ], [ %51, %if.end.i43.i63 ]
  %52 = inttoptr i32 %retval.0.i44.i64 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %52) #6
  br label %if.end17

if.else:                                          ; preds = %kmap.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !44
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %4, align 4
  %and.i.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !28

if.then.i.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %pg, ptr noundef nonnull @.str.3) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #6, !srcloc !29
  unreachable

SetPageUptodate.exit:                             ; preds = %if.else
  tail call void @_set_bit(i32 noundef 2, ptr noundef %pg) #6
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %4, align 4
  %and.i.i65 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i65)
  %tobool.not.i66 = icmp eq i32 %and.i.i65, 0
  br i1 %tobool.not.i66, label %do.body7.i70, label %if.then.i67, !prof !28

if.then.i67:                                      ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %pg, ptr noundef nonnull @.str.2) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #6, !srcloc !45
  unreachable

do.body7.i70:                                     ; preds = %SetPageUptodate.exit
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %4, align 4
  %and.i31.i68 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i68)
  %tobool.not.i.i69 = icmp eq i32 %and.i31.i68, 0
  br i1 %tobool.not.i.i69, label %if.end.i.i73, label %if.then.i.i72, !prof !28

if.then.i.i72:                                    ; preds = %do.body7.i70
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i71 = add i32 %58, -1
  br label %_compound_head.exit.i78

if.end.i.i73:                                     ; preds = %do.body7.i70
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit.i78

_compound_head.exit.i78:                          ; preds = %if.end.i.i73, %if.then.i.i72
  %retval.0.i.i74 = phi i32 [ %sub.i.i71, %if.then.i.i72 ], [ %59, %if.end.i.i73 ]
  %60 = inttoptr i32 %retval.0.i.i74 to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp.i.not.i75 = icmp eq i32 %62, -1
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %4, align 4
  %and.i32.i76 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i76)
  %tobool.not.i33.i77 = icmp eq i32 %and.i32.i76, 0
  br i1 %cmp.i.not.i75, label %if.then17.i79, label %do.end24.i85, !prof !31

if.then17.i79:                                    ; preds = %_compound_head.exit.i78
  br i1 %tobool.not.i33.i77, label %if.end.i36.i82, label %if.then.i35.i81, !prof !28

if.then.i35.i81:                                  ; preds = %if.then17.i79
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i34.i80 = add i32 %64, -1
  br label %_compound_head.exit38.i84

if.end.i36.i82:                                   ; preds = %if.then17.i79
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %pg to i32
  br label %_compound_head.exit38.i84

_compound_head.exit38.i84:                        ; preds = %if.end.i36.i82, %if.then.i35.i81
  %retval.0.i37.i83 = phi i32 [ %sub.i34.i80, %if.then.i35.i81 ], [ %65, %if.end.i36.i82 ]
  %66 = inttoptr i32 %retval.0.i37.i83 to ptr
  tail call void @dump_page(ptr noundef %66, ptr noundef nonnull @.str) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #6, !srcloc !46
  unreachable

do.end24.i85:                                     ; preds = %_compound_head.exit.i78
  br i1 %tobool.not.i33.i77, label %if.end.i43.i88, label %if.then.i42.i87, !prof !28

if.then.i42.i87:                                  ; preds = %do.end24.i85
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i41.i86 = add i32 %64, -1
  br label %ClearPageError.exit

if.end.i43.i88:                                   ; preds = %do.end24.i85
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %pg to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i88, %if.then.i42.i87
  %retval.0.i44.i89 = phi i32 [ %sub.i41.i86, %if.then.i42.i87 ], [ %67, %if.end.i43.i88 ]
  %68 = inttoptr i32 %retval.0.i44.i89 to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %68) #6
  br label %if.end17

if.end17:                                         ; preds = %ClearPageError.exit, %SetPageError.exit
  tail call void @flush_dcache_page(ptr noundef %pg) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 55) #6
  %69 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pg, align 4
  %shr.i.i91 = lshr i32 %70, 30
  %71 = zext i32 %shr.i.i91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %shr.i.i91, label %if.end17.kunmap.exit_crit_edge [
    i32 2, label %if.end17.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i93
  ]

if.end17.if.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end17.kunmap.exit_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %kunmap.exit

is_highmem_idx.exit.i93:                          ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %72 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp2.i.not.i92 = icmp eq i32 %72, 2
  br i1 %cmp2.i.not.i92, label %is_highmem_idx.exit.i93.if.end.i_crit_edge, label %is_highmem_idx.exit.i93.kunmap.exit_crit_edge

is_highmem_idx.exit.i93.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %kunmap.exit

is_highmem_idx.exit.i93.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i93.if.end.i_crit_edge, %if.end17.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %pg) #6
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i93.kunmap.exit_crit_edge, %if.end17.kunmap.exit_crit_edge
  ret i32 %call14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_read_inode_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_reserve_space(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_write_dnode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_complete_reservation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_add_full_dnode_to_inode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_mark_node_obsolete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_full_dnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_alloc_raw_inode() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_write_inode_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_raw_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @jffs2_file_operations, !1, !"jffs2_file_operations", i1 false, i1 false}
!1 = !{!"../fs/jffs2/file.c", i32 50, i32 30}
!2 = !{ptr @jffs2_file_inode_operations, !3, !"jffs2_file_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/jffs2/file.c", i32 65, i32 31}
!4 = !{ptr @jffs2_file_address_operations, !5, !"jffs2_file_address_operations", i1 false, i1 false}
!5 = !{!"../fs/jffs2/file.c", i32 73, i32 39}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/page-flags.h", i32 678, i32 1}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/mm.h", i32 717, i32 2}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2150568682, i64 2150569173, i64 2150568719, i64 2150568775, i64 2150568809, i64 2150568833, i64 2150568874, i64 2150568895, i64 2150568923, i64 2150568957}
!30 = !{i64 2151318574}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2153157859, i64 2153158342, i64 2153157896, i64 2153157952, i64 2153157986, i64 2153158010, i64 2153158051, i64 2153158072, i64 2153158100, i64 2153158134}
!33 = !{i64 2148305854}
!34 = !{i64 2148220587, i64 2148220619, i64 2148220648, i64 2148220682, i64 2148220713, i64 2148220736}
!35 = !{i64 2148306083}
!36 = !{i64 2148699217, i64 2148699222, i64 2148699235, i64 2148699279, i64 2148699313, i64 2148699334}
!37 = !{i64 2153944130, i64 2153944610, i64 2153944167, i64 2153944223, i64 2153944257, i64 2153944281, i64 2153944322, i64 2153944343, i64 2153944371, i64 2153944405}
!38 = !{i64 2150630272, i64 2150630445, i64 2150630460, i64 2150630512, i64 2150630571, i64 2150630595, i64 2150630636, i64 2150630657, i64 2150630685, i64 2150630717}
!39 = !{i64 2150631147, i64 2150631320, i64 2150631335, i64 2150631387, i64 2150631446, i64 2150631470, i64 2150631511, i64 2150631532, i64 2150631560, i64 2150631592}
!40 = !{i64 2151327558, i64 2151327731, i64 2151327746, i64 2151327798, i64 2151327857, i64 2151327881, i64 2151327922, i64 2151327943, i64 2151327971, i64 2151328003}
!41 = !{i64 2151328433, i64 2151328606, i64 2151328621, i64 2151328673, i64 2151328732, i64 2151328756, i64 2151328797, i64 2151328818, i64 2151328846, i64 2151328878}
!42 = !{i64 2150576115, i64 2150576606, i64 2150576152, i64 2150576208, i64 2150576242, i64 2150576266, i64 2150576307, i64 2150576328, i64 2150576356, i64 2150576390}
!43 = !{i64 2153894797, i64 2153895276, i64 2153894834, i64 2153894890, i64 2153894924, i64 2153894948, i64 2153894989, i64 2153895010, i64 2153895038, i64 2153895072}
!44 = !{i64 2151319645}
!45 = !{i64 2150639074, i64 2150639247, i64 2150639262, i64 2150639314, i64 2150639373, i64 2150639397, i64 2150639438, i64 2150639459, i64 2150639487, i64 2150639519}
!46 = !{i64 2150639949, i64 2150640122, i64 2150640137, i64 2150640189, i64 2150640248, i64 2150640272, i64 2150640313, i64 2150640334, i64 2150640362, i64 2150640394}
