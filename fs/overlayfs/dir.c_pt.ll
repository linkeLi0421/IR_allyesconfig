; ModuleID = '/llk/IR_all_yes/fs/overlayfs/dir.c_pt.bc'
source_filename = "../fs/overlayfs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.21 }
%union.anon.21 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
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
%struct.ctl_table_header = type { %union.anon.31, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
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
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.renamedata = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ovl_fs = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.ovl_config, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32 }
%struct.ovl_config = type { ptr, ptr, ptr, i8, i8, i8, ptr, i8, i8, i8, i32, i8, i8, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.75 = type { ptr }
%struct.ovl_cattr = type { i32, i16, ptr, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.40 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.40 = type { %struct.callback_head }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.71 }
%union.anon.71 = type { %struct.kuid_t }
%struct.ovl_inode_params = type { ptr, ptr, ptr, i8, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }

@__param_str_redirect_max = internal constant [21 x i8] c"overlay.redirect_max\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@ovl_redirect_max = internal global { i16, [30 x i8] } { i16 256, [30 x i8] zeroinitializer }, align 32
@__param_redirect_max = internal constant %struct.kernel_param { ptr @__param_str_redirect_max, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @ovl_redirect_max } }, section "__param", align 4
@__UNIQUE_ID_redirect_maxtype248 = internal constant [37 x i8] c"overlay.parmtype=redirect_max:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_redirect_max249 = internal constant [74 x i8] c"overlay.parm=redirect_max:Maximum length of absolute redirect xattr value\00", section ".modinfo", align 1
@ovl_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013overlayfs: cleanup of '%pd2' failed (%i)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ovl_cleanup\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/overlayfs/dir.c\00", [45 x i8] zeroinitializer }, align 32
@ovl_cleanup._entry_ptr = internal global ptr @ovl_cleanup._entry, section ".printk_index", align 4
@ovl_lookup_temp.temp_id = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"#%x\00", [28 x i8] zeroinitializer }, align 32
@ovl_lookup_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013overlayfs: workdir/%s already exists\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ovl_lookup_temp\00", [16 x i8] zeroinitializer }, align 32
@ovl_lookup_temp._entry_ptr = internal global ptr @ovl_lookup_temp._entry, section ".printk_index", align 4
@ovl_mkdir_real._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014overlayfs: failed lookup after mkdir (%pd2, err=%i).\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ovl_mkdir_real\00", [17 x i8] zeroinitializer }, align 32
@ovl_mkdir_real._entry_ptr = internal global ptr @ovl_mkdir_real._entry, section ".printk_index", align 4
@ovl_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @ovl_lookup, ptr null, ptr @ovl_permission, ptr @ovl_get_acl, ptr null, ptr @ovl_create, ptr @ovl_link, ptr @ovl_unlink, ptr @ovl_symlink, ptr @ovl_mkdir, ptr @ovl_rmdir, ptr @ovl_mknod, ptr @ovl_rename, ptr @ovl_setattr, ptr @ovl_getattr, ptr @ovl_listxattr, ptr null, ptr @ovl_update_time, ptr null, ptr null, ptr null, ptr @ovl_fileattr_set, ptr @ovl_fileattr_get, [36 x i8] undef }, align 128
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ovl_do_rmdir.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overlay\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ovl_do_rmdir\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/overlayfs/overlayfs.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rmdir(%pd2) = %i\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"overlayfs: rmdir(%pd2) = %i\0A\00", [35 x i8] zeroinitializer }, align 32
@ovl_do_unlink.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.10, ptr @.str.14, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ovl_do_unlink\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unlink(%pd2) = %i\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"overlayfs: unlink(%pd2) = %i\0A\00", [34 x i8] zeroinitializer }, align 32
@ovl_whiteout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\014overlayfs: Failed to link whiteout - disabling whiteout inode sharing(nlink=%u, err=%i)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ovl_whiteout\00", [19 x i8] zeroinitializer }, align 32
@ovl_whiteout._entry_ptr = internal global ptr @ovl_whiteout._entry, section ".printk_index", align 4
@ovl_do_whiteout.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.18, ptr @.str.10, ptr @.str.19, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ovl_do_whiteout\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"whiteout(%pd2) = %i\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"overlayfs: whiteout(%pd2) = %i\0A\00", [32 x i8] zeroinitializer }, align 32
@ovl_do_rename.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.10, ptr @.str.22, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ovl_do_rename\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rename(%pd2, %pd2, 0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"overlayfs: rename(%pd2, %pd2, 0x%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@ovl_do_rename.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.10, ptr @.str.24, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"...rename(%pd2, %pd2, ...) = %i\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"overlayfs: ...rename(%pd2, %pd2, ...) = %i\0A\00", [52 x i8] zeroinitializer }, align 32
@ovl_do_mkdir.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.26, ptr @.str.10, ptr @.str.27, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ovl_do_mkdir\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mkdir(%pd2, 0%o) = %i\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"overlayfs: mkdir(%pd2, 0%o) = %i\0A\00", [62 x i8] zeroinitializer }, align 32
@ovl_do_link.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.29, ptr @.str.10, ptr @.str.30, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ovl_do_link\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"link(%pd2, %pd2) = %i\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"overlayfs: link(%pd2, %pd2) = %i\0A\00", [62 x i8] zeroinitializer }, align 32
@ovl_do_create.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.32, ptr @.str.10, ptr @.str.33, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ovl_do_create\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"create(%pd2, 0%o) = %i\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"overlayfs: create(%pd2, 0%o) = %i\0A\00", [61 x i8] zeroinitializer }, align 32
@ovl_do_mknod.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.35, ptr @.str.10, ptr @.str.36, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ovl_do_mknod\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mknod(%pd2, 0%o, 0%o) = %i\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"overlayfs: mknod(%pd2, 0%o, 0%o) = %i\0A\00", [57 x i8] zeroinitializer }, align 32
@ovl_do_symlink.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.38, ptr @.str.10, ptr @.str.39, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ovl_do_symlink\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"symlink(\22%s\22, %pd2) = %i\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"overlayfs: symlink(\22%s\22, %pd2) = %i\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"y\00", [30 x i8] zeroinitializer }, align 32
@ovl_instantiate._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ovl_instantiate = private unnamed_addr constant [16 x i8] c"ovl_instantiate\00", align 1
@ovl_instantiate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.ovl_instantiate, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014overlayfs: newly created inode found in cache (%pd2)\0A\00", [40 x i8] zeroinitializer }, align 32
@ovl_instantiate._entry_ptr = internal global ptr @ovl_instantiate._entry, section ".printk_index", align 4
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@ovl_set_redirect._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ovl_set_redirect = private unnamed_addr constant [17 x i8] c"ovl_set_redirect\00", align 1
@ovl_set_redirect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @__func__.ovl_set_redirect, ptr @.str.2, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014overlayfs: failed to set redirect (%i)\0A\00", [54 x i8] zeroinitializer }, align 32
@ovl_set_redirect._entry_ptr = internal global ptr @ovl_set_redirect._entry, section ".printk_index", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967265]
@__sancov_gen_cov_switch_values.49 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"ovl_redirect_max\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 19, i32 23 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 38, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [8 x i8] c"temp_id\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 49, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 52, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 56, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 160, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 129, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 137, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 96, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 245, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 233, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 236, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 163, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 146, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 155, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 172, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [28 x i8] c"../fs/overlayfs/overlayfs.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 181, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 286, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 238, i32 57 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 299, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 519, i32 38 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 524, i32 38 }
@___asan_gen_.215 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.222 = private constant [22 x i8] c"../fs/overlayfs/dir.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 1070, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 271, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_redirect_max249, ptr @__UNIQUE_ID_redirect_maxtype248, ptr @__param_redirect_max, ptr @ovl_cleanup._entry, ptr @ovl_cleanup._entry_ptr, ptr @ovl_instantiate._entry, ptr @ovl_instantiate._entry_ptr, ptr @ovl_lookup_temp._entry, ptr @ovl_lookup_temp._entry_ptr, ptr @ovl_mkdir_real._entry, ptr @ovl_mkdir_real._entry_ptr, ptr @ovl_set_redirect._entry, ptr @ovl_set_redirect._entry_ptr, ptr @ovl_whiteout._entry, ptr @ovl_whiteout._entry_ptr, ptr @ovl_redirect_max, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ovl_lookup_temp.temp_id, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @ovl_instantiate._rs, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @ovl_set_redirect._rs, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_redirect_max to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup_temp.temp_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_lookup_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_mkdir_real._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_whiteout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_instantiate._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_instantiate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_set_redirect._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovl_set_redirect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_cleanup(ptr noundef %wdir, ptr noundef %wdentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wdentry, null
  br i1 %tobool.not.i, label %entry.dget.exit_crit_edge, label %if.then.i

entry.dget.exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dget.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %wdentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #11
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %entry.dget.exit_crit_edge
  %0 = ptrtoint ptr %wdentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wdentry, align 8
  %2 = and i32 %1, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %2)
  %3 = icmp eq i32 %2, 2097152
  br i1 %3, label %if.then, label %if.else

if.then:                                          ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @vfs_rmdir(ptr noundef nonnull @init_user_ns, ptr noundef %wdir, ptr noundef %wdentry) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_rmdir.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_cleanup, %if.then.i15)) #11
          to label %if.end [label %if.then.i15], !srcloc !120

if.then.i15:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_rmdir.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.12, ptr noundef %wdentry, i32 noundef %call.i) #11
  br label %if.end

if.else:                                          ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i16 = tail call i32 @vfs_unlink(ptr noundef nonnull @init_user_ns, ptr noundef %wdir, ptr noundef %wdentry, ptr noundef null) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_unlink.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_cleanup, %if.then.i17)) #11
          to label %if.end [label %if.then.i17], !srcloc !120

if.then.i17:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_unlink.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.15, ptr noundef %wdentry, i32 noundef %call.i16) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i17, %if.else, %if.then.i15, %if.then
  %err.0 = phi i32 [ %call.i, %if.then ], [ %call.i, %if.then.i15 ], [ %call.i16, %if.else ], [ %call.i16, %if.then.i17 ]
  tail call void @dput(ptr noundef %wdentry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %wdentry, i32 noundef %err.0) #14
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_lookup_temp(ptr noundef %workdir) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name) #11
  %0 = call ptr @memset(ptr %name, i32 255, i32 20)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ovl_lookup_temp.temp_id, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr nonnull @ovl_lookup_temp.temp_id, i32 1, i32 3, i32 1) #11
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ovl_lookup_temp.temp_id, ptr nonnull @ovl_lookup_temp.temp_id, i32 1, ptr nonnull elementtype(i32) @ovl_lookup_temp.temp_id) #11, !srcloc !122
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !123
  %call1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 20, ptr noundef nonnull @.str.3, i32 noundef %asmresult.i.i.i.i)
  %call4 = call i32 @strlen(ptr noundef nonnull %name) #15
  %call5 = call ptr @lookup_one_len(ptr noundef nonnull %name, ptr noundef %workdir, i32 noundef %call4) #11
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %d_inode = getelementptr inbounds %struct.dentry, ptr %call5, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %name) #14
  call void @dput(ptr noundef %call5) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %temp.0 = phi ptr [ %call5, %entry.if.end_crit_edge ], [ inttoptr (i32 -5 to ptr), %do.end ], [ %call5, %land.lhs.true.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name) #11
  ret ptr %temp.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_cleanup_and_whiteout(ptr nocapture noundef %ofs, ptr noundef %dir, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  %rd.i = alloca %struct.renamedata, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %workdir = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 5
  %0 = ptrtoint ptr %workdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workdir, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  %call = tail call fastcc ptr @ovl_whiteout(ptr noundef %ofs)
  %4 = ptrtoint ptr %call to i32
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dentry, align 8
  %7 = and i32 %6, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %7)
  %8 = icmp eq i32 %7, 2097152
  %spec.select = select i1 %8, i32 2, i32 0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rd.i) #11
  %9 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 4
  %13 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 5
  %14 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 6
  %15 = getelementptr inbounds %struct.renamedata, ptr %rd.i, i32 0, i32 7
  %16 = ptrtoint ptr %rd.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @init_user_ns, ptr %rd.i, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %9, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %10, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @init_user_ns, ptr %11, align 4
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dir, ptr %12, align 4
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dentry, ptr %13, align 4
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %14, align 4
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select, ptr %15, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_rename.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_cleanup_and_whiteout, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !120

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_rename.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.23, ptr noundef %call, ptr noundef %dentry, i32 noundef %spec.select) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %call4.i = call i32 @vfs_rename(ptr noundef nonnull %rd.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end8, label %do.body7.i

do.body7.i:                                       ; preds = %do.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_rename.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_cleanup_and_whiteout, %if.then19.i)) #11
          to label %kill_whiteout [label %if.then19.i], !srcloc !120

if.then19.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_rename.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.25, ptr noundef %call, ptr noundef %dentry, i32 noundef %call4.i) #11
  br label %kill_whiteout

if.end8:                                          ; preds = %do.end.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rd.i) #11
  br i1 %8, label %if.end8.out.sink.split_crit_edge, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end8.out.sink.split_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.sink.split

out.sink.split:                                   ; preds = %kill_whiteout, %if.end8.out.sink.split_crit_edge
  %dentry.sink = phi ptr [ %call, %kill_whiteout ], [ %dentry, %if.end8.out.sink.split_crit_edge ]
  %call11 = call i32 @ovl_cleanup(ptr noundef %3, ptr noundef %dentry.sink)
  br label %out

out:                                              ; preds = %out.sink.split, %if.end8.out_crit_edge
  call void @dput(ptr noundef %call) #11
  br label %cleanup

kill_whiteout:                                    ; preds = %if.then19.i, %do.body7.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rd.i) #11
  br label %out.sink.split

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %out ], [ %4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovl_whiteout(ptr nocapture noundef %ofs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %workdir1 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 5
  %0 = ptrtoint ptr %workdir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workdir1, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  %whiteout2 = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 20
  %4 = ptrtoint ptr %whiteout2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %whiteout2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %entry
  %call = tail call ptr @ovl_lookup_temp(ptr noundef %1)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %if.then
  %call.i.i = tail call i32 @vfs_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %call, i16 noundef zeroext 8192, i32 noundef 0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_whiteout.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_whiteout, %if.then.i)) #11
          to label %ovl_do_whiteout.exit [label %if.then.i], !srcloc !120

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_whiteout.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.20, ptr noundef %call, i32 noundef %call.i.i) #11
  br label %ovl_do_whiteout.exit

ovl_do_whiteout.exit:                             ; preds = %if.then.i, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %ovl_do_whiteout.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dput(ptr noundef %call) #11
  %6 = inttoptr i32 %call.i.i to ptr
  br label %out

if.end9:                                          ; preds = %ovl_do_whiteout.exit
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %whiteout2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %whiteout2, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %entry.if.end11_crit_edge
  %share_whiteout = getelementptr inbounds %struct.ovl_fs, ptr %ofs, i32 0, i32 14
  %8 = ptrtoint ptr %share_whiteout to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %share_whiteout, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.end11.if.end29_crit_edge, label %if.then13

if.end11.if.end29_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then13:                                        ; preds = %if.end11
  %call14 = tail call ptr @ovl_lookup_temp(ptr noundef %1)
  %cmp.i54 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %if.then13.out_crit_edge, label %if.end17

if.then13.out_crit_edge:                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end17:                                         ; preds = %if.then13
  %10 = ptrtoint ptr %whiteout2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %whiteout2, align 4
  %call.i = tail call i32 @vfs_link(ptr noundef %11, ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %call14, ptr noundef null) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_link.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_whiteout, %if.then.i55)) #11
          to label %ovl_do_link.exit [label %if.then.i55], !srcloc !120

if.then.i55:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_link.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.31, ptr noundef %11, ptr noundef %call14, i32 noundef %call.i) #11
  br label %ovl_do_link.exit

ovl_do_link.exit:                                 ; preds = %if.then.i55, %if.end17
  %12 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %do.end [
    i32 0, label %ovl_do_link.exit.out_crit_edge
    i32 -31, label %ovl_do_link.exit.if.end28_crit_edge
  ]

ovl_do_link.exit.if.end28_crit_edge:              ; preds = %ovl_do_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

ovl_do_link.exit.out_crit_edge:                   ; preds = %ovl_do_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end:                                           ; preds = %ovl_do_link.exit
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %whiteout2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %whiteout2, align 4
  %d_inode25 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode25, align 8
  %17 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %19, i32 noundef %call.i) #14
  %20 = ptrtoint ptr %share_whiteout to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %share_whiteout, align 4
  br label %if.end28

if.end28:                                         ; preds = %do.end, %ovl_do_link.exit.if.end28_crit_edge
  tail call void @dput(ptr noundef %call14) #11
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end11.if.end29_crit_edge
  %21 = ptrtoint ptr %whiteout2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %whiteout2, align 4
  store ptr null, ptr %whiteout2, align 4
  br label %out

out:                                              ; preds = %if.end29, %ovl_do_link.exit.out_crit_edge, %if.then13.out_crit_edge, %if.then7, %if.then.out_crit_edge
  %whiteout.0 = phi ptr [ %call14, %if.then13.out_crit_edge ], [ %22, %if.end29 ], [ %call14, %ovl_do_link.exit.out_crit_edge ], [ %call, %if.then.out_crit_edge ], [ %6, %if.then7 ]
  ret ptr %whiteout.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_do_rename(ptr noundef %olddir, ptr noundef %olddentry, ptr noundef %newdir, ptr noundef %newdentry, i32 noundef %flags) unnamed_addr #6 align 64 {
entry:
  %rd = alloca %struct.renamedata, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rd) #11
  %0 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 2
  %2 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 3
  %3 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 4
  %4 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 5
  %5 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 6
  %6 = getelementptr inbounds %struct.renamedata, ptr %rd, i32 0, i32 7
  %7 = ptrtoint ptr %rd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @init_user_ns, ptr %rd, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %olddir, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %olddentry, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @init_user_ns, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %newdir, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %newdentry, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %5, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %flags, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_rename.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_do_rename, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_rename.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.23, ptr noundef %olddentry, ptr noundef %newdentry, i32 noundef %flags) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = call i32 @vfs_rename(ptr noundef nonnull %rd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end.if.end23_crit_edge, label %do.body7

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_rename.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_do_rename, %if.then19)) #11
          to label %if.end23 [label %if.then19], !srcloc !120

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_rename.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.25, ptr noundef %olddentry, ptr noundef %newdentry, i32 noundef %call4) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %do.body7, %do.end.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rd) #11
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovl_mkdir_real(ptr noundef %dir, ptr nocapture noundef %newdentry, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %newdentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %newdentry, align 4
  %call.i = tail call i32 @vfs_mkdir(ptr noundef nonnull @init_user_ns, ptr noundef %dir, ptr noundef %1, i16 noundef zeroext %mode) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_mkdir.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_mkdir_real, %if.then.i)) #11
          to label %ovl_do_mkdir.exit [label %if.then.i], !srcloc !120

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %mode to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_mkdir.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.28, ptr noundef %1, i32 noundef %conv.i, i32 noundef %call.i) #11
  br label %ovl_do_mkdir.exit

ovl_do_mkdir.exit:                                ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %ovl_do_mkdir.exit.cleanup_crit_edge

ovl_do_mkdir.exit.cleanup_crit_edge:              ; preds = %ovl_do_mkdir.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %ovl_do_mkdir.exit
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.not, label %if.end7, label %if.end.cleanup_crit_edge, !prof !125

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %d_name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %d_parent = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_parent, align 8
  %8 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %d_name, align 8
  %call9 = tail call ptr @lookup_one_len(ptr noundef %5, ptr noundef %7, i32 noundef %9) #11
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef 0) #14
  %10 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dput(ptr noundef %1) #11
  %11 = ptrtoint ptr %newdentry to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %newdentry, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end, %if.end.cleanup_crit_edge, %ovl_do_mkdir.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ 0, %if.end14 ], [ %call.i, %ovl_do_mkdir.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_create_real(ptr noundef %dir, ptr noundef %newdentry, ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %newdentry.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %newdentry.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %newdentry, ptr %newdentry.addr, align 4
  %cmp.i = icmp ugt ptr %newdentry, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode = getelementptr inbounds %struct.dentry, ptr %newdentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end2, label %if.end.if.then47_crit_edge

if.end.if.then47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then47

if.end2:                                          ; preds = %if.end
  %hardlink = getelementptr inbounds %struct.ovl_cattr, ptr %attr, i32 0, i32 3
  %3 = ptrtoint ptr %hardlink to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hardlink, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @vfs_link(ptr noundef nonnull %4, ptr noundef nonnull @init_user_ns, ptr noundef %dir, ptr noundef %newdentry, ptr noundef null) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_link.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_create_real, %if.then.i)) #11
          to label %if.end17 [label %if.then.i], !srcloc !120

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_link.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.31, ptr noundef nonnull %4, ptr noundef %newdentry, i32 noundef %call.i) #11
  br label %if.end17

if.else:                                          ; preds = %if.end2
  %mode = getelementptr inbounds %struct.ovl_cattr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mode, align 4
  %7 = and i16 %6, -4096
  %and = zext i16 %7 to i32
  %8 = add nsw i32 %and, -4096
  %9 = lshr exact i32 %8, 12
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %9, label %if.else.if.then47_crit_edge [
    i32 7, label %sw.bb
    i32 3, label %sw.bb9
    i32 1, label %if.else.sw.bb12_crit_edge
    i32 5, label %if.else.sw.bb12_crit_edge71
    i32 0, label %if.else.sw.bb12_crit_edge72
    i32 11, label %if.else.sw.bb12_crit_edge73
    i32 9, label %sw.bb15
  ]

if.else.sw.bb12_crit_edge73:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

if.else.sw.bb12_crit_edge72:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

if.else.sw.bb12_crit_edge71:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

if.else.sw.bb12_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb12

if.else.if.then47_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then47

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call fastcc i32 @ovl_do_create(ptr noundef %dir, ptr noundef %newdentry, i16 noundef zeroext %6)
  br label %if.end17

sw.bb9:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = call i32 @ovl_mkdir_real(ptr noundef %dir, ptr noundef nonnull %newdentry.addr, i16 noundef zeroext %6)
  br label %if.end17

sw.bb12:                                          ; preds = %if.else.sw.bb12_crit_edge, %if.else.sw.bb12_crit_edge71, %if.else.sw.bb12_crit_edge72, %if.else.sw.bb12_crit_edge73
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attr, align 4
  %call.i64 = tail call i32 @vfs_mknod(ptr noundef nonnull @init_user_ns, ptr noundef %dir, ptr noundef %newdentry, i16 noundef zeroext %6, i32 noundef %12) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_mknod.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_create_real, %if.then.i65)) #11
          to label %if.end17 [label %if.then.i65], !srcloc !120

if.then.i65:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_mknod.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.37, ptr noundef %newdentry, i32 noundef %conv.i, i32 noundef %12, i32 noundef %call.i64) #11
  br label %if.end17

sw.bb15:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %link = getelementptr inbounds %struct.ovl_cattr, ptr %attr, i32 0, i32 2
  %13 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %link, align 4
  %call16 = tail call fastcc i32 @ovl_do_symlink(ptr noundef %dir, ptr noundef %newdentry, ptr noundef %14)
  br label %if.end17

if.end17:                                         ; preds = %sw.bb15, %if.then.i65, %sw.bb12, %sw.bb9, %sw.bb, %if.then.i, %if.then4
  %err.0 = phi i32 [ %call16, %sw.bb15 ], [ %call11, %sw.bb9 ], [ %call8, %sw.bb ], [ %call.i, %if.then4 ], [ %call.i, %if.then.i ], [ %call.i64, %sw.bb12 ], [ %call.i64, %if.then.i65 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool18.not = icmp eq i32 %err.0, 0
  br i1 %tobool18.not, label %land.lhs.true, label %if.end17.if.then47_crit_edge

if.end17.if.then47_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then47

land.lhs.true:                                    ; preds = %if.end17
  %15 = ptrtoint ptr %newdentry.addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %newdentry.addr, align 4
  %d_inode19 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode19, align 8
  %tobool20.not = icmp eq ptr %18, null
  br i1 %tobool20.not, label %select.unfold, label %if.end49, !prof !125

select.unfold:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 211, i32 noundef 9, ptr noundef null) #11
  br label %if.then47

if.then47:                                        ; preds = %select.unfold, %if.end17.if.then47_crit_edge, %if.else.if.then47_crit_edge, %if.end.if.then47_crit_edge
  %err.1.ph = phi i32 [ -5, %select.unfold ], [ %err.0, %if.end17.if.then47_crit_edge ], [ -116, %if.end.if.then47_crit_edge ], [ -1, %if.else.if.then47_crit_edge ]
  %19 = ptrtoint ptr %newdentry.addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %newdentry.addr, align 4
  tail call void @dput(ptr noundef %20) #11
  %21 = inttoptr i32 %err.1.ph to ptr
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %newdentry.addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %newdentry.addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then47, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %21, %if.then47 ], [ %23, %if.end49 ], [ %newdentry, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_do_create(ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @vfs_create(ptr noundef nonnull @init_user_ns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext true) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_create.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_do_create, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %mode to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_create.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.34, ptr noundef %dentry, i32 noundef %conv, i32 noundef %call) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_do_symlink(ptr noundef %dir, ptr noundef %dentry, ptr noundef %oldname) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @vfs_symlink(ptr noundef nonnull @init_user_ns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %oldname) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovl_do_symlink.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovl_do_symlink, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovl_do_symlink.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.40, ptr noundef %oldname, ptr noundef %dentry, i32 noundef %call) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovl_create_temp(ptr noundef %workdir, ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %workdir, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call ptr @ovl_lookup_temp(ptr noundef %workdir)
  %call2 = tail call ptr @ovl_create_real(ptr noundef %1, ptr noundef %call1, ptr noundef %attr)
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_lookup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_permission(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_create(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %mode, 4095
  %1 = or i16 %0, -32768
  %or = zext i16 %1 to i32
  %call = tail call fastcc i32 @ovl_create_object(ptr noundef %dentry, i32 noundef %or, i32 noundef 0, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_link(ptr noundef %old, ptr nocapture noundef readnone %newdir, ptr noundef %new) #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.ovl_cattr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ovl_want_write(ptr noundef %old) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ovl_copy_up(ptr noundef %old) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_drop_write_crit_edge

if.end.out_drop_write_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop_write

if.end4:                                          ; preds = %if.end
  %d_parent = getelementptr inbounds %struct.dentry, ptr %new, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %call5 = tail call i32 @ovl_copy_up(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_drop_write_crit_edge

if.end4.out_drop_write_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop_write

if.end8:                                          ; preds = %if.end4
  %call9 = tail call zeroext i1 @ovl_is_metacopy_dentry(ptr noundef %old) #11
  br i1 %call9, label %if.then10, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %old, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb.i, align 4
  %call.i = tail call ptr @ovl_override_creds(ptr noundef %3) #11
  %call1.i = tail call fastcc i32 @ovl_set_redirect(ptr noundef %old, i1 noundef zeroext false) #11
  tail call void @revert_creds(ptr noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool12.not = icmp eq i32 %call1.i, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then10.out_drop_write_crit_edge

if.then10.out_drop_write_crit_edge:               ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop_write

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %call16 = tail call i32 @ovl_nlink_start(ptr noundef %old) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_drop_write_crit_edge

if.end15.out_drop_write_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop_write

if.end19:                                         ; preds = %if.end15
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  tail call void @ihold(ptr noundef %5) #11
  %6 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %.compoundliteral, align 4
  %mode = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral, i32 0, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %mode, align 4
  %link = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral, i32 0, i32 2
  %8 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %link, align 4
  %hardlink = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral, i32 0, i32 3
  %call21 = tail call ptr @ovl_dentry_upper(ptr noundef %old) #11
  %9 = ptrtoint ptr %hardlink to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21, ptr %hardlink, align 4
  %call.i45 = tail call i32 @ovl_path_type(ptr noundef %old) #11
  %and.i = and i32 %call.i45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %call23 = call fastcc i32 @ovl_create_or_link(ptr noundef %new, ptr noundef %5, ptr noundef nonnull %.compoundliteral, i1 noundef zeroext %tobool.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end19.if.end26_crit_edge, label %if.then25

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @iput(ptr noundef %5) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end19.if.end26_crit_edge
  call void @ovl_nlink_end(ptr noundef %old) #11
  br label %out_drop_write

out_drop_write:                                   ; preds = %if.end26, %if.end15.out_drop_write_crit_edge, %if.then10.out_drop_write_crit_edge, %if.end4.out_drop_write_crit_edge, %if.end.out_drop_write_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.out_drop_write_crit_edge ], [ %call5, %if.end4.out_drop_write_crit_edge ], [ %call1.i, %if.then10.out_drop_write_crit_edge ], [ %call16, %if.end15.out_drop_write_crit_edge ], [ %call23, %if.end26 ]
  call void @ovl_drop_write(ptr noundef %old) #11
  br label %out

out:                                              ; preds = %out_drop_write, %entry.out_crit_edge
  %err.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %err.0, %out_drop_write ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_unlink(ptr nocapture noundef readnone %dir, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ovl_do_remove(ptr noundef %dentry, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_symlink(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %dir, ptr noundef %dentry, ptr noundef %link) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ovl_create_object(ptr noundef %dentry, i32 noundef 40960, i32 noundef 0, ptr noundef %link)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %mode, 4095
  %1 = or i16 %0, 16384
  %or = zext i16 %1 to i32
  %call = tail call fastcc i32 @ovl_create_object(ptr noundef %dentry, i32 noundef %or, i32 noundef 0, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_rmdir(ptr nocapture noundef readnone %dir, ptr noundef %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ovl_do_remove(ptr noundef %dentry, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_mknod(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %mode to i32
  %and = and i32 %conv, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and)
  %cmp = icmp eq i32 %and, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rdev)
  %cmp2 = icmp eq i32 %rdev, 0
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @ovl_create_object(ptr noundef %dentry, i32 noundef %conv, i32 noundef %rdev, ptr noundef null)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovl_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef readnone %olddir, ptr noundef %old, ptr noundef readnone %newdir, ptr noundef %new, i32 noundef %flags) #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %0 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %old, align 8
  %2 = and i32 %1, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %2)
  %3 = icmp eq i32 %2, 2097152
  %4 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new, align 8
  %6 = and i32 %5, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %6)
  %7 = icmp eq i32 %6, 2097152
  %cmp = icmp eq ptr %olddir, %newdir
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %8 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %flags)
  %tobool6.not = icmp ult i32 %flags, 4
  br i1 %tobool6.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %and7 = and i32 %flags, -2
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %old, i32 0, i32 9
  %11 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_sb.i, align 4
  %call.i = call zeroext i1 @ovl_redirect_dir(ptr noundef %12) #11
  br i1 %call.i, label %if.end.if.end10_crit_edge, label %lor.lhs.false.i

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

lor.lhs.false.i:                                  ; preds = %if.end
  %13 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old, align 8
  %15 = and i32 %14, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %15)
  %16 = icmp eq i32 %15, 2097152
  br i1 %16, label %ovl_can_move.exit, label %lor.lhs.false.i.if.end10_crit_edge

lor.lhs.false.i.if.end10_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

ovl_can_move.exit:                                ; preds = %lor.lhs.false.i
  %call.i.i = call i32 @ovl_path_type(ptr noundef %old) #11
  %17 = and i32 %call.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %.not.i = icmp eq i32 %17, 1
  br i1 %.not.i, label %ovl_can_move.exit.if.end10_crit_edge, label %ovl_can_move.exit.out_crit_edge

ovl_can_move.exit.out_crit_edge:                  ; preds = %ovl_can_move.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ovl_can_move.exit.if.end10_crit_edge:             ; preds = %ovl_can_move.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %ovl_can_move.exit.if.end10_crit_edge, %lor.lhs.false.i.if.end10_crit_edge, %if.end.if.end10_crit_edge
  br i1 %tobool.not, label %land.lhs.true16.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %d_sb.i391 = getelementptr inbounds %struct.dentry, ptr %new, i32 0, i32 9
  %18 = ptrtoint ptr %d_sb.i391 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_sb.i391, align 4
  %call.i392 = call zeroext i1 @ovl_redirect_dir(ptr noundef %19) #11
  br i1 %call.i392, label %land.lhs.true.if.end42_crit_edge, label %lor.lhs.false.i393

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

lor.lhs.false.i393:                               ; preds = %land.lhs.true
  %20 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %new, align 8
  %22 = and i32 %21, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %22)
  %23 = icmp eq i32 %22, 2097152
  br i1 %23, label %ovl_can_move.exit397, label %lor.lhs.false.i393.if.end42_crit_edge

lor.lhs.false.i393.if.end42_crit_edge:            ; preds = %lor.lhs.false.i393
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

ovl_can_move.exit397:                             ; preds = %lor.lhs.false.i393
  %call.i.i394 = call i32 @ovl_path_type(ptr noundef %new) #11
  %24 = and i32 %call.i.i394, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %.not.i395 = icmp eq i32 %24, 1
  br i1 %.not.i395, label %ovl_can_move.exit397.if.end42_crit_edge, label %ovl_can_move.exit397.out_crit_edge

ovl_can_move.exit397.out_crit_edge:               ; preds = %ovl_can_move.exit397
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ovl_can_move.exit397.if.end42_crit_edge:          ; preds = %ovl_can_move.exit397
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

land.lhs.true16.critedge:                         ; preds = %if.end10
  br i1 %7, label %land.lhs.true18, label %land.lhs.true16.critedge.if.then27_crit_edge

land.lhs.true16.critedge.if.then27_crit_edge:     ; preds = %land.lhs.true16.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

land.lhs.true18:                                  ; preds = %land.lhs.true16.critedge
  %call.i398 = call ptr @ovl_dentry_lower(ptr noundef %new) #11
  %tobool.not.i = icmp eq ptr %call.i398, null
  br i1 %tobool.not.i, label %ovl_pure_upper.exit, label %land.lhs.true18.if.then20_crit_edge

land.lhs.true18.if.then20_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

ovl_pure_upper.exit:                              ; preds = %land.lhs.true18
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %new, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i.i, align 8
  %flags.i.i = getelementptr i8, ptr %26, i32 -8
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i.i, align 4
  %29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i, label %ovl_pure_upper.exit.if.then27_crit_edge, label %ovl_pure_upper.exit.if.then20_crit_edge

ovl_pure_upper.exit.if.then20_crit_edge:          ; preds = %ovl_pure_upper.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

ovl_pure_upper.exit.if.then27_crit_edge:          ; preds = %ovl_pure_upper.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

if.then20:                                        ; preds = %ovl_pure_upper.exit.if.then20_crit_edge, %land.lhs.true18.if.then20_crit_edge
  %call21 = call i32 @ovl_check_empty_dir(ptr noundef %new, ptr noundef nonnull %list) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.if.then27_crit_edge, label %if.then20.out_crit_edge

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then20.if.then27_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

if.then27:                                        ; preds = %if.then20.if.then27_crit_edge, %ovl_pure_upper.exit.if.then27_crit_edge, %land.lhs.true16.critedge.if.then27_crit_edge
  %call28 = call zeroext i1 @ovl_lower_positive(ptr noundef %old) #11
  br i1 %call28, label %if.then29, label %if.else34

if.then29:                                        ; preds = %if.then27
  %call30 = call zeroext i1 @ovl_dentry_is_whiteout(ptr noundef %new) #11
  br i1 %call30, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %and7, 4
  br label %if.end42

if.else:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %or32 = or i32 %and7, 2
  br label %if.end42

if.else34:                                        ; preds = %if.then27
  br i1 %3, label %land.lhs.true36, label %if.else34.if.end42_crit_edge

if.else34.if.end42_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

land.lhs.true36:                                  ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = call zeroext i1 @ovl_dentry_is_whiteout(ptr noundef %new) #11
  %or39 = or i32 %and7, 2
  %spec.select = select i1 %call37, i32 %or39, i32 %and7
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true36, %if.else34.if.end42_crit_edge, %if.else, %if.then31, %ovl_can_move.exit397.if.end42_crit_edge, %lor.lhs.false.i393.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge
  %flags.addr.0 = phi i32 [ %or32, %if.else ], [ %or, %if.then31 ], [ %and7, %if.else34.if.end42_crit_edge ], [ %spec.select, %land.lhs.true36 ], [ %and7, %ovl_can_move.exit397.if.end42_crit_edge ], [ %and7, %lor.lhs.false.i393.if.end42_crit_edge ], [ %and7, %land.lhs.true.if.end42_crit_edge ]
  %cleanup_whiteout.0.off0 = phi i1 [ false, %if.else ], [ false, %if.then31 ], [ false, %if.else34.if.end42_crit_edge ], [ %call37, %land.lhs.true36 ], [ false, %ovl_can_move.exit397.if.end42_crit_edge ], [ false, %lor.lhs.false.i393.if.end42_crit_edge ], [ false, %land.lhs.true.if.end42_crit_edge ]
  %call43 = call i32 @ovl_want_write(ptr noundef %old) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.out_crit_edge

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end46:                                         ; preds = %if.end42
  %call47 = call i32 @ovl_copy_up(ptr noundef %old) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.out_drop_write_crit_edge

if.end46.out_drop_write_crit_edge:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop_write

if.end50:                                         ; preds = %if.end46
  %d_parent = getelementptr inbounds %struct.dentry, ptr %new, i32 0, i32 3
  %30 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_parent, align 8
  %call51 = call i32 @ovl_copy_up(ptr noundef %31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.out_drop_write_crit_edge

if.end50.out_drop_write_crit_edge:                ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop_write

if.end54:                                         ; preds = %if.end50
  br i1 %tobool.not, label %if.else61, label %if.then56

if.then56:                                        ; preds = %if.end54
  %call57 = call i32 @ovl_copy_up(ptr noundef %new) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then56.if.end70_crit_edge, label %if.then56.out_drop_write_crit_edge

if.then56.out_drop_write_crit_edge:               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop_write

if.then56.if.end70_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.else61:                                        ; preds = %if.end54
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %new, i32 0, i32 5
  %32 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_inode.i, align 8
  %tobool63.not = icmp eq ptr %33, null
  br i1 %tobool63.not, label %if.else61.if.end70_crit_edge, label %if.then64

if.else61.if.end70_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then64:                                        ; preds = %if.else61
  %call65 = call i32 @ovl_nlink_start(ptr noundef %new) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.if.end70_crit_edge, label %if.then64.out_drop_write_crit_edge

if.then64.out_drop_write_crit_edge:               ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop_write

if.then64.if.end70_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.end70:                                         ; preds = %if.then64.if.end70_crit_edge, %if.else61.if.end70_crit_edge, %if.then56.if.end70_crit_edge
  %update_nlink.0.off0 = phi i1 [ false, %if.else61.if.end70_crit_edge ], [ false, %if.then56.if.end70_crit_edge ], [ true, %if.then64.if.end70_crit_edge ]
  %34 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_sb.i, align 4
  %call71 = call ptr @ovl_override_creds(ptr noundef %35) #11
  %36 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %37, %list
  br i1 %cmp.i.not, label %if.end70.if.end80_crit_edge, label %if.then74

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then74:                                        ; preds = %if.end70
  %call75 = call fastcc ptr @ovl_clear_empty(ptr noundef %new, ptr noundef nonnull %list)
  %38 = ptrtoint ptr %call75 to i32
  %cmp.i399 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i399, label %if.then74.out_revert_creds_crit_edge, label %if.then74.if.end80_crit_edge

if.then74.if.end80_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then74.out_revert_creds_crit_edge:             ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_revert_creds

if.end80:                                         ; preds = %if.then74.if.end80_crit_edge, %if.end70.if.end80_crit_edge
  %opaquedir.0 = phi ptr [ null, %if.end70.if.end80_crit_edge ], [ %call75, %if.then74.if.end80_crit_edge ]
  %d_parent81 = getelementptr inbounds %struct.dentry, ptr %old, i32 0, i32 3
  %39 = ptrtoint ptr %d_parent81 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d_parent81, align 8
  %call82 = call ptr @ovl_dentry_upper(ptr noundef %40) #11
  %41 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d_parent, align 8
  %call84 = call ptr @ovl_dentry_upper(ptr noundef %42) #11
  br i1 %cmp, label %if.end80.if.end105_crit_edge, label %if.then86

if.end80.if.end105_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then86:                                        ; preds = %if.end80
  %call.i400 = call i32 @ovl_path_type(ptr noundef %old) #11
  %and.i = and i32 %call.i400, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then86.if.end94_crit_edge, label %if.then88

if.then86.if.end94_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then88:                                        ; preds = %if.then86
  %43 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d_parent, align 8
  %call90 = call i32 @ovl_set_impure(ptr noundef %44, ptr noundef %call84) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then88.if.end94_crit_edge, label %if.then88.out_revert_creds_crit_edge

if.then88.out_revert_creds_crit_edge:             ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_revert_creds

if.then88.if.end94_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.end94:                                         ; preds = %if.then88.if.end94_crit_edge, %if.then86.if.end94_crit_edge
  br i1 %tobool.not, label %if.end94.if.end105_crit_edge, label %land.lhs.true96

if.end94.if.end105_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

land.lhs.true96:                                  ; preds = %if.end94
  %call.i401 = call i32 @ovl_path_type(ptr noundef %new) #11
  %and.i402 = and i32 %call.i401, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i402)
  %tobool.i403.not = icmp eq i32 %and.i402, 0
  br i1 %tobool.i403.not, label %land.lhs.true96.if.end105_crit_edge, label %if.then98

land.lhs.true96.if.end105_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then98:                                        ; preds = %land.lhs.true96
  %45 = ptrtoint ptr %d_parent81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %d_parent81, align 8
  %call100 = call i32 @ovl_set_impure(ptr noundef %46, ptr noundef %call82) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then98.if.end105_crit_edge, label %if.then98.out_revert_creds_crit_edge

if.then98.out_revert_creds_crit_edge:             ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_revert_creds

if.then98.if.end105_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.end105:                                        ; preds = %if.then98.if.end105_crit_edge, %land.lhs.true96.if.end105_crit_edge, %if.end94.if.end105_crit_edge, %if.end80.if.end105_crit_edge
  %call106 = call ptr @lock_rename(ptr noundef %call84, ptr noundef %call82) #11
  %d_name = getelementptr inbounds %struct.dentry, ptr %old, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %old, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name, align 8
  %49 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %d_name, align 8
  %call108 = call ptr @lookup_one_len(ptr noundef %48, ptr noundef %call82, i32 noundef %50) #11
  %51 = ptrtoint ptr %call108 to i32
  %cmp.i404 = icmp ugt ptr %call108, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i404, label %if.end105.out_unlock_crit_edge, label %if.end112

if.end105.out_unlock_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end112:                                        ; preds = %if.end105
  %call.i405 = call ptr @ovl_dentry_upper(ptr noundef %old) #11
  %d_inode.i.i406 = getelementptr inbounds %struct.dentry, ptr %call.i405, i32 0, i32 5
  %52 = ptrtoint ptr %d_inode.i.i406 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %d_inode.i.i406, align 8
  %d_inode.i3.i = getelementptr inbounds %struct.dentry, ptr %call108, i32 0, i32 5
  %54 = ptrtoint ptr %d_inode.i3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d_inode.i3.i, align 8
  %cmp.i407 = icmp eq ptr %53, %55
  br i1 %cmp.i407, label %if.end115, label %if.end112.out_dput_old_crit_edge

if.end112.out_dput_old_crit_edge:                 ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput_old

if.end115:                                        ; preds = %if.end112
  %d_name116 = getelementptr inbounds %struct.dentry, ptr %new, i32 0, i32 4
  %name117 = getelementptr inbounds %struct.dentry, ptr %new, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %name117 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name117, align 8
  %58 = ptrtoint ptr %d_name116 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %d_name116, align 8
  %call120 = call ptr @lookup_one_len(ptr noundef %57, ptr noundef %call84, i32 noundef %59) #11
  %60 = ptrtoint ptr %call120 to i32
  %cmp.i408 = icmp ugt ptr %call120, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i408, label %if.end115.out_dput_old_crit_edge, label %if.end124

if.end115.out_dput_old_crit_edge:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput_old

if.end124:                                        ; preds = %if.end115
  %call125 = call zeroext i1 @ovl_dentry_is_opaque(ptr noundef %old) #11
  %call127 = call zeroext i1 @ovl_dentry_is_opaque(ptr noundef %new) #11
  %d_inode.i409 = getelementptr inbounds %struct.dentry, ptr %new, i32 0, i32 5
  %61 = ptrtoint ptr %d_inode.i409 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %d_inode.i409, align 8
  %tobool130.not = icmp eq ptr %62, null
  br i1 %tobool130.not, label %if.end124.if.else145_crit_edge, label %land.lhs.true131

if.end124.if.else145_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else145

land.lhs.true131:                                 ; preds = %if.end124
  %call132 = call ptr @ovl_dentry_upper(ptr noundef %new) #11
  %tobool133.not = icmp eq ptr %call132, null
  br i1 %tobool133.not, label %land.lhs.true131.if.else145_crit_edge, label %if.then134

land.lhs.true131.if.else145_crit_edge:            ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else145

if.then134:                                       ; preds = %land.lhs.true131
  %tobool135.not = icmp eq ptr %opaquedir.0, null
  br i1 %tobool135.not, label %if.else140, label %if.then136

if.then136:                                       ; preds = %if.then134
  %cmp137.not = icmp ne ptr %call120, %opaquedir.0
  %cmp159.old.old = icmp eq ptr %call108, %call106
  %or.cond383 = select i1 %cmp137.not, i1 true, i1 %cmp159.old.old
  %cmp162.old = icmp eq ptr %call120, %call106
  %or.cond386 = select i1 %or.cond383, i1 true, i1 %cmp162.old
  br i1 %or.cond386, label %if.then136.out_dput_crit_edge, label %if.then136.if.end164_crit_edge

if.then136.if.end164_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.then136.out_dput_crit_edge:                    ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput

if.else140:                                       ; preds = %if.then134
  %call.i410 = call ptr @ovl_dentry_upper(ptr noundef %new) #11
  %d_inode.i.i411 = getelementptr inbounds %struct.dentry, ptr %call.i410, i32 0, i32 5
  %63 = ptrtoint ptr %d_inode.i.i411 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %d_inode.i.i411, align 8
  %d_inode.i3.i412 = getelementptr inbounds %struct.dentry, ptr %call120, i32 0, i32 5
  %65 = ptrtoint ptr %d_inode.i3.i412 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %d_inode.i3.i412, align 8
  %cmp.i413 = icmp ne ptr %64, %66
  %cmp159.old.old.old = icmp eq ptr %call108, %call106
  %or.cond384 = select i1 %cmp.i413, i1 true, i1 %cmp159.old.old.old
  %cmp162 = icmp eq ptr %call120, %call106
  %or.cond385 = select i1 %or.cond384, i1 true, i1 %cmp162
  br i1 %or.cond385, label %if.else140.out_dput_crit_edge, label %if.else140.if.end164_crit_edge

if.else140.if.end164_crit_edge:                   ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.else140.out_dput_crit_edge:                    ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput

if.else145:                                       ; preds = %land.lhs.true131.if.else145_crit_edge, %if.end124.if.else145_crit_edge
  %67 = ptrtoint ptr %call120 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %call120, align 8
  %and.i.i.i = and i32 %68, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i, label %if.else152, label %if.then147

if.then147:                                       ; preds = %if.else145
  br i1 %call127, label %lor.lhs.false, label %if.then147.out_dput_crit_edge

if.then147.out_dput_crit_edge:                    ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput

lor.lhs.false:                                    ; preds = %if.then147
  %call149 = call zeroext i1 @ovl_is_whiteout(ptr noundef %call120) #11
  %call149.not = xor i1 %call149, true
  %cmp159 = icmp eq ptr %call108, %call106
  %or.cond = select i1 %call149.not, i1 true, i1 %cmp159
  %cmp162.old.old.old = icmp eq ptr %call120, %call106
  %or.cond388 = select i1 %or.cond, i1 true, i1 %cmp162.old.old.old
  br i1 %or.cond388, label %lor.lhs.false.out_dput_crit_edge, label %lor.lhs.false.if.end164_crit_edge

lor.lhs.false.if.end164_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

lor.lhs.false.out_dput_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput

if.else152:                                       ; preds = %if.else145
  %and153 = and i32 %flags.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp ne i32 %and153, 0
  %cmp159.old = icmp eq ptr %call108, %call106
  %or.cond382 = select i1 %tobool154.not, i1 true, i1 %cmp159.old
  %cmp162.old.old = icmp eq ptr %call120, %call106
  %or.cond387 = select i1 %or.cond382, i1 true, i1 %cmp162.old.old
  br i1 %or.cond387, label %if.else152.out_dput_crit_edge, label %if.else152.if.end164_crit_edge

if.else152.if.end164_crit_edge:                   ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end164

if.else152.out_dput_crit_edge:                    ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput

if.end164:                                        ; preds = %if.else152.if.end164_crit_edge, %lor.lhs.false.if.end164_crit_edge, %if.else140.if.end164_crit_edge, %if.then136.if.end164_crit_edge
  %69 = ptrtoint ptr %d_inode.i3.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %d_inode.i3.i, align 8
  %d_inode165 = getelementptr inbounds %struct.dentry, ptr %call120, i32 0, i32 5
  %71 = ptrtoint ptr %d_inode165 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %d_inode165, align 8
  %cmp166 = icmp eq ptr %70, %72
  br i1 %cmp166, label %if.end164.out_dput_crit_edge, label %if.end168

if.end164.out_dput_crit_edge:                     ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput

if.end168:                                        ; preds = %if.end164
  %call.i414 = call i32 @ovl_path_type(ptr noundef %old) #11
  %73 = and i32 %call.i414, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %.not = icmp eq i32 %73, 1
  br i1 %.not, label %if.else173, label %if.then170

if.then170:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  %call172 = call fastcc i32 @ovl_set_redirect(ptr noundef %old, i1 noundef zeroext %cmp)
  br label %if.end183

if.else173:                                       ; preds = %if.end168
  %call.not = xor i1 %3, true
  %brmerge = select i1 %call.not, i1 true, i1 %call125
  br i1 %brmerge, label %if.else173.if.end186_crit_edge, label %land.lhs.true177

if.else173.if.end186_crit_edge:                   ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end186

land.lhs.true177:                                 ; preds = %if.else173
  %74 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %d_parent, align 8
  %call.i415 = call i32 @ovl_path_type(ptr noundef %75) #11
  %and.i416 = and i32 %call.i415, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i416)
  %tobool.i417.not = icmp eq i32 %and.i416, 0
  br i1 %tobool.i417.not, label %land.lhs.true177.if.end186_crit_edge, label %if.then180

land.lhs.true177.if.end186_crit_edge:             ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end186

if.then180:                                       ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #13
  %call181 = call fastcc i32 @ovl_set_opaque_xerr(ptr noundef %old, ptr noundef %call108, i32 noundef -18)
  br label %if.end183

if.end183:                                        ; preds = %if.then180, %if.then170
  %err.0 = phi i32 [ %call172, %if.then170 ], [ %call181, %if.then180 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool184.not = icmp eq i32 %err.0, 0
  br i1 %tobool184.not, label %if.end183.if.end186_crit_edge, label %if.end183.out_dput_crit_edge

if.end183.out_dput_crit_edge:                     ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput

if.end183.if.end186_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end186

if.end186:                                        ; preds = %if.end183.if.end186_crit_edge, %land.lhs.true177.if.end186_crit_edge, %if.else173.if.end186_crit_edge
  br i1 %tobool.not, label %if.end186.if.end208_crit_edge, label %land.lhs.true188

if.end186.if.end208_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

land.lhs.true188:                                 ; preds = %if.end186
  %call.i418 = call i32 @ovl_path_type(ptr noundef %new) #11
  %76 = and i32 %call.i418, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %.not446 = icmp eq i32 %76, 1
  br i1 %.not446, label %land.lhs.true195.critedge, label %if.then190

if.then190:                                       ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #13
  %call192 = call fastcc i32 @ovl_set_redirect(ptr noundef %new, i1 noundef zeroext %cmp)
  br label %if.end205

land.lhs.true195.critedge:                        ; preds = %land.lhs.true188
  %call2.not = xor i1 %7, true
  %brmerge389 = select i1 %call2.not, i1 true, i1 %call127
  br i1 %brmerge389, label %land.lhs.true195.critedge.if.end208_crit_edge, label %land.lhs.true199

land.lhs.true195.critedge.if.end208_crit_edge:    ; preds = %land.lhs.true195.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

land.lhs.true199:                                 ; preds = %land.lhs.true195.critedge
  %77 = ptrtoint ptr %d_parent81 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %d_parent81, align 8
  %call.i419 = call i32 @ovl_path_type(ptr noundef %78) #11
  %and.i420 = and i32 %call.i419, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i420)
  %tobool.i421.not = icmp eq i32 %and.i420, 0
  br i1 %tobool.i421.not, label %land.lhs.true199.if.end208_crit_edge, label %if.then202

land.lhs.true199.if.end208_crit_edge:             ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

if.then202:                                       ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #13
  %call203 = call fastcc i32 @ovl_set_opaque_xerr(ptr noundef %new, ptr noundef %call120, i32 noundef -18)
  br label %if.end205

if.end205:                                        ; preds = %if.then202, %if.then190
  %err.1 = phi i32 [ %call203, %if.then202 ], [ %call192, %if.then190 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool206.not = icmp eq i32 %err.1, 0
  br i1 %tobool206.not, label %if.end205.if.end208_crit_edge, label %if.end205.out_dput_crit_edge

if.end205.out_dput_crit_edge:                     ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput

if.end205.if.end208_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208

if.end208:                                        ; preds = %if.end205.if.end208_crit_edge, %land.lhs.true199.if.end208_crit_edge, %land.lhs.true195.critedge.if.end208_crit_edge, %if.end186.if.end208_crit_edge
  %d_inode209 = getelementptr inbounds %struct.dentry, ptr %call82, i32 0, i32 5
  %79 = ptrtoint ptr %d_inode209 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %d_inode209, align 8
  %d_inode210 = getelementptr inbounds %struct.dentry, ptr %call84, i32 0, i32 5
  %81 = ptrtoint ptr %d_inode210 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %d_inode210, align 8
  %call211 = call fastcc i32 @ovl_do_rename(ptr noundef %80, ptr noundef %call108, ptr noundef %82, ptr noundef %call120, i32 noundef %flags.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %tobool212.not = icmp eq i32 %call211, 0
  br i1 %tobool212.not, label %if.end214, label %if.end208.out_dput_crit_edge

if.end208.out_dput_crit_edge:                     ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput

if.end214:                                        ; preds = %if.end208
  br i1 %cleanup_whiteout.0.off0, label %if.then216, label %if.end214.if.end219_crit_edge

if.end214.if.end219_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219

if.then216:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %d_inode209 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %d_inode209, align 8
  %call218 = call i32 @ovl_cleanup(ptr noundef %84, ptr noundef %call120)
  br label %if.end219

if.end219:                                        ; preds = %if.then216, %if.end214.if.end219_crit_edge
  br i1 %tobool.not, label %land.lhs.true221, label %if.end219.if.end230_crit_edge

if.end219.if.end230_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end230

land.lhs.true221:                                 ; preds = %if.end219
  %85 = ptrtoint ptr %d_inode.i409 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %d_inode.i409, align 8
  %tobool223.not = icmp eq ptr %86, null
  br i1 %tobool223.not, label %land.lhs.true221.if.end230_crit_edge, label %if.then224

land.lhs.true221.if.end230_crit_edge:             ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end230

if.then224:                                       ; preds = %land.lhs.true221
  br i1 %7, label %if.then226, label %if.else228

if.then226:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #13
  call void @clear_nlink(ptr noundef nonnull %86) #11
  br label %if.end230

if.else228:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ovl_drop_nlink(ptr noundef %new)
  br label %if.end230

if.end230:                                        ; preds = %if.else228, %if.then226, %land.lhs.true221.if.end230_crit_edge, %if.end219.if.end230_crit_edge
  %87 = ptrtoint ptr %d_parent81 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %d_parent81, align 8
  %call.i424 = call i32 @ovl_path_type(ptr noundef %old) #11
  %and.i425 = and i32 %call.i424, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i425)
  %tobool.i426 = icmp ne i32 %and.i425, 0
  %brmerge390 = or i1 %tobool.not, %tobool.i426
  br i1 %brmerge390, label %if.end230.lor.end_crit_edge, label %land.rhs

if.end230.lor.end_crit_edge:                      ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

land.rhs:                                         ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  %call.i427 = call i32 @ovl_path_type(ptr noundef %new) #11
  %and.i428 = and i32 %call.i427, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i428)
  %tobool.i429 = icmp ne i32 %and.i428, 0
  br label %lor.end

lor.end:                                          ; preds = %land.rhs, %if.end230.lor.end_crit_edge
  %89 = phi i1 [ %tobool.i426, %if.end230.lor.end_crit_edge ], [ %tobool.i429, %land.rhs ]
  call void @ovl_dir_modified(ptr noundef %88, i1 noundef zeroext %89) #11
  %90 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %d_parent, align 8
  %call.i430 = call i32 @ovl_path_type(ptr noundef %old) #11
  %and.i431 = and i32 %call.i430, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i431)
  %tobool.i432.not = icmp eq i32 %and.i431, 0
  br i1 %tobool.i432.not, label %lor.rhs237, label %lor.end.lor.end243_crit_edge

lor.end.lor.end243_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end243

lor.rhs237:                                       ; preds = %lor.end
  %92 = ptrtoint ptr %d_inode.i409 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %d_inode.i409, align 8
  %tobool239.not = icmp eq ptr %93, null
  br i1 %tobool239.not, label %lor.rhs237.lor.end243_crit_edge, label %land.rhs240

lor.rhs237.lor.end243_crit_edge:                  ; preds = %lor.rhs237
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end243

land.rhs240:                                      ; preds = %lor.rhs237
  call void @__sanitizer_cov_trace_pc() #13
  %call.i434 = call i32 @ovl_path_type(ptr noundef %new) #11
  %and.i435 = and i32 %call.i434, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i435)
  %tobool.i436 = icmp ne i32 %and.i435, 0
  br label %lor.end243

lor.end243:                                       ; preds = %land.rhs240, %lor.rhs237.lor.end243_crit_edge, %lor.end.lor.end243_crit_edge
  %94 = phi i1 [ true, %lor.end.lor.end243_crit_edge ], [ false, %lor.rhs237.lor.end243_crit_edge ], [ %tobool.i436, %land.rhs240 ]
  call void @ovl_dir_modified(ptr noundef %91, i1 noundef zeroext %94) #11
  %95 = ptrtoint ptr %d_inode.i3.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %d_inode.i3.i, align 8
  %d_inode.i438 = getelementptr inbounds %struct.dentry, ptr %old, i32 0, i32 5
  %97 = ptrtoint ptr %d_inode.i438 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %d_inode.i438, align 8
  call fastcc void @ovl_copyattr(ptr noundef %96, ptr noundef %98)
  %99 = ptrtoint ptr %d_inode.i409 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %d_inode.i409, align 8
  %tobool247.not = icmp eq ptr %100, null
  br i1 %tobool247.not, label %lor.end243.out_dput_crit_edge, label %land.lhs.true248

lor.end243.out_dput_crit_edge:                    ; preds = %lor.end243
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput

land.lhs.true248:                                 ; preds = %lor.end243
  %call249 = call ptr @ovl_dentry_upper(ptr noundef %new) #11
  %tobool250.not = icmp eq ptr %call249, null
  br i1 %tobool250.not, label %land.lhs.true248.out_dput_crit_edge, label %if.then251

land.lhs.true248.out_dput_crit_edge:              ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput

if.then251:                                       ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %d_inode165 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %d_inode165, align 8
  %103 = ptrtoint ptr %d_inode.i409 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %d_inode.i409, align 8
  call fastcc void @ovl_copyattr(ptr noundef %102, ptr noundef %104)
  br label %out_dput

out_dput:                                         ; preds = %if.then251, %land.lhs.true248.out_dput_crit_edge, %lor.end243.out_dput_crit_edge, %if.end208.out_dput_crit_edge, %if.end205.out_dput_crit_edge, %if.end183.out_dput_crit_edge, %if.end164.out_dput_crit_edge, %if.else152.out_dput_crit_edge, %lor.lhs.false.out_dput_crit_edge, %if.then147.out_dput_crit_edge, %if.else140.out_dput_crit_edge, %if.then136.out_dput_crit_edge
  %err.2 = phi i32 [ -116, %if.then136.out_dput_crit_edge ], [ -116, %if.end164.out_dput_crit_edge ], [ %err.0, %if.end183.out_dput_crit_edge ], [ %err.1, %if.end205.out_dput_crit_edge ], [ %call211, %if.end208.out_dput_crit_edge ], [ 0, %if.then251 ], [ 0, %land.lhs.true248.out_dput_crit_edge ], [ 0, %lor.end243.out_dput_crit_edge ], [ -116, %if.else140.out_dput_crit_edge ], [ -116, %if.else152.out_dput_crit_edge ], [ -116, %lor.lhs.false.out_dput_crit_edge ], [ -116, %if.then147.out_dput_crit_edge ]
  call void @dput(ptr noundef %call120) #11
  br label %out_dput_old

out_dput_old:                                     ; preds = %out_dput, %if.end115.out_dput_old_crit_edge, %if.end112.out_dput_old_crit_edge
  %err.3 = phi i32 [ %60, %if.end115.out_dput_old_crit_edge ], [ %err.2, %out_dput ], [ -116, %if.end112.out_dput_old_crit_edge ]
  call void @dput(ptr noundef %call108) #11
  br label %out_unlock

out_unlock:                                       ; preds = %out_dput_old, %if.end105.out_unlock_crit_edge
  %err.4 = phi i32 [ %51, %if.end105.out_unlock_crit_edge ], [ %err.3, %out_dput_old ]
  call void @unlock_rename(ptr noundef %call84, ptr noundef %call82) #11
  br label %out_revert_creds

out_revert_creds:                                 ; preds = %out_unlock, %if.then98.out_revert_creds_crit_edge, %if.then88.out_revert_creds_crit_edge, %if.then74.out_revert_creds_crit_edge
  %err.5 = phi i32 [ %err.4, %out_unlock ], [ %call90, %if.then88.out_revert_creds_crit_edge ], [ %call100, %if.then98.out_revert_creds_crit_edge ], [ %38, %if.then74.out_revert_creds_crit_edge ]
  %opaquedir.1 = phi ptr [ %opaquedir.0, %out_unlock ], [ %opaquedir.0, %if.then88.out_revert_creds_crit_edge ], [ %opaquedir.0, %if.then98.out_revert_creds_crit_edge ], [ null, %if.then74.out_revert_creds_crit_edge ]
  call void @revert_creds(ptr noundef %call71) #11
  br i1 %update_nlink.0.off0, label %if.then256, label %out_revert_creds.out_drop_write_crit_edge

out_revert_creds.out_drop_write_crit_edge:        ; preds = %out_revert_creds
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop_write

if.then256:                                       ; preds = %out_revert_creds
  call void @__sanitizer_cov_trace_pc() #13
  call void @ovl_nlink_end(ptr noundef %new) #11
  br label %out_drop_write

out_drop_write:                                   ; preds = %if.then256, %out_revert_creds.out_drop_write_crit_edge, %if.then64.out_drop_write_crit_edge, %if.then56.out_drop_write_crit_edge, %if.end50.out_drop_write_crit_edge, %if.end46.out_drop_write_crit_edge
  %err.6 = phi i32 [ %call47, %if.end46.out_drop_write_crit_edge ], [ %call51, %if.end50.out_drop_write_crit_edge ], [ %call65, %if.then64.out_drop_write_crit_edge ], [ %err.5, %if.then256 ], [ %err.5, %out_revert_creds.out_drop_write_crit_edge ], [ %call57, %if.then56.out_drop_write_crit_edge ]
  %opaquedir.2 = phi ptr [ null, %if.end46.out_drop_write_crit_edge ], [ null, %if.end50.out_drop_write_crit_edge ], [ null, %if.then64.out_drop_write_crit_edge ], [ %opaquedir.1, %if.then256 ], [ %opaquedir.1, %out_revert_creds.out_drop_write_crit_edge ], [ null, %if.then56.out_drop_write_crit_edge ]
  call void @ovl_drop_write(ptr noundef %old) #11
  br label %out

out:                                              ; preds = %out_drop_write, %if.end42.out_crit_edge, %if.then20.out_crit_edge, %ovl_can_move.exit397.out_crit_edge, %ovl_can_move.exit.out_crit_edge, %entry.out_crit_edge
  %err.7 = phi i32 [ -22, %entry.out_crit_edge ], [ %call43, %if.end42.out_crit_edge ], [ %err.6, %out_drop_write ], [ %call21, %if.then20.out_crit_edge ], [ -18, %ovl_can_move.exit397.out_crit_edge ], [ -18, %ovl_can_move.exit.out_crit_edge ]
  %opaquedir.3 = phi ptr [ null, %entry.out_crit_edge ], [ null, %if.end42.out_crit_edge ], [ %opaquedir.2, %out_drop_write ], [ null, %if.then20.out_crit_edge ], [ null, %ovl_can_move.exit397.out_crit_edge ], [ null, %ovl_can_move.exit.out_crit_edge ]
  call void @dput(ptr noundef %opaquedir.3) #11
  call void @ovl_cache_free(ptr noundef nonnull %list) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  ret i32 %err.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_update_time(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_fileattr_set(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_fileattr_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_rmdir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mknod(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_rename(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mkdir(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_create(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_create_object(ptr noundef %dentry, i32 noundef %mode, i32 noundef %rdev, ptr noundef %link) unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.ovl_cattr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %attr) #11
  %0 = getelementptr inbounds i8, ptr %attr, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rdev, ptr %attr, align 4
  %mode2 = getelementptr inbounds %struct.ovl_cattr, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %mode2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %mode2, align 4
  %link3 = getelementptr inbounds %struct.ovl_cattr, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %link3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %link, ptr %link3, align 4
  %hardlink = getelementptr inbounds %struct.ovl_cattr, ptr %attr, i32 0, i32 3
  %5 = ptrtoint ptr %hardlink to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %hardlink, align 4
  %call = tail call i32 @ovl_want_write(ptr noundef %dentry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %6 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_sb, align 4
  %conv = trunc i32 %mode to i16
  %call4 = tail call ptr @ovl_new_inode(ptr noundef %7, i16 noundef zeroext %conv, i32 noundef %rdev) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.out_drop_write_crit_edge, label %if.end7

if.end.out_drop_write_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop_write

if.end7:                                          ; preds = %if.end
  %i_lock = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #11
  %i_state = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 24
  %8 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_state, align 8
  %or = or i32 %9, 32768
  store i32 %or, ptr %i_state, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #11
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %10 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode, align 8
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call4, ptr noundef %13, i16 noundef zeroext %conv) #11
  %14 = ptrtoint ptr %call4 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %call4, align 8
  %16 = ptrtoint ptr %mode2 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %mode2, align 4
  %call11 = call fastcc i32 @ovl_create_or_link(ptr noundef %dentry, ptr noundef nonnull %call4, ptr noundef nonnull %attr, i1 noundef zeroext false)
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i, align 8
  %cmp.not = icmp eq ptr %call4, %18
  br i1 %cmp.not, label %if.end7.out_drop_write_crit_edge, label %if.then14

if.end7.out_drop_write_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop_write

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  call void @iput(ptr noundef nonnull %call4) #11
  br label %out_drop_write

out_drop_write:                                   ; preds = %if.then14, %if.end7.out_drop_write_crit_edge, %if.end.out_drop_write_crit_edge
  %err.0 = phi i32 [ %call11, %if.then14 ], [ %call11, %if.end7.out_drop_write_crit_edge ], [ -12, %if.end.out_drop_write_crit_edge ]
  call void @ovl_drop_write(ptr noundef %dentry) #11
  br label %out

out:                                              ; preds = %out_drop_write, %entry.out_crit_edge
  %err.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %err.0, %out_drop_write ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %attr) #11
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_new_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_create_or_link(ptr noundef %dentry, ptr noundef %inode, ptr noundef %attr, i1 noundef zeroext %origin) unnamed_addr #0 align 64 {
entry:
  %acl.i = alloca ptr, align 4
  %default_acl.i = alloca ptr, align 4
  %attr.i = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %call = tail call i32 @ovl_copy_up(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %call1 = tail call ptr @ovl_override_creds(ptr noundef %3) #11
  br i1 %origin, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @ovl_dentry_upper(ptr noundef %1) #11
  %call5 = tail call i32 @ovl_set_impure(ptr noundef %1, ptr noundef %call4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then3.if.end9_crit_edge, label %if.then3.out_revert_creds_crit_edge

if.then3.out_revert_creds_crit_edge:              ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_revert_creds

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call10 = tail call ptr @prepare_creds() #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.out_revert_creds_crit_edge, label %if.then12

if.end9.out_revert_creds_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_revert_creds

if.then12:                                        ; preds = %if.end9
  %fsuid = getelementptr inbounds %struct.cred, ptr %call10, i32 0, i32 10
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %4 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_uid, align 4
  %6 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fsuid, align 4
  %fsgid = getelementptr inbounds %struct.cred, ptr %call10, i32 0, i32 11
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %7 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_gid, align 8
  %9 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fsgid, align 4
  %hardlink = getelementptr inbounds %struct.ovl_cattr, ptr %attr, i32 0, i32 3
  %10 = ptrtoint ptr %hardlink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hardlink, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.then14, label %if.then12.if.end19_crit_edge

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14:                                        ; preds = %if.then12
  %mode = getelementptr inbounds %struct.ovl_cattr, ptr %attr, i32 0, i32 1
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mode, align 4
  %conv = zext i16 %13 to i32
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call15 = tail call i32 @security_dentry_create_files_as(ptr noundef %dentry, i32 noundef %conv, ptr noundef %d_name, ptr noundef %call1, ptr noundef nonnull %call10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %do.body.i

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body.i:                                        ; preds = %if.then14
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call10) #11
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !125

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__invalid_creds(ptr noundef nonnull %call10, ptr noundef nonnull @.str.41, i32 noundef 286) #11
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call10, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr nonnull %call10, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call10, ptr nonnull %call10, i32 1, ptr nonnull elementtype(i32) %call10) #11, !srcloc !127
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.out_revert_creds_crit_edge

__validate_creds.exit.i.out_revert_creds_crit_edge: ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_revert_creds

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_cred(ptr noundef nonnull %call10) #11
  br label %out_revert_creds

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %if.then12.if.end19_crit_edge
  %call20 = tail call ptr @override_creds(ptr noundef nonnull %call10) #11
  %tobool.not.i55 = icmp eq ptr %call20, null
  br i1 %tobool.not.i55, label %if.end19.do.body.i67_crit_edge, label %do.body.i57

if.end19.do.body.i67_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i67

do.body.i57:                                      ; preds = %if.end19
  %call.i.i56 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call20) #11
  br i1 %call.i.i56, label %if.then.i.i58, label %do.body.i57.__validate_creds.exit.i62_crit_edge, !prof !125

do.body.i57.__validate_creds.exit.i62_crit_edge:  ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %__validate_creds.exit.i62

if.then.i.i58:                                    ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__invalid_creds(ptr noundef nonnull %call20, ptr noundef nonnull @.str.41, i32 noundef 286) #11
  br label %__validate_creds.exit.i62

__validate_creds.exit.i62:                        ; preds = %if.then.i.i58, %do.body.i57.__validate_creds.exit.i62_crit_edge
  %call.i.i.i59 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call20, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr nonnull %call20, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call20, ptr nonnull %call20, i32 1, ptr nonnull elementtype(i32) %call20) #11, !srcloc !127
  %asmresult.i.i.i.i.i.i60 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i60)
  %cmp.i.i.i61 = icmp eq i32 %asmresult.i.i.i.i.i.i60, 0
  br i1 %cmp.i.i.i61, label %if.then1.i63, label %__validate_creds.exit.i62.do.body.i67_crit_edge

__validate_creds.exit.i62.do.body.i67_crit_edge:  ; preds = %__validate_creds.exit.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i67

if.then1.i63:                                     ; preds = %__validate_creds.exit.i62
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_cred(ptr noundef nonnull %call20) #11
  br label %do.body.i67

do.body.i67:                                      ; preds = %if.then1.i63, %__validate_creds.exit.i62.do.body.i67_crit_edge, %if.end19.do.body.i67_crit_edge
  %call.i.i66 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call10) #11
  br i1 %call.i.i66, label %if.then.i.i68, label %do.body.i67.__validate_creds.exit.i72_crit_edge, !prof !125

do.body.i67.__validate_creds.exit.i72_crit_edge:  ; preds = %do.body.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %__validate_creds.exit.i72

if.then.i.i68:                                    ; preds = %do.body.i67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__invalid_creds(ptr noundef nonnull %call10, ptr noundef nonnull @.str.41, i32 noundef 286) #11
  br label %__validate_creds.exit.i72

__validate_creds.exit.i72:                        ; preds = %if.then.i.i68, %do.body.i67.__validate_creds.exit.i72_crit_edge
  %call.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call10, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  tail call void @llvm.prefetch.p0(ptr nonnull %call10, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call10, ptr nonnull %call10, i32 1, ptr nonnull elementtype(i32) %call10) #11, !srcloc !127
  %asmresult.i.i.i.i.i.i70 = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i70)
  %cmp.i.i.i71 = icmp eq i32 %asmresult.i.i.i.i.i.i70, 0
  br i1 %cmp.i.i.i71, label %if.then1.i73, label %__validate_creds.exit.i72.put_cred.exit74_crit_edge

__validate_creds.exit.i72.put_cred.exit74_crit_edge: ; preds = %__validate_creds.exit.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_cred.exit74

if.then1.i73:                                     ; preds = %__validate_creds.exit.i72
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_cred(ptr noundef nonnull %call10) #11
  br label %put_cred.exit74

put_cred.exit74:                                  ; preds = %if.then1.i73, %__validate_creds.exit.i72.put_cred.exit74_crit_edge
  %call21 = tail call zeroext i1 @ovl_dentry_is_whiteout(ptr noundef %dentry) #11
  br i1 %call21, label %if.else, label %if.then22

if.then22:                                        ; preds = %put_cred.exit74
  %17 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i, align 16
  %21 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_parent, align 8
  %call1.i = tail call ptr @ovl_dentry_upper(ptr noundef %22) #11
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call1.i, i32 0, i32 5
  %23 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i, align 8
  %25 = ptrtoint ptr %hardlink to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hardlink, align 4
  %tobool.not.i75 = icmp eq ptr %26, null
  br i1 %tobool.not.i75, label %land.lhs.true.i, label %if.then22.if.end.i_crit_edge

if.then22.if.end.i_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then22
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %30, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @current_umask() #11
  %mode.i = getelementptr inbounds %struct.ovl_cattr, ptr %attr, i32 0, i32 1
  %31 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mode.i, align 4
  %33 = trunc i32 %call3.i to i16
  %34 = xor i16 %33, -1
  %conv5.i = and i16 %32, %34
  store i16 %conv5.i, ptr %mode.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then22.if.end.i_crit_edge
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #11
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name.i, align 8
  %37 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %d_name.i, align 8
  %call7.i = tail call ptr @lookup_one_len(ptr noundef %36, ptr noundef %call1.i, i32 noundef %38) #11
  %call8.i = tail call ptr @ovl_create_real(ptr noundef %24, ptr noundef %call7.i, ptr noundef %attr) #11
  %39 = ptrtoint ptr %call8.i to i32
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.ovl_create_upper.exit_crit_edge, label %if.end12.i

if.end.i.ovl_create_upper.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_create_upper.exit

if.end12.i:                                       ; preds = %if.end.i
  %40 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %d_parent, align 8
  %call.i.i76 = tail call i32 @ovl_path_type(ptr noundef %41) #11
  %and.i.i = and i32 %call.i.i76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end12.i.if.end23.i_crit_edge, label %land.lhs.true16.i

if.end12.i.if.end23.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

land.lhs.true16.i:                                ; preds = %if.end12.i
  %42 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call8.i, align 8
  %44 = and i32 %43, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %44)
  %45 = icmp eq i32 %44, 2097152
  br i1 %45, label %land.lhs.true19.i, label %land.lhs.true16.i.if.end23.i_crit_edge

land.lhs.true16.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

land.lhs.true19.i:                                ; preds = %land.lhs.true16.i
  %index.i.i = getelementptr inbounds %struct.ovl_fs, ptr %20, i32 0, i32 8, i32 7
  %46 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %index.i.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %land.lhs.true19.i.if.then21.i_crit_edge

land.lhs.true19.i.if.then21.i_crit_edge:          ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true19.i
  %metacopy.i.i = getelementptr inbounds %struct.ovl_fs, ptr %20, i32 0, i32 8, i32 11
  %48 = ptrtoint ptr %metacopy.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %metacopy.i.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool2.not.i.i = icmp eq i8 %49, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true3.i.i, label %land.lhs.true.i.i.if.then21.i_crit_edge

land.lhs.true.i.i.if.then21.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %redirect_dir.i.i = getelementptr inbounds %struct.ovl_fs, ptr %20, i32 0, i32 8, i32 4
  %50 = ptrtoint ptr %redirect_dir.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %redirect_dir.i.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool5.not.i.i = icmp eq i8 %51, 0
  br i1 %tobool5.not.i.i, label %ovl_allow_offline_changes.exit.i, label %land.lhs.true3.i.i.if.then21.i_crit_edge

land.lhs.true3.i.i.if.then21.i_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.i

ovl_allow_offline_changes.exit.i:                 ; preds = %land.lhs.true3.i.i
  %xino.i.i = getelementptr inbounds %struct.ovl_fs, ptr %20, i32 0, i32 8, i32 10
  %52 = ptrtoint ptr %xino.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %xino.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp.i53.not.i = icmp eq i32 %53, 2
  br i1 %cmp.i53.not.i, label %ovl_allow_offline_changes.exit.i.if.then21.i_crit_edge, label %ovl_allow_offline_changes.exit.i.if.end23.i_crit_edge

ovl_allow_offline_changes.exit.i.if.end23.i_crit_edge: ; preds = %ovl_allow_offline_changes.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

ovl_allow_offline_changes.exit.i.if.then21.i_crit_edge: ; preds = %ovl_allow_offline_changes.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.i

if.then21.i:                                      ; preds = %ovl_allow_offline_changes.exit.i.if.then21.i_crit_edge, %land.lhs.true3.i.i.if.then21.i_crit_edge, %land.lhs.true.i.i.if.then21.i_crit_edge, %land.lhs.true19.i.if.then21.i_crit_edge
  %54 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 33
  %56 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %call1.i.i.i = tail call i32 @ovl_check_setxattr(ptr noundef %57, ptr noundef %call8.i, i32 noundef 0, ptr noundef nonnull @.str.42, i32 noundef 1, i32 noundef -5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then21.i.if.end23.i_crit_edge

if.then21.i.if.end23.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then.i.i.i:                                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ovl_dentry_set_opaque(ptr noundef %dentry) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then.i.i.i, %if.then21.i.if.end23.i_crit_edge, %ovl_allow_offline_changes.exit.i.if.end23.i_crit_edge, %land.lhs.true16.i.if.end23.i_crit_edge, %if.end12.i.if.end23.i_crit_edge
  %58 = ptrtoint ptr %hardlink to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hardlink, align 4
  %tobool25.i = icmp ne ptr %59, null
  %call27.i = tail call fastcc i32 @ovl_instantiate(ptr noundef %dentry, ptr noundef %inode, ptr noundef %call8.i, i1 noundef zeroext %tobool25.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end23.i.ovl_create_upper.exit_crit_edge, label %out_cleanup.i

if.end23.i.ovl_create_upper.exit_crit_edge:       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_create_upper.exit

out_cleanup.i:                                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %call31.i = tail call i32 @ovl_cleanup(ptr noundef %24, ptr noundef %call8.i) #11
  tail call void @dput(ptr noundef %call8.i) #11
  br label %ovl_create_upper.exit

ovl_create_upper.exit:                            ; preds = %out_cleanup.i, %if.end23.i.ovl_create_upper.exit_crit_edge, %if.end.i.ovl_create_upper.exit_crit_edge
  %err.0.i = phi i32 [ %39, %if.end.i.ovl_create_upper.exit_crit_edge ], [ %call27.i, %out_cleanup.i ], [ 0, %if.end23.i.ovl_create_upper.exit_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #11
  br label %out_revert_creds

if.else:                                          ; preds = %put_cred.exit74
  %call.i = tail call ptr @ovl_workdir(ptr noundef %dentry) #11
  %d_inode.i77 = getelementptr inbounds %struct.dentry, ptr %call.i, i32 0, i32 5
  %60 = ptrtoint ptr %d_inode.i77 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %d_inode.i77, align 8
  %62 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %d_parent, align 8
  %call1.i79 = tail call ptr @ovl_dentry_upper(ptr noundef %63) #11
  %d_inode2.i = getelementptr inbounds %struct.dentry, ptr %call1.i79, i32 0, i32 5
  %64 = ptrtoint ptr %d_inode2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %d_inode2.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl.i) #11
  %66 = ptrtoint ptr %acl.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -1 to ptr), ptr %acl.i, align 4, !annotation !129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %default_acl.i) #11
  %67 = ptrtoint ptr %default_acl.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 -1 to ptr), ptr %default_acl.i, align 4, !annotation !129
  %68 = ptrtoint ptr %hardlink to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hardlink, align 4
  %tobool.i = icmp ne ptr %69, null
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %do.end.i, label %if.end29.i, !prof !125

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 473, i32 noundef 9, ptr noundef null) #11
  br label %ovl_create_over_whiteout.exit

if.end29.i:                                       ; preds = %if.else
  br i1 %tobool.i, label %if.end29.i.if.end38.i_crit_edge, label %if.then31.i

if.end29.i.if.end38.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.then31.i:                                      ; preds = %if.end29.i
  %70 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %d_parent, align 8
  %d_inode33.i = getelementptr inbounds %struct.dentry, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %d_inode33.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %d_inode33.i, align 8
  %mode.i80 = getelementptr inbounds %struct.ovl_cattr, ptr %attr, i32 0, i32 1
  %call34.i = call i32 @posix_acl_create(ptr noundef %73, ptr noundef %mode.i80, ptr noundef nonnull %default_acl.i, ptr noundef nonnull %acl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then31.i.if.end38.i_crit_edge, label %if.then31.i.ovl_create_over_whiteout.exit_crit_edge

if.then31.i.ovl_create_over_whiteout.exit_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_create_over_whiteout.exit

if.then31.i.if.end38.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then31.i.if.end38.i_crit_edge, %if.end29.i.if.end38.i_crit_edge
  %call39.i = call i32 @ovl_lock_rename_workdir(ptr noundef nonnull %call.i, ptr noundef %call1.i79) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end38.i.out.i_crit_edge

if.end38.i.out.i_crit_edge:                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end42.i:                                       ; preds = %if.end38.i
  %d_name.i81 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i82 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %74 = ptrtoint ptr %name.i82 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %name.i82, align 8
  %76 = ptrtoint ptr %d_name.i81 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %d_name.i81, align 8
  %call44.i = call ptr @lookup_one_len(ptr noundef %75, ptr noundef %call1.i79, i32 noundef %77) #11
  %78 = ptrtoint ptr %call44.i to i32
  %cmp.i.i83 = icmp ugt ptr %call44.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i83, label %if.end42.i.out_unlock.i_crit_edge, label %if.end48.i

if.end42.i.out_unlock.i_crit_edge:                ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.end48.i:                                       ; preds = %if.end42.i
  %79 = ptrtoint ptr %call44.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %call44.i, align 8
  %and.i.i.i.i = and i32 %80, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i84 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i84, label %if.end48.i.out_dput.i_crit_edge, label %lor.lhs.false.i

if.end48.i.out_dput.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput.i

lor.lhs.false.i:                                  ; preds = %if.end48.i
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call44.i, i32 0, i32 5
  %81 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %d_inode.i.i, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %82, align 8
  %85 = and i16 %84, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %85)
  %cmp.i = icmp eq i16 %85, 8192
  br i1 %cmp.i, label %land.lhs.true.i85, label %lor.lhs.false.i.out_dput.i_crit_edge

lor.lhs.false.i.out_dput.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput.i

land.lhs.true.i85:                                ; preds = %lor.lhs.false.i
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %82, i32 0, i32 13
  %86 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %i_rdev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp53.i = icmp eq i32 %87, 0
  br i1 %cmp53.i, label %if.end56.i, label %land.lhs.true.i85.out_dput.i_crit_edge

land.lhs.true.i85.out_dput.i_crit_edge:           ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput.i

if.end56.i:                                       ; preds = %land.lhs.true.i85
  %call57.i = call ptr @ovl_create_temp(ptr noundef nonnull %call.i, ptr noundef %attr) #11
  %88 = ptrtoint ptr %call57.i to i32
  %cmp.i205.i = icmp ugt ptr %call57.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205.i, label %if.end56.i.out_dput.i_crit_edge, label %if.end61.i

if.end56.i.out_dput.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput.i

if.end61.i:                                       ; preds = %if.end56.i
  br i1 %tobool.i, label %if.end61.i.if.else.i_crit_edge, label %land.lhs.true63.i

if.end61.i.if.else.i_crit_edge:                   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true63.i:                                ; preds = %if.end61.i
  %mode64.i = getelementptr inbounds %struct.ovl_cattr, ptr %attr, i32 0, i32 1
  %89 = ptrtoint ptr %mode64.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %mode64.i, align 4
  %91 = and i16 %90, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %91)
  %cmp67.i = icmp eq i16 %91, -24576
  br i1 %cmp67.i, label %land.lhs.true63.i.if.then87.i_crit_edge, label %land.lhs.true69.i

land.lhs.true63.i.if.then87.i_crit_edge:          ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87.i

land.lhs.true69.i:                                ; preds = %land.lhs.true63.i
  %d_inode70.i = getelementptr inbounds %struct.dentry, ptr %call57.i, i32 0, i32 5
  %92 = ptrtoint ptr %d_inode70.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %d_inode70.i, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %93, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %95, i16 %90)
  %cmp75.not.i = icmp eq i16 %95, %90
  br i1 %cmp75.not.i, label %land.lhs.true69.i.if.then87.i_crit_edge, label %if.then77.i

land.lhs.true69.i.if.then87.i_crit_edge:          ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87.i

if.then77.i:                                      ; preds = %land.lhs.true69.i
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %attr.i) #11
  %96 = call ptr @memset(ptr %attr.i, i32 0, i32 80)
  %97 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %attr.i, align 8
  %ia_mode.i = getelementptr inbounds %struct.iattr, ptr %attr.i, i32 0, i32 1
  %98 = ptrtoint ptr %ia_mode.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %90, ptr %ia_mode.i, align 4
  %99 = ptrtoint ptr %d_inode70.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %d_inode70.i, align 8
  %i_rwsem.i.i86 = getelementptr inbounds %struct.inode, ptr %100, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i.i86) #11
  %call80.i = call i32 @notify_change(ptr noundef nonnull @init_user_ns, ptr noundef %call57.i, ptr noundef nonnull %attr.i, ptr noundef null) #11
  %101 = ptrtoint ptr %d_inode70.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %d_inode70.i, align 8
  %i_rwsem.i206.i = getelementptr inbounds %struct.inode, ptr %102, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i206.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool82.not.i = icmp eq i32 %call80.i, 0
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr.i) #11
  br i1 %tobool82.not.i, label %if.then77.i.if.then87.i_crit_edge, label %if.then77.i.out_dput.sink.split.i_crit_edge

if.then77.i.out_dput.sink.split.i_crit_edge:      ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput.sink.split.i

if.then77.i.if.then87.i_crit_edge:                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87.i

if.then87.i:                                      ; preds = %if.then77.i.if.then87.i_crit_edge, %land.lhs.true69.i.if.then87.i_crit_edge, %land.lhs.true63.i.if.then87.i_crit_edge
  %103 = ptrtoint ptr %acl.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %acl.i, align 4
  %call88.i = call fastcc i32 @ovl_set_upper_acl(ptr noundef %call57.i, ptr noundef nonnull @.str.45, ptr noundef %104) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool89.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool89.not.i, label %if.end91.i, label %if.then87.i.out_dput.sink.split.i_crit_edge

if.then87.i.out_dput.sink.split.i_crit_edge:      ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput.sink.split.i

if.end91.i:                                       ; preds = %if.then87.i
  %105 = ptrtoint ptr %default_acl.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %default_acl.i, align 4
  %call92.i = call fastcc i32 @ovl_set_upper_acl(ptr noundef %call57.i, ptr noundef nonnull @.str.46, ptr noundef %106) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %tobool93.not.i = icmp eq i32 %call92.i, 0
  br i1 %tobool93.not.i, label %land.lhs.true98.critedge.i, label %if.end91.i.out_dput.sink.split.i_crit_edge

if.end91.i.out_dput.sink.split.i_crit_edge:       ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput.sink.split.i

land.lhs.true98.critedge.i:                       ; preds = %if.end91.i
  %107 = ptrtoint ptr %mode64.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %mode64.i, align 4
  %109 = and i16 %108, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %109)
  %cmp102.i = icmp eq i16 %109, 16384
  br i1 %cmp102.i, label %if.then104.i, label %land.lhs.true98.critedge.i.if.else.i_crit_edge

land.lhs.true98.critedge.i.if.else.i_crit_edge:   ; preds = %land.lhs.true98.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then104.i:                                     ; preds = %land.lhs.true98.critedge.i
  %call105.i = call fastcc i32 @ovl_set_opaque(ptr noundef %dentry, ptr noundef %call57.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %tobool106.not.i = icmp eq i32 %call105.i, 0
  br i1 %tobool106.not.i, label %if.end108.i, label %if.then104.i.out_dput.sink.split.i_crit_edge

if.then104.i.out_dput.sink.split.i_crit_edge:     ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput.sink.split.i

if.end108.i:                                      ; preds = %if.then104.i
  %call109.i = call fastcc i32 @ovl_do_rename(ptr noundef %61, ptr noundef %call57.i, ptr noundef %65, ptr noundef %call44.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %tobool110.not.i = icmp eq i32 %call109.i, 0
  br i1 %tobool110.not.i, label %if.end112.i, label %if.end108.i.out_dput.sink.split.i_crit_edge

if.end108.i.out_dput.sink.split.i_crit_edge:      ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput.sink.split.i

if.end112.i:                                      ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #13
  %call113.i = call i32 @ovl_cleanup(ptr noundef %61, ptr noundef %call44.i) #11
  br label %if.end118.i

if.else.i:                                        ; preds = %land.lhs.true98.critedge.i.if.else.i_crit_edge, %if.end61.i.if.else.i_crit_edge
  %call114.i = call fastcc i32 @ovl_do_rename(ptr noundef %61, ptr noundef %call57.i, ptr noundef %65, ptr noundef %call44.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %tobool115.not.i = icmp eq i32 %call114.i, 0
  br i1 %tobool115.not.i, label %if.else.i.if.end118.i_crit_edge, label %if.else.i.out_dput.sink.split.i_crit_edge

if.else.i.out_dput.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput.sink.split.i

if.else.i.if.end118.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.else.i.if.end118.i_crit_edge, %if.end112.i
  %call120.i = call fastcc i32 @ovl_instantiate(ptr noundef %dentry, ptr noundef %inode, ptr noundef %call57.i, i1 noundef zeroext %tobool.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %tobool121.not.i = icmp eq i32 %call120.i, 0
  br i1 %tobool121.not.i, label %if.end118.i.out_dput.i_crit_edge, label %if.end118.i.out_dput.sink.split.i_crit_edge

if.end118.i.out_dput.sink.split.i_crit_edge:      ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput.sink.split.i

if.end118.i.out_dput.i_crit_edge:                 ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput.i

out_dput.sink.split.i:                            ; preds = %if.end118.i.out_dput.sink.split.i_crit_edge, %if.else.i.out_dput.sink.split.i_crit_edge, %if.end108.i.out_dput.sink.split.i_crit_edge, %if.then104.i.out_dput.sink.split.i_crit_edge, %if.end91.i.out_dput.sink.split.i_crit_edge, %if.then87.i.out_dput.sink.split.i_crit_edge, %if.then77.i.out_dput.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %61, %if.then77.i.out_dput.sink.split.i_crit_edge ], [ %61, %if.else.i.out_dput.sink.split.i_crit_edge ], [ %61, %if.end108.i.out_dput.sink.split.i_crit_edge ], [ %61, %if.then104.i.out_dput.sink.split.i_crit_edge ], [ %61, %if.end91.i.out_dput.sink.split.i_crit_edge ], [ %61, %if.then87.i.out_dput.sink.split.i_crit_edge ], [ %65, %if.end118.i.out_dput.sink.split.i_crit_edge ]
  %err.0.ph.i = phi i32 [ %call80.i, %if.then77.i.out_dput.sink.split.i_crit_edge ], [ %call114.i, %if.else.i.out_dput.sink.split.i_crit_edge ], [ %call109.i, %if.end108.i.out_dput.sink.split.i_crit_edge ], [ %call105.i, %if.then104.i.out_dput.sink.split.i_crit_edge ], [ %call92.i, %if.end91.i.out_dput.sink.split.i_crit_edge ], [ %call88.i, %if.then87.i.out_dput.sink.split.i_crit_edge ], [ %call120.i, %if.end118.i.out_dput.sink.split.i_crit_edge ]
  %call123.i = call i32 @ovl_cleanup(ptr noundef %.sink.i, ptr noundef %call57.i) #11
  call void @dput(ptr noundef %call57.i) #11
  br label %out_dput.i

out_dput.i:                                       ; preds = %out_dput.sink.split.i, %if.end118.i.out_dput.i_crit_edge, %if.end56.i.out_dput.i_crit_edge, %land.lhs.true.i85.out_dput.i_crit_edge, %lor.lhs.false.i.out_dput.i_crit_edge, %if.end48.i.out_dput.i_crit_edge
  %err.0.i87 = phi i32 [ -116, %if.end48.i.out_dput.i_crit_edge ], [ %88, %if.end56.i.out_dput.i_crit_edge ], [ 0, %if.end118.i.out_dput.i_crit_edge ], [ -116, %land.lhs.true.i85.out_dput.i_crit_edge ], [ -116, %lor.lhs.false.i.out_dput.i_crit_edge ], [ %err.0.ph.i, %out_dput.sink.split.i ]
  call void @dput(ptr noundef %call44.i) #11
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %out_dput.i, %if.end42.i.out_unlock.i_crit_edge
  %err.1.i = phi i32 [ %78, %if.end42.i.out_unlock.i_crit_edge ], [ %err.0.i87, %out_dput.i ]
  call void @unlock_rename(ptr noundef nonnull %call.i, ptr noundef %call1.i79) #11
  br label %out.i

out.i:                                            ; preds = %out_unlock.i, %if.end38.i.out.i_crit_edge
  %err.2.i = phi i32 [ %call39.i, %if.end38.i.out.i_crit_edge ], [ %err.1.i, %out_unlock.i ]
  br i1 %tobool.i, label %out.i.ovl_create_over_whiteout.exit_crit_edge, label %if.then126.i

out.i.ovl_create_over_whiteout.exit_crit_edge:    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_create_over_whiteout.exit

if.then126.i:                                     ; preds = %out.i
  %110 = ptrtoint ptr %acl.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %acl.i, align 4
  %tobool.not.i.i88 = icmp eq ptr %111, null
  br i1 %tobool.not.i.i88, label %if.then126.i.posix_acl_release.exit.i_crit_edge, label %land.lhs.true.i.i89

if.then126.i.posix_acl_release.exit.i_crit_edge:  ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit.i

land.lhs.true.i.i89:                              ; preds = %if.then126.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %111, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !130
  call void @llvm.prefetch.p0(ptr nonnull %111, i32 1, i32 3, i32 1) #11
  %112 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %111, ptr nonnull %111, i32 1, ptr nonnull elementtype(i32) %111) #11, !srcloc !131
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.posix_acl_release.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !132

if.end5.i.i.i.i.i.posix_acl_release.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %111, i32 noundef 3) #11
  br label %posix_acl_release.exit.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i89
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !133
  %a_rcu.i.i = getelementptr inbounds %struct.posix_acl, ptr %111, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %posix_acl_release.exit.i

posix_acl_release.exit.i:                         ; preds = %do.end.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.posix_acl_release.exit.i_crit_edge, %if.then126.i.posix_acl_release.exit.i_crit_edge
  %113 = ptrtoint ptr %default_acl.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %default_acl.i, align 4
  %tobool.not.i207.i = icmp eq ptr %114, null
  br i1 %tobool.not.i207.i, label %posix_acl_release.exit.i.ovl_create_over_whiteout.exit_crit_edge, label %land.lhs.true.i211.i

posix_acl_release.exit.i.ovl_create_over_whiteout.exit_crit_edge: ; preds = %posix_acl_release.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_create_over_whiteout.exit

land.lhs.true.i211.i:                             ; preds = %posix_acl_release.exit.i
  %call.i.i.i.i.i.i208.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %114, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !130
  call void @llvm.prefetch.p0(ptr nonnull %114, i32 1, i32 3, i32 1) #11
  %115 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %114, ptr nonnull %114, i32 1, ptr nonnull elementtype(i32) %114) #11, !srcloc !131
  %asmresult.i.i.i.i.i.i.i209.i = extractvalue { i32, i32, i32 } %115, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i209.i)
  %cmp.i.i.i.i210.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i209.i, 1
  br i1 %cmp.i.i.i.i210.i, label %do.end.i216.i, label %if.end5.i.i.i.i213.i

if.end5.i.i.i.i213.i:                             ; preds = %land.lhs.true.i211.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i209.i)
  %.not.i.i.i.i212.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i209.i, 0
  br i1 %.not.i.i.i.i212.i, label %if.end5.i.i.i.i213.i.ovl_create_over_whiteout.exit_crit_edge, label %if.then10.i.i.i.i214.i, !prof !132

if.end5.i.i.i.i213.i.ovl_create_over_whiteout.exit_crit_edge: ; preds = %if.end5.i.i.i.i213.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_create_over_whiteout.exit

if.then10.i.i.i.i214.i:                           ; preds = %if.end5.i.i.i.i213.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %114, i32 noundef 3) #11
  br label %ovl_create_over_whiteout.exit

do.end.i216.i:                                    ; preds = %land.lhs.true.i211.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !133
  %a_rcu.i215.i = getelementptr inbounds %struct.posix_acl, ptr %114, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i215.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %ovl_create_over_whiteout.exit

ovl_create_over_whiteout.exit:                    ; preds = %do.end.i216.i, %if.then10.i.i.i.i214.i, %if.end5.i.i.i.i213.i.ovl_create_over_whiteout.exit_crit_edge, %posix_acl_release.exit.i.ovl_create_over_whiteout.exit_crit_edge, %out.i.ovl_create_over_whiteout.exit_crit_edge, %if.then31.i.ovl_create_over_whiteout.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -30, %do.end.i ], [ %call34.i, %if.then31.i.ovl_create_over_whiteout.exit_crit_edge ], [ %err.2.i, %out.i.ovl_create_over_whiteout.exit_crit_edge ], [ %err.2.i, %posix_acl_release.exit.i.ovl_create_over_whiteout.exit_crit_edge ], [ %err.2.i, %if.end5.i.i.i.i213.i.ovl_create_over_whiteout.exit_crit_edge ], [ %err.2.i, %if.then10.i.i.i.i214.i ], [ %err.2.i, %do.end.i216.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl.i) #11
  br label %out_revert_creds

out_revert_creds:                                 ; preds = %ovl_create_over_whiteout.exit, %ovl_create_upper.exit, %if.then1.i, %__validate_creds.exit.i.out_revert_creds_crit_edge, %if.end9.out_revert_creds_crit_edge, %if.then3.out_revert_creds_crit_edge
  %err.0 = phi i32 [ %call5, %if.then3.out_revert_creds_crit_edge ], [ %retval.0.i, %ovl_create_over_whiteout.exit ], [ %err.0.i, %ovl_create_upper.exit ], [ -12, %if.end9.out_revert_creds_crit_edge ], [ %call15, %__validate_creds.exit.i.out_revert_creds_crit_edge ], [ %call15, %if.then1.i ]
  call void @revert_creds(ptr noundef %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %out_revert_creds, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_revert_creds ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_copy_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_set_impure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dentry_upper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_dentry_create_files_as(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_dentry_is_whiteout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_set_opaque(ptr noundef %dentry, ptr noundef %upperdentry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1.i = tail call i32 @ovl_check_setxattr(ptr noundef %3, ptr noundef %upperdentry, i32 noundef 0, ptr noundef nonnull @.str.42, i32 noundef 1, i32 noundef -5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.ovl_set_opaque_xerr.exit_crit_edge

entry.ovl_set_opaque_xerr.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ovl_set_opaque_xerr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ovl_dentry_set_opaque(ptr noundef %dentry) #11
  br label %ovl_set_opaque_xerr.exit

ovl_set_opaque_xerr.exit:                         ; preds = %if.then.i, %entry.ovl_set_opaque_xerr.exit_crit_edge
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_instantiate(ptr noundef %dentry, ptr noundef %inode, ptr noundef %newdentry, i1 noundef zeroext %hardlink) unnamed_addr #0 align 64 {
entry:
  %oip = alloca %struct.ovl_inode_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %oip) #11
  %0 = getelementptr inbounds i8, ptr %oip, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %oip to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %inode, ptr %oip, align 4
  %upperdentry = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 1
  %3 = ptrtoint ptr %upperdentry to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %newdentry, ptr %upperdentry, align 4
  %lowerpath = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 2
  %4 = ptrtoint ptr %lowerpath to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %lowerpath, align 4
  %index = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 3
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %index, align 4
  %numlower = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 4
  %6 = ptrtoint ptr %numlower to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %numlower, align 4
  %redirect = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 5
  %7 = ptrtoint ptr %redirect to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %redirect, align 4
  %lowerdata = getelementptr inbounds %struct.ovl_inode_params, ptr %oip, i32 0, i32 6
  %8 = ptrtoint ptr %lowerdata to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %lowerdata, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %9 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_parent, align 8
  tail call void @ovl_dir_modified(ptr noundef %10, i1 noundef zeroext false) #11
  tail call void @ovl_dentry_set_upper_alias(ptr noundef %dentry) #11
  tail call void @ovl_dentry_update_reval(ptr noundef %dentry, ptr noundef %newdentry, i32 noundef 2052) #11
  br i1 %hardlink, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %11 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_sb, align 4
  %call = call ptr @ovl_get_inode(ptr noundef %12, ptr noundef nonnull %oip) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = ptrtoint ptr %oip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %oip, align 4
  %cmp = icmp eq ptr %call, %15
  br i1 %cmp, label %if.then5, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr i8, ptr %call, i32 -8
  call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #11
  br label %if.end31

if.else:                                          ; preds = %entry
  %call7 = tail call ptr @ovl_inode_real(ptr noundef %inode) #11
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %newdentry, i32 0, i32 5
  %16 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i, align 8
  %cmp9.not = icmp eq ptr %call7, %17
  br i1 %cmp9.not, label %if.else.if.end24_crit_edge, label %do.end, !prof !132

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 292, i32 noundef 9, ptr noundef null) #11
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.else.if.end24_crit_edge
  tail call void @dput(ptr noundef %newdentry) #11
  tail call void @inc_nlink(ptr noundef %inode) #11
  br label %if.end31

if.end31:                                         ; preds = %if.end24, %if.then5, %if.end.if.end31_crit_edge
  %inode.addr.0 = phi ptr [ %inode, %if.end24 ], [ %call, %if.then5 ], [ %call, %if.end.if.end31_crit_edge ]
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %inode.addr.0) #11
  %18 = ptrtoint ptr %oip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %oip, align 4
  %cmp33.not = icmp eq ptr %inode.addr.0, %19
  br i1 %cmp33.not, label %if.end31.if.end44_crit_edge, label %if.then34

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then34:                                        ; preds = %if.end31
  %call35 = call i32 @___ratelimit(ptr noundef nonnull @ovl_instantiate._rs, ptr noundef nonnull @__func__.ovl_instantiate) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.if.end44_crit_edge, label %do.end40

if.then34.if.end44_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

do.end40:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %dentry) #14
  br label %if.end44

if.end44:                                         ; preds = %do.end40, %if.then34.if.end44_crit_edge, %if.end31.if.end44_crit_edge
  br i1 %hardlink, label %if.then46, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  call void @d_drop(ptr noundef %dentry) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end44.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ %13, %if.then2 ], [ 0, %if.then46 ], [ 0, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %oip) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_path_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_set_opaque_xerr(ptr noundef %dentry, ptr noundef %upper, i32 noundef %xerr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call i32 @ovl_check_setxattr(ptr noundef %3, ptr noundef %upper, i32 noundef 0, ptr noundef nonnull @.str.42, i32 noundef 1, i32 noundef %xerr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ovl_dentry_set_opaque(ptr noundef %dentry) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_check_setxattr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dentry_set_opaque(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dir_modified(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dentry_set_upper_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dentry_update_reval(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_get_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_inode_real(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_workdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_lock_rename_workdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_set_upper_acl(ptr noundef %upperdentry, ptr noundef %name, ptr noundef %acl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %acl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %0 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a_count, align 4
  %mul.i = shl i32 %1, 3
  %add.i = or i32 %mul.i, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #16
  %tobool2.not = icmp eq ptr %call9.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @posix_acl_to_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %acl, ptr noundef nonnull %call9.i, i32 noundef %add.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.out_free_crit_edge, label %if.end7

if.end4.out_free_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @vfs_setxattr(ptr noundef nonnull @init_user_ns, ptr noundef %upperdentry, ptr noundef %name, ptr noundef nonnull %call9.i, i32 noundef %add.i, i32 noundef 1) #11
  br label %out_free

out_free:                                         ; preds = %if.end7, %if.end4.out_free_crit_edge
  %err.0 = phi i32 [ %call5, %if.end4.out_free_crit_edge ], [ %call8, %if.end7 ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_free ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_to_xattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_setxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_is_metacopy_dentry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_nlink_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_nlink_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_set_redirect(ptr noundef %dentry, i1 noundef zeroext %samedir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @ovl_dentry_get_redirect(ptr noundef %dentry) #11
  br i1 %samedir, label %if.end.i, label %ovl_need_absolute_redirect.exit.thread67

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dentry, align 8
  %6 = and i32 %5, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %6)
  %7 = icmp eq i32 %6, 2097152
  br i1 %7, label %ovl_need_absolute_redirect.exit.thread, label %ovl_need_absolute_redirect.exit

ovl_need_absolute_redirect.exit:                  ; preds = %if.end.i
  %call3.i = tail call ptr @ovl_dentry_lower(ptr noundef %dentry) #11
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call3.i, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i.i, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp ugt i32 %12, 1
  %tobool4.not = icmp eq ptr %call1, null
  br i1 %tobool4.not, label %if.end, label %land.lhs.true

ovl_need_absolute_redirect.exit.thread67:         ; preds = %entry
  %tobool4.not69 = icmp eq ptr %call1, null
  br i1 %tobool4.not69, label %ovl_need_absolute_redirect.exit.thread67.if.end.i46_crit_edge, label %ovl_need_absolute_redirect.exit.thread67.lor.lhs.false_crit_edge

ovl_need_absolute_redirect.exit.thread67.lor.lhs.false_crit_edge: ; preds = %ovl_need_absolute_redirect.exit.thread67
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

ovl_need_absolute_redirect.exit.thread67.if.end.i46_crit_edge: ; preds = %ovl_need_absolute_redirect.exit.thread67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i46

ovl_need_absolute_redirect.exit.thread:           ; preds = %if.end.i
  %tobool4.not50 = icmp eq ptr %call1, null
  br i1 %tobool4.not50, label %ovl_need_absolute_redirect.exit.thread.if.then.i_crit_edge, label %ovl_need_absolute_redirect.exit.thread.cleanup_crit_edge

ovl_need_absolute_redirect.exit.thread.cleanup_crit_edge: ; preds = %ovl_need_absolute_redirect.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

ovl_need_absolute_redirect.exit.thread.if.then.i_crit_edge: ; preds = %ovl_need_absolute_redirect.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

land.lhs.true:                                    ; preds = %ovl_need_absolute_redirect.exit
  br i1 %cmp.i, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %ovl_need_absolute_redirect.exit.thread67.lor.lhs.false_crit_edge
  %13 = ptrtoint ptr %call1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %14)
  %cmp = icmp eq i8 %14, 47
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end.i46_crit_edge

lor.lhs.false.if.end.i46_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i46

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %ovl_need_absolute_redirect.exit
  br i1 %cmp.i, label %if.end.if.end.i46_crit_edge, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.if.end.i46_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i46

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %ovl_need_absolute_redirect.exit.thread.if.then.i_crit_edge
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 8
  %17 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %d_name.i, align 8
  %call.i = tail call ptr @kstrndup(ptr noundef %16, i32 noundef %18, i32 noundef 3264) #11
  br label %out.i

if.end.i46:                                       ; preds = %if.end.if.end.i46_crit_edge, %lor.lhs.false.if.end.i46_crit_edge, %ovl_need_absolute_redirect.exit.thread67.if.end.i46_crit_edge
  %19 = load i16, ptr @ovl_redirect_max, align 2
  %conv.i56 = zext i16 %19 to i32
  %add.i = add nuw nsw i32 %conv.i56, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #16
  %tobool3.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not.i, label %if.end.i46.if.then10_crit_edge, label %if.end5.i

if.end.i46.if.then10_crit_edge:                   ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.end5.i:                                        ; preds = %if.end.i46
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %conv.i56
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx.i, align 1
  %tobool.not.i.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i.i, label %if.end5.i.dget.exit.i_crit_edge, label %if.then.i85.i

if.end5.i.dget.exit.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dget.exit.i

if.then.i85.i:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i.i) #11
  br label %dget.exit.i

dget.exit.i:                                      ; preds = %if.then.i85.i, %if.end5.i.dget.exit.i_crit_edge
  %d_parent99.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %21 = ptrtoint ptr %d_parent99.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_parent99.i, align 8
  %cmp.not100.i = icmp eq ptr %22, %dentry
  br i1 %cmp.not100.i, label %dget.exit.i.for.end.i_crit_edge, label %dget.exit.i.for.body.i_crit_edge

dget.exit.i.for.body.i_crit_edge:                 ; preds = %dget.exit.i
  br label %for.body.i

dget.exit.i.for.end.i_crit_edge:                  ; preds = %dget.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %dget.exit.i.for.body.i_crit_edge
  %buflen.0102.i = phi i32 [ %dec40.i, %cleanup.i.for.body.i_crit_edge ], [ %conv.i56, %dget.exit.i.for.body.i_crit_edge ]
  %d.0101.i = phi ptr [ %call33.i, %cleanup.i.for.body.i_crit_edge ], [ %dentry, %dget.exit.i.for.body.i_crit_edge ]
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %d.0101.i, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #11
  %call9.i = tail call ptr @ovl_dentry_get_redirect(ptr noundef %d.0101.i) #11
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i = tail call i32 @strlen(ptr noundef nonnull %call9.i) #17
  br label %if.end17.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %d_name13.i = getelementptr inbounds %struct.dentry, ptr %d.0101.i, i32 0, i32 4
  %name14.i = getelementptr inbounds %struct.dentry, ptr %d.0101.i, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %name14.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name14.i, align 8
  %25 = ptrtoint ptr %d_name13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %d_name13.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.then11.i
  %name8.0.i = phi ptr [ %call9.i, %if.then11.i ], [ %24, %if.else.i ]
  %thislen.0.i = phi i32 [ %call12.i, %if.then11.i ], [ %26, %if.else.i ]
  %27 = ptrtoint ptr %name8.0.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %name8.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %28)
  %cmp20.i = icmp ne i8 %28, 47
  %conv21.i = zext i1 %cmp20.i to i32
  %add22.i = add i32 %thislen.0.i, %conv21.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i, i32 %buflen.0102.i)
  %cmp23.i = icmp sgt i32 %add22.i, %buflen.0102.i
  br i1 %cmp23.i, label %cleanup.thread91.i, label %if.end29.i

cleanup.thread91.i:                               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #11
  br label %out_put.i

if.end29.i:                                       ; preds = %if.end17.i
  %sub.i = sub i32 %buflen.0102.i, %thislen.0.i
  %arrayidx30.i = getelementptr i8, ptr %call9.i.i, i32 %sub.i
  %29 = call ptr @memcpy(ptr %arrayidx30.i, ptr %name8.0.i, i32 %thislen.0.i)
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #11
  %call33.i = tail call ptr @dget_parent(ptr noundef %d.0101.i) #11
  tail call void @dput(ptr noundef %d.0101.i) #11
  %30 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %31)
  %cmp36.i = icmp eq i8 %31, 47
  br i1 %cmp36.i, label %if.end29.i.for.end.i_crit_edge, label %cleanup.i

if.end29.i.for.end.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

cleanup.i:                                        ; preds = %if.end29.i
  %dec40.i = add i32 %sub.i, -1
  %arrayidx41.i = getelementptr i8, ptr %call9.i.i, i32 %dec40.i
  %32 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 47, ptr %arrayidx41.i, align 1
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %call33.i, i32 0, i32 3
  %33 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_parent.i, align 8
  %cmp.not.i = icmp eq ptr %call33.i, %34
  br i1 %cmp.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end29.i.for.end.i_crit_edge, %dget.exit.i.for.end.i_crit_edge
  %d.2.i = phi ptr [ %dentry, %dget.exit.i.for.end.i_crit_edge ], [ %call33.i, %if.end29.i.for.end.i_crit_edge ], [ %call33.i, %cleanup.i.for.end.i_crit_edge ]
  %buflen.2.i = phi i32 [ %conv.i56, %dget.exit.i.for.end.i_crit_edge ], [ %dec40.i, %cleanup.i.for.end.i_crit_edge ], [ %sub.i, %if.end29.i.for.end.i_crit_edge ]
  %arrayidx43.i = getelementptr i8, ptr %call9.i.i, i32 %buflen.2.i
  %call44.i = tail call noalias ptr @kstrdup(ptr noundef %arrayidx43.i, i32 noundef 3264) #11
  br label %out_put.i

out_put.i:                                        ; preds = %for.end.i, %cleanup.thread91.i
  %ret.2.i = phi ptr [ %call44.i, %for.end.i ], [ inttoptr (i32 -18 to ptr), %cleanup.thread91.i ]
  %d.3.i = phi ptr [ %d.2.i, %for.end.i ], [ %d.0101.i, %cleanup.thread91.i ]
  tail call void @dput(ptr noundef %d.3.i) #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %out.i

out.i:                                            ; preds = %out_put.i, %if.then.i
  %ret.3.i = phi ptr [ %ret.2.i, %out_put.i ], [ %call.i, %if.then.i ]
  %tobool45.not.i = icmp eq ptr %ret.3.i, null
  br i1 %tobool45.not.i, label %out.i.if.then10_crit_edge, label %ovl_get_redirect.exit

out.i.if.then10_crit_edge:                        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

ovl_get_redirect.exit:                            ; preds = %out.i
  %cmp.i48 = icmp ugt ptr %ret.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48, label %ovl_get_redirect.exit.if.then10_crit_edge, label %if.end12

ovl_get_redirect.exit.if.then10_crit_edge:        ; preds = %ovl_get_redirect.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.then10:                                        ; preds = %ovl_get_redirect.exit.if.then10_crit_edge, %out.i.if.then10_crit_edge, %if.end.i46.if.then10_crit_edge
  %retval.0.i4762 = phi ptr [ %ret.3.i, %ovl_get_redirect.exit.if.then10_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i46.if.then10_crit_edge ], [ inttoptr (i32 -12 to ptr), %out.i.if.then10_crit_edge ]
  %35 = ptrtoint ptr %retval.0.i4762 to i32
  br label %cleanup

if.end12:                                         ; preds = %ovl_get_redirect.exit
  %call13 = tail call ptr @ovl_dentry_upper(ptr noundef %dentry) #11
  %call14 = tail call i32 @strlen(ptr noundef nonnull %ret.3.i) #15
  %call15 = tail call i32 @ovl_check_setxattr(ptr noundef %3, ptr noundef %call13, i32 noundef 1, ptr noundef nonnull %ret.3.i, i32 noundef %call14, i32 noundef -18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #11
  tail call void @ovl_dentry_set_redirect(ptr noundef %dentry, ptr noundef nonnull %ret.3.i) #11
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #11
  br label %cleanup

if.else:                                          ; preds = %if.end12
  tail call void @kfree(ptr noundef nonnull %ret.3.i) #11
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @ovl_set_redirect._rs, ptr noundef nonnull @__func__.ovl_set_redirect) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else.cleanup_crit_edge, label %do.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %call15) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else.cleanup_crit_edge, %if.then17, %if.then10, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %ovl_need_absolute_redirect.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ %35, %if.then10 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then17 ], [ -18, %do.end ], [ -18, %if.else.cleanup_crit_edge ], [ 0, %ovl_need_absolute_redirect.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dentry_get_redirect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_dentry_set_redirect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovl_dentry_lower(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovl_do_remove(ptr noundef %dentry, i1 noundef zeroext %is_dir) unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ovl_lower_positive(ptr noundef %dentry) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  br i1 %is_dir, label %land.lhs.true, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  br i1 %call, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call.i = call ptr @ovl_dentry_lower(ptr noundef %dentry) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %ovl_pure_upper.exit, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

ovl_pure_upper.exit:                              ; preds = %lor.lhs.false
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i.i, align 8
  %flags.i.i = getelementptr i8, ptr %4, i32 -8
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i.i, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %ovl_pure_upper.exit.if.end7_crit_edge, label %ovl_pure_upper.exit.if.then_crit_edge

ovl_pure_upper.exit.if.then_crit_edge:            ; preds = %ovl_pure_upper.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

ovl_pure_upper.exit.if.end7_crit_edge:            ; preds = %ovl_pure_upper.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %ovl_pure_upper.exit.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %call4 = call i32 @ovl_check_empty_dir(ptr noundef %dentry, ptr noundef nonnull %list) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %ovl_pure_upper.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = call i32 @ovl_want_write(ptr noundef %dentry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %if.end7
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %8 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_parent, align 8
  %call12 = call i32 @ovl_copy_up(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.out_drop_write_crit_edge

if.end11.out_drop_write_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop_write

if.end15:                                         ; preds = %if.end11
  %call16 = call i32 @ovl_nlink_start(ptr noundef %dentry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_drop_write_crit_edge

if.end15.out_drop_write_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop_write

if.end19:                                         ; preds = %if.end15
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %10 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_sb, align 4
  %call20 = call ptr @ovl_override_creds(ptr noundef %11) #11
  br i1 %call, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end19
  %12 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_parent, align 8
  %call.i63 = call ptr @ovl_dentry_upper(ptr noundef %13) #11
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call.i63, i32 0, i32 5
  %14 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_inode.i, align 8
  %16 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %17, %list
  br i1 %cmp.i.not.i, label %if.then22.if.end6.i_crit_edge, label %if.then.i

if.then22.if.end6.i_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then.i:                                        ; preds = %if.then22
  %call2.i = call fastcc ptr @ovl_clear_empty(ptr noundef %dentry, ptr noundef nonnull %list) #11
  %18 = ptrtoint ptr %call2.i to i32
  %cmp.i53.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53.i, label %if.then.i.if.end26_crit_edge, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

if.then.i.if.end26_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %if.then22.if.end6.i_crit_edge
  %opaquedir.0.i = phi ptr [ null, %if.then22.if.end6.i_crit_edge ], [ %call2.i, %if.then.i.if.end6.i_crit_edge ]
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 25
  call void @down_write_nested(ptr noundef %i_rwsem.i.i, i32 noundef 1) #11
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name.i, align 8
  %21 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %d_name.i, align 8
  %call8.i = call ptr @lookup_one_len(ptr noundef %20, ptr noundef %call.i63, i32 noundef %22) #11
  %23 = ptrtoint ptr %call8.i to i32
  %cmp.i54.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54.i, label %if.end6.i.out_unlock.i_crit_edge, label %if.end12.i

if.end6.i.out_unlock.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i

if.end12.i:                                       ; preds = %if.end6.i
  %tobool13.not.i = icmp eq ptr %opaquedir.0.i, null
  %cmp.not.i = icmp eq ptr %call8.i, %opaquedir.0.i
  %or.cond.i = or i1 %tobool13.not.i, %cmp.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i, label %if.end12.i.out_dput_upper.i_crit_edge

if.end12.i.out_dput_upper.i_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput_upper.i

lor.lhs.false.i:                                  ; preds = %if.end12.i
  br i1 %tobool13.not.i, label %land.lhs.true15.i, label %lor.lhs.false.i.if.end18.i_crit_edge

lor.lhs.false.i.if.end18.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

land.lhs.true15.i:                                ; preds = %lor.lhs.false.i
  %call.i.i = call ptr @ovl_dentry_upper(ptr noundef %dentry) #11
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %call.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i.i.i, align 8
  %d_inode.i3.i.i = getelementptr inbounds %struct.dentry, ptr %call8.i, i32 0, i32 5
  %26 = ptrtoint ptr %d_inode.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i3.i.i, align 8
  %cmp.i55.i = icmp eq ptr %25, %27
  br i1 %cmp.i55.i, label %land.lhs.true15.i.if.end18.i_crit_edge, label %land.lhs.true15.i.out_dput_upper.i_crit_edge

land.lhs.true15.i.out_dput_upper.i_crit_edge:     ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput_upper.i

land.lhs.true15.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.end18.i:                                       ; preds = %land.lhs.true15.i.if.end18.i_crit_edge, %lor.lhs.false.i.if.end18.i_crit_edge
  br i1 %is_dir, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %call21.i = call i32 @vfs_rmdir(ptr noundef nonnull @init_user_ns, ptr noundef %15, ptr noundef %call8.i) #11
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %call22.i = call i32 @vfs_unlink(ptr noundef nonnull @init_user_ns, ptr noundef %15, ptr noundef %call8.i, ptr noundef null) #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then20.i
  %err.0.i = phi i32 [ %call21.i, %if.then20.i ], [ %call22.i, %if.else.i ]
  %28 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_parent, align 8
  %call.i56.i = call i32 @ovl_path_type(ptr noundef %dentry) #11
  %and.i.i = and i32 %call.i56.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  call void @ovl_dir_modified(ptr noundef %29, i1 noundef zeroext %tobool.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool26.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end23.i.out_dput_upper.i_crit_edge

if.end23.i.out_dput_upper.i_crit_edge:            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput_upper.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @d_drop(ptr noundef %dentry) #11
  br label %out_dput_upper.i

out_dput_upper.i:                                 ; preds = %if.then27.i, %if.end23.i.out_dput_upper.i_crit_edge, %land.lhs.true15.i.out_dput_upper.i_crit_edge, %if.end12.i.out_dput_upper.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %if.end23.i.out_dput_upper.i_crit_edge ], [ 0, %if.then27.i ], [ -116, %land.lhs.true15.i.out_dput_upper.i_crit_edge ], [ -116, %if.end12.i.out_dput_upper.i_crit_edge ]
  call void @dput(ptr noundef %call8.i) #11
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %out_dput_upper.i, %if.end6.i.out_unlock.i_crit_edge
  %err.2.i = phi i32 [ %23, %if.end6.i.out_unlock.i_crit_edge ], [ %err.1.i, %out_dput_upper.i ]
  call void @up_write(ptr noundef %i_rwsem.i.i) #11
  br label %if.end26.sink.split

if.else:                                          ; preds = %if.end19
  %30 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1.i = call ptr @ovl_workdir(ptr noundef %dentry) #11
  %34 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d_parent, align 8
  %call2.i65 = call ptr @ovl_dentry_upper(ptr noundef %35) #11
  %tobool.not.i66 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i66, label %if.end26.thread, label %if.end25.i, !prof !125

if.end26.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 756, i32 noundef 9, ptr noundef null) #11
  call void @revert_creds(ptr noundef %call20) #11
  br label %if.end33

if.end25.i:                                       ; preds = %if.else
  %36 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i67 = icmp eq ptr %37, %list
  br i1 %cmp.i.not.i67, label %if.end25.i.if.end34.i_crit_edge, label %if.then28.i

if.end25.i.if.end34.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.then28.i:                                      ; preds = %if.end25.i
  %call29.i = call fastcc ptr @ovl_clear_empty(ptr noundef %dentry, ptr noundef nonnull %list) #11
  %38 = ptrtoint ptr %call29.i to i32
  %cmp.i93.i = icmp ugt ptr %call29.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93.i, label %if.then28.i.if.end26_crit_edge, label %if.then28.i.if.end34.i_crit_edge

if.then28.i.if.end34.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.then28.i.if.end26_crit_edge:                   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.end34.i:                                       ; preds = %if.then28.i.if.end34.i_crit_edge, %if.end25.i.if.end34.i_crit_edge
  %opaquedir.0.i68 = phi ptr [ null, %if.end25.i.if.end34.i_crit_edge ], [ %call29.i, %if.then28.i.if.end34.i_crit_edge ]
  %call35.i = call i32 @ovl_lock_rename_workdir(ptr noundef nonnull %call1.i, ptr noundef %call2.i65) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end34.i.if.end26.sink.split_crit_edge

if.end34.i.if.end26.sink.split_crit_edge:         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.sink.split

if.end38.i:                                       ; preds = %if.end34.i
  %d_name.i69 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name.i70 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %name.i70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name.i70, align 8
  %41 = ptrtoint ptr %d_name.i69 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %d_name.i69, align 8
  %call40.i = call ptr @lookup_one_len(ptr noundef %40, ptr noundef %call2.i65, i32 noundef %42) #11
  %43 = ptrtoint ptr %call40.i to i32
  %cmp.i94.i = icmp ugt ptr %call40.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94.i, label %if.end38.i.out_unlock.i81_crit_edge, label %if.end44.i

if.end38.i.out_unlock.i81_crit_edge:              ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock.i81

if.end44.i:                                       ; preds = %if.end38.i
  %tobool45.not.i = icmp eq ptr %opaquedir.0.i68, null
  %cmp.not.i71 = icmp eq ptr %call40.i, %opaquedir.0.i68
  %or.cond.i72 = or i1 %tobool45.not.i, %cmp.not.i71
  br i1 %or.cond.i72, label %lor.lhs.false.i73, label %if.end44.i.out_dput_upper.i79_crit_edge

if.end44.i.out_dput_upper.i79_crit_edge:          ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput_upper.i79

lor.lhs.false.i73:                                ; preds = %if.end44.i
  br i1 %tobool45.not.i, label %land.lhs.true47.i, label %lor.lhs.false.i73.if.end53.i_crit_edge

lor.lhs.false.i73.if.end53.i_crit_edge:           ; preds = %lor.lhs.false.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

land.lhs.true47.i:                                ; preds = %lor.lhs.false.i73
  %call48.i = call ptr @ovl_dentry_upper(ptr noundef %dentry) #11
  %tobool49.not.i = icmp eq ptr %call48.i, null
  br i1 %tobool49.not.i, label %land.lhs.true47.i.if.end53.i_crit_edge, label %land.lhs.true50.i

land.lhs.true47.i.if.end53.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

land.lhs.true50.i:                                ; preds = %land.lhs.true47.i
  %call.i.i74 = call ptr @ovl_dentry_upper(ptr noundef %dentry) #11
  %d_inode.i.i.i75 = getelementptr inbounds %struct.dentry, ptr %call.i.i74, i32 0, i32 5
  %44 = ptrtoint ptr %d_inode.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i.i.i75, align 8
  %d_inode.i3.i.i76 = getelementptr inbounds %struct.dentry, ptr %call40.i, i32 0, i32 5
  %46 = ptrtoint ptr %d_inode.i3.i.i76 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d_inode.i3.i.i76, align 8
  %cmp.i95.i = icmp eq ptr %45, %47
  br i1 %cmp.i95.i, label %land.lhs.true50.i.if.end53.i_crit_edge, label %land.lhs.true50.i.out_dput_upper.i79_crit_edge

land.lhs.true50.i.out_dput_upper.i79_crit_edge:   ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_dput_upper.i79

land.lhs.true50.i.if.end53.i_crit_edge:           ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

if.end53.i:                                       ; preds = %land.lhs.true50.i.if.end53.i_crit_edge, %land.lhs.true47.i.if.end53.i_crit_edge, %lor.lhs.false.i73.if.end53.i_crit_edge
  %d_inode.i.i77 = getelementptr inbounds %struct.dentry, ptr %call2.i65, i32 0, i32 5
  %48 = ptrtoint ptr %d_inode.i.i77 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %d_inode.i.i77, align 8
  %call55.i = call i32 @ovl_cleanup_and_whiteout(ptr noundef %33, ptr noundef %49, ptr noundef %call40.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end58.i, label %if.end53.i.out_d_drop.i_crit_edge

if.end53.i.out_d_drop.i_crit_edge:                ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_d_drop.i

if.end58.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %d_parent, align 8
  call void @ovl_dir_modified(ptr noundef %51, i1 noundef zeroext true) #11
  br label %out_d_drop.i

out_d_drop.i:                                     ; preds = %if.end58.i, %if.end53.i.out_d_drop.i_crit_edge
  call void @d_drop(ptr noundef %dentry) #11
  br label %out_dput_upper.i79

out_dput_upper.i79:                               ; preds = %out_d_drop.i, %land.lhs.true50.i.out_dput_upper.i79_crit_edge, %if.end44.i.out_dput_upper.i79_crit_edge
  %err.0.i78 = phi i32 [ %call55.i, %out_d_drop.i ], [ -116, %land.lhs.true50.i.out_dput_upper.i79_crit_edge ], [ -116, %if.end44.i.out_dput_upper.i79_crit_edge ]
  call void @dput(ptr noundef %call40.i) #11
  br label %out_unlock.i81

out_unlock.i81:                                   ; preds = %out_dput_upper.i79, %if.end38.i.out_unlock.i81_crit_edge
  %err.1.i80 = phi i32 [ %43, %if.end38.i.out_unlock.i81_crit_edge ], [ %err.0.i78, %out_dput_upper.i79 ]
  call void @unlock_rename(ptr noundef nonnull %call1.i, ptr noundef %call2.i65) #11
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %out_unlock.i81, %if.end34.i.if.end26.sink.split_crit_edge, %out_unlock.i
  %opaquedir.0.i68.sink = phi ptr [ %opaquedir.0.i, %out_unlock.i ], [ %opaquedir.0.i68, %out_unlock.i81 ], [ %opaquedir.0.i68, %if.end34.i.if.end26.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %err.2.i, %out_unlock.i ], [ %err.1.i80, %out_unlock.i81 ], [ %call35.i, %if.end34.i.if.end26.sink.split_crit_edge ]
  call void @dput(ptr noundef %opaquedir.0.i68.sink) #11
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.then28.i.if.end26_crit_edge, %if.then.i.if.end26_crit_edge
  %err.0 = phi i32 [ %18, %if.then.i.if.end26_crit_edge ], [ %38, %if.then28.i.if.end26_crit_edge ], [ %err.0.ph, %if.end26.sink.split ]
  call void @revert_creds(ptr noundef %call20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool27.not = icmp eq i32 %err.0, 0
  br i1 %tobool27.not, label %if.then28, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then28:                                        ; preds = %if.end26
  br i1 %is_dir, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %52 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %d_inode, align 8
  call void @clear_nlink(ptr noundef %53) #11
  br label %if.end33

if.else31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ovl_drop_nlink(ptr noundef %dentry)
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then30, %if.end26.if.end33_crit_edge, %if.end26.thread
  %err.087 = phi i32 [ -30, %if.end26.thread ], [ 0, %if.then30 ], [ 0, %if.else31 ], [ %err.0, %if.end26.if.end33_crit_edge ]
  call void @ovl_nlink_end(ptr noundef %dentry) #11
  %call34 = call ptr @ovl_dentry_upper(ptr noundef %dentry) #11
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.out_drop_write_crit_edge, label %if.then36

if.end33.out_drop_write_crit_edge:                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_drop_write

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %d_inode.i83 = getelementptr inbounds %struct.dentry, ptr %call34, i32 0, i32 5
  %54 = ptrtoint ptr %d_inode.i83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d_inode.i83, align 8
  %d_inode.i84 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %56 = ptrtoint ptr %d_inode.i84 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %d_inode.i84, align 8
  call fastcc void @ovl_copyattr(ptr noundef %55, ptr noundef %57)
  br label %out_drop_write

out_drop_write:                                   ; preds = %if.then36, %if.end33.out_drop_write_crit_edge, %if.end15.out_drop_write_crit_edge, %if.end11.out_drop_write_crit_edge
  %err.1 = phi i32 [ %call12, %if.end11.out_drop_write_crit_edge ], [ %call16, %if.end15.out_drop_write_crit_edge ], [ %err.087, %if.then36 ], [ %err.087, %if.end33.out_drop_write_crit_edge ]
  call void @ovl_drop_write(ptr noundef %dentry) #11
  br label %out

out:                                              ; preds = %out_drop_write, %if.end7.out_crit_edge, %if.then.out_crit_edge
  %err.2 = phi i32 [ %call4, %if.then.out_crit_edge ], [ %call8, %if.end7.out_crit_edge ], [ %err.1, %out_drop_write ]
  call void @ovl_cache_free(ptr noundef nonnull %list) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_lower_positive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_check_empty_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ovl_drop_nlink(ptr noundef readonly %dentry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_lock = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #11
  %2 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 37
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool.not = icmp eq ptr %4, null
  %add.ptr = getelementptr i8, ptr %4, i32 -200
  %tobool236.not41 = icmp eq ptr %add.ptr, null
  %tobool236.not = or i1 %tobool.not, %tobool236.not41
  br i1 %tobool236.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %alias.037 = phi ptr [ %add.ptr11, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %cmp.not = icmp eq ptr %alias.037, %dentry
  br i1 %cmp.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %alias.037, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %d_u = getelementptr inbounds %struct.dentry, ptr %alias.037, i32 0, i32 15
  %7 = ptrtoint ptr %d_u to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_u, align 8
  %tobool7.not = icmp eq ptr %8, null
  %add.ptr11 = getelementptr i8, ptr %8, i32 -200
  %tobool2.not42 = icmp eq ptr %add.ptr11, null
  %tobool2.not = or i1 %tobool7.not, %tobool2.not42
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %entry.for.end_crit_edge
  %tobool2.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1, %land.lhs.true.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #11
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %tobool2.lcssa)
  %cmp18 = icmp ugt i32 %11, %tobool2.lcssa
  br i1 %cmp18, label %if.then19, label %for.end.if.end20_crit_edge

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @drop_nlink(ptr noundef %1) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %for.end.if.end20_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ovl_copyattr(ptr noundef %from, ptr noundef %to) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i_uid = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 2
  %i_uid1 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 2
  %0 = ptrtoint ptr %i_uid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_uid1, align 4
  %2 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 3
  %i_gid2 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 3
  %3 = ptrtoint ptr %i_gid2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_gid2, align 8
  %5 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %i_gid, align 8
  %6 = ptrtoint ptr %from to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %from, align 8
  %8 = ptrtoint ptr %to to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %to, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 15
  %i_atime4 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 15
  %9 = call ptr @memcpy(ptr %i_atime, ptr %i_atime4, i32 16)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 16
  %i_mtime5 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 16
  %10 = call ptr @memcpy(ptr %i_mtime, ptr %i_mtime5, i32 16)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 17
  %i_ctime6 = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 17
  %11 = call ptr @memcpy(ptr %i_ctime, ptr %i_ctime6, i32 16)
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %from, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !134
  %and.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %13 = tail call ptr @llvm.returnaddress(i32 0) #11
  %14 = ptrtoint ptr %13 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %14) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %14) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = tail call ptr @llvm.returnaddress(i32 0) #11
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %16) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %16) #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !135
  %and.i.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !125

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #11, !srcloc !136
  %18 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !138
  %20 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %21, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %19, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %21, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !139
  %22 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !140
  %24 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %25, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i.i19 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i19 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %30 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i20 = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i20, label %i_size_read.exit.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

i_size_read.exit.i_size_write.exit_crit_edge:     ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %i_size_read.exit
  %31 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %35 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i21 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i21 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %40, ptrtoint (ptr @lockdep_recursion to i32)
  %41 = inttoptr i32 %add.i28.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !143
  %44 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i7.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool20.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %48 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i29.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i = icmp eq i32 %51, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %52 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i9.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %55, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !144
  %56 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %59, ptrtoint (ptr @hardirqs_enabled to i32)
  %60 = inttoptr i32 %add47.i.i to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !145
  %63 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i12.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %66, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool54.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i22, !prof !132

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

if.then.i.i22:                                    ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i22, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %i_size_read.exit.i_size_write.exit_crit_edge
  %i_size_seqcount.i23 = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 23
  %67 = ptrtoint ptr %i_size_seqcount.i23 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_size_seqcount.i23, align 4
  %inc.i.i.i.i = add i32 %68, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i23, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !146
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 23, i32 1
  %69 = tail call ptr @llvm.returnaddress(i32 0) #11
  %70 = ptrtoint ptr %69 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %70) #11
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %to, i32 0, i32 14
  %71 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %23, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %70) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %72 = ptrtoint ptr %i_size_seqcount.i23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_size_seqcount.i23, align 4
  %inc.i.i.i = add i32 %73, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i23, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !148
  %74 = tail call i32 @llvm.read_register.i32(metadata !110) #11
  %and.i.i.i26.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %77, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_cache_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovl_clear_empty(ptr noundef %dentry, ptr noundef %list) unnamed_addr #0 align 64 {
entry:
  %upperpath = alloca %struct.path, align 4
  %stat = alloca %struct.kstat, align 8
  %.compoundliteral = alloca %struct.ovl_cattr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovl_workdir(ptr noundef %dentry) #11
  %d_inode = getelementptr inbounds %struct.dentry, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %2 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_parent, align 8
  %call1 = tail call ptr @ovl_dentry_upper(ptr noundef %3) #11
  %d_inode2 = getelementptr inbounds %struct.dentry, ptr %call1, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %upperpath) #11
  %6 = ptrtoint ptr %upperpath to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %upperpath, align 4, !annotation !129
  %7 = getelementptr inbounds %struct.path, ptr %upperpath, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !129
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat) #11
  %9 = call ptr @memset(ptr %stat, i32 255, i32 144)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !125

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 374, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end26:                                         ; preds = %entry
  %call27 = tail call i32 @ovl_lock_rename_workdir(ptr noundef nonnull %call, ptr noundef %call1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end30:                                         ; preds = %if.end26
  call void @ovl_path_upper(ptr noundef %dentry, ptr noundef nonnull %upperpath) #11
  %call31 = call i32 @vfs_getattr(ptr noundef nonnull %upperpath, ptr noundef nonnull %stat, i32 noundef 2047, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.out_unlock_crit_edge

if.end30.out_unlock_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end34:                                         ; preds = %if.end30
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode, align 4
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp = icmp eq i16 %12, 16384
  br i1 %cmp, label %if.end37, label %if.end34.out_unlock_crit_edge

if.end34.out_unlock_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end37:                                         ; preds = %if.end34
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %7, align 4
  %d_parent39 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %d_parent39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_parent39, align 8
  %d_inode40 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode40, align 8
  %cmp41.not = icmp eq ptr %18, %5
  br i1 %cmp41.not, label %if.end44, label %if.end37.out_unlock_crit_edge

if.end37.out_unlock_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end44:                                         ; preds = %if.end37
  %19 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %.compoundliteral, align 4
  %mode45 = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral, i32 0, i32 1
  %20 = ptrtoint ptr %mode45 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %11, ptr %mode45, align 4
  %link = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral, i32 0, i32 2
  %21 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %link, align 4
  %hardlink = getelementptr inbounds %struct.ovl_cattr, ptr %.compoundliteral, i32 0, i32 3
  %22 = ptrtoint ptr %hardlink to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %hardlink, align 4
  %23 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode, align 8
  %call1.i = call ptr @ovl_lookup_temp(ptr noundef nonnull %call) #11
  %call2.i = call ptr @ovl_create_real(ptr noundef %24, ptr noundef %call1.i, ptr noundef nonnull %.compoundliteral) #11
  %25 = ptrtoint ptr %call2.i to i32
  %cmp.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end44.out_unlock_crit_edge, label %if.end51

if.end44.out_unlock_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end51:                                         ; preds = %if.end44
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %26 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_sb, align 4
  %call52 = call i32 @ovl_copy_xattr(ptr noundef %27, ptr noundef %14, ptr noundef %call2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.out_cleanup_crit_edge

if.end51.out_cleanup_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_cleanup

if.end55:                                         ; preds = %if.end51
  %call56 = call fastcc i32 @ovl_set_opaque(ptr noundef %dentry, ptr noundef %call2.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.out_cleanup_crit_edge

if.end55.out_cleanup_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_cleanup

if.end59:                                         ; preds = %if.end55
  %d_inode60 = getelementptr inbounds %struct.dentry, ptr %call2.i, i32 0, i32 5
  %28 = ptrtoint ptr %d_inode60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode60, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 25
  call void @down_write(ptr noundef %i_rwsem.i) #11
  %call61 = call i32 @ovl_set_attr(ptr noundef %call2.i, ptr noundef nonnull %stat) #11
  %30 = ptrtoint ptr %d_inode60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode60, align 8
  %i_rwsem.i118 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i118) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool63.not = icmp eq i32 %call61, 0
  br i1 %tobool63.not, label %if.end65, label %if.end59.out_cleanup_crit_edge

if.end59.out_cleanup_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_cleanup

if.end65:                                         ; preds = %if.end59
  %call66 = call fastcc i32 @ovl_do_rename(ptr noundef %1, ptr noundef %call2.i, ptr noundef %5, ptr noundef %14, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.out_cleanup_crit_edge

if.end65.out_cleanup_crit_edge:                   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_cleanup

if.end69:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  call void @ovl_cleanup_whiteouts(ptr noundef %14, ptr noundef %list) #11
  %call70 = call i32 @ovl_cleanup(ptr noundef %1, ptr noundef %14)
  call void @unlock_rename(ptr noundef nonnull %call, ptr noundef %call1) #11
  call void @d_drop(ptr noundef %dentry) #11
  br label %cleanup

out_cleanup:                                      ; preds = %if.end65.out_cleanup_crit_edge, %if.end59.out_cleanup_crit_edge, %if.end55.out_cleanup_crit_edge, %if.end51.out_cleanup_crit_edge
  %err.0 = phi i32 [ %call52, %if.end51.out_cleanup_crit_edge ], [ %call56, %if.end55.out_cleanup_crit_edge ], [ %call61, %if.end59.out_cleanup_crit_edge ], [ %call66, %if.end65.out_cleanup_crit_edge ]
  %call71 = call i32 @ovl_cleanup(ptr noundef %1, ptr noundef %call2.i)
  call void @dput(ptr noundef %call2.i) #11
  br label %out_unlock

out_unlock:                                       ; preds = %out_cleanup, %if.end44.out_unlock_crit_edge, %if.end37.out_unlock_crit_edge, %if.end34.out_unlock_crit_edge, %if.end30.out_unlock_crit_edge
  %err.1 = phi i32 [ %call31, %if.end30.out_unlock_crit_edge ], [ -116, %if.end37.out_unlock_crit_edge ], [ %25, %if.end44.out_unlock_crit_edge ], [ %err.0, %out_cleanup ], [ -116, %if.end34.out_unlock_crit_edge ]
  call void @unlock_rename(ptr noundef nonnull %call, ptr noundef %call1) #11
  br label %out

out:                                              ; preds = %out_unlock, %if.end26.out_crit_edge
  %err.2 = phi i32 [ %call27, %if.end26.out_crit_edge ], [ %err.1, %out_unlock ]
  %32 = inttoptr i32 %err.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end69, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -30 to ptr), %do.end ], [ %32, %out ], [ %call2.i, %if.end69 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %upperpath) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_path_upper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_copy_xattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovl_set_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovl_cleanup_whiteouts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lock_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_dentry_is_opaque(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_is_whiteout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovl_redirect_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !30, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !90, !92, !93, !94, !95, !96, !97, !99, !101, !103, !104, !105, !106, !107, !109}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__param_redirect_max, !1, !"__param_redirect_max", i1 false, i1 false}
!1 = !{!"../fs/overlayfs/dir.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_redirect_maxtype248, !1, !"__UNIQUE_ID_redirect_maxtype248", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_redirect_max249, !4, !"__UNIQUE_ID_redirect_max249", i1 false, i1 false}
!4 = !{!"../fs/overlayfs/dir.c", i32 21, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/overlayfs/dir.c", i32 38, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ovl_cleanup._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @ovl_cleanup._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @ovl_lookup_temp.temp_id, !12, !"temp_id", i1 false, i1 false}
!12 = !{!"../fs/overlayfs/dir.c", i32 49, i32 18}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/overlayfs/dir.c", i32 52, i32 31}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/overlayfs/dir.c", i32 56, i32 3}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ovl_lookup_temp._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @ovl_lookup_temp._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/overlayfs/dir.c", i32 160, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ovl_mkdir_real._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @ovl_mkdir_real._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @ovl_dir_inode_operations, !26, !"ovl_dir_inode_operations", i1 false, i1 false}
!26 = !{!"../fs/overlayfs/dir.c", i32 1297, i32 31}
!27 = !{ptr @__param_str_redirect_max, !1, !"__param_str_redirect_max", i1 false, i1 false}
!28 = !{ptr @ovl_redirect_max, !29, !"ovl_redirect_max", i1 false, i1 false}
!29 = !{!"../fs/overlayfs/dir.c", i32 19, i32 23}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/overlayfs/overlayfs.h", i32 129, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ovl_do_rmdir.__UNIQUE_ID_ddebug230, !31, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!36 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/overlayfs/overlayfs.h", i32 137, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ovl_do_unlink.__UNIQUE_ID_ddebug231, !38, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!41 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/overlayfs/dir.c", i32 96, i32 4}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ovl_whiteout._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ovl_whiteout._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/overlayfs/overlayfs.h", i32 245, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ovl_do_whiteout.__UNIQUE_ID_ddebug246, !48, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!51 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/overlayfs/overlayfs.h", i32 233, i32 2}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ovl_do_rename.__UNIQUE_ID_ddebug244, !53, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!56 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/overlayfs/overlayfs.h", i32 236, i32 3}
!59 = !{ptr @ovl_do_rename.__UNIQUE_ID_ddebug245, !58, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!60 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/overlayfs/overlayfs.h", i32 163, i32 2}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ovl_do_mkdir.__UNIQUE_ID_ddebug234, !62, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!65 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/overlayfs/overlayfs.h", i32 146, i32 2}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ovl_do_link.__UNIQUE_ID_ddebug232, !67, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!70 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/overlayfs/overlayfs.h", i32 155, i32 2}
!73 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ovl_do_create.__UNIQUE_ID_ddebug233, !72, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!75 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/overlayfs/overlayfs.h", i32 172, i32 2}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ovl_do_mknod.__UNIQUE_ID_ddebug235, !77, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!80 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/overlayfs/overlayfs.h", i32 181, i32 2}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ovl_do_symlink.__UNIQUE_ID_ddebug236, !82, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!85 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/cred.h", i32 286, i32 3}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/overlayfs/dir.c", i32 238, i32 57}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/overlayfs/dir.c", i32 299, i32 3}
!92 = !{ptr @ovl_instantiate._rs, !91, !"_rs", i1 false, i1 false}
!93 = !{ptr @__func__.ovl_instantiate, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ovl_instantiate._entry, !91, !"_entry", i1 false, i1 false}
!96 = !{ptr @ovl_instantiate._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/overlayfs/dir.c", i32 519, i32 38}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/overlayfs/dir.c", i32 524, i32 38}
!101 = !{ptr @ovl_set_redirect._rs, !102, !"_rs", i1 false, i1 false}
!102 = !{!"../fs/overlayfs/dir.c", i32 1070, i32 3}
!103 = !{ptr @__func__.ovl_set_redirect, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @ovl_set_redirect._entry, !102, !"_entry", i1 false, i1 false}
!106 = !{ptr @ovl_set_redirect._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!109 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2148505439, i64 2148505444, i64 2148505457, i64 2148505501, i64 2148505535, i64 2148505556}
!121 = !{i64 2148766276}
!122 = !{i64 2148681561, i64 2148681593, i64 2148681622, i64 2148681656, i64 2148681687, i64 2148681710}
!123 = !{i64 2148766505}
!124 = !{i8 0, i8 2}
!125 = !{!"branch_weights", i32 1, i32 2000}
!126 = !{i64 2148769317}
!127 = !{i64 2148684026, i64 2148684058, i64 2148684087, i64 2148684121, i64 2148684152, i64 2148684175}
!128 = !{i64 2148769546}
!129 = !{!"auto-init"}
!130 = !{i64 2148770396}
!131 = !{i64 2148684836, i64 2148684868, i64 2148684897, i64 2148684931, i64 2148684962, i64 2148684985}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{i64 2150391485}
!134 = !{i64 1085521, i64 1085582}
!135 = !{i64 1088253}
!136 = !{i64 1088538}
!137 = !{i64 2152523672}
!138 = !{i64 2152523514}
!139 = !{i64 2152523842}
!140 = !{i64 2150109656}
!141 = !{i64 2152525603}
!142 = !{i64 2150001908}
!143 = !{i64 2150006842}
!144 = !{i64 2150028560}
!145 = !{i64 2150033454}
!146 = !{i64 2150109981}
!147 = !{i64 2150110306}
!148 = !{i64 2152537465}
