; ModuleID = '/llk/IR_all_yes/fs/orangefs/file.c_pt.bc'
source_filename = "../fs/orangefs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.orangefs_stats = type { i32, i32, i32, i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.orangefs_kernel_op_s = type { i32, i64, %union.anon.86, %struct.orangefs_upcall_s, %struct.orangefs_downcall_s, %struct.completion, %struct.spinlock, i32, %struct.list_head }
%union.anon.86 = type { i32 }
%struct.orangefs_upcall_s = type { i32, i32, i32, i32, i32, i64, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.orangefs_param_request_s, [6424 x i8] }
%struct.orangefs_param_request_s = type { i32, i32, %union.anon.88, [2048 x i8] }
%union.anon.88 = type { i64 }
%struct.orangefs_downcall_s = type { i32, i32, i64, ptr, %union.anon.89 }
%union.anon.89 = type { %struct.orangefs_listxattr_response, [4016 x i8] }
%struct.orangefs_listxattr_response = type { i32, i32, i64, [4096 x i8], i32, i32, [16 x i32] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.orangefs_write_range = type { i64, i32, %struct.kuid_t, %struct.kgid_t }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.81 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.83 = type { ptr }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.orangefs_sb_info_s = type { %struct.orangefs_khandle, i32, i32, i32, [256 x i8], ptr, i32, i32, %struct.list_head }
%struct.orangefs_khandle = type { [16 x i8] }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.16, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@orangefs_gossip_debug_mask = external dso_local local_unnamed_addr global i64, align 8
@wait_for_direct_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: orangefs_bufmap_get failure (%zd)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wait_for_direct_io\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/orangefs/file.c\00", [45 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry_ptr = internal global ptr @wait_for_direct_io._entry, section ".printk_index", align 4
@wait_for_direct_io._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s(%pU): GET op %p -> buffer_index %d\0A\00", [55 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry_ptr.5 = internal global ptr @wait_for_direct_io._entry.3, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@wait_for_direct_io._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s(%pU): offset: %llu total_size: %zd\0A\00", [55 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry_ptr.8 = internal global ptr @wait_for_direct_io._entry.6, section ".printk_index", align 4
@wait_for_direct_io._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013%s: Failed to copy-in buffers. Please make sure that the pvfs2-client is running. %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry_ptr.11 = internal global ptr @wait_for_direct_io._entry.9, section ".printk_index", align 4
@wait_for_direct_io._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s(%pU): Calling post_io_request with tag (%llu)\0A\00", [44 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry_ptr.14 = internal global ptr @wait_for_direct_io._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"file_write\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"file_read\00", [22 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s:going to repopulate_shared_memory.\0A\00", [55 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry_ptr.19 = internal global ptr @wait_for_direct_io._entry.17, section ".printk_index", align 4
@wait_for_direct_io._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: unexpected op state :%d:.\0A\00", [63 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry_ptr.22 = internal global ptr @wait_for_direct_io._entry.20, section ".printk_index", align 4
@wait_for_direct_io._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: got EINTR, state:%d: %p\0A\00", [33 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry_ptr.25 = internal global ptr @wait_for_direct_io._entry.23, section ".printk_index", align 4
@wait_for_direct_io._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: error in %s handle %pU, returning %zd\0A\00", [51 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry_ptr.28 = internal global ptr @wait_for_direct_io._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read from\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"write to\00", [23 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013%s: Failed to copy-out buffers. Please make sure that the pvfs2-client is running (%ld)\0A\00", [37 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry_ptr.33 = internal global ptr @wait_for_direct_io._entry.31, section ".printk_index", align 4
@wait_for_direct_io._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s(%pU): Amount %s, returned by the sys-io call:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry_ptr.36 = internal global ptr @wait_for_direct_io._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"written\00", [24 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s(%pU): PUT buffer_index %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wait_for_direct_io._entry_ptr.41 = internal global ptr @wait_for_direct_io._entry.39, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@orangefs_cache_timeout_msecs = external dso_local local_unnamed_addr global i32, align 4
@orangefs_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @orangefs_file_llseek, ptr null, ptr null, ptr @orangefs_file_read_iter, ptr @orangefs_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @orangefs_file_mmap, i32 0, ptr @generic_file_open, ptr @orangefs_flush, ptr @orangefs_file_release, ptr @orangefs_fsync, ptr null, ptr @orangefs_lock, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@orangefs_file_llseek._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s:%s:%d calling make bad inode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"orangefs_file_llseek\00", [43 x i8] zeroinitializer }, align 32
@orangefs_file_llseek._entry_ptr = internal global ptr @orangefs_file_llseek._entry, section ".printk_index", align 4
@orangefs_file_llseek._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017orangefs_file_llseek: offset is %ld | origin is %d | inode size is %lu\0A\00", [54 x i8] zeroinitializer }, align 32
@orangefs_file_llseek._entry_ptr.47 = internal global ptr @orangefs_file_llseek._entry.45, section ".printk_index", align 4
@orangefs_stats = external dso_local local_unnamed_addr global %struct.orangefs_stats, align 4
@orangefs_file_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017orangefs_file_mmap: called on %pD\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"orangefs_file_mmap\00", [45 x i8] zeroinitializer }, align 32
@orangefs_file_mmap._entry_ptr = internal global ptr @orangefs_file_mmap._entry, section ".printk_index", align 4
@orangefs_file_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @orangefs_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @orangefs_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@orangefs_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: orangefs_inode_getattr failed, ret:%d:.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"orangefs_fault\00", [17 x i8] zeroinitializer }, align 32
@orangefs_fault._entry_ptr = internal global ptr @orangefs_fault._entry, section ".printk_index", align 4
@orangefs_file_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017orangefs_file_release: called on %pD\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"orangefs_file_release\00", [42 x i8] zeroinitializer }, align 32
@orangefs_file_release._entry_ptr = internal global ptr @orangefs_file_release._entry, section ".printk_index", align 4
@orangefs_features = external dso_local local_unnamed_addr global i64, align 8
@orangefs_file_release._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017calling flush_racache on %pU\0A\00", [32 x i8] zeroinitializer }, align 32
@orangefs_file_release._entry_ptr.56 = internal global ptr @orangefs_file_release._entry.54, section ".printk_index", align 4
@orangefs_file_release._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017flush_racache finished\0A\00", [38 x i8] zeroinitializer }, align 32
@orangefs_file_release._entry_ptr.59 = internal global ptr @orangefs_file_release._entry.57, section ".printk_index", align 4
@flush_racache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %pU: Handle is %pU | fs_id %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"flush_racache\00", [18 x i8] zeroinitializer }, align 32
@flush_racache._entry_ptr = internal global ptr @flush_racache._entry, section ".printk_index", align 4
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"orangefs_flush_racache\00", [41 x i8] zeroinitializer }, align 32
@flush_racache._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.61, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: got return value of %d\0A\00", [34 x i8] zeroinitializer }, align 32
@flush_racache._entry_ptr.65 = internal global ptr @flush_racache._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"orangefs_fsync\00", [17 x i8] zeroinitializer }, align 32
@orangefs_fsync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.66, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017orangefs_fsync got return value of %d\0A\00", [55 x i8] zeroinitializer }, align 32
@orangefs_fsync._entry_ptr = internal global ptr @orangefs_fsync._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 18]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 76, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 81, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 129, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 142, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 148, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 157, i32 6 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 158, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 174, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 217, i32 5 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 223, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 229, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 256, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 261, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 273, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [25 x i8] c"orangefs_file_operations\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 555, i32 30 }
@___asan_gen_.168 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 73, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 496, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 505, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 389, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [21 x i8] c"orangefs_file_vm_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 372, i32 42 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 365, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 411, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 424, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 428, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 25, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 35, i32 34 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 38, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 460, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [22 x i8] c"../fs/orangefs/file.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 463, i32 2 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @flush_racache._entry, ptr @flush_racache._entry.63, ptr @flush_racache._entry_ptr, ptr @flush_racache._entry_ptr.65, ptr @orangefs_fault._entry, ptr @orangefs_fault._entry_ptr, ptr @orangefs_file_llseek._entry, ptr @orangefs_file_llseek._entry.45, ptr @orangefs_file_llseek._entry_ptr, ptr @orangefs_file_llseek._entry_ptr.47, ptr @orangefs_file_mmap._entry, ptr @orangefs_file_mmap._entry_ptr, ptr @orangefs_file_release._entry, ptr @orangefs_file_release._entry.54, ptr @orangefs_file_release._entry.57, ptr @orangefs_file_release._entry_ptr, ptr @orangefs_file_release._entry_ptr.56, ptr @orangefs_file_release._entry_ptr.59, ptr @orangefs_fsync._entry, ptr @orangefs_fsync._entry_ptr, ptr @wait_for_direct_io._entry, ptr @wait_for_direct_io._entry.12, ptr @wait_for_direct_io._entry.17, ptr @wait_for_direct_io._entry.20, ptr @wait_for_direct_io._entry.23, ptr @wait_for_direct_io._entry.26, ptr @wait_for_direct_io._entry.3, ptr @wait_for_direct_io._entry.31, ptr @wait_for_direct_io._entry.34, ptr @wait_for_direct_io._entry.39, ptr @wait_for_direct_io._entry.6, ptr @wait_for_direct_io._entry.9, ptr @wait_for_direct_io._entry_ptr, ptr @wait_for_direct_io._entry_ptr.11, ptr @wait_for_direct_io._entry_ptr.14, ptr @wait_for_direct_io._entry_ptr.19, ptr @wait_for_direct_io._entry_ptr.22, ptr @wait_for_direct_io._entry_ptr.25, ptr @wait_for_direct_io._entry_ptr.28, ptr @wait_for_direct_io._entry_ptr.33, ptr @wait_for_direct_io._entry_ptr.36, ptr @wait_for_direct_io._entry_ptr.41, ptr @wait_for_direct_io._entry_ptr.5, ptr @wait_for_direct_io._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @orangefs_file_operations, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @orangefs_file_vm_ops, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_direct_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_direct_io._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_direct_io._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_direct_io._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_direct_io._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_direct_io._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_direct_io._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_direct_io._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_direct_io._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_direct_io._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_direct_io._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_direct_io._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_file_llseek._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_file_llseek._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_file_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_file_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_file_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_file_release._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_file_release._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush_racache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flush_racache._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_fsync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wait_for_direct_io(i32 noundef %type, ptr noundef %inode, ptr nocapture noundef readonly %offset, ptr noundef %iter, i32 noundef %total_size, i64 noundef %readahead_size, ptr noundef readonly %wr, ptr nocapture noundef readnone %index_return, ptr noundef readonly %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -376
  %call1 = tail call ptr @op_alloc(i32 noundef -16777215) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %readahead_size to i32
  %readahead_size2 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 36
  %0 = ptrtoint ptr %readahead_size2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %readahead_size2, align 4
  %io_type = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 32
  %1 = ptrtoint ptr %io_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %type, ptr %io_type, align 8
  %refn7 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3, i32 8
  %2 = call ptr @memcpy(ptr %refn7, ptr %add.ptr.i, i32 24)
  %call9357 = tail call i32 @orangefs_bufmap_get() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9357)
  %cmp358 = icmp slt i32 %call9357, 0
  br i1 %cmp358, label %if.end.if.then11_crit_edge, label %do.body20.lr.ph

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

do.body20.lr.ph:                                  ; preds = %if.end
  %3 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 2
  %buf_index = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 1
  %count = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 2
  %offset38 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 7, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp39 = icmp eq i32 %type, 2
  %tobool41.not = icmp ne ptr %wr, null
  %4 = and i1 %cmp39, %tobool41.not
  %uid = getelementptr inbounds %struct.orangefs_write_range, ptr %wr, i32 0, i32 2
  %uid45 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 1
  %gid = getelementptr inbounds %struct.orangefs_write_range, ptr %wr, i32 0, i32 3
  %gid49 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 3, i32 2
  %tobool51.not = icmp eq ptr %file, null
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp65 = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_size)
  %tobool88.not = icmp ne i32 %total_size, 0
  %5 = and i1 %cmp39, %tobool88.not
  %tag = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 1
  %cond = select i1 %cmp39, ptr @.str.15, ptr @.str.16
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  br label %do.body20

if.then11:                                        ; preds = %do.end141.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %call9.lcssa = phi i32 [ %call9357, %if.end.if.then11_crit_edge ], [ %call9, %do.end141.if.then11_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %6 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %6, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool12.not = icmp eq i64 %and, 0
  br i1 %tobool12.not, label %if.then11.if.end252_crit_edge, label %do.end

if.then11.if.end252_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call9.lcssa) #9
  br label %if.end252

do.body20:                                        ; preds = %do.end141.do.body20_crit_edge, %do.body20.lr.ph
  %call9359 = phi i32 [ %call9357, %do.body20.lr.ph ], [ %call9, %do.end141.do.body20_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %7 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and21 = and i64 %7, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %do.body20.do.end31_crit_edge, label %do.end26

do.body20.do.end31_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %add.ptr.i, ptr noundef %call1, i32 noundef %call9359) #9
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %do.body20.do.end31_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %3, align 8
  %9 = ptrtoint ptr %buf_index to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call9359, ptr %buf_index, align 4
  %10 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %total_size, ptr %count, align 8
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset, align 8
  %13 = ptrtoint ptr %offset38 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %offset38, align 8
  br i1 %4, label %if.then42, label %do.end31.if.end50_crit_edge

do.end31.if.end50_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then42:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %uid, align 4
  %15 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call43 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %15) #6
  %16 = ptrtoint ptr %uid45 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call43, ptr %uid45, align 4
  %17 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack334 = load i32, ptr %gid, align 8
  %18 = insertvalue [1 x i32] undef, i32 %.unpack334, 0
  %call47 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %18) #6
  %19 = ptrtoint ptr %gid49 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call47, ptr %gid49, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then42, %do.end31.if.end50_crit_edge
  br i1 %tobool51.not, label %if.end50.if.end56_crit_edge, label %if.then52

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_mode, align 8
  %and53 = and i32 %21, 2
  %and55 = and i32 %21, 1
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end50.if.end56_crit_edge
  %open_for_write.0 = phi i32 [ %and53, %if.then52 ], [ 1, %if.end50.if.end56_crit_edge ]
  %open_for_read.0 = phi i32 [ %and55, %if.then52 ], [ 0, %if.end50.if.end56_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %open_for_write.0)
  %tobool60.not = icmp ne i32 %open_for_write.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %open_for_read.0)
  %tobool68.not = icmp ne i32 %open_for_read.0, 0
  %22 = select i1 %cmp39, i1 %tobool60.not, i1 false
  %23 = select i1 %cmp65, i1 %tobool68.not, i1 false
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %if.end56._crit_edge

if.end56._crit_edge:                              ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %27

25:                                               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %uid45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %uid45, align 4
  br label %27

27:                                               ; preds = %25, %if.end56._crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %28 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and74 = and i64 %28, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and74)
  %tobool75.not = icmp eq i64 %and74, 0
  br i1 %tobool75.not, label %.do.end84_crit_edge, label %do.end79

.do.end84_crit_edge:                              ; preds = %27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end84

do.end79:                                         ; preds = %27
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %offset, align 8
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef %add.ptr.i, i64 noundef %30, i32 noundef %total_size) #9
  br label %do.end84

do.end84:                                         ; preds = %do.end79, %.do.end84_crit_edge
  br i1 %5, label %if.then89, label %do.end84.do.body101_crit_edge

do.end84.do.body101_crit_edge:                    ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body101

if.then89:                                        ; preds = %do.end84
  %call90 = tail call i32 @orangefs_bufmap_copy_from_iovec(ptr noundef %iter, i32 noundef %call9359, i32 noundef %total_size) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %do.end96, label %if.then89.do.body101_crit_edge

if.then89.do.body101_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body101

do.end96:                                         ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %call90) #9
  br label %if.then239

do.body101:                                       ; preds = %if.then89.do.body101_crit_edge, %do.end84.do.body101_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %31 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and102 = and i64 %31, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and102)
  %tobool103.not = icmp eq i64 %and102, 0
  br i1 %tobool103.not, label %do.body101.do.end112_crit_edge, label %do.end107

do.body101.do.end112_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end112

do.end107:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %tag to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tag, align 8
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, ptr noundef %add.ptr.i, i64 noundef %33) #9
  br label %do.end112

do.end112:                                        ; preds = %do.end107, %do.body101.do.end112_crit_edge
  %34 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 33
  %36 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 8
  %and116 = and i32 %39, 1
  %call119 = tail call i32 @service_operation(ptr noundef %call1, ptr noundef nonnull %cond, i32 noundef %and116) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call119)
  %cmp120 = icmp eq i32 %call119, -11
  br i1 %cmp120, label %land.lhs.true122, label %if.end142

land.lhs.true122:                                 ; preds = %do.end112
  %40 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call1, align 8
  %and123 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %land.lhs.true122.do.end183_crit_edge, label %if.then125

land.lhs.true122.do.end183_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end183

if.then125:                                       ; preds = %land.lhs.true122
  tail call void @orangefs_bufmap_put(i32 noundef %call9359) #6
  br i1 %cmp39, label %if.then128, label %if.then125.do.body130_crit_edge

if.then125.do.body130_crit_edge:                  ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body130

if.then128:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iov_iter_revert(ptr noundef %iter, i32 noundef %total_size) #6
  br label %do.body130

do.body130:                                       ; preds = %if.then128, %if.then125.do.body130_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %42 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and131 = and i64 %42, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and131)
  %tobool132.not = icmp eq i64 %and131, 0
  br i1 %tobool132.not, label %do.body130.do.end141_crit_edge, label %do.end136

do.body130.do.end141_crit_edge:                   ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end141

do.end136:                                        ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #8
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1) #9
  br label %do.end141

do.end141:                                        ; preds = %do.end136, %do.body130.do.end141_crit_edge
  %call9 = tail call i32 @orangefs_bufmap_get() #6
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end141.if.then11_crit_edge, label %do.end141.do.body20_crit_edge

do.end141.do.body20_crit_edge:                    ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

do.end141.if.then11_crit_edge:                    ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end142:                                        ; preds = %do.end112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp143 = icmp slt i32 %call119, 0
  br i1 %cmp143, label %if.then145, label %if.end193

if.then145:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call119)
  %cmp146 = icmp eq i32 %call119, -4
  br i1 %cmp146, label %if.then148, label %if.then145.do.end183_crit_edge

if.then145.do.end183_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end183

if.then148:                                       ; preds = %if.then145
  %43 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call1, align 8
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %44, label %do.end163 [
    i32 17, label %sw.bb
    i32 18, label %sw.bb155
  ]

sw.bb:                                            ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %cmp150 = icmp eq i64 %47, 0
  %. = select i1 %cmp150, i32 -4, i32 0
  br label %do.body167

sw.bb155:                                         ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #8
  %.total_size = select i1 %cmp65, i32 -4, i32 %total_size
  br label %do.body167

do.end163:                                        ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #8
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef %44) #9
  br label %do.body167

do.body167:                                       ; preds = %do.end163, %sw.bb155, %sw.bb
  %ret.0 = phi i32 [ 0, %do.end163 ], [ %., %sw.bb ], [ %.total_size, %sw.bb155 ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %48 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and168 = and i64 %48, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and168)
  %tobool169.not = icmp eq i64 %and168, 0
  br i1 %tobool169.not, label %do.body167.if.end189_crit_edge, label %do.end173

do.body167.if.end189_crit_edge:                   ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end189

do.end173:                                        ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call1, align 8
  %call176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef %50, ptr noundef %call1) #9
  br label %if.end189

do.end183:                                        ; preds = %if.then145.do.end183_crit_edge, %land.lhs.true122.do.end183_crit_edge
  %cond187 = select i1 %cmp65, ptr @.str.29, ptr @.str.30
  %call188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond187, ptr noundef %add.ptr.i, i32 noundef %call119) #9
  br label %if.end189

if.end189:                                        ; preds = %do.end183, %do.end173, %do.body167.if.end189_crit_edge
  %ret.1 = phi i32 [ %ret.0, %do.end173 ], [ %ret.0, %do.body167.if.end189_crit_edge ], [ %call119, %do.end183 ]
  %call190 = tail call zeroext i1 @orangefs_cancel_op_in_progress(ptr noundef %call1) #6
  br i1 %call190, label %if.end189.cleanup_crit_edge, label %if.end189.if.then239_crit_edge

if.end189.if.then239_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then239

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end193:                                        ; preds = %if.end142
  br i1 %cmp65, label %land.lhs.true196, label %if.end193.do.body214_crit_edge

if.end193.do.body214_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body214

land.lhs.true196:                                 ; preds = %if.end193
  %resp = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 4, i32 4
  %51 = ptrtoint ptr %resp to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %tobool197.not = icmp eq i64 %52, 0
  br i1 %tobool197.not, label %land.lhs.true196.do.body214_crit_edge, label %if.then198

land.lhs.true196.do.body214_crit_edge:            ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body214

if.then198:                                       ; preds = %land.lhs.true196
  %conv202 = trunc i64 %52 to i32
  %call203 = tail call i32 @orangefs_bufmap_copy_to_iovec(ptr noundef %iter, i32 noundef %call9359, i32 noundef %conv202) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %cmp204 = icmp slt i32 %call203, 0
  br i1 %cmp204, label %do.end209, label %if.then198.do.body214_crit_edge

if.then198.do.body214_crit_edge:                  ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body214

do.end209:                                        ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #8
  %call211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.1, i32 noundef %call203) #9
  br label %if.then239

do.body214:                                       ; preds = %if.then198.do.body214_crit_edge, %land.lhs.true196.do.body214_crit_edge, %if.end193.do.body214_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %53 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and215 = and i64 %53, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and215)
  %tobool216.not = icmp eq i64 %and215, 0
  br i1 %tobool216.not, label %do.body214.do.end232_crit_edge, label %do.end220

do.body214.do.end232_crit_edge:                   ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end232

do.end220:                                        ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #8
  %cond224 = select i1 %cmp65, ptr @.str.37, ptr @.str.38
  %resp226 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 4, i32 4
  %54 = ptrtoint ptr %resp226 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %resp226, align 8
  %conv228 = trunc i64 %55 to i32
  %call229 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, ptr noundef %add.ptr.i, ptr noundef nonnull %cond224, i32 noundef %conv228) #9
  br label %do.end232

do.end232:                                        ; preds = %do.end220, %do.body214.do.end232_crit_edge
  %resp234 = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call1, i32 0, i32 4, i32 4
  %56 = ptrtoint ptr %resp234 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %resp234, align 8
  %conv236 = trunc i64 %57 to i32
  br label %if.then239

if.then239:                                       ; preds = %do.end232, %do.end209, %if.end189.if.then239_crit_edge, %do.end96
  %ret.2.ph = phi i32 [ %conv236, %do.end232 ], [ %call203, %do.end209 ], [ %ret.1, %if.end189.if.then239_crit_edge ], [ %call90, %do.end96 ]
  tail call void @orangefs_bufmap_put(i32 noundef %call9359) #6
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %58 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and241 = and i64 %58, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and241)
  %tobool242.not = icmp eq i64 %and241, 0
  br i1 %tobool242.not, label %if.then239.if.end252_crit_edge, label %do.end246

if.then239.if.end252_crit_edge:                   ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end252

do.end246:                                        ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #8
  %call248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, ptr noundef %add.ptr.i, i32 noundef %call9359) #9
  br label %if.end252

if.end252:                                        ; preds = %do.end246, %if.then239.if.end252_crit_edge, %do.end, %if.then11.if.end252_crit_edge
  %ret.2344 = phi i32 [ %ret.2.ph, %if.then239.if.end252_crit_edge ], [ %ret.2.ph, %do.end246 ], [ %call9.lcssa, %do.end ], [ %call9.lcssa, %if.then11.if.end252_crit_edge ]
  tail call void @op_release(ptr noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end252, %if.end189.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2344, %if.end252 ], [ -12, %entry.cleanup_crit_edge ], [ %ret.1, %if.end189.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @op_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_bufmap_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_bufmap_copy_from_iovec(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @service_operation(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @orangefs_bufmap_put(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @orangefs_cancel_op_in_progress(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_bufmap_copy_to_iovec(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @op_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_revalidate_mapping(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %bitlock1 = getelementptr i8, ptr %inode, i32 812
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  br label %while.cond

while.cond:                                       ; preds = %if.then5, %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.42, i32 noundef 73) #6
  %2 = ptrtoint ptr %bitlock1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bitlock1, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %while.cond.if.end_crit_edge, label %wait_on_bit.exit

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

wait_on_bit.exit:                                 ; preds = %while.cond
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %bitlock1, i32 noundef 1, ptr noundef nonnull @bit_wait, i32 noundef 258) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %wait_on_bit.exit.if.end_crit_edge, label %wait_on_bit.exit.cleanup_crit_edge

wait_on_bit.exit.cleanup_crit_edge:               ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

wait_on_bit.exit.if.end_crit_edge:                ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %wait_on_bit.exit.if.end_crit_edge, %while.cond.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #6
  %5 = ptrtoint ptr %bitlock1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %bitlock1, align 4
  %7 = and i32 %6, 2
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #6
  br label %while.cond

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %mapping_time = getelementptr i8, ptr %inode, i32 796
  %9 = ptrtoint ptr %mapping_time to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mapping_time, align 4
  %sub = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end9, label %while.end

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #6
  br label %cleanup

while.end:                                        ; preds = %if.end7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %bitlock1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #6
  tail call void @unmap_mapping_range(ptr noundef %1, i64 noundef 0, i64 noundef 0, i32 noundef 0) #6
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %1, i64 noundef 0, i64 noundef 9223372036854775807) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.then17, label %while.end.if.end19_crit_edge

while.end.if.end19_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then17:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 @invalidate_inode_pages2(ptr noundef %1) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %while.end.if.end19_crit_edge
  %ret.0 = phi i32 [ %call.i, %while.end.if.end19_crit_edge ], [ %call18, %if.then17 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @orangefs_cache_timeout_msecs to i32))
  %12 = load i32, ptr @orangefs_cache_timeout_msecs, align 4
  %mul = mul i32 %12, 100
  %div = sdiv i32 %mul, 1000
  %add = add i32 %div, %11
  %13 = ptrtoint ptr %mapping_time to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %mapping_time, align 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bitlock1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @wake_up_bit(ptr noundef %bitlock1, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end9, %wait_on_bit.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %ret.0, %if.end19 ], [ %call3.i, %wait_on_bit.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @orangefs_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %origin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %origin)
  %cmp = icmp eq i32 %origin, 2
  br i1 %cmp, label %if.then, label %entry.do.body14_crit_edge

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

if.then:                                          ; preds = %entry
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call i32 @orangefs_inode_getattr(ptr noundef %5, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call1)
  %cmp2 = icmp eq i32 %call1, -116
  %spec.store.select = select i1 %cmp2, i32 -5, i32 %call1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool.not, label %if.then.do.body14_crit_edge, label %do.body

if.then.do.body14_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

do.body:                                          ; preds = %if.then
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %6 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %6, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool5.not = icmp eq i64 %and, 0
  br i1 %tobool5.not, label %do.body.do.end11_crit_edge, label %do.end

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.44, i32 noundef 500) #9
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %conv = sext i32 %spec.store.select to i64
  br label %cleanup

do.body14:                                        ; preds = %if.then.do.body14_crit_edge, %entry.do.body14_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %7 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and15 = and i64 %7, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %do.body14.do.end28_crit_edge, label %do.end20

do.body14.do.end28_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %conv22 = trunc i64 %offset to i32
  %call23 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %conv24 = trunc i64 %call23 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %conv22, i32 noundef %origin, i32 noundef %conv24) #9
  br label %do.end28

do.end28:                                         ; preds = %do.end20, %do.body14.do.end28_crit_edge
  %call29 = tail call i64 @generic_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %origin) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %do.end11
  %retval.0 = phi i64 [ %conv, %do.end11 ], [ %call29, %do.end28 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_file_read_iter(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.orangefs_stats, ptr @orangefs_stats, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.orangefs_stats, ptr @orangefs_stats, i32 0, i32 2), align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.orangefs_stats, ptr @orangefs_stats, i32 0, i32 2), align 4
  %1 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 25
  tail call void @down_read(ptr noundef %i_rwsem) #6
  %5 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iocb, align 8
  %f_inode.i12 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %f_inode.i12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_inode.i12, align 8
  %call3 = tail call i32 @orangefs_revalidate_mapping(ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @generic_file_read_iter(ptr noundef %iocb, ptr noundef %iter) #6
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call3, %entry.out_crit_edge ], [ %call4, %if.end ]
  %9 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iocb, align 8
  %f_inode.i13 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %f_inode.i13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i13, align 8
  %i_rwsem7 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 25
  tail call void @up_read(ptr noundef %i_rwsem7) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_file_write_iter(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.orangefs_stats, ptr @orangefs_stats, i32 0, i32 3) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.orangefs_stats, ptr @orangefs_stats, i32 0, i32 3), align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.orangefs_stats, ptr @orangefs_stats, i32 0, i32 3), align 4
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %1 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ki_pos, align 8
  %3 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i, align 8
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %6)
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %call1)
  %cmp = icmp sgt i64 %2, %call1
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iocb, align 8
  %f_inode.i13 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %f_inode.i13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i13, align 8
  %call4 = tail call i32 @orangefs_revalidate_mapping(ptr noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call7 = tail call i32 @generic_file_write_iter(ptr noundef %iocb, ptr noundef %iter) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call4, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_file_mmap(ptr noundef %file, ptr nocapture noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %call1 = tail call i32 @orangefs_revalidate_mapping(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %2 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %2, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %do.body.do.end8_crit_edge, label %do.end

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %file) #9
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %3 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vm_flags, align 4
  %or = and i32 %4, -98305
  %and10 = or i32 %or, 32768
  store i32 %and10, ptr %vm_flags, align 4
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %5 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end8.file_accessed.exit_crit_edge

do.end8.file_accessed.exit_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %file_accessed.exit

if.then.i:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #6
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i, %do.end8.file_accessed.exit_crit_edge
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %7 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @orangefs_file_vm_ops, ptr %vm_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %file_accessed.exit, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_flush(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %call = tail call i32 @filemap_write_and_wait_range(ptr noundef %1, i64 noundef 0, i64 noundef 9223372036854775807) #6
  %2 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_file_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %file) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %do.end2.if.end37_crit_edge, label %land.lhs.true

do.end2.if.end37_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true:                                    ; preds = %do.end2
  %i_mapping = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_mapping, align 8
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %land.lhs.true.if.end37_crit_edge, label %land.lhs.true7

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true7:                                   ; preds = %land.lhs.true
  %nrpages = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 46, i32 7
  %5 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nrpages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %land.lhs.true7.if.end37_crit_edge, label %if.then10

land.lhs.true7.if.end37_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then10:                                        ; preds = %land.lhs.true7
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_features to i32))
  %7 = load i64, ptr @orangefs_features, align 8
  %and11 = and i64 %7, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %if.then10.if.end37_crit_edge, label %do.body14

if.then10.if.end37_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.body14:                                        ; preds = %if.then10
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %8 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and15 = and i64 %8, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %do.body14.do.end24_crit_edge, label %do.end19

do.body14.do.end24_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -376
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %add.ptr.i.i) #9
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %do.body14.do.end24_crit_edge
  %add.ptr.i.i44 = getelementptr i8, ptr %inode, i32 -376
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %9 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and.i = and i64 %9, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %do.end24.do.end6.i_crit_edge, label %do.end.i

do.end24.do.end6.i_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end.i:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #8
  %fs_id.i = getelementptr i8, ptr %inode, i32 -360
  %10 = ptrtoint ptr %fs_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fs_id.i, align 8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef %add.ptr.i.i44, ptr noundef %add.ptr.i.i44, i32 noundef %11) #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %do.end24.do.end6.i_crit_edge
  %call7.i = tail call ptr @op_alloc(i32 noundef -16777203) #6
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %do.end6.i.flush_racache.exit_crit_edge, label %if.end10.i

do.end6.i.flush_racache.exit_crit_edge:           ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flush_racache.exit

if.end10.i:                                       ; preds = %do.end6.i
  %req.i = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call7.i, i32 0, i32 3, i32 7
  %12 = call ptr @memcpy(ptr %req.i, ptr %add.ptr.i.i44, i32 24)
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i, align 16
  %flags.i = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 8
  %and14.i = and i32 %18, 1
  %call16.i = tail call i32 @service_operation(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.62, i32 noundef %and14.i) #6
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %19 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and18.i = and i64 %19, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i)
  %tobool19.not.i = icmp eq i64 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end10.i.do.end28.i_crit_edge, label %do.end23.i

if.end10.i.do.end28.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28.i

do.end23.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.61, i32 noundef %call16.i) #9
  br label %do.end28.i

do.end28.i:                                       ; preds = %do.end23.i, %if.end10.i.do.end28.i_crit_edge
  tail call void @op_release(ptr noundef nonnull %call7.i) #6
  br label %flush_racache.exit

flush_racache.exit:                               ; preds = %do.end28.i, %do.end6.i.flush_racache.exit_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %20 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and27 = and i64 %20, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and27)
  %tobool28.not = icmp eq i64 %and27, 0
  br i1 %tobool28.not, label %flush_racache.exit.if.end37_crit_edge, label %do.end31

flush_racache.exit.if.end37_crit_edge:            ; preds = %flush_racache.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end31:                                         ; preds = %flush_racache.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end31, %flush_racache.exit.if.end37_crit_edge, %if.then10.if.end37_crit_edge, %land.lhs.true7.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %do.end2.if.end37_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_fsync(ptr nocapture noundef readonly %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -376
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %call3 = tail call i32 @filemap_write_and_wait_range(ptr noundef %3, i64 noundef %start, i64 noundef %end) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @op_alloc(i32 noundef -16716287) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %req = getelementptr inbounds %struct.orangefs_kernel_op_s, ptr %call4, i32 0, i32 3, i32 7
  %4 = call ptr @memcpy(ptr %req, ptr %add.ptr.i, i32 24)
  %5 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and = and i32 %12, 1
  %call11 = tail call i32 @service_operation(ptr noundef nonnull %call4, ptr noundef nonnull @.str.66, i32 noundef %and) #6
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %13 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and12 = and i64 %13, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %if.end6.do.end19_crit_edge, label %do.end

if.end6.do.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %call11) #9
  br label %do.end19

do.end19:                                         ; preds = %do.end, %if.end6.do.end19_crit_edge
  tail call void @op_release(ptr noundef nonnull %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end19 ], [ %call3, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_lock(ptr noundef %filp, i32 noundef %cmd, ptr noundef %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.orangefs_sb_info_s, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 5
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @posix_test_lock(ptr noundef %filp, ptr noundef %fl) #6
  br label %if.end4

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @posix_lock_file(ptr noundef %filp, ptr noundef %fl, ptr noundef null) #6
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2, %entry.if.end4_crit_edge
  %rc.0 = phi i32 [ 0, %if.then2 ], [ %call3, %if.else ], [ -22, %entry.if.end4_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_inode_getattr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !124
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  %1 = tail call ptr @llvm.returnaddress(i32 0) #6
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #6
  tail call void @trace_hardirqs_on() #6
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call ptr @llvm.returnaddress(i32 0) #6
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #6
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #6
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !125
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !126

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #6, !srcloc !127
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !129
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !130
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !131
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orangefs_fault(ptr noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_mapping, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 @orangefs_inode_getattr(ptr noundef %7, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call)
  %cmp = icmp eq i32 %call, -116
  %spec.store.select = select i1 %cmp, i32 -5, i32 %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %tobool.not = icmp eq i32 %spec.store.select, 0
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef %spec.store.select) #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @filemap_fault(ptr noundef %vmf) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end
  %retval.0 = phi i32 [ 2, %do.end ], [ %call4, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_page_mkwrite(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_test_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_lock_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !101, !103, !105, !106, !107, !109, !111, !112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/orangefs/file.c", i32 76, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @wait_for_direct_io._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @wait_for_direct_io._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/orangefs/file.c", i32 81, i32 2}
!8 = !{ptr @wait_for_direct_io._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @wait_for_direct_io._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/orangefs/file.c", i32 129, i32 2}
!12 = !{ptr @wait_for_direct_io._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @wait_for_direct_io._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/orangefs/file.c", i32 142, i32 4}
!16 = !{ptr @wait_for_direct_io._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @wait_for_direct_io._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/orangefs/file.c", i32 148, i32 2}
!20 = !{ptr @wait_for_direct_io._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @wait_for_direct_io._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/orangefs/file.c", i32 157, i32 6}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/orangefs/file.c", i32 158, i32 6}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/orangefs/file.c", i32 174, i32 3}
!28 = !{ptr @wait_for_direct_io._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @wait_for_direct_io._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/orangefs/file.c", i32 217, i32 5}
!32 = !{ptr @wait_for_direct_io._entry.20, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wait_for_direct_io._entry_ptr.22, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/orangefs/file.c", i32 223, i32 4}
!36 = !{ptr @wait_for_direct_io._entry.23, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @wait_for_direct_io._entry_ptr.25, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.27, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/orangefs/file.c", i32 229, i32 4}
!40 = !{ptr @wait_for_direct_io._entry.26, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @wait_for_direct_io._entry_ptr.28, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.29, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.30, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.32, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/orangefs/file.c", i32 256, i32 4}
!46 = !{ptr @wait_for_direct_io._entry.31, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @wait_for_direct_io._entry_ptr.33, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.35, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/orangefs/file.c", i32 261, i32 2}
!50 = !{ptr @wait_for_direct_io._entry.34, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @wait_for_direct_io._entry_ptr.36, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.37, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.38, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.40, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/orangefs/file.c", i32 273, i32 3}
!56 = !{ptr @wait_for_direct_io._entry.39, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @wait_for_direct_io._entry_ptr.41, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @orangefs_file_operations, !59, !"orangefs_file_operations", i1 false, i1 false}
!59 = !{!"../fs/orangefs/file.c", i32 555, i32 30}
!60 = !{ptr @.str.42, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!62 = !{ptr @.str.43, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/orangefs/file.c", i32 496, i32 4}
!64 = !{ptr @.str.44, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @orangefs_file_llseek._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @orangefs_file_llseek._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.46, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/orangefs/file.c", i32 505, i32 2}
!69 = !{ptr @orangefs_file_llseek._entry.45, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @orangefs_file_llseek._entry_ptr.47, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.48, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/orangefs/file.c", i32 389, i32 2}
!73 = !{ptr @.str.49, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @orangefs_file_mmap._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @orangefs_file_mmap._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @orangefs_file_vm_ops, !77, !"orangefs_file_vm_ops", i1 false, i1 false}
!77 = !{!"../fs/orangefs/file.c", i32 372, i32 42}
!78 = !{ptr @.str.50, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/orangefs/file.c", i32 365, i32 3}
!80 = !{ptr @.str.51, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @orangefs_fault._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @orangefs_fault._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.52, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/orangefs/file.c", i32 411, i32 2}
!85 = !{ptr @.str.53, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @orangefs_file_release._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @orangefs_file_release._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.55, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/orangefs/file.c", i32 424, i32 4}
!90 = !{ptr @orangefs_file_release._entry.54, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @orangefs_file_release._entry_ptr.56, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.58, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/orangefs/file.c", i32 428, i32 4}
!94 = !{ptr @orangefs_file_release._entry.57, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @orangefs_file_release._entry_ptr.59, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.60, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/orangefs/file.c", i32 25, i32 2}
!98 = !{ptr @.str.61, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @flush_racache._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @flush_racache._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.62, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/orangefs/file.c", i32 35, i32 34}
!103 = !{ptr @.str.64, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/orangefs/file.c", i32 38, i32 2}
!105 = !{ptr @flush_racache._entry.63, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @flush_racache._entry_ptr.65, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.66, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/orangefs/file.c", i32 460, i32 4}
!109 = !{ptr @.str.67, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/orangefs/file.c", i32 463, i32 2}
!111 = !{ptr @orangefs_fsync._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @orangefs_fsync._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 2154881174}
!123 = !{i64 2154881449}
!124 = !{i64 626823, i64 626884}
!125 = !{i64 629555}
!126 = !{!"branch_weights", i32 1, i32 2000}
!127 = !{i64 629840}
!128 = !{i64 2152987491}
!129 = !{i64 2152987333}
!130 = !{i64 2152987661}
!131 = !{i64 2149784533}
