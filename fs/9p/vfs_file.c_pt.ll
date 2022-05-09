; ModuleID = '/llk/IR_all_yes/fs/9p/vfs_file.c_pt.bc'
source_filename = "../fs/9p/vfs_file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.101, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.102, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.103, ptr, %struct.address_space, %struct.list_head, %union.anon.104, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.101 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.102 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.103 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { ptr }
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
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.99, %struct.list_head, %struct.list_head, %union.anon.100 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.99 = type { %struct.list_head }
%union.anon.100 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.v9fs_session_info = type { i8, i8, i16, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, ptr, %struct.list_head, %struct.rw_semaphore, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.15, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.p9_wstat = type { i16, i16, i32, %struct.p9_qid, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t }
%struct.p9_qid = type { i8, i32, i64 }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.23 }
%union.anon.23 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.p9_getlock = type { i8, i64, i64, i32, ptr }
%struct.p9_client = type { %struct.spinlock, i32, i8, ptr, i32, ptr, ptr, %union.anon.109, %struct.idr, %struct.idr, [65 x i8] }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.17, i32, ptr, ptr, %union.anon.18, ptr, ptr, ptr, ptr, ptr }
%struct.anon.17 = type { ptr, i32, i32, i32 }
%union.anon.18 = type { i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.95, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.95 = type { %struct.atomic_t }
%struct.p9_flock = type { i8, i32, i64, i64, i32, ptr }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }

@__func__.v9fs_file_open = private unnamed_addr constant [15 x i8] c"v9fs_file_open\00", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inode: %p file: %p\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.v9fs_file_fsync_dotl = private unnamed_addr constant [21 x i8] c"v9fs_file_fsync_dotl\00", align 1
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"filp %p datasync %x\0A\00", [43 x i8] zeroinitializer }, align 32
@v9fs_cached_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_file_mmap, i32 0, ptr @v9fs_file_open, ptr null, ptr @v9fs_dir_release, ptr @v9fs_file_fsync, ptr null, ptr @v9fs_file_lock, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@v9fs_cached_file_operations_dotl = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @generic_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_file_mmap, i32 0, ptr @v9fs_file_open, ptr null, ptr @v9fs_dir_release, ptr @v9fs_file_fsync_dotl, ptr null, ptr @v9fs_file_lock_dotl, ptr null, ptr null, ptr null, ptr @v9fs_file_flock_dotl, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@v9fs_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @v9fs_file_read_iter, ptr @v9fs_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_readonly_mmap, i32 0, ptr @v9fs_file_open, ptr null, ptr @v9fs_dir_release, ptr @v9fs_file_fsync, ptr null, ptr @v9fs_file_lock, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@v9fs_file_operations_dotl = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @v9fs_file_read_iter, ptr @v9fs_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_readonly_mmap, i32 0, ptr @v9fs_file_open, ptr null, ptr @v9fs_dir_release, ptr @v9fs_file_fsync_dotl, ptr null, ptr @v9fs_file_lock_dotl, ptr null, ptr null, ptr null, ptr @v9fs_file_flock_dotl, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@v9fs_mmap_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @v9fs_mmap_file_read_iter, ptr @v9fs_mmap_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_mmap_file_mmap, i32 0, ptr @v9fs_file_open, ptr null, ptr @v9fs_dir_release, ptr @v9fs_file_fsync, ptr null, ptr @v9fs_file_lock, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@v9fs_mmap_file_operations_dotl = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @v9fs_mmap_file_read_iter, ptr @v9fs_mmap_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_mmap_file_mmap, i32 0, ptr @v9fs_file_open, ptr null, ptr @v9fs_dir_release, ptr @v9fs_file_fsync_dotl, ptr null, ptr @v9fs_file_lock_dotl, ptr null, ptr null, ptr null, ptr @v9fs_file_flock_dotl, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@v9fs_file_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @v9fs_vm_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__func__.v9fs_vm_page_mkwrite = private unnamed_addr constant [21 x i8] c"v9fs_vm_page_mkwrite\00", align 1
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"folio %p fid %lx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.v9fs_file_fsync = private unnamed_addr constant [16 x i8] c"v9fs_file_fsync\00", align 1
@__func__.v9fs_file_lock = private unnamed_addr constant [15 x i8] c"v9fs_file_lock\00", align 1
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"filp: %p lock: %p\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.v9fs_file_lock_dotl = private unnamed_addr constant [20 x i8] c"v9fs_file_lock_dotl\00", align 1
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"filp: %p cmd:%d lock: %p name: %pD\0A\00", [60 x i8] zeroinitializer }, align 32
@v9fs_file_do_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/9p/vfs_file.c\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unknown lock status code: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.v9fs_file_flock_dotl = private unnamed_addr constant [21 x i8] c"v9fs_file_flock_dotl\00", align 1
@__func__.v9fs_file_read_iter = private unnamed_addr constant [20 x i8] c"v9fs_file_read_iter\00", align 1
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"count %zu offset %lld\0A\00", [41 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@v9fs_mmap_file_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr @v9fs_mmap_vm_close, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @v9fs_vm_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__func__.v9fs_mmap_vm_close = private unnamed_addr constant [19 x i8] c"v9fs_mmap_vm_close\00", align 1
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"9p VMA close, %p, flushing\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 7, i64 13, i64 14]
@__sancov_gen_cov_switch_values.13 = internal global [8 x i64] [i64 6, i64 32, i64 5, i64 6, i64 7, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 6, i64 7, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 7, i64 13, i64 14]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 7, i64 13, i64 14]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 50, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 465, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [28 x i8] c"v9fs_cached_file_operations\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 631, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant [33 x i8] c"v9fs_cached_file_operations_dotl\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 644, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"v9fs_file_operations\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 658, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant [26 x i8] c"v9fs_file_operations_dotl\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 671, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"v9fs_mmap_file_operations\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 685, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant [31 x i8] c"v9fs_mmap_file_operations_dotl\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 698, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"v9fs_file_vm_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 617, i32 42 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 535, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 260, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 797, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 120, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 305, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 209, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 370, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 271, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"v9fs_mmap_file_vm_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 623, i32 42 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [20 x i8] c"../fs/9p/vfs_file.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 610, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @v9fs_cached_file_operations, ptr @v9fs_cached_file_operations_dotl, ptr @v9fs_file_operations, ptr @v9fs_file_operations_dotl, ptr @v9fs_mmap_file_operations, ptr @v9fs_mmap_file_operations_dotl, ptr @v9fs_file_vm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @v9fs_mmap_file_vm_ops, ptr @.str.12], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_cached_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_cached_file_operations_dotl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_file_operations_dotl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_mmap_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_mmap_file_operations_dotl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_file_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_mmap_file_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_file_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_file_open, ptr noundef nonnull @.str, ptr noundef %inode, ptr noundef %file) #6
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -128
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %f_flags4 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags4, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @v9fs_open_to_dotl_flags(i32 noundef %8) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = and i8 %5, 1
  %and.i111 = zext i8 %9 to i32
  %call6 = tail call i32 @v9fs_uflags2omode(i32 noundef %8, i32 noundef %and.i111) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %omode.0 = phi i32 [ %call3, %if.then ], [ %call6, %if.else ]
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then8:                                         ; preds = %if.end
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and.i.i = and i32 %15, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then8.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !64

if.then8.file_dentry.exit_crit_edge:              ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %16 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 8
  %18 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %21(ptr noundef %13, ptr noundef %17) #6
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %if.then8.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %13, %if.then8.file_dentry.exit_crit_edge ]
  %call.i = tail call ptr @v9fs_fid_lookup(ptr noundef %retval.0.i.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %file_dentry.exit.if.end14_crit_edge, label %lor.lhs.false.i

file_dentry.exit.if.end14_crit_edge:              ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

lor.lhs.false.i:                                  ; preds = %file_dentry.exit
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lor.lhs.false.i.v9fs_fid_clone.exit_crit_edge, label %clone_fid.exit.i

lor.lhs.false.i.v9fs_fid_clone.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v9fs_fid_clone.exit

clone_fid.exit.i:                                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i.i = tail call ptr @p9_client_walk(ptr noundef nonnull %call.i, i16 noundef zeroext 0, ptr noundef null, i32 noundef 1) #6
  %call3.i = tail call i32 @p9_client_clunk(ptr noundef nonnull %call.i) #6
  br label %v9fs_fid_clone.exit

v9fs_fid_clone.exit:                              ; preds = %clone_fid.exit.i, %lor.lhs.false.i.v9fs_fid_clone.exit_crit_edge
  %retval.0.i = phi ptr [ %call1.i.i, %clone_fid.exit.i ], [ %call.i, %lor.lhs.false.i.v9fs_fid_clone.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %v9fs_fid_clone.exit.if.end14_crit_edge

v9fs_fid_clone.exit.if.end14_crit_edge:           ; preds = %v9fs_fid_clone.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %v9fs_fid_clone.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end14:                                         ; preds = %v9fs_fid_clone.exit.if.end14_crit_edge, %file_dentry.exit.if.end14_crit_edge
  %retval.0.i128 = phi ptr [ %retval.0.i, %v9fs_fid_clone.exit.if.end14_crit_edge ], [ null, %file_dentry.exit.if.end14_crit_edge ]
  %call15 = tail call i32 @p9_client_open(ptr noundef %retval.0.i128, i32 noundef %omode.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 @p9_client_clunk(ptr noundef %retval.0.i128) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %f_flags19 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %23 = ptrtoint ptr %f_flags19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %f_flags19, align 4
  %and = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end18.if.end29_crit_edge, label %land.lhs.true

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end18
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %3, align 4
  %27 = and i8 %26, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %if.then26, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i64 @generic_file_llseek(ptr noundef %file, i64 noundef 0, i32 noundef 2) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true.if.end29_crit_edge, %if.end18.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %fid.0 = phi ptr [ %11, %if.end.if.end29_crit_edge ], [ %retval.0.i128, %land.lhs.true.if.end29_crit_edge ], [ %retval.0.i128, %if.then26 ], [ %retval.0.i128, %if.end18.if.end29_crit_edge ]
  %29 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %fid.0, ptr %private_data, align 4
  %v_mutex = getelementptr i8, ptr %inode, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %v_mutex, i32 noundef 0) #6
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cache, align 4
  %32 = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %switch = icmp eq i32 %32, 2
  br i1 %switch, label %land.lhs.true34, label %if.end29.if.end50_crit_edge

if.end29.if.end50_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

land.lhs.true34:                                  ; preds = %if.end29
  %writeback_fid35 = getelementptr i8, ptr %inode, i32 -100
  %33 = ptrtoint ptr %writeback_fid35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %writeback_fid35, align 4
  %tobool36.not = icmp eq ptr %34, null
  br i1 %tobool36.not, label %land.lhs.true37, label %land.lhs.true34.if.end50_crit_edge

land.lhs.true34.if.end50_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %f_flags38 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %35 = ptrtoint ptr %f_flags38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %f_flags38, align 4
  %and39 = and i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %cmp40.not = icmp eq i32 %and39, 0
  br i1 %cmp40.not, label %land.lhs.true37.if.end50_crit_edge, label %if.then41

land.lhs.true37.if.end50_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then41:                                        ; preds = %land.lhs.true37
  %dentry.i114 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %dentry.i114 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dentry.i114, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %and.i.i115 = and i32 %40, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i115)
  %tobool.not.i.i116 = icmp eq i32 %and.i.i115, 0
  br i1 %tobool.not.i.i116, label %if.then41.file_dentry.exit123_crit_edge, label %if.then.i.i121, !prof !64

if.then41.file_dentry.exit123_crit_edge:          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %file_dentry.exit123

if.then.i.i121:                                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %f_inode.i.i117 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %41 = ptrtoint ptr %f_inode.i.i117 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %f_inode.i.i117, align 8
  %d_op.i.i118 = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 8
  %43 = ptrtoint ptr %d_op.i.i118 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d_op.i.i118, align 8
  %d_real.i.i119 = getelementptr inbounds %struct.dentry_operations, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %d_real.i.i119 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d_real.i.i119, align 16
  %call.i.i120 = tail call ptr %46(ptr noundef %38, ptr noundef %42) #6
  br label %file_dentry.exit123

file_dentry.exit123:                              ; preds = %if.then.i.i121, %if.then41.file_dentry.exit123_crit_edge
  %retval.0.i.i122 = phi ptr [ %call.i.i120, %if.then.i.i121 ], [ %38, %if.then41.file_dentry.exit123_crit_edge ]
  %call43 = tail call ptr @v9fs_writeback_fid(ptr noundef %retval.0.i.i122) #6
  %cmp.i124 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then45, label %if.end48

if.then45:                                        ; preds = %file_dentry.exit123
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %call43 to i32
  tail call void @mutex_unlock(ptr noundef %v_mutex) #6
  %48 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %private_data, align 4
  %call63 = tail call i32 @p9_client_clunk(ptr noundef %49) #6
  %50 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %private_data, align 4
  br label %cleanup

if.end48:                                         ; preds = %file_dentry.exit123
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %writeback_fid35 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call43, ptr %writeback_fid35, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %land.lhs.true37.if.end50_crit_edge, %land.lhs.true34.if.end50_crit_edge, %if.end29.if.end50_crit_edge
  tail call void @mutex_unlock(ptr noundef %v_mutex) #6
  %52 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cache, align 4
  %54 = and i32 %53, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %switch110 = icmp eq i32 %54, 2
  br i1 %switch110, label %if.then57, label %if.end50.if.end61_crit_edge

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then57:                                        ; preds = %if.end50
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not.i125 = icmp eq ptr %56, null
  br i1 %tobool.not.i125, label %if.then57.if.end61_crit_edge, label %if.then.i

if.then57.if.end61_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then.i:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %57 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %f_mode, align 8
  %and59 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60 = icmp ne i32 %and59, 0
  tail call void @__fscache_use_cookie(ptr noundef nonnull %56, i1 noundef zeroext %tobool60) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then.i, %if.then57.if.end61_crit_edge, %if.end50.if.end61_crit_edge
  tail call void @v9fs_open_fid_add(ptr noundef %inode, ptr noundef %fid.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then45, %if.then16, %if.then12
  %retval.0 = phi i32 [ 0, %if.end61 ], [ %47, %if.then45 ], [ %22, %if.then12 ], [ %call15, %if.then16 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_p9_debug(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_open_to_dotl_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_uflags2omode(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_open(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_clunk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_writeback_fid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_open_fid_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @v9fs_file_fsync_dotl(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
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
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_file_fsync_dotl, ptr noundef nonnull @.str.1, ptr noundef %filp, i32 noundef %datasync) #6
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %call2 = tail call i32 @p9_client_fsync(ptr noundef %5, i32 noundef %datasync) #6
  tail call void @up_write(ptr noundef %i_rwsem.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_fsync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_file_mmap(ptr noundef %filp, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @generic_file_mmap(ptr noundef %filp, ptr noundef %vma) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %0 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @v9fs_file_vm_ops, ptr %vm_ops, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_dir_release(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_file_fsync(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  %wstat = alloca %struct.p9_wstat, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %wstat) #6
  %4 = call ptr @memset(ptr %wstat, i32 255, i32 80)
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
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_file_fsync, ptr noundef nonnull @.str.1, ptr noundef %filp, i32 noundef %datasync) #6
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  call void @v9fs_blank_wstat(ptr noundef nonnull %wstat) #6
  %call2 = call i32 @p9_client_wstat(ptr noundef %6, ptr noundef nonnull %wstat) #6
  call void @up_write(ptr noundef %i_rwsem.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %wstat) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_file_lock(ptr noundef %filp, i32 noundef %cmd, ptr noundef %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_file_lock, ptr noundef nonnull @.str.6, ptr noundef %filp, ptr noundef %fl) #6
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.if.end_crit_edge [
    i32 6, label %entry.land.lhs.true_crit_edge
    i32 13, label %entry.land.lhs.true_crit_edge16
    i32 7, label %entry.land.lhs.true_crit_edge17
    i32 14, label %entry.land.lhs.true_crit_edge18
  ]

entry.land.lhs.true_crit_edge18:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

entry.land.lhs.true_crit_edge17:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

entry.land.lhs.true_crit_edge16:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge16, %entry.land.lhs.true_crit_edge17, %entry.land.lhs.true_crit_edge18
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %3 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp6.not = icmp eq i8 %4, 2
  br i1 %cmp6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %6, i64 noundef 0, i64 noundef 9223372036854775807) #6
  %i_data = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 46
  %call9 = tail call i32 @invalidate_mapping_pages(ptr noundef %i_data, i32 noundef 0, i32 noundef -1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_file_lock_dotl(ptr noundef %filp, i32 noundef %cmd, ptr noundef %fl) #0 align 64 {
entry:
  %glock.i = alloca %struct.p9_getlock, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_file_lock_dotl, ptr noundef nonnull @.str.7, ptr noundef %filp, i32 noundef %cmd, ptr noundef %fl, ptr noundef %filp) #6
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %cmd, label %entry.if.end32_crit_edge [
    i32 14, label %entry.land.lhs.true_crit_edge
    i32 13, label %entry.land.lhs.true_crit_edge58
    i32 7, label %entry.land.lhs.true_crit_edge59
    i32 6, label %entry.land.lhs.true_crit_edge60
    i32 5, label %entry.if.then28_crit_edge
    i32 12, label %entry.if.then28_crit_edge61
  ]

entry.if.then28_crit_edge61:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

entry.if.then28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

entry.land.lhs.true_crit_edge60:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

entry.land.lhs.true_crit_edge59:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

entry.land.lhs.true_crit_edge58:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge58, %entry.land.lhs.true_crit_edge59, %entry.land.lhs.true_crit_edge60
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %3 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp6.not = icmp eq i8 %4, 2
  br i1 %cmp6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %6, i64 noundef 0, i64 noundef 9223372036854775807) #6
  %i_data = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 46
  %call9 = tail call i32 @invalidate_mapping_pages(ptr noundef %i_data, i32 noundef 0, i32 noundef -1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %cmd, label %if.end.if.end32_crit_edge [
    i32 14, label %if.end.if.then21_crit_edge
    i32 13, label %if.end.if.then21_crit_edge62
    i32 7, label %if.end.if.then21_crit_edge63
    i32 6, label %if.end.if.then21_crit_edge64
    i32 12, label %if.end.if.then28_crit_edge
  ]

if.end.if.then28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.end.if.then21_crit_edge64:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end.if.then21_crit_edge63:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end.if.then21_crit_edge62:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end.if.then21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then21:                                        ; preds = %if.end.if.then21_crit_edge, %if.end.if.then21_crit_edge62, %if.end.if.then21_crit_edge63, %if.end.if.then21_crit_edge64
  %call22 = tail call fastcc i32 @v9fs_file_do_lock(ptr noundef %filp, i32 noundef %cmd, ptr noundef %fl)
  br label %if.end32

if.then28:                                        ; preds = %if.end.if.then28_crit_edge, %entry.if.then28_crit_edge, %entry.if.then28_crit_edge61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %glock.i) #6
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  %cmp.i = icmp eq ptr %9, null
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !65

do.body2.i:                                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/vfs_file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 242, 0\0A.popsection", ""() #6, !srcloc !66
  unreachable

do.end7.i:                                        ; preds = %if.then28
  tail call void @posix_test_lock(ptr noundef %filp, ptr noundef %fl) #6
  %fl_type.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %10 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fl_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp8.not.i = icmp eq i8 %11, 2
  br i1 %cmp8.not.i, label %if.end11.i, label %do.end7.i.v9fs_file_getlock.exit_crit_edge

do.end7.i.v9fs_file_getlock.exit_crit_edge:       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v9fs_file_getlock.exit

if.end11.i:                                       ; preds = %do.end7.i
  %12 = ptrtoint ptr %glock.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 144115188075855872, ptr %glock.i, align 8
  %fl_start.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %13 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fl_start.i, align 8
  %start.i = getelementptr inbounds %struct.p9_getlock, ptr %glock.i, i32 0, i32 1
  %15 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %start.i, align 8
  %fl_end.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %16 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fl_end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %17)
  %cmp12.i = icmp eq i64 %17, 9223372036854775807
  %sub.i = sub i64 1, %14
  %add.i = add i64 %sub.i, %17
  %add.sink.i = select i1 %cmp12.i, i64 0, i64 %add.i
  %18 = getelementptr inbounds %struct.p9_getlock, ptr %glock.i, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %add.sink.i, ptr %18, align 8
  %fl_pid.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 8
  %20 = ptrtoint ptr %fl_pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fl_pid.i, align 8
  %proc_id.i = getelementptr inbounds %struct.p9_getlock, ptr %glock.i, i32 0, i32 3
  %22 = ptrtoint ptr %proc_id.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %proc_id.i, align 8
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %9, align 8
  %name.i = getelementptr inbounds %struct.p9_client, ptr %24, i32 0, i32 10
  %client_id.i = getelementptr inbounds %struct.p9_getlock, ptr %glock.i, i32 0, i32 4
  %25 = ptrtoint ptr %client_id.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %name.i, ptr %client_id.i, align 4
  %call.i57 = call i32 @p9_client_getlock_dotl(ptr noundef nonnull %9, ptr noundef nonnull %glock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp19.i = icmp slt i32 %call.i57, 0
  br i1 %cmp19.i, label %if.end11.i.out.i_crit_edge, label %if.end22.i

if.end11.i.out.i_crit_edge:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end22.i:                                       ; preds = %if.end11.i
  %26 = ptrtoint ptr %glock.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %glock.i, align 8
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %27, label %if.end22.i.if.then34.i_crit_edge [
    i8 0, label %if.end22.i.if.then34.sink.split.i_crit_edge
    i8 1, label %if.end22.i.if.then34.sink.split.i_crit_edge65
    i8 2, label %sw.epilog.i
  ]

if.end22.i.if.then34.sink.split.i_crit_edge65:    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34.sink.split.i

if.end22.i.if.then34.sink.split.i_crit_edge:      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34.sink.split.i

if.end22.i.if.then34.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34.i

sw.epilog.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %fl_type.i, align 4
  br label %out.i

if.then34.sink.split.i:                           ; preds = %if.end22.i.if.then34.sink.split.i_crit_edge, %if.end22.i.if.then34.sink.split.i_crit_edge65
  %30 = ptrtoint ptr %fl_type.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %27, ptr %fl_type.i, align 4
  br label %if.then34.i

if.then34.i:                                      ; preds = %if.then34.sink.split.i, %if.end22.i.if.then34.i_crit_edge
  %31 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %start.i, align 8
  %33 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %fl_start.i, align 8
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %18, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp38.i = icmp eq i64 %35, 0
  %add45.i = add i64 %32, -1
  %sub46.i = add i64 %add45.i, %35
  %storemerge.i = select i1 %cmp38.i, i64 9223372036854775807, i64 %sub46.i
  %36 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %storemerge.i, ptr %fl_end.i, align 8
  %37 = ptrtoint ptr %proc_id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %proc_id.i, align 8
  %sub50.i = sub i32 0, %38
  %39 = ptrtoint ptr %fl_pid.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub50.i, ptr %fl_pid.i, align 8
  br label %out.i

out.i:                                            ; preds = %if.then34.i, %sw.epilog.i, %if.end11.i.out.i_crit_edge
  %40 = ptrtoint ptr %client_id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %client_id.i, align 4
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %9, align 8
  %name55.i = getelementptr inbounds %struct.p9_client, ptr %43, i32 0, i32 10
  %cmp57.not.i = icmp eq ptr %41, %name55.i
  br i1 %cmp57.not.i, label %out.i.v9fs_file_getlock.exit_crit_edge, label %if.then59.i

out.i.v9fs_file_getlock.exit_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v9fs_file_getlock.exit

if.then59.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef %41) #6
  br label %v9fs_file_getlock.exit

v9fs_file_getlock.exit:                           ; preds = %if.then59.i, %out.i.v9fs_file_getlock.exit_crit_edge, %do.end7.i.v9fs_file_getlock.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end7.i.v9fs_file_getlock.exit_crit_edge ], [ %call.i57, %if.then59.i ], [ %call.i57, %out.i.v9fs_file_getlock.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %glock.i) #6
  br label %if.end32

if.end32:                                         ; preds = %v9fs_file_getlock.exit, %if.then21, %if.end.if.end32_crit_edge, %entry.if.end32_crit_edge
  %ret.0 = phi i32 [ %call22, %if.then21 ], [ %retval.0.i, %v9fs_file_getlock.exit ], [ -22, %if.end.if.end32_crit_edge ], [ -22, %entry.if.end32_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_file_flock_dotl(ptr noundef %filp, i32 noundef %cmd, ptr noundef %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_file_flock_dotl, ptr noundef nonnull @.str.7, ptr noundef %filp, i32 noundef %cmd, ptr noundef %fl, ptr noundef %filp) #6
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %2 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fl_flags, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_err_crit_edge, label %if.end

entry.out_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end:                                           ; preds = %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %cmd, label %if.end.if.end11_crit_edge [
    i32 14, label %if.end.land.lhs.true_crit_edge
    i32 13, label %if.end.land.lhs.true_crit_edge53
    i32 7, label %if.end.land.lhs.true_crit_edge54
    i32 6, label %if.end.land.lhs.true_crit_edge55
  ]

if.end.land.lhs.true_crit_edge55:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge54:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge53:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge53, %if.end.land.lhs.true_crit_edge54, %if.end.land.lhs.true_crit_edge55
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %5 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp6.not = icmp eq i8 %6, 2
  br i1 %cmp6.not, label %land.lhs.true.if.end11_crit_edge, label %if.then8

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %8, i64 noundef 0, i64 noundef 9223372036854775807) #6
  %i_data = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 46
  %call10 = tail call i32 @invalidate_mapping_pages(ptr noundef %i_data, i32 noundef 0, i32 noundef -1) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %9 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fl_flags, align 8
  %11 = and i32 %10, -2
  %xor = xor i32 %11, 3
  store i32 %xor, ptr %fl_flags, align 8
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %cmd, label %if.end11.out_err_crit_edge [
    i32 14, label %if.end11.if.then27_crit_edge
    i32 13, label %if.end11.if.then27_crit_edge56
    i32 7, label %if.end11.if.then27_crit_edge57
    i32 6, label %if.end11.if.then27_crit_edge58
  ]

if.end11.if.then27_crit_edge58:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

if.end11.if.then27_crit_edge57:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

if.end11.if.then27_crit_edge56:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

if.end11.if.then27_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

if.end11.out_err_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.then27:                                        ; preds = %if.end11.if.then27_crit_edge, %if.end11.if.then27_crit_edge56, %if.end11.if.then27_crit_edge57, %if.end11.if.then27_crit_edge58
  %call28 = tail call fastcc i32 @v9fs_file_do_lock(ptr noundef %filp, i32 noundef %cmd, ptr noundef %fl)
  br label %out_err

out_err:                                          ; preds = %if.then27, %if.end11.out_err_crit_edge, %entry.out_err_crit_edge
  %ret.0 = phi i32 [ %call28, %if.then27 ], [ -37, %entry.out_err_crit_edge ], [ -22, %if.end11.out_err_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_file_read_iter(ptr nocapture noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %err, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %7 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ki_pos, align 8
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_file_read_iter, ptr noundef nonnull @.str.10, i32 noundef %6, i64 noundef %8) #6
  %9 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iocb, align 8
  %f_flags = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_flags, align 4
  %and = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %13 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ki_pos, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 @p9_client_read_once(ptr noundef %3, i64 noundef %14, ptr noundef %to, ptr noundef nonnull %err) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = call i32 @p9_client_read(ptr noundef %3, i64 noundef %14, ptr noundef %to, ptr noundef nonnull %err) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call5, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool6.not = icmp eq i32 %ret.0, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %err, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = sext i32 %ret.0 to i64
  %17 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ki_pos, align 8
  %add = add i64 %18, %conv
  store i64 %add, ptr %ki_pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7
  %retval.0 = phi i32 [ %ret.0, %if.end8 ], [ %16, %if.then7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_file_write_iter(ptr noundef %iocb, ptr noundef %from) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %call = tail call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %from) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %3 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ki_pos, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %call3 = call i32 @p9_client_write(ptr noundef %6, i64 noundef %4, ptr noundef %from, ptr noundef nonnull %err) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end28

if.then5:                                         ; preds = %if.end
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_inode.i, align 8
  %9 = lshr i64 %4, 12
  %conv = trunc i64 %9 to i32
  %conv755 = zext i32 %call3 to i64
  %add = add i64 %4, 17592186044415
  %sub = add i64 %add, %conv755
  %10 = lshr i64 %sub, 12
  %conv9 = trunc i64 %10 to i32
  %i_mapping = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 9
  %11 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_mapping, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.then5.if.end15_crit_edge, label %land.lhs.true

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %if.then5
  %nrpages = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end15_crit_edge, label %if.then12

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = call i32 @invalidate_inode_pages2_range(ptr noundef nonnull %12, i32 noundef %conv, i32 noundef %conv9) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %land.lhs.true.if.end15_crit_edge, %if.then5.if.end15_crit_edge
  %15 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ki_pos, align 8
  %add18 = add i64 %16, %conv755
  store i64 %add18, ptr %ki_pos, align 8
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end15
  %17 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !67
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @trace_hardirqs_off() #6
  %18 = call ptr @llvm.returnaddress(i32 0) #6
  %19 = ptrtoint ptr %18 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %19) #6
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %19) #6
  call void @trace_hardirqs_on() #6
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = call ptr @llvm.returnaddress(i32 0) #6
  %21 = ptrtoint ptr %20 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %21) #6
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %21) #6
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %22 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !68
  %and.i.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !65

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #6, !srcloc !69
  %23 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !70
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !71
  %25 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %26, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %24, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %26, %do.end.i.while.end.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !72
  %27 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_size18.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !73
  %29 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %30, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %31 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %28)
  %cmp21 = icmp sgt i64 %32, %28
  br i1 %cmp21, label %if.then23, label %i_size_read.exit.cleanup_crit_edge

i_size_read.exit.cleanup_crit_edge:               ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %i_size_read.exit
  %sub25 = sub i64 %32, %28
  call void @inode_add_bytes(ptr noundef %8, i64 noundef %sub25) #6
  %33 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ki_pos, align 8
  %i_lock.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %i_lock.i) #6
  %35 = call i32 @llvm.read_register.i32(metadata !54) #6
  %and.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %39 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i.i, label %if.then23.v9fs_i_size_write.exit_crit_edge, label %land.lhs.true.i.i.i

if.then23.v9fs_i_size_write.exit_crit_edge:       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %v9fs_i_size_write.exit

land.lhs.true.i.i.i:                              ; preds = %if.then23
  %40 = call i32 @llvm.read_register.i32(metadata !54) #6
  %and.i.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !75
  %44 = call i32 @llvm.read_register.i32(metadata !54) #6
  %and.i.i.i.i54 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i54 to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i28.i.i = add i32 %49, ptrtoint (ptr @lockdep_recursion to i32)
  %50 = inttoptr i32 %add.i28.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !76
  %53 = call i32 @llvm.read_register.i32(metadata !54) #6
  %and.i.i.i7.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool20.not.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.v9fs_i_size_write.exit_crit_edge

land.lhs.true.i.i.i.v9fs_i_size_write.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v9fs_i_size_write.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %57 = call i32 @llvm.read_register.i32(metadata !54) #6
  %and.i.i.i29.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i29.i.i to ptr
  %preempt_count.i.i30.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i.i = icmp eq i32 %60, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.v9fs_i_size_write.exit_crit_edge

land.rhs.i.i.i.v9fs_i_size_write.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v9fs_i_size_write.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %61 = call i32 @llvm.read_register.i32(metadata !54) #6
  %and.i.i.i9.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %64, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !77
  %65 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %68, ptrtoint (ptr @hardirqs_enabled to i32)
  %69 = inttoptr i32 %add47.i.i.i to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !78
  %72 = call i32 @llvm.read_register.i32(metadata !54) #6
  %and.i.i.i12.i.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %75, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool54.not.i.i.i = icmp eq i32 %71, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.v9fs_i_size_write.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.v9fs_i_size_write.exit_crit_edge: ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v9fs_i_size_write.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.v9fs_i_size_write.exit_crit_edge, label %if.then.i.i.i, !prof !64

land.rhs58.i.i.i.v9fs_i_size_write.exit_crit_edge: ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %v9fs_i_size_write.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 271, i32 noundef 9, ptr noundef null) #6
  br label %v9fs_i_size_write.exit

v9fs_i_size_write.exit:                           ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.v9fs_i_size_write.exit_crit_edge, %land.rhs22.i.i.i.v9fs_i_size_write.exit_crit_edge, %land.rhs.i.i.i.v9fs_i_size_write.exit_crit_edge, %land.lhs.true.i.i.i.v9fs_i_size_write.exit_crit_edge, %if.then23.v9fs_i_size_write.exit_crit_edge
  %76 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i.i = add i32 %77, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !79
  %78 = call ptr @llvm.returnaddress(i32 0) #6
  %79 = ptrtoint ptr %78 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %79) #6
  %80 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %34, ptr %i_size18.i, align 8
  call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %79) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !80
  %81 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %82, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !81
  %83 = call i32 @llvm.read_register.i32(metadata !54) #6
  %and.i.i.i26.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i26.i.i to ptr
  %preempt_count.i.i27.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i27.i.i, align 4
  %sub.i.i.i = add i32 %86, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i27.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %i_lock.i) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %v9fs_i_size_write.exit, %i_size_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %88, %if.end28 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %v9fs_i_size_write.exit ], [ %call3, %i_size_read.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_readonly_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_mmap_file_read_iter(ptr nocapture noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #6
  %4 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %err.i, align 4
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %5 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i.i, align 8
  %ki_pos.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %7 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ki_pos.i, align 8
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_file_read_iter, ptr noundef nonnull @.str.10, i32 noundef %6, i64 noundef %8) #6
  %9 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iocb, align 8
  %f_flags.i = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %13 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ki_pos.i, align 8
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 @p9_client_read_once(ptr noundef %3, i64 noundef %14, ptr noundef %to, ptr noundef nonnull %err.i) #6
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 @p9_client_read(ptr noundef %3, i64 noundef %14, ptr noundef %to, ptr noundef nonnull %err.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call3.i, %if.then.i ], [ %call5.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool6.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %err.i, align 4
  br label %v9fs_file_read_iter.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = sext i32 %ret.0.i to i64
  %17 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ki_pos.i, align 8
  %add.i = add i64 %18, %conv.i
  store i64 %add.i, ptr %ki_pos.i, align 8
  br label %v9fs_file_read_iter.exit

v9fs_file_read_iter.exit:                         ; preds = %if.end8.i, %if.then7.i
  %retval.0.i = phi i32 [ %ret.0.i, %if.end8.i ], [ %16, %if.then7.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_mmap_file_write_iter(ptr noundef %iocb, ptr noundef %from) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v9fs_file_write_iter(ptr noundef %iocb, ptr noundef %from)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_mmap_file_mmap(ptr noundef %filp, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %v_mutex = getelementptr i8, ptr %1, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %v_mutex, i32 noundef 0) #6
  %writeback_fid = getelementptr i8, ptr %1, i32 -100
  %2 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %writeback_fid, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags, align 4
  %6 = and i32 %5, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %.not = icmp eq i32 %6, 10
  br i1 %.not, label %if.then, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %dentry.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dentry.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %and.i.i = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !64

if.then.file_dentry.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 8
  %13 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %16(ptr noundef %8, ptr noundef %12) #6
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %if.then.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %8, %if.then.file_dentry.exit_crit_edge ]
  %call9 = tail call ptr @v9fs_writeback_fid(ptr noundef %retval.0.i.i) #6
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end

if.then11:                                        ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call9 to i32
  tail call void @mutex_unlock(ptr noundef %v_mutex) #6
  br label %cleanup

if.end:                                           ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9, ptr %writeback_fid, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  tail call void @mutex_unlock(ptr noundef %v_mutex) #6
  %call17 = tail call i32 @generic_file_mmap(ptr noundef %filp, ptr noundef %vma) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %19 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @v9fs_mmap_file_vm_ops, ptr %vm_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end15.cleanup_crit_edge, %if.then11
  %retval.0 = phi i32 [ %17, %if.then11 ], [ 0, %if.then19 ], [ %call17, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_fid_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_client_walk(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_use_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_vm_page_mkwrite(ptr nocapture noundef readonly %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !64

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %4, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %5, %if.end.i ]
  %6 = inttoptr i32 %retval.0.i to ptr
  %7 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 4
  %15 = ptrtoint ptr %14 to i32
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_vm_page_mkwrite, ptr noundef nonnull @.str.2, ptr noundef %6, i32 noundef %15) #6
  %16 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private_2.exit, label %if.then.i.i, !prof !64

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.3) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #6, !srcloc !82
  unreachable

folio_test_private_2.exit:                        ; preds = %_compound_head.exit
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %6, align 4
  %21 = and i32 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not = icmp eq i32 %21, 0
  br i1 %tobool.i.not, label %folio_test_private_2.exit.if.end_crit_edge, label %land.lhs.true

folio_test_private_2.exit.if.end_crit_edge:       ; preds = %folio_test_private_2.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %folio_test_private_2.exit
  %call.i = tail call i32 @folio_wait_private_2_killable(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %folio_test_private_2.exit.if.end_crit_edge
  %call5 = tail call i32 @file_update_time(ptr noundef %10) #6
  %writeback_fid = getelementptr i8, ptr %12, i32 -100
  %22 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %writeback_fid, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %do.body10, label %do.end16, !prof !65

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/vfs_file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 552, 0\0A.popsection", ""() #6, !srcloc !83
  unreachable

do.end16:                                         ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 797) #6
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %16, align 4
  %and.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !64

if.then.i.i.i:                                    ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.3) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #6, !srcloc !82
  unreachable

folio_flags.exit.i.i:                             ; preds = %do.end16
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #6
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %6, align 4
  %and.i.i4.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.folio_lock_killable.exit_crit_edge

folio_flags.exit.i.i.folio_lock_killable.exit_crit_edge: ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %folio_lock_killable.exit

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #6
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #6, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !85
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.if.end20_crit_edge, label %folio_trylock.exit.i.folio_lock_killable.exit_crit_edge

folio_trylock.exit.i.folio_lock_killable.exit_crit_edge: ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %folio_lock_killable.exit

folio_trylock.exit.i.if.end20_crit_edge:          ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

folio_lock_killable.exit:                         ; preds = %folio_trylock.exit.i.folio_lock_killable.exit_crit_edge, %folio_flags.exit.i.i.folio_lock_killable.exit_crit_edge
  %call3.i = tail call i32 @__folio_lock_killable(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp18 = icmp slt i32 %call3.i, 0
  br i1 %cmp18, label %folio_lock_killable.exit.cleanup_crit_edge, label %folio_lock_killable.exit.if.end20_crit_edge

folio_lock_killable.exit.if.end20_crit_edge:      ; preds = %folio_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

folio_lock_killable.exit.cleanup_crit_edge:       ; preds = %folio_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %folio_lock_killable.exit.if.end20_crit_edge, %folio_trylock.exit.i.if.end20_crit_edge
  %call21 = tail call ptr @folio_mapping(ptr noundef %6) #6
  %i_mapping = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 9
  %29 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_mapping, align 8
  %cmp22.not = icmp eq ptr %call21, %30
  br i1 %cmp22.not, label %if.end24, label %out_unlock

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @folio_wait_stable(ptr noundef %6) #6
  br label %cleanup

out_unlock:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @folio_unlock(ptr noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end24, %folio_lock_killable.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 256, %out_unlock ], [ 512, %if.end24 ], [ 256, %land.lhs.true.cleanup_crit_edge ], [ 1024, %folio_lock_killable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_stable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_wait_private_2_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__folio_lock_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_blank_wstat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_wstat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @v9fs_file_do_lock(ptr nocapture noundef readonly %filp, i32 noundef %cmd, ptr noundef %fl) unnamed_addr #0 align 64 {
entry:
  %flock = alloca %struct.p9_flock, align 8
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %flock) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %status, align 1
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %do.body2, label %do.body8, !prof !65

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/vfs_file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 140, 0\0A.popsection", ""() #6, !srcloc !86
  unreachable

do.body8:                                         ; preds = %entry
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %3 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fl_flags, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9.not.not = icmp eq i32 %and, 0
  br i1 %cmp9.not.not, label %do.body17, label %do.end25, !prof !65

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/9p/vfs_file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #6, !srcloc !87
  unreachable

do.end25:                                         ; preds = %do.body8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i.i, align 8
  %call1.i = tail call i32 @locks_lock_inode_wait(ptr noundef %6, ptr noundef %fl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp26 = icmp slt i32 %call1.i, 0
  br i1 %cmp26, label %do.end25.out_crit_edge, label %if.end28

do.end25.out_crit_edge:                           ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end28:                                         ; preds = %do.end25
  %7 = ptrtoint ptr %flock to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %flock, align 8
  %fl_type29 = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %8 = ptrtoint ptr %fl_type29 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fl_type29, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %9, label %if.end28.sw.epilog_crit_edge [
    i8 2, label %sw.bb32
    i8 1, label %sw.bb30
  ]

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %flock to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %flock, align 8
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %flock to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %flock, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb30, %if.end28.sw.epilog_crit_edge
  %fl_start = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %13 = ptrtoint ptr %fl_start to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fl_start, align 8
  %start = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 2
  %15 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %start, align 8
  %fl_end = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %16 = ptrtoint ptr %fl_end to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fl_end, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %17)
  %cmp34 = icmp eq i64 %17, 9223372036854775807
  %sub = sub i64 1, %14
  %add = add i64 %sub, %17
  %add.sink = select i1 %cmp34, i64 0, i64 %add
  %18 = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 3
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %add.sink, ptr %18, align 8
  %fl_pid = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 8
  %20 = ptrtoint ptr %fl_pid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fl_pid, align 8
  %proc_id = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 4
  %22 = ptrtoint ptr %proc_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %proc_id, align 8
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %2, align 8
  %name = getelementptr inbounds %struct.p9_client, ptr %24, i32 0, i32 10
  %client_id = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 5
  %25 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %name, ptr %client_id, align 4
  %26 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %cmd, label %sw.epilog.if.end46_crit_edge [
    i32 14, label %sw.epilog.if.then45_crit_edge
    i32 7, label %sw.epilog.if.then45_crit_edge212
  ]

sw.epilog.if.then45_crit_edge212:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

sw.epilog.if.then45_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

sw.epilog.if.end46_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then45:                                        ; preds = %sw.epilog.if.then45_crit_edge, %sw.epilog.if.then45_crit_edge212
  %flags = getelementptr inbounds %struct.p9_flock, ptr %flock, i32 0, i32 1
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %flags, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %sw.epilog.if.end46_crit_edge
  %28 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %f_inode.i.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i, align 16
  %call49199 = call i32 @p9_client_lock_dotl(ptr noundef nonnull %2, ptr noundef nonnull %flock, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49199)
  %cmp50200 = icmp slt i32 %call49199, 0
  br i1 %cmp50200, label %if.end46.land.lhs.true139_crit_edge, label %if.end53.lr.ph

if.end46.land.lhs.true139_crit_edge:              ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true139

if.end53.lr.ph:                                   ; preds = %if.end46
  %session_lock_timeout = getelementptr inbounds %struct.v9fs_session_info, ptr %33, i32 0, i32 16
  br label %if.end53

if.end53:                                         ; preds = %if.end86.if.end53_crit_edge, %if.end53.lr.ph
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp55.not = icmp eq i8 %35, 1
  br i1 %cmp55.not, label %land.lhs.true, label %if.end53.for.end_crit_edge

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %if.end53
  %36 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %cmd, label %land.lhs.true.land.lhs.true139_crit_edge [
    i32 14, label %land.lhs.true.if.end68_crit_edge
    i32 7, label %land.lhs.true.if.end68_crit_edge213
  ]

land.lhs.true.if.end68_crit_edge213:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

land.lhs.true.land.lhs.true139_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true139

if.end68:                                         ; preds = %land.lhs.true.if.end68_crit_edge, %land.lhs.true.if.end68_crit_edge213
  %37 = ptrtoint ptr %session_lock_timeout to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %session_lock_timeout, align 4
  %call69 = call i32 @schedule_timeout_interruptible(i32 noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70.not = icmp eq i32 %call69, 0
  br i1 %cmp70.not, label %if.end73, label %for.endthread-pre-split

if.end73:                                         ; preds = %if.end68
  %39 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client_id, align 4
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %2, align 8
  %name76 = getelementptr inbounds %struct.p9_client, ptr %42, i32 0, i32 10
  %cmp78.not = icmp eq ptr %40, %name76
  br i1 %cmp78.not, label %if.end73.if.end86_crit_edge, label %if.then80

if.end73.if.end86_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then80:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef %40) #6
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %2, align 8
  %name83 = getelementptr inbounds %struct.p9_client, ptr %44, i32 0, i32 10
  %45 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %name83, ptr %client_id, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then80, %if.end73.if.end86_crit_edge
  %call49 = call i32 @p9_client_lock_dotl(ptr noundef nonnull %2, ptr noundef nonnull %flock, ptr noundef nonnull %status) #6
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end86.land.lhs.true139_crit_edge, label %if.end86.if.end53_crit_edge

if.end86.if.end53_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.end86.land.lhs.true139_crit_edge:              ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true139

for.endthread-pre-split:                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %46)
  %.pr = load i8, ptr %status, align 1
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.end53.for.end_crit_edge
  %47 = phi i8 [ %.pr, %for.endthread-pre-split ], [ %35, %if.end53.for.end_crit_edge ]
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %47, label %land.end [
    i8 0, label %for.end.if.end149_crit_edge
    i8 1, label %for.end.land.lhs.true139_crit_edge
    i8 2, label %for.end.sw.bb135_crit_edge
    i8 3, label %for.end.sw.bb135_crit_edge214
  ]

for.end.sw.bb135_crit_edge214:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb135

for.end.sw.bb135_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb135

for.end.land.lhs.true139_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true139

for.end.if.end149_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

land.end:                                         ; preds = %for.end
  %.b190 = load i1, ptr @v9fs_file_do_lock.__already_done, align 1
  br i1 %.b190, label %land.end.sw.bb135_crit_edge, label %if.then101, !prof !64

land.end.sw.bb135_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb135

if.then101:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @v9fs_file_do_lock.__already_done, align 1
  %conv114 = zext i8 %47 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 209, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %conv114) #6
  br label %sw.bb135

sw.bb135:                                         ; preds = %if.then101, %land.end.sw.bb135_crit_edge, %for.end.sw.bb135_crit_edge, %for.end.sw.bb135_crit_edge214
  br label %land.lhs.true139

land.lhs.true139:                                 ; preds = %sw.bb135, %for.end.land.lhs.true139_crit_edge, %if.end86.land.lhs.true139_crit_edge, %land.lhs.true.land.lhs.true139_crit_edge, %if.end46.land.lhs.true139_crit_edge
  %res.0.ph = phi i32 [ -37, %sw.bb135 ], [ -11, %for.end.land.lhs.true139_crit_edge ], [ %call49199, %if.end46.land.lhs.true139_crit_edge ], [ %call49, %if.end86.land.lhs.true139_crit_edge ], [ -11, %land.lhs.true.land.lhs.true139_crit_edge ]
  %49 = ptrtoint ptr %fl_type29 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %fl_type29, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp142.not = icmp eq i8 %50, 2
  br i1 %cmp142.not, label %land.lhs.true139.if.end149_crit_edge, label %if.then144

land.lhs.true139.if.end149_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

if.then144:                                       ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %fl_type29 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %fl_type29, align 4
  %52 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %f_inode.i.i, align 8
  %call1.i193 = call i32 @locks_lock_inode_wait(ptr noundef %53, ptr noundef %fl) #6
  %54 = ptrtoint ptr %fl_type29 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %50, ptr %fl_type29, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %land.lhs.true139.if.end149_crit_edge, %for.end.if.end149_crit_edge
  %res.0196 = phi i32 [ %res.0.ph, %if.then144 ], [ %res.0.ph, %land.lhs.true139.if.end149_crit_edge ], [ 0, %for.end.if.end149_crit_edge ]
  %55 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client_id, align 4
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %2, align 8
  %name152 = getelementptr inbounds %struct.p9_client, ptr %58, i32 0, i32 10
  %cmp154.not = icmp eq ptr %56, %name152
  br i1 %cmp154.not, label %if.end149.out_crit_edge, label %if.then156

if.end149.out_crit_edge:                          ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then156:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef %56) #6
  br label %out

out:                                              ; preds = %if.then156, %if.end149.out_crit_edge, %do.end25.out_crit_edge
  %res.1 = phi i32 [ %call1.i, %do.end25.out_crit_edge ], [ %res.0196, %if.then156 ], [ %res.0196, %if.end149.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %flock) #6
  ret i32 %res.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_lock_dotl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @locks_lock_inode_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_test_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_getlock_dotl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_read_once(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_read(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_write(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v9fs_mmap_vm_close(ptr noundef %vma) #0 align 64 {
entry:
  %wbc = alloca %struct.writeback_control, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbc) #6
  %0 = getelementptr inbounds i8, ptr %wbc, i32 24
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !88
  %2 = ptrtoint ptr %wbc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2147483647, ptr %wbc, align 8
  %pages_skipped = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 1
  %3 = ptrtoint ptr %pages_skipped to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pages_skipped, align 4
  %range_start = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 2
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  %conv = zext i32 %5 to i64
  %mul = shl nuw nsw i64 %conv, 12
  %6 = ptrtoint ptr %range_start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %mul, ptr %range_start, align 8
  %range_end = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 3
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %7 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_end, align 4
  %9 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vma, align 4
  %11 = xor i32 %10, -1
  %sub4 = add i32 %8, %11
  %conv5 = zext i32 %sub4 to i64
  %add = add nuw nsw i64 %mul, %conv5
  %12 = ptrtoint ptr %range_end to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %add, ptr %range_end, align 8
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %13 = ptrtoint ptr %sync_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %sync_mode, align 8
  %for_kupdate = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %14 = ptrtoint ptr %for_kupdate to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 127, ptr %for_kupdate, align 4
  %wb = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 6
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %15 = call ptr @memset(ptr %wb, i32 0, i32 32)
  %16 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_flags, align 4
  %and = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_mmap_vm_close, ptr noundef nonnull @.str.12, ptr noundef %vma) #6
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %18 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %f_inode.i, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_mapping, align 8
  %call31 = call i32 @filemap_fdatawrite_wbc(ptr noundef %23, ptr noundef nonnull %wbc) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite_wbc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !34, !36, !37, !39, !40, !41, !43, !45, !46, !48, !49, !51, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__func__.v9fs_file_open, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/9p/vfs_file.c", i32 50, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.v9fs_file_fsync_dotl, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/9p/vfs_file.c", i32 465, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @v9fs_cached_file_operations, !7, !"v9fs_cached_file_operations", i1 false, i1 false}
!7 = !{!"../fs/9p/vfs_file.c", i32 631, i32 30}
!8 = !{ptr @v9fs_cached_file_operations_dotl, !9, !"v9fs_cached_file_operations_dotl", i1 false, i1 false}
!9 = !{!"../fs/9p/vfs_file.c", i32 644, i32 30}
!10 = !{ptr @v9fs_file_operations, !11, !"v9fs_file_operations", i1 false, i1 false}
!11 = !{!"../fs/9p/vfs_file.c", i32 658, i32 30}
!12 = !{ptr @v9fs_file_operations_dotl, !13, !"v9fs_file_operations_dotl", i1 false, i1 false}
!13 = !{!"../fs/9p/vfs_file.c", i32 671, i32 30}
!14 = !{ptr @v9fs_mmap_file_operations, !15, !"v9fs_mmap_file_operations", i1 false, i1 false}
!15 = !{!"../fs/9p/vfs_file.c", i32 685, i32 30}
!16 = !{ptr @v9fs_mmap_file_operations_dotl, !17, !"v9fs_mmap_file_operations_dotl", i1 false, i1 false}
!17 = !{!"../fs/9p/vfs_file.c", i32 698, i32 30}
!18 = !{ptr @v9fs_file_vm_ops, !19, !"v9fs_file_vm_ops", i1 false, i1 false}
!19 = !{!"../fs/9p/vfs_file.c", i32 617, i32 42}
!20 = !{ptr @__func__.v9fs_vm_page_mkwrite, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/9p/vfs_file.c", i32 535, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/pagemap.h", i32 797, i32 2}
!29 = !{ptr @__func__.v9fs_file_fsync, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/9p/vfs_file.c", i32 442, i32 2}
!31 = !{ptr @__func__.v9fs_file_lock, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/9p/vfs_file.c", i32 120, i32 2}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__func__.v9fs_file_lock_dotl, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/9p/vfs_file.c", i32 305, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../fs/9p/vfs_file.c", i32 209, i32 3}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__func__.v9fs_file_flock_dotl, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/9p/vfs_file.c", i32 336, i32 2}
!43 = !{ptr @__func__.v9fs_file_read_iter, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/9p/vfs_file.c", i32 370, i32 2}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @v9fs_mmap_file_vm_ops, !50, !"v9fs_mmap_file_vm_ops", i1 false, i1 false}
!50 = !{!"../fs/9p/vfs_file.c", i32 623, i32 42}
!51 = !{ptr @__func__.v9fs_mmap_vm_close, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/9p/vfs_file.c", i32 610, i32 2}
!53 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 2155491568, i64 2155492049, i64 2155491605, i64 2155491661, i64 2155491695, i64 2155491719, i64 2155491760, i64 2155491781, i64 2155491809, i64 2155491843}
!67 = !{i64 759053, i64 759114}
!68 = !{i64 761785}
!69 = !{i64 762070}
!70 = !{i64 2152718477}
!71 = !{i64 2152718319}
!72 = !{i64 2152718647}
!73 = !{i64 2149987179}
!74 = !{i64 2152720408}
!75 = !{i64 2149879511}
!76 = !{i64 2149884443}
!77 = !{i64 2149906155}
!78 = !{i64 2149911047}
!79 = !{i64 2149987504}
!80 = !{i64 2149987829}
!81 = !{i64 2152732270}
!82 = !{i64 2150177308, i64 2150177799, i64 2150177345, i64 2150177401, i64 2150177435, i64 2150177459, i64 2150177500, i64 2150177521, i64 2150177549, i64 2150177583}
!83 = !{i64 2155495191, i64 2155495672, i64 2155495228, i64 2155495284, i64 2155495318, i64 2155495342, i64 2155495383, i64 2155495404, i64 2155495432, i64 2155495466}
!84 = !{i64 2148364211, i64 2148364243, i64 2148364272, i64 2148364306, i64 2148364337, i64 2148364360}
!85 = !{i64 2148453316}
!86 = !{i64 2155486939, i64 2155487420, i64 2155486976, i64 2155487032, i64 2155487066, i64 2155487090, i64 2155487131, i64 2155487152, i64 2155487180, i64 2155487214}
!87 = !{i64 2155488538, i64 2155489019, i64 2155488575, i64 2155488631, i64 2155488665, i64 2155488689, i64 2155488730, i64 2155488751, i64 2155488779, i64 2155488813}
!88 = !{!"auto-init"}
