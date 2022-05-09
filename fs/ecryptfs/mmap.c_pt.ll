; ModuleID = '/llk/IR_all_yes/fs/ecryptfs/mmap.c_pt.bc'
source_filename = "../fs/ecryptfs/mmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.25 }
%union.anon.25 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.27, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%union.anon.57 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
%struct.page = type { i32, %union.anon, %union.anon.75, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.ecryptfs_inode_info = type { %struct.inode, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.ecryptfs_crypt_stat }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ecryptfs_crypt_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, [32 x i8], [64 x i8], [16 x i8], %struct.list_head, %struct.mutex, %struct.mutex, %struct.mutex }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.5, ptr }
%union.anon.5 = type { i64 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@ecryptfs_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @ecryptfs_writepage, ptr @ecryptfs_readpage, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr @ecryptfs_write_begin, ptr @ecryptfs_write_end, ptr @ecryptfs_bmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ecryptfs_xattr_cache = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@ecryptfs_write_inode_size_to_xattr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014No support for setting xattr in lower filesystem\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ecryptfs_write_inode_size_to_xattr\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/ecryptfs/mmap.c\00", [45 x i8] zeroinitializer }, align 32
@ecryptfs_write_inode_size_to_xattr._entry_ptr = internal global ptr @ecryptfs_write_inode_size_to_xattr._entry, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"user.ecryptfs\00", [18 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ecryptfs_write_inode_size_to_xattr._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.5, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013Error whilst attempting to write inode size to lower file xattr; rc = [%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@ecryptfs_write_inode_size_to_xattr._entry_ptr.9 = internal global ptr @ecryptfs_write_inode_size_to_xattr._entry.7, section ".printk_index", align 4
@ecryptfs_write_inode_size_to_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: Error writing file size to header; rc = [%d]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ecryptfs_write_inode_size_to_header\00", [60 x i8] zeroinitializer }, align 32
@ecryptfs_write_inode_size_to_header._entry_ptr = internal global ptr @ecryptfs_write_inode_size_to_header._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: Error encrypting page (upper index [0x%.16lx])\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_writepage = private unnamed_addr constant [19 x i8] c"ecryptfs_writepage\00", align 1
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@ecryptfs_readpage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [146 x i8], [46 x i8] } { [146 x i8] c"\013%s: Error attempting to copy the encrypted content from the lower file whilst inserting the metadata from the xattr into the header; rc = [%d]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ecryptfs_readpage\00", [46 x i8] zeroinitializer }, align 32
@ecryptfs_readpage._entry_ptr = internal global ptr @ecryptfs_readpage._entry, section ".printk_index", align 4
@ecryptfs_readpage._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.5, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Error reading page; rc = [%d]\0A\00", [63 x i8] zeroinitializer }, align 32
@ecryptfs_readpage._entry_ptr.19 = internal global ptr @ecryptfs_readpage._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Error decrypting page; rc = [%d]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: Unlocking page with index = [0x%.16lx]\0A\00", [50 x i8] zeroinitializer }, align 32
@ecryptfs_copy_up_encrypted_with_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Error reading xattr region; rc = [%d]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ecryptfs_copy_up_encrypted_with_header\00", [57 x i8] zeroinitializer }, align 32
@ecryptfs_copy_up_encrypted_with_header._entry_ptr = internal global ptr @ecryptfs_copy_up_encrypted_with_header._entry, section ".printk_index", align 4
@ecryptfs_copy_up_encrypted_with_header._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.5, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013%s: Error attempting to read extent at offset [%lld] in the lower file; rc = [%d]\0A\00", [43 x i8] zeroinitializer }, align 32
@ecryptfs_copy_up_encrypted_with_header._entry_ptr.26 = internal global ptr @ecryptfs_copy_up_encrypted_with_header._entry.24, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@ecryptfs_write_begin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s: Error attempting to read lower page segment; rc = [%d]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ecryptfs_write_begin\00", [43 x i8] zeroinitializer }, align 32
@ecryptfs_write_begin._entry_ptr = internal global ptr @ecryptfs_write_begin._entry, section ".printk_index", align 4
@ecryptfs_write_begin._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.28, ptr @.str.5, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ecryptfs_write_begin._entry_ptr.30 = internal global ptr @ecryptfs_write_begin._entry.29, section ".printk_index", align 4
@ecryptfs_write_begin._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.5, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Error reading page; rc = [%d]\0A\00", [59 x i8] zeroinitializer }, align 32
@ecryptfs_write_begin._entry_ptr.33 = internal global ptr @ecryptfs_write_begin._entry.31, section ".printk_index", align 4
@ecryptfs_write_begin._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.5, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Error decrypting page at index [%ld]; rc = [%d]\0A\00", [41 x i8] zeroinitializer }, align 32
@ecryptfs_write_begin._entry_ptr.36 = internal global ptr @ecryptfs_write_begin._entry.34, section ".printk_index", align 4
@ecryptfs_write_begin._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.28, ptr @.str.5, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013%s: Error on attempt to truncate to (higher) offset [%lld]; rc = [%d]\0A\00", [55 x i8] zeroinitializer }, align 32
@ecryptfs_write_begin._entry_ptr.39 = internal global ptr @ecryptfs_write_begin._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.41 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\017%s: Calling fill_zeros_to_end_of_page(page w/ index = [0x%.16lx], to = [%d])\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.ecryptfs_write_end = private unnamed_addr constant [19 x i8] c"ecryptfs_write_end\00", align 1
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: Expanded file size to [0x%.16llx]\0A\00", [55 x i8] zeroinitializer }, align 32
@ecryptfs_write_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.ecryptfs_write_end, ptr @.str.5, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Error writing inode size to metadata; rc = [%d]\0A\00", [45 x i8] zeroinitializer }, align 32
@ecryptfs_write_end._entry_ptr = internal global ptr @ecryptfs_write_end._entry, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"ecryptfs_aops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 538, i32 39 }
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"ecryptfs_xattr_cache\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 402, i32 20 }
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 788, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 260, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 414, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 425, i32 51 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 434, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 394, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 58, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 678, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 196, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 209, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 217, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 227, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 144, i32 5 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 159, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 289, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 301, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 316, i32 6 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 332, i32 6 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 350, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 717, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 476, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 510, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private constant [22 x i8] c"../fs/ecryptfs/mmap.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 516, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 271, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @ecryptfs_copy_up_encrypted_with_header._entry, ptr @ecryptfs_copy_up_encrypted_with_header._entry.24, ptr @ecryptfs_copy_up_encrypted_with_header._entry_ptr, ptr @ecryptfs_copy_up_encrypted_with_header._entry_ptr.26, ptr @ecryptfs_readpage._entry, ptr @ecryptfs_readpage._entry.17, ptr @ecryptfs_readpage._entry_ptr, ptr @ecryptfs_readpage._entry_ptr.19, ptr @ecryptfs_write_begin._entry, ptr @ecryptfs_write_begin._entry.29, ptr @ecryptfs_write_begin._entry.31, ptr @ecryptfs_write_begin._entry.34, ptr @ecryptfs_write_begin._entry.37, ptr @ecryptfs_write_begin._entry_ptr, ptr @ecryptfs_write_begin._entry_ptr.30, ptr @ecryptfs_write_begin._entry_ptr.33, ptr @ecryptfs_write_begin._entry_ptr.36, ptr @ecryptfs_write_begin._entry_ptr.39, ptr @ecryptfs_write_end._entry, ptr @ecryptfs_write_end._entry_ptr, ptr @ecryptfs_write_inode_size_to_header._entry, ptr @ecryptfs_write_inode_size_to_header._entry_ptr, ptr @ecryptfs_write_inode_size_to_xattr._entry, ptr @ecryptfs_write_inode_size_to_xattr._entry.7, ptr @ecryptfs_write_inode_size_to_xattr._entry_ptr, ptr @ecryptfs_write_inode_size_to_xattr._entry_ptr.9, ptr @ecryptfs_aops, ptr @ecryptfs_xattr_cache, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_xattr_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_inode_size_to_xattr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_inode_size_to_xattr._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_inode_size_to_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_readpage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 146, i32 192, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_readpage._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_copy_up_encrypted_with_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_copy_up_encrypted_with_header._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_begin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_begin._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_begin._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_begin._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_begin._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecryptfs_write_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ecryptfs_get_locked_page(ptr nocapture noundef readonly %inode, i64 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %conv = trunc i64 %index to i32
  %call.i = tail call ptr @read_cache_page(ptr noundef %1, i32 noundef %conv, ptr noundef null, ptr noundef null) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 788) #10
  %2 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !101

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !101

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #10
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %and.i.i4.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #10, !srcloc !103
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.if.end_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

folio_trylock.exit.i.if.end_crit_edge:            ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %6) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %folio_trylock.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecryptfs_write_inode_size_to_metadata(ptr noundef %ecryptfs_inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crypt_stat1 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 5
  %0 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crypt_stat1, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !105

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ecryptfs/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 446, 0\0A.popsection", ""() #10, !srcloc !106
  unreachable

do.end10:                                         ; preds = %entry
  %and12 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %do.end10
  %lower_file.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %ecryptfs_inode, i32 0, i32 4
  %2 = ptrtoint ptr %lower_file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lower_file.i, align 4
  %dentry.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i.i, align 8
  %i_opflags.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %i_opflags.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %i_opflags.i, align 2
  %10 = and i16 %9, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then14
  %11 = load ptr, ptr @ecryptfs_xattr_cache, align 4
  %call3.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %11, i32 noundef 3264) #10
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #10
  %call7.i = tail call i32 @__vfs_getxattr(ptr noundef %5, ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull %call3.i, i32 noundef 4096) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 8, i32 %call7.i
  %call11.i = tail call fastcc i64 @i_size_read(ptr noundef %ecryptfs_inode) #10
  %12 = ptrtoint ptr %call3.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call11.i, ptr %call3.i, align 8
  %call12.i = tail call i32 @__vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %5, ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull %call3.i, i32 noundef %spec.store.select.i, i32 noundef 0) #10
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end6.i.if.end20.i_crit_edge, label %do.end17.i

if.end6.i.if.end20.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

do.end17.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call12.i) #13
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end17.i, %if.end6.i.if.end20.i_crit_edge
  %13 = load ptr, ptr @ecryptfs_xattr_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef nonnull %call3.i) #10
  br label %cleanup

if.else:                                          ; preds = %do.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i20 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i20, label %if.else.cleanup_crit_edge, label %if.end.i23

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i23:                                       ; preds = %if.else
  %call1.i = tail call fastcc i64 @i_size_read(ptr noundef %ecryptfs_inode) #10
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call1.i, ptr %call7.i.i, align 8
  %call2.i21 = tail call i32 @ecryptfs_write_lower(ptr noundef %ecryptfs_inode, ptr noundef nonnull %call7.i.i, i64 noundef 0, i32 noundef 8) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i21)
  %cmp.i22 = icmp slt i32 %call2.i21, 0
  br i1 %cmp.i22, label %do.end.i24, label %if.end.i23.cleanup_crit_edge

if.end.i23.cleanup_crit_edge:                     ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i24:                                       ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %call2.i21) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.i24, %if.end.i23.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end20.i, %if.end.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ %call12.i, %if.end20.i ], [ -38, %do.end.i ], [ -12, %if.end.i.cleanup_crit_edge ], [ %call2.i21, %do.end.i24 ], [ -12, %if.else.cleanup_crit_edge ], [ 0, %if.end.i23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_writepage(ptr noundef %page, ptr nocapture noundef readnone %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ecryptfs_encrypt_page(ptr noundef %page) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ecryptfs_writepage, i32 noundef %1) #10
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !101

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.13) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !107
  unreachable

do.body7.i:                                       ; preds = %if.then
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %2, align 4
  %and.i31.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !101

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %2, align 4
  %and.i32.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !105

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !101

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %12, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %13, %if.end.i36.i ]
  %14 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.14) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !108
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !101

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %12, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %page to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %15, %if.end.i43.i ]
  %16 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %16) #10
  br label %out

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !109
  %17 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !101

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #10
  br label %out

out:                                              ; preds = %SetPageUptodate.exit, %ClearPageUptodate.exit
  tail call void @unlock_page(ptr noundef %page) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %crypt_stat1 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %3, i32 0, i32 5
  %tobool.not = icmp eq ptr %crypt_stat1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %crypt_stat1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crypt_stat1, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.else

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else:                                          ; preds = %lor.lhs.false
  %and7 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else32, label %if.then9

if.then9:                                         ; preds = %if.else
  %and11 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else18, label %if.then13

if.then13:                                        ; preds = %if.then9
  %call14 = tail call fastcc i32 @ecryptfs_copy_up_encrypted_with_header(ptr noundef %page, ptr noundef nonnull %crypt_stat1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.else41_crit_edge, label %do.end

if.then13.if.else41_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else41

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call14) #13
  br label %if.then40

if.else18:                                        ; preds = %if.then9
  %index19 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %index19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index19, align 4
  %call22 = tail call i32 @ecryptfs_read_lower_page_segment(ptr noundef %page, i32 noundef %7, i32 noundef 0, i32 noundef 4096, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.else18.if.else41_crit_edge, label %do.end27

if.else18.if.else41_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else41

do.end27:                                         ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call22) #13
  br label %if.then40

if.else32:                                        ; preds = %if.else
  %call33 = tail call i32 @ecryptfs_decrypt_page(ptr noundef %page) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.else32.if.else41_crit_edge, label %if.then35

if.else32.if.else41_crit_edge:                    ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else41

if.then35:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16, i32 noundef %call33) #10
  br label %if.then40

out:                                              ; preds = %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %call5 = tail call i32 @ecryptfs_read_lower_page_segment(ptr noundef %page, i32 noundef %9, i32 noundef 0, i32 noundef 4096, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool39.not = icmp eq i32 %call5, 0
  br i1 %tobool39.not, label %out.if.else41_crit_edge, label %out.if.then40_crit_edge

out.if.then40_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

out.if.else41_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else41

if.then40:                                        ; preds = %out.if.then40_crit_edge, %if.then35, %do.end27, %do.end
  %rc.075 = phi i32 [ %call5, %out.if.then40_crit_edge ], [ %call33, %if.then35 ], [ %call22, %do.end27 ], [ %call14, %do.end ]
  %10 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !101

if.then.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.13) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !107
  unreachable

do.body7.i:                                       ; preds = %if.then40
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %10, align 4
  %and.i31.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !101

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %14, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end.i.i ]
  %16 = inttoptr i32 %retval.0.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i = icmp eq i32 %18, -1
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %10, align 4
  %and.i32.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !105

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !101

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %20, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %21, %if.end.i36.i ]
  %22 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.14) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !108
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !101

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %20, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %page to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %23, %if.end.i43.i ]
  %24 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %24) #10
  br label %if.end42

if.else41:                                        ; preds = %out.if.else41_crit_edge, %if.else32.if.else41_crit_edge, %if.else18.if.else41_crit_edge, %if.then13.if.else41_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !109
  %25 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !101

if.then.i.i.i:                                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

SetPageUptodate.exit:                             ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #10
  br label %if.end42

if.end42:                                         ; preds = %SetPageUptodate.exit, %ClearPageUptodate.exit
  %rc.069 = phi i32 [ 0, %SetPageUptodate.exit ], [ %rc.075, %ClearPageUptodate.exit ]
  %index43 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %28 = ptrtoint ptr %index43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index43, align 4
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.16, i32 noundef %29) #10
  tail call void @unlock_page(ptr noundef %page) #10
  ret i32 %rc.069
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_write_begin(ptr nocapture noundef readonly %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr nocapture noundef writeonly %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i64 %pos, 12
  %conv = trunc i64 %0 to i32
  %call = tail call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef %conv, i32 noundef %flags) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup104_crit_edge, label %if.end

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %pagep, align 4
  %shl = and i64 %pos, 17592186040320
  %2 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i253 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i253)
  %tobool.not.i.i254 = icmp eq i32 %and.i.i253, 0
  br i1 %tobool.not.i.i254, label %if.end.i.i257, label %if.then.i.i256, !prof !101

if.then.i.i256:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i255 = add i32 %4, -1
  br label %_compound_head.exit.i261

if.end.i.i257:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i261

_compound_head.exit.i261:                         ; preds = %if.end.i.i257, %if.then.i.i256
  %retval.0.i.i258 = phi i32 [ %sub.i.i255, %if.then.i.i256 ], [ %5, %if.end.i.i257 ]
  %6 = inttoptr i32 %retval.0.i.i258 to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i259 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i259)
  %tobool.not.i.i.i260 = icmp eq i32 %and.i.i.i.i259, 0
  br i1 %tobool.not.i.i.i260, label %folio_flags.exit.i.i, label %if.then.i.i.i262, !prof !101

if.then.i.i.i262:                                 ; preds = %_compound_head.exit.i261
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i261
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i, label %if.then4, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !110
  br label %if.end70

if.then4:                                         ; preds = %folio_flags.exit.i.i
  %13 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mapping, align 4
  %crypt_stat6 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %crypt_stat6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %crypt_stat6, align 4
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then9, label %if.else16

if.then9:                                         ; preds = %if.then4
  %call11 = tail call i32 @ecryptfs_read_lower_page_segment(ptr noundef nonnull %call, i32 noundef %conv, i32 noundef 0, i32 noundef 4096, ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call11) #13
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !101

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.13) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !107
  unreachable

do.body7.i:                                       ; preds = %do.end
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %2, align 4
  %and.i31.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !101

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %20, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %21, %if.end.i.i ]
  %22 = inttoptr i32 %retval.0.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i = icmp eq i32 %24, -1
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %2, align 4
  %and.i32.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !105

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !101

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %26, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %call to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %27, %if.end.i36.i ]
  %28 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str.14) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !108
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !101

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %26, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %call to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %29, %if.end.i43.i ]
  %30 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %30) #10
  br label %if.then102

if.else:                                          ; preds = %if.then9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !109
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %2, align 4
  %and.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !101

if.then.i.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

SetPageUptodate.exit:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call) #10
  br label %if.end70

if.else16:                                        ; preds = %if.then4
  %and18 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else46, label %if.then20

if.then20:                                        ; preds = %if.else16
  %and22 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else34, label %if.then24

if.then24:                                        ; preds = %if.then20
  %call25 = tail call fastcc i32 @ecryptfs_copy_up_encrypted_with_header(ptr noundef nonnull %call, ptr noundef %crypt_stat6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %if.then24
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.28, i32 noundef %call25) #13
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %2, align 4
  %and.i.i159 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i159)
  %tobool.not.i160 = icmp eq i32 %and.i.i159, 0
  br i1 %tobool.not.i160, label %do.body7.i164, label %if.then.i161, !prof !101

if.then.i161:                                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.13) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !107
  unreachable

do.body7.i164:                                    ; preds = %do.end30
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %2, align 4
  %and.i31.i162 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i162)
  %tobool.not.i.i163 = icmp eq i32 %and.i31.i162, 0
  br i1 %tobool.not.i.i163, label %if.end.i.i167, label %if.then.i.i166, !prof !101

if.then.i.i166:                                   ; preds = %do.body7.i164
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i165 = add i32 %36, -1
  br label %_compound_head.exit.i172

if.end.i.i167:                                    ; preds = %do.body7.i164
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i172

_compound_head.exit.i172:                         ; preds = %if.end.i.i167, %if.then.i.i166
  %retval.0.i.i168 = phi i32 [ %sub.i.i165, %if.then.i.i166 ], [ %37, %if.end.i.i167 ]
  %38 = inttoptr i32 %retval.0.i.i168 to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i.not.i169 = icmp eq i32 %40, -1
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %2, align 4
  %and.i32.i170 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i170)
  %tobool.not.i33.i171 = icmp eq i32 %and.i32.i170, 0
  br i1 %cmp.i.not.i169, label %if.then17.i173, label %do.end24.i179, !prof !105

if.then17.i173:                                   ; preds = %_compound_head.exit.i172
  br i1 %tobool.not.i33.i171, label %if.end.i36.i176, label %if.then.i35.i175, !prof !101

if.then.i35.i175:                                 ; preds = %if.then17.i173
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i174 = add i32 %42, -1
  br label %_compound_head.exit38.i178

if.end.i36.i176:                                  ; preds = %if.then17.i173
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %call to i32
  br label %_compound_head.exit38.i178

_compound_head.exit38.i178:                       ; preds = %if.end.i36.i176, %if.then.i35.i175
  %retval.0.i37.i177 = phi i32 [ %sub.i34.i174, %if.then.i35.i175 ], [ %43, %if.end.i36.i176 ]
  %44 = inttoptr i32 %retval.0.i37.i177 to ptr
  tail call void @dump_page(ptr noundef %44, ptr noundef nonnull @.str.14) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !108
  unreachable

do.end24.i179:                                    ; preds = %_compound_head.exit.i172
  br i1 %tobool.not.i33.i171, label %if.end.i43.i182, label %if.then.i42.i181, !prof !101

if.then.i42.i181:                                 ; preds = %do.end24.i179
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i180 = add i32 %42, -1
  br label %ClearPageUptodate.exit184

if.end.i43.i182:                                  ; preds = %do.end24.i179
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %call to i32
  br label %ClearPageUptodate.exit184

ClearPageUptodate.exit184:                        ; preds = %if.end.i43.i182, %if.then.i42.i181
  %retval.0.i44.i183 = phi i32 [ %sub.i41.i180, %if.then.i42.i181 ], [ %45, %if.end.i43.i182 ]
  %46 = inttoptr i32 %retval.0.i44.i183 to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %46) #10
  br label %if.then102

if.end33:                                         ; preds = %if.then24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !109
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %2, align 4
  %and.i.i.i.i185 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i185)
  %tobool.not.i.i.i186 = icmp eq i32 %and.i.i.i.i185, 0
  br i1 %tobool.not.i.i.i186, label %SetPageUptodate.exit188, label %if.then.i.i.i187, !prof !101

if.then.i.i.i187:                                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

SetPageUptodate.exit188:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call) #10
  br label %if.end70

if.else34:                                        ; preds = %if.then20
  %call36 = tail call i32 @ecryptfs_read_lower_page_segment(ptr noundef nonnull %call, i32 noundef %conv, i32 noundef 0, i32 noundef 4096, ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %if.else34
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.28, i32 noundef %call36) #13
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %2, align 4
  %and.i.i189 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i189)
  %tobool.not.i190 = icmp eq i32 %and.i.i189, 0
  br i1 %tobool.not.i190, label %do.body7.i194, label %if.then.i191, !prof !101

if.then.i191:                                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.13) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !107
  unreachable

do.body7.i194:                                    ; preds = %do.end41
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %2, align 4
  %and.i31.i192 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i192)
  %tobool.not.i.i193 = icmp eq i32 %and.i31.i192, 0
  br i1 %tobool.not.i.i193, label %if.end.i.i197, label %if.then.i.i196, !prof !101

if.then.i.i196:                                   ; preds = %do.body7.i194
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i195 = add i32 %52, -1
  br label %_compound_head.exit.i202

if.end.i.i197:                                    ; preds = %do.body7.i194
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i202

_compound_head.exit.i202:                         ; preds = %if.end.i.i197, %if.then.i.i196
  %retval.0.i.i198 = phi i32 [ %sub.i.i195, %if.then.i.i196 ], [ %53, %if.end.i.i197 ]
  %54 = inttoptr i32 %retval.0.i.i198 to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp.i.not.i199 = icmp eq i32 %56, -1
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %2, align 4
  %and.i32.i200 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i200)
  %tobool.not.i33.i201 = icmp eq i32 %and.i32.i200, 0
  br i1 %cmp.i.not.i199, label %if.then17.i203, label %do.end24.i209, !prof !105

if.then17.i203:                                   ; preds = %_compound_head.exit.i202
  br i1 %tobool.not.i33.i201, label %if.end.i36.i206, label %if.then.i35.i205, !prof !101

if.then.i35.i205:                                 ; preds = %if.then17.i203
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i204 = add i32 %58, -1
  br label %_compound_head.exit38.i208

if.end.i36.i206:                                  ; preds = %if.then17.i203
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %call to i32
  br label %_compound_head.exit38.i208

_compound_head.exit38.i208:                       ; preds = %if.end.i36.i206, %if.then.i35.i205
  %retval.0.i37.i207 = phi i32 [ %sub.i34.i204, %if.then.i35.i205 ], [ %59, %if.end.i36.i206 ]
  %60 = inttoptr i32 %retval.0.i37.i207 to ptr
  tail call void @dump_page(ptr noundef %60, ptr noundef nonnull @.str.14) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !108
  unreachable

do.end24.i209:                                    ; preds = %_compound_head.exit.i202
  br i1 %tobool.not.i33.i201, label %if.end.i43.i212, label %if.then.i42.i211, !prof !101

if.then.i42.i211:                                 ; preds = %do.end24.i209
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i210 = add i32 %58, -1
  br label %ClearPageUptodate.exit214

if.end.i43.i212:                                  ; preds = %do.end24.i209
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %call to i32
  br label %ClearPageUptodate.exit214

ClearPageUptodate.exit214:                        ; preds = %if.end.i43.i212, %if.then.i42.i211
  %retval.0.i44.i213 = phi i32 [ %sub.i41.i210, %if.then.i42.i211 ], [ %61, %if.end.i43.i212 ]
  %62 = inttoptr i32 %retval.0.i44.i213 to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %62) #10
  br label %if.then102

if.end44:                                         ; preds = %if.else34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !109
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %2, align 4
  %and.i.i.i.i215 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i215)
  %tobool.not.i.i.i216 = icmp eq i32 %and.i.i.i.i215, 0
  br i1 %tobool.not.i.i.i216, label %SetPageUptodate.exit218, label %if.then.i.i.i217, !prof !101

if.then.i.i.i217:                                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

SetPageUptodate.exit218:                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call) #10
  br label %if.end70

if.else46:                                        ; preds = %if.else16
  %mapping47 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1, i32 0, i32 1
  %65 = ptrtoint ptr %mapping47 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mapping47, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %call49 = tail call fastcc i64 @i_size_read(ptr noundef %68)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %call49)
  %cmp.not = icmp slt i64 %shl, %call49
  br i1 %cmp.not, label %if.else52, label %if.then51

if.then51:                                        ; preds = %if.else46
  tail call void @zero_user_segments(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !109
  %69 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %2, align 4
  %and.i.i.i.i219 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i219)
  %tobool.not.i.i.i220 = icmp eq i32 %and.i.i.i.i219, 0
  br i1 %tobool.not.i.i.i220, label %SetPageUptodate.exit222, label %if.then.i.i.i221, !prof !101

if.then.i.i.i221:                                 ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

SetPageUptodate.exit222:                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call) #10
  br label %if.end70

if.else52:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp53 = icmp ult i32 %len, 4096
  br i1 %cmp53, label %if.then55, label %if.else52.if.end70_crit_edge

if.else52.if.end70_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then55:                                        ; preds = %if.else52
  %call56 = tail call i32 @ecryptfs_decrypt_page(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end65, label %do.end61

do.end61:                                         ; preds = %if.then55
  %index63 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1, i32 0, i32 2
  %71 = ptrtoint ptr %index63 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %index63, align 4
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, i32 noundef %72, i32 noundef %call56) #13
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %2, align 4
  %and.i.i223 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i223)
  %tobool.not.i224 = icmp eq i32 %and.i.i223, 0
  br i1 %tobool.not.i224, label %do.body7.i228, label %if.then.i225, !prof !101

if.then.i225:                                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.13) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !107
  unreachable

do.body7.i228:                                    ; preds = %do.end61
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %2, align 4
  %and.i31.i226 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i226)
  %tobool.not.i.i227 = icmp eq i32 %and.i31.i226, 0
  br i1 %tobool.not.i.i227, label %if.end.i.i231, label %if.then.i.i230, !prof !101

if.then.i.i230:                                   ; preds = %do.body7.i228
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i229 = add i32 %76, -1
  br label %_compound_head.exit.i236

if.end.i.i231:                                    ; preds = %do.body7.i228
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i236

_compound_head.exit.i236:                         ; preds = %if.end.i.i231, %if.then.i.i230
  %retval.0.i.i232 = phi i32 [ %sub.i.i229, %if.then.i.i230 ], [ %77, %if.end.i.i231 ]
  %78 = inttoptr i32 %retval.0.i.i232 to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp.i.not.i233 = icmp eq i32 %80, -1
  %81 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %2, align 4
  %and.i32.i234 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i234)
  %tobool.not.i33.i235 = icmp eq i32 %and.i32.i234, 0
  br i1 %cmp.i.not.i233, label %if.then17.i237, label %do.end24.i243, !prof !105

if.then17.i237:                                   ; preds = %_compound_head.exit.i236
  br i1 %tobool.not.i33.i235, label %if.end.i36.i240, label %if.then.i35.i239, !prof !101

if.then.i35.i239:                                 ; preds = %if.then17.i237
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i238 = add i32 %82, -1
  br label %_compound_head.exit38.i242

if.end.i36.i240:                                  ; preds = %if.then17.i237
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %call to i32
  br label %_compound_head.exit38.i242

_compound_head.exit38.i242:                       ; preds = %if.end.i36.i240, %if.then.i35.i239
  %retval.0.i37.i241 = phi i32 [ %sub.i34.i238, %if.then.i35.i239 ], [ %83, %if.end.i36.i240 ]
  %84 = inttoptr i32 %retval.0.i37.i241 to ptr
  tail call void @dump_page(ptr noundef %84, ptr noundef nonnull @.str.14) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #10, !srcloc !108
  unreachable

do.end24.i243:                                    ; preds = %_compound_head.exit.i236
  br i1 %tobool.not.i33.i235, label %if.end.i43.i246, label %if.then.i42.i245, !prof !101

if.then.i42.i245:                                 ; preds = %do.end24.i243
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i244 = add i32 %82, -1
  br label %ClearPageUptodate.exit248

if.end.i43.i246:                                  ; preds = %do.end24.i243
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %call to i32
  br label %ClearPageUptodate.exit248

ClearPageUptodate.exit248:                        ; preds = %if.end.i43.i246, %if.then.i42.i245
  %retval.0.i44.i247 = phi i32 [ %sub.i41.i244, %if.then.i42.i245 ], [ %85, %if.end.i43.i246 ]
  %86 = inttoptr i32 %retval.0.i44.i247 to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %86) #10
  br label %if.then102

if.end65:                                         ; preds = %if.then55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !109
  %87 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %2, align 4
  %and.i.i.i.i249 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i249)
  %tobool.not.i.i.i250 = icmp eq i32 %and.i.i.i.i249, 0
  br i1 %tobool.not.i.i.i250, label %SetPageUptodate.exit252, label %if.then.i.i.i251, !prof !101

if.then.i.i.i251:                                 ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

SetPageUptodate.exit252:                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call) #10
  br label %if.end70

if.end70:                                         ; preds = %SetPageUptodate.exit252, %if.else52.if.end70_crit_edge, %SetPageUptodate.exit222, %SetPageUptodate.exit218, %SetPageUptodate.exit188, %SetPageUptodate.exit, %PageUptodate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp71.not = icmp eq i32 %conv, 0
  br i1 %cmp71.not, label %if.end70.if.end90_crit_edge, label %if.then73

if.end70.if.end90_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then73:                                        ; preds = %if.end70
  %mapping74 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1, i32 0, i32 1
  %89 = ptrtoint ptr %mapping74 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mapping74, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %call76 = tail call fastcc i64 @i_size_read(ptr noundef %92)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %call76)
  %cmp77 = icmp sgt i64 %shl, %call76
  br i1 %cmp77, label %if.then79, label %if.then73.if.end90_crit_edge

if.then73.if.end90_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then79:                                        ; preds = %if.then73
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dentry, align 4
  %call80 = tail call i32 @ecryptfs_truncate(ptr noundef %94, i64 noundef %shl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then79.if.end90_crit_edge, label %do.end85

if.then79.if.end90_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

do.end85:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.28, i64 noundef %shl, i32 noundef %call80) #13
  br label %if.then102

if.end90:                                         ; preds = %if.then79.if.end90_crit_edge, %if.then73.if.end90_crit_edge, %if.end70.if.end90_crit_edge
  %95 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mapping, align 4
  %call92 = tail call fastcc i64 @i_size_read(ptr noundef %96)
  call void @__sanitizer_cov_trace_cmp8(i64 %call92, i64 %shl)
  %cmp93 = icmp ne i64 %call92, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos)
  %cmp95.not = icmp eq i64 %pos, 0
  %or.cond = or i1 %cmp95.not, %cmp93
  br i1 %or.cond, label %if.end90.cleanup104_crit_edge, label %if.then97

if.end90.cleanup104_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup104

if.then97:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @zero_user_segments(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  br label %cleanup104

if.then102:                                       ; preds = %do.end85, %ClearPageUptodate.exit248, %ClearPageUptodate.exit214, %ClearPageUptodate.exit184, %ClearPageUptodate.exit
  %rc.4.ph = phi i32 [ %call11, %ClearPageUptodate.exit ], [ %call56, %ClearPageUptodate.exit248 ], [ %call36, %ClearPageUptodate.exit214 ], [ %call25, %ClearPageUptodate.exit184 ], [ %call80, %do.end85 ]
  tail call void @unlock_page(ptr noundef nonnull %call) #10
  tail call fastcc void @put_page(ptr noundef nonnull %call)
  %97 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %pagep, align 4
  br label %cleanup104

cleanup104:                                       ; preds = %if.then102, %if.then97, %if.end90.cleanup104_crit_edge, %entry.cleanup104_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup104_crit_edge ], [ %rc.4.ph, %if.then102 ], [ 0, %if.then97 ], [ 0, %if.end90.cleanup104_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecryptfs_write_end(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i64 %pos, 12
  %conv = trunc i64 %0 to i32
  %1 = trunc i64 %pos to i32
  %conv1 = and i32 %1, 4095
  %add = add i32 %conv1, %copied
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 4
  %crypt_stat2 = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %3, i32 0, i32 5
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.ecryptfs_write_end, i32 noundef %conv, i32 noundef %add) #10
  %4 = ptrtoint ptr %crypt_stat2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crypt_stat2, align 4
  %and3 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @ecryptfs_write_lower_page_segment(ptr noundef %3, ptr noundef %page, i32 noundef 0, i32 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %wii_inode.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %wii_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wii_inode.i, align 8
  tail call void @fsstack_copy_inode_size(ptr noundef %3, ptr noundef %7) #10
  br label %out

if.end8:                                          ; preds = %entry
  %8 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !101

if.then.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i.i.i69 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i69)
  %tobool.not.i.i.i70 = icmp eq i32 %and.i.i.i.i69, 0
  br i1 %tobool.not.i.i.i70, label %folio_flags.exit.i.i, label %if.then.i.i.i71, !prof !101

if.then.i.i.i71:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %if.then11, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !110
  br label %if.end15

if.then11:                                        ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %copied)
  %cmp = icmp ult i32 %copied, 4096
  br i1 %cmp, label %if.then11.out_crit_edge, label %if.end14

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %if.then11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !109
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %8, align 4
  %and.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !101

if.then.i.i.i:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.1) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #10
  br label %if.end15

if.end15:                                         ; preds = %SetPageUptodate.exit, %PageUptodate.exit
  %mapping.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mapping.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %24) #10
  %div.i = sdiv i64 %call.i, 4096
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %div.i, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %div.i, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end15.fill_zeros_to_end_of_page.exit_crit_edge

if.end15.fill_zeros_to_end_of_page.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %fill_zeros_to_end_of_page.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call fastcc i64 @i_size_read(ptr noundef %24) #10
  %rem.i = srem i64 %call2.i, 4096
  %conv3.i = trunc i64 %rem.i to i32
  %27 = tail call i32 @llvm.umax.i32(i32 %conv3.i, i32 %add) #10
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef %27, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  br label %fill_zeros_to_end_of_page.exit

fill_zeros_to_end_of_page.exit:                   ; preds = %if.end.i, %if.end15.fill_zeros_to_end_of_page.exit_crit_edge
  %call20 = tail call i32 @ecryptfs_encrypt_page(ptr noundef %page) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %fill_zeros_to_end_of_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ecryptfs_write_end, i32 noundef %conv) #10
  br label %out

if.end23:                                         ; preds = %fill_zeros_to_end_of_page.exit
  %conv24 = zext i32 %copied to i64
  %add25 = add i64 %conv24, %pos
  %call26 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %add25, i64 %call26)
  %cmp27 = icmp sgt i64 %add25, %call26
  br i1 %cmp27, label %if.then29, label %if.end23.if.end33_crit_edge

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then29:                                        ; preds = %if.end23
  %28 = tail call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i.i72 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i72 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %31, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %32 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i73 = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i73, label %if.then29.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then29.i_size_write.exit_crit_edge:            ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then29
  %33 = tail call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  %37 = tail call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %42, ptrtoint (ptr @lockdep_recursion to i32)
  %43 = inttoptr i32 %add.i28.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !113
  %46 = tail call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i7.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool20.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %50 = tail call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i29.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i.i = icmp eq i32 %53, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %54 = tail call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i9.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %57, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %58 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %61, ptrtoint (ptr @hardirqs_enabled to i32)
  %62 = inttoptr i32 %add47.i.i to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !115
  %65 = tail call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i12.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %68, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool54.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i74, !prof !101

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

if.then.i.i74:                                    ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i74, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then29.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %69 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %70, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %71 = tail call ptr @llvm.returnaddress(i32 0) #10
  %72 = ptrtoint ptr %71 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %72) #10
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %73 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %add25, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %72) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !117
  %74 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %75, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %76 = tail call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i26.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i75 = add i32 %79, -1
  store volatile i32 %sub.i.i75, ptr %preempt_count.i.i27.i, align 4
  %call32 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  tail call void (ptr, ...) @__ecryptfs_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.ecryptfs_write_end, i64 noundef %call32) #10
  br label %if.end33

if.end33:                                         ; preds = %i_size_write.exit, %if.end23.if.end33_crit_edge
  %call34 = tail call i32 @ecryptfs_write_inode_size_to_metadata(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.out_crit_edge, label %do.end

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %call34) #13
  br label %out

out:                                              ; preds = %do.end, %if.end33.out_crit_edge, %if.then22, %if.then11.out_crit_edge, %if.then6, %if.then.out_crit_edge
  %rc.0 = phi i32 [ %call20, %if.then22 ], [ %call34, %do.end ], [ %call4, %if.then.out_crit_edge ], [ %copied, %if.then6 ], [ 0, %if.then11.out_crit_edge ], [ %copied, %if.end33.out_crit_edge ]
  tail call void @unlock_page(ptr noundef %page) #10
  %80 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %80, align 4
  %and.i.i76 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i76)
  %tobool.not.i.i77 = icmp eq i32 %and.i.i76, 0
  br i1 %tobool.not.i.i77, label %if.end.i.i80, label %if.then.i.i79, !prof !101

if.then.i.i79:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i78 = add i32 %82, -1
  br label %_compound_head.exit.i82

if.end.i.i80:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i82

_compound_head.exit.i82:                          ; preds = %if.end.i.i80, %if.then.i.i79
  %retval.0.i.i81 = phi i32 [ %sub.i.i78, %if.then.i.i79 ], [ %83, %if.end.i.i80 ]
  %84 = inttoptr i32 %retval.0.i.i81 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %84, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %85 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.i.i.i.i = icmp eq i32 %86, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !105

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i82
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %84, ptr noundef nonnull @.str.40) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !119
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i82
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %87 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !121
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %87, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ecryptfs_write_end, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !123

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %84, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %84) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ecryptfs_bmap(ptr nocapture noundef readonly %mapping, i64 noundef %block) #0 align 64 {
entry:
  %block.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %block, ptr %block.addr, align 8
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %wii_inode.i = getelementptr inbounds %struct.ecryptfs_inode_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %wii_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wii_inode.i, align 8
  %call1 = call i32 @bmap(ptr noundef %4, ptr noundef nonnull %block.addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %block.addr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %block.addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %6, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !124
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call ptr @llvm.returnaddress(i32 0) #10
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #10
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !125
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !105

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !126
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !127
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !128
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !129
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !130
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_write_lower(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_encrypt_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ecryptfs_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_read_lower_page_segment(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ecryptfs_copy_up_encrypted_with_header(ptr noundef %page, ptr noundef %crypt_stat) unnamed_addr #0 align 64 {
entry:
  %written.i = alloca i32, align 4
  %written = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %extent_size = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 4
  %0 = ptrtoint ptr %extent_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %extent_size, align 4
  %div = udiv i32 4096, %1
  %conv = zext i32 %div to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %1)
  %cmp89.not = icmp ugt i32 %1, 4096
  br i1 %cmp89.not, label %entry.cleanup49_crit_edge, label %while.body.lr.ph

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

while.body.lr.ph:                                 ; preds = %entry
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %metadata_size = getelementptr inbounds %struct.ecryptfs_crypt_stat, ptr %crypt_stat, i32 0, i32 3
  %mapping30 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup45.while.body_crit_edge, %while.body.lr.ph
  %extent_num_in_page.090 = phi i64 [ 0, %while.body.lr.ph ], [ %inc, %cleanup45.while.body_crit_edge ]
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %conv2 = zext i32 %3 to i64
  %mul = mul nuw nsw i64 %conv2, %conv
  %add = add nuw i64 %mul, %extent_num_in_page.090
  %4 = ptrtoint ptr %metadata_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %metadata_size, align 4
  %6 = ptrtoint ptr %extent_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extent_size, align 4
  %div4 = udiv i32 %5, %7
  %conv5 = zext i32 %div4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv5)
  %cmp6 = icmp slt i64 %add, %conv5
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %8 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %8, 512
  %9 = call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !131
  %13 = call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i1.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 213
  %17 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %18, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !132
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #10
  %19 = call ptr @memset(ptr %call.i.i, i32 0, i32 4096)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp8 = icmp eq i64 %add, 0
  br i1 %cmp8, label %if.then10, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then10:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %written) #10
  %20 = ptrtoint ptr %written to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %written, align 4, !annotation !133
  %21 = ptrtoint ptr %mapping30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mapping30, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call11 = call i32 @ecryptfs_read_xattr_region(ptr noundef %call.i.i, ptr noundef %24) #10
  %25 = ptrtoint ptr %crypt_stat to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %crypt_stat, align 4
  %and.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then10.strip_xattr_flag.exit_crit_edge, label %if.then.i

if.then10.strip_xattr_flag.exit_crit_edge:        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %strip_xattr_flag.exit

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %written.i) #10
  %27 = ptrtoint ptr %written.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %written.i, align 4, !annotation !133
  %and2.i = and i32 %26, -129
  %28 = ptrtoint ptr %crypt_stat to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and2.i, ptr %crypt_stat, align 4
  call void @ecryptfs_write_crypt_stat_flags(ptr noundef %add.ptr, ptr noundef %crypt_stat, ptr noundef nonnull %written.i) #10
  %29 = ptrtoint ptr %crypt_stat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %crypt_stat, align 4
  %or.i82 = or i32 %30, 128
  store i32 %or.i82, ptr %crypt_stat, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written.i) #10
  br label %strip_xattr_flag.exit

strip_xattr_flag.exit:                            ; preds = %if.then.i, %if.then10.strip_xattr_flag.exit_crit_edge
  %add.ptr12 = getelementptr i8, ptr %call.i.i, i32 20
  call void @ecryptfs_write_header_metadata(ptr noundef %add.ptr12, ptr noundef %crypt_stat, ptr noundef nonnull %written) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written) #10
  br label %do.end

do.end:                                           ; preds = %strip_xattr_flag.exit, %if.then.do.end_crit_edge
  %rc.1 = phi i32 [ %call11, %strip_xattr_flag.exit ], [ 0, %if.then.do.end_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !134
  %31 = call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i1.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 213
  %35 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %36, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !135
  %37 = call i32 @llvm.read_register.i32(metadata !91) #10
  %and.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @flush_dcache_page(ptr noundef %page) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1)
  %tobool.not = icmp eq i32 %rc.1, 0
  br i1 %tobool.not, label %do.end.cleanup45_crit_edge, label %cleanup

do.end.cleanup45_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

cleanup:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %rc.1) #13
  br label %cleanup49

if.else:                                          ; preds = %while.body
  %conv23 = zext i32 %7 to i64
  %mul24 = mul i64 %add, %conv23
  %conv26 = zext i32 %5 to i64
  %sub = sub i64 %mul24, %conv26
  %41 = lshr i64 %sub, 12
  %conv27 = trunc i64 %41 to i32
  %42 = trunc i64 %sub to i32
  %conv28 = and i32 %42, 4095
  %43 = ptrtoint ptr %mapping30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mapping30, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call32 = call i32 @ecryptfs_read_lower_page_segment(ptr noundef %page, i32 noundef %conv27, i32 noundef %conv28, i32 noundef %7, ptr noundef %46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.else.cleanup45_crit_edge, label %cleanup41

if.else.cleanup45_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

cleanup41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i64 noundef %sub, i32 noundef %call32) #13
  br label %cleanup49

cleanup45:                                        ; preds = %if.else.cleanup45_crit_edge, %do.end.cleanup45_crit_edge
  %inc = add nuw nsw i64 %extent_num_in_page.090, 1
  %cmp = icmp ult i64 %inc, %conv
  br i1 %cmp, label %cleanup45.while.body_crit_edge, label %cleanup45.cleanup49_crit_edge

cleanup45.cleanup49_crit_edge:                    ; preds = %cleanup45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

cleanup45.while.body_crit_edge:                   ; preds = %cleanup45
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup49:                                        ; preds = %cleanup45.cleanup49_crit_edge, %cleanup41, %cleanup, %entry.cleanup49_crit_edge
  %retval.0 = phi i32 [ %call32, %cleanup41 ], [ %rc.1, %cleanup ], [ 0, %entry.cleanup49_crit_edge ], [ 0, %cleanup45.cleanup49_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_decrypt_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_read_xattr_region(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecryptfs_write_header_metadata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecryptfs_write_crypt_stat_flags(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_truncate(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !101

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !105

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.40) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !119
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !121
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !123

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #10
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %4) #10
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecryptfs_write_lower_page_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsstack_copy_inode_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !80, !82, !84, !86, !87, !88, !90}
!llvm.named.register.sp = !{!91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @ecryptfs_aops, !1, !"ecryptfs_aops", i1 false, i1 false}
!1 = !{!"../fs/ecryptfs/mmap.c", i32 538, i32 39}
!2 = !{ptr @ecryptfs_xattr_cache, !3, !"ecryptfs_xattr_cache", i1 false, i1 false}
!3 = !{!"../fs/ecryptfs/mmap.c", i32 402, i32 20}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ecryptfs/mmap.c", i32 414, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ecryptfs_write_inode_size_to_xattr._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @ecryptfs_write_inode_size_to_xattr._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ecryptfs/mmap.c", i32 425, i32 51}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ecryptfs/mmap.c", i32 434, i32 3}
!20 = !{ptr @ecryptfs_write_inode_size_to_xattr._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ecryptfs_write_inode_size_to_xattr._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ecryptfs/mmap.c", i32 394, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ecryptfs_write_inode_size_to_header._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @ecryptfs_write_inode_size_to_header._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ecryptfs/mmap.c", i32 58, i32 3}
!29 = !{ptr @__func__.ecryptfs_writepage, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/page-flags.h", i32 678, i32 1}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ecryptfs/mmap.c", i32 196, i32 5}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ecryptfs_readpage._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ecryptfs_readpage._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ecryptfs/mmap.c", i32 209, i32 5}
!40 = !{ptr @ecryptfs_readpage._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ecryptfs_readpage._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ecryptfs/mmap.c", i32 217, i32 4}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ecryptfs/mmap.c", i32 227, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ecryptfs/mmap.c", i32 144, i32 5}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ecryptfs_copy_up_encrypted_with_header._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @ecryptfs_copy_up_encrypted_with_header._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ecryptfs/mmap.c", i32 159, i32 5}
!53 = !{ptr @ecryptfs_copy_up_encrypted_with_header._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @ecryptfs_copy_up_encrypted_with_header._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ecryptfs/mmap.c", i32 289, i32 5}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ecryptfs_write_begin._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ecryptfs_write_begin._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @ecryptfs_write_begin._entry.29, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../fs/ecryptfs/mmap.c", i32 301, i32 6}
!62 = !{ptr @ecryptfs_write_begin._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ecryptfs/mmap.c", i32 316, i32 6}
!65 = !{ptr @ecryptfs_write_begin._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ecryptfs_write_begin._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ecryptfs/mmap.c", i32 332, i32 6}
!69 = !{ptr @ecryptfs_write_begin._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ecryptfs_write_begin._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ecryptfs/mmap.c", i32 350, i32 5}
!73 = !{ptr @ecryptfs_write_begin._entry.37, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ecryptfs_write_begin._entry_ptr.39, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/mm.h", i32 717, i32 2}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ecryptfs/mmap.c", i32 476, i32 2}
!79 = !{ptr @__func__.ecryptfs_write_end, !78, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ecryptfs/mmap.c", i32 498, i32 3}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ecryptfs/mmap.c", i32 510, i32 3}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ecryptfs/mmap.c", i32 516, i32 3}
!86 = !{ptr @ecryptfs_write_end._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ecryptfs_write_end._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!90 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!91 = !{!"sp"}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2150272837, i64 2150273328, i64 2150272874, i64 2150272930, i64 2150272964, i64 2150272988, i64 2150273029, i64 2150273050, i64 2150273078, i64 2150273112}
!103 = !{i64 2148726697, i64 2148726729, i64 2148726758, i64 2148726792, i64 2148726823, i64 2148726846}
!104 = !{i64 2148815802}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 2154829955, i64 2154830438, i64 2154829992, i64 2154830048, i64 2154830082, i64 2154830106, i64 2154830147, i64 2154830168, i64 2154830196, i64 2154830230}
!107 = !{i64 2151031713, i64 2151031886, i64 2151031901, i64 2151031953, i64 2151032012, i64 2151032036, i64 2151032077, i64 2151032098, i64 2151032126, i64 2151032158}
!108 = !{i64 2151032588, i64 2151032761, i64 2151032776, i64 2151032828, i64 2151032887, i64 2151032911, i64 2151032952, i64 2151032973, i64 2151033001, i64 2151033033}
!109 = !{i64 2151023800}
!110 = !{i64 2151022729}
!111 = !{i64 2153110352}
!112 = !{i64 2149788032}
!113 = !{i64 2149792964}
!114 = !{i64 2149814676}
!115 = !{i64 2149819568}
!116 = !{i64 2149896025}
!117 = !{i64 2149896350}
!118 = !{i64 2153122214}
!119 = !{i64 2153163835, i64 2153164318, i64 2153163872, i64 2153163928, i64 2153163962, i64 2153163986, i64 2153164027, i64 2153164048, i64 2153164076, i64 2153164110}
!120 = !{i64 2148806315}
!121 = !{i64 2148721024, i64 2148721056, i64 2148721085, i64 2148721119, i64 2148721150, i64 2148721173}
!122 = !{i64 2148806544}
!123 = !{i64 2148318516, i64 2148318521, i64 2148318534, i64 2148318578, i64 2148318612, i64 2148318633}
!124 = !{i64 1122519, i64 1122580}
!125 = !{i64 1125251}
!126 = !{i64 1125536}
!127 = !{i64 2153108421}
!128 = !{i64 2153108263}
!129 = !{i64 2153108591}
!130 = !{i64 2149895700}
!131 = !{i64 2153687771}
!132 = !{i64 2152780886}
!133 = !{!"auto-init"}
!134 = !{i64 2152781093}
!135 = !{i64 2153690542}
