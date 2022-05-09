; ModuleID = '/llk/IR_all_yes/fs/nilfs2/file.c_pt.bc'
source_filename = "../fs/nilfs2/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }
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
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.26, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.nilfs_transaction_info = type { i32, ptr, i16, i16 }
%struct.vm_fault = type { %struct.anon.28, i32, ptr, ptr, %union.anon.29, ptr, ptr, ptr, ptr, ptr }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%union.anon.29 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }

@nilfs_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @nilfs_ioctl, ptr null, ptr @nilfs_file_mmap, i32 0, ptr @generic_file_open, ptr null, ptr null, ptr @nilfs_sync_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nilfs_file_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr @nilfs_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nilfs_setattr, ptr null, ptr null, ptr @nilfs_fiemap, ptr null, ptr null, ptr null, ptr null, ptr @nilfs_fileattr_set, ptr @nilfs_fileattr_get, [36 x i8] undef }, align 128
@nilfs_file_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @nilfs_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967282, i64 4294967284, i64 4294967285]
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"nilfs_file_operations\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 131, i32 30 }
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"nilfs_file_vm_ops\00", align 1
@___asan_gen_.13 = private constant [20 x i8] c"../fs/nilfs2/file.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 114, i32 42 }
@___asan_gen_.16 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 49, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 34, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 788, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 260, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 452, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 463, i32 1 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @nilfs_file_operations, ptr @nilfs_file_vm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_file_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_sync_file(ptr nocapture noundef readonly %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @nilfs_inode_dirty(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.then9_crit_edge, label %if.then

entry.if.then9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool1.not = icmp eq i32 %datasync, 0
  %i_sb4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb4, align 4
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @nilfs_construct_dsync_segment(ptr noundef %5, ptr noundef %3, i64 noundef %start, i64 noundef %end) #6
  br label %if.end6

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @nilfs_construct_segment(ptr noundef %5) #6
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %err.0 = phi i32 [ %call3, %if.then2 ], [ %call5, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool8.not = icmp eq i32 %err.0, 0
  br i1 %tobool8.not, label %if.end6.if.then9_crit_edge, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.then9:                                         ; preds = %if.end6.if.then9_crit_edge, %entry.if.then9_crit_edge
  %i_sb7 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb7, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info, align 16
  %ns_mount_opt.i = getelementptr inbounds %struct.the_nilfs, ptr %9, i32 0, i32 39
  %10 = ptrtoint ptr %ns_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ns_mount_opt.i, align 4
  %and.i = and i32 %11, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then9.if.end11_crit_edge, label %lor.lhs.false.i

if.then9.if.end11_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

lor.lhs.false.i:                                  ; preds = %if.then9
  %ns_flushed_device.i = getelementptr inbounds %struct.the_nilfs, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %ns_flushed_device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ns_flushed_device.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not.i = icmp eq i32 %13, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.if.end11_crit_edge

lor.lhs.false.i.if.end11_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %ns_flushed_device.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %ns_flushed_device.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  %ns_bdev.i = getelementptr inbounds %struct.the_nilfs, ptr %9, i32 0, i32 3
  %15 = ptrtoint ptr %ns_bdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ns_bdev.i, align 4
  %call.i = tail call i32 @blkdev_issue_flush(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, -5
  %spec.store.select.i = select i1 %cmp.not.i, i32 -5, i32 0
  br label %if.end11

if.end11:                                         ; preds = %if.end.i, %lor.lhs.false.i.if.end11_crit_edge, %if.then9.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end6.if.end11_crit_edge ], [ %spec.store.select.i, %if.end.i ], [ 0, %lor.lhs.false.i.if.end11_crit_edge ], [ 0, %if.then9.if.end11_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_inode_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_construct_dsync_segment(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_construct_segment(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_file_mmap(ptr noundef %file, ptr nocapture noundef writeonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.file_accessed.exit_crit_edge

entry.file_accessed.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %file_accessed.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #6
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i, %entry.file_accessed.exit_crit_edge
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %2 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nilfs_file_vm_ops, ptr %vm_ops, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_permission(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_fileattr_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_page_mkwrite(ptr noundef %vmf) #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %page2 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %2 = ptrtoint ptr %page2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page2, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #6
  %i_sb = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info, align 16
  %call3 = tail call i32 @nilfs_near_disk_full(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup77_crit_edge, !prof !34

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %14, i32 0, i32 32, i32 2, i32 1
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 49) #6
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %14, i32 0, i32 32, i32 2, i32 1, i32 5
  %15 = tail call ptr @llvm.returnaddress(i32 0) #6
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %16) #6
  %17 = tail call i32 @llvm.read_register.i32(metadata !23) #6
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !35
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 35, ptr noundef nonnull @.str.2) #6
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %21 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool7.not.i.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !34

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !36
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %14, i32 0, i32 32, i32 2, i32 1, i32 1
  %24 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_count.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !23) #6
  %and.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %32, %26
  %33 = inttoptr i32 %add.i.i.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add21.i.i.i = add i32 %35, 1
  store i32 %add21.i.i.i, ptr %33, align 4
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !37
  %and.i.i.i.i.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !38

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #6, !srcloc !39
  br label %sb_start_pagefault.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #6
  br label %sb_start_pagefault.exit

sb_start_pagefault.exit:                          ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !40
  %37 = tail call i32 @llvm.read_register.i32(metadata !23) #6
  %and.i.i.i58.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 788) #6
  %41 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i130 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i130)
  %tobool.not.i.i131 = icmp eq i32 %and.i.i130, 0
  br i1 %tobool.not.i.i131, label %if.end.i.i134, label %if.then.i.i133, !prof !34

if.then.i.i133:                                   ; preds = %sb_start_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i132 = add i32 %43, -1
  br label %_compound_head.exit.i137

if.end.i.i134:                                    ; preds = %sb_start_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i137

_compound_head.exit.i137:                         ; preds = %if.end.i.i134, %if.then.i.i133
  %retval.0.i.i135 = phi i32 [ %sub.i.i132, %if.then.i.i133 ], [ %44, %if.end.i.i134 ]
  %45 = inttoptr i32 %retval.0.i.i135 to ptr
  %46 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i.i.i136 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i136)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i136, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !34

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i137
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.4) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #6, !srcloc !41
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i137
  %call.i.i.i.i138 = tail call zeroext i1 @__kasan_check_write(ptr noundef %45, i32 noundef 4) #6
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %45, align 4
  %and.i.i4.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i139 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i139, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i140_crit_edge

folio_flags.exit.i.i.if.then.i140_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i140

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %45, i32 1, i32 3, i32 1) #6
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #6, !srcloc !42
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !43
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i140_crit_edge

folio_trylock.exit.i.if.then.i140_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i140

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lock_page.exit

if.then.i140:                                     ; preds = %folio_trylock.exit.i.if.then.i140_crit_edge, %folio_flags.exit.i.i.if.then.i140_crit_edge
  tail call void @__folio_lock(ptr noundef %45) #6
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i140, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %mapping = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mapping, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %54 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_mapping, align 8
  %cmp.not = icmp eq ptr %53, %55
  br i1 %cmp.not, label %lor.lhs.false, label %lock_page.exit.if.then13_crit_edge

lock_page.exit.if.then13_crit_edge:               ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

lor.lhs.false:                                    ; preds = %lock_page.exit
  %index.i = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 2
  %56 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %57 to i64
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %lor.lhs.false
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !36
  %and.i.i.i = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i141 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i141, label %if.then.i.i142, label %do.body24.critedge.i.i

if.then.i.i142:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %16) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %16) #6
  tail call void @trace_hardirqs_on() #6
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %16) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %16) #6
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i142
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !37
  %and.i.i.i.i143 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i143)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i143, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !38

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #6, !srcloc !39
  %60 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !45
  %62 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %63, 1
  %tobool.not.i144 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i144, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %61, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %63, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !46
  %64 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !47
  %66 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %67, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %shl.i = shl nuw nsw i64 %conv.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %65)
  %cmp9.not = icmp slt i64 %shl.i, %65
  br i1 %cmp9.not, label %lor.lhs.false10, label %i_size_read.exit.if.then13_crit_edge

i_size_read.exit.if.then13_crit_edge:             ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

lor.lhs.false10:                                  ; preds = %i_size_read.exit
  %68 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %41, align 4
  %and.i.i146 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i146)
  %tobool.not.i.i147 = icmp eq i32 %and.i.i146, 0
  br i1 %tobool.not.i.i147, label %if.end.i.i150, label %if.then.i.i149, !prof !34

if.then.i.i149:                                   ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i148 = add i32 %69, -1
  br label %_compound_head.exit.i154

if.end.i.i150:                                    ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i154

_compound_head.exit.i154:                         ; preds = %if.end.i.i150, %if.then.i.i149
  %retval.0.i.i151 = phi i32 [ %sub.i.i148, %if.then.i.i149 ], [ %70, %if.end.i.i150 ]
  %71 = inttoptr i32 %retval.0.i.i151 to ptr
  %72 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %and.i.i.i.i152 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i152)
  %tobool.not.i.i.i153 = icmp eq i32 %and.i.i.i.i152, 0
  br i1 %tobool.not.i.i.i153, label %folio_flags.exit.i.i156, label %if.then.i.i.i155, !prof !34

if.then.i.i.i155:                                 ; preds = %_compound_head.exit.i154
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %71, ptr noundef nonnull @.str.4) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #6, !srcloc !41
  unreachable

folio_flags.exit.i.i156:                          ; preds = %_compound_head.exit.i154
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %71, align 4
  %77 = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.i.not.i = icmp eq i32 %77, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i156.if.then13_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i156.if.then13_crit_edge:      ; preds = %folio_flags.exit.i.i156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !48
  %78 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %41, align 4
  %and.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !34

if.then13:                                        ; preds = %folio_flags.exit.i.i156.if.then13_crit_edge, %i_size_read.exit.if.then13_crit_edge, %lock_page.exit.if.then13_crit_edge
  tail call void @unlock_page(ptr noundef %3) #6
  br label %out

if.then.i.i:                                      ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %79, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %80, %if.end.i.i ]
  %81 = inttoptr i32 %retval.0.i.i to ptr
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %cmp.i.not.i = icmp eq i32 %83, -1
  %84 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %41, align 4
  %and.i16.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !38

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !34

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i18.i = add i32 %85, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %86, %if.end.i20.i ]
  %87 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %87, ptr noundef nonnull @.str.6) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !34

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i25.i = add i32 %85, -1
  br label %PageMappedToDisk.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %3 to i32
  br label %PageMappedToDisk.exit

PageMappedToDisk.exit:                            ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %88, %if.end.i27.i ]
  %89 = inttoptr i32 %retval.0.i28.i to ptr
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %89, align 4
  %92 = and i32 %91, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool16.not = icmp eq i32 %92, 0
  br i1 %tobool16.not, label %if.end18, label %PageMappedToDisk.exit.mapped_crit_edge

PageMappedToDisk.exit.mapped_crit_edge:           ; preds = %PageMappedToDisk.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %mapped

if.end18:                                         ; preds = %PageMappedToDisk.exit
  %93 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %cmp.i.not.i110 = icmp eq i32 %94, -1
  br i1 %cmp.i.not.i110, label %if.then.i111, label %PagePrivate.exit, !prof !38

if.then.i111:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %3, ptr noundef nonnull @.str.7) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #6, !srcloc !50
  unreachable

PagePrivate.exit:                                 ; preds = %if.end18
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %3, align 4
  %97 = and i32 %96, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool20.not = icmp eq i32 %97, 0
  br i1 %tobool20.not, label %PagePrivate.exit.if.end53_crit_edge, label %if.then21

PagePrivate.exit.if.end53_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then21:                                        ; preds = %PagePrivate.exit
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %99)
  %cmp.i.not.i114 = icmp eq i32 %99, -1
  br i1 %cmp.i.not.i114, label %if.then.i115, label %PagePrivate.exit118, !prof !38

if.then.i115:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %3, ptr noundef nonnull @.str.7) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #6, !srcloc !50
  unreachable

PagePrivate.exit118:                              ; preds = %if.then21
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %3, align 4
  %102 = and i32 %101, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool23.not = icmp eq i32 %102, 0
  br i1 %tobool23.not, label %do.body33, label %do.end39, !prof !38

do.body33:                                        ; preds = %PagePrivate.exit118
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #6, !srcloc !51
  unreachable

do.end39:                                         ; preds = %PagePrivate.exit118
  %private = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 3
  %103 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %private, align 4
  %105 = inttoptr i32 %104 to ptr
  br label %do.body40

do.body40:                                        ; preds = %do.cond45.do.body40_crit_edge, %do.end39
  %bh.0 = phi ptr [ %105, %do.end39 ], [ %110, %do.cond45.do.body40_crit_edge ]
  %106 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %bh.0, align 4
  %108 = and i32 %107, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool42.not = icmp eq i32 %108, 0
  br i1 %tobool42.not, label %do.body40.if.end53_crit_edge, label %do.cond45

do.body40.if.end53_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.cond45:                                        ; preds = %do.body40
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %109 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %b_this_page, align 4
  %cmp46.not = icmp eq ptr %110, %105
  br i1 %cmp46.not, label %if.then49.critedge, label %do.cond45.do.body40_crit_edge

do.cond45.do.body40_crit_edge:                    ; preds = %do.cond45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

if.then49.critedge:                               ; preds = %do.cond45
  %111 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %41, align 4
  %and.i.i121 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i121)
  %tobool.not.i = icmp eq i32 %and.i.i121, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i122, !prof !34

if.then.i122:                                     ; preds = %if.then49.critedge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %3, ptr noundef nonnull @.str.8) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #6, !srcloc !52
  unreachable

do.body7.i:                                       ; preds = %if.then49.critedge
  %113 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %41, align 4
  %and.i31.i = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i123 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i123, label %if.end.i.i126, label %if.then.i.i125, !prof !34

if.then.i.i125:                                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i124 = add i32 %114, -1
  br label %_compound_head.exit.i129

if.end.i.i126:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i129

_compound_head.exit.i129:                         ; preds = %if.end.i.i126, %if.then.i.i125
  %retval.0.i.i127 = phi i32 [ %sub.i.i124, %if.then.i.i125 ], [ %115, %if.end.i.i126 ]
  %116 = inttoptr i32 %retval.0.i.i127 to ptr
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %cmp.i.not.i128 = icmp eq i32 %118, -1
  %119 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %41, align 4
  %and.i32.i = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i128, label %if.then17.i, label %do.end24.i, !prof !38

if.then17.i:                                      ; preds = %_compound_head.exit.i129
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !34

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i34.i = add i32 %120, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %121 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %121, %if.end.i36.i ]
  %122 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %122, ptr noundef nonnull @.str.6) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #6, !srcloc !53
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i129
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !34

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i41.i = add i32 %120, -1
  br label %cleanup

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %123, %if.end.i43.i ]
  %124 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 17, ptr noundef %124) #6
  br label %mapped

if.end53:                                         ; preds = %do.body40.if.end53_crit_edge, %PagePrivate.exit.if.end53_crit_edge
  tail call void @unlock_page(ptr noundef %3) #6
  %125 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i_sb, align 4
  %call55 = call i32 @nilfs_transaction_begin(ptr noundef %126, ptr noundef nonnull %ti, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end64, label %if.end53.out_crit_edge, !prof !34

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end64:                                         ; preds = %if.end53
  %127 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %vm_file, align 4
  %call66 = call i32 @file_update_time(ptr noundef %128) #6
  %call67 = call i32 @block_page_mkwrite(ptr noundef %1, ptr noundef %vmf, ptr noundef nonnull @nilfs_get_block) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end71, label %if.then69

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %i_sb, align 4
  call void @nilfs_transaction_abort(ptr noundef %130) #6
  br label %out

if.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 20
  %131 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %132 to i32
  %sub = sub nsw i32 12, %conv
  %shl = shl nuw nsw i32 1, %sub
  %call72 = call i32 @nilfs_set_file_dirty(ptr noundef %7, i32 noundef %shl) #6
  %133 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i_sb, align 4
  %call74 = call i32 @nilfs_transaction_commit(ptr noundef %134) #6
  br label %mapped

mapped:                                           ; preds = %if.end71, %cleanup, %PageMappedToDisk.exit.mapped_crit_edge
  call void @wait_for_stable_page(ptr noundef %3) #6
  br label %out

out:                                              ; preds = %mapped, %if.then69, %if.end53.out_crit_edge, %if.then13
  %ret.1 = phi i32 [ -14, %if.then13 ], [ 0, %mapped ], [ %call55, %if.end53.out_crit_edge ], [ %call67, %if.then69 ]
  %135 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i157 = getelementptr %struct.super_block, ptr %136, i32 0, i32 32, i32 2, i32 1
  %dep_map.i.i.i158 = getelementptr %struct.super_block, ptr %136, i32 0, i32 32, i32 2, i32 1, i32 5
  call void @lock_release(ptr noundef %dep_map.i.i.i158, i32 noundef %16) #6
  %137 = call i32 @llvm.read_register.i32(metadata !23) #6
  %and.i.i.i.i.i.i159 = and i32 %137, -16384
  %138 = inttoptr i32 %and.i.i.i.i.i.i159 to ptr
  %preempt_count.i.i.i.i.i160 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %preempt_count.i.i.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %preempt_count.i.i.i.i.i160, align 4
  %add.i.i.i.i161 = add i32 %140, 1
  store volatile i32 %add.i.i.i.i161, ptr %preempt_count.i.i.i.i.i160, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !54
  %call.i.i.i.i162 = call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i162)
  %tobool.not.i.i.i.i163 = icmp eq i32 %call.i.i.i.i162, 0
  br i1 %tobool.not.i.i.i.i163, label %land.lhs.true.i.i.i.i166, label %out.rcu_sync_is_idle.exit.i.i.i171_crit_edge

out.rcu_sync_is_idle.exit.i.i.i171_crit_edge:     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_sync_is_idle.exit.i.i.i171

land.lhs.true.i.i.i.i166:                         ; preds = %out
  %call1.i.i.i.i164 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i164)
  %tobool2.not.i.i.i.i165 = icmp eq i32 %call1.i.i.i.i164, 0
  br i1 %tobool2.not.i.i.i.i165, label %land.lhs.true.i.i.i.i166.rcu_sync_is_idle.exit.i.i.i171_crit_edge, label %land.lhs.true3.i.i.i.i168

land.lhs.true.i.i.i.i166.rcu_sync_is_idle.exit.i.i.i171_crit_edge: ; preds = %land.lhs.true.i.i.i.i166
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_sync_is_idle.exit.i.i.i171

land.lhs.true3.i.i.i.i168:                        ; preds = %land.lhs.true.i.i.i.i166
  %.b8.i.i.i.i167 = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i167, label %land.lhs.true3.i.i.i.i168.rcu_sync_is_idle.exit.i.i.i171_crit_edge, label %if.then.i.i.i.i169

land.lhs.true3.i.i.i.i168.rcu_sync_is_idle.exit.i.i.i171_crit_edge: ; preds = %land.lhs.true3.i.i.i.i168
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_sync_is_idle.exit.i.i.i171

if.then.i.i.i.i169:                               ; preds = %land.lhs.true3.i.i.i.i168
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 35, ptr noundef nonnull @.str.2) #6
  br label %rcu_sync_is_idle.exit.i.i.i171

rcu_sync_is_idle.exit.i.i.i171:                   ; preds = %if.then.i.i.i.i169, %land.lhs.true3.i.i.i.i168.rcu_sync_is_idle.exit.i.i.i171_crit_edge, %land.lhs.true.i.i.i.i166.rcu_sync_is_idle.exit.i.i.i171_crit_edge, %out.rcu_sync_is_idle.exit.i.i.i171_crit_edge
  %141 = ptrtoint ptr %add.ptr1.i.i157 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %add.ptr1.i.i157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool7.not.i.i.i.i170 = icmp eq i32 %142, 0
  br i1 %tobool7.not.i.i.i.i170, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !34

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i171
  %143 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !36
  %read_count.i.i.i172 = getelementptr %struct.super_block, ptr %136, i32 0, i32 32, i32 2, i32 1, i32 1
  %144 = ptrtoint ptr %read_count.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %read_count.i.i.i172, align 4
  %146 = ptrtoint ptr %145 to i32
  %147 = call i32 @llvm.read_register.i32(metadata !23) #6
  %and.i.i.i.i173 = and i32 %147, -16384
  %148 = inttoptr i32 %and.i.i.i.i173 to ptr
  %cpu.i.i.i174 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %cpu.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cpu.i.i.i174, align 4
  %arrayidx.i.i.i175 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %150
  %151 = ptrtoint ptr %arrayidx.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx.i.i.i175, align 4
  %add.i.i.i176 = add i32 %152, %146
  %153 = inttoptr i32 %add.i.i.i176 to ptr
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 4
  %add17.i.i.i = add i32 %155, -1
  store i32 %add17.i.i.i, ptr %153, align 4
  %156 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !37
  %and.i.i.i.i.i177 = and i32 %156, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i177)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i177, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !38

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %143) #6, !srcloc !39
  br label %sb_end_pagefault.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !55
  %157 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !36
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %136, i32 0, i32 32, i32 2, i32 1, i32 1
  %158 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %read_count75.i.i.i, align 4
  %160 = ptrtoint ptr %159 to i32
  %161 = call i32 @llvm.read_register.i32(metadata !23) #6
  %and.i122.i.i.i = and i32 %161, -16384
  %162 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %164
  %165 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %166, %160
  %167 = inttoptr i32 %add80.i.i.i to ptr
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %167, align 4
  %add81.i.i.i = add i32 %169, -1
  store i32 %add81.i.i.i, ptr %167, align 4
  %170 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !37
  %and.i.i123.i.i.i = and i32 %170, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !38

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %157) #6, !srcloc !39
  %writer.i.i.i = getelementptr %struct.super_block, ptr %136, i32 0, i32 32, i32 2, i32 1, i32 2
  %call111.i.i.i = call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #6
  br label %sb_end_pagefault.exit

sb_end_pagefault.exit:                            ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !56
  %171 = call i32 @llvm.read_register.i32(metadata !23) #6
  %and.i.i.i120.i.i.i = and i32 %171, -16384
  %172 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i178 = add i32 %174, -1
  store volatile i32 %sub.i.i.i.i178, ptr %preempt_count.i.i121.i.i.i, align 4
  %175 = zext i32 %ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.1, label %if.end7.i [
    i32 0, label %sb_end_pagefault.exit.cleanup77_crit_edge
    i32 -14, label %sb_end_pagefault.exit.if.then3.i_crit_edge
    i32 -11, label %sb_end_pagefault.exit.if.then3.i_crit_edge188
    i32 -12, label %if.then6.i
  ]

sb_end_pagefault.exit.if.then3.i_crit_edge188:    ; preds = %sb_end_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

sb_end_pagefault.exit.if.then3.i_crit_edge:       ; preds = %sb_end_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

sb_end_pagefault.exit.cleanup77_crit_edge:        ; preds = %sb_end_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

if.then3.i:                                       ; preds = %sb_end_pagefault.exit.if.then3.i_crit_edge, %sb_end_pagefault.exit.if.then3.i_crit_edge188
  br label %cleanup77

if.then6.i:                                       ; preds = %sb_end_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

if.end7.i:                                        ; preds = %sb_end_pagefault.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup77

cleanup77:                                        ; preds = %if.end7.i, %if.then6.i, %if.then3.i, %sb_end_pagefault.exit.cleanup77_crit_edge, %entry.cleanup77_crit_edge
  %retval.0 = phi i32 [ 2, %entry.cleanup77_crit_edge ], [ 256, %if.then3.i ], [ 1, %if.then6.i ], [ 2, %if.end7.i ], [ 512, %sb_end_pagefault.exit.cleanup77_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_near_disk_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_transaction_begin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_page_mkwrite(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_transaction_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_set_file_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_transaction_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_stable_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !16, !18, !20, !22}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @nilfs_file_operations, !1, !"nilfs_file_operations", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/file.c", i32 131, i32 30}
!2 = !{ptr @nilfs_file_inode_operations, !3, !"nilfs_file_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/nilfs2/file.c", i32 147, i32 31}
!4 = !{ptr @nilfs_file_vm_ops, !5, !"nilfs_file_vm_ops", i1 false, i1 false}
!5 = !{!"../fs/nilfs2/file.c", i32 114, i32 42}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/page-flags.h", i32 463, i32 1}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!22 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2154884606}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2152337239}
!36 = !{i64 1058777, i64 1058838}
!37 = !{i64 1061509}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 1061794}
!40 = !{i64 2152346089}
!41 = !{i64 2150562842, i64 2150563333, i64 2150562879, i64 2150562935, i64 2150562969, i64 2150562993, i64 2150563034, i64 2150563055, i64 2150563083, i64 2150563117}
!42 = !{i64 2148662955, i64 2148662987, i64 2148663016, i64 2148663050, i64 2148663081, i64 2148663104}
!43 = !{i64 2148752060}
!44 = !{i64 2152496928}
!45 = !{i64 2152496770}
!46 = !{i64 2152497098}
!47 = !{i64 2150082912}
!48 = !{i64 2151312734}
!49 = !{i64 2151106250, i64 2151106741, i64 2151106287, i64 2151106343, i64 2151106377, i64 2151106401, i64 2151106442, i64 2151106463, i64 2151106491, i64 2151106525}
!50 = !{i64 2151021548, i64 2151022039, i64 2151021585, i64 2151021641, i64 2151021675, i64 2151021699, i64 2151021740, i64 2151021761, i64 2151021789, i64 2151021823}
!51 = !{i64 2154914992, i64 2154915472, i64 2154915029, i64 2154915085, i64 2154915119, i64 2154915143, i64 2154915184, i64 2154915205, i64 2154915233, i64 2154915267}
!52 = !{i64 2151114892, i64 2151115065, i64 2151115080, i64 2151115132, i64 2151115191, i64 2151115215, i64 2151115256, i64 2151115277, i64 2151115305, i64 2151115337}
!53 = !{i64 2151115767, i64 2151115940, i64 2151115955, i64 2151116007, i64 2151116066, i64 2151116090, i64 2151116131, i64 2151116152, i64 2151116180, i64 2151116212}
!54 = !{i64 2152356043}
!55 = !{i64 2152365538}
!56 = !{i64 2152375015}
