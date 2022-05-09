; ModuleID = '/llk/IR_all_yes/kernel/bpf/inode.c_pt.bc'
source_filename = "../kernel/bpf/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bpf_prog_get_type_path\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_prog_get_type_path\09\09\09\09"
module asm "\09.long\09__crc_bpf_prog_get_type_path\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_prog_get_type_path:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_prog_get_type_path\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_prog_get_type_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bpf_preload_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_preload_ops\09\09\09\09"
module asm "\09.long\09__crc_bpf_preload_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_preload_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_preload_ops\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_preload_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.23 }
%union.anon.23 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.33, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.92, %struct.list_head, %struct.list_head, %union.anon.93 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.18, ptr }
%union.anon.18 = type { i64 }
%struct.lockref = type { %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%union.anon.92 = type { %struct.list_head }
%union.anon.93 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.159, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.160, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.161, ptr, %struct.address_space, %struct.list_head, %union.anon.162, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.159 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.160 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.161 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.162 = type { ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.map_iter = type { ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.fs_parse_result = type { i8, %union.anon.62 }
%union.anon.62 = type { i64 }
%struct.bpf_preload_info = type { [16 x i8], i32 }
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
%struct.bpf_preload_ops = type { %struct.umd_info, ptr, ptr, ptr }
%struct.umd_info = type { ptr, ptr, ptr, %struct.path, ptr }

@__kstrtab_bpf_prog_get_type_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_prog_get_type_path = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_prog_get_type_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_prog_get_type_path to i32), ptr @__kstrtab_bpf_prog_get_type_path, ptr @__kstrtabns_bpf_prog_get_type_path }, section "___ksymtab+bpf_prog_get_type_path", align 4
@bpf_preload_ops = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_bpf_preload_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_preload_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_preload_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_preload_ops to i32), ptr @__kstrtab_bpf_preload_ops, ptr @__kstrtabns_bpf_preload_ops }, section "___ksymtab_gpl+bpf_preload_ops", align 4
@__initcall__kmod_inode__462_839_bpf_init5 = internal global ptr @bpf_init, section ".initcall5.init", align 4
@bpf_dir_iops = internal constant %struct.inode_operations { ptr @bpf_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_link, ptr @simple_unlink, ptr @bpf_symlink, ptr @bpf_mkdir, ptr @simple_rmdir, ptr null, ptr @simple_rename, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@simple_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@bpf_prog_iops = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@bpffs_obj_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bpffs_obj_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@bpf_map_iops = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@bpffs_map_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @bpffs_map_open, ptr null, ptr @bpffs_map_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@bpffs_map_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @map_seq_start, ptr @map_seq_stop, ptr @map_seq_next, ptr @map_seq_show }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"# WARNING!! The output is for debug purpose only\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"# WARNING!! The output format will change\0A\00", [53 x i8] zeroinitializer }, align 32
@bpf_link_iops = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@bpf_iter_fops = external dso_local constant %struct.file_operations, align 4
@bpf_any_put.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kernel/bpf/inode.c\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\04\02\06\06\00", [27 x i8] zeroinitializer }, align 32
@fs_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bpf\00", [28 x i8] zeroinitializer }, align 32
@bpf_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.7, i32 0, ptr @bpf_init_fs_context, ptr @bpf_fs_parameters, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@bpf_fs_parameters = internal constant { [2 x %struct.fs_parameter_spec], [32 x i8] } { [2 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.15, ptr @fs_param_is_u32, i8 0, i16 0, ptr inttoptr (i32 8 to ptr) }, %struct.fs_parameter_spec zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bpf_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @bpf_free_fc, ptr null, ptr @bpf_parse_param, ptr null, ptr @bpf_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@bpf_fill_super.bpf_rfiles = internal constant { [1 x %struct.tree_descr], [20 x i8] } { [1 x %struct.tree_descr] [%struct.tree_descr { ptr @.str.8, ptr null, i32 0 }], [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@bpf_super_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr null, ptr null, ptr @bpf_free_inode, ptr null, ptr null, ptr @generic_delete_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr @bpf_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",mode=%o\00", [23 x i8] zeroinitializer }, align 32
@bpf_preload_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bpf_preload_lock, i64 52), ptr getelementptr (i8, ptr @bpf_preload_lock, i64 52) }, ptr @bpf_preload_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bpf_preload_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bpf_preload_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bpf_preload\00", [20 x i8] zeroinitializer }, align 32
@bpf_preload_mod_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013bpf_preload module get failed.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bpf_preload_mod_get\00", [44 x i8] zeroinitializer }, align 32
@bpf_preload_mod_get._entry_ptr = internal global ptr @bpf_preload_mod_get._entry, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@switch.table.bpf_obj_pin_user = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @bpf_mkprog, ptr @bpf_mkmap, ptr @bpf_mklink], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"bpf_preload_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 677, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"bpffs_obj_fops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 327, i32 37 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"bpffs_map_fops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 316, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"bpffs_map_seq_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 267, i32 36 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 695, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 723, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 258, i32 15 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 259, i32 15 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 65, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 511, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 829, i32 42 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"bpf_fs_type\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 817, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"bpf_fs_parameters\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 635, i32 39 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"bpf_context_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 793, i32 43 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"bpf_rfiles\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 764, i32 33 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 764, i32 52 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"bpf_super_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 624, i32 38 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 609, i32 17 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"bpf_preload_lock\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 708, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 687, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 695, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [22 x i8] c"../kernel/bpf/inode.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 636, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [30 x i8] c"switch.table.bpf_obj_pin_user\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @__initcall__kmod_inode__462_839_bpf_init5, ptr @__ksymtab_bpf_preload_ops, ptr @__ksymtab_bpf_prog_get_type_path, ptr @bpf_preload_mod_get._entry, ptr @bpf_preload_mod_get._entry_ptr, ptr @bpf_preload_ops, ptr @bpffs_obj_fops, ptr @bpffs_map_fops, ptr @bpffs_map_seq_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @bpf_fs_type, ptr @bpf_fs_parameters, ptr @bpf_context_ops, ptr @bpf_fill_super.bpf_rfiles, ptr @.str.8, ptr @bpf_super_ops, ptr @.str.9, ptr @bpf_preload_lock, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @switch.table.bpf_obj_pin_user], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_preload_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpffs_obj_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpffs_map_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpffs_map_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_fs_parameters to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_fill_super.bpf_rfiles to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_preload_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_preload_mod_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bpf_obj_pin_user to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_obj_pin_user(i32 noundef %ufd, ptr noundef %pathname) local_unnamed_addr #0 align 64 {
entry:
  %path.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @bpf_map_get_with_uref(i32 noundef %ufd) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i, label %entry.bpf_fd_probe_obj.exit_crit_edge

entry.bpf_fd_probe_obj.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_fd_probe_obj.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call ptr @bpf_prog_get(i32 noundef %ufd) #12
  %cmp.i20.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20.i, label %if.end5.i, label %if.end.i.bpf_fd_probe_obj.exit_crit_edge

if.end.i.bpf_fd_probe_obj.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_fd_probe_obj.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call ptr @bpf_link_get_from_fd(i32 noundef %ufd) #12
  %cmp.i21.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21.i, label %if.end5.i.if.then_crit_edge, label %if.end5.i.bpf_fd_probe_obj.exit_crit_edge

if.end5.i.bpf_fd_probe_obj.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_fd_probe_obj.exit

if.end5.i.if.then_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

bpf_fd_probe_obj.exit:                            ; preds = %if.end5.i.bpf_fd_probe_obj.exit_crit_edge, %if.end.i.bpf_fd_probe_obj.exit_crit_edge, %entry.bpf_fd_probe_obj.exit_crit_edge
  %.sink.i = phi i32 [ 2, %entry.bpf_fd_probe_obj.exit_crit_edge ], [ 1, %if.end.i.bpf_fd_probe_obj.exit_crit_edge ], [ 3, %if.end5.i.bpf_fd_probe_obj.exit_crit_edge ]
  %retval.0.ph.i = phi ptr [ %call.i, %entry.bpf_fd_probe_obj.exit_crit_edge ], [ %call2.i, %if.end.i.bpf_fd_probe_obj.exit_crit_edge ], [ %call6.i, %if.end5.i.bpf_fd_probe_obj.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.ph.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %bpf_fd_probe_obj.exit.if.then_crit_edge, label %if.end

bpf_fd_probe_obj.exit.if.then_crit_edge:          ; preds = %bpf_fd_probe_obj.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %bpf_fd_probe_obj.exit.if.then_crit_edge, %if.end5.i.if.then_crit_edge
  %retval.0.i23 = phi ptr [ %retval.0.ph.i, %bpf_fd_probe_obj.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.i.if.then_crit_edge ]
  %0 = ptrtoint ptr %retval.0.i23 to i32
  br label %cleanup

if.end:                                           ; preds = %bpf_fd_probe_obj.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #12
  %1 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 4, !annotation !79
  %2 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !79
  %call.i12 = call ptr @user_path_create(i32 noundef -100, ptr noundef %pathname, ptr noundef nonnull %path.i, i32 noundef 0) #12
  %cmp.i.i13 = icmp ugt ptr %call.i12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i13, label %if.then.i, label %if.end.i14

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call.i12 to i32
  br label %bpf_obj_do_pin.exit

if.end.i14:                                       ; preds = %if.end
  %call3.i = call i32 @current_umask() #12
  %5 = trunc i32 %call3.i to i16
  %6 = and i16 %5, 384
  %conv.i = xor i16 %6, -32384
  %call4.i = call i32 @security_path_mknod(ptr noundef nonnull %path.i, ptr noundef %call.i12, i16 noundef zeroext %conv.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i14.out.i_crit_edge

if.end.i14.out.i_crit_edge:                       ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i14
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode.i.i, align 8
  %i_op.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %i_op.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_op.i, align 8
  %cmp.not.i = icmp eq ptr %12, @bpf_dir_iops
  br i1 %cmp.not.i, label %if.end11.i, label %if.end6.i.out.i_crit_edge

if.end6.i.out.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end11.i:                                       ; preds = %if.end6.i
  %switch.tableidx = add nsw i32 %.sink.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 3
  br i1 %13, label %switch.lookup, label %if.end11.i.out.i_crit_edge

if.end11.i.out.i_crit_edge:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

switch.lookup:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.bpf_obj_pin_user, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call12.i = call i32 @vfs_mkobj(ptr noundef %call.i12, i16 noundef zeroext %conv.i, ptr noundef nonnull %switch.load, ptr noundef %retval.0.ph.i) #12
  br label %out.i

out.i:                                            ; preds = %switch.lookup, %if.end11.i.out.i_crit_edge, %if.end6.i.out.i_crit_edge, %if.end.i14.out.i_crit_edge
  %ret.0.i = phi i32 [ %call4.i, %if.end.i14.out.i_crit_edge ], [ -1, %if.end6.i.out.i_crit_edge ], [ -1, %if.end11.i.out.i_crit_edge ], [ %call12.i, %switch.lookup ]
  call void @done_path_create(ptr noundef nonnull %path.i, ptr noundef %call.i12) #12
  br label %bpf_obj_do_pin.exit

bpf_obj_do_pin.exit:                              ; preds = %out.i, %if.then.i
  %retval.0.i15 = phi i32 [ %4, %if.then.i ], [ %ret.0.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i15)
  %cmp.not = icmp eq i32 %retval.0.i15, 0
  br i1 %cmp.not, label %bpf_obj_do_pin.exit.cleanup_crit_edge, label %if.then4

bpf_obj_do_pin.exit.cleanup_crit_edge:            ; preds = %bpf_obj_do_pin.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %bpf_obj_do_pin.exit
  %15 = zext i32 %.sink.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.sink.i, label %land.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  call void @bpf_prog_put(ptr noundef %retval.0.ph.i) #12
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  call void @bpf_map_put_with_uref(ptr noundef %retval.0.ph.i) #12
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  call void @bpf_link_put(ptr noundef %retval.0.ph.i) #12
  br label %cleanup

land.end.i:                                       ; preds = %if.then4
  %.b39.i = load i1, ptr @bpf_any_put.__already_done, align 1
  br i1 %.b39.i, label %land.end.i.cleanup_crit_edge, label %if.then.i16, !prof !80

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i16:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bpf_any_put.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 65, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i16, %land.end.i.cleanup_crit_edge, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %bpf_obj_do_pin.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %bpf_obj_do_pin.exit.cleanup_crit_edge ], [ %retval.0.i15, %sw.bb.i ], [ %retval.0.i15, %sw.bb1.i ], [ %retval.0.i15, %sw.bb2.i ], [ %retval.0.i15, %land.end.i.cleanup_crit_edge ], [ %retval.0.i15, %if.then.i16 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_obj_get_user(ptr noundef %pathname, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %path.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bpf_get_file_flag(i32 noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #12
  %0 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 4, !annotation !79
  %1 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !79
  %call.i.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %pathname, i32 noundef 1, ptr noundef nonnull %path.i, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = inttoptr i32 %call.i.i to ptr
  br label %bpf_obj_do_get.exit

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i.i, align 8
  %and.i = and i32 %call, 3
  %arrayidx.i = getelementptr [5 x i8], ptr @.str.6, i32 0, i32 %and.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %path.i, align 4
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !81
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i.i.i, align 8
  %call2.i.i = call i32 @inode_permission(ptr noundef %13, ptr noundef %17, i32 noundef %conv.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool4.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i
  %i_op.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 7
  %18 = ptrtoint ptr %i_op.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_op.i.i, align 8
  %cmp.i.i = icmp eq ptr %19, @bpf_prog_iops
  br i1 %cmp.i.i, label %sw.bb.i.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.end6.i
  %cmp2.i.i = icmp eq ptr %19, @bpf_map_iops
  br i1 %cmp2.i.i, label %sw.bb1.i.i, label %if.else4.i.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  %cmp6.i.i = icmp eq ptr %19, @bpf_link_iops
  br i1 %cmp6.i.i, label %sw.bb2.i.i, label %if.else4.i.i.out.i_crit_edge

if.else4.i.i.out.i_crit_edge:                     ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

sw.bb.i.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_private30.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 54
  %20 = ptrtoint ptr %i_private30.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_private30.i, align 4
  call void @bpf_prog_inc(ptr noundef %21) #12
  br label %bpf_any_get.exit.i

sw.bb1.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_private33.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 54
  %22 = ptrtoint ptr %i_private33.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_private33.i, align 4
  call void @bpf_map_inc_with_uref(ptr noundef %23) #12
  br label %bpf_any_get.exit.i

sw.bb2.i.i:                                       ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_private.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 54
  %24 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_private.i, align 4
  call void @bpf_link_inc(ptr noundef %25) #12
  br label %bpf_any_get.exit.i

bpf_any_get.exit.i:                               ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %type.0 = phi i32 [ 1, %sw.bb.i.i ], [ 2, %sw.bb1.i.i ], [ 3, %sw.bb2.i.i ]
  %26 = phi ptr [ %21, %sw.bb.i.i ], [ %23, %sw.bb1.i.i ], [ %25, %sw.bb2.i.i ]
  %cmp.i26.i = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26.i, label %bpf_any_get.exit.i.if.end14.i_crit_edge, label %if.then13.i

bpf_any_get.exit.i.if.end14.i_crit_edge:          ; preds = %bpf_any_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then13.i:                                      ; preds = %bpf_any_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @touch_atime(ptr noundef nonnull %path.i) #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %bpf_any_get.exit.i.if.end14.i_crit_edge
  call void @path_put(ptr noundef nonnull %path.i) #12
  br label %bpf_obj_do_get.exit

out.i:                                            ; preds = %if.else4.i.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call2.i.i, %if.end.i.out.i_crit_edge ], [ -13, %if.else4.i.i.out.i_crit_edge ]
  call void @path_put(ptr noundef nonnull %path.i) #12
  %27 = inttoptr i32 %ret.0.i to ptr
  br label %bpf_obj_do_get.exit

bpf_obj_do_get.exit:                              ; preds = %out.i, %if.end14.i, %if.then.i
  %type.2 = phi i32 [ %type.0, %if.end14.i ], [ 0, %out.i ], [ 0, %if.then.i ]
  %retval.0.i = phi ptr [ %26, %if.end14.i ], [ %27, %out.i ], [ %3, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #12
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %bpf_obj_do_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end5:                                          ; preds = %bpf_obj_do_get.exit
  %29 = zext i32 %type.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %type.2, label %if.end5.cleanup_crit_edge [
    i32 1, label %if.then7
    i32 2, label %if.then10
    i32 3, label %if.then14
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = call i32 @bpf_prog_new_fd(ptr noundef %retval.0.i) #12
  br label %if.end20

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = call i32 @bpf_map_new_fd(ptr noundef %retval.0.i, i32 noundef %call) #12
  br label %if.end20

if.then14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp15.not = icmp eq i32 %call, 2
  br i1 %cmp15.not, label %cond.false, label %if.then14.sw.bb2.i_crit_edge

if.then14.sw.bb2.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

cond.false:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = call i32 @bpf_link_new_fd(ptr noundef %retval.0.i) #12
  br label %if.end20

if.end20:                                         ; preds = %cond.false, %if.then10, %if.then7
  %ret.0 = phi i32 [ %call8, %if.then7 ], [ %call11, %if.then10 ], [ %call16, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp21 = icmp slt i32 %ret.0, 0
  br i1 %cmp21, label %if.then22, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  %30 = zext i32 %type.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %type.2, label %land.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %if.then22.sw.bb2.i_crit_edge
  ]

if.then22.sw.bb2.i_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

sw.bb.i:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  call void @bpf_prog_put(ptr noundef %retval.0.i) #12
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  call void @bpf_map_put_with_uref(ptr noundef %retval.0.i) #12
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.then22.sw.bb2.i_crit_edge, %if.then14.sw.bb2.i_crit_edge
  %ret.04144 = phi i32 [ %ret.0, %if.then22.sw.bb2.i_crit_edge ], [ -22, %if.then14.sw.bb2.i_crit_edge ]
  call void @bpf_link_put(ptr noundef %retval.0.i) #12
  br label %cleanup

land.end.i:                                       ; preds = %if.then22
  %.b39.i = load i1, ptr @bpf_any_put.__already_done, align 1
  br i1 %.b39.i, label %land.end.i.cleanup_crit_edge, label %if.then.i37, !prof !80

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i37:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bpf_any_put.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 65, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i37, %land.end.i.cleanup_crit_edge, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.end20.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ -2, %if.end5.cleanup_crit_edge ], [ %ret.0, %if.end20.cleanup_crit_edge ], [ %ret.0, %sw.bb.i ], [ %ret.0, %sw.bb1.i ], [ %ret.04144, %sw.bb2.i ], [ %ret.0, %land.end.i.cleanup_crit_edge ], [ %ret.0, %if.then.i37 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_get_file_flag(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_new_fd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_map_new_fd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_link_new_fd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_prog_get_type_path(ptr noundef %name, i32 noundef %type) #0 align 64 {
entry:
  %type.addr.i = alloca i32, align 4
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #12
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !79
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !79
  %call = call i32 @kern_path(ptr noundef %name, i32 noundef 1, ptr noundef nonnull %path) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.addr.i)
  %8 = ptrtoint ptr %type.addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %type, ptr %type.addr.i, align 4
  %call.i = call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef %7, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = inttoptr i32 %call.i to ptr
  br label %__get_prog_inode.exit

if.end.i:                                         ; preds = %if.end
  %i_op.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %i_op.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_op.i, align 8
  %cmp.i = icmp eq ptr %11, @bpf_map_iops
  %cmp6.i = icmp eq ptr %11, @bpf_link_iops
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.end.i.__get_prog_inode.exit.thread_crit_edge, label %if.end9.i

if.end.i.__get_prog_inode.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__get_prog_inode.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %cmp11.not.i = icmp eq ptr %11, @bpf_prog_iops
  br i1 %cmp11.not.i, label %if.end14.i, label %if.end9.i.__get_prog_inode.exit.thread_crit_edge

if.end9.i.__get_prog_inode.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__get_prog_inode.exit.thread

if.end14.i:                                       ; preds = %if.end9.i
  %i_private.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 54
  %12 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_private.i, align 4
  %call15.i = call i32 @security_bpf_prog(ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then17.i, label %if.end19.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = inttoptr i32 %call15.i to ptr
  br label %__get_prog_inode.exit

if.end19.i:                                       ; preds = %if.end14.i
  %call20.i = call zeroext i1 @bpf_prog_get_ok(ptr noundef %13, ptr noundef nonnull %type.addr.i, i1 noundef zeroext false) #12
  br i1 %call20.i, label %if.end23.i, label %if.end19.i.__get_prog_inode.exit.thread_crit_edge

if.end19.i.__get_prog_inode.exit.thread_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__get_prog_inode.exit.thread

if.end23.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @bpf_prog_inc(ptr noundef %13) #12
  br label %__get_prog_inode.exit

__get_prog_inode.exit.thread:                     ; preds = %if.end19.i.__get_prog_inode.exit.thread_crit_edge, %if.end9.i.__get_prog_inode.exit.thread_crit_edge, %if.end.i.__get_prog_inode.exit.thread_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -22 to ptr), %if.end19.i.__get_prog_inode.exit.thread_crit_edge ], [ inttoptr (i32 -13 to ptr), %if.end9.i.__get_prog_inode.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.__get_prog_inode.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.addr.i)
  br label %if.end6

__get_prog_inode.exit:                            ; preds = %if.end23.i, %if.then17.i, %if.then.i
  %retval.0.i = phi ptr [ %9, %if.then.i ], [ %14, %if.then17.i ], [ %13, %if.end23.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.addr.i)
  %cmp.i11 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i11, label %__get_prog_inode.exit.if.end6_crit_edge, label %if.then5

__get_prog_inode.exit.if.end6_crit_edge:          ; preds = %__get_prog_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %__get_prog_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @touch_atime(ptr noundef nonnull %path) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %__get_prog_inode.exit.if.end6_crit_edge, %__get_prog_inode.exit.thread
  %retval.0.i14 = phi ptr [ %retval.0.i.ph, %__get_prog_inode.exit.thread ], [ %retval.0.i, %if.then5 ], [ %retval.0.i, %__get_prog_inode.exit.if.end6_crit_edge ]
  call void @path_put(ptr noundef nonnull %path) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  %retval.0 = phi ptr [ %3, %if.then ], [ %retval.0.i14, %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %0 = load ptr, ptr @fs_kobj, align 4
  %call = tail call i32 @sysfs_create_mount_point(ptr noundef %0, ptr noundef nonnull @.str.7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @bpf_fs_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fs_kobj to i32))
  %1 = load ptr, ptr @fs_kobj, align 4
  tail call void @sysfs_remove_mount_point(ptr noundef %1, ptr noundef nonnull @.str.7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_get_with_uref(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_link_get_from_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @user_path_create(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_path_mknod(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mkobj(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_mkprog(ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bpf_mkobj_ops(ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef %arg, ptr noundef nonnull @bpf_prog_iops, ptr noundef nonnull @bpffs_obj_fops)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_mkmap(ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %btf_value_type_id.i = getelementptr inbounds %struct.bpf_map, ptr %arg, i32 0, i32 14
  %0 = ptrtoint ptr %btf_value_type_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %btf_value_type_id.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.bpf_map_support_seq_show.exit_crit_edge

entry.bpf_map_support_seq_show.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_map_support_seq_show.exit

lor.lhs.false.i:                                  ; preds = %entry
  %btf_vmlinux_value_type_id.i = getelementptr inbounds %struct.bpf_map, ptr %arg, i32 0, i32 15
  %2 = ptrtoint ptr %btf_vmlinux_value_type_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %btf_vmlinux_value_type_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.bpf_map_support_seq_show.exit.thread_crit_edge, label %lor.lhs.false.i.bpf_map_support_seq_show.exit_crit_edge

lor.lhs.false.i.bpf_map_support_seq_show.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_map_support_seq_show.exit

lor.lhs.false.i.bpf_map_support_seq_show.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_map_support_seq_show.exit.thread

bpf_map_support_seq_show.exit:                    ; preds = %lor.lhs.false.i.bpf_map_support_seq_show.exit_crit_edge, %entry.bpf_map_support_seq_show.exit_crit_edge
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arg, align 128
  %map_seq_show_elem.i = getelementptr inbounds %struct.bpf_map_ops, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %map_seq_show_elem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map_seq_show_elem.i, align 4
  %tobool2.i.not = icmp eq ptr %7, null
  %spec.select = select i1 %tobool2.i.not, ptr @bpffs_obj_fops, ptr @bpffs_map_fops
  br label %bpf_map_support_seq_show.exit.thread

bpf_map_support_seq_show.exit.thread:             ; preds = %bpf_map_support_seq_show.exit, %lor.lhs.false.i.bpf_map_support_seq_show.exit.thread_crit_edge
  %8 = phi ptr [ @bpffs_obj_fops, %lor.lhs.false.i.bpf_map_support_seq_show.exit.thread_crit_edge ], [ %spec.select, %bpf_map_support_seq_show.exit ]
  %call1 = tail call fastcc i32 @bpf_mkobj_ops(ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef %arg, ptr noundef nonnull @bpf_map_iops, ptr noundef nonnull %8)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_mklink(ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @bpf_link_is_iter(ptr noundef %arg) #12
  %cond = select i1 %call, ptr @bpf_iter_fops, ptr @bpffs_obj_fops
  %call1 = tail call fastcc i32 @bpf_mkobj_ops(ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef %arg, ptr noundef nonnull @bpf_link_iops, ptr noundef nonnull %cond)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @done_path_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dir, align 8
  %2 = and i16 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 8
  %call = tail call ptr @strchr(ptr noundef %4, i32 noundef 46)
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call ptr @simple_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #12
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ inttoptr (i32 -1 to ptr), %land.lhs.true.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_link(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_unlink(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %target) #0 align 64 {
entry:
  %tmp.i15 = alloca %struct.timespec64, align 8
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @kstrdup(ptr noundef %target, i32 noundef 1060032) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call1.i = tail call ptr @new_inode(ptr noundef %1) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %bpf_get_inode.exit

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

bpf_get_inode.exit:                               ; preds = %if.end
  %call3.i = tail call i32 @get_next_ino() #12
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call3.i, ptr %i_ino.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call1.i) #12
  %3 = call ptr @memcpy(ptr %i_atime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #12
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 16
  %4 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_atime.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 17
  %5 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_atime.i, i32 16)
  call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call1.i, ptr noundef %dir, i16 noundef zeroext -24065) #12
  %cmp.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %bpf_get_inode.exit.if.then3_crit_edge, label %if.end5

bpf_get_inode.exit.if.then3_crit_edge:            ; preds = %bpf_get_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

if.then3:                                         ; preds = %bpf_get_inode.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i20 = phi ptr [ %call1.i, %bpf_get_inode.exit.if.then3_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.end.if.then3_crit_edge ]
  call void @kfree(ptr noundef nonnull %call) #12
  %6 = ptrtoint ptr %retval.0.i20 to i32
  br label %cleanup

if.end5:                                          ; preds = %bpf_get_inode.exit
  %i_op = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 7
  %7 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @simple_symlink_inode_operations, ptr %i_op, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 48
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %8, align 4
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call1.i) #12
  %tobool.not.i.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i.i, label %if.end5.bpf_dentry_finalize.exit_crit_edge, label %if.then.i.i

if.end5.bpf_dentry_finalize.exit_crit_edge:       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_dentry_finalize.exit

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i.i) #12
  br label %bpf_dentry_finalize.exit

bpf_dentry_finalize.exit:                         ; preds = %if.then.i.i, %if.end5.bpf_dentry_finalize.exit_crit_edge
  %i_mtime.i16 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i15) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i15, ptr noundef %dir) #12
  %10 = call ptr @memcpy(ptr %i_mtime.i16, ptr %tmp.i15, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i15) #12
  %i_ctime.i17 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %11 = call ptr @memcpy(ptr %i_ctime.i17, ptr %i_mtime.i16, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %bpf_dentry_finalize.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then3 ], [ 0, %bpf_dentry_finalize.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %tmp.i12 = alloca %struct.timespec64, align 8
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %mode, 16384
  %1 = and i16 %0, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %1)
  %cond = icmp eq i16 %1, 16384
  br i1 %cond, label %sw.epilog.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sw.epilog.i:                                      ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %call1.i = tail call ptr @new_inode(ptr noundef %3) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.if.then_crit_edge, label %bpf_get_inode.exit

sw.epilog.i.if.then_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

bpf_get_inode.exit:                               ; preds = %sw.epilog.i
  %call3.i = tail call i32 @get_next_ino() #12
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3.i, ptr %i_ino.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call1.i) #12
  %5 = call ptr @memcpy(ptr %i_atime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #12
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 16
  %6 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_atime.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 17
  %7 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_atime.i, i32 16)
  call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call1.i, ptr noundef %dir, i16 noundef zeroext %0) #12
  %cmp.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %bpf_get_inode.exit.if.then_crit_edge, label %if.end

bpf_get_inode.exit.if.then_crit_edge:             ; preds = %bpf_get_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %bpf_get_inode.exit.if.then_crit_edge, %sw.epilog.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i17 = phi ptr [ %call1.i, %bpf_get_inode.exit.if.then_crit_edge ], [ inttoptr (i32 -28 to ptr), %sw.epilog.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i17 to i32
  br label %cleanup

if.end:                                           ; preds = %bpf_get_inode.exit
  %i_op = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 7
  %9 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @bpf_dir_iops, ptr %i_op, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 44
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @simple_dir_operations, ptr %10, align 8
  call void @inc_nlink(ptr noundef nonnull %call1.i) #12
  call void @inc_nlink(ptr noundef %dir) #12
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call1.i) #12
  %tobool.not.i.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i.i, label %if.end.bpf_dentry_finalize.exit_crit_edge, label %if.then.i.i

if.end.bpf_dentry_finalize.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_dentry_finalize.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i.i) #12
  br label %bpf_dentry_finalize.exit

bpf_dentry_finalize.exit:                         ; preds = %if.then.i.i, %if.end.bpf_dentry_finalize.exit_crit_edge
  %i_mtime.i13 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i12) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i12, ptr noundef %dir) #12
  %12 = call ptr @memcpy(ptr %i_mtime.i13, ptr %tmp.i12, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i12) #12
  %i_ctime.i14 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %13 = call ptr @memcpy(ptr %i_ctime.i14, ptr %i_mtime.i13, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %bpf_dentry_finalize.exit, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ 0, %bpf_dentry_finalize.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_rmdir(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpf_mkobj_ops(ptr noundef %dentry, i16 noundef zeroext %mode, ptr noundef %raw, ptr noundef %iops, ptr noundef %fops) unnamed_addr #0 align 64 {
entry:
  %tmp.i12 = alloca %struct.timespec64, align 8
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  %4 = and i16 %mode, -4096
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %4, label %entry.if.then_crit_edge [
    i16 16384, label %entry.sw.epilog.i_crit_edge
    i16 -32768, label %entry.sw.epilog.i_crit_edge18
    i16 -24576, label %entry.sw.epilog.i_crit_edge19
  ]

entry.sw.epilog.i_crit_edge19:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge18:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sw.epilog.i:                                      ; preds = %entry.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge18, %entry.sw.epilog.i_crit_edge19
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %call1.i = tail call ptr @new_inode(ptr noundef %7) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.if.then_crit_edge, label %bpf_get_inode.exit

sw.epilog.i.if.then_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

bpf_get_inode.exit:                               ; preds = %sw.epilog.i
  %call3.i = tail call i32 @get_next_ino() #12
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call3.i, ptr %i_ino.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call1.i) #12
  %9 = call ptr @memcpy(ptr %i_atime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #12
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 16
  %10 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_atime.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 17
  %11 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_atime.i, i32 16)
  call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call1.i, ptr noundef %3, i16 noundef zeroext %mode) #12
  %cmp.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %bpf_get_inode.exit.if.then_crit_edge, label %if.end

bpf_get_inode.exit.if.then_crit_edge:             ; preds = %bpf_get_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %bpf_get_inode.exit.if.then_crit_edge, %sw.epilog.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i17 = phi ptr [ %call1.i, %bpf_get_inode.exit.if.then_crit_edge ], [ inttoptr (i32 -28 to ptr), %sw.epilog.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i17 to i32
  br label %cleanup

if.end:                                           ; preds = %bpf_get_inode.exit
  %i_op = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 7
  %13 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %iops, ptr %i_op, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 44
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %fops, ptr %14, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %call1.i, i32 0, i32 54
  %16 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %raw, ptr %i_private, align 4
  call void @d_instantiate(ptr noundef %dentry, ptr noundef nonnull %call1.i) #12
  %tobool.not.i.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i.i, label %if.end.bpf_dentry_finalize.exit_crit_edge, label %if.then.i.i

if.end.bpf_dentry_finalize.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %bpf_dentry_finalize.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i.i) #12
  br label %bpf_dentry_finalize.exit

bpf_dentry_finalize.exit:                         ; preds = %if.then.i.i, %if.end.bpf_dentry_finalize.exit_crit_edge
  %i_mtime.i13 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i12) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i12, ptr noundef %3) #12
  %17 = call ptr @memcpy(ptr %i_mtime.i13, ptr %tmp.i12, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i12) #12
  %i_ctime.i14 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  %18 = call ptr @memcpy(ptr %i_ctime.i14, ptr %i_mtime.i13, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %bpf_dentry_finalize.exit, %if.then
  %retval.0 = phi i32 [ %12, %if.then ], [ 0, %bpf_dentry_finalize.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bpffs_obj_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpffs_map_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 11712, i32 noundef 8) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end8.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %entry
  %key_size.i = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key_size.i, align 16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 11712) #16
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i.i, ptr %call7.i.i.i, align 8
  %tobool3.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool3.not.i, label %if.then.i.i, label %if.end

if.then.i.i:                                      ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef null) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.end8.i.i.i
  %call1 = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @bpffs_map_seq_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %map_iter_free.exit

map_iter_free.exit:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @kfree(ptr noundef %7) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i, ptr %private, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %map_iter_free.exit, %if.then.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %map_iter_free.exit ], [ 0, %if.end4 ], [ -12, %if.then.i.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpffs_map_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private.i = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.map_iter_free.exit_crit_edge, label %if.then.i

entry.map_iter_free.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %map_iter_free.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %5) #12
  tail call void @kfree(ptr noundef nonnull %3) #12
  br label %map_iter_free.exit

map_iter_free.exit:                               ; preds = %if.then.i, %entry.map_iter_free.exit_crit_edge
  %call1 = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %file) #12
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @map_seq_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %done = getelementptr inbounds %struct.map_iter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %done, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.not = icmp eq i64 %5, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %cond.true

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  br label %return

return:                                           ; preds = %cond.true, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %7, %cond.true ], [ inttoptr (i32 1 to ptr), %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @map_seq_stop(ptr nocapture noundef %m, ptr nocapture noundef %v) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @map_seq_next(ptr nocapture noundef readonly %m, ptr noundef readnone %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %file.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %private.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %pos, align 8
  %12 = load ptr, ptr %private.i, align 8
  %done = getelementptr inbounds %struct.map_iter, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %done, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %. = select i1 %cmp, ptr null, ptr %9, !prof !83
  %15 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !84
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 128
  %map_get_next_key = getelementptr inbounds %struct.bpf_map_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %map_get_next_key to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map_get_next_key, align 4
  %call8 = tail call i32 %22(ptr noundef %5, ptr noundef %., ptr noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %rcu_read_lock.exit.if.end13_crit_edge, label %if.then10

rcu_read_lock.exit.if.end13_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then10:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private.i, align 8
  %done12 = getelementptr inbounds %struct.map_iter, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %done12 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %done12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %rcu_read_lock.exit.if.end13_crit_edge
  %key.0 = phi ptr [ null, %if.then10 ], [ %9, %rcu_read_lock.exit.if.end13_crit_edge ]
  %call.i24 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i24, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i27

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i27:                                ; preds = %if.end13
  %call1.i25 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i29

land.lhs.true.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i29:                               ; preds = %land.lhs.true.i27
  %.b4.i28 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28, label %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, label %if.then.i30

land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i30:                                      ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i30, %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !85
  %26 = tail call i32 @llvm.read_register.i32(metadata !69) #12
  %and.i.i.i.i.i31 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i31 to ptr
  %preempt_count.i.i.i.i32 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i32, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i32, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %key.0, %rcu_read_unlock.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_seq_show(ptr noundef %m, ptr noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else, !prof !83

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.3) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.4) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %private.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %file.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_private.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 128
  %map_seq_show_elem = getelementptr inbounds %struct.bpf_map_ops, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %map_seq_show_elem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map_seq_show_elem, align 4
  tail call void %13(ptr noundef %7, ptr noundef %9, ptr noundef %m) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_link_is_iter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_put_with_uref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_link_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_inc_with_uref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_link_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_bpf_prog(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_prog_get_ok(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_init_fs_context(ptr nocapture noundef writeonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 511, ptr %call7.i.i, align 8
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %2 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %fs_private, align 4
  %3 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bpf_context_ops, ptr %fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_free_fc(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_parse_param(ptr noundef %fc, ptr noundef %param) #0 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #12
  %2 = call ptr @memset(ptr %result, i32 255, i32 16)
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @bpf_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -519, i32 %call.i)
  %cmp1 = icmp eq i32 %call.i, -519
  br i1 %cmp1, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = call i32 @vfs_parse_fs_param_source(ptr noundef %fc, ptr noundef %param) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -519, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, -519
  %.call3 = select i1 %cmp4.not, i32 0, i32 %call3
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cond = icmp eq i32 %call.i, 0
  br i1 %cond, label %sw.bb, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %3 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = trunc i32 %5 to i16
  %conv = and i16 %6, 4095
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %1, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end10.cleanup_crit_edge, %if.then2, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %.call3, %if.then2 ], [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_tree_nodev(ptr noundef %fc, ptr noundef nonnull @bpf_fill_super) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_param_source(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_nodev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_fill_super(ptr noundef %sb, ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  %objs.i = alloca [2 x %struct.bpf_preload_info], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %call = tail call i32 @simple_fill_super(ptr noundef %sb, i32 noundef -889304559, ptr noundef nonnull @bpf_fill_super.bpf_rfiles) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_op = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 6
  %2 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @bpf_super_ops, ptr %s_op, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %3 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_root, align 64
  %d_inode = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bpf_dir_iops, ptr %i_op, align 8
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %6, align 8
  %10 = and i16 %9, -4096
  store i16 %10, ptr %6, align 8
  %11 = load ptr, ptr %s_root, align 64
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %objs.i) #12
  %12 = call ptr @memset(ptr %objs.i, i32 0, i32 40)
  tail call void @mutex_lock_nested(ptr noundef nonnull @bpf_preload_lock, i32 noundef 0) #12
  %13 = load ptr, ptr @bpf_preload_ops, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.if.end3.i.i_crit_edge

if.end.if.end3.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

if.then.i.i:                                      ; preds = %if.end
  %call.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.12) #12
  %14 = load ptr, ptr @bpf_preload_ops, align 4
  %tobool1.not.i.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i.i, label %if.then.i.i.out.thread.i_crit_edge, label %if.then.i.i.if.end3.i.i_crit_edge

if.then.i.i.if.end3.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

if.then.i.i.out.thread.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread.i

if.end3.i.i:                                      ; preds = %if.then.i.i.if.end3.i.i_crit_edge, %if.end.if.end3.i.i_crit_edge
  %15 = load ptr, ptr @bpf_preload_ops, align 4
  %owner.i.i = getelementptr inbounds %struct.bpf_preload_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %owner.i.i, align 4
  %call4.i.i = tail call zeroext i1 @try_module_get(ptr noundef %17) #12
  br i1 %call4.i.i, label %if.end.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #17
  br label %out.thread.i

if.end.i:                                         ; preds = %if.end3.i.i
  %18 = load ptr, ptr @bpf_preload_ops, align 4
  %tgid.i = getelementptr inbounds %struct.umd_info, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %tgid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tgid.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i.out_put.i_crit_edge

if.end.i.out_put.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_put.i

if.then1.i:                                       ; preds = %if.end.i
  %preload.i = getelementptr inbounds %struct.bpf_preload_ops, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %preload.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %preload.i, align 4
  %call2.i = call i32 %22(ptr noundef nonnull %objs.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.body.preheader.i, label %if.then1.i.out_putthread-pre-split.i_crit_edge

if.then1.i.out_putthread-pre-split.i_crit_edge:   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_putthread-pre-split.i

for.body.preheader.i:                             ; preds = %if.then1.i
  %link_id.i = getelementptr inbounds [2 x %struct.bpf_preload_info], ptr %objs.i, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %link_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %link_id.i, align 4
  %call6.i = call ptr @bpf_link_by_id(i32 noundef %24) #12
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.preheader.i.if.then10.i_crit_edge, label %for.cond.i

for.body.preheader.i.if.then10.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i

for.cond.i:                                       ; preds = %for.body.preheader.i
  %link_id.1.i = getelementptr inbounds [2 x %struct.bpf_preload_info], ptr %objs.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %link_id.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %link_id.1.i, align 4
  %call6.1.i = call ptr @bpf_link_by_id(i32 noundef %26) #12
  %cmp.i.1.i = icmp ugt ptr %call6.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.cond.i.if.then10.i_crit_edge, label %for.cond.1.i

for.cond.i.if.then10.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %27 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i.i) #12
  %call.i1.i = call i32 @strlen(ptr noundef nonnull %objs.i) #18
  %call1.i.i = call ptr @lookup_one_len(ptr noundef nonnull %objs.i, ptr noundef %11, i32 noundef %call.i1.i) #12
  %cmp.i.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i2.i, label %if.end.i.i

if.then10.i:                                      ; preds = %for.cond.i.if.then10.i_crit_edge, %for.body.preheader.i.if.then10.i_crit_edge
  %links.i.sroa.6.0 = phi ptr [ null, %for.body.preheader.i.if.then10.i_crit_edge ], [ %call6.1.i, %for.cond.i.if.then10.i_crit_edge ]
  %call6.lcssa.i = phi ptr [ %call6.i, %for.body.preheader.i.if.then10.i_crit_edge ], [ %call6.1.i, %for.cond.i.if.then10.i_crit_edge ]
  %29 = ptrtoint ptr %call6.lcssa.i to i32
  br label %out_putthread-pre-split.i

if.then.i2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i16.i.i = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i16.i.i) #12
  %32 = ptrtoint ptr %call1.i.i to i32
  br label %bpf_iter_link_pin_kernel.exit.i

if.end.i.i:                                       ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i.i = call fastcc i32 @bpf_mkobj_ops(ptr noundef %call1.i.i, i16 noundef zeroext -32512, ptr noundef %call6.i, ptr noundef nonnull @bpf_link_iops, ptr noundef nonnull @bpf_iter_fops) #12
  call void @dput(ptr noundef %call1.i.i) #12
  %33 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i17.i.i = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i17.i.i) #12
  br label %bpf_iter_link_pin_kernel.exit.i

bpf_iter_link_pin_kernel.exit.i:                  ; preds = %if.end.i.i, %if.then.i2.i
  %retval.0.i3.i = phi i32 [ %32, %if.then.i2.i ], [ %call5.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i3.i)
  %tobool21.not.i = icmp eq i32 %retval.0.i3.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %bpf_iter_link_pin_kernel.exit.i.out_putthread-pre-split.i_crit_edge

bpf_iter_link_pin_kernel.exit.i.out_putthread-pre-split.i_crit_edge: ; preds = %bpf_iter_link_pin_kernel.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_putthread-pre-split.i

if.end23.i:                                       ; preds = %bpf_iter_link_pin_kernel.exit.i
  %arrayidx17.1.i = getelementptr inbounds [2 x %struct.bpf_preload_info], ptr %objs.i, i32 0, i32 1
  %35 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i.i.1.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i.1.i) #12
  %call.i1.1.i = call i32 @strlen(ptr noundef %arrayidx17.1.i) #18
  %call1.i.1.i = call ptr @lookup_one_len(ptr noundef %arrayidx17.1.i, ptr noundef %11, i32 noundef %call.i1.1.i) #12
  %cmp.i.i.1.i = icmp ugt ptr %call1.i.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.1.i, label %if.then.i2.1.i, label %if.end.i.1.i

if.end.i.1.i:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i.1.i = call fastcc i32 @bpf_mkobj_ops(ptr noundef %call1.i.1.i, i16 noundef zeroext -32512, ptr noundef %call6.1.i, ptr noundef nonnull @bpf_link_iops, ptr noundef nonnull @bpf_iter_fops) #12
  call void @dput(ptr noundef %call1.i.1.i) #12
  %37 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i17.i.1.i = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i17.i.1.i) #12
  br label %bpf_iter_link_pin_kernel.exit.1.i

if.then.i2.1.i:                                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_inode.i.i, align 8
  %i_rwsem.i16.i.1.i = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i16.i.1.i) #12
  %41 = ptrtoint ptr %call1.i.1.i to i32
  br label %bpf_iter_link_pin_kernel.exit.1.i

bpf_iter_link_pin_kernel.exit.1.i:                ; preds = %if.then.i2.1.i, %if.end.i.1.i
  %retval.0.i3.1.i = phi i32 [ %41, %if.then.i2.1.i ], [ %call5.i.1.i, %if.end.i.1.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i3.1.i)
  %tobool21.not.1.i = icmp eq i32 %retval.0.i3.1.i, 0
  br i1 %tobool21.not.1.i, label %if.end23.1.i, label %bpf_iter_link_pin_kernel.exit.1.i.out_putthread-pre-split.i_crit_edge

bpf_iter_link_pin_kernel.exit.1.i.out_putthread-pre-split.i_crit_edge: ; preds = %bpf_iter_link_pin_kernel.exit.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_putthread-pre-split.i

if.end23.1.i:                                     ; preds = %bpf_iter_link_pin_kernel.exit.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = load ptr, ptr @bpf_preload_ops, align 4
  %finish.i = getelementptr inbounds %struct.bpf_preload_ops, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %finish.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %finish.i, align 4
  %call28.i = call i32 %44() #12
  br label %out_putthread-pre-split.i

out_putthread-pre-split.i:                        ; preds = %if.end23.1.i, %bpf_iter_link_pin_kernel.exit.1.i.out_putthread-pre-split.i_crit_edge, %bpf_iter_link_pin_kernel.exit.i.out_putthread-pre-split.i_crit_edge, %if.then10.i, %if.then1.i.out_putthread-pre-split.i_crit_edge
  %links.i.sroa.6.1 = phi ptr [ %links.i.sroa.6.0, %if.then10.i ], [ null, %if.end23.1.i ], [ %call6.1.i, %bpf_iter_link_pin_kernel.exit.1.i.out_putthread-pre-split.i_crit_edge ], [ %call6.1.i, %bpf_iter_link_pin_kernel.exit.i.out_putthread-pre-split.i_crit_edge ], [ null, %if.then1.i.out_putthread-pre-split.i_crit_edge ]
  %links.i.sroa.0.0 = phi ptr [ %call6.i, %if.then10.i ], [ null, %if.end23.1.i ], [ null, %bpf_iter_link_pin_kernel.exit.1.i.out_putthread-pre-split.i_crit_edge ], [ %call6.i, %bpf_iter_link_pin_kernel.exit.i.out_putthread-pre-split.i_crit_edge ], [ null, %if.then1.i.out_putthread-pre-split.i_crit_edge ]
  %err.0.ph.i = phi i32 [ %29, %if.then10.i ], [ %call28.i, %if.end23.1.i ], [ %retval.0.i3.1.i, %bpf_iter_link_pin_kernel.exit.1.i.out_putthread-pre-split.i_crit_edge ], [ %retval.0.i3.i, %bpf_iter_link_pin_kernel.exit.i.out_putthread-pre-split.i_crit_edge ], [ %call2.i, %if.then1.i.out_putthread-pre-split.i_crit_edge ]
  %.pr.i = load ptr, ptr @bpf_preload_ops, align 4
  br label %out_put.i

out_put.i:                                        ; preds = %out_putthread-pre-split.i, %if.end.i.out_put.i_crit_edge
  %links.i.sroa.6.2 = phi ptr [ %links.i.sroa.6.1, %out_putthread-pre-split.i ], [ null, %if.end.i.out_put.i_crit_edge ]
  %links.i.sroa.0.1 = phi ptr [ %links.i.sroa.0.0, %out_putthread-pre-split.i ], [ null, %if.end.i.out_put.i_crit_edge ]
  %45 = phi ptr [ %.pr.i, %out_putthread-pre-split.i ], [ %18, %if.end.i.out_put.i_crit_edge ]
  %err.0.i = phi i32 [ %err.0.ph.i, %out_putthread-pre-split.i ], [ 0, %if.end.i.out_put.i_crit_edge ]
  %tobool.not.i4.i = icmp eq ptr %45, null
  br i1 %tobool.not.i4.i, label %out_put.i.out.i_crit_edge, label %if.then.i6.i

out_put.i.out.i_crit_edge:                        ; preds = %out_put.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then.i6.i:                                     ; preds = %out_put.i
  call void @__sanitizer_cov_trace_pc() #14
  %owner.i5.i = getelementptr inbounds %struct.bpf_preload_ops, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %owner.i5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %owner.i5.i, align 4
  call void @module_put(ptr noundef %47) #12
  br label %out.i

out.thread.i:                                     ; preds = %do.end.i.i, %if.then.i.i.out.thread.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bpf_preload_lock) #12
  br label %populate_bpffs.exit

out.i:                                            ; preds = %if.then.i6.i, %out_put.i.out.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @bpf_preload_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool35.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool35.not.i, label %out.i.populate_bpffs.exit_crit_edge, label %for.body36.i.preheader

out.i.populate_bpffs.exit_crit_edge:              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %populate_bpffs.exit

for.body36.i.preheader:                           ; preds = %out.i
  %tobool.not.i8.i = icmp eq ptr %links.i.sroa.0.1, null
  %cmp.i9.i = icmp ugt ptr %links.i.sroa.0.1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i8.i, %cmp.i9.i
  br i1 %spec.select.i.i, label %for.body36.i.preheader.for.inc42.i_crit_edge, label %if.then39.i

for.body36.i.preheader.for.inc42.i_crit_edge:     ; preds = %for.body36.i.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc42.i

if.then39.i:                                      ; preds = %for.body36.i.preheader
  call void @__sanitizer_cov_trace_pc() #14
  call void @bpf_link_put(ptr noundef nonnull %links.i.sroa.0.1) #12
  br label %for.inc42.i

for.inc42.i:                                      ; preds = %if.then39.i, %for.body36.i.preheader.for.inc42.i_crit_edge
  %tobool.not.i8.i.1 = icmp eq ptr %links.i.sroa.6.2, null
  %cmp.i9.i.1 = icmp ugt ptr %links.i.sroa.6.2, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.1 = or i1 %tobool.not.i8.i.1, %cmp.i9.i.1
  br i1 %spec.select.i.i.1, label %for.inc42.i.populate_bpffs.exit_crit_edge, label %if.then39.i.1

for.inc42.i.populate_bpffs.exit_crit_edge:        ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %populate_bpffs.exit

if.then39.i.1:                                    ; preds = %for.inc42.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @bpf_link_put(ptr noundef nonnull %links.i.sroa.6.2) #12
  br label %populate_bpffs.exit

populate_bpffs.exit:                              ; preds = %if.then39.i.1, %for.inc42.i.populate_bpffs.exit_crit_edge, %out.i.populate_bpffs.exit_crit_edge, %out.thread.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %objs.i) #12
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %1, align 2
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %6, align 8
  %52 = or i16 %49, %51
  %or717 = or i16 %52, 512
  store i16 %or717, ptr %6, align 8
  br label %cleanup

cleanup:                                          ; preds = %populate_bpffs.exit, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_fill_super(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_free_inode(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %2)
  %cmp = icmp eq i16 %2, -24576
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i_op.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %6 = ptrtoint ptr %i_op.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_op.i, align 8
  %cmp.i = icmp eq ptr %7, @bpf_prog_iops
  br i1 %cmp.i, label %sw.bb.i, label %if.else.i

if.else.i:                                        ; preds = %if.end
  %cmp2.i = icmp eq ptr %7, @bpf_map_iops
  br i1 %cmp2.i, label %sw.bb1.i, label %if.else4.i

if.else4.i:                                       ; preds = %if.else.i
  %cmp6.i = icmp eq ptr %7, @bpf_link_iops
  br i1 %cmp6.i, label %sw.bb2.i, label %if.else4.i.if.end3_crit_edge

if.else4.i.if.end3_crit_edge:                     ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_private13 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %8 = ptrtoint ptr %i_private13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_private13, align 4
  tail call void @bpf_prog_put(ptr noundef %9) #12
  br label %if.end3

sw.bb1.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_private16 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %10 = ptrtoint ptr %i_private16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_private16, align 4
  tail call void @bpf_map_put_with_uref(ptr noundef %11) #12
  br label %if.end3

sw.bb2.i:                                         ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %12 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_private, align 4
  tail call void @bpf_link_put(ptr noundef %13) #12
  br label %if.end3

if.end3:                                          ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.else4.i.if.end3_crit_edge
  tail call void @free_inode_nonrcu(ptr noundef %inode) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, 3583
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %4)
  %cmp.not = icmp eq i16 %4, 511
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv3 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, i32 noundef %conv3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_inode_nonrcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_link_by_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !26, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !60, !62, !63, !64, !65, !67}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__ksymtab_bpf_prog_get_type_path, !1, !"__ksymtab_bpf_prog_get_type_path", i1 false, i1 false}
!1 = !{!"../kernel/bpf/inode.c", i32 599, i32 1}
!2 = !{ptr @__ksymtab_bpf_preload_ops, !3, !"__ksymtab_bpf_preload_ops", i1 false, i1 false}
!3 = !{!"../kernel/bpf/inode.c", i32 678, i32 1}
!4 = !{ptr @__initcall__kmod_inode__462_839_bpf_init5, !5, !"__initcall__kmod_inode__462_839_bpf_init5", i1 false, i1 false}
!5 = !{!"../kernel/bpf/inode.c", i32 839, i32 1}
!6 = !{ptr @bpf_preload_ops, !7, !"bpf_preload_ops", i1 false, i1 false}
!7 = !{!"../kernel/bpf/inode.c", i32 677, i32 25}
!8 = !{ptr @bpf_dir_iops, !9, !"bpf_dir_iops", i1 false, i1 false}
!9 = !{!"../kernel/bpf/inode.c", i32 407, i32 38}
!10 = !{ptr @bpf_prog_iops, !11, !"bpf_prog_iops", i1 false, i1 false}
!11 = !{!"../kernel/bpf/inode.c", i32 97, i32 38}
!12 = !{ptr @bpffs_obj_fops, !13, !"bpffs_obj_fops", i1 false, i1 false}
!13 = !{!"../kernel/bpf/inode.c", i32 327, i32 37}
!14 = !{ptr @bpf_map_iops, !15, !"bpf_map_iops", i1 false, i1 false}
!15 = !{!"../kernel/bpf/inode.c", i32 98, i32 38}
!16 = !{ptr @bpffs_map_fops, !17, !"bpffs_map_fops", i1 false, i1 false}
!17 = !{!"../kernel/bpf/inode.c", i32 316, i32 37}
!18 = !{ptr @bpffs_map_seq_ops, !19, !"bpffs_map_seq_ops", i1 false, i1 false}
!19 = !{!"../kernel/bpf/inode.c", i32 267, i32 36}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/bpf/inode.c", i32 258, i32 15}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/bpf/inode.c", i32 259, i32 15}
!31 = !{ptr @bpf_link_iops, !32, !"bpf_link_iops", i1 false, i1 false}
!32 = !{!"../kernel/bpf/inode.c", i32 99, i32 38}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../kernel/bpf/inode.c", i32 65, i32 3}
!35 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/bpf/inode.c", i32 511, i32 31}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../kernel/bpf/inode.c", i32 45, i32 3}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/bpf/inode.c", i32 829, i32 42}
!42 = !{ptr @bpf_fs_type, !43, !"bpf_fs_type", i1 false, i1 false}
!43 = !{!"../kernel/bpf/inode.c", i32 817, i32 32}
!44 = !{ptr @bpf_context_ops, !45, !"bpf_context_ops", i1 false, i1 false}
!45 = !{!"../kernel/bpf/inode.c", i32 793, i32 43}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/bpf/inode.c", i32 764, i32 52}
!48 = !{ptr @bpf_fill_super.bpf_rfiles, !49, !"bpf_rfiles", i1 false, i1 false}
!49 = !{!"../kernel/bpf/inode.c", i32 764, i32 33}
!50 = !{ptr @bpf_super_ops, !51, !"bpf_super_ops", i1 false, i1 false}
!51 = !{!"../kernel/bpf/inode.c", i32 624, i32 38}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/bpf/inode.c", i32 609, i32 17}
!54 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/bpf/inode.c", i32 708, i32 8}
!56 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @bpf_preload_lock, !55, !"bpf_preload_lock", i1 false, i1 false}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../kernel/bpf/inode.c", i32 687, i32 3}
!60 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/bpf/inode.c", i32 695, i32 3}
!62 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @bpf_preload_mod_get._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @bpf_preload_mod_get._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/bpf/inode.c", i32 636, i32 2}
!67 = !{ptr @bpf_fs_parameters, !68, !"bpf_fs_parameters", i1 false, i1 false}
!68 = !{!"../kernel/bpf/inode.c", i32 635, i32 39}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2149694049}
!82 = !{i8 0, i8 2}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 2149972936}
!85 = !{i64 2149973202}
