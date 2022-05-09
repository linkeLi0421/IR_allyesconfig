; ModuleID = '/llk/IR_all_yes/fs/binfmt_misc.c_pt.bc'
source_filename = "../fs/binfmt_misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.linux_binfmt = type { %struct.list_head, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.Node = type { %struct.list_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.96, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.97, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.98, ptr, %struct.address_space, %struct.list_head, %union.anon.99, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.96 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.97 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.98 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.99 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_alias296 = internal constant [33 x i8] c"binfmt_misc.alias=fs-binfmt_misc\00", section ".modinfo", align 1
@misc_format = internal global { %struct.linux_binfmt, [36 x i8] } { %struct.linux_binfmt { %struct.list_head zeroinitializer, ptr null, ptr @load_misc_binary, ptr null, ptr null, i32 0 }, [36 x i8] zeroinitializer }, align 32
@bm_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.1, i32 0, ptr @bm_init_fs_context, ptr null, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_binfmt_misc__297_834_init_misc_binfmt1 = internal global ptr @init_misc_binfmt, section ".initcall1.init", align 4
@__exitcall_exit_misc_binfmt = internal global ptr @exit_misc_binfmt, section ".exitcall.exit", align 4
@__UNIQUE_ID_file298 = internal constant [32 x i8] c"binfmt_misc.file=fs/binfmt_misc\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [24 x i8] c"binfmt_misc.license=GPL\00", section ".modinfo", align 1
@enabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@entries_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"entries_lock\00", [19 x i8] zeroinitializer }, align 32
@entries = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @entries, ptr @entries }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"binfmt_misc\00", [20 x i8] zeroinitializer }, align 32
@bm_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr null, ptr null, ptr null, ptr null, ptr @bm_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@bm_fill_super.bm_files = internal constant { [5 x %struct.tree_descr], [36 x i8] } { [5 x %struct.tree_descr] [%struct.tree_descr zeroinitializer, %struct.tree_descr zeroinitializer, %struct.tree_descr { ptr @.str.2, ptr @bm_status_operations, i32 420 }, %struct.tree_descr { ptr @.str.3, ptr @bm_register_operations, i32 128 }, %struct.tree_descr { ptr @.str.4, ptr null, i32 0 }], [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@bm_status_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @bm_status_read, ptr @bm_status_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"register\00", [23 x i8] zeroinitializer }, align 32
@bm_register_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @bm_register_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@s_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bm_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabled\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabled\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@bm_mnt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@entry_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bm_register_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015binfmt_misc: register: failed to install interpreter file %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bm_register_write\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/binfmt_misc.c\00", [47 x i8] zeroinitializer }, align 32
@bm_register_write._entry_ptr = internal global ptr @bm_register_write._entry, section ".printk_index", align 4
@bm_entry_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @bm_entry_read, ptr @bm_entry_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@create_entry.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.12, ptr @.str.14, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"create_entry\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"register: received %zu bytes\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"binfmt_misc: register: received %zu bytes\0A\00", [53 x i8] zeroinitializer }, align 32
@create_entry.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.12, ptr @.str.16, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register: delim: %#x {%c}\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"binfmt_misc: register: delim: %#x {%c}\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@create_entry.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.12, ptr @.str.20, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"register: name: {%s}\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"binfmt_misc: register: name: {%s}\0A\00", [61 x i8] zeroinitializer }, align 32
@create_entry.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.12, ptr @.str.22, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"register: type: E (extension)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"binfmt_misc: register: type: E (extension)\0A\00", [52 x i8] zeroinitializer }, align 32
@create_entry.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.12, ptr @.str.24, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register: type: M (magic)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"binfmt_misc: register: type: M (magic)\0A\00", [56 x i8] zeroinitializer }, align 32
@create_entry.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.12, ptr @.str.26, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"register: offset: %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"binfmt_misc: register: offset: %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@create_entry.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.12, ptr @.str.28, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"register:  mask[raw]: none\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"binfmt_misc: register:  mask[raw]: none\0A\00", [55 x i8] zeroinitializer }, align 32
@create_entry.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.12, ptr @.str.30, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"register: magic/mask length: %i\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"binfmt_misc: register: magic/mask length: %i\0A\00", [50 x i8] zeroinitializer }, align 32
@create_entry.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.12, ptr @.str.32, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register: extension: {%s}\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"binfmt_misc: register: extension: {%s}\0A\00", [56 x i8] zeroinitializer }, align 32
@create_entry.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.12, ptr @.str.34, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"register: interpreter: {%s}\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"binfmt_misc: register: interpreter: {%s}\0A\00", [54 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@check_special_flags.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.12, ptr @.str.37, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"check_special_flags\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"register: flag: P (preserve argv0)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"binfmt_misc: register: flag: P (preserve argv0)\0A\00", [47 x i8] zeroinitializer }, align 32
@check_special_flags.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.12, ptr @.str.39, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"register: flag: O (open binary)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"binfmt_misc: register: flag: O (open binary)\0A\00", [50 x i8] zeroinitializer }, align 32
@check_special_flags.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.12, ptr @.str.41, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"register: flag: C (preserve creds)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"binfmt_misc: register: flag: C (preserve creds)\0A\00", [47 x i8] zeroinitializer }, align 32
@check_special_flags.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.12, ptr @.str.43, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"register: flag: F: open interpreter file now\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"binfmt_misc: register: flag: F: open interpreter file now\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s\0Ainterpreter %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"extension .%s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"offset %i\0Amagic \00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0Amask \00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 69, i64 77]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 8, i64 67, i64 70, i64 79, i64 80]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"misc_format\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 807, i32 28 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"bm_fs_type\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 812, i32 32 }
@___asan_gen_.62 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"entries_lock\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 65, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant [8 x i8] c"entries\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 43, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 814, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"bm_context_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 797, i32 43 }
@___asan_gen_.78 = private unnamed_addr constant [9 x i8] c"bm_files\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 780, i32 33 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 781, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant [21 x i8] c"bm_status_operations\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 764, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 782, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"bm_register_operations\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 717, i32 37 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 783, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"s_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 772, i32 38 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 727, i32 22 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 727, i32 36 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 230, i32 6 }
@___asan_gen_.109 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 214, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 156, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"bm_mnt\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 67, i32 25 }
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"entry_count\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 68, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 662, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c"bm_entry_operations\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 636, i32 37 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 281, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 302, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 314, i32 23 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 315, i32 23 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 319, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 324, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 328, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 354, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 375, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 394, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 436, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 453, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 239, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 244, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 249, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 257, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 505, i32 23 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 508, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 515, i32 20 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 530, i32 15 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 532, i32 21 }
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private constant [20 x i8] c"../fs/binfmt_misc.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 535, i32 22 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_exit_misc_binfmt, ptr @__initcall__kmod_binfmt_misc__297_834_init_misc_binfmt1, ptr @bm_register_write._entry, ptr @bm_register_write._entry_ptr, ptr @exit_misc_binfmt, ptr @misc_format, ptr @bm_fs_type, ptr @enabled, ptr @entries_lock, ptr @.str, ptr @entries, ptr @.str.1, ptr @bm_context_ops, ptr @bm_fill_super.bm_files, ptr @.str.2, ptr @bm_status_operations, ptr @.str.3, ptr @bm_register_operations, ptr @.str.4, ptr @s_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @bm_mnt, ptr @entry_count, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @bm_entry_operations, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misc_format to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @entries_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @entries to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_fill_super.bm_files to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_status_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_register_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_mnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @entry_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_register_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm_entry_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_misc_binfmt() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_binfmt(ptr noundef nonnull @misc_format) #13
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @bm_fs_type) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_binfmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_misc_binfmt() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_filesystem(ptr noundef nonnull @bm_fs_type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__register_binfmt(ptr noundef nonnull @misc_format, i32 noundef 1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @load_misc_binary(ptr noundef %bprm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @enabled, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @entries_lock) #13
  %l.098.i = load ptr, ptr @entries, align 4
  %cmp.i.not99.i = icmp eq ptr %l.098.i, @entries
  br i1 %cmp.i.not99.i, label %if.end.if.then7.critedge_crit_edge, label %for.body.lr.ph.i

if.end.if.then7.critedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.critedge

for.body.lr.ph.i:                                 ; preds = %if.end
  %interp.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 15
  %0 = ptrtoint ptr %interp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interp.i, align 4
  %call.i = tail call ptr @strrchr(ptr noundef %1, i32 noundef 46) #13
  %buf.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22
  %tobool8.not.i = icmp eq ptr %call.i, null
  %add.ptr9.i = getelementptr i8, ptr %call.i, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc53.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %l.0100.i = phi ptr [ %l.098.i, %for.body.lr.ph.i ], [ %l.0.i, %for.inc53.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.Node, ptr %l.0100.i, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool3.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool3.not.i, label %for.body.i.for.inc53.i_crit_edge, label %if.end.i

for.body.i.for.inc53.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc53.i

if.end.i:                                         ; preds = %for.body.i
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not.i = icmp eq i32 %6, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end14.i

if.then7.i:                                       ; preds = %if.end.i
  br i1 %tobool8.not.i, label %if.then7.i.for.inc53.i_crit_edge, label %land.lhs.true.i

if.then7.i.for.inc53.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc53.i

land.lhs.true.i:                                  ; preds = %if.then7.i
  %magic.i = getelementptr inbounds %struct.Node, ptr %l.0100.i, i32 0, i32 4
  %7 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %magic.i, align 4
  %call10.i = tail call i32 @strcmp(ptr noundef %8, ptr noundef %add.ptr9.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.check_file.exit_crit_edge, label %land.lhs.true.i.for.inc53.i_crit_edge

land.lhs.true.i.for.inc53.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc53.i

land.lhs.true.i.check_file.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_file.exit

if.end14.i:                                       ; preds = %if.end.i
  %offset.i = getelementptr inbounds %struct.Node, ptr %l.0100.i, i32 0, i32 2
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %buf.i, i32 %10
  %mask.i = getelementptr inbounds %struct.Node, ptr %l.0100.i, i32 0, i32 5
  %11 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mask.i, align 4
  %tobool16.not.i = icmp eq ptr %12, null
  %size29.i = getelementptr inbounds %struct.Node, ptr %l.0100.i, i32 0, i32 3
  %13 = ptrtoint ptr %size29.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3093.i = icmp sgt i32 %14, 0
  br i1 %tobool16.not.i, label %for.cond28.preheader.i, label %for.cond18.preheader.i

for.cond18.preheader.i:                           ; preds = %if.end14.i
  br i1 %cmp3093.i, label %for.body19.lr.ph.i, label %for.cond18.preheader.i.if.end45.i_crit_edge

for.cond18.preheader.i.if.end45.i_crit_edge:      ; preds = %for.cond18.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

for.body19.lr.ph.i:                               ; preds = %for.cond18.preheader.i
  %magic20.i = getelementptr inbounds %struct.Node, ptr %l.0100.i, i32 0, i32 4
  %15 = ptrtoint ptr %magic20.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %magic20.i, align 4
  br label %for.body19.i

for.cond28.preheader.i:                           ; preds = %if.end14.i
  br i1 %cmp3093.i, label %for.body32.lr.ph.i, label %for.cond28.preheader.i.if.end45.i_crit_edge

for.cond28.preheader.i.if.end45.i_crit_edge:      ; preds = %for.cond28.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

for.body32.lr.ph.i:                               ; preds = %for.cond28.preheader.i
  %magic35.i = getelementptr inbounds %struct.Node, ptr %l.0100.i, i32 0, i32 4
  %17 = ptrtoint ptr %magic35.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %magic35.i, align 4
  br label %for.body32.i

for.body19.i:                                     ; preds = %for.inc.i.for.body19.i_crit_edge, %for.body19.lr.ph.i
  %j.091.i = phi i32 [ 0, %for.body19.lr.ph.i ], [ %inc.i, %for.inc.i.for.body19.i_crit_edge ]
  %s.090.i = phi ptr [ %add.ptr15.i, %for.body19.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body19.i_crit_edge ]
  %19 = ptrtoint ptr %s.090.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %s.090.i, align 1
  %arrayidx.i = getelementptr i8, ptr %16, i32 %j.091.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %xor82.i = xor i8 %22, %20
  %arrayidx23.i = getelementptr i8, ptr %12, i32 %j.091.i
  %23 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23.i, align 1
  %and83.i = and i8 %xor82.i, %24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and83.i)
  %tobool25.not.i = icmp eq i8 %and83.i, 0
  br i1 %tobool25.not.i, label %for.inc.i, label %for.body19.i.if.end45.i_crit_edge

for.body19.i.if.end45.i_crit_edge:                ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

for.inc.i:                                        ; preds = %for.body19.i
  %incdec.ptr.i = getelementptr i8, ptr %s.090.i, i32 1
  %inc.i = add nuw nsw i32 %j.091.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.inc.i.check_file.exit_crit_edge, label %for.inc.i.for.body19.i_crit_edge

for.inc.i.for.body19.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body19.i

for.inc.i.check_file.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_file.exit

for.body32.i:                                     ; preds = %for.inc42.i.for.body32.i_crit_edge, %for.body32.lr.ph.i
  %j.195.i = phi i32 [ 0, %for.body32.lr.ph.i ], [ %inc43.i, %for.inc42.i.for.body32.i_crit_edge ]
  %s.194.i = phi ptr [ %add.ptr15.i, %for.body32.lr.ph.i ], [ %incdec.ptr33.i, %for.inc42.i.for.body32.i_crit_edge ]
  %25 = ptrtoint ptr %s.194.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %s.194.i, align 1
  %arrayidx36.i = getelementptr i8, ptr %18, i32 %j.195.i
  %27 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %tobool39.not.i = icmp eq i8 %26, %28
  br i1 %tobool39.not.i, label %for.inc42.i, label %for.body32.i.if.end45.i_crit_edge

for.body32.i.if.end45.i_crit_edge:                ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45.i

for.inc42.i:                                      ; preds = %for.body32.i
  %incdec.ptr33.i = getelementptr i8, ptr %s.194.i, i32 1
  %inc43.i = add nuw nsw i32 %j.195.i, 1
  %exitcond106.not.i = icmp eq i32 %inc43.i, %14
  br i1 %exitcond106.not.i, label %for.inc42.i.check_file.exit_crit_edge, label %for.inc42.i.for.body32.i_crit_edge

for.inc42.i.for.body32.i_crit_edge:               ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body32.i

for.inc42.i.check_file.exit_crit_edge:            ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_file.exit

if.end45.i:                                       ; preds = %for.body32.i.if.end45.i_crit_edge, %for.body19.i.if.end45.i_crit_edge, %for.cond28.preheader.i.if.end45.i_crit_edge, %for.cond18.preheader.i.if.end45.i_crit_edge
  %j.2.i = phi i32 [ 0, %for.cond28.preheader.i.if.end45.i_crit_edge ], [ 0, %for.cond18.preheader.i.if.end45.i_crit_edge ], [ %j.195.i, %for.body32.i.if.end45.i_crit_edge ], [ %j.091.i, %for.body19.i.if.end45.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.2.i, i32 %14)
  %cmp47.i = icmp eq i32 %j.2.i, %14
  br i1 %cmp47.i, label %if.end45.i.check_file.exit_crit_edge, label %if.end45.i.for.inc53.i_crit_edge

if.end45.i.for.inc53.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc53.i

if.end45.i.check_file.exit_crit_edge:             ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_file.exit

for.inc53.i:                                      ; preds = %if.end45.i.for.inc53.i_crit_edge, %land.lhs.true.i.for.inc53.i_crit_edge, %if.then7.i.for.inc53.i_crit_edge, %for.body.i.for.inc53.i_crit_edge
  %29 = ptrtoint ptr %l.0100.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %l.0.i = load ptr, ptr %l.0100.i, align 4
  %cmp.i.not.i = icmp eq ptr %l.0.i, @entries
  br i1 %cmp.i.not.i, label %for.inc53.i.if.then7.critedge_crit_edge, label %for.inc53.i.for.body.i_crit_edge

for.inc53.i.for.body.i_crit_edge:                 ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc53.i.if.then7.critedge_crit_edge:          ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.critedge

check_file.exit:                                  ; preds = %if.end45.i.check_file.exit_crit_edge, %for.inc42.i.check_file.exit_crit_edge, %for.inc.i.check_file.exit_crit_edge, %land.lhs.true.i.check_file.exit_crit_edge
  %tobool2.not = icmp eq ptr %l.0100.i, null
  br i1 %tobool2.not, label %check_file.exit.if.then7.critedge_crit_edge, label %if.then3

check_file.exit.if.then7.critedge_crit_edge:      ; preds = %check_file.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.critedge

if.then3:                                         ; preds = %check_file.exit
  %dentry = getelementptr inbounds %struct.Node, ptr %l.0100.i, i32 0, i32 8
  %30 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dentry, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.then3.dget.exit_crit_edge, label %if.then.i

if.then3.dget.exit_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %dget.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #13
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.then3.dget.exit_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @entries_lock) #13
  %interp_flags = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 17
  %32 = ptrtoint ptr %interp_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %interp_flags, align 4
  %and = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %dget.exit.ret_crit_edge

dget.exit.ret_crit_edge:                          ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret

if.then7.critedge:                                ; preds = %check_file.exit.if.then7.critedge_crit_edge, %for.inc53.i.if.then7.critedge_crit_edge, %if.end.if.then7.critedge_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @entries_lock) #13
  br label %cleanup

if.end11:                                         ; preds = %dget.exit
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %tobool13.not = icmp sgt i32 %35, -1
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %33, 8
  %36 = ptrtoint ptr %interp_flags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or, ptr %interp_flags, align 4
  br label %if.end20

if.else:                                          ; preds = %if.end11
  %call16 = tail call i32 @remove_arg_zero(ptr noundef %bprm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else.if.end20_crit_edge, label %if.else.ret_crit_edge

if.else.ret_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %if.then14
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  %and22 = and i32 %38, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end25_crit_edge, label %if.then24

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %have_execfd = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 5
  %39 = ptrtoint ptr %have_execfd to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %have_execfd, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %have_execfd, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20.if.end25_crit_edge
  %40 = ptrtoint ptr %interp.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %interp.i, align 4
  %call26 = tail call i32 @copy_string_kernel(ptr noundef %41, ptr noundef %bprm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %if.end25.ret_crit_edge, label %if.end28

if.end25.ret_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret

if.end28:                                         ; preds = %if.end25
  %argc = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 12
  %42 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %argc, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %argc, align 4
  %interpreter = getelementptr inbounds %struct.Node, ptr %l.0100.i, i32 0, i32 6
  %44 = ptrtoint ptr %interpreter to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %interpreter, align 4
  %call29 = tail call i32 @copy_string_kernel(ptr noundef %45, ptr noundef %bprm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.ret_crit_edge, label %if.end32

if.end28.ret_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret

if.end32:                                         ; preds = %if.end28
  %46 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %argc, align 4
  %inc34 = add i32 %47, 1
  store i32 %inc34, ptr %argc, align 4
  %48 = ptrtoint ptr %interpreter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %interpreter, align 4
  %call36 = tail call i32 @bprm_change_interp(ptr noundef %49, ptr noundef %bprm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end32.ret_crit_edge, label %if.end39

if.end32.ret_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret

if.end39:                                         ; preds = %if.end32
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i, align 4
  %and41 = and i32 %51, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.else50, label %if.then43

if.then43:                                        ; preds = %if.end39
  %interp_file44 = getelementptr inbounds %struct.Node, ptr %l.0100.i, i32 0, i32 9
  %52 = ptrtoint ptr %interp_file44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %interp_file44, align 4
  %f_path.i = getelementptr inbounds %struct.file, ptr %53, i32 0, i32 1
  %f_flags.i = getelementptr inbounds %struct.file, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %f_flags.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %53, i32 0, i32 12
  %56 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %f_cred.i, align 8
  %call.i104 = tail call ptr @dentry_open(ptr noundef %f_path.i, i32 noundef %55, ptr noundef %57) #13
  %cmp.i = icmp ugt ptr %call.i104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43.if.end53_crit_edge, label %if.then47

if.then43.if.end53_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then47:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @deny_write_access(ptr noundef %call.i104)
  br label %if.end53

if.else50:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %interpreter to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %interpreter, align 4
  %call52 = tail call ptr @open_exec(ptr noundef %59) #13
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.then47, %if.then43.if.end53_crit_edge
  %interp_file.0 = phi ptr [ %call.i104, %if.then43.if.end53_crit_edge ], [ %call.i104, %if.then47 ], [ %call52, %if.else50 ]
  %60 = ptrtoint ptr %interp_file.0 to i32
  %cmp.i105 = icmp ugt ptr %interp_file.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.end53.ret_crit_edge, label %if.end57

if.end53.ret_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret

if.end57:                                         ; preds = %if.end53
  %interpreter58 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 7
  %61 = ptrtoint ptr %interpreter58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %interp_file.0, ptr %interpreter58, align 4
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 4
  %and60 = and i32 %63, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end57.ret_crit_edge, label %if.then62

if.end57.ret_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %ret

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %execfd_creds = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 5
  %64 = ptrtoint ptr %execfd_creds to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load63 = load i8, ptr %execfd_creds, align 4
  %bf.set65 = or i8 %bf.load63, 64
  store i8 %bf.set65, ptr %execfd_creds, align 4
  br label %ret

ret:                                              ; preds = %if.then62, %if.end57.ret_crit_edge, %if.end53.ret_crit_edge, %if.end32.ret_crit_edge, %if.end28.ret_crit_edge, %if.end25.ret_crit_edge, %if.else.ret_crit_edge, %dget.exit.ret_crit_edge
  %retval1.0 = phi i32 [ -2, %dget.exit.ret_crit_edge ], [ %call26, %if.end25.ret_crit_edge ], [ %call29, %if.end28.ret_crit_edge ], [ %call36, %if.end32.ret_crit_edge ], [ %60, %if.end53.ret_crit_edge ], [ %call16, %if.else.ret_crit_edge ], [ 0, %if.then62 ], [ 0, %if.end57.ret_crit_edge ]
  %65 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dentry, align 4
  tail call void @dput(ptr noundef %66) #13
  br label %cleanup

cleanup:                                          ; preds = %ret, %if.then7.critedge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %ret ], [ -8, %if.then7.critedge ], [ -8, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_arg_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_string_kernel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bprm_change_interp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @deny_write_access(ptr nocapture noundef readonly %file) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_writecount = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount, i32 noundef 4) #13
  %2 = ptrtoint ptr %i_writecount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_writecount, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, %entry
  %c.0.i.i = phi i32 [ %3, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i)
  %cmp.i.i = icmp sgt i32 %c.0.i.i, 0
  br i1 %cmp.i.i, label %do.body1.i.i.atomic_dec_unless_positive.exit_crit_edge, label %do.cond3.i.i, !prof !147

do.body1.i.i.atomic_dec_unless_positive.exit_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %atomic_dec_unless_positive.exit

do.cond3.i.i:                                     ; preds = %do.body1.i.i
  %sub.i.i = add i32 %c.0.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !148
  tail call void @llvm.prefetch.p0(ptr %i_writecount, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond3.i.i
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount, ptr %i_writecount, i32 %c.0.i.i, i32 %sub.i.i, ptr elementtype(i32) %i_writecount) #13, !srcloc !149
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !150
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %c.0.i.i
  br i1 %cmp.not.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.atomic_dec_unless_positive.exit_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, !prof !151

arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i.i

arch_atomic_cmpxchg.exit.i.i.i.atomic_dec_unless_positive.exit_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %atomic_dec_unless_positive.exit

atomic_dec_unless_positive.exit:                  ; preds = %arch_atomic_cmpxchg.exit.i.i.i.atomic_dec_unless_positive.exit_crit_edge, %do.body1.i.i.atomic_dec_unless_positive.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @open_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bm_init_fs_context(ptr nocapture noundef writeonly %fc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bm_context_ops, ptr %fc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm_get_tree(ptr noundef %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_single(ptr noundef %fc, ptr noundef nonnull @bm_fill_super) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_single(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm_fill_super(ptr noundef %sb, ptr nocapture noundef readnone %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_fill_super(ptr noundef %sb, i32 noundef 1112100429, ptr noundef nonnull @bm_fill_super.bm_files) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %0 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @s_ops, ptr %s_op, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_fill_super(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm_status_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %nbytes, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @enabled, align 4
  %cond = select i1 %.b, ptr @.str.6, ptr @.str.5
  %0 = select i1 %.b, i32 9, i32 8
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %nbytes, ptr noundef %ppos, ptr noundef nonnull %cond, i32 noundef %0) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm_status_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @parse_command(ptr noundef %buffer, i32 noundef %count)
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @enabled, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  store i1 false, ptr @enabled, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #13
  %9 = load volatile ptr, ptr @entries, align 4
  %cmp.i.not13 = icmp eq ptr %9, @entries
  br i1 %cmp.i.not13, label %sw.bb2.while.end_crit_edge, label %sw.bb2.while.body_crit_edge

sw.bb2.while.body_crit_edge:                      ; preds = %sw.bb2
  br label %while.body

sw.bb2.while.end_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %sw.bb2.while.body_crit_edge
  %10 = phi ptr [ %11, %while.body.while.body_crit_edge ], [ %9, %sw.bb2.while.body_crit_edge ]
  tail call fastcc void @kill_node(ptr noundef %10)
  %11 = load volatile ptr, ptr @entries, align 4
  %cmp.i.not = icmp eq ptr %11, @entries
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %sw.bb2.while.end_crit_edge
  %12 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i12 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i12) #13
  br label %cleanup

cleanup:                                          ; preds = %while.end, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %count, %while.end ], [ %count, %sw.bb1 ], [ %count, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_command(ptr noundef %buffer, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %s = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s) #13
  %0 = getelementptr inbounds [4 x i8], ptr %s, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp = icmp ugt i32 %count, 3
  %1 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %s, align 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %s, i32 noundef %count, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %2 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %count, i32 -1226833920) #17, !srcloc !152
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !151

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %s, i32 noundef %count) #13
  %3 = call i32 @llvm.read_register.i32(metadata !137) #13
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !153
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !155
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %s, ptr noundef %buffer, i32 noundef %count) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #13, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !155
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.then11.i.i, !prof !151

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %s, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool3.not = icmp eq i32 %count, 0
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %sub = add nsw i32 %count, -1
  %arrayidx = getelementptr [4 x i8], ptr %s, i32 0, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp6 = icmp eq i8 %8, 10
  %spec.select = select i1 %cmp6, i32 %sub, i32 %count
  %9 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %spec.select, label %if.end5.if.end40_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true29
  ]

if.end5.if.end40_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %11)
  %switch.selectcmp = icmp eq i8 %11, 49
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 -22
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %11)
  %switch.selectcmp50 = icmp eq i8 %11, 48
  %switch.select51 = select i1 %switch.selectcmp50, i32 1, i32 %switch.select
  br label %cleanup

land.lhs.true29:                                  ; preds = %if.end5
  %12 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %13)
  %cmp32 = icmp eq i8 %13, 45
  br i1 %cmp32, label %land.lhs.true34, label %land.lhs.true29.if.end40_crit_edge

land.lhs.true29.if.end40_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %15)
  %cmp37 = icmp eq i8 %15, 49
  br i1 %cmp37, label %land.lhs.true34.cleanup_crit_edge, label %land.lhs.true34.if.end40_crit_edge

land.lhs.true34.if.end40_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end40:                                         ; preds = %land.lhs.true34.if.end40_crit_edge, %land.lhs.true29.if.end40_crit_edge, %if.end5.if.end40_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %land.lhs.true34.cleanup_crit_edge, %land.lhs.true, %if.end2.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end40 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ], [ 3, %land.lhs.true34.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ %switch.select51, %land.lhs.true ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kill_node(ptr noundef %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @entries_lock) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %e, ptr %e, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %e, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %e, ptr %prev.i3.i, align 4
  tail call void @_raw_write_unlock(ptr noundef nonnull @entries_lock) #13
  %dentry1 = getelementptr inbounds %struct.Node, ptr %e, i32 0, i32 8
  %8 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dentry1, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  tail call void @drop_nlink(ptr noundef %11) #13
  tail call void @d_drop(ptr noundef %9) #13
  tail call void @dput(ptr noundef %9) #13
  tail call void @simple_release_fs(ptr noundef nonnull @bm_mnt, ptr noundef nonnull @entry_count) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_release_fs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm_register_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_root, align 64
  %call1 = tail call fastcc ptr @create_entry(ptr noundef %buffer, i32 noundef %count)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.Node, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then4

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %interpreter = getelementptr inbounds %struct.Node, ptr %call1, i32 0, i32 6
  %9 = ptrtoint ptr %interpreter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interpreter, align 4
  %call5 = tail call ptr @open_exec(ptr noundef %10) #13
  %cmp.i79 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %do.end, label %if.end11

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %interpreter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interpreter, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %12) #18
  tail call void @kfree(ptr noundef %call1) #13
  %13 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %interp_file = getelementptr inbounds %struct.Node, ptr %call1, i32 0, i32 9
  %14 = ptrtoint ptr %interp_file to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5, ptr %interp_file, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end.if.end12_crit_edge
  %f.0 = phi ptr [ %call5, %if.end11 ], [ null, %if.end.if.end12_crit_edge ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #13
  %name = getelementptr inbounds %struct.Node, ptr %call1, i32 0, i32 7
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %call15 = tail call i32 @strlen(ptr noundef %18) #19
  %call16 = tail call ptr @lookup_one_len(ptr noundef %18, ptr noundef %5, i32 noundef %call15) #13
  %19 = ptrtoint ptr %call16 to i32
  %cmp.i80 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %if.end12.out_crit_edge, label %if.end20

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end20:                                         ; preds = %if.end12
  %d_inode.i81 = getelementptr inbounds %struct.dentry, ptr %call16, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i81 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i81, align 8
  %cmp.i82.not = icmp eq ptr %21, null
  br i1 %cmp.i82.not, label %if.end23, label %if.end20.out2_crit_edge

if.end20.out2_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %out2

if.end23:                                         ; preds = %if.end20
  %call.i = tail call ptr @new_inode(ptr noundef %3) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end23.out2_crit_edge, label %if.end27

if.end23.out2_crit_edge:                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %out2

if.end27:                                         ; preds = %if.end23
  %call1.i = tail call i32 @get_next_ino() #13
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %22 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call1.i, ptr %i_ino.i, align 8
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -32348, ptr %call.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #13
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call.i) #13
  %24 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #13
  %25 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %26 = call ptr @memcpy(ptr %i_atime.i, ptr %i_ctime.i, i32 16)
  %call28 = call i32 @simple_pin_fs(ptr noundef nonnull @bm_fs_type, ptr noundef nonnull @bm_mnt, ptr noundef nonnull @entry_count) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  call void @iput(ptr noundef nonnull %call.i) #13
  br label %out2

if.end31:                                         ; preds = %if.end27
  %tobool.not.i83 = icmp eq ptr %call16, null
  br i1 %tobool.not.i83, label %if.end31.dget.exit_crit_edge, label %if.then.i84

if.end31.dget.exit_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %dget.exit

if.then.i84:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %call16, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #13
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i84, %if.end31.dget.exit_crit_edge
  %dentry33 = getelementptr inbounds %struct.Node, ptr %call1, i32 0, i32 8
  %27 = ptrtoint ptr %dentry33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call16, ptr %dentry33, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 54
  %28 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call1, ptr %i_private, align 4
  %29 = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 44
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @bm_entry_operations, ptr %29, align 8
  call void @d_instantiate(ptr noundef %call16, ptr noundef nonnull %call.i) #13
  call void @_raw_write_lock(ptr noundef nonnull @entries_lock) #13
  %31 = load ptr, ptr @entries, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %call1, ptr noundef nonnull @entries, ptr noundef %31) #13
  br i1 %call.i.i, label %if.end.i.i, label %dget.exit.list_add.exit_crit_edge

dget.exit.list_add.exit_crit_edge:                ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit

if.end.i.i:                                       ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call1, ptr %prev1.i.i, align 4
  %33 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %call1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call1, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @entries, ptr %prev3.i.i, align 4
  store volatile ptr %call1, ptr @entries, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %dget.exit.list_add.exit_crit_edge
  call void @_raw_write_unlock(ptr noundef nonnull @entries_lock) #13
  br label %out2

out2:                                             ; preds = %list_add.exit, %if.then30, %if.end23.out2_crit_edge, %if.end20.out2_crit_edge
  %err.0 = phi i32 [ -17, %if.end20.out2_crit_edge ], [ %call28, %if.then30 ], [ 0, %list_add.exit ], [ -12, %if.end23.out2_crit_edge ]
  call void @dput(ptr noundef %call16) #13
  br label %out

out:                                              ; preds = %out2, %if.end12.out_crit_edge
  %err.1 = phi i32 [ %19, %if.end12.out_crit_edge ], [ %err.0, %out2 ]
  %35 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i86 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i86) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool35.not = icmp eq i32 %err.1, 0
  br i1 %tobool35.not, label %out.cleanup_crit_edge, label %if.then36

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then36:                                        ; preds = %out
  %tobool37.not = icmp eq ptr %f.0, null
  br i1 %tobool37.not, label %if.then36.if.end40_crit_edge, label %if.then38

if.then36.if.end40_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  %call39 = call i32 @filp_close(ptr noundef nonnull %f.0, ptr noundef null) #13
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then36.if.end40_crit_edge
  call void @kfree(ptr noundef %call1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %out.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %13, %do.end ], [ %err.1, %if.end40 ], [ %count, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_entry(ptr noundef %buffer, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_entry.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_entry, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !156

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_entry.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.15, i32 noundef %count) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = add i32 %count, -1921
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1910, i32 %0)
  %1 = icmp ult i32 %0, -1910
  br i1 %1, label %do.end.cleanup325_crit_edge, label %if.end8.i

do.end.cleanup325_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325

if.end8.i:                                        ; preds = %do.end
  %add6 = add nuw nsw i32 %count, 52
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add6, i32 noundef 3264) #20
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %if.end8.i.cleanup325_crit_edge, label %if.end10

if.end8.i.cleanup325_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325

if.end10:                                         ; preds = %if.end8.i
  %add.ptr = getelementptr i8, ptr %call9.i, i32 44
  %2 = call ptr @memset(ptr %call9.i, i32 0, i32 44)
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end10.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end10.if.then11.i.i_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end10
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %count, i32 -1226833920) #17, !srcloc !152
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !151

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %count) #13
  %4 = tail call i32 @llvm.read_register.i32(metadata !137) #13
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !153
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !155
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buffer, i32 noundef %count) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #13, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end14, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !151

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end10.if.then11.i.i_crit_edge
  %res.0.i.i464 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.end10.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i464
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i464)
  br label %cleanup325.sink.split

if.end14:                                         ; preds = %if.end.i.i
  %incdec.ptr = getelementptr i8, ptr %call9.i, i32 45
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_entry.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_entry, %if.then27)) #13
          to label %do.end31 [label %if.then27], !srcloc !156

if.then27:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_entry.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv) #13
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %if.end14
  %add.ptr32 = getelementptr i8, ptr %add.ptr, i32 %count
  %conv33 = zext i8 %9 to i32
  %10 = zext i8 %9 to i32
  %11 = call ptr @memset(ptr %add.ptr32, i32 %10, i32 8)
  %name = getelementptr inbounds %struct.Node, ptr %call9.i, i32 0, i32 7
  %12 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %incdec.ptr, ptr %name, align 32
  %call35 = tail call ptr @strchr(ptr noundef %incdec.ptr, i32 noundef %conv33)
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.end31.cleanup325.sink.split_crit_edge, label %if.end38

do.end31.cleanup325.sink.split_crit_edge:         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

if.end38:                                         ; preds = %do.end31
  %incdec.ptr39 = getelementptr i8, ptr %call35, i32 1
  %13 = ptrtoint ptr %call35 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %call35, align 1
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 32
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool41.not = icmp eq i8 %17, 0
  br i1 %tobool41.not, label %if.end38.cleanup325.sink.split_crit_edge, label %lor.lhs.false42

if.end38.cleanup325.sink.split_crit_edge:         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

lor.lhs.false42:                                  ; preds = %if.end38
  %call44 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(2) @.str.18) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %lor.lhs.false42.cleanup325.sink.split_crit_edge, label %lor.lhs.false46

lor.lhs.false42.cleanup325.sink.split_crit_edge:  ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

lor.lhs.false46:                                  ; preds = %lor.lhs.false42
  %call48 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(3) @.str.19) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %lor.lhs.false46.cleanup325.sink.split_crit_edge, label %lor.lhs.false50

lor.lhs.false46.cleanup325.sink.split_crit_edge:  ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

lor.lhs.false50:                                  ; preds = %lor.lhs.false46
  %call52 = tail call ptr @strchr(ptr noundef %15, i32 noundef 47)
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %do.body56, label %lor.lhs.false50.cleanup325.sink.split_crit_edge

lor.lhs.false50.cleanup325.sink.split_crit_edge:  ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

do.body56:                                        ; preds = %lor.lhs.false50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_entry.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_entry, %if.then68)) #13
          to label %do.end72 [label %if.then68], !srcloc !156

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_entry.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.21, ptr noundef %19) #13
  br label %do.end72

do.end72:                                         ; preds = %if.then68, %do.body56
  %incdec.ptr73 = getelementptr i8, ptr %call35, i32 2
  %20 = ptrtoint ptr %incdec.ptr39 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr39, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %21, label %do.end72.cleanup325.sink.split_crit_edge [
    i8 69, label %do.body75
    i8 77, label %do.body92
  ]

do.end72.cleanup325.sink.split_crit_edge:         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

do.body75:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_entry.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_entry, %if.then87)) #13
          to label %sw.epilog [label %if.then87], !srcloc !156

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_entry.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.23) #13
  br label %sw.epilog

do.body92:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_entry.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_entry, %if.then104)) #13
          to label %sw.epilog [label %if.then104], !srcloc !156

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_entry.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.25) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then104, %do.body92, %if.then87, %do.body75
  %.sink = phi i32 [ 1, %do.body75 ], [ 1, %if.then87 ], [ 3, %do.body92 ], [ 3, %if.then104 ]
  %flags108 = getelementptr inbounds %struct.Node, ptr %call9.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags108 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %flags108, align 8
  %incdec.ptr109 = getelementptr i8, ptr %call35, i32 3
  %24 = ptrtoint ptr %incdec.ptr73 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr73, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %9)
  %cmp112.not = icmp eq i8 %25, %9
  br i1 %cmp112.not, label %if.end115, label %sw.epilog.cleanup325.sink.split_crit_edge

sw.epilog.cleanup325.sink.split_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

if.end115:                                        ; preds = %sw.epilog
  %flags116 = getelementptr inbounds %struct.Node, ptr %call9.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags116 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags116, align 8
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool118.not = icmp eq i32 %28, 0
  %call237 = tail call ptr @strchr(ptr noundef %incdec.ptr109, i32 noundef %conv33)
  %tobool238.not = icmp eq ptr %call237, null
  br i1 %tobool118.not, label %if.else235, label %if.then119

if.then119:                                       ; preds = %if.end115
  br i1 %tobool238.not, label %if.then119.cleanup325.sink.split_crit_edge, label %if.end124

if.then119.cleanup325.sink.split_crit_edge:       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

if.end124:                                        ; preds = %if.then119
  %29 = ptrtoint ptr %call237 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %call237, align 1
  %cmp125.not = icmp eq ptr %incdec.ptr109, %call237
  br i1 %cmp125.not, label %if.end124.do.body142_crit_edge, label %if.then127

if.end124.do.body142_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body142

if.then127:                                       ; preds = %if.end124
  %offset = getelementptr inbounds %struct.Node, ptr %call9.i, i32 0, i32 2
  %call128 = tail call i32 @kstrtoint(ptr noundef %incdec.ptr109, i32 noundef 10, ptr noundef %offset) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129.not = icmp eq i32 %call128, 0
  br i1 %cmp129.not, label %cleanup, label %if.then127.cleanup325.sink.split_crit_edge

if.then127.cleanup325.sink.split_crit_edge:       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

cleanup:                                          ; preds = %if.then127
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp133 = icmp slt i32 %31, 0
  %32 = lshr i32 %31, 28
  %33 = and i32 %32, 8
  br i1 %cmp133, label %cleanup.cleanup232_crit_edge, label %if.end137

cleanup.cleanup232_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup232

if.end137:                                        ; preds = %cleanup
  %34 = ptrtoint ptr %call237 to i32
  call void @__asan_load1_noabort(i32 %34)
  %.pr = load i8, ptr %call237, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool139.not = icmp eq i8 %.pr, 0
  br i1 %tobool139.not, label %if.end137.do.body142_crit_edge, label %if.end137.cleanup325.sink.split_crit_edge

if.end137.cleanup325.sink.split_crit_edge:        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

if.end137.do.body142_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body142

do.body142:                                       ; preds = %if.end137.do.body142_crit_edge, %if.end124.do.body142_crit_edge
  %incdec.ptr138475 = getelementptr i8, ptr %call237, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_entry.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_entry, %if.then154)) #13
          to label %do.end158 [label %if.then154], !srcloc !156

if.then154:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #15
  %offset155 = getelementptr inbounds %struct.Node, ptr %call9.i, i32 0, i32 2
  %35 = ptrtoint ptr %offset155 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset155, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_entry.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.27, i32 noundef %36) #13
  br label %do.end158

do.end158:                                        ; preds = %if.then154, %do.body142
  %magic = getelementptr inbounds %struct.Node, ptr %call9.i, i32 0, i32 4
  %37 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %incdec.ptr138475, ptr %magic, align 4
  %call159 = tail call fastcc ptr @scanarg(ptr noundef %incdec.ptr138475, i8 noundef zeroext %9)
  %tobool160.not = icmp eq ptr %call159, null
  br i1 %tobool160.not, label %do.end158.cleanup325.sink.split_crit_edge, label %if.end162

do.end158.cleanup325.sink.split_crit_edge:        ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

if.end162:                                        ; preds = %do.end158
  %38 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %magic, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool165.not = icmp eq i8 %41, 0
  br i1 %tobool165.not, label %if.end162.cleanup325.sink.split_crit_edge, label %if.end167

if.end162.cleanup325.sink.split_crit_edge:        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

if.end167:                                        ; preds = %if.end162
  %mask = getelementptr inbounds %struct.Node, ptr %call9.i, i32 0, i32 5
  %42 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call159, ptr %mask, align 8
  %call168 = tail call fastcc ptr @scanarg(ptr noundef nonnull %call159, i8 noundef zeroext %9)
  %tobool169.not = icmp eq ptr %call168, null
  br i1 %tobool169.not, label %if.end167.cleanup325.sink.split_crit_edge, label %if.end171

if.end167.cleanup325.sink.split_crit_edge:        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

if.end171:                                        ; preds = %if.end167
  %43 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mask, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool174.not = icmp eq i8 %46, 0
  br i1 %tobool174.not, label %if.then175, label %if.end171.if.end193_crit_edge

if.end171.if.end193_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end193

if.then175:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %mask, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_entry.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_entry, %if.then189)) #13
          to label %if.end193 [label %if.then189], !srcloc !156

if.then189:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_entry.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.29) #13
  br label %if.end193

if.end193:                                        ; preds = %if.then189, %if.then175, %if.end171.if.end193_crit_edge
  %48 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %magic, align 4
  %call.i = tail call i32 @string_unescape(ptr noundef %49, ptr noundef %49, i32 noundef 0, i32 noundef 4) #13
  %size = getelementptr inbounds %struct.Node, ptr %call9.i, i32 0, i32 3
  %50 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call.i, ptr %size, align 16
  %51 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mask, align 8
  %tobool197.not = icmp eq ptr %52, null
  br i1 %tobool197.not, label %if.end193.if.end204_crit_edge, label %land.lhs.true

if.end193.if.end204_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end204

land.lhs.true:                                    ; preds = %if.end193
  %call.i460 = tail call i32 @string_unescape(ptr noundef nonnull %52, ptr noundef nonnull %52, i32 noundef 0, i32 noundef 4) #13
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i460, i32 %54)
  %cmp201.not = icmp eq i32 %call.i460, %54
  br i1 %cmp201.not, label %land.lhs.true.if.end204_crit_edge, label %land.lhs.true.cleanup325.sink.split_crit_edge

land.lhs.true.cleanup325.sink.split_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

land.lhs.true.if.end204_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end204

if.end204:                                        ; preds = %land.lhs.true.if.end204_crit_edge, %if.end193.if.end204_crit_edge
  %55 = phi i32 [ %call.i460, %land.lhs.true.if.end204_crit_edge ], [ %call.i, %if.end193.if.end204_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %55)
  %cmp206 = icmp sgt i32 %55, 256
  br i1 %cmp206, label %if.end204.cleanup325.sink.split_crit_edge, label %lor.lhs.false208

if.end204.cleanup325.sink.split_crit_edge:        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

lor.lhs.false208:                                 ; preds = %if.end204
  %sub = sub i32 256, %55
  %offset210 = getelementptr inbounds %struct.Node, ptr %call9.i, i32 0, i32 2
  %56 = ptrtoint ptr %offset210 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset210, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %57)
  %cmp211 = icmp slt i32 %sub, %57
  br i1 %cmp211, label %lor.lhs.false208.cleanup325.sink.split_crit_edge, label %do.body215

lor.lhs.false208.cleanup325.sink.split_crit_edge: ; preds = %lor.lhs.false208
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

do.body215:                                       ; preds = %lor.lhs.false208
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_entry.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_entry, %cleanup232.thread481)) #13
          to label %cleanup232 [label %cleanup232.thread481], !srcloc !156

cleanup232.thread481:                             ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_entry.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.31, i32 noundef %59) #13
  br label %if.end281

cleanup232:                                       ; preds = %do.body215, %cleanup.cleanup232_crit_edge
  %cleanup.dest.slot.1 = phi i32 [ %33, %cleanup.cleanup232_crit_edge ], [ 0, %do.body215 ]
  %p.0 = phi ptr [ %incdec.ptr109, %cleanup.cleanup232_crit_edge ], [ %call168, %do.body215 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleanup.dest.slot.1)
  %switch = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %switch, label %cleanup232.if.end281_crit_edge, label %cleanup232.cleanup325.sink.split_crit_edge

cleanup232.cleanup325.sink.split_crit_edge:       ; preds = %cleanup232
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

cleanup232.if.end281_crit_edge:                   ; preds = %cleanup232
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end281

if.else235:                                       ; preds = %if.end115
  br i1 %tobool238.not, label %if.else235.cleanup325.sink.split_crit_edge, label %if.end240

if.else235.cleanup325.sink.split_crit_edge:       ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

if.end240:                                        ; preds = %if.else235
  %incdec.ptr241 = getelementptr i8, ptr %call237, i32 1
  %60 = ptrtoint ptr %call237 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %call237, align 1
  %magic242 = getelementptr inbounds %struct.Node, ptr %call9.i, i32 0, i32 4
  %61 = ptrtoint ptr %magic242 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %incdec.ptr241, ptr %magic242, align 4
  %call244 = tail call ptr @strchr(ptr noundef %incdec.ptr241, i32 noundef %conv33)
  %tobool245.not = icmp eq ptr %call244, null
  br i1 %tobool245.not, label %if.end240.cleanup325.sink.split_crit_edge, label %if.end247

if.end240.cleanup325.sink.split_crit_edge:        ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

if.end247:                                        ; preds = %if.end240
  %incdec.ptr248 = getelementptr i8, ptr %call244, i32 1
  %62 = ptrtoint ptr %call244 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %call244, align 1
  %63 = ptrtoint ptr %magic242 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %magic242, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool251.not = icmp eq i8 %66, 0
  br i1 %tobool251.not, label %if.end247.cleanup325.sink.split_crit_edge, label %lor.lhs.false252

if.end247.cleanup325.sink.split_crit_edge:        ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

lor.lhs.false252:                                 ; preds = %if.end247
  %call254 = tail call ptr @strchr(ptr noundef %64, i32 noundef 47)
  %tobool255.not = icmp eq ptr %call254, null
  br i1 %tobool255.not, label %do.body258, label %lor.lhs.false252.cleanup325.sink.split_crit_edge

lor.lhs.false252.cleanup325.sink.split_crit_edge: ; preds = %lor.lhs.false252
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

do.body258:                                       ; preds = %lor.lhs.false252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_entry.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_entry, %if.then270)) #13
          to label %do.end274 [label %if.then270], !srcloc !156

if.then270:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %magic242 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %magic242, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_entry.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.33, ptr noundef %68) #13
  br label %do.end274

do.end274:                                        ; preds = %if.then270, %do.body258
  %call276 = tail call ptr @strchr(ptr noundef %incdec.ptr248, i32 noundef %conv33)
  %tobool277.not = icmp eq ptr %call276, null
  br i1 %tobool277.not, label %do.end274.cleanup325.sink.split_crit_edge, label %if.end279

do.end274.cleanup325.sink.split_crit_edge:        ; preds = %do.end274
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

if.end279:                                        ; preds = %do.end274
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr280 = getelementptr i8, ptr %call276, i32 1
  %69 = ptrtoint ptr %call276 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %call276, align 1
  br label %if.end281

if.end281:                                        ; preds = %if.end279, %cleanup232.if.end281_crit_edge, %cleanup232.thread481
  %p.1 = phi ptr [ %p.0, %cleanup232.if.end281_crit_edge ], [ %incdec.ptr280, %if.end279 ], [ %call168, %cleanup232.thread481 ]
  %interpreter = getelementptr inbounds %struct.Node, ptr %call9.i, i32 0, i32 6
  %70 = ptrtoint ptr %interpreter to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %p.1, ptr %interpreter, align 4
  %call283 = tail call ptr @strchr(ptr noundef %p.1, i32 noundef %conv33)
  %tobool284.not = icmp eq ptr %call283, null
  br i1 %tobool284.not, label %if.end281.cleanup325.sink.split_crit_edge, label %if.end286

if.end281.cleanup325.sink.split_crit_edge:        ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

if.end286:                                        ; preds = %if.end281
  %incdec.ptr287 = getelementptr i8, ptr %call283, i32 1
  %71 = ptrtoint ptr %call283 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %call283, align 1
  %72 = ptrtoint ptr %interpreter to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %interpreter, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool290.not = icmp eq i8 %75, 0
  br i1 %tobool290.not, label %if.end286.cleanup325.sink.split_crit_edge, label %do.body293

if.end286.cleanup325.sink.split_crit_edge:        ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

do.body293:                                       ; preds = %if.end286
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_entry.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@create_entry, %if.then305)) #13
          to label %do.end309 [label %if.then305], !srcloc !156

if.then305:                                       ; preds = %do.body293
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %interpreter to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %interpreter, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_entry.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.35, ptr noundef %77) #13
  br label %do.end309

do.end309:                                        ; preds = %if.then305, %do.body293
  %call310 = tail call fastcc ptr @check_special_flags(ptr noundef %incdec.ptr287, ptr noundef nonnull %call9.i)
  %78 = ptrtoint ptr %call310 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %call310, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %79)
  %cmp312 = icmp eq i8 %79, 10
  %spec.select.idx = zext i1 %cmp312 to i32
  %spec.select = getelementptr i8, ptr %call310, i32 %spec.select.idx
  %cmp318.not = icmp eq ptr %spec.select, %add.ptr32
  br i1 %cmp318.not, label %do.end309.cleanup325_crit_edge, label %do.end309.cleanup325.sink.split_crit_edge

do.end309.cleanup325.sink.split_crit_edge:        ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325.sink.split

do.end309.cleanup325_crit_edge:                   ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup325

cleanup325.sink.split:                            ; preds = %do.end309.cleanup325.sink.split_crit_edge, %if.end286.cleanup325.sink.split_crit_edge, %if.end281.cleanup325.sink.split_crit_edge, %do.end274.cleanup325.sink.split_crit_edge, %lor.lhs.false252.cleanup325.sink.split_crit_edge, %if.end247.cleanup325.sink.split_crit_edge, %if.end240.cleanup325.sink.split_crit_edge, %if.else235.cleanup325.sink.split_crit_edge, %cleanup232.cleanup325.sink.split_crit_edge, %lor.lhs.false208.cleanup325.sink.split_crit_edge, %if.end204.cleanup325.sink.split_crit_edge, %land.lhs.true.cleanup325.sink.split_crit_edge, %if.end167.cleanup325.sink.split_crit_edge, %if.end162.cleanup325.sink.split_crit_edge, %do.end158.cleanup325.sink.split_crit_edge, %if.end137.cleanup325.sink.split_crit_edge, %if.then127.cleanup325.sink.split_crit_edge, %if.then119.cleanup325.sink.split_crit_edge, %sw.epilog.cleanup325.sink.split_crit_edge, %do.end72.cleanup325.sink.split_crit_edge, %lor.lhs.false50.cleanup325.sink.split_crit_edge, %lor.lhs.false46.cleanup325.sink.split_crit_edge, %lor.lhs.false42.cleanup325.sink.split_crit_edge, %if.end38.cleanup325.sink.split_crit_edge, %do.end31.cleanup325.sink.split_crit_edge, %if.then11.i.i
  %retval.0.ph = phi ptr [ inttoptr (i32 -14 to ptr), %if.then11.i.i ], [ inttoptr (i32 -22 to ptr), %cleanup232.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then127.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end204.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false208.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end167.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end162.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end158.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end137.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then119.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end309.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end286.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end281.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end274.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end247.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false252.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end240.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else235.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.epilog.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end72.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end38.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false42.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false46.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false50.cleanup325.sink.split_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end31.cleanup325.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup325

cleanup325:                                       ; preds = %cleanup325.sink.split, %do.end309.cleanup325_crit_edge, %if.end8.i.cleanup325_crit_edge, %do.end.cleanup325_crit_edge
  %retval.0 = phi ptr [ %call9.i, %do.end309.cleanup325_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.cleanup325_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.cleanup325_crit_edge ], [ %retval.0.ph, %cleanup325.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_pin_fs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scanarg(ptr noundef %s, i8 noundef zeroext %del) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr35 = getelementptr i8, ptr %s, i32 1
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %del)
  %cmp.not36 = icmp eq i8 %1, %del
  br i1 %cmp.not36, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i8 [ %16, %if.end25.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %incdec.ptr38 = phi ptr [ %incdec.ptr, %if.end25.while.body_crit_edge ], [ %incdec.ptr35, %entry.while.body_crit_edge ]
  %s.addr.037 = phi ptr [ %s.addr.1, %if.end25.while.body_crit_edge ], [ %s, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %2)
  %cmp4 = icmp eq i8 %2, 92
  br i1 %cmp4, label %land.lhs.true, label %while.body.if.end25_crit_edge

while.body.if.end25_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true:                                    ; preds = %while.body
  %3 = ptrtoint ptr %incdec.ptr38 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %incdec.ptr38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 120, i8 %4)
  %cmp7 = icmp eq i8 %4, 120
  br i1 %cmp7, label %if.then, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then:                                          ; preds = %land.lhs.true
  %incdec.ptr9 = getelementptr i8, ptr %s.addr.037, i32 2
  %5 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr9, align 1
  %conv11 = zext i8 %6 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv11
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = and i8 %8, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp13.not = icmp eq i8 %9, 0
  br i1 %cmp13.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %incdec.ptr10 = getelementptr i8, ptr %s.addr.037, i32 3
  %incdec.ptr16 = getelementptr i8, ptr %s.addr.037, i32 4
  %10 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %incdec.ptr10, align 1
  %conv17 = zext i8 %11 to i32
  %arrayidx18 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv17
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18, align 1
  %14 = and i8 %13, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp21.not = icmp eq i8 %14, 0
  br i1 %cmp21.not, label %if.end.cleanup_crit_edge, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %if.end.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %while.body.if.end25_crit_edge
  %s.addr.1 = phi ptr [ %incdec.ptr16, %if.end.if.end25_crit_edge ], [ %incdec.ptr38, %land.lhs.true.if.end25_crit_edge ], [ %incdec.ptr38, %while.body.if.end25_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %s.addr.1, i32 1
  %15 = ptrtoint ptr %s.addr.1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %s.addr.1, align 1
  %cmp.not = icmp eq i8 %16, %del
  br i1 %cmp.not, label %if.end25.while.end_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %entry.while.end_crit_edge
  %s.addr.0.lcssa = phi ptr [ %s, %entry.while.end_crit_edge ], [ %s.addr.1, %if.end25.while.end_crit_edge ]
  %incdec.ptr.lcssa = phi ptr [ %incdec.ptr35, %entry.while.end_crit_edge ], [ %incdec.ptr, %if.end25.while.end_crit_edge ]
  %17 = ptrtoint ptr %s.addr.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %s.addr.0.lcssa, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %incdec.ptr.lcssa, %while.end ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @check_special_flags(ptr noundef readonly %sfs, ptr nocapture noundef %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags62 = getelementptr inbounds %struct.Node, ptr %e, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %sw.epilog, %entry
  %p.085 = phi ptr [ %sfs, %entry ], [ %incdec.ptr61, %sw.epilog ]
  %0 = ptrtoint ptr %p.085 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p.085, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %1, label %while.end [
    i8 80, label %do.body
    i8 79, label %do.body5
    i8 67, label %do.body25
    i8 70, label %do.body45
  ]

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_special_flags.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_special_flags, %if.then)) #13
          to label %sw.epilog [label %if.then], !srcloc !156

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check_special_flags.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.38) #13
  br label %sw.epilog

do.body5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_special_flags.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_special_flags, %if.then17)) #13
          to label %sw.epilog [label %if.then17], !srcloc !156

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check_special_flags.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.40) #13
  br label %sw.epilog

do.body25:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_special_flags.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_special_flags, %if.then37)) #13
          to label %sw.epilog [label %if.then37], !srcloc !156

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check_special_flags.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.42) #13
  br label %sw.epilog

do.body45:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_special_flags.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_special_flags, %if.then57)) #13
          to label %sw.epilog [label %if.then57], !srcloc !156

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check_special_flags.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.44) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then57, %do.body45, %if.then37, %do.body25, %if.then17, %do.body5, %if.then, %do.body
  %.sink89 = phi i32 [ -2147483648, %do.body ], [ -2147483648, %if.then ], [ 1073741824, %do.body5 ], [ 1073741824, %if.then17 ], [ 1610612736, %do.body25 ], [ 1610612736, %if.then37 ], [ 268435456, %do.body45 ], [ 268435456, %if.then57 ]
  %incdec.ptr61 = getelementptr i8, ptr %p.085, i32 1
  %3 = ptrtoint ptr %flags62 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags62, align 4
  %or63 = or i32 %4, %.sink89
  store i32 %or63, ptr %flags62, align 4
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  ret ptr %p.085
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @string_unescape(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm_entry_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %nbytes, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %call1 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = inttoptr i32 %call1 to ptr
  %flags.i = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.45, ptr @.str.46
  %interpreter.i = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %interpreter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interpreter.i, align 4
  %call1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.47, ptr noundef nonnull %spec.select.i, ptr noundef %8) #13
  %add.ptr.i = getelementptr i8, ptr %4, i32 %call1.i
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 7380380986296115200, ptr %add.ptr.i, align 1
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 7
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool5.not.i = icmp sgt i32 %11, -1
  br i1 %tobool5.not.i, label %if.end.if.end7.i_crit_edge, label %if.then6.i

if.end.if.end7.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr3.i, i32 1
  %12 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 80, ptr %add.ptr3.i, align 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.if.end7.i_crit_edge
  %dp.0.i = phi ptr [ %incdec.ptr.i, %if.then6.i ], [ %add.ptr3.i, %if.end.if.end7.i_crit_edge ]
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and9.i = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.if.end13.i_crit_edge, label %if.then11.i

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr12.i = getelementptr i8, ptr %dp.0.i, i32 1
  %15 = ptrtoint ptr %dp.0.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 79, ptr %dp.0.i, align 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end7.i.if.end13.i_crit_edge
  %dp.1.i = phi ptr [ %incdec.ptr12.i, %if.then11.i ], [ %dp.0.i, %if.end7.i.if.end13.i_crit_edge ]
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and15.i = and i32 %17, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end19.i_crit_edge, label %if.then17.i

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr18.i = getelementptr i8, ptr %dp.1.i, i32 1
  %18 = ptrtoint ptr %dp.1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 67, ptr %dp.1.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end13.i.if.end19.i_crit_edge
  %dp.2.i = phi ptr [ %incdec.ptr18.i, %if.then17.i ], [ %dp.1.i, %if.end13.i.if.end19.i_crit_edge ]
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and21.i = and i32 %20, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end19.i.if.end25.i_crit_edge, label %if.then23.i

if.end19.i.if.end25.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr24.i = getelementptr i8, ptr %dp.2.i, i32 1
  %21 = ptrtoint ptr %dp.2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 70, ptr %dp.2.i, align 1
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end19.i.if.end25.i_crit_edge
  %dp.3.i = phi ptr [ %incdec.ptr24.i, %if.then23.i ], [ %dp.2.i, %if.end19.i.if.end25.i_crit_edge ]
  %incdec.ptr26.i = getelementptr i8, ptr %dp.3.i, i32 1
  %22 = ptrtoint ptr %dp.3.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 10, ptr %dp.3.i, align 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool29.not.i = icmp eq i32 %25, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  %magic.i = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %magic.i, align 4
  %call31.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr26.i, ptr noundef nonnull @.str.49, ptr noundef %27) #13
  br label %entry_status.exit

if.else.i:                                        ; preds = %if.end25.i
  %offset.i = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i, align 4
  %call32.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr26.i, ptr noundef nonnull @.str.50, i32 noundef %29) #13
  %add.ptr33.i = getelementptr i8, ptr %incdec.ptr26.i, i32 %call32.i
  %magic34.i = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %magic34.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %magic34.i, align 4
  %size.i = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 3
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i, align 4
  %call35.i = tail call ptr @bin2hex(ptr noundef %add.ptr33.i, ptr noundef %31, i32 noundef %33) #13
  %mask.i = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 5
  %34 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mask.i, align 4
  %tobool36.not.i = icmp eq ptr %35, null
  br i1 %tobool36.not.i, label %if.else.i.if.end43.i_crit_edge, label %if.then37.i

if.else.i.if.end43.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

if.then37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = call ptr @memcpy(ptr %call35.i, ptr @.str.51, i32 7)
  %add.ptr39.i = getelementptr i8, ptr %call35.i, i32 6
  %37 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mask.i, align 4
  %39 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size.i, align 4
  %call42.i = tail call ptr @bin2hex(ptr noundef %add.ptr39.i, ptr noundef %38, i32 noundef %40) #13
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then37.i, %if.else.i.if.end43.i_crit_edge
  %dp.4.i = phi ptr [ %call42.i, %if.then37.i ], [ %call35.i, %if.else.i.if.end43.i_crit_edge ]
  %incdec.ptr44.i = getelementptr i8, ptr %dp.4.i, i32 1
  %41 = ptrtoint ptr %dp.4.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 10, ptr %dp.4.i, align 1
  %42 = ptrtoint ptr %incdec.ptr44.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %incdec.ptr44.i, align 1
  br label %entry_status.exit

entry_status.exit:                                ; preds = %if.end43.i, %if.then30.i
  %call2 = tail call i32 @strlen(ptr noundef nonnull %4) #19
  %call3 = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %nbytes, ptr noundef %ppos, ptr noundef nonnull %4, i32 noundef %call2) #13
  tail call void @free_pages(i32 noundef %call1, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %entry_status.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry_status.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm_entry_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %call1 = tail call fastcc i32 @parse_command(ptr noundef %buffer, i32 noundef %count)
  %4 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #13
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags3 = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags3) #13
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %5 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #13
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %3, align 4
  %cmp.i.not = icmp eq ptr %14, %3
  br i1 %cmp.i.not, label %sw.bb4.if.end_crit_edge, label %if.then

sw.bb4.if.end_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @kill_node(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb4.if.end_crit_edge
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i20 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i20) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %count, %if.end ], [ %count, %sw.bb2 ], [ %count, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bm_evict_inode(ptr noundef %inode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.Node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %interp_file = getelementptr inbounds %struct.Node, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %interp_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interp_file, align 4
  %call = tail call i32 @filp_close(ptr noundef %5, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @clear_inode(ptr noundef %inode) #13
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_binfmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135}
!llvm.named.register.sp = !{!137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__UNIQUE_ID_alias296, !1, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!1 = !{!"../fs/binfmt_misc.c", i32 818, i32 1}
!2 = !{ptr @__initcall__kmod_binfmt_misc__297_834_init_misc_binfmt1, !3, !"__initcall__kmod_binfmt_misc__297_834_init_misc_binfmt1", i1 false, i1 false}
!3 = !{!"../fs/binfmt_misc.c", i32 834, i32 1}
!4 = !{ptr @__exitcall_exit_misc_binfmt, !5, !"__exitcall_exit_misc_binfmt", i1 false, i1 false}
!5 = !{!"../fs/binfmt_misc.c", i32 835, i32 1}
!6 = !{ptr @__UNIQUE_ID_file298, !7, !"__UNIQUE_ID_file298", i1 false, i1 false}
!7 = !{!"../fs/binfmt_misc.c", i32 836, i32 1}
!8 = !{ptr @__UNIQUE_ID_license299, !7, !"__UNIQUE_ID_license299", i1 false, i1 false}
!9 = !{ptr @misc_format, !10, !"misc_format", i1 false, i1 false}
!10 = !{!"../fs/binfmt_misc.c", i32 807, i32 28}
!11 = distinct !{null, !12, !"enabled", i1 false, i1 false}
!12 = !{!"../fs/binfmt_misc.c", i32 44, i32 12}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/binfmt_misc.c", i32 65, i32 8}
!15 = !{ptr @entries_lock, !14, !"entries_lock", i1 false, i1 false}
!16 = !{ptr @entries, !17, !"entries", i1 false, i1 false}
!17 = !{!"../fs/binfmt_misc.c", i32 43, i32 8}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/binfmt_misc.c", i32 814, i32 11}
!20 = !{ptr @bm_fs_type, !21, !"bm_fs_type", i1 false, i1 false}
!21 = !{!"../fs/binfmt_misc.c", i32 812, i32 32}
!22 = !{ptr @bm_context_ops, !23, !"bm_context_ops", i1 false, i1 false}
!23 = !{!"../fs/binfmt_misc.c", i32 797, i32 43}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/binfmt_misc.c", i32 781, i32 10}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/binfmt_misc.c", i32 782, i32 10}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/binfmt_misc.c", i32 783, i32 19}
!30 = !{ptr @bm_fill_super.bm_files, !31, !"bm_files", i1 false, i1 false}
!31 = !{!"../fs/binfmt_misc.c", i32 780, i32 33}
!32 = !{ptr @bm_status_operations, !33, !"bm_status_operations", i1 false, i1 false}
!33 = !{!"../fs/binfmt_misc.c", i32 764, i32 37}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/binfmt_misc.c", i32 727, i32 22}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/binfmt_misc.c", i32 727, i32 36}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!45 = !{ptr @bm_mnt, !46, !"bm_mnt", i1 false, i1 false}
!46 = !{!"../fs/binfmt_misc.c", i32 67, i32 25}
!47 = !{ptr @entry_count, !48, !"entry_count", i1 false, i1 false}
!48 = !{!"../fs/binfmt_misc.c", i32 68, i32 12}
!49 = !{ptr @bm_register_operations, !50, !"bm_register_operations", i1 false, i1 false}
!50 = !{!"../fs/binfmt_misc.c", i32 717, i32 37}
!51 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/binfmt_misc.c", i32 662, i32 4}
!53 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @bm_register_write._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @bm_register_write._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/binfmt_misc.c", i32 281, i32 2}
!59 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @create_entry.__UNIQUE_ID_ddebug281, !58, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!61 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/binfmt_misc.c", i32 302, i32 2}
!64 = !{ptr @create_entry.__UNIQUE_ID_ddebug282, !63, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!65 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/binfmt_misc.c", i32 314, i32 23}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/binfmt_misc.c", i32 315, i32 23}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/binfmt_misc.c", i32 319, i32 2}
!72 = !{ptr @create_entry.__UNIQUE_ID_ddebug283, !71, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!73 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/binfmt_misc.c", i32 324, i32 3}
!76 = !{ptr @create_entry.__UNIQUE_ID_ddebug284, !75, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!77 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/binfmt_misc.c", i32 328, i32 3}
!80 = !{ptr @create_entry.__UNIQUE_ID_ddebug285, !79, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!81 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/binfmt_misc.c", i32 354, i32 3}
!84 = !{ptr @create_entry.__UNIQUE_ID_ddebug286, !83, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!85 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/binfmt_misc.c", i32 375, i32 4}
!88 = !{ptr @create_entry.__UNIQUE_ID_ddebug288, !87, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!89 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/binfmt_misc.c", i32 394, i32 3}
!92 = !{ptr @create_entry.__UNIQUE_ID_ddebug290, !91, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!93 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/binfmt_misc.c", i32 436, i32 3}
!96 = !{ptr @create_entry.__UNIQUE_ID_ddebug294, !95, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!97 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/binfmt_misc.c", i32 453, i32 2}
!100 = !{ptr @create_entry.__UNIQUE_ID_ddebug295, !99, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!101 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.36, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/binfmt_misc.c", i32 239, i32 4}
!104 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @check_special_flags.__UNIQUE_ID_ddebug277, !103, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!106 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/binfmt_misc.c", i32 244, i32 4}
!109 = !{ptr @check_special_flags.__UNIQUE_ID_ddebug278, !108, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!110 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/binfmt_misc.c", i32 249, i32 4}
!113 = !{ptr @check_special_flags.__UNIQUE_ID_ddebug279, !112, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!114 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/binfmt_misc.c", i32 257, i32 4}
!117 = !{ptr @check_special_flags.__UNIQUE_ID_ddebug280, !116, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!118 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @bm_entry_operations, !120, !"bm_entry_operations", i1 false, i1 false}
!120 = !{!"../fs/binfmt_misc.c", i32 636, i32 37}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/binfmt_misc.c", i32 505, i32 23}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/binfmt_misc.c", i32 508, i32 12}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/binfmt_misc.c", i32 515, i32 20}
!127 = distinct !{null, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/binfmt_misc.c", i32 518, i32 20}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/binfmt_misc.c", i32 530, i32 15}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/binfmt_misc.c", i32 532, i32 21}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/binfmt_misc.c", i32 535, i32 22}
!135 = !{ptr @s_ops, !136, !"s_ops", i1 false, i1 false}
!136 = !{!"../fs/binfmt_misc.c", i32 772, i32 38}
!137 = !{!"sp"}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"branch_weights", i32 1, i32 2000}
!148 = !{i64 2148327390}
!149 = !{i64 709303, i64 709327, i64 709348, i64 709365, i64 709382}
!150 = !{i64 2148327616}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{i64 2153206169, i64 2153206194}
!153 = !{i64 5697663}
!154 = !{i64 5697860}
!155 = !{i64 2153183093}
!156 = !{i64 2148707382, i64 2148707387, i64 2148707400, i64 2148707444, i64 2148707478, i64 2148707499}
