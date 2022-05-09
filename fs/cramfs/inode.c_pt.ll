; ModuleID = '/llk/IR_all_yes/fs/cramfs/inode.c_pt.bc'
source_filename = "../fs/cramfs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%union.anon.67 = type { i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.cramfs_sb_info = type { i32, i32, i32, i32, i32, ptr, i32, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.77, %struct.list_head, %struct.list_head, %union.anon.78 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { %struct.spinlock, i32 }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%struct.cramfs_super = type { i32, i32, i32, i32, [16 x i8], %struct.cramfs_info, [16 x i8], %struct.cramfs_inode }
%struct.cramfs_info = type { i32, i32, i32, i32 }
%struct.cramfs_inode = type { [12 x i8] }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.68 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.68 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.70 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.page = type { i32, %union.anon.15, %union.anon.59, %struct.atomic_t, i32 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.59 = type { %struct.atomic_t }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.24, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.dir_context = type { ptr, i64 }

@__UNIQUE_ID_alias275 = internal constant [23 x i8] c"cramfs.alias=fs-cramfs\00", section ".modinfo", align 1
@cramfs_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 1, ptr @cramfs_init_fs_context, ptr null, ptr null, ptr @cramfs_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_cramfs__276_1008_init_cramfs_fs6 = internal global ptr @init_cramfs_fs, section ".initcall6.init", align 4
@__exitcall_exit_cramfs_fs = internal global ptr @exit_cramfs_fs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file277 = internal constant [29 x i8] c"cramfs.file=fs/cramfs/cramfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [19 x i8] c"cramfs.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cramfs\00", [25 x i8] zeroinitializer }, align 32
@cramfs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr null, ptr null, ptr null, ptr null, ptr @cramfs_get_tree, ptr @cramfs_reconfigure }, [40 x i8] zeroinitializer }, align 32
@cramfs_mtd_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013cramfs: unable to get direct memory access to mtd:%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cramfs_mtd_fill_super\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/cramfs/inode.c\00", [46 x i8] zeroinitializer }, align 32
@cramfs_mtd_fill_super._entry_ptr = internal global ptr @cramfs_mtd_fill_super._entry, section ".printk_index", align 4
@cramfs_mtd_fill_super._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016cramfs: checking physical address %pap for linear cramfs image\0A\00", [62 x i8] zeroinitializer }, align 32
@cramfs_mtd_fill_super._entry_ptr.6 = internal global ptr @cramfs_mtd_fill_super._entry.4, section ".printk_index", align 4
@cramfs_mtd_fill_super._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016cramfs: linear cramfs image on mtd:%s appears to be %lu KB in size\0A\00", [58 x i8] zeroinitializer }, align 32
@cramfs_mtd_fill_super._entry_ptr.9 = internal global ptr @cramfs_mtd_fill_super._entry.7, section ".printk_index", align 4
@cramfs_mtd_fill_super._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cramfs_mtd_fill_super._entry_ptr.11 = internal global ptr @cramfs_mtd_fill_super._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@read_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @read_mutex, i64 52), ptr getelementptr (i8, ptr @read_mutex, i64 52) }, ptr @read_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wrong endianness\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wrong magic\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported filesystem features\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"root is not a directory\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"empty filesystem\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad root offset %lu\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read_mutex\00", [21 x i8] zeroinitializer }, align 32
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@buffer_dev = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@buffer_blocknr = internal global { [2 x i32], [24 x i8] } zeroinitializer, align 32
@read_buffers = internal global { [2 x [16384 x i8]], [8192 x i8] } zeroinitializer, align 32
@next_buffer = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@cramfs_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cramfs_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@generic_ro_fops = external dso_local constant %struct.file_operations, align 4
@cramfs_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @cramfs_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cramfs_physmem_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cramfs_physmem_mmap, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cramfs_dir_inode_operations = internal constant %struct.inode_operations { ptr @cramfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@cramfs_directory_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cramfs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@page_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@cramfs_readpage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cramfs: bad data blocksize %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cramfs_readpage\00", [16 x i8] zeroinitializer }, align 32
@cramfs_readpage._entry_ptr = internal global ptr @cramfs_readpage._entry, section ".printk_index", align 4
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vma is writable\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"beyond file limit\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsuitable block layout\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"data is not page aligned\00", [39 x i8] zeroinitializer }, align 32
@cramfs_physmem_mmap.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cramfs_physmem_mmap\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mmap: %pD: last page is shared\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cramfs: mmap: %pD: last page is shared\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no suitable block remaining\00", [36 x i8] zeroinitializer }, align 32
@cramfs_physmem_mmap.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.36, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"mapped %pD[%lu] at 0x%08lx (%u/%lu pages) to vma 0x%08lx, page_prot 0x%llx\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"cramfs: mapped %pD[%lu] at 0x%08lx (%u/%lu pages) to vma 0x%08lx, page_prot 0x%llx\0A\00", [44 x i8] zeroinitializer }, align 32
@cramfs_physmem_mmap.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.38, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%pD[%lu]: direct mmap impossible: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cramfs: %pD[%lu]: direct mmap impossible: %s\0A\00", [50 x i8] zeroinitializer }, align 32
@cramfs_get_block_range.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cramfs_get_block_range\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"range: block %d/%d got %#x expects %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cramfs: range: block %d/%d got %#x expects %#x\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 684539205, i64 1161678120]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 684539205, i64 1161678120]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 76, i64 588]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"cramfs_fs_type\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 980, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 982, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"cramfs_context_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 966, i32 43 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 648, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 653, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 660, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 666, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"read_mutex\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 535, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 549, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 556, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 562, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 581, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 586, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 61, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant [11 x i8] c"buffer_dev\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 176, i32 28 }
@___asan_gen_.119 = private unnamed_addr constant [15 x i8] c"buffer_blocknr\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 175, i32 17 }
@___asan_gen_.122 = private unnamed_addr constant [13 x i8] c"read_buffers\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 174, i32 22 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"next_buffer\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 177, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 260, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 717, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 44, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [11 x i8] c"cramfs_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 948, i32 38 }
@___asan_gen_.140 = private unnamed_addr constant [12 x i8] c"cramfs_aops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 927, i32 46 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c"cramfs_physmem_fops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 483, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant [28 x i8] c"cramfs_directory_operations\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 938, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 894, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 678, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 374, i32 19 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 379, i32 19 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 385, i32 19 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 389, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 395, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 400, i32 20 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 432, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 439, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [21 x i8] c"../fs/cramfs/inode.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 317, i32 4 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_alias275, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_exit_cramfs_fs, ptr @__initcall__kmod_cramfs__276_1008_init_cramfs_fs6, ptr @cramfs_mtd_fill_super._entry, ptr @cramfs_mtd_fill_super._entry.10, ptr @cramfs_mtd_fill_super._entry.4, ptr @cramfs_mtd_fill_super._entry.7, ptr @cramfs_mtd_fill_super._entry_ptr, ptr @cramfs_mtd_fill_super._entry_ptr.11, ptr @cramfs_mtd_fill_super._entry_ptr.6, ptr @cramfs_mtd_fill_super._entry_ptr.9, ptr @cramfs_readpage._entry, ptr @cramfs_readpage._entry_ptr, ptr @exit_cramfs_fs, ptr @cramfs_fs_type, ptr @.str, ptr @cramfs_context_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @read_mutex, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @buffer_dev, ptr @buffer_blocknr, ptr @read_buffers, ptr @next_buffer, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @cramfs_ops, ptr @cramfs_aops, ptr @cramfs_physmem_fops, ptr @cramfs_directory_operations, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cramfs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cramfs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cramfs_mtd_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cramfs_mtd_fill_super._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cramfs_mtd_fill_super._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cramfs_mtd_fill_super._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_dev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_blocknr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_buffers to i32), i32 32768, i32 40960, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @next_buffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cramfs_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cramfs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cramfs_physmem_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cramfs_directory_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cramfs_readpage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_cramfs_fs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cramfs_uncompress_exit() #11
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @cramfs_fs_type) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cramfs_uncompress_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_cramfs_fs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cramfs_uncompress_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @cramfs_fs_type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cramfs_uncompress_exit() #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cramfs_init_fs_context(ptr nocapture noundef writeonly %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @cramfs_context_ops, ptr %fc, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cramfs_kill_sb(ptr noundef %sb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_mtd = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 28
  %2 = ptrtoint ptr %s_mtd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_mtd, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %mtd_point_size = getelementptr inbounds %struct.cramfs_sb_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %mtd_point_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtd_point_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @mtd_unpoint(ptr noundef nonnull %3, i64 noundef 0, i32 noundef %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @kill_mtd_super(ptr noundef %sb) #11
  br label %if.end10

if.else:                                          ; preds = %entry
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.else.if.end10_crit_edge, label %if.then8

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kill_block_super(ptr noundef %sb) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.else.if.end10_crit_edge, %if.end
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cramfs_get_tree(ptr noundef %fc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_mtd(ptr noundef %fc, ptr noundef nonnull @cramfs_mtd_fill_super) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @get_tree_bdev(ptr noundef %fc, ptr noundef nonnull @cramfs_blkdev_fill_super) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cramfs_reconfigure(ptr nocapture noundef %fc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %call = tail call i32 @sync_filesystem(ptr noundef %3) #11
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %4 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %sb_flags, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_mtd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cramfs_mtd_fill_super(ptr noundef %sb, ptr nocapture noundef readonly %fc) #3 align 64 {
entry:
  %super = alloca %struct.cramfs_super, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %super) #11
  %0 = call ptr @memset(ptr %super, i32 255, i32 76)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 32) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  %s_mtd = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 28
  %3 = ptrtoint ptr %s_mtd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_mtd, align 4
  %mtd_point_size = getelementptr inbounds %struct.cramfs_sb_info, ptr %call7.i.i, i32 0, i32 7
  %linear_virt_addr = getelementptr inbounds %struct.cramfs_sb_info, ptr %call7.i.i, i32 0, i32 5
  %linear_phys_addr = getelementptr inbounds %struct.cramfs_sb_info, ptr %call7.i.i, i32 0, i32 6
  %call1 = tail call i32 @mtd_point(ptr noundef %4, i64 noundef 0, i32 noundef 4096, ptr noundef %mtd_point_size, ptr noundef %linear_virt_addr, ptr noundef %linear_phys_addr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %5 = ptrtoint ptr %mtd_point_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtd_point_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %6)
  %cmp.not = icmp eq i32 %6, 4096
  br i1 %cmp.not, label %do.end11, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %. = phi i32 [ %call1, %if.end.do.end_crit_edge ], [ -61, %lor.lhs.false.do.end_crit_edge ]
  %7 = ptrtoint ptr %s_mtd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_mtd, align 4
  %name = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %10) #15
  br label %cleanup

do.end11:                                         ; preds = %lor.lhs.false
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %linear_phys_addr) #15
  %call15 = call fastcc i32 @cramfs_read_super(ptr noundef %sb, ptr noundef %fc, ptr noundef nonnull %super)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.end21, label %do.end11.cleanup_crit_edge

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end21:                                         ; preds = %do.end11
  %11 = ptrtoint ptr %s_mtd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_mtd, align 4
  %name24 = getelementptr inbounds %struct.mtd_info, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name24, align 8
  %size = getelementptr inbounds %struct.cramfs_sb_info, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %div83 = lshr i32 %16, 10
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %14, i32 noundef %div83) #15
  %17 = ptrtoint ptr %s_mtd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_mtd, align 4
  %call27 = tail call i32 @mtd_unpoint(ptr noundef %18, i64 noundef 0, i32 noundef 4096) #11
  %19 = ptrtoint ptr %s_mtd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_mtd, align 4
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  %call33 = tail call i32 @mtd_point(ptr noundef %20, i64 noundef 0, i32 noundef %22, ptr noundef %mtd_point_size, ptr noundef %linear_virt_addr, ptr noundef %linear_phys_addr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %lor.lhs.false35, label %do.end21.do.end42_crit_edge

do.end21.do.end42_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

lor.lhs.false35:                                  ; preds = %do.end21
  %23 = ptrtoint ptr %mtd_point_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mtd_point_size, align 4
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp38.not = icmp eq i32 %24, %26
  br i1 %cmp38.not, label %if.end52, label %lor.lhs.false35.do.end42_crit_edge

lor.lhs.false35.do.end42_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

do.end42:                                         ; preds = %lor.lhs.false35.do.end42_crit_edge, %do.end21.do.end42_crit_edge
  %.56 = phi i32 [ %call33, %do.end21.do.end42_crit_edge ], [ -61, %lor.lhs.false35.do.end42_crit_edge ]
  %27 = ptrtoint ptr %s_mtd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_mtd, align 4
  %name45 = getelementptr inbounds %struct.mtd_info, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %name45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name45, align 8
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %30) #15
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #13
  %root = getelementptr inbounds %struct.cramfs_super, ptr %super, i32 0, i32 7
  %call53 = call fastcc i32 @cramfs_finalize_super(ptr noundef %sb, ptr noundef %root)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end42, %do.end11.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %do.end ], [ %.56, %do.end42 ], [ %call53, %if.end52 ], [ -12, %entry.cleanup_crit_edge ], [ %call15, %do.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %super) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_bdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cramfs_blkdev_fill_super(ptr noundef %sb, ptr nocapture noundef readonly %fc) #3 align 64 {
entry:
  %super = alloca %struct.cramfs_super, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %super) #11
  %0 = call ptr @memset(ptr %super, i32 255, i32 76)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 32) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %s_fs_info, align 16
  store i64 -1, ptr @buffer_blocknr, align 8
  %call1 = call fastcc i32 @cramfs_read_super(ptr noundef %sb, ptr noundef %fc, ptr noundef nonnull %super)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %root = getelementptr inbounds %struct.cramfs_super, ptr %super, i32 0, i32 7
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %3 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_flags.i, align 4
  %or.i = or i32 %4, 1
  store i32 %or.i, ptr %s_flags.i, align 4
  %s_time_min.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %s_op.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %5 = call ptr @memset(ptr %s_time_min.i, i32 0, i32 16)
  %6 = ptrtoint ptr %s_op.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cramfs_ops, ptr %s_op.i, align 4
  %call.i = call fastcc ptr @get_cramfs_inode(ptr noundef %sb, ptr noundef %root, i32 noundef 0) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call ptr @d_make_root(ptr noundef %call.i) #11
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %8 = ptrtoint ptr %s_root.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3.i, ptr %s_root.i, align 64
  %tobool.not.i = icmp eq ptr %call3.i, null
  %..i = select i1 %tobool.not.i, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %7, %if.then.i ], [ %..i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %super) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_point(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cramfs_read_super(ptr noundef %sb, ptr nocapture noundef readonly %fc, ptr nocapture noundef %super) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %2 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_flags, align 4
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %size = getelementptr inbounds %struct.cramfs_sb_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %size, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @read_mutex, i32 noundef 0) #11
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %linear_virt_addr.i = getelementptr inbounds %struct.cramfs_sb_info, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %linear_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %linear_virt_addr.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %size.i.i = getelementptr inbounds %struct.cramfs_sb_info, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %10)
  %cmp.i.i = icmp ult i32 %10, 76
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.then.i.cramfs_read.exit_crit_edge

if.then.i.cramfs_read.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cramfs_read.exit

if.then3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %11 = load ptr, ptr @empty_zero_page, align 4
  %call4.i.i = tail call ptr @page_address(ptr noundef %11) #11
  br label %cramfs_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call fastcc ptr @cramfs_blkdev_read(ptr noundef %sb, i32 noundef 0, i32 noundef 76) #11
  br label %cramfs_read.exit

cramfs_read.exit:                                 ; preds = %if.else.i, %if.then3.i.i, %if.then.i.cramfs_read.exit_crit_edge
  %retval.0.i = phi ptr [ %call2.i, %if.else.i ], [ %call4.i.i, %if.then3.i.i ], [ %8, %if.then.i.cramfs_read.exit_crit_edge ]
  %12 = call ptr @memcpy(ptr %super, ptr %retval.0.i, i32 76)
  tail call void @mutex_unlock(ptr noundef nonnull @read_mutex) #11
  %13 = ptrtoint ptr %super to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %super, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.end9 [
    i32 684539205, label %cramfs_read.exit.if.end31_crit_edge
    i32 1161678120, label %if.then4
  ]

cramfs_read.exit.if.end31_crit_edge:              ; preds = %cramfs_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then4:                                         ; preds = %cramfs_read.exit
  br i1 %tobool.not, label %if.then6, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %log = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log7 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %log7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %log7, align 4
  %18 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %log, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %17, ptr noundef %19, i8 noundef zeroext 101, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end9:                                          ; preds = %cramfs_read.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @read_mutex, i32 noundef 0) #11
  %20 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i, align 16
  %linear_virt_addr.i146 = getelementptr inbounds %struct.cramfs_sb_info, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %linear_virt_addr.i146 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %linear_virt_addr.i146, align 4
  %tobool.not.i147 = icmp eq ptr %23, null
  br i1 %tobool.not.i147, label %if.else.i156, label %if.then.i148

if.then.i148:                                     ; preds = %if.end9
  %size.i.i149 = getelementptr inbounds %struct.cramfs_sb_info, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %size.i.i149 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 588, i32 %25)
  %26 = icmp ult i32 %25, 588
  br i1 %26, label %if.then3.i.i153, label %if.end5.i.i154

if.then3.i.i153:                                  ; preds = %if.then.i148
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %27 = load ptr, ptr @empty_zero_page, align 4
  %call4.i.i152 = tail call ptr @page_address(ptr noundef %27) #11
  br label %cramfs_read.exit158

if.end5.i.i154:                                   ; preds = %if.then.i148
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 512
  br label %cramfs_read.exit158

if.else.i156:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i155 = tail call fastcc ptr @cramfs_blkdev_read(ptr noundef %sb, i32 noundef 512, i32 noundef 76) #11
  br label %cramfs_read.exit158

cramfs_read.exit158:                              ; preds = %if.else.i156, %if.end5.i.i154, %if.then3.i.i153
  %retval.0.i157 = phi ptr [ %call2.i155, %if.else.i156 ], [ %call4.i.i152, %if.then3.i.i153 ], [ %add.ptr.i.i, %if.end5.i.i154 ]
  %28 = call ptr @memcpy(ptr %super, ptr %retval.0.i157, i32 76)
  tail call void @mutex_unlock(ptr noundef nonnull @read_mutex) #11
  %29 = ptrtoint ptr %super to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %super, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %30, label %if.else [
    i32 684539205, label %cramfs_read.exit158.if.end31_crit_edge
    i32 1161678120, label %land.lhs.true
  ]

cramfs_read.exit158.if.end31_crit_edge:           ; preds = %cramfs_read.exit158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true:                                    ; preds = %cramfs_read.exit158
  br i1 %tobool.not, label %if.then17, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %log18 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log19 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %log19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %log19, align 4
  %34 = ptrtoint ptr %log18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %log18, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %33, ptr noundef %35, i8 noundef zeroext 101, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.else:                                          ; preds = %cramfs_read.exit158
  br i1 %tobool.not, label %if.then23, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %log24 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log25 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %log25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %log25, align 4
  %38 = ptrtoint ptr %log24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %log24, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %37, ptr noundef %39, i8 noundef zeroext 101, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end31:                                         ; preds = %cramfs_read.exit158.if.end31_crit_edge, %cramfs_read.exit.if.end31_crit_edge
  %flags = getelementptr inbounds %struct.cramfs_super, ptr %super, i32 0, i32 2
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %41)
  %tobool33.not = icmp ult i32 %41, 4096
  br i1 %tobool33.not, label %if.end39, label %if.then34

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %log35 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log36 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %log36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %log36, align 4
  %44 = ptrtoint ptr %log35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %log35, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %43, ptr noundef %45, i8 noundef zeroext 101, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %root = getelementptr inbounds %struct.cramfs_super, ptr %super, i32 0, i32 7
  %46 = ptrtoint ptr %root to i32
  call void @__asan_loadN_noabort(i32 %46, i32 12)
  %bf.load = load i96, ptr %root, align 4
  %bf.lshr = lshr i96 %bf.load, 80
  %bf.cast = trunc i96 %bf.lshr to i32
  %and40 = and i32 %bf.cast, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and40)
  %cmp41 = icmp eq i32 %and40, 16384
  br i1 %cmp41, label %if.end47, label %if.then42

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %log43 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log44 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %47 = ptrtoint ptr %log44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %log44, align 4
  %49 = ptrtoint ptr %log43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %log43, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %48, ptr noundef %50, i8 noundef zeroext 101, ptr noundef nonnull @.str.15) #11
  br label %cleanup

if.end47:                                         ; preds = %if.end39
  %or = or i32 %bf.cast, 365
  %51 = zext i32 %or to i96
  %bf.shl = shl nuw i96 %51, 80
  %bf.clear = and i96 %bf.load, 1208925819614629174706175
  %bf.set = or i96 %bf.shl, %bf.clear
  %52 = ptrtoint ptr %root to i32
  call void @__asan_storeN_noabort(i32 %52, i32 12)
  store i96 %bf.set, ptr %root, align 4
  %53 = trunc i96 %bf.load to i32
  %bf.cast56 = shl i32 %53, 2
  %shl = and i32 %bf.cast56, 268435452
  %and58 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.else66, label %if.then60

if.then60:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %size61 = getelementptr inbounds %struct.cramfs_super, ptr %super, i32 0, i32 1
  %54 = ptrtoint ptr %size61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size61, align 4
  %56 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %size, align 4
  %blocks = getelementptr inbounds %struct.cramfs_super, ptr %super, i32 0, i32 5, i32 2
  %57 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %blocks, align 4
  %blocks63 = getelementptr inbounds %struct.cramfs_sb_info, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %blocks63 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %blocks63, align 4
  %files = getelementptr inbounds %struct.cramfs_super, ptr %super, i32 0, i32 5, i32 3
  %60 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %files, align 4
  br label %if.end70

if.else66:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 268435456, ptr %size, align 4
  %blocks68 = getelementptr inbounds %struct.cramfs_sb_info, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %blocks68 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %blocks68, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.else66, %if.then60
  %.sink = phi i32 [ 0, %if.else66 ], [ %61, %if.then60 ]
  %64 = getelementptr inbounds %struct.cramfs_sb_info, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.sink, ptr %64, align 4
  %66 = ptrtoint ptr %super to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %super, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %1, align 4
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags, align 4
  %flags74 = getelementptr inbounds %struct.cramfs_sb_info, ptr %1, i32 0, i32 4
  %71 = ptrtoint ptr %flags74 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %flags74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp75 = icmp eq i32 %shl, 0
  br i1 %cmp75, label %if.then76, label %if.else81

if.then76:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %log77 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log78 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %72 = ptrtoint ptr %log78 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %log78, align 4
  %74 = ptrtoint ptr %log77 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %log77, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %73, ptr noundef %75, i8 noundef zeroext 105, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.else81:                                        ; preds = %if.end70
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags, align 4
  %.fr = freeze i32 %77
  %and83 = and i32 %.fr, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not.not, label %switch.early.test, label %if.else81.cleanup_crit_edge

if.else81.cleanup_crit_edge:                      ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.early.test:                                ; preds = %if.else81
  %78 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %shl, label %if.then89 [
    i32 588, label %switch.early.test.cleanup_crit_edge
    i32 76, label %switch.early.test.cleanup_crit_edge159
  ]

switch.early.test.cleanup_crit_edge159:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then89:                                        ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #13
  %log90 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log91 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %79 = ptrtoint ptr %log91 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %log91, align 4
  %81 = ptrtoint ptr %log90 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %log90, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %80, ptr noundef %82, i8 noundef zeroext 101, ptr noundef nonnull @.str.17, i32 noundef %shl) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %switch.early.test.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge159, %if.else81.cleanup_crit_edge, %if.then76, %if.then42, %if.then34, %if.then23, %if.else.cleanup_crit_edge, %if.then17, %land.lhs.true.cleanup_crit_edge, %if.then6, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then34 ], [ -22, %if.then89 ], [ -22, %if.then42 ], [ -22, %if.then6 ], [ -22, %if.then4.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.then23 ], [ -22, %if.then17 ], [ 0, %switch.early.test.cleanup_crit_edge ], [ 0, %if.then76 ], [ 0, %if.else81.cleanup_crit_edge ], [ 0, %switch.early.test.cleanup_crit_edge159 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_unpoint(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cramfs_finalize_super(ptr noundef %sb, ptr nocapture noundef readonly %cramfs_root) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %0 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_flags, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %s_flags, align 4
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 35
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %2 = call ptr @memset(ptr %s_time_min, i32 0, i32 16)
  %3 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cramfs_ops, ptr %s_op, align 4
  %call = tail call fastcc ptr @get_cramfs_inode(ptr noundef %sb, ptr noundef %cramfs_root, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call ptr @d_make_root(ptr noundef %call) #11
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %5 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %call3, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cramfs_read(ptr noundef %sb, i32 noundef %offset, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %linear_virt_addr = getelementptr inbounds %struct.cramfs_sb_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %linear_virt_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %linear_virt_addr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not.i = icmp eq i32 %len, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %size.i = getelementptr inbounds %struct.cramfs_sb_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %len)
  %cmp.i = icmp ult i32 %5, %len
  %sub.i = sub i32 %5, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %offset)
  %cmp2.i = icmp ult i32 %sub.i, %offset
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %6 = load ptr, ptr @empty_zero_page, align 4
  %call4.i = tail call ptr @page_address(ptr noundef %6) #11
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %3, i32 %offset
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call fastcc ptr @cramfs_blkdev_read(ptr noundef %sb, i32 noundef %offset, i32 noundef %len)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end5.i, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.else ], [ %call4.i, %if.then3.i ], [ %add.ptr.i, %if.end5.i ], [ null, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cramfs_blkdev_read(ptr noundef %sb, i32 noundef %offset, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  %pages = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev, align 4
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pages) #11
  %6 = getelementptr inbounds [4 x ptr], ptr %pages, i32 0, i32 1
  %7 = getelementptr inbounds [4 x ptr], ptr %pages, i32 0, i32 2
  %8 = getelementptr inbounds [4 x ptr], ptr %pages, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup73_crit_edge, label %if.end

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup73

if.end:                                           ; preds = %entry
  %shr = lshr i32 %offset, 12
  %and = and i32 %offset, 4095
  %9 = load ptr, ptr @buffer_dev, align 4
  %cmp1.not = icmp eq ptr %9, %sb
  br i1 %cmp1.not, label %if.end3, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end3:                                          ; preds = %if.end
  %10 = load i32, ptr @buffer_blocknr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %10)
  %cmp5 = icmp ult i32 %shr, %10
  br i1 %cmp5, label %if.end3.for.inc_crit_edge, label %if.end7

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end7:                                          ; preds = %if.end3
  %sub = sub i32 %shr, %10
  %shl = shl i32 %sub, 12
  %add = or i32 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add)
  %cmp9 = icmp ugt i32 %add, 16384
  %add10 = add i32 %add, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add10)
  %cmp11 = icmp ugt i32 %add10, 16384
  %or.cond = or i1 %cmp9, %cmp11
  br i1 %or.cond, label %if.end7.for.inc_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

cleanup:                                          ; preds = %if.end7.1.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %i.0176.lcssa = phi i32 [ 0, %if.end7.cleanup_crit_edge ], [ 1, %if.end7.1.cleanup_crit_edge ]
  %add.lcssa = phi i32 [ %add, %if.end7.cleanup_crit_edge ], [ %add.1, %if.end7.1.cleanup_crit_edge ]
  %arrayidx14 = getelementptr [2 x [16384 x i8]], ptr @read_buffers, i32 0, i32 %i.0176.lcssa
  %add.ptr = getelementptr i8, ptr %arrayidx14, i32 %add.lcssa
  br label %cleanup73

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %if.end3.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %11 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @buffer_dev, i32 0, i32 1), align 4
  %cmp1.not.1 = icmp eq ptr %11, %sb
  br i1 %cmp1.not.1, label %if.end3.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end3.1:                                        ; preds = %for.inc
  %12 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @buffer_blocknr, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %12)
  %cmp5.1 = icmp ult i32 %shr, %12
  br i1 %cmp5.1, label %if.end3.1.for.inc.1_crit_edge, label %if.end7.1

if.end3.1.for.inc.1_crit_edge:                    ; preds = %if.end3.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end7.1:                                        ; preds = %if.end3.1
  %sub.1 = sub i32 %shr, %12
  %shl.1 = shl i32 %sub.1, 12
  %add.1 = or i32 %shl.1, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add.1)
  %cmp9.1 = icmp ugt i32 %add.1, 16384
  %add10.1 = add i32 %add.1, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add10.1)
  %cmp11.1 = icmp ugt i32 %add10.1, 16384
  %or.cond.1 = or i1 %cmp9.1, %cmp11.1
  br i1 %or.cond.1, label %if.end7.1.for.inc.1_crit_edge, label %if.end7.1.cleanup_crit_edge

if.end7.1.cleanup_crit_edge:                      ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.1.for.inc.1_crit_edge:                    ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end7.1.for.inc.1_crit_edge, %if.end3.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %15 = lshr i64 %14, 3
  %conv = trunc i64 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv)
  %cmp22 = icmp ult i32 %shr, %conv
  br i1 %cmp22, label %if.then24, label %for.inc.1.if.end30_crit_edge

for.inc.1.if.end30_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then24:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @read_cache_page(ptr noundef %5, i32 noundef %shr, ptr noundef null, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %call.i
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %for.inc.1.if.end30_crit_edge
  %page.0 = phi ptr [ null, %for.inc.1.if.end30_crit_edge ], [ %spec.select, %if.then24 ]
  %16 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %page.0, ptr %pages, align 4
  %add21.1 = add nuw nsw i32 %shr, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.1, i32 %conv)
  %cmp22.1 = icmp ult i32 %add21.1, %conv
  br i1 %cmp22.1, label %if.then24.1, label %if.end30.if.end30.1_crit_edge

if.end30.if.end30.1_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.1

if.then24.1:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.1 = tail call ptr @read_cache_page(ptr noundef %5, i32 noundef %add21.1, ptr noundef null, ptr noundef null) #11
  %cmp.i.1 = icmp ugt ptr %call.i.1, inttoptr (i32 -4096 to ptr)
  %spec.select.1 = select i1 %cmp.i.1, ptr null, ptr %call.i.1
  br label %if.end30.1

if.end30.1:                                       ; preds = %if.then24.1, %if.end30.if.end30.1_crit_edge
  %page.0.1 = phi ptr [ null, %if.end30.if.end30.1_crit_edge ], [ %spec.select.1, %if.then24.1 ]
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %page.0.1, ptr %6, align 4
  %add21.2 = add nuw nsw i32 %shr, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.2, i32 %conv)
  %cmp22.2 = icmp ult i32 %add21.2, %conv
  br i1 %cmp22.2, label %if.then24.2, label %if.end30.1.if.end30.2_crit_edge

if.end30.1.if.end30.2_crit_edge:                  ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.2

if.then24.2:                                      ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.2 = tail call ptr @read_cache_page(ptr noundef %5, i32 noundef %add21.2, ptr noundef null, ptr noundef null) #11
  %cmp.i.2 = icmp ugt ptr %call.i.2, inttoptr (i32 -4096 to ptr)
  %spec.select.2 = select i1 %cmp.i.2, ptr null, ptr %call.i.2
  br label %if.end30.2

if.end30.2:                                       ; preds = %if.then24.2, %if.end30.1.if.end30.2_crit_edge
  %page.0.2 = phi ptr [ null, %if.end30.1.if.end30.2_crit_edge ], [ %spec.select.2, %if.then24.2 ]
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %page.0.2, ptr %7, align 4
  %add21.3 = add nuw nsw i32 %shr, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.3, i32 %conv)
  %cmp22.3 = icmp ult i32 %add21.3, %conv
  br i1 %cmp22.3, label %if.then24.3, label %if.end30.2.if.end30.3_crit_edge

if.end30.2.if.end30.3_crit_edge:                  ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.3

if.then24.3:                                      ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.3 = tail call ptr @read_cache_page(ptr noundef %5, i32 noundef %add21.3, ptr noundef null, ptr noundef null) #11
  %cmp.i.3 = icmp ugt ptr %call.i.3, inttoptr (i32 -4096 to ptr)
  %spec.select.3 = select i1 %cmp.i.3, ptr null, ptr %call.i.3
  br label %if.end30.3

if.end30.3:                                       ; preds = %if.then24.3, %if.end30.2.if.end30.3_crit_edge
  %page.0.3 = phi ptr [ null, %if.end30.2.if.end30.3_crit_edge ], [ %spec.select.3, %if.then24.3 ]
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %page.0.3, ptr %8, align 4
  br label %for.body38

for.body38:                                       ; preds = %if.end48.for.body38_crit_edge, %if.end30.3
  %i.2179 = phi i32 [ %inc50, %if.end48.for.body38_crit_edge ], [ 0, %if.end30.3 ]
  %arrayidx40 = getelementptr [4 x ptr], ptr %pages, i32 0, i32 %i.2179
  %20 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %21, null
  br i1 %tobool41.not, label %for.body38.if.end48_crit_edge, label %if.then42

for.body38.if.end48_crit_edge:                    ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then42:                                        ; preds = %for.body38
  %22 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !121

if.then.i.i:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %24, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %21 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %25, %if.end.i.i ]
  %26 = inttoptr i32 %retval.0.i.i to ptr
  %27 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_locked.exit.i.i, label %if.then.i.i.i.i, !prof !121

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.20) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !122
  unreachable

folio_test_locked.exit.i.i:                       ; preds = %_compound_head.exit.i
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %26, align 4
  %and1.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %folio_test_locked.exit.i.i.wait_on_page_locked.exit_crit_edge, label %if.then.i1.i

folio_test_locked.exit.i.i.wait_on_page_locked.exit_crit_edge: ; preds = %folio_test_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_on_page_locked.exit

if.then.i1.i:                                     ; preds = %folio_test_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @folio_wait_bit(ptr noundef %26, i32 noundef 0) #11
  br label %wait_on_page_locked.exit

wait_on_page_locked.exit:                         ; preds = %if.then.i1.i, %folio_test_locked.exit.i.i.wait_on_page_locked.exit_crit_edge
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %22, align 4
  %and.i.i126 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i126)
  %tobool.not.i.i127 = icmp eq i32 %and.i.i126, 0
  br i1 %tobool.not.i.i127, label %if.end.i.i130, label %if.then.i.i129, !prof !121

if.then.i.i129:                                   ; preds = %wait_on_page_locked.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i128 = add i32 %34, -1
  br label %_compound_head.exit.i132

if.end.i.i130:                                    ; preds = %wait_on_page_locked.exit
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %21 to i32
  br label %_compound_head.exit.i132

_compound_head.exit.i132:                         ; preds = %if.end.i.i130, %if.then.i.i129
  %retval.0.i.i131 = phi i32 [ %sub.i.i128, %if.then.i.i129 ], [ %35, %if.end.i.i130 ]
  %36 = inttoptr i32 %retval.0.i.i131 to ptr
  %37 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %and.i.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !121

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i132
  call void @__sanitizer_cov_trace_pc() #13
  %40 = inttoptr i32 %retval.0.i.i131 to ptr
  tail call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.20) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !122
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i132
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %36, align 4
  %43 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i, label %if.then45, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !123
  br label %if.end48

if.then45:                                        ; preds = %folio_flags.exit.i.i
  %44 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %22, align 4
  %and.i.i133 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i133)
  %tobool.not.i.i134 = icmp eq i32 %and.i.i133, 0
  br i1 %tobool.not.i.i134, label %if.end.i.i137, label %if.then.i.i136, !prof !121

if.then.i.i136:                                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i135 = add i32 %45, -1
  br label %_compound_head.exit.i139

if.end.i.i137:                                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %21 to i32
  br label %_compound_head.exit.i139

_compound_head.exit.i139:                         ; preds = %if.end.i.i137, %if.then.i.i136
  %retval.0.i.i138 = phi i32 [ %sub.i.i135, %if.then.i.i136 ], [ %46, %if.end.i.i137 ]
  %47 = inttoptr i32 %retval.0.i.i138 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %48 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i.i.i.i = icmp eq i32 %49, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i140, label %do.end5.i.i.i.i, !prof !124

if.then.i.i.i.i140:                               ; preds = %_compound_head.exit.i139
  call void @__sanitizer_cov_trace_pc() #13
  %50 = inttoptr i32 %retval.0.i.i138 to ptr
  tail call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.22) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !125
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i139
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !127
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@cramfs_blkdev_read, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !129

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %47, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %47) #11
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %52 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx40, align 4
  br label %if.end48

if.end48:                                         ; preds = %put_page.exit, %PageUptodate.exit, %for.body38.if.end48_crit_edge
  %inc50 = add nuw nsw i32 %i.2179, 1
  %exitcond.not = icmp eq i32 %inc50, 4
  br i1 %exitcond.not, label %for.end51, label %if.end48.for.body38_crit_edge

if.end48.for.body38_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body38

for.end51:                                        ; preds = %if.end48
  %53 = load i32, ptr @next_buffer, align 4
  %xor = xor i32 %53, 1
  store i32 %xor, ptr @next_buffer, align 4
  %arrayidx52 = getelementptr [2 x i32], ptr @buffer_blocknr, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shr, ptr %arrayidx52, align 4
  %arrayidx53 = getelementptr [2 x ptr], ptr @buffer_dev, i32 0, i32 %53
  %55 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %sb, ptr %arrayidx53, align 4
  %arrayidx54 = getelementptr [2 x [16384 x i8]], ptr @read_buffers, i32 0, i32 %53
  br label %for.body59

for.body59:                                       ; preds = %if.end65.for.body59_crit_edge, %for.end51
  %data.0181 = phi ptr [ %arrayidx54, %for.end51 ], [ %add.ptr66, %if.end65.for.body59_crit_edge ]
  %i.3180 = phi i32 [ 0, %for.end51 ], [ %inc68, %if.end65.for.body59_crit_edge ]
  %arrayidx61 = getelementptr [4 x ptr], ptr %pages, i32 0, i32 %i.3180
  %56 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx61, align 4
  %tobool62.not = icmp eq ptr %57, null
  br i1 %tobool62.not, label %if.else, label %if.then63

if.then63:                                        ; preds = %for.body59
  tail call void @__might_sleep(ptr noundef nonnull @.str.23, i32 noundef 44) #11
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %shr.i.i = lshr i32 %59, 30
  %60 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %shr.i.i, label %if.then63.if.then.i_crit_edge [
    i32 2, label %if.then63.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then63.if.else.i_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then63.if.then.i_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.then63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %61 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp2.i.not.i = icmp eq i32 %61, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.then63.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef nonnull %57) #11
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.then63.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef nonnull %57) #11
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %62 = call ptr @memcpy(ptr %data.0181, ptr %addr.0.i, i32 4096)
  tail call void @__might_sleep(ptr noundef nonnull @.str.23, i32 noundef 55) #11
  %63 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %57, align 4
  %shr.i.i141 = lshr i32 %64, 30
  %65 = zext i32 %shr.i.i141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %shr.i.i141, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i143
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunmap.exit

is_highmem_idx.exit.i143:                         ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %66 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp2.i.not.i142 = icmp eq i32 %66, 2
  br i1 %cmp2.i.not.i142, label %is_highmem_idx.exit.i143.if.end.i_crit_edge, label %is_highmem_idx.exit.i143.kunmap.exit_crit_edge

is_highmem_idx.exit.i143.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i143
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunmap.exit

is_highmem_idx.exit.i143.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i143.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %57) #11
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i143.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %67 = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  %and.i.i144 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i144)
  %tobool.not.i.i145 = icmp eq i32 %and.i.i144, 0
  br i1 %tobool.not.i.i145, label %if.end.i.i148, label %if.then.i.i147, !prof !121

if.then.i.i147:                                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i146 = add i32 %69, -1
  br label %_compound_head.exit.i153

if.end.i.i148:                                    ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %57 to i32
  br label %_compound_head.exit.i153

_compound_head.exit.i153:                         ; preds = %if.end.i.i148, %if.then.i.i147
  %retval.0.i.i149 = phi i32 [ %sub.i.i146, %if.then.i.i147 ], [ %70, %if.end.i.i148 ]
  %71 = inttoptr i32 %retval.0.i.i149 to ptr
  %_refcount.i.i.i.i.i150 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 3
  %call.i.i.i.i.i.i.i151 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i150, i32 noundef 4) #11
  %72 = ptrtoint ptr %_refcount.i.i.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %_refcount.i.i.i.i.i150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i.i.i.i152 = icmp eq i32 %73, 0
  br i1 %cmp.i.i.i.i152, label %if.then.i.i.i.i154, label %do.end5.i.i.i.i158, !prof !124

if.then.i.i.i.i154:                               ; preds = %_compound_head.exit.i153
  call void @__sanitizer_cov_trace_pc() #13
  %74 = inttoptr i32 %retval.0.i.i149 to ptr
  tail call void @dump_page(ptr noundef %74, ptr noundef nonnull @.str.22) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !125
  unreachable

do.end5.i.i.i.i158:                               ; preds = %_compound_head.exit.i153
  %call.i.i.i10.i.i.i.i155 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i150, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i150, i32 1, i32 3, i32 1) #11
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i150, ptr %_refcount.i.i.i.i.i150, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i150) #11, !srcloc !127
  %asmresult.i.i.i.i.i.i.i.i.i.i156 = extractvalue { i32, i32 } %75, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i156)
  %cmp.i.i.i.i.i.i.i157 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i156, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@cramfs_blkdev_read, %if.then.i.i.i.i.i160)) #11
          to label %folio_put_testzero.exit.i.i161 [label %if.then.i.i.i.i.i160], !srcloc !129

if.then.i.i.i.i.i160:                             ; preds = %do.end5.i.i.i.i158
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i159 = zext i1 %cmp.i.i.i.i.i.i.i157 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %71, i32 noundef -1, i32 noundef %conv.i.i.i.i.i159) #11
  br label %folio_put_testzero.exit.i.i161

folio_put_testzero.exit.i.i161:                   ; preds = %if.then.i.i.i.i.i160, %do.end5.i.i.i.i158
  br i1 %cmp.i.i.i.i.i.i.i157, label %if.then.i4.i162, label %folio_put_testzero.exit.i.i161.if.end65_crit_edge

folio_put_testzero.exit.i.i161.if.end65_crit_edge: ; preds = %folio_put_testzero.exit.i.i161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then.i4.i162:                                  ; preds = %folio_put_testzero.exit.i.i161
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %71) #11
  br label %if.end65

if.else:                                          ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #13
  %76 = call ptr @memset(ptr %data.0181, i32 0, i32 4096)
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then.i4.i162, %folio_put_testzero.exit.i.i161.if.end65_crit_edge
  %add.ptr66 = getelementptr i8, ptr %data.0181, i32 4096
  %inc68 = add nuw nsw i32 %i.3180, 1
  %exitcond187.not = icmp eq i32 %inc68, 4
  br i1 %exitcond187.not, label %for.end69, label %if.end65.for.body59_crit_edge

if.end65.for.body59_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body59

for.end69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr72 = getelementptr i8, ptr %arrayidx54, i32 %and
  br label %cleanup73

cleanup73:                                        ; preds = %for.end69, %cleanup, %entry.cleanup73_crit_edge
  %retval.2 = phi ptr [ %add.ptr, %cleanup ], [ %add.ptr72, %for.end69 ], [ null, %entry.cleanup73_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pages) #11
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_cramfs_inode(ptr noundef %sb, ptr nocapture noundef readonly %cramfs_inode, i32 noundef %offset) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cramfs_inode to i32
  call void @__asan_loadN_noabort(i32 %0, i32 12)
  %bf.load.i = load i96, ptr %cramfs_inode, align 4
  %bf.cast20.i = and i96 %bf.load.i, 67108863
  %tobool.not.i = icmp eq i96 %bf.cast20.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %offset, 1
  br label %cramino.exit

if.end.i:                                         ; preds = %entry
  %1 = and i96 %bf.load.i, 18446742974197923840
  %tobool4.not.i = icmp eq i96 %1, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add6.i = add i32 %offset, 1
  br label %cramino.exit

if.end7.i:                                        ; preds = %if.end.i
  %bf.lshr9.i = lshr i96 %bf.load.i, 80
  %bf.cast10.i = trunc i96 %bf.lshr9.i to i16
  %and.i = and i16 %bf.cast10.i, -4096
  %2 = zext i16 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %and.i, label %sw.epilog.i [
    i16 -32768, label %if.end7.i.sw.bb.i_crit_edge
    i16 16384, label %if.end7.i.sw.bb.i_crit_edge90
    i16 -24576, label %if.end7.i.sw.bb.i_crit_edge91
  ]

if.end7.i.sw.bb.i_crit_edge91:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge90:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end7.i.sw.bb.i_crit_edge, %if.end7.i.sw.bb.i_crit_edge90, %if.end7.i.sw.bb.i_crit_edge91
  %3 = trunc i96 %bf.load.i to i32
  %bf.cast13.i = shl i32 %3, 2
  %shl.i85 = and i32 %bf.cast13.i, 268435452
  br label %cramino.exit

sw.epilog.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %add14.i = add i32 %offset, 1
  br label %cramino.exit

cramino.exit:                                     ; preds = %sw.epilog.i, %sw.bb.i, %if.then5.i, %if.then.i
  %retval.0.i = phi i32 [ %add14.i, %sw.epilog.i ], [ %shl.i85, %sw.bb.i ], [ %add6.i, %if.then5.i ], [ %add.i, %if.then.i ]
  %call1 = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %retval.0.i) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %cramino.exit.cleanup_crit_edge, label %if.end

cramino.exit.cleanup_crit_edge:                   ; preds = %cramino.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cramino.exit
  %i_state = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 24
  %4 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_state, align 8
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %cramfs_inode to i32
  call void @__asan_loadN_noabort(i32 %6, i32 12)
  %bf.load = load i96, ptr %cramfs_inode, align 4
  %bf.lshr = lshr i96 %bf.load, 80
  %7 = trunc i96 %bf.lshr to i16
  %trunc = and i16 %7, -4096
  %8 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %trunc, label %sw.default [
    i16 -32768, label %sw.bb
    i16 16384, label %sw.bb14
    i16 -24576, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end5
  %9 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @generic_ro_fops, ptr %9, align 8
  %a_ops = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 46, i32 9
  %11 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cramfs_aops, ptr %a_ops, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.cramfs_sb_info, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and8 = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %linear_phys_addr = getelementptr inbounds %struct.cramfs_sb_info, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %linear_phys_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %linear_phys_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  br i1 %tobool11.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then12

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @cramfs_physmem_fops, ptr %9, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %19 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @cramfs_dir_inode_operations, ptr %i_op, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cramfs_directory_operations, ptr %20, align 8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %i_op16 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %22 = ptrtoint ptr %i_op16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @page_symlink_inode_operations, ptr %i_op16, align 8
  tail call void @inode_nohighmem(ptr noundef nonnull %call1) #11
  %a_ops18 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 46, i32 9
  %23 = ptrtoint ptr %a_ops18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @cramfs_aops, ptr %a_ops18, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr23 = lshr i96 %bf.load, 40
  %24 = trunc i96 %bf.lshr23 to i32
  %conv.i = shl i32 %24, 12
  %25 = and i32 %conv.i, 267386880
  %and2.i = and i32 %24, 255
  %or.i = or i32 %25, %and2.i
  tail call void @init_special_inode(ptr noundef nonnull %call1, i16 noundef zeroext %7, i32 noundef %or.i) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb14, %if.then12, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %26 = ptrtoint ptr %cramfs_inode to i32
  call void @__asan_loadN_noabort(i32 %26, i32 12)
  %bf.load27 = load i96, ptr %cramfs_inode, align 4
  %bf.lshr28 = lshr i96 %bf.load27, 80
  %conv30 = trunc i96 %bf.lshr28 to i16
  %27 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv30, ptr %call1, align 8
  %bf.load31 = load i96, ptr %cramfs_inode, align 4
  %bf.lshr32 = lshr i96 %bf.load31, 64
  %28 = trunc i96 %bf.lshr32 to i32
  %bf.cast34 = and i32 %28, 65535
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 2
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 8
  %29 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 53
  %31 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = tail call i32 @make_kuid(ptr noundef %32, i32 noundef %bf.cast34) #11
  %33 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call1.i, ptr %i_uid.i, align 4
  %34 = ptrtoint ptr %cramfs_inode to i32
  call void @__asan_loadN_noabort(i32 %34, i32 12)
  %bf.load35 = load i96, ptr %cramfs_inode, align 4
  %bf.lshr36 = lshr i96 %bf.load35, 32
  %35 = trunc i96 %bf.lshr36 to i32
  %bf.cast38 = and i32 %35, 255
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 3
  %36 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i88 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 53
  %38 = ptrtoint ptr %s_user_ns.i.i88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_user_ns.i.i88, align 8
  %call1.i89 = tail call i32 @make_kgid(ptr noundef %39, i32 noundef %bf.cast38) #11
  %40 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call1.i89, ptr %i_gid.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %41 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_ino, align 8
  %and39 = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then41, label %sw.epilog.if.end52_crit_edge

sw.epilog.if.end52_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then41:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %cramfs_inode to i32
  call void @__asan_loadN_noabort(i32 %43, i32 12)
  %bf.load42 = load i96, ptr %cramfs_inode, align 4
  %bf.lshr43 = lshr i96 %bf.load42, 40
  %44 = trunc i96 %bf.lshr43 to i32
  %bf.cast45 = and i32 %44, 16777215
  %conv46 = zext i32 %bf.cast45 to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 14
  %45 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv46, ptr %i_size, align 8
  %bf.load47 = load i96, ptr %cramfs_inode, align 4
  %bf.lshr48 = lshr i96 %bf.load47, 40
  %46 = trunc i96 %bf.lshr48 to i32
  %bf.cast50 = and i32 %46, 16777215
  %sub = add nsw i32 %bf.cast50, -1
  %div = sdiv i32 %sub, 512
  %add = add nuw nsw i32 %div, 1
  %47 = zext i32 %add to i64
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 22
  %48 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %i_blocks, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then41, %sw.epilog.if.end52_crit_edge
  %i_atime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %49 = call ptr @memset(ptr %i_atime, i32 0, i32 48)
  tail call void @unlock_new_inode(ptr noundef nonnull %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end.cleanup_crit_edge, %cramino.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end52 ], [ %call1, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %cramino.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cramfs_statfs(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bd_dev, align 4
  %and1.i.i = and i32 %5, 255
  %6 = lshr i32 %5, 12
  %shl.i.i = and i32 %6, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %5, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  br label %if.end6

if.else:                                          ; preds = %entry
  %s_dev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.else.if.end6_crit_edge, label %if.then3

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i.i24 = and i32 %8, 255
  %9 = lshr i32 %8, 12
  %shl.i.i25 = and i32 %9, 1048320
  %or.i.i26 = or i32 %shl.i.i25, %and1.i.i24
  %and2.i.i27 = shl i32 %8, 12
  %shl3.i.i28 = and i32 %and2.i.i27, -1048576
  %or4.i.i29 = or i32 %or.i.i26, %shl3.i.i28
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.else.if.end6_crit_edge, %if.then
  %id.0.shrunk = phi i32 [ %or4.i.i, %if.then ], [ %or4.i.i29, %if.then3 ], [ 0, %if.else.if.end6_crit_edge ]
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 684539205, ptr %buf, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %11 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4096, ptr %f_bsize, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %blocks = getelementptr inbounds %struct.cramfs_sb_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blocks, align 4
  %conv = zext i32 %15 to i64
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %16 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv, ptr %f_blocks, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %17 = call ptr @memset(ptr %f_bfree, i32 0, i32 16)
  %18 = load ptr, ptr %s_fs_info.i, align 16
  %files = getelementptr inbounds %struct.cramfs_sb_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %files, align 4
  %conv9 = zext i32 %20 to i64
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %21 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv9, ptr %f_files, align 8
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %22 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %f_ffree, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %tmp.sroa.0.0.insert.ext = zext i32 %id.0.shrunk to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %23 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %tmp.sroa.0.0.insert.shift, ptr %f_fsid, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %24 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 252, ptr %f_namelen, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cramfs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  %sub = add i64 %5, 4095
  %6 = lshr i64 %sub, 12
  %conv = trunc i64 %6 to i32
  tail call void @__might_sleep(ptr noundef nonnull @.str.23, i32 noundef 44) #11
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %8, 30
  %9 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %shr.i.i, label %entry.if.then.i188_crit_edge [
    i32 2, label %entry.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

entry.if.then.i188_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i188

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %10 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp2.i.not.i = icmp eq i32 %10, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i188_crit_edge

is_highmem_idx.exit.i.if.then.i188_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i188

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i188:                                     ; preds = %is_highmem_idx.exit.i.if.then.i188_crit_edge, %entry.if.then.i188_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %page) #11
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %page) #11
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i188
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i188 ]
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp = icmp ult i32 %12, %conv
  br i1 %cmp, label %if.then, label %kmap.exit.if.end100_crit_edge

kmap.exit.if.end100_crit_edge:                    ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then:                                          ; preds = %kmap.exit
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino, align 8
  %mul = shl i32 %12, 2
  %add3 = add i32 %16, %mul
  tail call void @mutex_lock_nested(ptr noundef nonnull @read_mutex, i32 noundef 0) #11
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i, align 16
  %linear_virt_addr.i = getelementptr inbounds %struct.cramfs_sb_info, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %linear_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %linear_virt_addr.i, align 4
  %tobool.not.i189 = icmp eq ptr %20, null
  br i1 %tobool.not.i189, label %if.else.i193, label %if.then.i190

if.then.i190:                                     ; preds = %if.then
  %size.i.i = getelementptr inbounds %struct.cramfs_sb_info, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp.i.i = icmp ult i32 %22, 4
  %sub.i.i191 = add i32 %22, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i191, i32 %add3)
  %cmp2.i.i = icmp ult i32 %sub.i.i191, %add3
  %or.cond.i.i = or i1 %cmp.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.then3.i.i, label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.then.i190
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %23 = load ptr, ptr @empty_zero_page, align 4
  %call4.i.i = tail call ptr @page_address(ptr noundef %23) #11
  br label %cramfs_read.exit

if.end5.i.i:                                      ; preds = %if.then.i190
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %add3
  br label %cramfs_read.exit

if.else.i193:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call fastcc ptr @cramfs_blkdev_read(ptr noundef %14, i32 noundef %add3, i32 noundef 4) #11
  br label %cramfs_read.exit

cramfs_read.exit:                                 ; preds = %if.else.i193, %if.end5.i.i, %if.then3.i.i
  %retval.0.i = phi ptr [ %call2.i, %if.else.i193 ], [ %call4.i.i, %if.then3.i.i ], [ %add.ptr.i.i, %if.end5.i.i ]
  %24 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retval.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool.not = icmp sgt i32 %25, -1
  %and5 = and i32 %25, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %and8 = and i32 %25, 1073741823
  br i1 %tobool6.not, label %if.else25, label %if.then10

if.then10:                                        ; preds = %cramfs_read.exit
  %shl = shl i32 %25, 2
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then10
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 4
  %sub14 = add i32 %conv, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub14)
  %cmp15 = icmp eq i32 %27, %sub14
  br i1 %cmp15, label %if.then17, label %if.then12.if.then76_crit_edge

if.then12.if.then76_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

if.then17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_size, align 8
  %conv19 = trunc i64 %29 to i32
  %and20 = and i32 %conv19, 4095
  br label %if.end55

if.else:                                          ; preds = %if.then10
  %30 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i, align 16
  %linear_virt_addr.i195 = getelementptr inbounds %struct.cramfs_sb_info, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %linear_virt_addr.i195 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %linear_virt_addr.i195, align 4
  %tobool.not.i196 = icmp eq ptr %33, null
  br i1 %tobool.not.i196, label %if.else.i209, label %if.then.i197

if.then.i197:                                     ; preds = %if.else
  %size.i.i198 = getelementptr inbounds %struct.cramfs_sb_info, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %size.i.i198 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i.i198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i.i199 = icmp ult i32 %35, 2
  %sub.i.i200 = add i32 %35, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i200, i32 %shl)
  %cmp2.i.i201 = icmp ult i32 %sub.i.i200, %shl
  %or.cond.i.i202 = or i1 %cmp.i.i199, %cmp2.i.i201
  br i1 %or.cond.i.i202, label %if.then3.i.i205, label %if.end5.i.i207

if.then3.i.i205:                                  ; preds = %if.then.i197
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %36 = load ptr, ptr @empty_zero_page, align 4
  %call4.i.i204 = tail call ptr @page_address(ptr noundef %36) #11
  br label %cramfs_read.exit211

if.end5.i.i207:                                   ; preds = %if.then.i197
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i206 = getelementptr i8, ptr %33, i32 %shl
  br label %cramfs_read.exit211

if.else.i209:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i208 = tail call fastcc ptr @cramfs_blkdev_read(ptr noundef %14, i32 noundef %shl, i32 noundef 2) #11
  br label %cramfs_read.exit211

cramfs_read.exit211:                              ; preds = %if.else.i209, %if.end5.i.i207, %if.then3.i.i205
  %retval.0.i210 = phi ptr [ %call2.i208, %if.else.i209 ], [ %call4.i.i204, %if.then3.i.i205 ], [ %add.ptr.i.i206, %if.end5.i.i207 ]
  %37 = ptrtoint ptr %retval.0.i210 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %retval.0.i210, align 2
  %conv22 = zext i16 %38 to i32
  %add23 = or i32 %shl, 2
  br label %if.end55

if.else25:                                        ; preds = %cramfs_read.exit
  %39 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_ino, align 8
  %mul27 = shl i32 %conv, 2
  %add28 = add i32 %40, %mul27
  %41 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool30.not = icmp eq i32 %42, 0
  br i1 %tobool30.not, label %if.else25.if.end34_crit_edge, label %if.then31

if.else25.if.end34_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then31:                                        ; preds = %if.else25
  %sub32 = add i32 %add3, -4
  %43 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i.i, align 16
  %linear_virt_addr.i213 = getelementptr inbounds %struct.cramfs_sb_info, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %linear_virt_addr.i213 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %linear_virt_addr.i213, align 4
  %tobool.not.i214 = icmp eq ptr %46, null
  br i1 %tobool.not.i214, label %if.else.i227, label %if.then.i215

if.then.i215:                                     ; preds = %if.then31
  %size.i.i216 = getelementptr inbounds %struct.cramfs_sb_info, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %size.i.i216 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.i.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp.i.i217 = icmp ult i32 %48, 4
  %sub.i.i218 = add i32 %48, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i218, i32 %sub32)
  %cmp2.i.i219 = icmp ult i32 %sub.i.i218, %sub32
  %or.cond.i.i220 = or i1 %cmp.i.i217, %cmp2.i.i219
  br i1 %or.cond.i.i220, label %if.then3.i.i223, label %if.end5.i.i225

if.then3.i.i223:                                  ; preds = %if.then.i215
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %49 = load ptr, ptr @empty_zero_page, align 4
  %call4.i.i222 = tail call ptr @page_address(ptr noundef %49) #11
  br label %cramfs_read.exit229

if.end5.i.i225:                                   ; preds = %if.then.i215
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i224 = getelementptr i8, ptr %46, i32 %sub32
  br label %cramfs_read.exit229

if.else.i227:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i226 = tail call fastcc ptr @cramfs_blkdev_read(ptr noundef %14, i32 noundef %sub32, i32 noundef 4) #11
  br label %cramfs_read.exit229

cramfs_read.exit229:                              ; preds = %if.else.i227, %if.end5.i.i225, %if.then3.i.i223
  %retval.0.i228 = phi ptr [ %call2.i226, %if.else.i227 ], [ %call4.i.i222, %if.then3.i.i223 ], [ %add.ptr.i.i224, %if.end5.i.i225 ]
  %50 = ptrtoint ptr %retval.0.i228 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %retval.0.i228, align 4
  br label %if.end34

if.end34:                                         ; preds = %cramfs_read.exit229, %if.else25.if.end34_crit_edge
  %block_start.0 = phi i32 [ %51, %cramfs_read.exit229 ], [ %add28, %if.else25.if.end34_crit_edge ]
  %and35 = and i32 %block_start.0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end52_crit_edge, label %if.then39, !prof !121

if.end34.if.end52_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then39:                                        ; preds = %if.end34
  %shl41 = shl i32 %block_start.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %block_start.0)
  %tobool43.not = icmp sgt i32 %block_start.0, -1
  br i1 %tobool43.not, label %if.else46, label %if.then44

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %add45 = add i32 %shl41, 4096
  br label %if.end52

if.else46:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %call47 = tail call fastcc ptr @cramfs_read(ptr noundef %14, i32 noundef %shl41, i32 noundef 2)
  %52 = ptrtoint ptr %call47 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %call47, align 2
  %conv48 = zext i16 %53 to i32
  %add49 = or i32 %shl41, 2
  %add50 = add i32 %add49, %conv48
  br label %if.end52

if.end52:                                         ; preds = %if.else46, %if.then44, %if.end34.if.end52_crit_edge
  %block_start.2 = phi i32 [ %block_start.0, %if.end34.if.end52_crit_edge ], [ %add45, %if.then44 ], [ %add50, %if.else46 ]
  %and53 = and i32 %block_start.2, 1073741823
  %sub54 = sub nsw i32 %and8, %and53
  br label %if.end55

if.end55:                                         ; preds = %if.end52, %cramfs_read.exit211, %if.then17
  %block_start.3 = phi i32 [ %shl, %if.then17 ], [ %add23, %cramfs_read.exit211 ], [ %and53, %if.end52 ]
  %block_len.0 = phi i32 [ %and20, %if.then17 ], [ %conv22, %cramfs_read.exit211 ], [ %sub54, %if.end52 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_len.0)
  %cmp56 = icmp eq i32 %block_len.0, 0
  br i1 %cmp56, label %if.end55.if.end83.thread_crit_edge, label %if.else59

if.end55.if.end83.thread_crit_edge:               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83.thread

if.else59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %block_len.0)
  %cmp60 = icmp ugt i32 %block_len.0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %block_len.0)
  %cmp64 = icmp ugt i32 %block_len.0, 4096
  %not.tobool.not = xor i1 %tobool.not, true
  %spec.select = select i1 %not.tobool.not, i1 %cmp64, i1 false
  %or.cond = select i1 %cmp60, i1 true, i1 %spec.select
  br i1 %or.cond, label %if.then72, label %if.else74, !prof !130

if.then72:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @read_mutex) #11
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %block_len.0) #15
  br label %err

if.else74:                                        ; preds = %if.else59
  br i1 %tobool.not, label %if.else78, label %if.else74.if.then76_crit_edge

if.else74.if.then76_crit_edge:                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

if.then76:                                        ; preds = %if.else74.if.then76_crit_edge, %if.then12.if.then76_crit_edge
  %block_len.0280287293 = phi i32 [ %block_len.0, %if.else74.if.then76_crit_edge ], [ 4096, %if.then12.if.then76_crit_edge ]
  %block_start.3279289292 = phi i32 [ %block_start.3, %if.else74.if.then76_crit_edge ], [ %shl, %if.then12.if.then76_crit_edge ]
  %54 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i.i, align 16
  %linear_virt_addr.i231 = getelementptr inbounds %struct.cramfs_sb_info, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %linear_virt_addr.i231 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %linear_virt_addr.i231, align 4
  %tobool.not.i232 = icmp eq ptr %57, null
  br i1 %tobool.not.i232, label %if.else.i246, label %if.end.i.i240

if.end.i.i240:                                    ; preds = %if.then76
  %size.i.i235 = getelementptr inbounds %struct.cramfs_sb_info, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %size.i.i235 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i.i235, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %block_len.0280287293)
  %cmp.i.i236 = icmp ult i32 %59, %block_len.0280287293
  %sub.i.i237 = sub i32 %59, %block_len.0280287293
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i237, i32 %block_start.3279289292)
  %cmp2.i.i238 = icmp ult i32 %sub.i.i237, %block_start.3279289292
  %or.cond.i.i239 = or i1 %cmp.i.i236, %cmp2.i.i238
  br i1 %or.cond.i.i239, label %if.then3.i.i242, label %if.end5.i.i244

if.then3.i.i242:                                  ; preds = %if.end.i.i240
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %60 = load ptr, ptr @empty_zero_page, align 4
  %call4.i.i241 = tail call ptr @page_address(ptr noundef %60) #11
  br label %cramfs_read.exit248

if.end5.i.i244:                                   ; preds = %if.end.i.i240
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i243 = getelementptr i8, ptr %57, i32 %block_start.3279289292
  br label %cramfs_read.exit248

if.else.i246:                                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i245 = tail call fastcc ptr @cramfs_blkdev_read(ptr noundef %14, i32 noundef %block_start.3279289292, i32 noundef %block_len.0280287293) #11
  br label %cramfs_read.exit248

cramfs_read.exit248:                              ; preds = %if.else.i246, %if.end5.i.i244, %if.then3.i.i242
  %retval.0.i247 = phi ptr [ %call2.i245, %if.else.i246 ], [ %call4.i.i241, %if.then3.i.i242 ], [ %add.ptr.i.i243, %if.end5.i.i244 ]
  %61 = call ptr @memcpy(ptr %addr.0.i, ptr %retval.0.i247, i32 %block_len.0280287293)
  br label %if.end83.thread

if.else78:                                        ; preds = %if.else74
  %62 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i.i, align 16
  %linear_virt_addr.i250 = getelementptr inbounds %struct.cramfs_sb_info, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %linear_virt_addr.i250 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %linear_virt_addr.i250, align 4
  %tobool.not.i251 = icmp eq ptr %65, null
  br i1 %tobool.not.i251, label %if.else.i265, label %if.end.i.i259

if.end.i.i259:                                    ; preds = %if.else78
  %size.i.i254 = getelementptr inbounds %struct.cramfs_sb_info, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %size.i.i254 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size.i.i254, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %block_len.0)
  %cmp.i.i255 = icmp ult i32 %67, %block_len.0
  %sub.i.i256 = sub i32 %67, %block_len.0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i256, i32 %block_start.3)
  %cmp2.i.i257 = icmp ult i32 %sub.i.i256, %block_start.3
  %or.cond.i.i258 = or i1 %cmp.i.i255, %cmp2.i.i257
  br i1 %or.cond.i.i258, label %if.then3.i.i261, label %if.end5.i.i263

if.then3.i.i261:                                  ; preds = %if.end.i.i259
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %68 = load ptr, ptr @empty_zero_page, align 4
  %call4.i.i260 = tail call ptr @page_address(ptr noundef %68) #11
  br label %if.end83

if.end5.i.i263:                                   ; preds = %if.end.i.i259
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i262 = getelementptr i8, ptr %65, i32 %block_start.3
  br label %if.end83

if.else.i265:                                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i264 = tail call fastcc ptr @cramfs_blkdev_read(ptr noundef %14, i32 noundef %block_start.3, i32 noundef %block_len.0) #11
  br label %if.end83

if.end83.thread:                                  ; preds = %cramfs_read.exit248, %if.end55.if.end83.thread_crit_edge
  %bytes_filled.0.ph = phi i32 [ %block_len.0280287293, %cramfs_read.exit248 ], [ 0, %if.end55.if.end83.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @read_mutex) #11
  br label %if.end100

if.end83:                                         ; preds = %if.else.i265, %if.end5.i.i263, %if.then3.i.i261
  %retval.0.i266 = phi ptr [ %call2.i264, %if.else.i265 ], [ %call4.i.i260, %if.then3.i.i261 ], [ %add.ptr.i.i262, %if.end5.i.i263 ]
  %call80 = tail call i32 @cramfs_uncompress_block(ptr noundef %addr.0.i, i32 noundef 4096, ptr noundef %retval.0.i266, i32 noundef %block_len.0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @read_mutex) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp84 = icmp slt i32 %call80, 0
  br i1 %cmp84, label %if.end83.err_crit_edge, label %if.end83.if.end100_crit_edge

if.end83.if.end100_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.end83.err_crit_edge:                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end100:                                        ; preds = %if.end83.if.end100_crit_edge, %if.end83.thread, %kmap.exit.if.end100_crit_edge
  %bytes_filled.2 = phi i32 [ 0, %kmap.exit.if.end100_crit_edge ], [ %bytes_filled.0.ph, %if.end83.thread ], [ %call80, %if.end83.if.end100_crit_edge ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %bytes_filled.2
  %sub101 = sub nsw i32 4096, %bytes_filled.2
  %69 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub101)
  tail call void @flush_dcache_page(ptr noundef %page) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.23, i32 noundef 55) #11
  %70 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %page, align 4
  %shr.i.i268 = lshr i32 %71, 30
  %72 = zext i32 %shr.i.i268 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %shr.i.i268, label %if.end100.kunmap.exit_crit_edge [
    i32 2, label %if.end100.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i270
  ]

if.end100.if.end.i_crit_edge:                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end100.kunmap.exit_crit_edge:                  ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunmap.exit

is_highmem_idx.exit.i270:                         ; preds = %if.end100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %73 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp2.i.not.i269 = icmp eq i32 %73, 2
  br i1 %cmp2.i.not.i269, label %is_highmem_idx.exit.i270.if.end.i_crit_edge, label %is_highmem_idx.exit.i270.kunmap.exit_crit_edge

is_highmem_idx.exit.i270.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i270
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunmap.exit

is_highmem_idx.exit.i270.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i270
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i270.if.end.i_crit_edge, %if.end100.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #11
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i270.kunmap.exit_crit_edge, %if.end100.kunmap.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !131
  %74 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  %and.i.i.i.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !121

if.then.i.i.i:                                    ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.20) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !122
  unreachable

SetPageUptodate.exit:                             ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #11
  br label %cleanup102

err:                                              ; preds = %if.end83.err_crit_edge, %if.then72
  tail call void @__might_sleep(ptr noundef nonnull @.str.23, i32 noundef 55) #11
  %77 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %page, align 4
  %shr.i.i271 = lshr i32 %78, 30
  %79 = zext i32 %shr.i.i271 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %shr.i.i271, label %err.kunmap.exit275_crit_edge [
    i32 2, label %err.if.end.i274_crit_edge
    i32 3, label %is_highmem_idx.exit.i273
  ]

err.if.end.i274_crit_edge:                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i274

err.kunmap.exit275_crit_edge:                     ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunmap.exit275

is_highmem_idx.exit.i273:                         ; preds = %err
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %80 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp2.i.not.i272 = icmp eq i32 %80, 2
  br i1 %cmp2.i.not.i272, label %is_highmem_idx.exit.i273.if.end.i274_crit_edge, label %is_highmem_idx.exit.i273.kunmap.exit275_crit_edge

is_highmem_idx.exit.i273.kunmap.exit275_crit_edge: ; preds = %is_highmem_idx.exit.i273
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunmap.exit275

is_highmem_idx.exit.i273.if.end.i274_crit_edge:   ; preds = %is_highmem_idx.exit.i273
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i274

if.end.i274:                                      ; preds = %is_highmem_idx.exit.i273.if.end.i274_crit_edge, %err.if.end.i274_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #11
  br label %kunmap.exit275

kunmap.exit275:                                   ; preds = %if.end.i274, %is_highmem_idx.exit.i273.kunmap.exit275_crit_edge, %err.kunmap.exit275_crit_edge
  %81 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %81, align 4
  %and.i.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !121

if.then.i:                                        ; preds = %kunmap.exit275
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.26) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #11, !srcloc !132
  unreachable

do.body7.i:                                       ; preds = %kunmap.exit275
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %81, align 4
  %and.i31.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !121

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %85, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %86, %if.end.i.i ]
  %87 = inttoptr i32 %retval.0.i.i to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %cmp.i.not.i = icmp eq i32 %89, -1
  %90 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %81, align 4
  %and.i32.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !124

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !121

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i34.i = add i32 %91, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %92, %if.end.i36.i ]
  %93 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %93, ptr noundef nonnull @.str.27) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #11, !srcloc !133
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !121

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i41.i = add i32 %91, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %page to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %94, %if.end.i43.i ]
  %95 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %95) #11
  %96 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %81, align 4
  %and.i.i163 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i163)
  %tobool.not.i164 = icmp eq i32 %and.i.i163, 0
  br i1 %tobool.not.i164, label %do.body7.i168, label %if.then.i165, !prof !121

if.then.i165:                                     ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.26) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #11, !srcloc !134
  unreachable

do.body7.i168:                                    ; preds = %ClearPageUptodate.exit
  %98 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %81, align 4
  %and.i31.i166 = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i166)
  %tobool.not.i.i167 = icmp eq i32 %and.i31.i166, 0
  br i1 %tobool.not.i.i167, label %if.end.i.i171, label %if.then.i.i170, !prof !121

if.then.i.i170:                                   ; preds = %do.body7.i168
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i169 = add i32 %99, -1
  br label %_compound_head.exit.i176

if.end.i.i171:                                    ; preds = %do.body7.i168
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i176

_compound_head.exit.i176:                         ; preds = %if.end.i.i171, %if.then.i.i170
  %retval.0.i.i172 = phi i32 [ %sub.i.i169, %if.then.i.i170 ], [ %100, %if.end.i.i171 ]
  %101 = inttoptr i32 %retval.0.i.i172 to ptr
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %103)
  %cmp.i.not.i173 = icmp eq i32 %103, -1
  %104 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %81, align 4
  %and.i32.i174 = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i174)
  %tobool.not.i33.i175 = icmp eq i32 %and.i32.i174, 0
  br i1 %cmp.i.not.i173, label %if.then17.i177, label %do.end24.i183, !prof !124

if.then17.i177:                                   ; preds = %_compound_head.exit.i176
  br i1 %tobool.not.i33.i175, label %if.end.i36.i180, label %if.then.i35.i179, !prof !121

if.then.i35.i179:                                 ; preds = %if.then17.i177
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i34.i178 = add i32 %105, -1
  br label %_compound_head.exit38.i182

if.end.i36.i180:                                  ; preds = %if.then17.i177
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i182

_compound_head.exit38.i182:                       ; preds = %if.end.i36.i180, %if.then.i35.i179
  %retval.0.i37.i181 = phi i32 [ %sub.i34.i178, %if.then.i35.i179 ], [ %106, %if.end.i36.i180 ]
  %107 = inttoptr i32 %retval.0.i37.i181 to ptr
  tail call void @dump_page(ptr noundef %107, ptr noundef nonnull @.str.27) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #11, !srcloc !135
  unreachable

do.end24.i183:                                    ; preds = %_compound_head.exit.i176
  br i1 %tobool.not.i33.i175, label %if.end.i43.i186, label %if.then.i42.i185, !prof !121

if.then.i42.i185:                                 ; preds = %do.end24.i183
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i41.i184 = add i32 %105, -1
  br label %SetPageError.exit

if.end.i43.i186:                                  ; preds = %do.end24.i183
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i186, %if.then.i42.i185
  %retval.0.i44.i187 = phi i32 [ %sub.i41.i184, %if.then.i42.i185 ], [ %108, %if.end.i43.i186 ]
  %109 = inttoptr i32 %retval.0.i44.i187 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %109) #11
  br label %cleanup102

cleanup102:                                       ; preds = %SetPageError.exit, %SetPageUptodate.exit
  tail call void @unlock_page(ptr noundef %page) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cramfs_uncompress_block(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cramfs_physmem_mmap(ptr noundef %file, ptr noundef %vma) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
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
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %6 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_pgoff, align 4
  %call2 = tail call i32 @generic_file_readonly_mmap(ptr noundef %file, ptr noundef %vma) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.do.body86_crit_edge

if.end.do.body86_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body86

if.end5:                                          ; preds = %if.end
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size, align 8
  %sub = add i64 %11, 4095
  %12 = lshr i64 %sub, 12
  %conv = trunc i64 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp.not = icmp ult i32 %7, %conv
  br i1 %cmp.not, label %if.end8, label %if.end5.do.body86_crit_edge

if.end5.do.body86_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body86

if.end8:                                          ; preds = %if.end5
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %13 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_end.i, align 4
  %15 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %14, %16
  %shr.i = lshr i32 %sub.i, 12
  %sub10 = sub i32 %conv, %7
  %17 = tail call i32 @llvm.umin.i32(i32 %shr.i, i32 %sub10)
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i, align 16
  %linear_virt_addr.i = getelementptr inbounds %struct.cramfs_sb_info, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %linear_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %linear_virt_addr.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino.i, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 %25
  %mul.i = shl i32 %7, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %26 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr1.i, align 4
  %umax = call i32 @llvm.umax.i32(i32 %17, i32 1)
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond18.i.do.body.i_crit_edge, %if.end8
  %i.0.i = phi i32 [ 0, %if.end8 ], [ %inc.i, %do.cond18.i.do.body.i_crit_edge ]
  %mul2.i = shl i32 %i.0.i, 10
  %add.i = add i32 %mul2.i, %27
  %or3.i = or i32 %add.i, -1073741824
  %arrayidx4.i = getelementptr i32, ptr %add.ptr1.i, i32 %i.0.i
  %28 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %or3.i)
  %cmp.not.i = icmp eq i32 %29, %or3.i
  br i1 %cmp.not.i, label %do.cond18.i, label %do.body5.i

do.body5.i:                                       ; preds = %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cramfs_get_block_range.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cramfs_physmem_mmap, %if.then9.i)) #11
          to label %do.end.i [label %if.then9.i], !srcloc !129

if.then9.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx4.i.le = getelementptr i32, ptr %add.ptr1.i, i32 %i.0.i
  %add10.i = add i32 %i.0.i, %7
  %add11.i = add i32 %7, -1
  %sub.i158 = add i32 %add11.i, %17
  %30 = ptrtoint ptr %arrayidx4.i.le to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4.i.le, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cramfs_get_block_range.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.42, i32 noundef %add10.i, i32 noundef %sub.i158, i32 noundef %31, i32 noundef %or3.i) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then9.i, %do.body5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp13.i = icmp eq i32 %i.0.i, 0
  br i1 %cmp13.i, label %do.end.i.do.body86_crit_edge, label %do.end.i.cramfs_get_block_range.exit_crit_edge

do.end.i.cramfs_get_block_range.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cramfs_get_block_range.exit

do.end.i.do.body86_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body86

do.cond18.i:                                      ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %i.0.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %umax
  br i1 %exitcond.not, label %do.cond18.i.cramfs_get_block_range.exit_crit_edge, label %do.cond18.i.do.body.i_crit_edge

do.cond18.i.do.body.i_crit_edge:                  ; preds = %do.cond18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.cond18.i.cramfs_get_block_range.exit_crit_edge: ; preds = %do.cond18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cramfs_get_block_range.exit

cramfs_get_block_range.exit:                      ; preds = %do.cond18.i.cramfs_get_block_range.exit_crit_edge, %do.end.i.cramfs_get_block_range.exit_crit_edge
  %i.1.i = phi i32 [ %i.0.i, %do.end.i.cramfs_get_block_range.exit_crit_edge ], [ %umax, %do.cond18.i.cramfs_get_block_range.exit_crit_edge ]
  %shl.i = shl i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %tobool14.not = icmp eq i32 %shl.i, 0
  br i1 %tobool14.not, label %cramfs_get_block_range.exit.do.body86_crit_edge, label %if.end16

cramfs_get_block_range.exit.do.body86_crit_edge:  ; preds = %cramfs_get_block_range.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body86

if.end16:                                         ; preds = %cramfs_get_block_range.exit
  %linear_phys_addr = getelementptr inbounds %struct.cramfs_sb_info, ptr %5, i32 0, i32 6
  %32 = ptrtoint ptr %linear_phys_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %linear_phys_addr, align 4
  %add17 = add i32 %33, %shl.i
  %and18 = and i32 %add17, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %if.end22, label %if.end16.do.body86_crit_edge

if.end16.do.body86_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body86

if.end22:                                         ; preds = %if.end16
  %add23 = add i32 %i.1.i, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %conv)
  %cmp24 = icmp eq i32 %add23, %conv
  br i1 %cmp24, label %land.lhs.true, label %if.end22.if.end39_crit_edge

if.end22.if.end39_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end22
  %call26 = tail call fastcc zeroext i1 @cramfs_last_page_is_shared(ptr noundef %1)
  br i1 %call26, label %do.body, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cramfs_physmem_mmap.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cramfs_physmem_mmap, %if.then34)) #11
          to label %if.end36 [label %if.then34], !srcloc !129

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cramfs_physmem_mmap.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.34, ptr noundef %file) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %do.body
  %dec = add i32 %i.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool37.not = icmp eq i32 %dec, 0
  br i1 %tobool37.not, label %if.end36.do.body86_crit_edge, label %if.end36.if.end39_crit_edge

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end36.do.body86_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body86

if.end39:                                         ; preds = %if.end36.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %if.end22.if.end39_crit_edge
  %pages.1180 = phi i32 [ %dec, %if.end36.if.end39_crit_edge ], [ %i.1.i, %land.lhs.true.if.end39_crit_edge ], [ %i.1.i, %if.end22.if.end39_crit_edge ]
  %34 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vm_end.i, align 4
  %36 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vma, align 4
  %sub.i160 = sub i32 %35, %37
  %shr.i161 = lshr i32 %sub.i160, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %pages.1180, i32 %shr.i161)
  %cmp41 = icmp eq i32 %pages.1180, %shr.i161
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %shr44 = lshr i32 %add17, 12
  %mul = shl i32 %pages.1180, 12
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %38 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vm_page_prot, align 4
  %call45 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %37, i32 noundef %shr44, i32 noundef %mul, i32 noundef %39) #11
  br label %if.end62

if.else:                                          ; preds = %if.end39
  %40 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vm_flags, align 4
  %or = or i32 %41, 268435456
  store i32 %or, ptr %vm_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages.1180)
  %cmp47188.not = icmp eq i32 %pages.1180, 0
  br i1 %cmp47188.not, label %if.else.do.body65_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.do.body65_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body65

for.body:                                         ; preds = %if.end61.for.body_crit_edge, %if.else.for.body_crit_edge
  %i.0189 = phi i32 [ %inc, %if.end61.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %mul52 = shl i32 %i.0189, 12
  %add53 = add i32 %mul52, %add17
  %shr.i162 = lshr i32 %add53, 12
  %conv.i.i = zext i32 %shr.i162 to i64
  %or.i.i = or i64 %conv.i.i, 2305843009213693952
  %42 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vma, align 4
  %add55 = add i32 %43, %mul52
  %.fca.0.insert = insertvalue [1 x i64] poison, i64 %or.i.i, 0
  %call56 = tail call i32 @vmf_insert_mixed(ptr noundef %vma, i32 noundef %add55, [1 x i64] %.fca.0.insert) #11
  %and57 = and i32 %call56, 2163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %for.body.if.end61_crit_edge, label %if.then59

for.body.if.end61_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then59:                                        ; preds = %for.body
  %and.i = and i32 %call56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then59
  %and1.i = and i32 %call56, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %and7.i = and i32 %call56, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %..i = select i1 %tobool8.not.i, i32 0, i32 -14
  br label %if.end61

if.end61:                                         ; preds = %if.end6.i, %for.body.if.end61_crit_edge
  %ret.1 = phi i32 [ 0, %for.body.if.end61_crit_edge ], [ %..i, %if.end6.i ]
  %inc = add nuw i32 %i.0189, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %pages.1180)
  %cmp47 = icmp ult i32 %inc, %pages.1180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool49.not = icmp eq i32 %ret.1, 0
  %or.cond = select i1 %cmp47, i1 %tobool49.not, i1 false
  br i1 %or.cond, label %if.end61.for.body_crit_edge, label %if.end61.if.end62_crit_edge

if.end61.if.end62_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.end61.for.body_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end62:                                         ; preds = %if.end61.if.end62_crit_edge, %if.then43
  %ret.2 = phi i32 [ %call45, %if.then43 ], [ %ret.1, %if.end61.if.end62_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool63.not = icmp eq i32 %ret.2, 0
  br i1 %tobool63.not, label %if.end62.do.body65_crit_edge, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end62.do.body65_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body65

do.body65:                                        ; preds = %if.end62.do.body65_crit_edge, %if.else.do.body65_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cramfs_physmem_mmap.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cramfs_physmem_mmap, %if.then77)) #11
          to label %cleanup [label %if.then77], !srcloc !129

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vm_end.i, align 4
  %46 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vma, align 4
  %sub.i165 = sub i32 %45, %47
  %shr.i166 = lshr i32 %sub.i165, 12
  %vm_page_prot80 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %48 = ptrtoint ptr %vm_page_prot80 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vm_page_prot80, align 4
  %conv81 = zext i32 %49 to i64
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cramfs_physmem_mmap.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.37, ptr noundef %file, i32 noundef %7, i32 noundef %add17, i32 noundef %pages.1180, i32 noundef %shr.i166, i32 noundef %47, i64 noundef %conv81) #11
  br label %cleanup

do.body86:                                        ; preds = %if.end36.do.body86_crit_edge, %if.end16.do.body86_crit_edge, %cramfs_get_block_range.exit.do.body86_crit_edge, %do.end.i.do.body86_crit_edge, %if.end5.do.body86_crit_edge, %if.end.do.body86_crit_edge
  %bailout_reason.0 = phi ptr [ @.str.28, %if.end.do.body86_crit_edge ], [ @.str.29, %if.end5.do.body86_crit_edge ], [ @.str.31, %if.end16.do.body86_crit_edge ], [ @.str.30, %cramfs_get_block_range.exit.do.body86_crit_edge ], [ @.str.35, %if.end36.do.body86_crit_edge ], [ @.str.30, %do.end.i.do.body86_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cramfs_physmem_mmap.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cramfs_physmem_mmap, %if.then98)) #11
          to label %cleanup [label %if.then98], !srcloc !129

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cramfs_physmem_mmap.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.39, ptr noundef %file, i32 noundef %7, ptr noundef nonnull %bailout_reason.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %do.body86, %if.then77, %do.body65, %if.end62.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then59.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.then77 ], [ %ret.2, %if.end62.cleanup_crit_edge ], [ 0, %if.then98 ], [ 0, %do.body65 ], [ 0, %do.body86 ], [ -12, %if.then59.cleanup_crit_edge ], [ -14, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_readonly_mmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cramfs_last_page_is_shared(ptr nocapture noundef readonly %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %0 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size, align 8
  %conv = trunc i64 %1 to i32
  %and = and i32 %conv, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = lshr i64 %1, 12
  %conv2 = trunc i64 %6 to i32
  %linear_virt_addr = getelementptr inbounds %struct.cramfs_sb_info, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %linear_virt_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %linear_virt_addr, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_ino, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 %10
  %arrayidx = getelementptr i32, ptr %add.ptr, i32 %conv2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %12, 2
  %add.ptr5 = getelementptr i8, ptr %8, i32 %shl
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 %and
  %sub = sub nuw nsw i32 4096, %and
  %call7 = tail call ptr @memchr_inv(ptr noundef %add.ptr6, i32 noundef 0, i32 noundef %sub) #11
  %tobool8 = icmp ne ptr %call7, null
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool8, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmf_insert_mixed(ptr noundef, i32 noundef, [1 x i64]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cramfs_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @read_mutex, i32 noundef 0) #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %0 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp88 = icmp sgt i64 %1, 0
  br i1 %cmp88, label %while.body.lr.ph, label %entry.cleanup55_crit_edge

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup55

while.body.lr.ph:                                 ; preds = %entry
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %flags1 = getelementptr inbounds %struct.cramfs_sb_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1, align 4
  %and = and i32 %7, 2
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %name6 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %d_name14 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %offset.089 = phi i32 [ 0, %while.body.lr.ph ], [ %add13, %cleanup.while.body_crit_edge ]
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %add = add i32 %9, %offset.089
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i, align 16
  %linear_virt_addr.i = getelementptr inbounds %struct.cramfs_sb_info, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %linear_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %linear_virt_addr.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  %size.i.i = getelementptr inbounds %struct.cramfs_sb_info, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %17)
  %cmp.i.i = icmp ult i32 %17, 264
  %sub.i.i = add i32 %17, -264
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %add)
  %cmp2.i.i = icmp ult i32 %sub.i.i, %add
  %or.cond.i.i = or i1 %cmp.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.then3.i.i, label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %18 = load ptr, ptr @empty_zero_page, align 4
  %call4.i.i = tail call ptr @page_address(ptr noundef %18) #11
  br label %cramfs_read.exit

if.end5.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %add
  br label %cramfs_read.exit

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call fastcc ptr @cramfs_blkdev_read(ptr noundef %11, i32 noundef %add, i32 noundef 264) #11
  br label %cramfs_read.exit

cramfs_read.exit:                                 ; preds = %if.else.i, %if.end5.i.i, %if.then3.i.i
  %retval.0.i = phi ptr [ %call2.i, %if.else.i ], [ %call4.i.i, %if.then3.i.i ], [ %add.ptr.i.i, %if.end5.i.i ]
  %add.ptr = getelementptr %struct.cramfs_inode, ptr %retval.0.i, i32 1
  br i1 %tobool.not, label %cramfs_read.exit.if.end_crit_edge, label %land.lhs.true

cramfs_read.exit.if.end_crit_edge:                ; preds = %cramfs_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %cramfs_read.exit
  %19 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name6, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp10 = icmp ult i8 %22, %24
  br i1 %cmp10, label %land.lhs.true.cleanup55_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup55

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %cramfs_read.exit.if.end_crit_edge
  %25 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 12)
  %bf.load = load i96, ptr %retval.0.i, align 4
  %26 = trunc i96 %bf.load to i32
  %27 = lshr i32 %26, 24
  %shl = and i32 %27, 252
  %add12 = add i32 %offset.089, 12
  %add13 = add i32 %add12, %shl
  %28 = ptrtoint ptr %d_name14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %d_name14, align 8
  %add15 = add i32 %29, 3
  %and16 = and i32 %add15, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and16, i32 %shl)
  %cmp17.not = icmp eq i32 %and16, %shl
  br i1 %cmp17.not, label %if.end.for.cond_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.end24.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %namelen.0 = phi i32 [ %sub, %if.end24.for.cond_crit_edge ], [ %shl, %if.end.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %namelen.0)
  %tobool21.not = icmp eq i32 %namelen.0, 0
  br i1 %tobool21.not, label %for.cond.cleanup55_crit_edge, label %if.end24

for.cond.cleanup55_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup55

if.end24:                                         ; preds = %for.cond
  %sub = add nsw i32 %namelen.0, -1
  %arrayidx25 = getelementptr i8, ptr %add.ptr, i32 %sub
  %30 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx25, align 1
  %tobool26.not = icmp eq i8 %31, 0
  br i1 %tobool26.not, label %if.end24.for.cond_crit_edge, label %for.end

if.end24.for.cond_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp4(i32 %namelen.0, i32 %29)
  %cmp31.not = icmp eq i32 %namelen.0, %29
  br i1 %cmp31.not, label %if.end34, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %for.end
  %32 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name6, align 8
  %call37 = tail call i32 @memcmp(ptr noundef %33, ptr noundef %add.ptr, i32 noundef %29) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp sgt i32 %call37, 0
  br i1 %cmp38, label %if.end34.cleanup_crit_edge, label %if.end41

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool42.not = icmp eq i32 %call37, 0
  br i1 %tobool42.not, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb, align 4
  %call45 = tail call fastcc ptr @get_cramfs_inode(ptr noundef %35, ptr noundef %retval.0.i, i32 noundef %add)
  br label %cleanup55

if.end46:                                         ; preds = %if.end41
  br i1 %tobool.not, label %if.end46.cleanup_crit_edge, label %if.end46.cleanup55_crit_edge

if.end46.cleanup55_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup55

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end46.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %conv = zext i32 %add13 to i64
  %36 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i_size, align 8
  %cmp = icmp sgt i64 %37, %conv
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup55_crit_edge

cleanup.cleanup55_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup55

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup55:                                        ; preds = %cleanup.cleanup55_crit_edge, %if.end46.cleanup55_crit_edge, %if.then43, %for.cond.cleanup55_crit_edge, %land.lhs.true.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  %inode.2 = phi ptr [ %call45, %if.then43 ], [ null, %entry.cleanup55_crit_edge ], [ inttoptr (i32 -5 to ptr), %for.cond.cleanup55_crit_edge ], [ null, %if.end46.cleanup55_crit_edge ], [ null, %land.lhs.true.cleanup55_crit_edge ], [ null, %cleanup.cleanup55_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @read_mutex) #11
  %call54 = tail call ptr @d_splice_alias(ptr noundef %inode.2, ptr noundef %dentry) #11
  ret ptr %call54
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cramfs_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp.not = icmp slt i64 %5, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup40_crit_edge

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

if.end:                                           ; preds = %entry
  %conv = trunc i64 %5 to i32
  %and = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup40_crit_edge

if.end.cleanup40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 252) #14
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %if.end3.cleanup40_crit_edge, label %while.cond.preheader

if.end3.cleanup40_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

while.cond.preheader:                             ; preds = %if.end3
  %conv877 = and i64 %5, 4294967295
  %9 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv877)
  %cmp1078 = icmp sgt i64 %10, %conv877
  br i1 %cmp1078, label %while.body.lr.ph, label %while.cond.preheader.cleanup40.sink.split_crit_edge

while.cond.preheader.cleanup40.sink.split_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40.sink.split

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %offset.079 = phi i32 [ %conv, %while.body.lr.ph ], [ %add21, %cleanup.while.body_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @read_mutex, i32 noundef 0) #11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  %add = add i32 %12, %offset.079
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %linear_virt_addr.i = getelementptr inbounds %struct.cramfs_sb_info, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %linear_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %linear_virt_addr.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  %size.i.i = getelementptr inbounds %struct.cramfs_sb_info, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %18)
  %cmp.i.i = icmp ult i32 %18, 264
  %sub.i.i = add i32 %18, -264
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %add)
  %cmp2.i.i = icmp ult i32 %sub.i.i, %add
  %or.cond.i.i = or i1 %cmp.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.then3.i.i, label %if.end5.i.i

if.then3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %19 = load ptr, ptr @empty_zero_page, align 4
  %call4.i.i = tail call ptr @page_address(ptr noundef %19) #11
  br label %cramfs_read.exit

if.end5.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %add
  br label %cramfs_read.exit

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call fastcc ptr @cramfs_blkdev_read(ptr noundef %3, i32 noundef %add, i32 noundef 264) #11
  br label %cramfs_read.exit

cramfs_read.exit:                                 ; preds = %if.else.i, %if.end5.i.i, %if.then3.i.i
  %retval.0.i = phi ptr [ %call2.i, %if.else.i ], [ %call4.i.i, %if.then3.i.i ], [ %add.ptr.i.i, %if.end5.i.i ]
  %add.ptr = getelementptr %struct.cramfs_inode, ptr %retval.0.i, i32 1
  %20 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 12)
  %bf.load = load i96, ptr %retval.0.i, align 4
  %21 = trunc i96 %bf.load to i32
  %22 = lshr i32 %21, 24
  %shl = and i32 %22, 252
  %23 = call ptr @memcpy(ptr %call7.i, ptr %add.ptr, i32 %shl)
  %24 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino, align 8
  %add14 = add i32 %25, %offset.079
  %bf.load.i = load i96, ptr %retval.0.i, align 4
  %bf.cast20.i = and i96 %bf.load.i, 67108863
  %tobool.not.i68 = icmp eq i96 %bf.cast20.i, 0
  br i1 %tobool.not.i68, label %if.then.i69, label %if.end.i

if.then.i69:                                      ; preds = %cramfs_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %add14, 1
  br label %cramino.exit

if.end.i:                                         ; preds = %cramfs_read.exit
  %26 = and i96 %bf.load.i, 18446742974197923840
  %tobool4.not.i = icmp eq i96 %26, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add6.i = add i32 %add14, 1
  br label %cramino.exit

if.end7.i:                                        ; preds = %if.end.i
  %bf.lshr9.i = lshr i96 %bf.load.i, 80
  %bf.cast10.i = trunc i96 %bf.lshr9.i to i16
  %and.i = and i16 %bf.cast10.i, -4096
  %27 = zext i16 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %and.i, label %sw.epilog.i [
    i16 -32768, label %if.end7.i.sw.bb.i_crit_edge
    i16 16384, label %if.end7.i.sw.bb.i_crit_edge87
    i16 -24576, label %if.end7.i.sw.bb.i_crit_edge88
  ]

if.end7.i.sw.bb.i_crit_edge88:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge87:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end7.i.sw.bb.i_crit_edge, %if.end7.i.sw.bb.i_crit_edge87, %if.end7.i.sw.bb.i_crit_edge88
  %28 = trunc i96 %bf.load.i to i32
  %bf.cast13.i = shl i32 %28, 2
  %shl.i = and i32 %bf.cast13.i, 268435452
  br label %cramino.exit

sw.epilog.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %add14.i = add i32 %add14, 1
  br label %cramino.exit

cramino.exit:                                     ; preds = %sw.epilog.i, %sw.bb.i, %if.then5.i, %if.then.i69
  %retval.0.i70 = phi i32 [ %add14.i, %sw.epilog.i ], [ %shl.i, %sw.bb.i ], [ %add6.i, %if.then5.i ], [ %add.i, %if.then.i69 ]
  tail call void @mutex_unlock(ptr noundef nonnull @read_mutex) #11
  %add20 = add i32 %offset.079, 12
  %add21 = add i32 %add20, %shl
  br label %for.cond

for.cond:                                         ; preds = %if.end24.for.cond_crit_edge, %cramino.exit
  %namelen.0 = phi i32 [ %shl, %cramino.exit ], [ %sub, %if.end24.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %namelen.0)
  %tobool22.not = icmp eq i32 %namelen.0, 0
  br i1 %tobool22.not, label %for.cond.cleanup40.sink.split_crit_edge, label %if.end24

for.cond.cleanup40.sink.split_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40.sink.split

if.end24:                                         ; preds = %for.cond
  %sub = add nsw i32 %namelen.0, -1
  %arrayidx = getelementptr i8, ptr %call7.i, i32 %sub
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %tobool25.not = icmp eq i8 %30, 0
  br i1 %tobool25.not, label %if.end24.for.cond_crit_edge, label %for.end

if.end24.for.cond_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %if.end24
  %conv28 = zext i32 %retval.0.i70 to i64
  %sum.shift = lshr i96 %bf.load.i, 92
  %31 = trunc i96 %sum.shift to i32
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 8
  %34 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %pos, align 8
  %call.i = tail call i32 %33(ptr noundef %ctx, ptr noundef nonnull %call7.i, i32 noundef %namelen.0, i64 noundef %35, i64 noundef %conv28, i32 noundef %31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %cleanup, label %for.end.cleanup40.sink.split_crit_edge

for.end.cleanup40.sink.split_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40.sink.split

cleanup:                                          ; preds = %for.end
  %conv33 = zext i32 %add21 to i64
  %36 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv33, ptr %pos, align 8
  %37 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_size, align 8
  %cmp10 = icmp sgt i64 %38, %conv33
  br i1 %cmp10, label %cleanup.while.body_crit_edge, label %cleanup.cleanup40.sink.split_crit_edge

cleanup.cleanup40.sink.split_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40.sink.split

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup40.sink.split:                             ; preds = %cleanup.cleanup40.sink.split_crit_edge, %for.end.cleanup40.sink.split_crit_edge, %for.cond.cleanup40.sink.split_crit_edge, %while.cond.preheader.cleanup40.sink.split_crit_edge
  %retval.2.ph = phi i32 [ 0, %while.cond.preheader.cleanup40.sink.split_crit_edge ], [ -5, %for.cond.cleanup40.sink.split_crit_edge ], [ 0, %cleanup.cleanup40.sink.split_crit_edge ], [ 0, %for.end.cleanup40.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup40

cleanup40:                                        ; preds = %cleanup40.sink.split, %if.end3.cleanup40_crit_edge, %if.end.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup40_crit_edge ], [ -22, %if.end.cleanup40_crit_edge ], [ -12, %if.end3.cleanup40_crit_edge ], [ %retval.2.ph, %cleanup40.sink.split ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_mtd_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_block_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cramfs_uncompress_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__UNIQUE_ID_alias275, !1, !"__UNIQUE_ID_alias275", i1 false, i1 false}
!1 = !{!"../fs/cramfs/inode.c", i32 987, i32 1}
!2 = !{ptr @__initcall__kmod_cramfs__276_1008_init_cramfs_fs6, !3, !"__initcall__kmod_cramfs__276_1008_init_cramfs_fs6", i1 false, i1 false}
!3 = !{!"../fs/cramfs/inode.c", i32 1008, i32 1}
!4 = !{ptr @__exitcall_exit_cramfs_fs, !5, !"__exitcall_exit_cramfs_fs", i1 false, i1 false}
!5 = !{!"../fs/cramfs/inode.c", i32 1009, i32 1}
!6 = !{ptr @__UNIQUE_ID_file277, !7, !"__UNIQUE_ID_file277", i1 false, i1 false}
!7 = !{!"../fs/cramfs/inode.c", i32 1010, i32 1}
!8 = !{ptr @__UNIQUE_ID_license278, !7, !"__UNIQUE_ID_license278", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/cramfs/inode.c", i32 982, i32 11}
!11 = !{ptr @cramfs_fs_type, !12, !"cramfs_fs_type", i1 false, i1 false}
!12 = !{!"../fs/cramfs/inode.c", i32 980, i32 32}
!13 = !{ptr @cramfs_context_ops, !14, !"cramfs_context_ops", i1 false, i1 false}
!14 = !{!"../fs/cramfs/inode.c", i32 966, i32 43}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/cramfs/inode.c", i32 648, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cramfs_mtd_fill_super._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @cramfs_mtd_fill_super._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/cramfs/inode.c", i32 653, i32 2}
!23 = !{ptr @cramfs_mtd_fill_super._entry.4, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cramfs_mtd_fill_super._entry_ptr.6, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/cramfs/inode.c", i32 660, i32 2}
!27 = !{ptr @cramfs_mtd_fill_super._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cramfs_mtd_fill_super._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @cramfs_mtd_fill_super._entry.10, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../fs/cramfs/inode.c", i32 666, i32 3}
!31 = !{ptr @cramfs_mtd_fill_super._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/cramfs/inode.c", i32 535, i32 5}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/cramfs/inode.c", i32 549, i32 5}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/cramfs/inode.c", i32 556, i32 3}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/cramfs/inode.c", i32 562, i32 3}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/cramfs/inode.c", i32 581, i32 3}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/cramfs/inode.c", i32 586, i32 3}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/cramfs/inode.c", i32 61, i32 8}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @read_mutex, !45, !"read_mutex", i1 false, i1 false}
!48 = !{ptr @buffer_dev, !49, !"buffer_dev", i1 false, i1 false}
!49 = !{!"../fs/cramfs/inode.c", i32 176, i32 28}
!50 = !{ptr @buffer_blocknr, !51, !"buffer_blocknr", i1 false, i1 false}
!51 = !{!"../fs/cramfs/inode.c", i32 175, i32 17}
!52 = !{ptr @read_buffers, !53, !"read_buffers", i1 false, i1 false}
!53 = !{!"../fs/cramfs/inode.c", i32 174, i32 22}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/mm.h", i32 717, i32 2}
!60 = !{ptr @next_buffer, !61, !"next_buffer", i1 false, i1 false}
!61 = !{!"../fs/cramfs/inode.c", i32 177, i32 12}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!64 = !{ptr @cramfs_ops, !65, !"cramfs_ops", i1 false, i1 false}
!65 = !{!"../fs/cramfs/inode.c", i32 948, i32 38}
!66 = distinct !{null, !67, !"zerotime", i1 false, i1 false}
!67 = !{!"../fs/cramfs/inode.c", i32 94, i32 27}
!68 = !{ptr @cramfs_aops, !69, !"cramfs_aops", i1 false, i1 false}
!69 = !{!"../fs/cramfs/inode.c", i32 927, i32 46}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/cramfs/inode.c", i32 894, i32 4}
!72 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cramfs_readpage._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @cramfs_readpage._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/page-flags.h", i32 678, i32 1}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cramfs_physmem_fops, !79, !"cramfs_physmem_fops", i1 false, i1 false}
!79 = !{!"../fs/cramfs/inode.c", i32 483, i32 37}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/cramfs/inode.c", i32 374, i32 19}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/cramfs/inode.c", i32 379, i32 19}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/cramfs/inode.c", i32 385, i32 19}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/cramfs/inode.c", i32 389, i32 19}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/cramfs/inode.c", i32 395, i32 3}
!90 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @cramfs_physmem_mmap.__UNIQUE_ID_ddebug272, !89, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!92 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/cramfs/inode.c", i32 400, i32 20}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/cramfs/inode.c", i32 432, i32 3}
!97 = !{ptr @cramfs_physmem_mmap.__UNIQUE_ID_ddebug273, !96, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!98 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/cramfs/inode.c", i32 439, i32 2}
!101 = !{ptr @cramfs_physmem_mmap.__UNIQUE_ID_ddebug274, !100, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!102 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/cramfs/inode.c", i32 317, i32 4}
!105 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @cramfs_get_block_range.__UNIQUE_ID_ddebug269, !104, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!107 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @cramfs_dir_inode_operations, !109, !"cramfs_dir_inode_operations", i1 false, i1 false}
!109 = !{!"../fs/cramfs/inode.c", i32 944, i32 38}
!110 = !{ptr @cramfs_directory_operations, !111, !"cramfs_directory_operations", i1 false, i1 false}
!111 = !{!"../fs/cramfs/inode.c", i32 938, i32 37}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2150186760, i64 2150187251, i64 2150186797, i64 2150186853, i64 2150186887, i64 2150186911, i64 2150186952, i64 2150186973, i64 2150187001, i64 2150187035}
!123 = !{i64 2150940713}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{i64 2153384893, i64 2153385376, i64 2153384930, i64 2153384986, i64 2153385020, i64 2153385044, i64 2153385085, i64 2153385106, i64 2153385134, i64 2153385168}
!126 = !{i64 2148453281}
!127 = !{i64 2148367990, i64 2148368022, i64 2148368051, i64 2148368085, i64 2148368116, i64 2148368139}
!128 = !{i64 2148453510}
!129 = !{i64 2148978182, i64 2148978187, i64 2148978200, i64 2148978244, i64 2148978278, i64 2148978299}
!130 = !{!"branch_weights", i32 4001, i32 4000000}
!131 = !{i64 2150941784}
!132 = !{i64 2150949697, i64 2150949870, i64 2150949885, i64 2150949937, i64 2150949996, i64 2150950020, i64 2150950061, i64 2150950082, i64 2150950110, i64 2150950142}
!133 = !{i64 2150950572, i64 2150950745, i64 2150950760, i64 2150950812, i64 2150950871, i64 2150950895, i64 2150950936, i64 2150950957, i64 2150950985, i64 2150951017}
!134 = !{i64 2150252411, i64 2150252584, i64 2150252599, i64 2150252651, i64 2150252710, i64 2150252734, i64 2150252775, i64 2150252796, i64 2150252824, i64 2150252856}
!135 = !{i64 2150253286, i64 2150253459, i64 2150253474, i64 2150253526, i64 2150253585, i64 2150253609, i64 2150253650, i64 2150253671, i64 2150253699, i64 2150253731}
